{--------------------------------------------------------------------------------+
|  SISTEMA...............: IndPCP (E TAMBEM AUTOR DO VESTISPCP - DESCONTINUADO)  |
|  PORTE DE EMPRESA......: Destinado para Micro Empresas                         |
|  SEGMENTO..............: Comércio em geral e industrias (vestuário)            |  
|  LINGUAGEM/DB..........: Delphi 10.3 Rio   / Firebird 2.5                      | 
|--------------------------------------------------------------------------------|
|                                                                                |
|  AUTOR/PROGRAMADOR.....: Adriano Zanini (2019)                                 |
|  E-MAIL................: fontes@altaica.com.br                                 ||--------------------------------------------------------------------------------||  Você não pode comercializar o codigo-fonte. Nem mesmo parcialmente!           ||  Comercialize somente o sistema compilado (com o nome/interface que desejar).  |
+--------------------------------------------------------------------------------}

unit FFaseProducaoLancaEstoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxCalc, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls,
  ISFEdit, ISFEditbtn, ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos, FFrameBarra,
  Vcl.Buttons,
  Classe.Global;

type
  TFrmFaseProducaoLancaEstoque = class(TForm)
    Panel1: TPanel;
    BtnOk: TBitBtn;
    BtnCancelar: TBitBtn;
    FrmFrameBarra1: TFrmFrameBarra;
    GroupBox1: TGroupBox;
    ProgressBar1: TProgressBar;
    SP_OrdemPRODUCAO_FINALIZAR: TFDStoredProc;
    EditQualidade: TIDBEditDialog;
    Edit2: TEdit;
    GroupBox2: TGroupBox;
    SP_ReferenciaLancaGrade: TFDStoredProc;
    Panel2: TPanel;
    EditQuantidade: TLabeledEdit;
    db_OrdemProducaoProduzido: TFDQuery;
    ds_OrdemProducaoProduzido: TDataSource;
    db_OrdemProducaoProduzidoEMPRESA: TIntegerField;
    db_OrdemProducaoProduzidoCODIGO: TIntegerField;
    db_OrdemProducaoProduzidoAPROVADO: TStringField;
    db_OrdemProducaoProduzidoDATA: TSQLTimeStampField;
    db_OrdemProducaoProduzidoDATAATUALIZACAO: TSQLTimeStampField;
    db_OrdemProducaoProduzidoREFERENCIA: TStringField;
    db_OrdemProducaoProduzidoIDENTIFICADOR: TStringField;
    db_OrdemProducaoProduzidoCOR_ID: TIntegerField;
    db_OrdemProducaoProduzidoCOR: TStringField;
    db_OrdemProducaoProduzidoTAMANHO_ID: TIntegerField;
    db_OrdemProducaoProduzidoTAMANHO: TStringField;
    db_OrdemProducaoProduzidoORDEM_GRADE: TStringField;
    db_OrdemProducaoProduzidoCELULA_COL: TIntegerField;
    db_OrdemProducaoProduzidoCOLUNA_ROW: TIntegerField;
    db_OrdemProducaoProduzidoQUANTIDADE: TFloatField;
    db_OrdemProducaoProduzidoQUALIDADE: TIntegerField;
    db_OrdemProducaoProduzidoBAIXADO: TStringField;
    db_OrdemProducaoProduzidoUSUARIO: TStringField;
    db_ProduzidosDeletarPendencia: TFDQuery;
    cxGridProduzidos: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGridProduzidosColumn1: TcxGridDBColumn;
    cxGridProduzidosColumn2: TcxGridDBColumn;
    cxGridProduzidosColumn3: TcxGridDBColumn;
    cxGridProduzidosColumn4: TcxGridDBColumn;
    cxGridProduzidosColumn5: TcxGridDBColumn;
    procedure BtnOkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure db_TabelaVirtualFinalizar_xAfterPost(DataSet: TDataSet);
    procedure db_TabelaVirtualFinalizar_xBeforeDelete(DataSet: TDataSet);
    procedure db_OrdemProducaoProduzidoQUANTIDADEChange(Sender: TField);
    procedure db_OrdemProducaoProduzidoBeforeDelete(DataSet: TDataSet);
    procedure db_OrdemProducaoProduzidoAfterPost(DataSet: TDataSet);
    procedure db_OrdemProducaoProduzidoBeforePost(DataSet: TDataSet);
    procedure cxGridProduzidosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    procedure prcLancaEstoque;
    procedure prcSomarQuantidade;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFaseProducaoLancaEstoque: TFrmFaseProducaoLancaEstoque;



implementation

uses FPrincipal, Biblioteca, Global, SQLServer, FFaseProducao,
  FFaseProducaoRetornoTerceirizadosGrade, FFaseProducaoLancaEstoqueCodigoBarras;

{$R *.dfm}



procedure TFrmFaseProducaoLancaEstoque.BtnCancelarClick(Sender: TObject);
begin
   close;
end;

procedure TFrmFaseProducaoLancaEstoque.BtnOkClick(Sender: TObject);
begin
   strlFaseAtual       :=IntToStr(nFaseDestino);

   if db_OrdemProducaoProduzido.IsEmpty then
   begin
     AvisoSistema('Não há produto produzido lançado na grade.');
     exit;
   end;


   if (FParametros.Producao.PRODUCAO_FINALIZAR='') or
      (FParametros.Producao.PRODUCAO_FINALIZAR='AUTOMATICO')  then
   begin
      SP_OrdemPRODUCAO_FINALIZAR.ParamByName('NEMPRESA').AsInteger           := FSistema.Empresa;
      SP_OrdemPRODUCAO_FINALIZAR.ParamByName('NORDEMPRODUCAO').AsInteger     := nOrdemProducao;
      SP_OrdemPRODUCAO_FINALIZAR.ParamByName('SREFERENCIA').AsString         := strReferencia;
      SP_OrdemPRODUCAO_FINALIZAR.ParamByName('SFASE').AsString               := strlFaseAtual;
      SP_OrdemPRODUCAO_FINALIZAR.ParamByName('SVIA').AsString                := 'AUTOMATICO';
      SP_OrdemPRODUCAO_FINALIZAR.ExecProc;
      SP_OrdemPRODUCAO_FINALIZAR.close;
   end;

   if (FParametros.Producao.PRODUCAO_FINALIZAR='CODIGOBARRAS') then
   begin
      prcLancaEstoque;

      SP_OrdemPRODUCAO_FINALIZAR.ParamByName('NEMPRESA').AsInteger           := FSistema.Empresa;
      SP_OrdemPRODUCAO_FINALIZAR.ParamByName('NORDEMPRODUCAO').AsInteger     := nOrdemProducao;
      SP_OrdemPRODUCAO_FINALIZAR.ParamByName('SREFERENCIA').AsString         := strReferencia;
      SP_OrdemPRODUCAO_FINALIZAR.ParamByName('SFASE').AsString               := strlFaseAtual;
      SP_OrdemPRODUCAO_FINALIZAR.ParamByName('SVIA').AsString                := 'CODIGOBARRAS';
      SP_OrdemPRODUCAO_FINALIZAR.ExecProc;
      SP_OrdemPRODUCAO_FINALIZAR.close;

   end;

   AvisoSistemaErro('Ordem de Produção finalizada com sucesso. Estoque foi atualizado.');
   Close;

end;

procedure TFrmFaseProducaoLancaEstoque.cxGridProduzidosKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   IF Key = VK_F9 Then
   begin
      // vincular tecidos na referencia
      If (db_OrdemProducaoProduzido.State in [dsedit, dsinsert]) then
         db_OrdemProducaoProduzido.Post
      else
         db_OrdemProducaoProduzido.Refresh;

      FrmFaseProducaoLancaEstoqueCodigoBarras := TFrmFaseProducaoLancaEstoqueCodigoBarras.Create(self);
      FrmFaseProducaoLancaEstoqueCodigoBarras.ShowModal;

      db_OrdemProducaoProduzido.Refresh;

   end;
end;

procedure TFrmFaseProducaoLancaEstoque.db_OrdemProducaoProduzidoAfterPost(
  DataSet: TDataSet);
begin
   prcSomarQuantidade;

end;

procedure TFrmFaseProducaoLancaEstoque.db_OrdemProducaoProduzidoBeforeDelete(
  DataSet: TDataSet);
begin
   prcSomarQuantidade;

end;

procedure TFrmFaseProducaoLancaEstoque.db_OrdemProducaoProduzidoBeforePost(
  DataSet: TDataSet);
begin
   db_OrdemProducaoProduzido.FieldByName('EMPRESA').AsInteger   :=  FSistema.Empresa;
   db_OrdemProducaoProduzido.FieldByName('CODIGO').AsInteger    :=  nOrdemProducao;
   db_OrdemProducaoProduzido.FieldByName('APROVADO').AsString   :=  prcOrdemProducao_retCampo(nOrdemProducao,'APROVADO');
   db_OrdemProducaoProduzido.FieldByName('DATA').AsDateTime     :=  StrToDate(prcOrdemProducao_retCampo(nOrdemProducao,'DATA'));

   db_OrdemProducaoProduzido.FieldByName('DATAATUALIZACAO').AsDateTime  :=  Now;
   db_OrdemProducaoProduzido.FieldByName('USUARIO').AsString            :=  FUsuario.Nome;

   db_OrdemProducaoProduzido.FieldByName('QUALIDADE').AsInteger  := StrToIntDef(EditQualidade.Text,0);

end;

procedure TFrmFaseProducaoLancaEstoque.db_OrdemProducaoProduzidoQUANTIDADEChange(
  Sender: TField);
begin
   if fncFaseValidarQuantidade(strReferencia,
                            nOrdemProducao,
                            nFaseOrigem,
                            db_OrdemProducaoProduzido.FieldByName('COR_ID').AsInteger,
                            db_OrdemProducaoProduzido.FieldByName('TAMANHO_ID').AsInteger,
                            db_OrdemProducaoProduzido.FieldByName('QUANTIDADE').AsInteger
                            )=True Then
   Begin

       AvisoSistemaErro('A quantidade que você informou é maior que a quantidade real.');
       db_OrdemProducaoProduzido.Cancel;
       Abort;
   End;

end;

procedure TFrmFaseProducaoLancaEstoque.db_TabelaVirtualFinalizar_xAfterPost(
  DataSet: TDataSet);
begin
   prcSomarQuantidade;
end;

procedure TFrmFaseProducaoLancaEstoque.db_TabelaVirtualFinalizar_xBeforeDelete(
  DataSet: TDataSet);
begin
   prcSomarQuantidade;
end;

procedure TFrmFaseProducaoLancaEstoque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   if db_OrdemProducaoProduzido.IsEmpty=False then
   begin
      db_ProduzidosDeletarPendencia.ParamByName('EMPRESA').AsInteger   :=  FSistema.Empresa;
      db_ProduzidosDeletarPendencia.ParamByName('CODIGO').AsInteger    :=  nOrdemProducao;

      db_ProduzidosDeletarPendencia.close;
      db_ProduzidosDeletarPendencia.ExecSQL;
      db_ProduzidosDeletarPendencia.close;
   end;

   db_OrdemProducaoProduzido.close;
end;

procedure TFrmFaseProducaoLancaEstoque.FormCreate(Sender: TObject);
begin
   EditQualidade.Text := IntToStr(FParametros.Producao.QualidadePadrao);


   if db_OrdemProducaoProduzido.IsEmpty=False then
   begin
      db_ProduzidosDeletarPendencia.ParamByName('EMPRESA').AsInteger   :=  FSistema.Empresa;
      db_ProduzidosDeletarPendencia.ParamByName('CODIGO').AsInteger    :=  nOrdemProducao;

      db_ProduzidosDeletarPendencia.close;
      db_ProduzidosDeletarPendencia.ExecSQL;
      db_ProduzidosDeletarPendencia.close;
   end;

   db_OrdemProducaoProduzido.close;
   db_OrdemProducaoProduzido.ParamByName('EMPRESA').AsInteger   :=  FSistema.Empresa;
   db_OrdemProducaoProduzido.ParamByName('CODIGO').AsInteger    :=  nOrdemProducao;
   db_OrdemProducaoProduzido.open;


end;


procedure TFrmFaseProducaoLancaEstoque.prcLancaEstoque;
begin

   strProduto    :='';
   strReferencia :='';

   db_OrdemProducaoProduzido.close;
   db_OrdemProducaoProduzido.open;
   db_OrdemProducaoProduzido.First;
   while not db_OrdemProducaoProduzido.eof do
   begin

      strProduto    := db_OrdemProducaoProduzido.FieldByName('IDENTIFICADOR').AsString;
      strReferencia := db_OrdemProducaoProduzido.FieldByName('REFERENCIA').AsString;

      SP_ReferenciaLancaGrade.ParamByName('NEMPRESA').AsInteger         :=  FSistema.Empresa;
      SP_ReferenciaLancaGrade.ParamByName('SIDENTIFICADOR').AsString    :=  strProduto;
      SP_ReferenciaLancaGrade.ParamByName('NQUANTIDADE').AsInteger      :=  db_OrdemProducaoProduzido.FieldByName('QUANTIDADE').AsInteger;
      SP_ReferenciaLancaGrade.ParamByName('NQUALIDADE').AsInteger       :=  StrToIntDef(EditQualidade.Text,0);
      SP_ReferenciaLancaGrade.ParamByName('ACAO').AsString              :=  'INCLUIR';
      SP_ReferenciaLancaGrade.ExecProc;
      SP_ReferenciaLancaGrade.close;

      prcFaseAndamentoTransferirEstoque(   0, //  TERCEIRIZADO
                                           nOrdemProducao,
                                           db_OrdemProducaoProduzido.FieldByName('CODIGO').AsInteger,
                                           nFaseOrigem,
                                           nFaseDestino,
                                           db_OrdemProducaoProduzido.FieldByName('COR_ID').AsInteger,
                                           db_OrdemProducaoProduzido.FieldByName('TAMANHO_ID').AsInteger,
                                           strReferencia,
                                           db_OrdemProducaoProduzido.FieldByName('QUANTIDADE').AsInteger
                                          );

      db_OrdemProducaoProduzido.Edit;
      db_OrdemProducaoProduzido.FieldByName('BAIXADO').AsString :='S';
      db_OrdemProducaoProduzido.Post;

      // passar para o proximo registro
      db_OrdemProducaoProduzido.Next;
      db_OrdemProducaoProduzido.First;
   end;
   db_OrdemProducaoProduzido.close;

end;

procedure TFrmFaseProducaoLancaEstoque.prcSomarQuantidade;
Var
 nqtde : integer;
begin

   strProduto    :='';
   strReferencia :='';
   nqtde         :=0;

   db_OrdemProducaoProduzido.close;
   db_OrdemProducaoProduzido.open;

   while not db_OrdemProducaoProduzido.eof do
   begin
      strProduto    := db_OrdemProducaoProduzido.FieldByName('IDENTIFICADOR').AsString;
      strReferencia := db_OrdemProducaoProduzido.FieldByName('REFERENCIA').AsString;
      nqtde         := nqtde + db_OrdemProducaoProduzido.FieldByName('QUANTIDADE').AsInteger;
      db_OrdemProducaoProduzido.Next;
   end;
   db_OrdemProducaoProduzido.first;

   EditQuantidade.text := FormatFloat('###,##0', nqtde);

end;


end.
