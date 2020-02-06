{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

unit FAvisoSistemaErro;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, ExtCtrls, FFrameBarra, pngimage, Vcl.Imaging.jpeg;

type
   TFrmAvisoSistemaErro = class(TForm)
    painelbottom: TPanel;
    Panel2: TPanel;
    Panel1: TPanel;
    MemoAviso: TMemo;
    LblBarraTitulo: TLabel;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmAvisoSistemaErro: TFrmAvisoSistemaErro;

implementation

{$R *.dfm}

uses Biblioteca;

procedure TFrmAvisoSistemaErro.FormCreate(Sender: TObject);
begin
   MemoAviso.clear;
end;

procedure TFrmAvisoSistemaErro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := Cafree;
end;

procedure TFrmAvisoSistemaErro.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   If Key <> VK_ESCAPE then
      BeepCritica;

   If Key = VK_ESCAPE then
      close;
end;

procedure TFrmAvisoSistemaErro.FormShow(Sender: TObject);
begin
   BeepAlerta;
end;

end.
