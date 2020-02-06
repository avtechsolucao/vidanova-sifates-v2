{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

unit F_RelEst_Posicao;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, QuickRpt, QRCtrls, ExtCtrls, DB,
    Classe.Global, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
   TFrm_RelEst_Posicao = class(TForm)
      DB_ESTOQUE: TFDQuery;
      QuickRep: TQuickRep;
      EmpresaTitulo: TQRBand;
      QRLabel1: TQRLabel;
      QRLabel3: TQRLabel;
      QRSysData1: TQRSysData;
      QRLabel4: TQRLabel;
      QRSysData2: TQRSysData;
      Cabecalho: TQRBand;
      QRLabel5: TQRLabel;
      QRLabel14: TQRLabel;
      Datalhes: TQRBand;
      QRDBText2: TQRDBText;
      QRDBText4: TQRDBText;
      QRDBText11: TQRDBText;
      QuebraProduto: TQRGroup;
      TotalProduto: TQRBand;
      QRExpr5: TQRExpr;
      SummaryBand1: TQRBand;
      QRExpr10: TQRExpr;
      QRLabel16: TQRLabel;
      QRLabel7: TQRLabel;
      QRDBText13: TQRDBText;
      QRLabel15: TQRLabel;
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormCreate(Sender: TObject);
    procedure DB_ESTOQUEBeforeOpen(DataSet: TDataSet);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   Frm_RelEst_Posicao: TFrm_RelEst_Posicao;

implementation

uses FPrincipal, Global, Biblioteca, FRelEstoque;

{$R *.dfm}

procedure TFrm_RelEst_Posicao.DB_ESTOQUEBeforeOpen(DataSet: TDataSet);
begin
   DB_ESTOQUE.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;

end;

procedure TFrm_RelEst_Posicao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   DB_ESTOQUE.close;
   Action := Cafree;

end;

procedure TFrm_RelEst_Posicao.FormCreate(Sender: TObject);
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
      sqlMaster := sqlMaster + '  FORNECEDOR=:fornecedor01 ';
      sqlMaster := sqlMaster + ' AND ';
   End;


   if not FrmRelEstoque.ChkTipoProduto.Checked then
   Begin
      sqlMaster := sqlMaster + '  TIPO_PRODUTO=:TIPOPRODUTO ';
      sqlMaster := sqlMaster + ' AND ';
   End;

   if not FrmRelEstoque.chkgrupos.Checked then
   Begin
      sqlMaster := sqlMaster + '  GRUPO=:grupo01 ';
      sqlMaster := sqlMaster + ' AND ';
   End;

   If (empty(CodIni) = false) or (empty(CodFim) = false) then
   Begin
      sqlMaster := sqlMaster +
        '  REFERENCIA>=:produto1 AND   REFERENCIA<=:produto2 ';
   end;

   sqlMaster := sqlMaster + ' ORDER BY ' + strOrdemDados;

   DB_ESTOQUE.close;
   DB_ESTOQUE.sql.clear;
   DB_ESTOQUE.sql.add(sqlMaster);
   if not FrmRelEstoque.chkFornecedor.Checked then
      DB_ESTOQUE.ParamByName('fornecedor01').Value := strFornecedor;

   if not FrmRelEstoque.chkgrupos.Checked then
      DB_ESTOQUE.ParamByName('grupo01').AsString := strGrupo;

   if not FrmRelEstoque.ChkTipoProduto.Checked then
      DB_ESTOQUE.ParamByName('TIPOPRODUTO').AsString := FrmRelEstoque.db_TipoProduto.FieldByName('CODIGO').AsString;

   If (empty(CodIni) = false) or (empty(CodFim) = false) then
   Begin
      DB_ESTOQUE.ParamByName('produto1').Value := CodIni;
      DB_ESTOQUE.ParamByName('produto2').Value := CodFim;
   end;

   DB_ESTOQUE.open;

   QuickRep.Preview;
   close;

end;

end.
