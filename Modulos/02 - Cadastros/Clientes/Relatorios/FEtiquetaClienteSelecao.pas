{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

unit FEtiquetaClienteSelecao;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Db,   ExtCtrls, quickrpt, Qrctrls,
   QRPDFFilt, FireDAC.Comp.Client, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet;

type
   TFrmEtiquetaClienteSelecao = class(TForm)
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
   FrmEtiquetaClienteSelecao: TFrmEtiquetaClienteSelecao;

implementation

uses FPrincipal, FBaseDados, Global,
   FRelClientes, FRelClientesMalaDireta;

{$R *.DFM}

procedure TFrmEtiquetaClienteSelecao.FormCreate(Sender: TObject);
begin

   DB_Clientes.Close;
   DB_Clientes.SQL.clear;
   DB_Clientes.SQL.Add(' SELECT * from VIEW_CLIENTES ');
   DB_Clientes.SQL.Add(' WHERE ');
   DB_Clientes.SQL.Add(' CODIGO>0');
   DB_Clientes.SQL.Add(' AND ');
   DB_Clientes.SQL.Add(' ETIQUETA=' + QuotedStr('S') );
   DB_Clientes.SQL.Add('ORDER BY ' + strOrdemDados);
   DB_Clientes.open;


   Prever.Preview;
   Close;

end;

procedure TFrmEtiquetaClienteSelecao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   DB_Clientes.Close;
   Action := cafree;
end;

end.
