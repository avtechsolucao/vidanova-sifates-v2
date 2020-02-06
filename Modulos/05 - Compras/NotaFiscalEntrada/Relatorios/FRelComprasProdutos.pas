{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

unit FRelComprasProdutos;

interface

uses
   SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
   Forms, Dialogs,   DB, Qrctrls, quickrpt,
   ExtCtrls, QRExport, QRPDFFilt, FireDAC.Comp.Client, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet;

type
   TFrmRelComprasProdutos = class(TForm)
      QuickRep: TQuickRep;
      EmpresaTitulo: TQRBand;
      QRLabel1: TQRLabel;
      QRLabel3: TQRLabel;
      QRSysData1: TQRSysData;
      QRLabel4: TQRLabel;
      QRSysData2: TQRSysData;
      Cabecalho: TQRBand;
      QRLabel2: TQRLabel;
      Datalhes: TQRBand;
      QRDBText2: TQRDBText;
      QRLabel5: TQRLabel;
      QRDBText4: TQRDBText;
      QRLabel6: TQRLabel;
      QRDBText5: TQRDBText;
      QRLabel8: TQRLabel;
      QRDBText6: TQRDBText;
      QRLabel10: TQRLabel;
      QRDBText7: TQRDBText;
      QRLabel11: TQRLabel;
      QRDBText8: TQRDBText;
      QRLabel12: TQRLabel;
      QRDBText9: TQRDBText;
      QRLabel13: TQRLabel;
      QRDBText10: TQRDBText;
      QRLabel14: TQRLabel;
      QRDBText11: TQRDBText;
      QuebraProduto: TQRGroup;
      QRLabel15: TQRLabel;
      QRDBText12: TQRDBText;
      QRDBText13: TQRDBText;
      TotalProduto: TQRBand;
      QRExpr1: TQRExpr;
      QRExpr2: TQRExpr;
      QRExpr3: TQRExpr;
      QRExpr4: TQRExpr;
      QRExpr5: TQRExpr;
      QRShape5: TQRShape;
      SummaryBand1: TQRBand;
      QRExpr6: TQRExpr;
      QRExpr7: TQRExpr;
      QRExpr8: TQRExpr;
      QRExpr9: TQRExpr;
      QRExpr10: TQRExpr;
      QRLabel16: TQRLabel;
      DS_ComprasItens: TDataSource;
      Ado_ComprasItens: TFDQuery;
      Ado_ComprasItensCODIGO: TStringField;
      Ado_ComprasItensNRO_NOTA: TStringField;
      Ado_ComprasItensSERIE_NF: TStringField;
      Ado_ComprasItensFORNECEDOR: TStringField;
      Ado_ComprasItensDT_NOTAF: TSQLTimeStampField;
      Ado_ComprasItensCOD_PRODUTO: TStringField;
      Ado_ComprasItensCOD_SITTRIB: TStringField;
      Ado_ComprasItensQUANTIDADE: TFloatField;
      Ado_ComprasItensVL_UNITARIO: TFloatField;
      Ado_ComprasItensPERC_ICMS: TFloatField;
      Ado_ComprasItensREDU_ICMS: TFloatField;
      Ado_ComprasItensVL_ICMS: TFloatField;
      Ado_ComprasItensPERC_DESC: TFloatField;
      Ado_ComprasItensVL_DESC: TFloatField;
      Ado_ComprasItensPERC_IPI: TFloatField;
      Ado_ComprasItensVL_IPI: TFloatField;
      Ado_ComprasItensVL_TOTAL: TFloatField;
      Ado_ComprasItensDESCRICAO: TStringField;
      Ado_ComprasItensCODIGO_1: TStringField;
      Ado_ComprasItensNOME: TStringField;
      ADO_PRODUTOS: TFDQuery;
      QRExpr11: TQRExpr;
      QRExpr12: TQRExpr;
      Ado_ComprasItensUND: TStringField;
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormCreate(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmRelComprasProdutos: TFrmRelComprasProdutos;

implementation

uses FRelCompras, Global, Biblioteca;

{$R *.DFM}

procedure TFrmRelComprasProdutos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TFrmRelComprasProdutos.FormCreate(Sender: TObject);
begin

   Cod_Grupo := FrmRelCompras.EditGrupo.Text;

   CodIni := FrmRelCompras.ModeloIni.Text;
   CodFim := FrmRelCompras.ModeloFim.Text;

   dtDataIni := StrToDate(FrmRelCompras.MskDataIni.Text);
   dtDataFim := StrToDate(FrmRelCompras.MskDataFim.Text);

   sqlMaster := '';
   sqlMaster := sqlMaster +
     ' SELECT A.*, B.CODIGO, B.NOME FROM COMPRAS_ITENS A, FORNECEDORES  B';
   sqlMaster := sqlMaster + ' WHERE  ';
   sqlMaster := sqlMaster + ' B.CODIGO=A.FORNECEDOR ';
   sqlMaster := sqlMaster + ' AND  ';
   sqlMaster := sqlMaster + ' (A.DATA>='+QuotedStr(FormatDateTime('mm/dd/yyyy',dtDataIni))+' AND A.DATA<='+QuotedStr(FormatDateTime('mm/dd/yyyy',dtDataFim))+' ) ';

   if not FrmRelCompras.chkFornecedor.Checked then
   Begin
      sqlMaster := sqlMaster + ' AND ';
      sqlMaster := sqlMaster + ' A.FORNECEDOR='+strFornecedor;
   End;

   if not FrmRelCompras.chkgrupos.Checked then
   Begin
      sqlMaster := sqlMaster + ' AND ';
      sqlMaster := sqlMaster + ' A.GRUPO='+Cod_Grupo;
   End;

   If (empty(CodIni) = false) or (empty(CodFim) = false) then
   Begin
      sqlMaster := sqlMaster + ' AND ';
      sqlMaster := sqlMaster +
        ' (A.COD_PRODUTO>='+CodIni+' AND  A.COD_PRODUTO<='+CodFim;
   end;

   sqlMaster := sqlMaster + ' ORDER BY A.DATA, B.NOME, A.COD_PRODUTO ';

   Ado_ComprasItens.Close;
   Ado_ComprasItens.SQL.clear;
   Ado_ComprasItens.SQL.Add(sqlMaster);

   Ado_ComprasItens.Open;
   ADO_PRODUTOS.Open;

   QuickRep.Preview;
   Close;

end;

end.
