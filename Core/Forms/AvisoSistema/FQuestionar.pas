{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

unit FQuestionar;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, ExtCtrls, ComCtrls, Buttons;

type
   TFrmQuestionar = class(TForm)
      Panel1: TPanel;
      BtnAceitar: TButton;
      BtnCancelar: TButton;
      MemoAviso: TRichEdit;
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
   FrmQuestionar: TFrmQuestionar;

implementation

uses Biblioteca;

{$R *.dfm}

procedure TFrmQuestionar.FormCreate(Sender: TObject);
begin
   MemoAviso.clear;
   BeepCritica;

end;

procedure TFrmQuestionar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := Cafree;
end;

procedure TFrmQuestionar.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   If Key = VK_ESCAPE then
      close;
end;

procedure TFrmQuestionar.FormShow(Sender: TObject);
begin
   BtnAceitar.SetFocus;
end;

end.
