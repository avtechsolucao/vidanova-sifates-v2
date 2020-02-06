{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

unit FProdutosCustoFracao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics,  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Classe.Global,
  FFrameBarra, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
   TFrmProdutosCustoFracao = class(TForm)
      PainelBotoes: TPanel;
      SpeedButton1: TSpeedButton;
      BtnSair: TBitBtn;
      BtnCancelar: TBitBtn;
      BtnSalvar: TBitBtn;
      BtnExcluir: TBitBtn;
      BtnNovo: TBitBtn;
      BtnProcurar: TBitBtn;
      GroupBox1: TGroupBox;
      Label5: TLabel;
      FrmFrameBarra1: TFrmFrameBarra;
      Panel1: TPanel;
      Label2: TLabel;
      DBEdit2: TDBEdit;
      DBEdit3: TDBEdit;
      Label3: TLabel;
      GroupBox2: TGroupBox;
      DBEdit1: TDBEdit;
      EditPercentual: TDBEdit;
      Label4: TLabel;
      Label1: TLabel;
      GroupBox3: TGroupBox;
      Label7: TLabel;
      DBEdit4: TDBEdit;
      Label8: TLabel;
      DBEdit5: TDBEdit;
      Panel2: TPanel;
      SpeedButton2: TSpeedButton;
      SpeedButton3: TSpeedButton;
      SpeedButton4: TSpeedButton;
      Label9: TLabel;
      DBEdit6: TDBEdit;
      Label6: TLabel;
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure SpeedButton3Click(Sender: TObject);
      procedure SpeedButton2Click(Sender: TObject);
      procedure SpeedButton4Click(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmProdutosCustoFracao: TFrmProdutosCustoFracao;

implementation

uses FPrincipal, Biblioteca, FBaseDados, Global, FProdutos;

{$R *.dfm}

procedure TFrmProdutosCustoFracao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   If Key = VK_Escape then
      close;

end;

procedure TFrmProdutosCustoFracao.SpeedButton2Click(Sender: TObject);
begin
   // FrmProdutos.FrmFrameBotoes1.SpbSalvarClick(sender);
   FrmProdutos.FrmFrameBotoes1.SpbSalvar.Click;
end;

procedure TFrmProdutosCustoFracao.SpeedButton3Click(Sender: TObject);
begin
   close;
end;

procedure TFrmProdutosCustoFracao.SpeedButton4Click(Sender: TObject);
begin
   FrmProdutos.FrmFrameBotoes1.SpbEditarClick(Sender);
end;

end.
