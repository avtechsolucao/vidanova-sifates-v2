{***********************************************************************************
**  SISTEMA...............: Vida Nova Gest�o de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  C�digo pertencente ao cliente sob prote��o autoral.                           ****  N�o comercializ�vel sem pr�via autoriza��o do mesmo.                          **
***********************************************************************************}

unit FAboutBox;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   ExtCtrls, StdCtrls, ComCtrls, jpeg, ShellAPI,  pngimage, FFrameBarra,
  dxGDIPlusClasses;

type
   TFrmAboutBox = class(TForm)
    FrmFrameBarra1: TFrmFrameBarra;
    pnTitulo: TPanel;
    btnOk: TButton;
    ProductInformation: TRichEdit;
    PanelTop: TPanel;
    Image1: TImage;
    lb_nome_sis: TLabel;
    lb_nome_sis2: TLabel;
      procedure FormCreate(Sender: TObject);
      procedure Label6Click(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure BtnAcessarClick(Sender: TObject);
    procedure AdvSmoothLabel2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState); // ?
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmAboutBox: TFrmAboutBox;

implementation

uses FPrincipal, SQLServer, Biblioteca, Global, Classe.Global, App.Constantes;


{$R *.dfm}

procedure TFrmAboutBox.AdvSmoothLabel2Click(Sender: TObject);
begin
   strURL := SITE_EMPRESA;
   shellexecute(0, nil, pchar(strURL), nil, nil, SW_SHOW);
end;

procedure TFrmAboutBox.BtnAcessarClick(Sender: TObject);
begin
   close;
end;

procedure TFrmAboutBox.btnOkClick(Sender: TObject);
begin
   close;
end;

procedure TFrmAboutBox.FormCreate(Sender: TObject);
var
   MS: TMemoryStatus;
   Ano, Mes, Dia: Word;
begin
   Caption := 'Sistema ' + Application.Title +' Vers�o: 2018';
   DecodeDate(Date, Ano, Mes, Dia);
   MS.dwLength := sizeof(MemoryStatus);
   GlobalMemoryStatus(MS);
end;

procedure TFrmAboutBox.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=VK_ESCAPE then
    close;
end;

procedure TFrmAboutBox.Label6Click(Sender: TObject);
begin

   strURL := 'informar email';
   shellexecute(0, nil, pchar(strURL), nil, nil, SW_SHOW);

end;

end.



