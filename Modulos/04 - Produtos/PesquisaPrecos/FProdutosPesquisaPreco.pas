{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

unit FProdutosPesquisaPreco;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, ExtCtrls,  db, Buttons, jpeg, Mask, DBCtrls,
   
    Grids,   DBGrids, ISFEdit, ISFEditbtn,
  ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, GradeProduto;

type
   TFrmProdutosPesquisaPreco = class(TForm)
      Panel3: TPanel;
      Label18: TLabel;
      db_estoque: TFDQuery;
      ds_estoque: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    Image2: TImage;
    Panel4: TPanel;
    EditCodigo: TLabeledEdit;
    Painel1: TPanel;
    EditQtde: TLabeledEdit;
    EditNomeProduto: TLabeledEdit;
    EditPreco: TLabeledEdit;
    EditCodigoProduto: TLabeledEdit;
    ds_estoqueEstoque: TDataSource;
    db_estoqueEstoque: TFDQuery;
    dbProcurarProduto: TIDBEditDialog;
    GradeProduto1: TGradeProduto;
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure EditCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure EditCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
   private
      { Private declarations }

      ViaLeitor: Boolean;
    procedure CarregarGrade;

   public
      { Public declarations }
   end;

var
   FrmProdutosPesquisaPreco: TFrmProdutosPesquisaPreco;

implementation

uses FPrincipal, SQLServer, Biblioteca, Global, FProdutosQuantidade;

{$R *.dfm}

procedure TFrmProdutosPesquisaPreco.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   If Key = VK_ESCAPE then
   Begin
      close;
   End;

end;

procedure TFrmProdutosPesquisaPreco.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   // checar se o produto existe
   wInteger[0] := 0; // Quantidade disponivel do tamanho U
   wInteger[1] := 0; // Quantidade disponivel do tamanho P
   wInteger[2] := 0; // Quantidade disponivel do tamanho M
   wInteger[3] := 0; // Quantidade disponivel do tamanho G
   wInteger[4] := 0; // Quantidade disponivel do tamanho GG

   Action := cafree;
end;

procedure TFrmProdutosPesquisaPreco.EditCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

   if key=vk_f8 then
     if dbProcurarProduto.Execute then
     begin
        EditCodigo.Text :=dbProcurarProduto.ResultFieldAsString('REFERENCIA');
     end;

end;

procedure TFrmProdutosPesquisaPreco.EditCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
   // db_VendasItens.FieldByName('QTDE').AsFloat;
   // codigo de barras
   If Key = #13 then
   Begin

      db_estoque.close;

      EditNomeProduto.Text := '';
      EditPreco.Text := '';
      EditQtde.Text := '';

      db_estoque.close;
      db_estoque.ParamByName('REFERENCIA').AsString :=     Uppercase(alltrim(EditCodigo.Text));
      db_estoque.Open;

      if db_estoque.RecordCount < 1 then
      begin
         GradeProduto1.Visible := False;
         Erro('Produto não cadastrado no estoque');
         EditCodigo.SetFocus;
         db_estoque.close;
         Exit;
      End;
      db_estoque.first;

      // checar as quantidades
      EditCodigoProduto.Text := Trim(EditCodigo.Text);
      EditNomeProduto.Text := db_estoque.FieldByName('DESCRICAO').AsString;
      EditPreco.Text := FormatFloat('###,##0.00',        db_estoque.FieldByName('PRC_VENDA').AsFloat);
      EditQtde.Text := FormatFloat('###,##0',            db_estoque.FieldByName('ESTOQUESALDO').AsFloat);


      if (db_estoque.FieldByName('REFERENCIA').AsString>'') and (db_estoque.FieldByName('TIPO_PRODUTO').AsString='ACA')  then
        CarregarGrade
      else
        GradeProduto1.Visible := False;

      db_estoque.close;
      EditCodigo.Text := '';

   End;

end;

procedure TFrmProdutosPesquisaPreco.CarregarGrade;
begin
   GradeProduto1.Visible := True;
   GradeProduto1.IDEmpresa          :=db_estoque.FieldByName('EMPRESA').AsInteger;
   GradeProduto1.Produto.IDProduto  :=db_estoque.FieldByName('CODIGO').AsInteger;
   GradeProduto1.Produto.Referencia :=Uppercase(alltrim(EditCodigo.Text));
   GradeProduto1.CriarEdits;
end;

end.
