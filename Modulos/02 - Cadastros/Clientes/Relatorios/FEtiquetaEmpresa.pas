{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

unit FEtiquetaEmpresa;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Db,   ExtCtrls, quickrpt, Qrctrls,
   QRPDFFilt, FireDAC.Comp.Client, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet;

type
   TFrmEtiquetaEmpresa = class(TForm)
      DB_Clientes: TFDQuery;
      Prever: TQuickRep;
      DetailBand1: TQRBand;
      QRDBText1: TQRDBText;
      QRDBText4: TQRDBText;
      QRDBText9: TQRDBText;
      QRDBText10: TQRDBText;
      QRDBText11: TQRDBText;
      QRDBText12: TQRDBText;
      DB_Parametros: TFDQuery;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmEtiquetaEmpresa: TFrmEtiquetaEmpresa;

implementation

uses FPrincipal, FBaseDados, Global,
   FRelClientes, FRelClientesMalaDireta, FRelEtiquetaCliente;

{$R *.DFM}

procedure TFrmEtiquetaEmpresa.FormCreate(Sender: TObject);
begin

   vSelect := 'SELECT * FROM CAD_CLIENTES ';

   If FrmRelClientesMalaDireta.RadioGTipoMala.ItemIndex = 1 then
   begin
      vSelect := vSelect + ' WHERE ';
      vSelect := vSelect + ' ETIQUETA=''S'' ';

      // -----------------------------------------------------------------
      Prever.ReportTitle := 'Mala Direta - seleção manual';
      FrmEtiquetaCliente.Caption := 'Mala Direta - seleção manual';

   end;

   If FrmRelClientesMalaDireta.RadioGTipoMala.ItemIndex = 2 then
   begin
      vSelect := vSelect + ' WHERE ';
      vSelect := vSelect + ' (DATA>=:data1 AND DATA<=:data2) ';

      // -----------------------------------------------------------------
      Prever.ReportTitle := 'Mala Direta - por aniversariantes';
      FrmEtiquetaCliente.Caption := 'Mala Direta - por aniversariantes';

   end;

   If FrmRelClientesMalaDireta.chkCliente.Checked = False then
   Begin
      vSelect := vSelect + ' AND CODIGO=:XCLIENTE ';
   End;

   vSelect := vSelect + ' ORDER BY ' + strOrdemDados;

   DB_Clientes.Close;
   DB_Clientes.SQL.clear;
   DB_Clientes.SQL.Add(vSelect);

   IF FrmRelClientesMalaDireta.chkCliente.Checked = False then
      DB_Clientes.ParamByName('XCLIENTE').value := strCliente;

   DB_Clientes.Open;
   DB_Parametros.Open;

   Prever.Preview;
   Close;

end;

procedure TFrmEtiquetaEmpresa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   DB_Clientes.Close;
   DB_Parametros.Close;
   Action := cafree;
end;

end.
