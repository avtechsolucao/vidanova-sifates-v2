{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

unit FImprimeCarta;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, ExtCtrls, QuickRpt, QRCtrls, QRPDFFilt;

type
   TFrmImprimeCarta = class(TForm)
      QuickRep1: TQuickRep;
      TitleBand1: TQRBand;
      PageFooterBand1: TQRBand;
      QRDBText1: TQRDBText;
      QRDBText18: TQRDBText;
      PageHeaderBand1: TQRBand;
      QRDBImage1: TQRDBImage;
      QRLabel3: TQRLabel;
      QRSysData2: TQRSysData;
      QRLabel1: TQRLabel;
      QRDBText2: TQRDBText;
      QRPDFFilter1: TQRPDFFilter;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmImprimeCarta: TFrmImprimeCarta;

implementation

uses FCad_CartaCobranca, FBaseDados;

{$R *.dfm}

procedure TFrmImprimeCarta.FormCreate(Sender: TObject);
begin
   QuickRep1.Preview;
   close;
end;

procedure TFrmImprimeCarta.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := Cafree;
end;

end.
