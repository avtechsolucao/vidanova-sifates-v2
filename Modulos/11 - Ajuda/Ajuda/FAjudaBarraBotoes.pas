{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

unit FAjudaBarraBotoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics,  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Classe.Global,
  FFrameBotoes, FrmRelatoriosBotoes, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.StdCtrls, FFrameBarra;

type
   TFrmAjudaBarraBotoes = class(TForm)
      FrmFrameBarra1: TFrmFrameBarra;
      Panel1: TPanel;
      FrameRelatoriosBotoes1: TFrameRelatoriosBotoes;
      Panel2: TPanel;
      GroupBox2: TGroupBox;
      GroupBox1: TGroupBox;
      FrmFrameBotoes1: TFrmFrameBotoes;
      Image1: TImage;
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure FormCreate(Sender: TObject);
    procedure FrameRelatoriosBotoes1SpbSairClick(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmAjudaBarraBotoes: TFrmAjudaBarraBotoes;

implementation

{$R *.dfm}

procedure TFrmAjudaBarraBotoes.FormCreate(Sender: TObject);
begin

   // SpbAdicionar.Glyph   :=FrmFrameBotoes1.SpbAdicionar.Glyph;
   // SpbAdicionar.Caption :=FrmFrameBotoes1.SpbAdicionar.Caption;

   // SpbSair.Glyph   :=FrmFrameBotoes1.SpbSair.Glyph;
   // SpbSair.Caption :=FrmFrameBotoes1.SpbSair.Caption;

end;

procedure TFrmAjudaBarraBotoes.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   if Key = VK_Escape then
   begin
      close;
   end;

end;

procedure TFrmAjudaBarraBotoes.FrameRelatoriosBotoes1SpbSairClick(
  Sender: TObject);
begin
  FrameRelatoriosBotoes1.SpbSairClick(Sender);

end;

end.
