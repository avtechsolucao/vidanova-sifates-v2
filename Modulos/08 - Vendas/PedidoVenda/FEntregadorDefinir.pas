﻿{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **
** ------------------------------------------------------------------------------ **
**  Código pertencente ao cliente sob proteção autoral.                           **
**  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

unit FEntregadorDefinir;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, FFrameBarra, ExtCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, ISFEdit, ISFEditbtn,
  ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos;

type
   TFrmEntregadorDefinir = class(TForm)
      FrmFrameBarra1: TFrmFrameBarra;
      Panel5: TPanel;
    BtnSair: TButton;
    BtnDigitar: TButton;
    ed_codentregador: TIDBEditDialog;
    ed_entregador: TEdit;
    ed_pedidoentregador: TEdit;
    db_Pedidos: TFDQuery;
    Label1: TLabel;
    sp_definirentregador: TFDStoredProc;
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnImportarClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure BtnDigitarClick(Sender: TObject);
    procedure ed_pedidoentregadorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmEntregadorDefinir: TFrmEntregadorDefinir;

implementation

uses Global, FPedidoAprovarVenda, Biblioteca, FPrincipal;

{$R *.dfm}



procedure TFrmEntregadorDefinir.BtnImportarClick(Sender: TObject);
begin
    sOpcao := 'IMPORTAR';
    close;
end;

procedure TFrmEntregadorDefinir.BtnSairClick(Sender: TObject);
begin
      sOpcao := 'N';
      close;

end;

procedure TFrmEntregadorDefinir.ed_pedidoentregadorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    SelectNext(Screen.ActiveControl, True, True);
  end;
end;

procedure TFrmEntregadorDefinir.BtnDigitarClick(Sender: TObject);
begin
     // Enviar comando para aprovar pedido
     sp_definirentregador.ParamByName('ID_ENTREGADOR').AsInteger :=  StrToIntDef(ed_codentregador.text,0);
     sp_definirentregador.ParamByName('ID_PEDIDO').AsInteger  :=  StrToIntDef(ed_pedidoentregador.text,0);
     sp_definirentregador.ExecProc;
     sp_definirentregador.close;

     AvisoSistema('Pedido vinculado ao entregador com sucesso! Consultar em Transportes>Relatorios>');
end;

procedure TFrmEntregadorDefinir.FormCreate(Sender: TObject);
begin
    ed_pedidoentregador.Text := IntToStr( FrmPedidoAprovarVenda.Num_pedido );
end;

procedure TFrmEntregadorDefinir.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   IF Key = VK_ESCAPE then
   begin
      BtnSairClick(Sender);
   end;


end;

end.
