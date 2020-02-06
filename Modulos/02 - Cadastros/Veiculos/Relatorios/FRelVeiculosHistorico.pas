{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

unit FRelVeiculosHistorico;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
     DB, quickrpt, Qrctrls, ExtCtrls,
   QRPDFFilt, FireDAC.Comp.Client, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet;

type
   TFrmRelVeiculosHistorico = class(TForm)
      QuickRep: TQuickRep;
      EmpresaTitulo: TQRBand;
      QRLabel1: TQRLabel;
      QRLabel3: TQRLabel;
      QRSysData1: TQRSysData;
      QRLabel4: TQRLabel;
      QRSysData2: TQRSysData;
      Datalhes: TQRBand;
      QRDBText4: TQRDBText;
      QRDBText5: TQRDBText;
      QRDBText3: TQRDBText;
      QRDBText10: TQRDBText;
      QRDBText11: TQRDBText;
      QuebraData: TQRGroup;
      QRLabel9: TQRLabel;
      QRDBText2: TQRDBText;
      TotalData: TQRBand;
      ColumnHeaderBand1: TQRBand;
      QRLabel19: TQRLabel;
      QRLabel8: TQRLabel;
      QRLabel5: TQRLabel;
      QRLabel11: TQRLabel;
      QRLabel12: TQRLabel;
      SummaryBand1: TQRBand;
      db_veiculos: TFDQuery;
      QRExpr1: TQRExpr;
      QRExpr2: TQRExpr;
      QRExpr3: TQRExpr;
      QRExpr4: TQRExpr;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmRelVeiculosHistorico: TFrmRelVeiculosHistorico;

implementation

uses FPrincipal, Global, FRelMovCaixa, Biblioteca, FRelFuncionarios,
   FRelVeiculos;

{$R *.DFM}

procedure TFrmRelVeiculosHistorico.FormCreate(Sender: TObject);
begin


   sqlMaster := ' SELECT * FROM VIEW_VEICULO ';
   sqlMaster := sqlMaster + ' WHERE ';
   sqlMaster := sqlMaster + ' CLIENTE>0 ';
   if not FrmRelVeiculos.chkCliente.checked then
   Begin
      sqlMaster := sqlMaster + 'AND CLIENTE=:CLIENTE ';
   End;

   if not FrmRelVeiculos.ChkVeiculo.checked then
   Begin
      sqlMaster := sqlMaster + 'AND CODIGO=:CODIGO ';
   End;

   // sqlMaster := sqlMaster+'ORDER BY CONTA, DATAMOVTO';
   sqlMaster := sqlMaster + 'ORDER BY VEICULO, DATA, COD_CLIENTE ';

   db_veiculos.Close;
   db_veiculos.SQL.Clear;
   db_veiculos.SQL.Add(sqlMaster);

   if not FrmRelVeiculos.chkCliente.checked then
   Begin
      db_veiculos.ParamByName('CLIENTE').Value := strCliente;
   End;

   db_veiculos.Open;

   QuickRep.Preview;
   Close;

end;

procedure TFrmRelVeiculosHistorico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   db_veiculos.Close;

   Action := caFree;
end;

end.
