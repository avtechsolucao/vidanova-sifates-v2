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

unit FSplash;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, ExtCtrls, jpeg, StdCtrls,  pngimage, dxGDIPlusClasses;

Type
   TFrmSplash = class(TForm)
    Panel1: TPanel;
    pnStatus: TPanel;
    imgLogo: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
   private
      { Private declarations }

   public
      { Public declarations }
   end;

var
   FrmSplash: TFrmSplash;

implementation

uses FPrincipal, Classe.Global;

{$R *.dfm}

procedure TFrmSplash.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := cafree;
end;

end.
