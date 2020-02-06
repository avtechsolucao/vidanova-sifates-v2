{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

unit FRelReceb_CobAgendadas;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   ExtCtrls, Db,   Qrctrls, QuickRpt, QRPrntr, QRExport,
   StdCtrls, QRPDFFilt, FireDAC.Comp.Client, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet;

type
   TFrmRelReceb_CobAgendadas = class(TForm)
      PageHeaderBand1: TQRBand;
      QRLabel2: TQRLabel;
      QRSysData2: TQRSysData;
      QRLabel31: TQRLabel;
      QRSysData1: TQRSysData;
      Datalhes: TQRBand;
      QRDBText3: TQRDBText;
      Cabecalho: TQRBand;
      QRLabel9: TQRLabel;
      SummaryBand1: TQRBand;
      ADO_CobAgendada: TFDQuery;
      QRLabel6: TQRLabel;
      QRLabel7: TQRLabel;
      QRDBText6: TQRDBText;
      QRDBText7: TQRDBText;
      QRLabel10: TQRLabel;
      QuickRep: TQuickRep;
      PageFooterBand1: TQRBand;
      QRDBText8: TQRDBText;
      QRLabel18: TQRLabel;
      QRDBText4: TQRDBText;
      QRLabel21: TQRLabel;
      QRLabel1: TQRLabel;
      QRDBText1: TQRDBText;
      QRDBText2: TQRDBText;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
   private
      { Private declarations }

      xFlutuante, xFlutuante1, xFlutuante2: Real;

   public
      { Public declarations }
   end;

var
   FrmRelReceb_CobAgendadas: TFrmRelReceb_CobAgendadas;

implementation

uses Biblioteca, FRelCtaReceber, Global, FPrincipal, FBaseDados;

{$R *.DFM}

procedure TFrmRelReceb_CobAgendadas.FormCreate(Sender: TObject);
begin


   vSelect := '         SELECT A.*, B.CODIGO, B.NOME, B.FONE ';
   vSelect := vSelect + ' FROM COB_AGENDAR A, CAD_CLIENTES B ';
   vSelect := vSelect + ' WHERE  ';
   vSelect := vSelect + ' B.CODIGO=A.CLIENTE  ';
   vSelect := vSelect + ' AND  ';
   vSelect := vSelect + ' A.DTCONTATO>=:DATA1 AND A.DTCONTATO<=:DATA2   ';
   If FrmRelCtaReceber.chkClientes.Checked = False Then
   Begin
      vSelect := vSelect + ' AND A.CLIENTE=:XCLIENTE';
   End;

   ADO_CobAgendada.close;
   ADO_CobAgendada.SQL.clear;
   ADO_CobAgendada.SQL.Add(vSelect);

   ADO_CobAgendada.ParamByName('DATA1').AsDateTime := dtDataIni;
   ADO_CobAgendada.ParamByName('DATA2').AsDateTime := dtDataFim;
   If FrmRelCtaReceber.chkClientes.Checked = False Then
      ADO_CobAgendada.ParamByName('XCLIENTE').value := strCliente;
   ADO_CobAgendada.open;

   QuickRep.Preview;
   close;

end;

procedure TFrmRelReceb_CobAgendadas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   ADO_CobAgendada.close;

   Action := caFree;

end;

end.
