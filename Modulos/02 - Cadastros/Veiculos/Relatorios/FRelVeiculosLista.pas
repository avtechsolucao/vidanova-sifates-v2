{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

unit FRelVeiculosLista;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
     DB, quickrpt, Qrctrls, ExtCtrls,
   QRPDFFilt, FireDAC.Comp.Client, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet;

type
   TFrmRelVeiculosLista = class(TForm)
      QuickRep: TQuickRep;
      EmpresaTitulo: TQRBand;
      QRLabel1: TQRLabel;
      QRLabel3: TQRLabel;
      QRSysData1: TQRSysData;
      QRLabel4: TQRLabel;
      QRSysData2: TQRSysData;
      Datalhes: TQRBand;
      QRDBText5: TQRDBText;
      QRDBText6: TQRDBText;
      QuebraData: TQRGroup;
      TotalData: TQRBand;
      ColumnHeaderBand1: TQRBand;
      QRLabel8: TQRLabel;
      QRLabel20: TQRLabel;
      SummaryBand1: TQRBand;
      db_veiculos: TFDQuery;
      QRLabel9: TQRLabel;
      QRDBText2: TQRDBText;
      QRLabel2: TQRLabel;
      QRDBText1: TQRDBText;
      QRLabel5: TQRLabel;
      QRDBText3: TQRDBText;
      QRLabel7: TQRLabel;
      QRDBText7: TQRDBText;
      QRLabel10: TQRLabel;
      QRDBText8: TQRDBText;
      QRLabel6: TQRLabel;
      QRDBText9: TQRDBText;
      QRLabel11: TQRLabel;
      QRLabel12: TQRLabel;
      QRDBText10: TQRDBText;
      QRDBText11: TQRDBText;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmRelVeiculosLista: TFrmRelVeiculosLista;

implementation

uses FPrincipal, Global, Biblioteca, FRelVeiculos;

{$R *.DFM}

procedure TFrmRelVeiculosLista.FormCreate(Sender: TObject);
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
   sqlMaster := sqlMaster + 'ORDER BY CLIENTE_NOME, NOME, MODELO, PLACA ';

   db_veiculos.Close;
   db_veiculos.SQL.Clear;
   db_veiculos.SQL.Add(sqlMaster);

   if not FrmRelVeiculos.chkCliente.checked then
   Begin
      db_veiculos.ParamByName('CLIENTE').AsString :=
        FrmRelVeiculos.EditCliente.text;
   End;

   if not FrmRelVeiculos.ChkVeiculo.checked then
   Begin
      db_veiculos.ParamByName('CODIGO').AsString :=
        FrmRelVeiculos.EditVeiculo.text;
   End;

   db_veiculos.Open;

   QuickRep.Preview;
   Close;

end;

procedure TFrmRelVeiculosLista.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   db_veiculos.Close;

   Action := caFree;
end;

end.
