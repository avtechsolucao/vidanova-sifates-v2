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
unit FStatusNFe;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, ExtCtrls, FFrameBarra;

type
   TFrmStatusNFe = class(TForm)
      Panel1: TPanel;
      FrmFrameBarra1: TFrmFrameBarra;
      lblStatus: TPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);

   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmStatusNFe: TFrmStatusNFe;

implementation

{$R *.dfm}

procedure TFrmStatusNFe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TFrmStatusNFe.FormDestroy(Sender: TObject);
begin
  FrmStatusNFe := nil;
end;

end.
