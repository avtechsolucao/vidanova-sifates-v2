{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

unit FRelCliBloqueados;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   ExtCtrls, quickrpt, Qrctrls, Db,  
   QRPDFFilt, FireDAC.Comp.Client, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet;

type
   TFrmRelCliBloqueados = class(TForm)
      Prever: TQuickRep;
      DetailBand1: TQRBand;
      ColumnHeaderBand1: TQRBand;
      QRGroup1: TQRGroup;
      QRExpr1: TQRExpr;
      PageHeaderBand1: TQRBand;
      ADO_Clientes: TFDQuery;
      QRLabel15: TQRLabel;
      QRLabel17: TQRLabel;
      QRSysData4: TQRSysData;
      QRLabel16: TQRLabel;
      QRSysData3: TQRSysData;
      QRDBText4: TQRDBText;
      QRDBText2: TQRDBText;
      QRDBText3: TQRDBText;
      QRDBText1: TQRDBText;
      QRLabel4: TQRLabel;
      QRLabel2: TQRLabel;
      QRLabel3: TQRLabel;
      QRLabel1: TQRLabel;
      SummaryBand1: TQRBand;
      QRLabel5: TQRLabel;
      QRDBText5: TQRDBText;
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
   FrmRelCliBloqueados: TFrmRelCliBloqueados;

implementation

uses Biblioteca, FRelClientes, FPrincipal,
   Global;

{$R *.DFM}

procedure TFrmRelCliBloqueados.FormCreate(Sender: TObject);
begin

   vSelect := ' SELECT * FROM VIEW_CLIENTES   ';
   vSelect := vSelect + ' WHERE  ';
   vSelect := vSelect + ' TIPO=' + QuotedStr('CLIENTE');
   vSelect := vSelect + ' AND ';
   vSelect := vSelect + ' BLOQUEADO=''S'' ';

   IF FrmRelClientes.chkCliente.Checked = False then
   Begin
      vSelect := vSelect + ' AND CODIGO=:CLIENTE ';
   End;

   vSelect := vSelect + ' ORDER BY NOME ';;

   ADO_Clientes.Close;
   ADO_Clientes.SQL.clear;
   ADO_Clientes.SQL.Add(vSelect);

   IF FrmRelClientes.chkCliente.Checked = False then
      ADO_Clientes.ParamByName('CLIENTE').AsString := strCliente;

   ADO_Clientes.Open;

   Prever.Preview;
   Close;

end;

procedure TFrmRelCliBloqueados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   ADO_Clientes.Close;
   Action := cafree;

end;

end.
