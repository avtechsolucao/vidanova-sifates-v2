{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

unit FOpcaoNotaFiscal;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, FFrameBarra, ExtCtrls;

type
   TFrmOpcaoNotaFiscal = class(TForm)
      FrmFrameBarra1: TFrmFrameBarra;
      Panel2: TPanel;
      Panel4: TPanel;
      Panel5: TPanel;
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmOpcaoNotaFiscal: TFrmOpcaoNotaFiscal;

implementation

uses Global, FNotaFiscal;

{$R *.dfm}

procedure TFrmOpcaoNotaFiscal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   OpcaoNumeroFiscal := '';

   IF Key = VK_F3 then
   begin
      OpcaoNumeroFiscal := 'NFE';
      close;
   end;

   IF Key = VK_ESCAPE then
   begin
      OpcaoNumeroFiscal := '';
      close;
   end;

end;

end.
