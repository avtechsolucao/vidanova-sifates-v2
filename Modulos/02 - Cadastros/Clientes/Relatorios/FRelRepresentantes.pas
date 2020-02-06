{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

unit FRelRepresentantes;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   ExtCtrls, quickrpt, Qrctrls, Db,  
   QRPDFFilt, FireDAC.Comp.Client, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet;

type
   TFrmRelRepresentantes = class(TForm)
      Prever: TQuickRep;
      DetailBand1: TQRBand;
      QRDBText4: TQRDBText;
      QRDBText2: TQRDBText;
      QRDBText3: TQRDBText;
      QRDBText1: TQRDBText;
      ColumnHeaderBand1: TQRBand;
      QRLabel4: TQRLabel;
      QRLabel2: TQRLabel;
      QRLabel3: TQRLabel;
      QRLabel1: TQRLabel;
      QRGroup1: TQRGroup;
      PageHeaderBand1: TQRBand;
      QRLabel15: TQRLabel;
      QRLabel17: TQRLabel;
      QRSysData4: TQRSysData;
      QRLabel16: TQRLabel;
      QRSysData3: TQRSysData;
      SummaryBand1: TQRBand;
      ADO_Clientes: TFDQuery;
      QRLabel7: TQRLabel;
      QRDBText7: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText6: TQRDBText;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmRelRepresentantes: TFrmRelRepresentantes;

implementation

uses Biblioteca, FRelClientes, Global;

{$R *.DFM}

procedure TFrmRelRepresentantes.FormCreate(Sender: TObject);
begin

   ADO_Clientes.Close;
   ADO_Clientes.SQL.clear;
   ADO_Clientes.SQL.Add(' SELECT * FROM VIEW_CLIENTES');
   ADO_Clientes.SQL.Add('WHERE');
   ADO_Clientes.SQL.Add('TIPO=' + QuotedStr('CLIENTE') );
   ADO_Clientes.SQL.Add('');

   IF FrmRelClientes.chkCliente.Checked = False then
   Begin
      ADO_Clientes.SQL.Add('AND CODIGO=:CLIENTE');
   End;

   IF FrmRelClientes.chkRepres.Checked = False then
   Begin
      ADO_Clientes.SQL.Add('AND VENDEDOR=:VENDEDOR ');
   End;

   ADO_Clientes.SQL.Add(' ORDER BY  ' + strOrdemDados);


   IF FrmRelClientes.chkCliente.Checked = False then
      ADO_Clientes.ParamByName('CLIENTE').AsString := strCliente;

   IF FrmRelClientes.chkRepres.Checked = False then
      ADO_Clientes.ParamByName('VENDEDOR').AsString := strVendedor;

   ADO_Clientes.Open;

   Prever.Preview;
   Close;

end;

procedure TFrmRelRepresentantes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   ADO_Clientes.Close;
   Action := cafree;

end;

end.
