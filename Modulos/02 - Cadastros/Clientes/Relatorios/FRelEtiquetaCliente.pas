{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

unit FRelEtiquetaCliente;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Db,   ExtCtrls, quickrpt, Qrctrls,
   QRPDFFilt, FireDAC.Comp.Client, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet;

type
   TFrmEtiquetaCliente = class(TForm)
      DB_Clientes: TFDQuery;
      Prever: TQuickRep;
      DetailBand1: TQRBand;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText3: TQRDBText;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmEtiquetaCliente: TFrmEtiquetaCliente;

implementation

uses FPrincipal, FBaseDados, Global,
   FRelClientes, FRelClientesMalaDireta;

{$R *.DFM}

procedure TFrmEtiquetaCliente.FormCreate(Sender: TObject);
begin

   DB_Clientes.Close;
   DB_Clientes.SQL.clear;
   DB_Clientes.SQL.Add(' SELECT * from VIEW_CLIENTES ');
   DB_Clientes.SQL.Add(' WHERE ');
   DB_Clientes.SQL.Add(' CODIGO>0');
   DB_Clientes.SQL.Add(' ');

   If not FrmRelClientesMalaDireta.chkCliente.Checked Then
   Begin
      DB_Clientes.SQL.Add('AND');
      DB_Clientes.SQL.Add('CODIGO='+QuotedStr(strCliente));
   End;

   If not FrmRelClientesMalaDireta.chkVendedor.Checked Then
   Begin
      DB_Clientes.SQL.Add('AND');
      DB_Clientes.SQL.Add('VENDEDOR='+QuotedStr(strVendedor));
   End;

   If not FrmRelClientesMalaDireta.chkCidade.Checked Then
   Begin
      //DB_Clientes.SQL.Add('AND');
      //DB_Clientes.SQL.Add('IDCIDADE='+QuotedStr(sCodCidade));

      DB_Clientes.SQL.Add('AND');
      DB_Clientes.SQL.Add('UPPER(IDCIDADE) LIKE '+QuotedStr('%'+strCidade+'%'));


   End;

   If not FrmRelClientesMalaDireta.chkEstado.Checked Then
   Begin
      DB_Clientes.SQL.Add('AND');
      DB_Clientes.SQL.Add('UF='+QuotedStr(strEstado));
   End;

   DB_Clientes.SQL.Add('ORDER BY ' + strOrdemDados);
   DB_Clientes.Open;

   Prever.Preview;
   Close;

end;

procedure TFrmEtiquetaCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   // DB_Clientes.Close;
   Action := cafree;
end;

end.
