{***********************************************************************************
**  SISTEMA...............: Vida Nova Gest�o de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  C�digo pertencente ao cliente sob prote��o autoral.                           ****  N�o comercializ�vel sem pr�via autoriza��o do mesmo.                          **
***********************************************************************************}

unit FReciboImprimir;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, QRCtrls, QuickRpt, ExtCtrls, ACBrBase, QRPDFFilt;

type
   TFrmReciboImprimir = class(TForm)
      QuickRep: TQuickRep;
      DetailBand1: TQRBand;
      t18: TQRShape;
      QRShape1: TQRShape;
      QRLabel1: TQRLabel;
      QRLabel8: TQRLabel;
      QRLabel2: TQRLabel;
      QRLabel4: TQRLabel;
      QRLabel5: TQRLabel;
      QRLabel6: TQRLabel;
      Ass_Linha1: TQRLabel;
      QRLabel50: TQRLabel;
      linha: TQRLabel;
      t2: TQRLabel;
      QRDBText1: TQRDBText;
      QRDBText2: TQRDBText;
      QRDBText4: TQRDBText;
      QRDBText5: TQRDBText;
      QRDBText6: TQRDBText;
      QRDBText7: TQRDBText;
      QRLabel7: TQRLabel;
      QRLabel10: TQRLabel;
      QRLabel11: TQRLabel;
      QRLabel12: TQRLabel;
      QRLabel13: TQRLabel;
      QRLabel14: TQRLabel;
      QRLabel15: TQRLabel;
      Ass_Linha2: TQRLabel;
      QRDBText10: TQRDBText;
      QRDBText11: TQRDBText;
      QRDBText13: TQRDBText;
      Assinatura1: TQRDBText;
      Assinatura2: TQRDBText;
      Nome1: TQRDBText;
      Nome2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormCreate(Sender: TObject);
      procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
        var PrintReport: Boolean);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmReciboImprimir: TFrmReciboImprimir;

implementation

uses FCtaReceber, FPrincipal, FRecibo, FBaseDados;

{$R *.dfm}

procedure TFrmReciboImprimir.FormCreate(Sender: TObject);
begin

   QuickRep.Preview;
   Close;

end;

procedure TFrmReciboImprimir.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := cafree;
end;

procedure TFrmReciboImprimir.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin

   If FrmRecibo.db_recibo.FieldByName('TIPO').AsString = 'D' Then
   begin
      // 1� VIA
      Assinatura1.Left := 45;
      Assinatura1.Top := 128;
      Assinatura1.Alignment := taLeftJustify;

      Nome1.Left := Ass_Linha1.Left + 110;
      Nome1.Top := 407;

      Nome1.Font.Name := 'Arial';
      Nome1.Font.Size := 8;
      Nome1.Alignment := taCenter;

      // 2� VIA
      Assinatura2.Left := 45;
      Assinatura2.Top := 696;
      Assinatura2.Alignment := taLeftJustify;

      Nome2.Left := Ass_Linha2.Left + 110;
      Nome2.Top := 973;

      Nome2.Font.Name := 'Arial';
      Nome2.Font.Size := 8;
      Nome2.Alignment := taCenter;

   end;

end;

end.
