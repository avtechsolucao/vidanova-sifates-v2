{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

unit FProdutosQuantidadeCodigoBarras;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, ExtCtrls,  db, Buttons, jpeg, FFrameBarra, 
   FireDAC.Comp.Client, Grids, DBGrids, Classe.Global, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet;

type
   TFrmProdutosQuantidadeCodigoBarras = class(TForm)
      Panel3: TPanel;
      Label18: TLabel;
      Image2: TImage;
      EditCodigo: TLabeledEdit;
    FrmFrameBarra1: TFrmFrameBarra;
    StringGridOpcoes: TStringGrid;
    SP_ReferenciaLancaGrade: TFDStoredProc;
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormCreate(Sender: TObject);
      procedure EditCodigoKeyPress(Sender: TObject; var Key: Char);
   private
      { Private declarations }

    procedure prcMapaGrade;

   public
      { Public declarations }
   end;

var
   FrmProdutosQuantidadeCodigoBarras: TFrmProdutosQuantidadeCodigoBarras;



implementation

uses FPrincipal, SQLServer, Biblioteca, Global, Classe.Usuarios, FPedidoVenda,
  Biblioteca_pcp, FProdutosQuantidade;

{$R *.dfm}

procedure TFrmProdutosQuantidadeCodigoBarras.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   If Key = VK_ESCAPE then
   Begin
      close;
   End;

end;

procedure TFrmProdutosQuantidadeCodigoBarras.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   blProdutoViaLeitor :=false;
   Action := cafree;

end;


procedure TFrmProdutosQuantidadeCodigoBarras.FormCreate(Sender: TObject);
begin

   blProdutoViaLeitor :=true;
   EditCodigo.text := '';

end;

procedure TFrmProdutosQuantidadeCodigoBarras.EditCodigoKeyPress(Sender: TObject;
  var Key: Char);
Var
  nlQTDE : Integer;

begin



   // db_PedidoConferenciaItens.FieldByName('QUANTIDADE').AsFloat;
   // codigo de barras
   If Key = #13 then
   Begin
      FrmProdutosQuantidade.db_referencias.Refresh;

      strProduto := '';
      strProduto := UpperCase( Trim(EditCodigo.Text) );
      EditCodigo.text := '';

      // checar se o produto existe
      if fncValidaReferenciaGrade(strProduto)=false then
      begin

         AvisoSistemaErro('Produto ['+strProduto+'] não está cadastrado na Cor e Tamanho informado.');
         EditCodigo.SetFocus;
         Exit;
      End;

      // criar mapeamento de grade, caso nao exista;
      prcMapaGrade;

      // checar se ha estoque para o produto informado
      {
      if fncValidaReferenciaGradeQuantidade(sgReferencia)=false then
      begin
         AvisoSistema('Produto ['+sgReferencia+'] não possui quantidade em estoque.');
         EditCodigo.SetFocus;
         Exit;
      End;
      }

      nlQTDE   :=1;

      SP_ReferenciaLancaGrade.ParamByName('NEMPRESA').AsInteger         :=  FSistema.Empresa;
      SP_ReferenciaLancaGrade.ParamByName('SIDENTIFICADOR').AsString    :=  strProduto;
      SP_ReferenciaLancaGrade.ParamByName('NQUANTIDADE').AsInteger      :=  nlQTDE;
      SP_ReferenciaLancaGrade.ParamByName('NQUALIDADE').AsInteger       :=  FParametros.Producao.QualidadePadrao;
      SP_ReferenciaLancaGrade.ParamByName('ACAO').AsString              :=  'INCLUIR';
      SP_ReferenciaLancaGrade.ExecProc;
      SP_ReferenciaLancaGrade.close;

      strProduto :=RetornaIdentificadorReferencia(strProduto);

      FrmProdutosQuantidade.db_referencias.Refresh;
      FrmProdutosQuantidade.db_referencias.first;
      FrmProdutosQuantidade.db_referencias.Locate('REFERENCIA',strProduto,[]);


      EditCodigo.text := '';
      EditCodigo.Setfocus;


   End;

end;

procedure TFrmProdutosQuantidadeCodigoBarras.prcMapaGrade;
begin

   // verificar se existe
   if fncValidaReferenciaQuantidadeGrade(strProduto)=false then
   begin

      FrmProdutosQuantidade.db_referencias.Append;
      FrmProdutosQuantidade.db_referencias.FieldByName('REFERENCIA').AsString    :=  RetornaIdentificadorReferencia(strProduto);
      FrmProdutosQuantidade.db_referencias.FieldByName('IDENTIFICADOR').AsString :=  strProduto;

     // SALVAR ITENS DO PEDIDO DE VENDA
     If (FrmProdutosQuantidade.db_referencias.State in [dsedit, dsinsert]) then
     Begin
        FrmProdutosQuantidade.db_referencias.Post;
     End;


      FrmProdutosQuantidade.db_referencias.Refresh;
   end;

   // verificar se existe mapeamento
   if fncValidaReferenciaQuantidadeGrade(strProduto)=false then
   begin

      GradeProduto_Montar(RetornaIdentificadorReferencia(strProduto),
                       StringGridOpcoes
                       );

      CadProduto_EstoqueSalvar(StrToIntDef(GetProdutoCampo(RetornaIdentificadorReferencia(strProduto),'CODIGO'),0),
                                 RetornaIdentificadorReferencia(strProduto),
                                 StringGridOpcoes);
   end;



end;

end.

