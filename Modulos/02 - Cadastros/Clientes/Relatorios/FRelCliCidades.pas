{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

unit FRelCliCidades;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   ExtCtrls, quickrpt, Qrctrls, Db,  
   QRPDFFilt, FireDAC.Comp.Client, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet;

type
   TFrmRelCliCidades = class(TForm)
      Prever: TQuickRep;
      DetailBand1: TQRBand;
      QRDBText1: TQRDBText;
      QRDBText3: TQRDBText;
      QRDBText4: TQRDBText;
      ColumnHeaderBand1: TQRBand;
      QRLabel1: TQRLabel;
      QRLabel3: TQRLabel;
      QRLabel4: TQRLabel;
      QRGroup1: TQRGroup;
      PageHeaderBand1: TQRBand;
      QRLabel15: TQRLabel;
      QRSysData3: TQRSysData;
      QRLabel16: TQRLabel;
      QRSysData4: TQRSysData;
      QRLabel17: TQRLabel;
      DB_Clientes: TFDQuery;
      SummaryBand1: TQRBand;
      groups: TQRExpr;
      QRLabel2: TQRLabel;
      QRDBText2: TQRDBText;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmRelCliCidades: TFrmRelCliCidades;

implementation

uses Biblioteca, FRelClientes, Global;

{$R *.DFM}

procedure TFrmRelCliCidades.FormCreate(Sender: TObject);
begin

   vSelect := ' SELECT * FROM VIEW_CLIENTES ';
   vSelect := vSelect + ' WHERE ';
   vSelect := vSelect + ' TIPO=' + QuotedStr('CLIENTE');

   IF FrmRelClientes.chkCliente.Checked = False then
   Begin
      vSelect := vSelect + ' AND ';
      vSelect := vSelect + ' CODIGO=:CLIENTE ';
   End;

   IF FrmRelClientes.chkCidades.Checked = False then
   Begin
      vSelect := vSelect + ' AND ';
      vSelect := vSelect + ' CIDADE=:CIDADE ';
   End;

   vSelect := vSelect + ' ORDER BY  CIDADENOME,  NOME ';;

   DB_Clientes.Close;
   DB_Clientes.SQL.clear;
   DB_Clientes.SQL.Add(vSelect);

   IF FrmRelClientes.chkCliente.Checked = False then
      DB_Clientes.ParamByName('CLIENTE').AsString := strCliente;

   IF FrmRelClientes.chkCidades.Checked = False then
      DB_Clientes.ParamByName('CIDADE').AsString := strCidade;

   DB_Clientes.Open;

   Prever.Preview;
   Close;

end;

procedure TFrmRelCliCidades.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   DB_Clientes.Close;
   Action := cafree;

end;

end.
