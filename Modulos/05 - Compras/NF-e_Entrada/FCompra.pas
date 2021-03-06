{***********************************************************************************
**  SISTEMA...............: Vida Nova Gest�o de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  C�digo pertencente ao cliente sob prote��o autoral.                           ****  N�o comercializ�vel sem pr�via autoriza��o do mesmo.                          **
***********************************************************************************}

unit FCompra;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxCalendar, cxCurrencyEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet, ACBrBase, ACBrDFe, ACBrNFe, Vcl.ExtCtrls, Vcl.Buttons,
  FFrameBarra, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls, ISFEdit,
  ISFEditbtn, ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos, Vcl.Mask, Vcl.DBCtrls,
  System.StrUtils,
  pcnNFe, dxDateRanges;

type

  TRFornecedor = Record
    ID           : Integer;
    CNPJ         : String;
    IE           : String;
    Nome         : String;
    Fantasia     : String;
    Fone         : String;
    CEP          : String;
    Endereco     : String;
    Numero       : String;
    Complemento  : String;
    Bairro       : String;
    IDMunicipio  : Integer;
    Municipio    : String;
    IDUF         : Integer;
    UF           : String;
    IDPais       : Integer;
    Pais         : String;
    IDTransp     : Integer;
  end;

  TRProduto = Record
    REFERENCIA   : String;
    DESCRICAO    : String;
  end;

  TFrmCompra = class(TForm)
    ACBrNFe1: TACBrNFe;
    pnPrincipal: TPanel;
    dsProduto: TDataSource;
    dsCtaPagar: TDataSource;
    dsFretePagar: TDataSource;
    dsEntrada: TDataSource;
    OpenDlgXML: TOpenDialog;
    spCompraEstoque: TFDStoredProc;
    QryEntrada: TFDQuery;
    QryProduto: TFDQuery;
    QryCtaPagar: TFDQuery;
    QryFretePagar: TFDQuery;
    Panel2: TPanel;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    EditData: TDBEdit;
    EditNF: TDBEdit;
    EditDataEntrada: TDBEdit;
    EditFornecedor: TIDBEditDialog;
    EditNomeCliente: TEdit;
    EditNomePlanoContas: TEdit;
    Edit1: TEdit;
    DbEditCFOP: TIDBEditDialog;
    Edit2: TEdit;
    EditCentroCusto: TIDBEditDialog;
    EditPlanoConta: TIDBEditDialog;
    EditTransp: TIDBEditDialog;
    EditNomeTrasportadora: TEdit;
    pnContasPagar: TPanel;
    gbxFatura: TGroupBox;
    cxGridFatPagar: TcxGrid;
    grdCtaPag: TcxGridDBTableView;
    grdCtaPagDocumento: TcxGridDBColumn;
    grdCtaPagVencimento: TcxGridDBColumn;
    grdCtaPagValor: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    gbxFrete: TGroupBox;
    cxGridFatFrete: TcxGrid;
    grdCtaFrete: TcxGridDBTableView;
    grdCtaFreteDocumento: TcxGridDBColumn;
    grdCtaFreteVencimento: TcxGridDBColumn;
    grdCtaFreteValor: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    pnTituloPagar: TPanel;
    FrmFrameBarra1: TFrmFrameBarra;
    dbProcurarCompra: TIDBEditDialog;
    dbProcurarPedido: TIDBEditDialog;
    PanelBotoes: TPanel;
    PanelBotoesBottom: TPanel;
    SpbAdicionar: TSpeedButton;
    SpbEditar: TSpeedButton;
    SpbCancelar: TSpeedButton;
    btnConfirmar: TSpeedButton;
    SpbExcluir: TSpeedButton;
    SpbImprimir: TSpeedButton;
    SpbSair: TSpeedButton;
    btnEstornar: TSpeedButton;
    SpbProcurar: TSpeedButton;
    rgOpcaoEntrada: TRadioGroup;
    EditSerie: TDBEdit;
    Label1: TLabel;
    EditModelo: TDBEdit;
    Label5: TLabel;
    SpbSalvar: TSpeedButton;
    QryEstoque: TFDQuery;
    dsEstoque: TDataSource;
    gbProduto: TGroupBox;
    cxGridEntrada: TcxGrid;
    cxGridProduto: TcxGridDBTableView;
    cxGridProdutoIDProduto: TcxGridDBColumn;
    cxGridProdutoDescricao: TcxGridDBColumn;
    cxGridProdutoUND: TcxGridDBColumn;
    cxGridProdutoQTDE: TcxGridDBColumn;
    cxGridProdutoVUnit: TcxGridDBColumn;
    cxGridProdutoDesconto: TcxGridDBColumn;
    cxGridProdutoICMS: TcxGridDBColumn;
    cxGridProdutoICMSValor: TcxGridDBColumn;
    cxGridProdutoIPI: TcxGridDBColumn;
    cxGridProdutoIPIValor: TcxGridDBColumn;
    cxGridProdutoVTotal: TcxGridDBColumn;
    cxGridEntradaLevel1: TcxGridLevel;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnConfirmarClick(Sender: TObject);
    procedure SpbAdicionarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpbSairClick(Sender: TObject);
    procedure btnEstornarClick(Sender: TObject);
    procedure QryEntradaAfterPost(DataSet: TDataSet);
    procedure QryEntradaNewRecord(DataSet: TDataSet);
    procedure QryProdutoBeforePost(DataSet: TDataSet);
    procedure QryCtaPagarBeforePost(DataSet: TDataSet);
    procedure QryFretePagarBeforePost(DataSet: TDataSet);
    procedure QryEntradaAfterScroll(DataSet: TDataSet);
    procedure SpbProcurarClick(Sender: TObject);
    procedure SpbEditarClick(Sender: TObject);
    procedure SpbSalvarClick(Sender: TObject);
    procedure SpbCancelarClick(Sender: TObject);
    procedure SpbExcluirClick(Sender: TObject);
    procedure rgOpcaoEntradaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FrmFrameBarra1LblBarraTituloDblClick(Sender: TObject);
    procedure GroupBox2Exit(Sender: TObject);
    procedure cxGridEntradaEnter(Sender: TObject);
    procedure QryEstoqueBeforeOpen(DataSet: TDataSet);
    procedure SpbImprimirClick(Sender: TObject);
  private
    { Private declarations }
    FNFe        : TNFe;
    FFornecedor : TRFornecedor;
    FProduto    : TRProduto;

    function  GetIDPessoa(sCNPJ: String): Integer;
    procedure SetFornecedor;
    function  GetFabReferencia(aIDFabricante: String): String;

    function  ComprasInsertFornecedor : Integer;
    procedure CadastraProduto(aProduto : TRProduto);
    function  CheckNFe(aFornecedor, aNF, aSerie : Integer): Boolean;
    procedure ImportarXMLFornecedor;
    procedure SetParametros;
    procedure SetEdicao(aValue: Boolean);
    procedure AbrirTabelas(aValue: Boolean);
    procedure SalvarDados;
    function  CheckBaixaNFe(aFornecedor, aNF, aSerie: Integer): Boolean;
    procedure DesativarEdicao(aGrid : TcxGridDBTableView; aValue : Boolean);
    function  CheckProdutoGrade(aProduto: String): Boolean;

  public
    { Public declarations }
  end;

var
  FrmCompra: TFrmCompra;

implementation

{$R *.dfm}

uses FPrincipal, Classe.Global, App.Funcoes, Biblioteca, SQLServer;


procedure TFrmCompra.SetFornecedor;
begin
  FFornecedor.ID           := GetIDPessoa(FNFe.Emit.CNPJCPF);
  FFornecedor.IDTransp     := GetIDPessoa(FNFe.Transp.Transporta.CNPJCPF);
  FFornecedor.CNPJ         := FNFe.Emit.CNPJCPF;
  FFornecedor.IE           := FNFe.Emit.IE;
  FFornecedor.Nome         := FNFe.Emit.xNome;
  FFornecedor.Fantasia     := FNFe.Emit.xFant;
  FFornecedor.Fone         := FNFe.Emit.EnderEmit.fone;
  FFornecedor.CEP          := IntToStr(FNFe.Emit.EnderEmit.CEP);
  FFornecedor.Endereco     := FNFe.Emit.EnderEmit.xLgr;
  FFornecedor.Numero       := FNFe.Emit.EnderEmit.nro;
  FFornecedor.Complemento  := FNFe.Emit.EnderEmit.xCpl;
  FFornecedor.Bairro       := FNFe.Emit.EnderEmit.xBairro;
  FFornecedor.IDMunicipio  := FNFe.Emit.EnderEmit.cMun;
  FFornecedor.Municipio    := FNFe.Emit.EnderEmit.xMun;
  FFornecedor.IDUF         := FNFe.Ide.cUF;
  FFornecedor.UF           := FNFe.Emit.EnderEmit.UF;
  FFornecedor.IDPais       := FNFe.Emit.EnderEmit.cPais;
  FFornecedor.Pais         := FNFe.Emit.EnderEmit.xPais;
end;

procedure TFrmCompra.AbrirTabelas(aValue : Boolean);
begin
  QryEntrada.Active    := aValue;
  QryProduto.Active    := aValue;
  QryCtaPagar.Active   := aValue;
  QryFretePagar.Active := aValue;
  QryEstoque.Active    := aValue;
  if aValue=false then
  begin
    QryEstoque.ParamByName('IDEMPRESA').AsInteger       := 0;
    QryEntrada.ParamByName('IDCOMPRA').AsInteger        := 0;
    QryProduto.ParamByName('IDCOMPRA').AsInteger        := 0;
    QryCtaPagar.ParamByName('IDFORNECEDOR').AsInteger   := 0;
    QryCtaPagar.ParamByName('IDNOTAFISCAL').AsInteger   := 0;
    QryFretePagar.ParamByName('IDFORNECEDOR').AsInteger := 0;
    QryFretePagar.ParamByName('IDNOTAFISCAL').AsInteger := 0;
  end;
end;

procedure TFrmCompra.SpbAdicionarClick(Sender: TObject);
begin
  if rgOpcaoEntrada.ItemIndex=0 then
  begin
    AbrirTabelas(True);
    DesativarEdicao(cxGridProduto, False);
    DesativarEdicao(grdCtaPag, False);
    DesativarEdicao(grdCtaFrete, False);
    ImportarXMLFornecedor();
  end;

  if rgOpcaoEntrada.ItemIndex=1 then
  begin
    if (QryEntrada.state in [dsinsert,dsedit]) then
      QryEntrada.Cancel;

    AbrirTabelas(False);
    AbrirTabelas(True);

    DesativarEdicao(cxGridProduto, True);
    DesativarEdicao(grdCtaPag, True);
    DesativarEdicao(grdCtaFrete, True);
    SetEdicao(True);
    QryEntrada.Append;
    EditNF.SetFocus;
  end;
end;


procedure TFrmCompra.SpbCancelarClick(Sender: TObject);
begin
  if (QryEntrada.state in [dsinsert,dsedit]) then
  begin
    QryEntrada.Cancel;
    QryProduto.Cancel;
    QryCtaPagar.Cancel;
    QryFretePagar.Cancel;

    if QryEntrada.FieldByName('CODIGO').AsInteger<1 then
    begin
      AbrirTabelas(False);
    end;
  end;
end;

procedure TFrmCompra.SpbEditarClick(Sender: TObject);
begin
    if (QryEntrada.state in [dsinsert,dsedit]) then
      exit;

    if  QryEntrada.IsEmpty then
      exit;

    if not (QryEntrada.state in [dsedit]) then
      QryEntrada.Edit;
end;

procedure TFrmCompra.SpbExcluirClick(Sender: TObject);
begin
  if (QryEntrada.IsEmpty) then
    exit;
  if pergunta('Excluir este registro?')=false then
    exit;

  QryCtaPagar.First;
  while not QryCtaPagar.eof do
    QryCtaPagar.Delete;
  QryFretePagar.First;
  while not QryFretePagar.eof do
    QryFretePagar.Delete;
  QryEntrada.delete;
  AbrirTabelas(False);

end;

procedure TFrmCompra.SpbImprimirClick(Sender: TObject);
begin
  mensagem('Programador, implemente essa funcionalidade de acordo com a solicita��o de seus clientes.');

end;

procedure TFrmCompra.btnConfirmarClick(Sender: TObject);
begin
  if (QryEntrada.IsEmpty) then
    exit;
  if CheckBaixaNFe(QryEntrada.FieldByName('FORNECEDOR').AsInteger, StrToIntDef(QryEntrada.FieldByName('NOTAFISCAL').AsString,0), StrToIntDef(QryEntrada.FieldByName('SERIE').AsString,0) ) then
  begin
    Mensagem('Nota Fiscal '+QryEntrada.FieldByName('NOTAFISCAL').AsString+' j� foi importada e baixada.');
    exit;
  end;
  if not pergunta('Confirma o a baixa da compra?') then
    exit;
  spCompraEstoque.ParamByName('NCOMPRA').AsInteger := QryEntrada.FieldByName('CODIGO').AsInteger;
  spCompraEstoque.ParamByName('ACAO').AsString     := 'BAIXAR';
  spCompraEstoque.ExecProc;
  Mensagem('Compra foi baixada.');

end;

procedure TFrmCompra.btnEstornarClick(Sender: TObject);
begin
  if (QryEntrada.IsEmpty) then
    exit;
  if not CheckBaixaNFe(QryEntrada.FieldByName('FORNECEDOR').AsInteger, StrToIntDef(QryEntrada.FieldByName('NOTAFISCAL').AsString,0), StrToIntDef(QryEntrada.FieldByName('SERIE').AsString,0) ) then
  begin
    Mensagem('Nota Fiscal '+QryEntrada.FieldByName('NOTAFISCAL').AsString+' n�o foi baixada.'+sLineBreak+'N�o � possivel fazer estorno.');
    exit;
  end;
  if not pergunta('Confirma o estorno da compra?') then
    exit;
  spCompraEstoque.ParamByName('NCOMPRA').AsInteger := QryEntrada.FieldByName('CODIGO').AsInteger;
  spCompraEstoque.ParamByName('ACAO').AsString     := 'ESTORNAR';
  spCompraEstoque.ExecProc;
  Mensagem('Compra foi estornada.');
end;

procedure TFrmCompra.SpbProcurarClick(Sender: TObject);
begin
   if dbProcurarCompra.Execute then
   begin
      QryEntrada.Close;
      QryEntrada.ParamByName('IDCOMPRA').AsInteger := dbProcurarCompra.ResultFieldAsInteger('CODIGO');
      QryEntrada.open;

      if QryEntrada.FieldByName('ORIGEM').AsString='XML' then
      begin
        rgOpcaoEntrada.ItemIndex := 0;
        DesativarEdicao(cxGridProduto, False);
        DesativarEdicao(grdCtaPag, False);
        DesativarEdicao(grdCtaFrete, False);
        SetEdicao(False);
      end
      else
      begin
        rgOpcaoEntrada.ItemIndex := 1;
        DesativarEdicao(cxGridProduto, True);
        DesativarEdicao(grdCtaPag, True);
        DesativarEdicao(grdCtaFrete, True);
        SetEdicao(True);
      end;

      QryProduto.Close;
      QryEstoque.Close;
      QryCtaPagar.Close;
      QryFretePagar.Close;

      SetParametros();
      QryProduto.open;
      QryEstoque.open;
      QryCtaPagar.open;
      QryFretePagar.open;
   end;
end;

procedure TFrmCompra.SpbSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmCompra.SpbSalvarClick(Sender: TObject);
begin
  SalvarDados;
end;

procedure TFrmCompra.SalvarDados;
begin
  if (QryEntrada.state in [dsinsert,dsedit]) then
    QryEntrada.Post;

  if (QryProduto.state in [dsinsert,dsedit]) then
    QryProduto.Post;

  if (QryCtaPagar.state in [dsinsert,dsedit]) then
    QryCtaPagar.Post;

  if (QryFretePagar.state in [dsinsert,dsedit]) then
    QryFretePagar.Post;

end;


procedure TFrmCompra.QryFretePagarBeforePost(DataSet: TDataSet);
begin
  if rgOpcaoEntrada.ItemIndex=1 then
  begin
    QryFretePagar.FieldByName('EMPRESA').AsInteger      := 1;
    QryFretePagar.FieldByName('FORNECEDOR').AsInteger   := FFornecedor.IDTransp; // id transportadora
    QryFretePagar.FieldByName('NOTAFISCAL').AsString    := QryEntrada.FieldByName('NOTAFISCAL').AsString;
    QryFretePagar.FieldByName('SERIENF').AsString       := QryEntrada.FieldByName('SERIE').AsString;
    QryFretePagar.FieldByName('DATA').AsDateTime        := QryEntrada.FieldByName('DATA').AsDateTime;
    QryFretePagar.FieldByName('TIPO').AsString          := 'PAGAR';
    QryFretePagar.FieldByName('QUITADO').AsString       := 'N';
    QryFretePagar.FieldByName('HISTORICO').AsString     := 'FRETE/DESPESA (NOTA FISCAL DE COMPRA: '+QryEntrada.FieldByName('NOTAFISCAL').AsString+')';
    QryFretePagar.FieldByName('ORIGEM').AsString        := 'FRETE';
  end;
end;

procedure TFrmCompra.SetParametros;
begin
  if (QryEntrada.State in [dsInsert]) then
    exit;

  FFornecedor.ID       :=  QryEntrada.FieldByName('FORNECEDOR').AsInteger;
  FFornecedor.IDTransp :=  QryEntrada.FieldByName('TRANSPORTADORA').AsInteger;
  QryEntrada.ParamByName('IDCOMPRA').AsInteger         := QryEntrada.FieldByName('CODIGO').AsInteger;
  QryProduto.ParamByName('IDCOMPRA').AsInteger         := QryEntrada.FieldByName('CODIGO').AsInteger;
  QryCtaPagar.ParamByName('IDFORNECEDOR').AsInteger    := QryEntrada.FieldByName('FORNECEDOR').AsInteger;
  QryCtaPagar.ParamByName('IDNOTAFISCAL').AsInteger    := QryEntrada.FieldByName('NOTAFISCAL').AsInteger;
  QryFretePagar.ParamByName('IDFORNECEDOR').AsInteger  := QryEntrada.FieldByName('TRANSPORTADORA').AsInteger;
  QryFretePagar.ParamByName('IDNOTAFISCAL').AsInteger  := QryEntrada.FieldByName('NOTAFISCAL').AsInteger;
end;

procedure TFrmCompra.ImportarXMLFornecedor;
var
  IDCompra    : Integer;
  I           : Integer;
  mQtdTotal   : Double;
  mVlrTotal   : Double;
  mVlrProdTot : Double;
  mVlrDesc    : Double;
  mDecimal    : Char;
  mProduto    : String;
  mRatFrete   : Double;
  mValFrete   : Double;
begin
  IDCompra    := 0;
  I           := 0;
  mQtdTotal   := 0;
  mVlrTotal   := 0;
  mVlrProdTot := 0;
  mVlrDesc    := 0;
  mRatFrete   := 0;
  mValFrete   := 0;

  if not OpenDlgXML.Execute then
    exit;
  ACBrNFe1.NotasFiscais.Clear;
  try
    ACBrNFe1.NotasFiscais.LoadFromFile(OpenDlgXML.FileName);
  except
    raise Exception.Create('Arquivo NF-e Inv�lido');
  end;

  try
    try
      FNFe := TNFe.Create;
      FNFe.Assign(ACBrNFe1.NotasFiscais.Items[0].NFe);
    except
      raise Exception.Create('NF-e com estrutura XML inv�lida');
    end;

    if Copy(LowerCase(FNFe.infNFe.ID),1,3)<>'nfe' then
    begin
      Mensagem('Arquivo n�o � uma NF-e. Processo cancelado.');
      exit;
    end;

    SetFornecedor();
    if FFornecedor.ID<1 then
    begin
      FFornecedor.ID := ComprasInsertFornecedor();
      if FFornecedor.ID<1 then
        SetFornecedor();
    end;

    if FFornecedor.ID<1 then
    begin
      Mensagem('Problema na indentifica��o do Fornecedor');
    end;

    if CheckNFe(FFornecedor.ID, FNFe.Ide.cNF, FNFe.Ide.serie) then
    begin
      Aviso('Nota Fiscal ja foi importada. Clique no bot�o "Procurar"');
      exit;
    end;

    QryEntrada.DisableControls;
    QryProduto.DisableControls;
    QryCtaPagar.DisableControls;
    QryFretePagar.DisableControls;

    //----------------------------------------------------------------------
    // CALCULAR TOTAIS
    //----------------------------------------------------------------------
    mQtdTotal   := 0;
    mVlrDesc    := 0;
    mVlrProdTot := 0;
    mVlrTotal   := 0;
    for I := 0 to FNFe.Det.Count-1 do
    begin
       with FNFe.Det.Items[I] do
       begin
         mQtdTotal   := mQtdTotal   + Prod.qCom;
         mVlrDesc    := mVlrDesc    + Prod.vDesc;
         mVlrProdTot := mVlrProdTot + (Prod.vUnCom * Prod.qCom);
         mVlrTotal   := mVlrTotal   + (Prod.vUnCom * Prod.qCom);
       end;
    end;

    //----------------------------------------------------------------------
    // Adicionar Compra
    //----------------------------------------------------------------------
    QryEntrada.Append;
    QryEntrada.FieldByName('EMPRESA').AsInteger         := FSistema.Empresa;
    QryEntrada.FieldByName('CFOP').AsInteger            := 1102;
    QryEntrada.FieldByName('FORNECEDOR').AsInteger      := FFornecedor.ID;
    QryEntrada.FieldByName('NOTAFISCAL').AsString       := IntToStr(FNFe.Ide.cNF);
    QryEntrada.FieldByName('MODELO').AsString           := IntToStr(FNFe.Ide.modelo);
    QryEntrada.FieldByName('SERIE').AsString            := IntToStr(FNFe.Ide.serie);
    QryEntrada.FieldByName('DATA').AsDateTime           := FNFe.Ide.dEmi;
    QryEntrada.FieldByName('DATAENTRADA').AsDateTime    := Date;
    if FFornecedor.IDTransp>0 then
      QryEntrada.FieldByName('TRANSPORTADORA').AsInteger:= FFornecedor.IDTransp;
    QryEntrada.FieldByName('FRETE_VALOR').AsFloat       := FNFe.Total.ICMSTot.vFrete;
    QryEntrada.FieldByName('QTDE_PRODUTOS').AsFloat     := mQtdTotal;
    QryEntrada.FieldByName('VALOR_PRODUTOS').AsFloat    := mVlrProdTot;
    QryEntrada.FieldByName('VLR_DESCONTO').AsFloat      := mVlrDesc;
    QryEntrada.FieldByName('TOTAL_NF').AsFloat          := mVlrTotal;
    QryEntrada.FieldByName('ORIGEM').AsString           := 'XML';
    QryEntrada.FieldByName('ATUALIZADO').AsString       := 'N';
    QryEntrada.Post;

    //----------------------------------------------------------------------
    // Adicionar Produtos
    //----------------------------------------------------------------------
    for I := 0 to FNFe.Det.Count-1 do
    begin
       //----------------------------------------------------------------------
       // INFORMA��O DOS PRODUTOS
       //----------------------------------------------------------------------
       with FNFe.Det.Items[I] do
       begin
         mProduto := GetFabReferencia(Prod.cProd);
         if mProduto='' then
         begin
           FProduto.REFERENCIA := Prod.cProd;
           FProduto.DESCRICAO  := Prod.xProd;
           mProduto            := FProduto.REFERENCIA;

           CadastraProduto(FProduto); // REMOVER
         end;

         QryProduto.Append;
         QryProduto.FieldByName('CODIGO').AsInteger          := QryEntrada.FieldByName('CODIGO').AsInteger;
         QryProduto.FieldByName('FORNECEDOR').AsInteger      := QryEntrada.FieldByName('FORNECEDOR').AsInteger;
         QryProduto.FieldByName('NOTAFISCAL').AsString       := IntToStr(FNFe.Ide.cNF);
         QryProduto.FieldByName('MODELO').AsString           := IntToStr(FNFe.Ide.modelo);
         QryProduto.FieldByName('SERIE').AsString            := IntToStr(FNFe.Ide.serie);
         QryProduto.FieldByName('DATA').AsDateTime           := FNFe.Ide.dEmi;
         QryProduto.FieldByName('DATAENTRADA').AsDateTime    := Date;

         QryProduto.FieldByName('PRODUTO').AsString          := mProduto;
         QryProduto.FieldByName('DESCRICAO').AsString        := Prod.xProd;
         QryProduto.FieldByName('UND').AsString              := Prod.uCom;
         QryProduto.FieldByName('QUANTIDADE').AsFloat        := Prod.qCom;
         QryProduto.FieldByName('VL_UNITARIO').AsFloat       := Prod.vProd;
         QryProduto.FieldByName('DESCONTO_VLR').AsFloat      := Prod.vDesc;
         QryProduto.FieldByName('VL_TOTAL').AsFloat          := (Prod.vUnCom * Prod.qCom);

         mValFrete := ((QryProduto.FieldByName('VL_UNITARIO').AsFloat / QryEntrada.FieldByName('TOTAL_NF').AsFloat) * QryEntrada.FieldByName('FRETE_VALOR').AsFloat);
         mRatFrete := ((mValFrete / QryProduto.FieldByName('VL_TOTAL').AsFloat) * 100);

         QryProduto.FieldByName('PFRETE').AsFloat          := mRatFrete;
         QryProduto.FieldByName('PFRETE_VALOR').AsFloat    := mValFrete;

        //----------------------------------------------------------------------
        // IMPOSTOS
        //----------------------------------------------------------------------
         with Imposto do
         begin
           QryProduto.FieldByName('ICMS').AsFloat        :=  ICMS.pICMS;
           QryProduto.FieldByName('ICMS_VALOR').AsFloat  :=  ICMS.vICMS;
           with Imposto do
           begin
             QryProduto.FieldByName('IPI').AsFloat    :=  IPI.pIPI;
             QryProduto.FieldByName('IPI_VALOR').AsFloat   :=  IPI.vIPI;
           end;
         end;
       end;
       QryProduto.Post;
    end;

    //----------------------------------------------------------------------
    // FATURA A PAGAR
    //----------------------------------------------------------------------
    for I:=0 to FNFe.Cobr.Dup.Count-1 do
    begin
      with FNFe.Cobr.Dup.Items[I] do
       begin
         QryCtaPagar.Append;
         QryCtaPagar.FieldByName('EMPRESA').AsInteger      := 1;
         QryCtaPagar.FieldByName('FORNECEDOR').AsInteger   := QryEntrada.FieldByName('FORNECEDOR').AsInteger;
         QryCtaPagar.FieldByName('NOTAFISCAL').AsString    := QryEntrada.FieldByName('NOTAFISCAL').AsString;
         QryCtaPagar.FieldByName('SERIENF').AsString       := QryEntrada.FieldByName('SERIE').AsString;
         QryCtaPagar.FieldByName('DATA').AsDateTime        := QryEntrada.FieldByName('DATA').AsDateTime;
         QryCtaPagar.FieldByName('VENCIMENTO').AsDateTime  := dVenc;
         QryCtaPagar.FieldByName('DOCUMENTO').AsString     := nDup;
         QryCtaPagar.FieldByName('TIPO').AsString          := 'PAGAR';
         QryCtaPagar.FieldByName('VALOR').AsFloat          := vDup;
         QryCtaPagar.FieldByName('VALOR_SALDO').AsFloat    := vDup;
         QryCtaPagar.FieldByName('QUITADO').AsString       := 'N';
         QryCtaPagar.FieldByName('HISTORICO').AsString     := '(NOTA FISCAL DE COMPRA: '+QryEntrada.FieldByName('NOTAFISCAL').AsString+')';
         QryCtaPagar.FieldByName('ORIGEM').AsString        := 'COMPRA';
         QryCtaPagar.Post;
       end;
    end;

   //----------------------------------------------------------------------
    // DESPESA FRETE
    //----------------------------------------------------------------------
    if FFornecedor.IDTransp>0 then
    begin
      if FNFe.Total.ICMSTot.vFrete>0 then
      begin
        QryFretePagar.Append;
        QryFretePagar.FieldByName('EMPRESA').AsInteger      := 1;
        QryFretePagar.FieldByName('FORNECEDOR').AsInteger   := QryEntrada.FieldByName('TRANSPORTADORA').AsInteger;
        QryFretePagar.FieldByName('NOTAFISCAL').AsString    := QryEntrada.FieldByName('NOTAFISCAL').AsString;
        QryFretePagar.FieldByName('SERIENF').AsString       := QryEntrada.FieldByName('SERIE').AsString;
        QryFretePagar.FieldByName('DATA').AsDateTime        := QryEntrada.FieldByName('DATA').AsDateTime;
        QryFretePagar.FieldByName('VENCIMENTO').AsDateTime  := Date;
        QryFretePagar.FieldByName('DOCUMENTO').AsString     := 'FRETE-'+QryEntrada.FieldByName('NOTAFISCAL').AsString;
        QryFretePagar.FieldByName('TIPO').AsString          := 'PAGAR';
        QryFretePagar.FieldByName('VALOR').AsFloat          := FNFe.Total.ICMSTot.vFrete;
        QryFretePagar.FieldByName('VALOR_SALDO').AsFloat    := FNFe.Total.ICMSTot.vFrete;
        QryFretePagar.FieldByName('QUITADO').AsString       := 'N';
        QryFretePagar.FieldByName('HISTORICO').AsString     := 'FRETE/DESPESA (NOTA FISCAL DE COMPRA: '+QryEntrada.FieldByName('NOTAFISCAL').AsString+')';
        QryFretePagar.FieldByName('ORIGEM').AsString        := 'FRETE';
        QryFretePagar.Post;
      end;
    end;

  finally
    //----------------------------------------------------------------------
    //
    //----------------------------------------------------------------------
    QryEntrada.EndBatch;
    QryProduto.EndBatch;
    QryCtaPagar.EndBatch;
    QryFretePagar.EndBatch;
    QryEntrada.EnableControls;
    QryProduto.EnableControls;
    QryCtaPagar.EnableControls;
    QryFretePagar.EnableControls;
    FNFe.Free;
    ACBrNFe1.NotasFiscais.Clear;
  end;
end;

procedure TFrmCompra.QryCtaPagarBeforePost(DataSet: TDataSet);
begin
  if rgOpcaoEntrada.ItemIndex=1 then
  begin
    QryCtaPagar.FieldByName('EMPRESA').AsInteger      := 1;
    QryCtaPagar.FieldByName('FORNECEDOR').AsInteger   := FFornecedor.ID; // id transportadora
    QryCtaPagar.FieldByName('NOTAFISCAL').AsString    := QryEntrada.FieldByName('NOTAFISCAL').AsString;
    QryCtaPagar.FieldByName('SERIENF').AsString       := QryEntrada.FieldByName('SERIE').AsString;
    QryCtaPagar.FieldByName('DATA').AsDateTime        := QryEntrada.FieldByName('DATA').AsDateTime;
    QryCtaPagar.FieldByName('TIPO').AsString          := 'PAGAR';
    QryCtaPagar.FieldByName('QUITADO').AsString       := 'N';
    QryCtaPagar.FieldByName('HISTORICO').AsString     := '(NOTA FISCAL DE COMPRA: '+QryEntrada.FieldByName('NOTAFISCAL').AsString+')';
    QryCtaPagar.FieldByName('ORIGEM').AsString        := 'COMPRA';
  end;
end;

procedure TFrmCompra.QryEntradaAfterPost(DataSet: TDataSet);
begin
  SetParametros();
end;

procedure TFrmCompra.QryEntradaAfterScroll(DataSet: TDataSet);
begin
  if ((QryEntrada.FieldByName('ORIGEM').AsString='XML') or (QryEntrada.FieldByName('ATUALIZADO').AsString='S'))  then
    SetEdicao(False);

  if ((QryEntrada.FieldByName('ORIGEM').AsString<>'XML') and (QryEntrada.FieldByName('ATUALIZADO').AsString='N'))  then
    SetEdicao(True);
end;

procedure TFrmCompra.SetEdicao(aValue : Boolean);
begin
  EditNF.Enabled           := aValue;
  EditSerie.Enabled        := aValue;
  EditModelo.Enabled       := aValue;
  EditData.Enabled         := aValue;
  EditDataEntrada.Enabled  := aValue;
  EditFornecedor.Enabled   := aValue;
  DbEditCFOP.Enabled       := aValue;
  EditCentroCusto.Enabled  := aValue;
  EditPlanoConta.Enabled   := aValue;
  EditTransp.Enabled       := aValue;
end;

procedure TFrmCompra.QryEntradaNewRecord(DataSet: TDataSet);
begin
  if rgOpcaoEntrada.ItemIndex=1 then
  begin
    QryEntrada.ParamByName('IDCOMPRA').AsInteger        := 0;
    QryEntrada.FieldByName('EMPRESA').AsInteger         := FSistema.Empresa;
    QryEntrada.FieldByName('CFOP').AsInteger            := 1102;
    QryEntrada.FieldByName('DATA').AsDateTime           := Date;
    QryEntrada.FieldByName('DATAENTRADA').AsDateTime    := Date;
    QryEntrada.FieldByName('ORIGEM').AsString           := 'MANUAL';
    QryEntrada.FieldByName('ATUALIZADO').AsString       := 'N';

    QryProduto.Close;
    QryCtaPagar.Close;
    QryFretePagar.Close;

    QryProduto.Open;
    QryCtaPagar.Open;
    QryFretePagar.Open;

  end;
end;

procedure TFrmCompra.QryEstoqueBeforeOpen(DataSet: TDataSet);
begin
  QryEstoque.ParamByName('IDEMPRESA').AsInteger := FSistema.Empresa;
end;

procedure TFrmCompra.QryProdutoBeforePost(DataSet: TDataSet);
var
  mNome : String;
begin
  mNome := '';
  if rgOpcaoEntrada.ItemIndex=1 then
  begin

    if CheckProdutoGrade(QryProduto.FieldByName('PRODUTO').AsString) then
    begin
      Mensagem('Produto '+QryProduto.FieldByName('PRODUTO').AsString+' J� consta na grade... Verifique.');
      QryProduto.Cancel;
      exit;
    end;

    mNome := fncReferenciaNome(QryProduto.FieldByName('PRODUTO').AsString);
    if (mNome='') then
    begin
      Mensagem('Produto '+QryProduto.FieldByName('PRODUTO').AsString+' n�o existe... Verifique.');
      QryProduto.Cancel;
      exit;
    end;
    QryProduto.FieldByName('DESCRICAO').AsString        := mNome;

    QryProduto.FieldByName('CODIGO').AsInteger          := QryEntrada.FieldByName('CODIGO').AsInteger;
    QryProduto.FieldByName('NOTAFISCAL').AsString       := QryEntrada.FieldByName('NOTAFISCAL').AsString;
    QryProduto.FieldByName('MODELO').AsString           := QryEntrada.FieldByName('MODELO').AsString;
    QryProduto.FieldByName('SERIE').AsString            := QryEntrada.FieldByName('SERIE').AsString;
    QryProduto.FieldByName('FORNECEDOR').AsInteger      := QryEntrada.FieldByName('FORNECEDOR').AsInteger;
    QryProduto.FieldByName('DATA').AsDateTime           := QryEntrada.FieldByName('DATA').AsDateTime;
    QryProduto.FieldByName('DATAENTRADA').AsDateTime    := QryEntrada.FieldByName('DATAENTRADA').AsDateTime;
  end;
end;

procedure TFrmCompra.rgOpcaoEntradaClick(Sender: TObject);
begin
  if not QryEntrada.Active then
    exit;

  if QryEntrada.FieldByName('ORIGEM').AsString='XML' then
    exit;

  SetEdicao(rgOpcaoEntrada.ItemIndex=1);

  if rgOpcaoEntrada.ItemIndex=0 then
    gbProduto.Caption := '[Produtos]'
  else
    gbProduto.Caption := '[Produtos] pressione "Insert" para incluir itens na grade';

end;

procedure TFrmCompra.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  QryEntrada.Close;
  AbrirTabelas(False);
  Action := Cafree;
end;

procedure TFrmCompra.FormCreate(Sender: TObject);
begin
  DesativarEdicao(cxGridProduto, False);
  DesativarEdicao(grdCtaPag, False);
  DesativarEdicao(grdCtaFrete, False);
  SetEdicao(False);
end;

procedure TFrmCompra.DesativarEdicao(aGrid : TcxGridDBTableView; aValue : Boolean);
begin
  aGrid.OptionsData.Deleting             := aValue;
  aGrid.OptionsData.DeletingConfirmation := aValue;
  aGrid.OptionsData.Editing              := aValue;
  aGrid.OptionsData.Inserting            := aValue;
end;

procedure TFrmCompra.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//  if key=vk_escape then
//    close;
end;

procedure TFrmCompra.FormShow(Sender: TObject);
begin
  rgOpcaoEntradaClick(Sender);
  rgOpcaoEntrada.SetFocus;
end;

procedure TFrmCompra.FrmFrameBarra1LblBarraTituloDblClick(Sender: TObject);
begin
  FrmFrameBarra1.LblBarraTituloDblClick(Sender);
end;

function TFrmCompra.ComprasInsertFornecedor : Integer;
var
  mDQuery  : TFDQuery;
begin
  Result := 0;
  try
    mDQuery  := TFDQuery.Create(Self);
    mDQuery.Connection := FrmPrincipal.DBConexao;
    mDQuery.UpdateOptions.AutoIncFields := 'CODIGO';
    mDQuery.SQL.Clear;
    mDQuery.SQL.Add('  insert into CAD_CLIENTES(   ');
    mDQuery.SQL.Add('   DATA ');
    mDQuery.SQL.Add('  ,CPF_CNPJ ');
    mDQuery.SQL.Add('  ,RG_IE ');
    mDQuery.SQL.Add('  ,TIPO ');
    mDQuery.SQL.Add('  ,CLASSIFICACAO');
    mDQuery.SQL.Add('  ,NOME');
    mDQuery.SQL.Add('  ,NOME_FANTASIA');
    mDQuery.SQL.Add('  ,FONE');
    mDQuery.SQL.Add('  ,ENDERECO');
    mDQuery.SQL.Add('  ,NUMERO');
    mDQuery.SQL.Add('  ,COMPLEMENTO');
    mDQuery.SQL.Add('  ,BAIRRO');
    mDQuery.SQL.Add('  ,CEP');
    mDQuery.SQL.Add('  ,IDCIDADE');
    mDQuery.SQL.Add('  ,CODIGOUF');
    mDQuery.SQL.Add('  ,NOMECIDADE');
    mDQuery.SQL.Add('  ,UF');
    mDQuery.SQL.Add('  ,TRANSPORTADORA');
    mDQuery.SQL.Add('   ) ');
    mDQuery.SQL.Add('   values ( ');
    mDQuery.SQL.Add(' :DATA');
    mDQuery.SQL.Add(',:CPF_CNPJ');
    mDQuery.SQL.Add(',:RG_IE');
    mDQuery.SQL.Add(',:TIPO');
    mDQuery.SQL.Add(',:CLASSIFICACAO');
    mDQuery.SQL.Add(',:NOME');
    mDQuery.SQL.Add(',:NOME_FANTASIA');
    mDQuery.SQL.Add(',:FONE');
    mDQuery.SQL.Add(',:ENDERECO');
    mDQuery.SQL.Add(',:NUMERO');
    mDQuery.SQL.Add(',:COMPLEMENTO');
    mDQuery.SQL.Add(',:BAIRRO');
    mDQuery.SQL.Add(',:CEP');
    mDQuery.SQL.Add(',:IDCIDADE');
    mDQuery.SQL.Add(',:CODIGOUF');
    mDQuery.SQL.Add(',:NOMECIDADE');
    mDQuery.SQL.Add(',:UF');
    mDQuery.SQL.Add(',:TRANSPORTADORA');
    mDQuery.SQL.Add('   ) ');
    mDQuery.ParamByName('DATA').AsDate              := Date;
    mDQuery.ParamByName('CPF_CNPJ').AsString        := Formata_CNPJ_CPF(FFornecedor.CNPJ);
    mDQuery.ParamByName('RG_IE').AsString           := FFornecedor.IE;
    mDQuery.ParamByName('TIPO').AsString            := 'FORNECEDOR';
    mDQuery.ParamByName('CLASSIFICACAO').AsString   := 'J';
    mDQuery.ParamByName('NOME').AsString            := '[VIA XML] '+FFornecedor.Nome;
    mDQuery.ParamByName('NOME_FANTASIA').AsString   := FFornecedor.Fantasia;
    mDQuery.ParamByName('FONE').AsString            := FFornecedor.Fone;
    mDQuery.ParamByName('ENDERECO').AsString        := FFornecedor.Endereco;
    mDQuery.ParamByName('NUMERO').AsString          := FFornecedor.Numero;
    mDQuery.ParamByName('COMPLEMENTO').AsString     := FFornecedor.Complemento;
    mDQuery.ParamByName('BAIRRO').AsString          := FFornecedor.Bairro;
    mDQuery.ParamByName('CEP').AsString             := FFornecedor.CEP;
    mDQuery.ParamByName('IDCIDADE').AsInteger       := FFornecedor.IDMunicipio;
    mDQuery.ParamByName('CODIGOUF').AsInteger       := FFornecedor.IDUF;
    mDQuery.ParamByName('NOMECIDADE').AsString      := FFornecedor.Municipio;
    mDQuery.ParamByName('UF').AsString              := FFornecedor.UF;
    mDQuery.ParamByName('TRANSPORTADORA').AsInteger := FFornecedor.IDTransp;
    mDQuery.ExecSQL;
    Result := mDQuery.Connection.GetLastAutoGenValue( 'GEN_CAD_CLIENTES_ID' );
  finally
    mDQuery.Close;
    mDQuery.Free;
  end;
end;

procedure TFrmCompra.cxGridEntradaEnter(Sender: TObject);
begin
  if rgOpcaoEntrada.ItemIndex=1 then
  begin
    if QryProduto.IsEmpty then
      QryProduto.Append;
    if QryCtaPagar.IsEmpty then
      QryCtaPagar.Append;
    if QryFretePagar.IsEmpty then
      QryFretePagar.Append;
    cxGridEntrada.SetFocus;
  end;
end;

procedure TFrmCompra.CadastraProduto(aProduto: TRProduto);
var
  mDQuery  : TFDQuery;
  mDecimal : Char;
begin
  mDecimal := FormatSettings.DecimalSeparator;
  try
    FormatSettings.DecimalSeparator := '.';

    mDQuery  := TFDQuery.Create(Self);
    mDQuery.Connection := FrmPrincipal.DBConexao;
    mDQuery.SQL.Clear;
    mDQuery.SQL.Add('  insert into CAD_PRODUTOS(   ');
    mDQuery.SQL.Add('  EMPRESA ');
    mDQuery.SQL.Add('  ,REFERENCIA ');
    mDQuery.SQL.Add('  ,CODIGO_FABRICANTE ');
    mDQuery.SQL.Add('  ,DESCRICAO ');
    mDQuery.SQL.Add('  ,DATA ');
    mDQuery.SQL.Add('   ) ');
    mDQuery.SQL.Add('   values ( ');
    mDQuery.SQL.Add(':EMPRESA');
    mDQuery.SQL.Add(',:REFERENCIA');
    mDQuery.SQL.Add(',:CODIGO_FABRICANTE');
    mDQuery.SQL.Add(',:DESCRICAO');
    mDQuery.SQL.Add(',:DATA');
    mDQuery.SQL.Add('   ) ');
    mDQuery.ParamByName('EMPRESA').AsInteger            := FSistema.Empresa;
    mDQuery.ParamByName('REFERENCIA').AsString          := UpperCase(Trim(aProduto.REFERENCIA));
    mDQuery.ParamByName('CODIGO_FABRICANTE').AsString   := UpperCase(Trim(aProduto.REFERENCIA));
    mDQuery.ParamByName('DESCRICAO').AsString           := '[VIA XML] '+UpperCase(Trim(aProduto.DESCRICAO));
    mDQuery.ParamByName('DATA').AsDateTime              := Date;
    mDQuery.ExecSQL;
  finally
    mDQuery.Close;
    mDQuery.Free;
    FormatSettings.DecimalSeparator := mDecimal;
  end;
end;

//---------------------------------------------------------------------
//
//---------------------------------------------------------------------
Function TFrmCompra.GetFabReferencia(aIDFabricante : String): String;
var
  mDQuery  : TFDQuery;
  mDOC     : String;
begin
  Result := '';
  mDOC   := aIDFabricante;
  mDOC   := ReplaceStr(mDOC,'/','');
  mDOC   := ReplaceStr(mDOC,'.','');
  mDOC   := ReplaceStr(mDOC,'-','');
  mDOC   := ReplaceStr(mDOC,' ','');
  try
    mDQuery  := TFDQuery.Create(Self);
    mDQuery.Connection := FrmPrincipal.DBConexao;
    mDQuery.SQL.Clear;
    mDQuery.SQL.Add('  SELECT REFERENCIA FROM CAD_PRODUTOS ');
    mDQuery.SQL.Add('  where ');
    mDQuery.SQL.Add('  replace(replace(replace(codigo_fabricante, ''.'', ''''), ''/'', ''''), ''-'', '''' )=:IDFABRICANTE  ');
    mDQuery.ParamByName('IDFABRICANTE').AsString :=  mDOC;
    mDQuery.Open;
    Result := UpperCase(Trim(mDQuery.FieldByName('REFERENCIA').AsString));
  finally
    mDQuery.Free;
  end;
end;

function TFrmCompra.GetIDPessoa(sCNPJ: String): Integer;
var
  mDQuery  : TFDQuery;
  mDOC     : String;
begin
  Result := 0;
  mDOC   := sCNPJ;
  mDOC   := ReplaceStr(mDOC,'/','');
  mDOC   := ReplaceStr(mDOC,'.','');
  mDOC   := ReplaceStr(mDOC,'-','');
  mDOC   := ReplaceStr(mDOC,' ','');
  try
    mDQuery  := TFDQuery.Create(Self);
    mDQuery.Connection := FrmPrincipal.DBConexao;
    mDQuery.SQL.Clear;
    mDQuery.SQL.Add('  SELECT CODIGO, CPF_CNPJ FROM CAD_CLIENTES ');
    mDQuery.SQL.Add('  where ');
    mDQuery.SQL.Add('  replace(replace(replace(cpf_cnpj, ''.'', ''''), ''/'', ''''), ''-'', '''' )=:SCNPJ    ');
    mDQuery.ParamByName('SCNPJ').AsString :=  mDOC;
    mDQuery.Open;
    Result := mDQuery.FieldByName('CODIGO').AsInteger;
  finally
    mDQuery.Free;
  end;
end;

procedure TFrmCompra.GroupBox2Exit(Sender: TObject);
begin
  SalvarDados;
end;

function TFrmCompra.CheckBaixaNFe(aFornecedor, aNF, aSerie : Integer): Boolean;
var
  mDQuery  : TFDQuery;
begin
  Result := False;
  try
    mDQuery  := TFDQuery.Create(Self);
    mDQuery.Connection := FrmPrincipal.DBConexao;
    mDQuery.SQL.Clear;
    mDQuery.SQL.Add('  SELECT COUNT(NOTAFISCAL) AS QTDE FROM COMPRAS ');
    mDQuery.SQL.Add('  where ');
    mDQuery.SQL.Add('  FORNECEDOR=:IDFORNECEDOR ');
    mDQuery.SQL.Add('  AND ');
    mDQuery.SQL.Add('  NOTAFISCAL=:IDNOTA ');
    mDQuery.SQL.Add('  AND  ');
    mDQuery.SQL.Add('  SERIE=:IDSERIE ');
    mDQuery.SQL.Add('  AND  ');
    mDQuery.SQL.Add('  ATUALIZADO='+QuotedStr('S') );
    mDQuery.ParamByName('IDFORNECEDOR').AsInteger :=  aFornecedor;
    mDQuery.ParamByName('IDNOTA').AsString        :=  IntToStr(aNF);
    mDQuery.ParamByName('IDSERIE').AsString       :=  IntToStr(aSerie);
    mDQuery.Open;
    Result := mDQuery.FieldByName('QTDE').AsInteger>0;
  finally
    mDQuery.Close;
    mDQuery.Free;
  end;

end;


function TFrmCompra.CheckNFe(aFornecedor, aNF, aSerie : Integer): Boolean;
var
  mDQuery  : TFDQuery;
begin
  Result := False;
  try
    mDQuery  := TFDQuery.Create(Self);
    mDQuery.Connection := FrmPrincipal.DBConexao;
    mDQuery.SQL.Clear;
    mDQuery.SQL.Add('  SELECT COUNT(NOTAFISCAL) AS QTDE FROM COMPRAS ');
    mDQuery.SQL.Add('  where ');
    mDQuery.SQL.Add('  FORNECEDOR=:IDFORNECEDOR ');
    mDQuery.SQL.Add('  AND ');
    mDQuery.SQL.Add('  NOTAFISCAL=:IDNOTA ');
    mDQuery.SQL.Add('  AND  ');
    mDQuery.SQL.Add('  SERIE=:IDSERIE ');
    mDQuery.ParamByName('IDFORNECEDOR').AsInteger :=  aFornecedor;
    mDQuery.ParamByName('IDNOTA').AsString        :=  IntToStr(aNF);
    mDQuery.ParamByName('IDSERIE').AsString       :=  IntToStr(aSerie);
    mDQuery.Open;
    Result := mDQuery.FieldByName('QTDE').AsInteger>0;
  finally
    mDQuery.Close;
    mDQuery.Free;
  end;

end;

function TFrmCompra.CheckProdutoGrade(aProduto : String): Boolean;
var
  mDQuery  : TFDQuery;
begin
  Result := False;
  try
    mDQuery  := TFDQuery.Create(Self);
    mDQuery.Connection := FrmPrincipal.DBConexao;
    mDQuery.SQL.Clear;
    mDQuery.SQL.Add('  SELECT COUNT(PRODUTO) AS QTDE FROM COMPRAS_ITENS ');
    mDQuery.SQL.Add('  where ');
    mDQuery.SQL.Add('  FORNECEDOR=:IDFORNECEDOR ');
    mDQuery.SQL.Add('  AND ');
    mDQuery.SQL.Add('  NOTAFISCAL=:IDNOTA ');
    mDQuery.SQL.Add('  AND  ');
    mDQuery.SQL.Add('  SERIE=:IDSERIE ');
    mDQuery.SQL.Add('  AND  ');
    mDQuery.SQL.Add('  PRODUTO=:IDPRODUTO ');
    mDQuery.ParamByName('IDFORNECEDOR').AsInteger :=  QryEntrada.FieldByName('FORNECEDOR').AsInteger;
    mDQuery.ParamByName('IDNOTA').AsString        :=  QryEntrada.FieldByName('NOTAFISCAL').AsString;
    mDQuery.ParamByName('IDSERIE').AsString       :=  QryEntrada.FieldByName('SERIE').AsString;
    mDQuery.ParamByName('IDPRODUTO').AsString     :=  aProduto;
    mDQuery.Open;
    Result := mDQuery.FieldByName('QTDE').AsInteger>0;
  finally
    mDQuery.Close;
    mDQuery.Free;
  end;

end;

end.
