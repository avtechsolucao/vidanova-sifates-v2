{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

unit FRelFuncionarioHistoricos;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
     DB, quickrpt, Qrctrls, ExtCtrls,
   QRPDFFilt, FireDAC.Comp.Client, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet;

type
   TFrmRelFuncionarioHistoricos = class(TForm)
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
      QRDBText6: TQRDBText;
      Vlr_Debitox: TQRDBText;
      QuebraData: TQRGroup;
      TotalData: TQRBand;
      ColumnHeaderBand1: TQRBand;
      QRLabel19: TQRLabel;
      QRLabel8: TQRLabel;
      QRLabel20: TQRLabel;
      SummaryBand1: TQRBand;
      QRLabel6: TQRLabel;
      db_CaixaFuncionarios: TFDQuery;
      db_CaixaFuncionariosCODIGO: TIntegerField;
      db_CaixaFuncionariosFUNCIONARIO: TStringField;
      db_CaixaFuncionariosDATA: TSQLTimeStampField;
      db_CaixaFuncionariosVENCIMENTO: TSQLTimeStampField;
      db_CaixaFuncionariosDOCUMENTO: TStringField;
      db_CaixaFuncionariosTIPO: TStringField;
      db_CaixaFuncionariosDEPARTAMENTO: TStringField;
      db_CaixaFuncionariosHISTORICO: TStringField;
      db_CaixaFuncionariosVALOR: TFloatField;
      db_CaixaFuncionariosQUITADO: TStringField;
      db_CaixaFuncionariosNomeFuncionario: TStringField;
      db_Vendedores: TFDQuery;
      QRLabel9: TQRLabel;
      QRDBText2: TQRDBText;
      QRLabel2: TQRLabel;
      QRDBText1: TQRDBText;
      QRLabel5: TQRLabel;
      QRDBText3: TQRDBText;
      QRExpr1: TQRExpr;
      QRExpr2: TQRExpr;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmRelFuncionarioHistoricos: TFrmRelFuncionarioHistoricos;

implementation

uses FPrincipal, Global, FRelMovCaixa, Biblioteca, FRelFuncionarios;

{$R *.DFM}

procedure TFrmRelFuncionarioHistoricos.FormCreate(Sender: TObject);
begin

   sqlMaster := '    SELECT * FROM CAIXA_FUNCIONARIO ';
   sqlMaster := sqlMaster + '  Where ';
   sqlMaster := sqlMaster + '  (DATA >= :Data1 AND DATA <= :Data2) ';

   if not FrmRelFuncionarios.chkPFunc.checked then
   Begin
      sqlMaster := sqlMaster + 'AND FUNCIONARIO=:FUNCIONARIO ';
   End;

   // sqlMaster := sqlMaster+'ORDER BY CONTA, DATAMOVTO';
   sqlMaster := sqlMaster + 'ORDER BY DATA, FUNCIONARIO';

   db_CaixaFuncionarios.Close;
   db_CaixaFuncionarios.SQL.Clear;
   db_CaixaFuncionarios.SQL.Add(sqlMaster);
   db_CaixaFuncionarios.ParamByName('data1').AsDateTime :=
     StrToDate(FrmRelFuncionarios.MskDataIni.text);
   db_CaixaFuncionarios.ParamByName('data2').AsDateTime :=
     StrToDate(FrmRelFuncionarios.MskDataFim.text);

   if not FrmRelFuncionarios.chkPFunc.checked then
   Begin
      db_CaixaFuncionarios.ParamByName('FUNCIONARIO').Value :=
        FrmRelFuncionarios.DCodFunc.text;
   End;

   db_CaixaFuncionarios.Open;

   QuickRep.Preview;
   Close;

end;

procedure TFrmRelFuncionarioHistoricos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   db_CaixaFuncionarios.Close;

   Action := caFree;
end;

end.
