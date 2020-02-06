﻿{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

unit FVendaCaixa_LocalizarPedido;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Buttons, ExtCtrls, DBCtrls, Db,   Grids, DBGrids, StdCtrls,
  
    FireDAC.Comp.Client, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet;

type
   TFrmVendaCaixa_LocalizarPedido = class(TForm)
      Panel4: TPanel;
      Panel1: TPanel;
      DS_Pedido: TDataSource;
      RDSelecao: TRadioGroup;
      EditPesquisa: TLabeledEdit;
      BtnOk: TBitBtn;
      BtnSair: TBitBtn;
      DBGrid1: TDBGrid;
      DB_PEDIDOS: TFDQuery;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure EditPesquisaChange(Sender: TObject);
      procedure RDSelecaoClick(Sender: TObject);
      procedure FormShow(Sender: TObject);
      procedure BtnSairClick(Sender: TObject);
      procedure DBGrid1DblClick(Sender: TObject);
      procedure BtnOkClick(Sender: TObject);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
   private
      { Private declarations }

      ScriptSQL: String;

   public
      { Public declarations }
   end;

var
   FrmVendaCaixa_LocalizarPedido: TFrmVendaCaixa_LocalizarPedido;

implementation

uses FBaseDados, Biblioteca, Global, FPrincipal;

{$R *.DFM}

procedure TFrmVendaCaixa_LocalizarPedido.FormCreate(Sender: TObject);
begin
   ScriptSQL := '';

end;

procedure TFrmVendaCaixa_LocalizarPedido.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   DB_PEDIDOS.Close;
end;

procedure TFrmVendaCaixa_LocalizarPedido.EditPesquisaChange(Sender: TObject);
begin

   DB_PEDIDOS.Close;
   DB_PEDIDOS.SQL.Clear;
   DB_PEDIDOS.SQL.Add(ScriptSQL);
   DB_PEDIDOS.ParamByName('xProcurar').Value := '%' + EditPesquisa.Text + '%';
   // aviso(IntToStr(length(EditPesquisa.Text)));
   DB_PEDIDOS.Open;

end;

procedure TFrmVendaCaixa_LocalizarPedido.RDSelecaoClick(Sender: TObject);
begin
   EditPesquisa.Editlabel.caption := RDSelecao.Items.Strings
     [RDSelecao.ItemIndex];

   if RDSelecao.ItemIndex = 0 Then
   Begin
      ScriptSQL := '';

      ScriptSQL :=
        ' Select A.PEDIDO_NUMERO, A.DATA, A.ENTREGA, A.PROD_QTDE, A.TOTAL_PEDIDO, A.VENDEDOR, ';
      ScriptSQL := ScriptSQL + ' A.PEDIDO_NATUREZA, B.CODIGO, B.NOME ';
      ScriptSQL := ScriptSQL + ' From PEDIDOS A, CLIENTES B ';
      ScriptSQL := ScriptSQL + ' WHERE ';
      ScriptSQL := ScriptSQL + ' B.CODIGO=A.CLIENTE ';
      ScriptSQL := ScriptSQL + ' AND ';
      ScriptSQL := ScriptSQL + ' A.STATUS<>''S'' ';
      ScriptSQL := ScriptSQL + ' AND ';
      ScriptSQL := ScriptSQL + ' UPPER(A.PEDIDO_NUMERO) LIKE UPPER(:xProcurar)';
      ScriptSQL := ScriptSQL + ' ORDER BY A.Data, A.PEDIDO_NUMERO ';
   End;

   if RDSelecao.ItemIndex = 1 Then
   Begin
      ScriptSQL := '';

      ScriptSQL :=
        ' Select A.PEDIDO_NUMERO, A.DATA, A.ENTREGA, A.PROD_QTDE, A.TOTAL_PEDIDO, A.VENDEDOR, ';
      ScriptSQL := ScriptSQL + ' A.PEDIDO_NATUREZA, B.CODIGO, B.NOME ';
      ScriptSQL := ScriptSQL + ' From PEDIDOS A, CLIENTES B ';
      ScriptSQL := ScriptSQL + ' WHERE ';
      ScriptSQL := ScriptSQL + ' B.CODIGO=A.CLIENTE ';
      ScriptSQL := ScriptSQL + ' AND ';
      ScriptSQL := ScriptSQL + ' A.STATUS<>''S'' ';
      ScriptSQL := ScriptSQL + ' AND ';
      ScriptSQL := ScriptSQL + ' UPPER(B.NOME) LIKE UPPER(:xProcurar) ';
      ScriptSQL := ScriptSQL + ' ORDER BY A.DATA, B.NOME, A.PEDIDO_NUMERO ';

   End;

   EditPesquisa.SetFocus;
   EditPesquisaChange(Sender);

end;

procedure TFrmVendaCaixa_LocalizarPedido.FormShow(Sender: TObject);
begin
   RDSelecaoClick(Sender);

   EditPesquisaChange(Sender);
end;

procedure TFrmVendaCaixa_LocalizarPedido.BtnSairClick(Sender: TObject);
begin
   Close;
end;

procedure TFrmVendaCaixa_LocalizarPedido.DBGrid1DblClick(Sender: TObject);
begin
   BtnOk.Click;

end;

procedure TFrmVendaCaixa_LocalizarPedido.BtnOkClick(Sender: TObject);
begin
   Achar[0] := '';
   Achar[0] := DB_PEDIDOS.FieldByName('PEDIDO_NUMERO').ASstring;
end;

procedure TFrmVendaCaixa_LocalizarPedido.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

   If Key = VK_RETURN THEN
      BtnOk.Click;;

   If Key = VK_ESCAPE THEN
      BtnSair.Click;;

end;

end.
