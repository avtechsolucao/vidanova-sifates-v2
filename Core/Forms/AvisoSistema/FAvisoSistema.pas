﻿{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

unit FAvisoSistema;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, ExtCtrls, FFrameBarra, pngimage;

type
   TFrmAvisoSistema = class(TForm)
      MemoAviso: TMemo;
      Panel1: TPanel;
      Button1: TButton;
    Panel2: TPanel;
    Image1: TImage;
    LblBarraTitulo: TLabel;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure Button1Click(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmAvisoSistema: TFrmAvisoSistema;

implementation

{$R *.dfm}

procedure TFrmAvisoSistema.FormCreate(Sender: TObject);
begin
   MemoAviso.clear;
end;

procedure TFrmAvisoSistema.Button1Click(Sender: TObject);
begin
   close;
end;

procedure TFrmAvisoSistema.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := Cafree;
end;

procedure TFrmAvisoSistema.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   If Key = VK_ESCAPE then
      close;
end;

end.
