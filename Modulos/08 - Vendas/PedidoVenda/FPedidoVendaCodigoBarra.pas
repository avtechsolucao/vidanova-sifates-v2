{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}
unit FPedidoVendaCodigoBarra;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, ExtCtrls,  db, Buttons, jpeg, FFrameBarra, 
   FireDAC.Comp.Client, Grids, DBGrids, Classe.Global, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet;

type
   TFrmPedidoVendaCodigoBarra = class(TForm)
      Panel3: TPanel;
      Label18: TLabel;
      Image2: TImage;
      EditCodigo: TLabeledEdit;
    FrmFrameBarra1: TFrmFrameBarra;
    SP_PedidoLancaGrade: TFDStoredProc;
    StringGridOpcoes: TStringGrid;
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
   FrmPedidoVendaCodigoBarra: TFrmPedidoVendaCodigoBarra;



implementation

uses FPrincipal, SQLServer, Biblioteca, Global, Classe.Usuarios, FPedidoVenda,
  Biblioteca_pcp;

{$R *.dfm}

procedure TFrmPedidoVendaCodigoBarra.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   If Key = VK_ESCAPE then
   Begin
      close;
   End;

end;

procedure TFrmPedidoVendaCodigoBarra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   blProdutoViaLeitor :=false;
   Action := cafree;

end;


procedure TFrmPedidoVendaCodigoBarra.FormCreate(Sender: TObject);
begin

   blProdutoViaLeitor :=true;
   EditCodigo.text := '';


end;

procedure TFrmPedidoVendaCodigoBarra.EditCodigoKeyPress(Sender: TObject;
  var Key: Char);
Var
  nlQTDE : Integer;

begin
   // db_PedidoConferenciaItens.FieldByName('QUANTIDADE').AsFloat;
   // codigo de barras
   If Key = #13 then
   Begin
      FrmPedidoVenda.db_PedidoItens.Refresh;

      strProduto := '';
      strProduto := UpperCase( Trim(EditCodigo.Text) );
      EditCodigo.text := '';

      // checar se o produto existe
      if fncValidaReferenciaGrade(strProduto)=false then
      begin
         AvisoSistema('Produto ['+strProduto+'] não está cadastrado na Cor e Tamanho informado.');
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

      SP_PedidoLancaGrade.ParamByName('NEMPRESA').AsInteger         :=  FSistema.Empresa;
      SP_PedidoLancaGrade.ParamByName('NPEDIDO').AsInteger          :=  nPedidoVenda;
      SP_PedidoLancaGrade.ParamByName('SIDENTIFICADOR').AsString    :=  strProduto;
      SP_PedidoLancaGrade.ParamByName('NQUANTIDADE').AsInteger      :=  nlQTDE;
      SP_PedidoLancaGrade.ParamByName('NVALOR_UNIT').AsFloat        :=  0; // passando o valor zero, o proprio servidor SQL fara a localização do valor unitário;
      SP_PedidoLancaGrade.ParamByName('ACAO').AsString              :=  'INCLUIR';
      SP_PedidoLancaGrade.ExecProc;
      SP_PedidoLancaGrade.close;

      FrmPedidoVenda.CalculaPedido;
      FrmPedidoVenda.db_PedidoItens.Refresh;


      EditCodigo.text := '';
      EditCodigo.Setfocus;


   End;

end;

procedure TFrmPedidoVendaCodigoBarra.prcMapaGrade;
begin

   // verificar se existe
   if fncPedidoVendaExisteProduto(nPedidoVenda,RetornaIdentificadorReferencia(strProduto))=false then
   begin

      FrmPedidoVenda.db_PedidoItens.Append;
      FrmPedidoVenda.db_PedidoItens.FieldByName('REFERENCIA').AsString    :=  RetornaIdentificadorReferencia(strProduto);

     // SALVAR ITENS DO PEDIDO DE VENDA
     If (FrmPedidoVenda.db_PedidoItens.State in [dsedit, dsinsert]) then
     Begin
        FrmPedidoVenda.db_PedidoItens.Post;
     End;
      FrmPedidoVenda.CalculaPedido;
      FrmPedidoVenda.db_PedidoItens.Refresh;
   end;
   nIDXPedidoVenda :=FrmPedidoVenda.db_PedidoItens.FieldByName('IDX').AsInteger;

   // verificar se existe mapeamento
   if fncPedidoVendaExisteProdutoGrade(nPedidoVenda,RetornaIdentificadorReferencia(strProduto))=false then
   begin

      GradeProduto_Montar(RetornaIdentificadorReferencia(strProduto),
                       StringGridOpcoes
                       );

      GradeProduto_Salvar(nIDXPedidoVenda,
                          nPedidoVenda,
                          RetornaIdentificadorReferencia(strProduto),
                          '',
                          StringGridOpcoes
                           );
   end;



end;


end.

