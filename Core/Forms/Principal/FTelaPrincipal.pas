{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

unit FTelaPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics,  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Classe.Global,
  System.ImageList, Vcl.ImgList, Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage;

type

  TFrmTelaPrincipal = class(TForm)
    ImageList1: TImageList;
    PnReferencia: TPanel;
    gpBotoes: TGridPanel;
    GroupPanel1_3: TPanel;
    Image3: TImage;
    Panel4: TPanel;
    Label6: TLabel;
    Panel3: TPanel;
    Image1: TImage;
    Panel5: TPanel;
    Label1: TLabel;
    Panel6: TPanel;
    Image4: TImage;
    Panel7: TPanel;
    Label2: TLabel;
    Panel10: TPanel;
    Image2: TImage;
    Panel11: TPanel;
    Label4: TLabel;
    Panel8: TPanel;
    Image6: TImage;
    Panel9: TPanel;
    Label3: TLabel;
    Panel12: TPanel;
    Image7: TImage;
    Panel13: TPanel;
    Label5: TLabel;
    Panel16: TPanel;
    Image10: TImage;
    Panel17: TPanel;
    Label8: TLabel;
    Panel14: TPanel;
    Image9: TImage;
    Panel15: TPanel;
    Label7: TLabel;
    Panel18: TPanel;
    Image11: TImage;
    Panel19: TPanel;
    Label9: TLabel;
    pnFecharSistema: TPanel;
    AdvToolButton2: TButton;
    AdvToolButton1: TButton;
    AdvToolButton3: TButton;
    AdvToolButton4: TButton;
    Image13: TImage;
    Image14: TImage;
    Image15: TImage;
    Image16: TImage;
    AdvPanel1: TPanel;
    Image12: TImage;
    AdvPanel2: TPanel;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image12Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure AdvToolButton4Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Image10Click(Sender: TObject);
    procedure Image9Click(Sender: TObject);
    procedure Panel18Click(Sender: TObject);
  private
    procedure AbrirMenu(aID: Integer);
    procedure FecharMenus;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTelaPrincipal: TFrmTelaPrincipal;

implementation

{$R *.dfm}

uses FPrincipal, Biblioteca;


procedure TFrmTelaPrincipal.FormCreate(Sender: TObject);
begin
  Top   := 0;
  Left  := 0;
  gpBotoes.Align :=alClient;
end;

procedure TFrmTelaPrincipal.FormShow(Sender: TObject);
begin
  IniciarMenuPrincipal := False;
  FecharMenus;
end;

procedure TFrmTelaPrincipal.AdvToolButton4Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFrmTelaPrincipal.FecharMenus;
var
 i : integer;
begin
//  for i := 0 to FrmPrincipal.Ribbon1.Tabs.Count-1 do
//  begin
//    FrmPrincipal.Ribbon1.Tabs.Items[i].Visible :=False;
//    FrmPrincipal.Ribbon1.Realign;
//    FrmPrincipal.Ribbon1.Update;
//  end;
//  Application.ProcessMessages;

end;

procedure TFrmTelaPrincipal.AbrirMenu(aID : Integer);
begin
//  FecharMenus;
//  FecharAplicacao := True;
//  FrmTelaPrincipal.Close;
//  FrmPrincipal.Ribbon1.Tabs.Items[aID].Visible :=True;
//  FrmPrincipal.Ribbon1.TabIndex :=aID;
//  FrmPrincipal.Show;
//  Application.ProcessMessages;
end;

procedure TFrmTelaPrincipal.Panel18Click(Sender: TObject);
begin
  AbrirMenu(0);
end;

procedure TFrmTelaPrincipal.Image3Click(Sender: TObject);
begin
  AbrirMenu(1);
end;

procedure TFrmTelaPrincipal.Image1Click(Sender: TObject);
begin
  AbrirMenu(2);
end;

procedure TFrmTelaPrincipal.Image4Click(Sender: TObject);
begin
  AbrirMenu(3);
end;

procedure TFrmTelaPrincipal.Image2Click(Sender: TObject);
begin
  AbrirMenu(4);
end;

procedure TFrmTelaPrincipal.Image6Click(Sender: TObject);
begin
  AbrirMenu(5);
end;

procedure TFrmTelaPrincipal.Image7Click(Sender: TObject);
begin
  AbrirMenu(6);
end;

procedure TFrmTelaPrincipal.Image10Click(Sender: TObject);
begin
  AbrirMenu(7);
end;

procedure TFrmTelaPrincipal.Image9Click(Sender: TObject);
begin
  AbrirMenu(8);
end;

procedure TFrmTelaPrincipal.Image12Click(Sender: TObject);
begin
//  AdvSmoothPopup1.Control := pnFecharSistema;
//  AdvSmoothPopup1.PopupAtControl(PnReferencia, pdTopRight);
end;

end.
