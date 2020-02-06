{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

unit FCartaEmitirImprimir;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
   TFrmCartaEmitirImprimir = class(TForm)
      AreaImpressao: TQuickRep;
      TitleBand1: TQRBand;
      QRDBText2: TQRDBText;
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormCreate(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmCartaEmitirImprimir: TFrmCartaEmitirImprimir;

implementation

uses FCartaEmitir;

{$R *.dfm}

procedure TFrmCartaEmitirImprimir.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := cafree;
end;

procedure TFrmCartaEmitirImprimir.FormCreate(Sender: TObject);
begin
   AreaImpressao.Preview;
   close;
end;

end.
