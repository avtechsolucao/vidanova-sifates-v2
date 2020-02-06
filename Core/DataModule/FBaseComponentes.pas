{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

unit fBaseComponentes;

interface

uses
  SysUtils, Classes, frxExportPDF, frxDMPExport, frxOLE, frxDesgn, frxCross,
  frxRich, frxBarcode, frxExportText, frxExportImage, frxExportHTML,
  frxExportXLS, frxExportMail, frxClass, frxExportRTF, frxExportBaseDialog;

type
  TdmBaseComponentes = class(TDataModule)
    frxRTFExport1: TfrxRTFExport;
    frxMailExport1: TfrxMailExport;
    frxXLSExport1: TfrxXLSExport;
    frxHTMLExport1: TfrxHTMLExport;
    frxJPEGExport1: TfrxJPEGExport;
    frxBMPExport1: TfrxBMPExport;
    frxSimpleTextExport1: TfrxSimpleTextExport;
    frxBarCodeObject1: TfrxBarCodeObject;
    frxRichObject1: TfrxRichObject;
    frxCrossObject1: TfrxCrossObject;
    frxDesigner1: TfrxDesigner;
    frxOLEObject1: TfrxOLEObject;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    frxPDFExport1: TfrxPDFExport;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmBaseComponentes: TdmBaseComponentes;

implementation

{$R *.dfm}

uses App.Constantes;

procedure TdmBaseComponentes.DataModuleCreate(Sender: TObject);
begin
  frxMailExport1.defaultpath :=_PASTALOG;
  frxMailExport1.LogFile     :=_LOGMAIL;
end;

end.
