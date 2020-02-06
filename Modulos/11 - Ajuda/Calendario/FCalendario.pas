{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

unit FCalendario;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Grids, Calendar, ExtCtrls, FFrameBarra;

type
   TFrmCalendario = class(TForm)
      FrmFrameBarra1: TFrmFrameBarra;
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmCalendario: TFrmCalendario;

implementation

uses Biblioteca, Global, FPrincipal;

{$R *.dfm}

procedure TFrmCalendario.FormCreate(Sender: TObject);
begin

//   FrmPrincipal.MnuJan_Calendario.Enabled := False;

//   Calendario.startyear := Ano(Date);
//   Calendario.StartMonth := 1;
//   Calendario.startDay := Dia(Date);
//
//   Calendario.Month := 1;
//   Calendario.Day := Dia(Date);
//   Calendario.Year := Ano(Date);

   // FrmFrameBarra.LblBarraTitulo.Caption   :='Calendário: '+IntToStr( Ano(Date) );

end;

procedure TFrmCalendario.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   If Key = VK_ESCAPE then
      close;
end;

procedure TFrmCalendario.FormResize(Sender: TObject);
begin
//   Calendario.Align :=alNone;
//   Calendario.Align :=alClient;
end;

procedure TFrmCalendario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//   FrmPrincipal.MnuJan_Calendario.Enabled := True;
   Action := cafree;
end;

end.
