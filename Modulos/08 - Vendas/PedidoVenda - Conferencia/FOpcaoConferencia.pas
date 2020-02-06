{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

unit FOpcaoConferencia;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, FFrameBarra, ExtCtrls;

type
   TFrmOpcaoConferencia = class(TForm)
      FrmFrameBarra1: TFrmFrameBarra;
      Panel5: TPanel;
    BtnImportar: TButton;
    BtnSair: TButton;
    BtnDigitar: TButton;
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnImportarClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure BtnDigitarClick(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmOpcaoConferencia: TFrmOpcaoConferencia;

implementation

uses Global;

{$R *.dfm}



procedure TFrmOpcaoConferencia.BtnImportarClick(Sender: TObject);
begin
    sOpcao := 'IMPORTAR';
    close;
end;

procedure TFrmOpcaoConferencia.BtnSairClick(Sender: TObject);
begin
      sOpcao := 'N';
      close;

end;

procedure TFrmOpcaoConferencia.BtnDigitarClick(Sender: TObject);
begin
      sOpcao := 'DIGITAR';
      close;

end;

procedure TFrmOpcaoConferencia.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   sOpcao := '';

   IF Key = VK_F3 then
   begin
      BtnImportarClick(Sender);
   end;

   IF Key = VK_F4 then
   begin
      BtnDigitarClick(Sender);
   end;

   IF Key = VK_ESCAPE then
   begin
      BtnSairClick(Sender);
   end;


end;

end.
