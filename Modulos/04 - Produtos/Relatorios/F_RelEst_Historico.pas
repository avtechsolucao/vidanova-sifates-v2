﻿{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

unit F_RelEst_Historico;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, DB, QRCtrls, QuickRpt, ExtCtrls,
   QRPDFFilt,  Classe.Global, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
   TFrm_RelEst_Historico = class(TForm)
      QuickRep: TQuickRep;
      EmpresaTitulo: TQRBand;
      QRLabel1: TQRLabel;
      QRLabel3: TQRLabel;
      QRSysData1: TQRSysData;
      QRLabel4: TQRLabel;
      QRSysData2: TQRSysData;
      Cabecalho: TQRBand;
      QRLabel5: TQRLabel;
      QRLabel6: TQRLabel;
      QRLabel14: TQRLabel;
      QRLabel7: TQRLabel;
      Datalhes: TQRBand;
      QRDBText2: TQRDBText;
      QRDBText4: TQRDBText;
      QRDBText5: TQRDBText;
      QRDBText11: TQRDBText;
      QuebraProduto: TQRGroup;
      QRLabel15: TQRLabel;
      QRDBText13: TQRDBText;
      TotalProduto: TQRBand;
      QRExpr5: TQRExpr;
      SummaryBand1: TQRBand;
      QRExpr10: TQRExpr;
      QRLabel16: TQRLabel;
      DB_ESTOQUE: TFDQuery;
      QRLabel2: TQRLabel;
      QRDBText1: TQRDBText;
      QRExpr1: TQRExpr;
      QRExpr2: TQRExpr;
      QRExpr3: TQRExpr;
      QRExpr4: TQRExpr;
      QRLabel9: TQRLabel;
      QRLabel10: TQRLabel;
      QRLabel11: TQRLabel;
      QRDBText6: TQRDBText;
      QRDBText7: TQRDBText;
      QRDBText8: TQRDBText;
      QRExpr6: TQRExpr;
      QRExpr7: TQRExpr;
      QRLabel12: TQRLabel;
      QRLabel13: TQRLabel;
      LblComparativo: TQRLabel;
      LblComparativoTotal: TQRLabel;
      LblTotal: TQRLabel;
      LblPrcCusto: TQRLabel;
      LblPrcCustoTotal: TQRLabel;
      LblCustoTotal: TQRLabel;
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormCreate(Sender: TObject);
      procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
        var PrintReport: Boolean);
      procedure DatalhesBeforePrint(Sender: TQRCustomBand;
        var PrintBand: Boolean);
    procedure DB_ESTOQUEBeforeOpen(DataSet: TDataSet);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   Frm_RelEst_Historico: TFrm_RelEst_Historico;

implementation

uses FRelEstoque, Global, Biblioteca;

{$R *.dfm}

procedure TFrm_RelEst_Historico.DB_ESTOQUEBeforeOpen(DataSet: TDataSet);
begin
   DB_ESTOQUE.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;

end;

procedure TFrm_RelEst_Historico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := Cafree;
end;

procedure TFrm_RelEst_Historico.FormCreate(Sender: TObject);
begin

   CodIni := FrmRelEstoque.EditProdutoInicio.Text;
   CodFim := FrmRelEstoque.EditProdutoFim.Text;

   if empty(CodFim) then
      CodFim := 'ZZZZZZZZZZZZZZZZZZ';

   // montar script da tabela Mestre
   sqlMaster := '';
   sqlMaster := sqlMaster + ' SELECT * FROM VIEW_ESTOQUE_MATERIAIS ';
   sqlMaster := sqlMaster + ' WHERE ';
   sqlMaster := sqlMaster + ' EMPRESA=:EMPRESA ';
   sqlMaster := sqlMaster + ' AND ';

   if not FrmRelEstoque.chkFornecedor.Checked then
   Begin
      sqlMaster := sqlMaster + ' FORNECEDOR=:fornecedor01 ';
      sqlMaster := sqlMaster + ' AND ';
   End;

   if not FrmRelEstoque.ChkTipoProduto.Checked then
   Begin
      sqlMaster := sqlMaster + '  TIPO_PRODUTO=:TIPOPRODUTO ';
      sqlMaster := sqlMaster + ' AND ';
   End;

   if not FrmRelEstoque.chkgrupos.Checked then
   Begin
      sqlMaster := sqlMaster + ' GRUPO=:grupo01 ';
      sqlMaster := sqlMaster + ' AND ';
   End;

   If (empty(CodIni) = false) or (empty(CodFim) = false) then
   Begin
      sqlMaster := sqlMaster +
        ' REFERENCIA>=:produto1 AND  REFERENCIA<=:produto2 ';
   end;

   sqlMaster := sqlMaster + ' ORDER BY ' + strOrdemDados;

   DB_ESTOQUE.close;
   DB_ESTOQUE.sql.clear;
   DB_ESTOQUE.sql.add(sqlMaster);
   if not FrmRelEstoque.chkFornecedor.Checked then
      DB_ESTOQUE.ParamByName('fornecedor01').Value := strFornecedor;

   if not FrmRelEstoque.ChkTipoProduto.Checked then
      DB_ESTOQUE.ParamByName('TIPOPRODUTO').AsString := FrmRelEstoque.db_TipoProduto.FieldByName('CODIGO').AsString;

   if not FrmRelEstoque.chkgrupos.Checked then
      DB_ESTOQUE.ParamByName('grupo01').Value := strGrupo;

   If (empty(CodIni) = false) or (empty(CodFim) = false) then
   Begin
      DB_ESTOQUE.ParamByName('produto1').Value := CodIni;
      DB_ESTOQUE.ParamByName('produto2').Value := CodFim;
   end;

   DB_ESTOQUE.open;

   QuickRep.Preview;
   close;

end;

procedure TFrm_RelEst_Historico.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin

   LblComparativo.CAPTION := '0,00';
   LblComparativoTotal.CAPTION := '0,00';

   wFloat[0] := 0;
   wFloat[1] := 0;

   wFloat[90] := 0;
   wFloat[91] := 0;

end;

procedure TFrm_RelEst_Historico.DatalhesBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin

   wFloat[0] := DB_ESTOQUE.FieldByName('ESTOQUE_QTDE').AsFloat *
     DB_ESTOQUE.FieldByName('PRC_VENDA').AsFloat;
   wFloat[1] := wFloat[1] + wFloat[0];

   wFloat[90] := DB_ESTOQUE.FieldByName('ESTOQUE_QTDE').AsFloat *
     DB_ESTOQUE.FieldByName('PRC_CUSTO').AsFloat;
   wFloat[91] := wFloat[91] + wFloat[90];

   LblComparativo.CAPTION := FormatFloat('###,##0.00', wFloat[0]);
   LblComparativoTotal.CAPTION := FormatFloat('###,##0.00', wFloat[1]);
   LblTotal.CAPTION := LblComparativoTotal.CAPTION;

   LblPrcCusto.CAPTION := FormatFloat('###,##0.00', wFloat[90]);
   LblPrcCustoTotal.CAPTION := FormatFloat('###,##0.00', wFloat[91]);
   LblCustoTotal.CAPTION := LblPrcCustoTotal.CAPTION;

end;

end.


