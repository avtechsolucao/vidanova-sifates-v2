﻿{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

unit FOpcaoNotaFiscalCompra;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, FFrameBarra, ExtCtrls;

type
   TFrmOpcaoNotaFiscalCompra = class(TForm)
      FrmFrameBarra1: TFrmFrameBarra;
      Panel5: TPanel;
    BtnDigitar: TButton;
    BtnImportar: TButton;
    BtnSair: TButton;
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnDigitarClick(Sender: TObject);
    procedure BtnImportarClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmOpcaoNotaFiscalCompra: TFrmOpcaoNotaFiscalCompra;

implementation

uses Global, FCompras;

{$R *.dfm}

procedure TFrmOpcaoNotaFiscalCompra.BtnDigitarClick(Sender: TObject);
begin
      sOpcao := 'DIGITAR';
      close;
end;

procedure TFrmOpcaoNotaFiscalCompra.BtnImportarClick(Sender: TObject);
begin
      sOpcao := 'IMPORTAR';
      close;
end;

procedure TFrmOpcaoNotaFiscalCompra.BtnSairClick(Sender: TObject);
begin
      sOpcao := '';
      close;
end;

procedure TFrmOpcaoNotaFiscalCompra.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   sOpcao := '';

   IF Key = VK_F3 then
   begin
      BtnDigitarClick(Sender);
   end;

   IF Key = VK_F4 then
   begin
      BtnImportarClick(Sender);
   end;

   IF Key = VK_ESCAPE then
   begin
      BtnSairClick(Sender);
   end;

end;

end.
