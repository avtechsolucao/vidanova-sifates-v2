{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

unit FBalcaoProdutos;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, DB, Grids,
   DBGrids, StdCtrls, ExtCtrls, Buttons, FireDAC.Comp.Client, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet;

type
   TFrmBalcaoProdutos = class(TForm)
      Panel4: TPanel;
      Panel1: TPanel;
      RDSelecao: TRadioGroup;
      EditPesquisa: TLabeledEdit;
      DBGrid1: TDBGrid;
      DS_DADOS: TDataSource;
      ADO_Produtos: TFDQuery;
      ADO_ProdutosCODIGO: TStringField;
      ADO_ProdutosDESCRICAO: TStringField;
      ADO_ProdutosTAM: TStringField;
      ADO_ProdutosUND: TStringField;
      ADO_ProdutosLOCALIZACAO: TStringField;
      ADO_ProdutosPRC_VENDA: TFloatField;
      ADO_ProdutosREF: TStringField;
      ADO_ProdutosCOR: TStringField;
      ADO_ProdutosMARCA: TStringField;
      ADO_ProdutosQTD_TOTAL: TFloatField;
      procedure FormShow(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure RDSelecaoClick(Sender: TObject);
      procedure EditPesquisaChange(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmBalcaoProdutos: TFrmBalcaoProdutos;

implementation

uses Global, Biblioteca;

{$R *.dfm}

procedure TFrmBalcaoProdutos.FormShow(Sender: TObject);
begin
   RDSelecaoClick(Sender);
   EditPesquisaChange(Sender);

end;

procedure TFrmBalcaoProdutos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   ADO_Produtos.Close;
   Action := Cafree;

end;

procedure TFrmBalcaoProdutos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   If Key = VK_ESCAPE then
      Close;
end;

procedure TFrmBalcaoProdutos.RDSelecaoClick(Sender: TObject);
begin
   EditPesquisa.Editlabel.caption := RDSelecao.Items.Strings
     [RDSelecao.ItemIndex];

   ScriptSQL := '';
   ScriptSQL := ' SELECT *  FROM ESTOQUE ';
   ScriptSQL := ScriptSQL + ' WHERE ';
   If RDSelecao.ItemIndex = 0 Then
   Begin
      ScriptSQL := ScriptSQL + ' UPPER(CODIGO) LIKE UPPER(:Procurar) ';
      ScriptSQL := ScriptSQL + ' ORDER BY CODIGO, DESCRICAO, UND, TAM ';
   End;

   If RDSelecao.ItemIndex = 1 Then
   Begin
      ScriptSQL := ScriptSQL + ' UPPER(DESCRICAO) LIKE UPPER(:Procurar) ';
      ScriptSQL := ScriptSQL + ' ORDER BY DESCRICAO, UND, TAM ';
   End;

   EditPesquisa.SetFocus;
   EditPesquisaChange(Sender);

end;

procedure TFrmBalcaoProdutos.EditPesquisaChange(Sender: TObject);
begin
   ADO_Produtos.Close;
   ADO_Produtos.SQL.Clear;
   ADO_Produtos.SQL.Add(ScriptSQL);
   ADO_Produtos.ParamByName('Procurar').AsString :=
     '%' + EditPesquisa.Text + '%';
   ADO_Produtos.Open;
end;

end.
