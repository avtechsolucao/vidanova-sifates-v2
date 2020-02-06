{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

unit FAjuda;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   ExtCtrls, StdCtrls, Menus, ToolWin, ComCtrls;

type
   TFrmAjuda = class(TForm)
      MemoAjuda: TMemo;
      Panel1: TPanel;
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmAjuda: TFrmAjuda;

implementation

{$R *.DFM}

procedure TFrmAjuda.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   IF Key = VK_ESCAPE THEN
      CLOSE;
end;

procedure TFrmAjuda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

end.
