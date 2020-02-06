{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

unit FRelReceb_Vencidas;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   ExtCtrls, quickrpt, Qrctrls, Db,   QRPrntr, QRExport,
   StdCtrls, QRPDFFilt,  Classe.Global, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
   TFrmRelReceb_Vencidas = class(TForm)
      QuickRep: TQuickRep;
      PageHeaderBand1: TQRBand;
      QRLabel2: TQRLabel;
      QRSysData2: TQRSysData;
      QRLabel31: TQRLabel;
      QRSysData1: TQRSysData;
      QRLabel10: TQRLabel;
      Datalhes: TQRBand;
      QRDBText3: TQRDBText;
      QRDBText4: TQRDBText;
      QRDBText9: TQRDBText;
      QuebraBanco: TQRGroup;
      Cabecalho: TQRBand;
      QRLabel9: TQRLabel;
      QRLabel1: TQRLabel;
      QRLabel12: TQRLabel;
      TotalOperacao: TQRBand;
      QRLabel4: TQRLabel;
      QRExpr4: TQRExpr;
      SummaryBand1: TQRBand;
      QRExpr6: TQRExpr;
      ADO_CtaReceber: TFDQuery;
      QRLabel5: TQRLabel;
      QRLabel7: TQRLabel;
      QRDBText7: TQRDBText;
      Lblvendedor: TQRLabel;
      QRDBText5: TQRDBText;
      QRLabel8: TQRLabel;
      QRLabel13: TQRLabel;
      QRDBText10: TQRDBText;
      QRDBText2: TQRDBText;
      QRLabel3: TQRLabel;
      QRDBText6: TQRDBText;
      QRLabel11: TQRLabel;
      QRDBText1: TQRDBText;
      LblRestricao: TQRLabel;
      QRLabel6: TQRLabel;
      QRDBText8: TQRDBText;
      QRLabel14: TQRLabel;
      QRDBText11: TQRDBText;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
        var PrintReport: Boolean);
    procedure ADO_CtaReceberBeforeOpen(DataSet: TDataSet);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmRelReceb_Vencidas: TFrmRelReceb_Vencidas;

implementation

uses Biblioteca, Global, FRelCtaReceber, FPrincipal;

{$R *.DFM}

procedure TFrmRelReceb_Vencidas.FormCreate(Sender: TObject);
begin

   if FrmRelCtaReceber.rRestricao.ItemIndex = 0 then
   Begin
      LblRestricao.Caption := 'Restrição Ignorada';
   End;

   if FrmRelCtaReceber.rRestricao.ItemIndex = 1 then
   Begin
      LblRestricao.Caption := 'Com Crédito Bloqueado';
   End;

   if FrmRelCtaReceber.rRestricao.ItemIndex = 2 then
   Begin
      LblRestricao.Caption := 'Com Crédito Liberado';
   End;

   vSelect := '         SELECT * FROM VIEW_ATRASOS  ';
   vSelect := vSelect + ' WHERE  ';
   vSelect := vSelect + ' EMPRESA=:EMPRESA  ';
   vSelect := vSelect + ' AND  ';
   vSelect := vSelect + ' RESTRICAO LIKE  :RESTRICAO  ';
   vSelect := vSelect + ' AND  ';
   vSelect := vSelect + strBorderos;
   vSelect := vSelect + ' AND  ';

   if FrmRelCtaReceber.rAgrupar.ItemIndex=0 then
      vSelect := vSelect + ' (VENCIMENTO>=:data1 AND VENCIMENTO<=:data2) ';

   if FrmRelCtaReceber.rAgrupar.ItemIndex=1 then
      vSelect := vSelect + ' (DATA>=:data1 AND DATA<=:data2) ';

   if FrmRelCtaReceber.rAgrupar.ItemIndex=2 then
      vSelect := vSelect + ' (DATA_PAGTO>=:data1 AND DATA_PAGTO<=:data2) ';


   If FrmRelCtaReceber.chkClientes.Checked = False Then
   Begin
      vSelect := vSelect + ' AND   ';
      vSelect := vSelect + ' CLIENTE=''' + strCliente + ''' ';
   End;

   if not FrmRelCtaReceber.chkRepres.Checked then
   Begin
      vSelect := vSelect + ' AND ';
      vSelect := vSelect + ' VENDEDOR=:vendedor01 ';
   End;

   if not FrmRelCtaReceber.chkContaCaixa.Checked then
   Begin
      vSelect := vSelect + ' AND ';
      vSelect := vSelect + ' CONTACAIXA=' + (strContaCaixa);
   End;

   if not FrmRelCtaReceber.chkCarteira.Checked then
   Begin
      vSelect := vSelect + ' AND ';
      vSelect := vSelect + ' CARTEIRA=' + (strCarteira);
   End;


   if not FrmRelCtaReceber.chkContaBancaria.Checked then
   Begin
      vSelect := vSelect + ' AND ';
      vSelect := vSelect + ' CONTACORRENTE='+strContaCorrente;
   End;

   if not FrmRelCtaReceber.chkFormaPagto.Checked then
   Begin
      vSelect := vSelect + ' AND ';
      vSelect := vSelect + ' FORMAPAGAMENTO='+strFormaPagamento;
   End;



   if not FrmRelCtaReceber.chkTipoDocumento.Checked then
   Begin
      vSelect := vSelect + ' AND ';
      vSelect := vSelect + ' ESPECIE='+QuotedStr(strTipoDocumento);
   End;

   vSelect := vSelect + ' ORDER BY ' + strOrdemDados;

   ADO_CtaReceber.close;
   ADO_CtaReceber.SQL.clear;
   ADO_CtaReceber.SQL.Add(vSelect);

   ADO_CtaReceber.ParamByName('data1').AsDateTime := dtDataIni;
   ADO_CtaReceber.ParamByName('data2').AsDateTime := dtDataFim;
   ADO_CtaReceber.ParamByName('RESTRICAO').AsString := strRestricaoCredito;

   If not FrmRelCtaReceber.chkRepres.Checked then
   Begin
      Lblvendedor.Enabled := true;
      ADO_CtaReceber.ParamByName('vendedor01').Value := strVendedor;
   End;

   ADO_CtaReceber.open;

   QuebraBanco.Expression := 'ADO_CtaReceber.' + Agrupar;
   QuickRep.Preview;
   close;

end;

procedure TFrmRelReceb_Vencidas.ADO_CtaReceberBeforeOpen(DataSet: TDataSet);
begin
   ADO_CtaReceber.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;

end;

procedure TFrmRelReceb_Vencidas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   ADO_CtaReceber.close;

   Action := caFree;

end;

procedure TFrmRelReceb_Vencidas.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
   // Lblvendedor.Caption:='Representante: '+sCodVendedor+'-'+ADO_CtaReceber.FieldByName('NOMEVEND').AsString;
end;

end.
