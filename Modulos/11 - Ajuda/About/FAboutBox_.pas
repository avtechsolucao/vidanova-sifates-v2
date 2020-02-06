{--------------------------------------------------------------------------------+
|  SISTEMA...............: IndPCP (E TAMBEM AUTOR DO VESTISPCP - DESCONTINUADO)  |
|  PORTE DE EMPRESA......: Destinado para Micro Empresas                         |
|  SEGMENTO..............: Comércio em geral e industrias (vestuário)            | 
|  LINGUAGEM/DB..........: Delphi 10.3 Rio   / Firebird 2.5                      | 
|--------------------------------------------------------------------------------|
|                                                                                |
|  AUTOR/PROGRAMADOR.....: Adriano Zanini (2019)                                 |
|  E-MAIL................: fontes@altaica.com.br                                 ||--------------------------------------------------------------------------------||  Você não pode comercializar o codigo-fonte. Nem mesmo parcialmente!           ||  Comercialize somente o sistema compilado (com o nome/interface que desejar).  |
+--------------------------------------------------------------------------------}

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
    Memo1: TMemo;
    Image1: TImage;
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
   Caption := 'Sistema ' + Application.Title +' Versão: 2018';
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



