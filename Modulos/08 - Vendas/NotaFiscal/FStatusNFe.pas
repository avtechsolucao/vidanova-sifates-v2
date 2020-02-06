{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}
unit FStatusNFe;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, ExtCtrls, FFrameBarra;

type
   TFrmStatusNFe = class(TForm)
      Panel1: TPanel;
      FrmFrameBarra1: TFrmFrameBarra;
      lblStatus: TPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);

   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmStatusNFe: TFrmStatusNFe;

implementation

{$R *.dfm}

procedure TFrmStatusNFe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TFrmStatusNFe.FormDestroy(Sender: TObject);
begin
  FrmStatusNFe := nil;
end;

end.
