{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

unit FBaseDados;

interface

uses
   SysUtils, Classes, Forms, System.StrUtils, DB, DBClient, SimpleDS,
  ACBrNFe, frxClass, frxDBSet,
  ACBrNFeDANFEClass, ACBrNFeDANFEFR, Classe.Global, ACBrNFeDANFEFRDM, ACBrBase,
  ACBrDFe, ACBrMail, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  pcnConversaoNFe, pcnConversao, pcnNFe, ACBrValidador, ACBrUtil, ACBrDFeSSL,
  ACBrNFeDANFeRLClass, ACBrDFeUtil, ACBrSAT, ACBrSATExtratoESCPOS, Vcl.Graphics,
  ACBrDFeReport, ACBrSATExtratoClass, ACBrSATExtratoReportClass, ACBrSATClass,
  ACBrSATExtratoFortesFr, ACBrIntegrador, ACBrPosPrinter;


type
   TBaseDados = class(TDataModule)
      db_Parametros: TFDQuery;
      db_ctaReceber: TFDQuery;
      ds_ctaReceber: TDataSource;
      db_CtaPagar: TFDQuery;
      DS_CtaPagar: TDataSource;
      SP_NFE_CALCULA: TFDStoredProc;
    SPNFE_PROCESSAR: TFDStoredProc;
      db_ctaReceberCODIGO: TIntegerField;
      db_ctaReceberCLIENTE: TIntegerField;
      db_ctaReceberNOTAFISCAL: TIntegerField;
      db_ctaReceberSERIENF: TStringField;
      db_ctaReceberDATA: TSQLTimeStampField;
      db_ctaReceberVENCIMENTO: TSQLTimeStampField;
      db_ctaReceberDATA_PAGTO: TSQLTimeStampField;
      db_ctaReceberDOCUMENTO: TStringField;
      db_ctaReceberPARCELA: TIntegerField;
      db_ctaReceberCFOP: TIntegerField;
      db_ctaReceberVENDEDOR: TIntegerField;
      db_ctaReceberESPECIE: TStringField;
      db_ctaReceberTIPO: TStringField;
      db_ctaReceberVALOR: TFloatField;
      db_ctaReceberVALOR_PAGO: TFloatField;
      db_ctaReceberVALOR_SALDO: TFloatField;
      db_ctaReceberCONTA_CREDITO: TIntegerField;
      db_ctaReceberCHQ_BANCO: TStringField;
      db_ctaReceberCHQ_AGENCIA: TStringField;
      db_ctaReceberCHQ_CONTA_CORRENTE: TStringField;
      db_ctaReceberCHQ_NUMEROCHEQUE: TStringField;
      db_ctaReceberCHQ_CODCIDADE: TStringField;
      db_ctaReceberCHQ_EMITENTE: TStringField;
      db_ctaReceberCHQ_NOMECIDADE_UF: TStringField;
      db_ctaReceberCHQ_DESTINO: TStringField;
      db_ctaReceberFORMA_PAGTO: TIntegerField;
      db_ctaReceberDEPARTAMENTO: TIntegerField;
      db_ctaReceberDESCONTO: TFloatField;
      db_ctaReceberDESCONTO_DATA: TSQLTimeStampField;
      db_ctaReceberENTRADA: TFloatField;
      db_ctaReceberPLANO_CONTAS: TStringField;
      db_ctaReceberHISTORICO: TStringField;
      db_ctaReceberOBSERVACAO: TStringField;
      db_ctaReceberGERARRECIBO: TStringField;
      db_ctaReceberGERARDUPLICATA: TStringField;
      db_ctaReceberGERARBOLETO: TStringField;
      db_ctaReceberNOSSONUMERO: TStringField;
      db_ctaReceberDESPESAS_BOLETO: TFloatField;
      db_ctaReceberDESPESAS_JUROS: TFloatField;
      db_ctaReceberDESPESAS_MULTA: TFloatField;
      db_ctaReceberDESPESAS_CARTORIO: TFloatField;
      db_ctaReceberDESPESAS_TOTAL: TFloatField;
      db_ctaReceberATRASADA: TStringField;
      db_ctaReceberQUITADO: TStringField;
      db_ctaReceberMOTIVO_BAIXA: TIntegerField;
      db_ctaReceberCOMPLEMENTAR: TStringField;
      db_CtaPagarCODIGO: TIntegerField;
      db_CtaPagarFORNECEDOR: TIntegerField;
      db_CtaPagarNOTAFISCAL: TIntegerField;
      db_CtaPagarSERIENF: TStringField;
      db_CtaPagarDATA: TSQLTimeStampField;
      db_CtaPagarVENCIMENTO: TSQLTimeStampField;
      db_CtaPagarDATA_PAGTO: TSQLTimeStampField;
      db_CtaPagarDOCUMENTO: TStringField;
      db_CtaPagarPARCELA: TIntegerField;
      db_CtaPagarCFOP: TIntegerField;
      db_CtaPagarESPECIE: TStringField;
      db_CtaPagarTIPO: TStringField;
      db_CtaPagarVALOR: TFloatField;
      db_CtaPagarVALOR_PAGO: TFloatField;
      db_CtaPagarVALOR_SALDO: TFloatField;
      db_CtaPagarCONTA_CREDITO: TIntegerField;
      db_CtaPagarCHQ_BANCO: TStringField;
      db_CtaPagarCHQ_AGENCIA: TStringField;
      db_CtaPagarCHQ_CONTA_CORRENTE: TStringField;
      db_CtaPagarCHQ_CODCIDADE: TStringField;
      db_CtaPagarCHQ_NOMECIDADE_UF: TStringField;
      db_CtaPagarCHQ_EMITENTE: TStringField;
      db_CtaPagarCHQ_DESTINO: TStringField;
      db_CtaPagarFORMA_PAGTO: TIntegerField;
      db_CtaPagarDEPARTAMENTO: TIntegerField;
      db_CtaPagarDESCONTO: TFloatField;
      db_CtaPagarPLANO_CONTAS: TStringField;
      db_CtaPagarHISTORICO: TStringField;
      db_CtaPagarOBSERVACAO: TStringField;
      db_CtaPagarGERARRECIBO: TStringField;
      db_CtaPagarNOSSONUMERO: TStringField;
      db_CtaPagarDESPESAS_BOLETO: TFloatField;
      db_CtaPagarDESPESAS_JUROS: TFloatField;
      db_CtaPagarDESPESAS_MULTA: TFloatField;
      db_CtaPagarDESPESAS_CARTORIO: TFloatField;
      db_CtaPagarDESPESAS_TOTAL: TFloatField;
      db_CtaPagarATRASADA: TStringField;
      db_CtaPagarQUITADO: TStringField;
      db_CtaPagarMOTIVO_BAIXA: TIntegerField;
      db_ctaReceberDESCONTO_USER: TIntegerField;
    db_CtaPagarFORNECEDOR_NOME: TStringField;
    db_CtaPagarCOMPLEMENTAR: TStringField;
    ACBrNFe1: TACBrNFe;
    db_CtaPagarCONTACAIXA: TIntegerField;
    db_ctaReceberCONTACAIXA: TIntegerField;
    db_ctaReceberGERARCOMPLEMENTO: TStringField;
    db_CtaPagarREMESSA: TIntegerField;
    db_CtaPagarCHECADO: TStringField;
    db_CtaPagarPAGTOTERCEIRIZADO: TStringField;
    db_ctaReceberPROTESTOSTATUS: TStringField;
    db_CtaPagarPROTESTOSTATUS: TStringField;
    db_ctaReceberEMPRESA: TIntegerField;
    db_CtaPagarEMPRESA: TIntegerField;
    ds_PedidoCompra: TDataSource;
    ds_PedidoCompraItens: TDataSource;
    db_PedidoCompra: TFDQuery;
    db_PedidoCompraItens: TFDQuery;
    db_PedidoCompraEMPRESA: TIntegerField;
    db_PedidoCompraCODIGO: TIntegerField;
    db_PedidoCompraDATA: TSQLTimeStampField;
    db_PedidoCompraDATA_ENTREGA: TSQLTimeStampField;
    db_PedidoCompraREQUISICAO: TIntegerField;
    db_PedidoCompraFORNECEDOR: TIntegerField;
    db_PedidoCompraTRANSPORTADORA: TIntegerField;
    db_PedidoCompraFORMAPAGTO: TIntegerField;
    db_PedidoCompraDEPARTAMENTO: TIntegerField;
    SPPEDIDOCOMPRA_CALCULAR: TFDStoredProc;
    db_PedidoCompraItensEMPRESA: TIntegerField;
    db_PedidoCompraItensCODIGO: TIntegerField;
    db_PedidoCompraItensPRODUTO: TStringField;
    db_PedidoCompraItensDESCRICAO: TStringField;
    db_PedidoCompraItensUND: TStringField;
    db_PedidoCompraItensQTDE_PEDIDA: TFloatField;
    db_PedidoCompraItensQTDE_ENTREGUE: TFloatField;
    db_PedidoCompraItensQTDE_RESTANTE: TFloatField;
    db_PedidoCompraItensVALOR_UNIT: TFloatField;
    db_PedidoCompraItensVALOR_TOTAL: TFloatField;
    db_PedidoCompraItensDESCONTO: TFloatField;
    db_PedidoCompraItensVLR_DESCONTO: TFloatField;
    db_PedidoCompraQTDE_PEDIDA: TFloatField;
    db_PedidoCompraQTDE_ENTREGUE: TFloatField;
    db_PedidoCompraVLR_TOTAL: TFloatField;
    db_PedidoCompraFRETE_VALOR: TFloatField;
    db_PedidoCompraFRETE_TIPO: TStringField;
    db_PedidoCompraOBSERVACAO: TStringField;
    db_PedidoCompraEFETIVADO: TStringField;
    db_PedidoCompraAPROVADO: TStringField;
    db_PedidoCompraFORNECEDORPEDIDO: TStringField;
    db_PedidoCompraUSUARIO: TIntegerField;
    db_ctaReceberDESCONTOVALOR: TFloatField;
    db_ctaReceberGERARREMESSA: TStringField;
    db_ctaReceberDESPESAS_JUROSVALOR: TFloatField;
    db_CtaPagarDESCONTOVALOR: TFloatField;
    db_CtaPagarDESPESAS_JUROSVALOR: TFloatField;
    db_ctaReceberSELECIONADO: TStringField;
    db_ctaReceberDESCONTADO: TStringField;
    db_ctaReceberPAGAMENTOTITULO: TStringField;
    db_ctaReceberCARTEIRA: TIntegerField;

    ACBrMail1: TACBrMail;
    ACBrValidador1: TACBrValidador;
    QryVenda: TFDQuery;
    QryVendaItem: TFDQuery;
    dsVenda: TDataSource;
    dsVendaItem: TDataSource;
    ACBrPosPrinter1: TACBrPosPrinter;
    ACBrIntegrador1: TACBrIntegrador;
    ACBrSATExtratoFortes1: TACBrSATExtratoFortes;
    ACBrSATExtratoESCPOS1: TACBrSATExtratoESCPOS;
    ACBrSAT1: TACBrSAT;
    procedure db_ctaReceberNewRecord(DataSet: TDataSet);
    procedure db_CtaPagarNewRecord(DataSet: TDataSet);
    procedure db_CtaPagarFORNECEDORChange(Sender: TField);
    procedure db_ctaReceberCLIENTEChange(Sender: TField);
    procedure db_CtaPagarBeforePost(DataSet: TDataSet);
    procedure db_ParametrosBeforeOpen(DataSet: TDataSet);
    procedure db_ctaReceberBeforeOpen(DataSet: TDataSet);
    procedure db_CtaPagarBeforeOpen(DataSet: TDataSet);
    procedure db_PedidoCompraItensBeforePost(DataSet: TDataSet);
    procedure db_PedidoCompraBeforeOpen(DataSet: TDataSet);
    procedure db_PedidoCompraItensAfterDelete(DataSet: TDataSet);
    procedure db_PedidoCompraItensAfterPost(DataSet: TDataSet);
    procedure db_PedidoCompraItensPRODUTOChange(Sender: TField);
    procedure db_PedidoCompraNewRecord(DataSet: TDataSet);
    procedure db_PedidoCompraBeforePost(DataSet: TDataSet);
    procedure db_PedidoCompraAfterClose(DataSet: TDataSet);
    procedure db_ctaReceberAfterClose(DataSet: TDataSet);
    procedure db_CtaPagarAfterClose(DataSet: TDataSet);
    procedure db_PedidoCompraAfterPost(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure QryVendaAfterClose(DataSet: TDataSet);
    procedure QryVendaBeforeOpen(DataSet: TDataSet);
    procedure QryVendaNewRecord(DataSet: TDataSet);
    procedure QryVendaItemAfterPost(DataSet: TDataSet);
    procedure QryVendaItemBeforePost(DataSet: TDataSet);
    procedure QryVendaAfterPost(DataSet: TDataSet);


   private
      { Private declarations }
   public
      { Public declarations }
      FContigencia        : Boolean;

      DANFE_FastReport    : TACBrNFeDANFEFR;
      DANFE_FortesReport  : TACBrNFeDANFeRL;
      procedure prcDANFELogo;
      Function GerarNumeroNotaFiscal(nVenda: integer): integer;
      Function GerarLote(): integer;
      procedure GerarNFe(NumNFe: integer);
      procedure SetGerarDANFE;

      procedure Calcular_VendaItens;
      Function RetornaImposto(TipoImposto: String): Real;
      Function GerarNumeroNFe(nVenda: integer): integer;
      procedure prcPedidoCompraCalcular;
      procedure SetEmailConfig;
      procedure SetCertificados;
   end;

var
   BaseDados: TBaseDados;

   Ok: Boolean;
   StreamMemo: TMemoryStream;

implementation

uses FPrincipal, Biblioteca, Global, FCadClientes,
   F_RelEst_Historico, SQLServer, FReciboImprimir, App.Constantes, App.Funcoes;

{$R *.dfm}

procedure TBaseDados.DataModuleCreate(Sender: TObject);
begin
//
end;


//--------------------------------------------------------------------
// NF-e
//--------------------------------------------------------------------
procedure TBaseDados.SetGerarDANFE;
begin
  if (DANFE_FastReport<>Nil) or (DANFE_FortesReport<>Nil) then
    exit;
  FGerarDANFE := False;
  if FileExists(_NFE_LOCAL_DANFE) then
  begin
    if FParametros.NFE.GeradorDANFE = 'FORTESREPORT' then
    begin
      try
        DANFE_FortesReport := TACBrNFeDANFeRL.Create(Self);
        ACBrNFe1.DANFE   := DANFE_FortesReport;
        DANFE_FortesReport.PathPDF    := _NFE_LOCAL_PDF;
        DANFE_FortesReport.PosCanhoto := prRodape;
        DANFE_FortesReport.CasasDecimais.MaskqCom := '###,###,###,##0.00';;
        DANFE_FortesReport.CasasDecimais.MaskvUnCom := '###,###,###,##0.00';;
        FGerarDANFE := True;
      except
        FGerarDANFE := False;
      end;
    end;

    {
    if FParametros.NFE.GeradorDANFE = 'FASTREPORT' then
    begin
      try
        DANFE_FastReport := TACBrNFeDANFEFR.Create(Self);
        ACBrNFe1.DANFE   := DANFE_FastReport;
        DANFE_FastReport.PathPDF    := _NFE_LOCAL_PDF;
        DANFE_FastReport.PosCanhoto := prRodape;
        DANFE_FastReport.FastFile   := _NFE_LOCAL_DANFE;
        FGerarDANFE := True;
      except
        FGerarDANFE := False;
      end;
    end;
    }
  end;

  ACBrNFe1.Configuracoes.Arquivos.PathNFe      :=_NFE_LOCAL_GERADAS;
  ACBrNFe1.Configuracoes.Arquivos.PathInu      :=_NFE_LOCAL_INUTILIZADAS;
  ACBrNFe1.Configuracoes.Arquivos.PathEvento   :=_NFE_LOCAL_EVENTO;
  ACBrNFe1.Configuracoes.Arquivos.PathSalvar   :=_NFE_LOCAL_SALVAR;
  ACBrNFe1.Configuracoes.Arquivos.PathSchemas  :=_NFE_LOCAL_SCHEMA;
  //ACBrNFe1.Configuracoes.Arquivos.DownloadNFe.PathDownload :=_NFE_LOCAL_DOWNLOADS;
end;

procedure TBaseDados.SetCertificados;
var
   mVersaoDF         : TpcnVersaoDF;  // add: janeiro/2018
begin
  FContigencia      := FParametros.NFE.FormaEmissao = '2'; // 2=contigencia (nas configurações do sistema, na aba "NF-e" );
  mVersaoDF := TpcnVersaoDF(FParametros.NFE.VersaoNFe);

  ACBrNFe1.SSL.DescarregarCertificado;
  ACBrNFe1.NotasFiscais.Clear;
  if ACBrNFe1.DANFE<>nil then
    ACBrNFe1.DANFE.TipoDANFE                      := tiRetrato;
  ACBrNFe1.Configuracoes.Geral.ModeloDF           := moNFe;
  ACBrNFe1.Configuracoes.Geral.VersaoDF           := mVersaoDF;
  ACBrNFe1.Configuracoes.Geral.VersaoQRCode       := TpcnVersaoQrCode(db_Parametros.FieldByName('NFCE_QRCODE').AsInteger);
  ACBrNFe1.Configuracoes.Certificados.ArquivoPFX  := FParametros.NFE.CertArquivo;
  ACBrNFe1.Configuracoes.Certificados.Senha       := FParametros.NFE.CertSenha;
  ACBrNFe1.Configuracoes.Certificados.NumeroSerie := FParametros.NFE.CertSerie;
  ACBrNFe1.Configuracoes.WebServices.UF           := FParametros.Empresa.UF;

  //----------------------------------------------------------------------
  // Configuracoes de pastas esquemas
  //----------------------------------------------------------------------
  ACBrNFe1.Configuracoes.Geral.IdCSC := db_Parametros.FieldByName('NFCE_IDCSC').AsString; // ATENCAO: SEM ESSA INFORMACAO [IdCSC] VOCÊ NÃO CONSEGUIRA  EMITIR NFC-E.;
  ACBrNFe1.Configuracoes.Geral.CSC   := db_Parametros.FieldByName('NFCE_CSC').AsString;   // ATENCAO: SEM ESSA INFORMACAO [CSC] VOCÊ NÃO CONSEGUIRA  EMITIR NFC-E.

  //----------------------------------------------------------------------
  // Configuracoes de pastas esquemas
  //----------------------------------------------------------------------
  ACBrNFe1.Configuracoes.Arquivos.PathNFe      :=_NFE_LOCAL_GERADAS;
  ACBrNFe1.Configuracoes.Arquivos.PathInu      :=_NFE_LOCAL_INUTILIZADAS;
  ACBrNFe1.Configuracoes.Arquivos.PathEvento   :=_NFE_LOCAL_EVENTO;
  ACBrNFe1.Configuracoes.Arquivos.PathSalvar   :=_NFE_LOCAL_SALVAR;
  ACBrNFe1.Configuracoes.Arquivos.PathSchemas  :=_NFE_LOCAL_SCHEMA;
  //ACBrNFe1.Configuracoes.Arquivos.DownloadNFe.PathDownload :=_NFE_LOCAL_DOWNLOADS;

  //----------------------------------------------------------------------
  // Verificar ambiente (se em producao ou homologacao)
  //----------------------------------------------------------------------
  ACBrNFe1.Configuracoes.WebServices.Ambiente := TpcnTipoAmbiente(FParametros.NFE.Ambiente);

  //----------------------------------------------------------------------
  // Se for modo contigencia
  //----------------------------------------------------------------------
  if FContigencia then
    ACBrNFe1.Configuracoes.Geral.FormaEmissao       := teContingencia
  else
    ACBrNFe1.Configuracoes.Geral.FormaEmissao       := teNormal;

  //----------------------------------------------------------------------
  // Definir tipo de SSL
  //----------------------------------------------------------------------
  SetCertificadoDigital(ACBrNFe1,db_Parametros.FieldByName('SSL_TIPO').AsString);

  SetEmailConfig();
end;

procedure TBaseDados.SetEmailConfig;
begin
  ACBrMail1.Host                 := FParametros.Email.SMTPHost;
  ACBrMail1.Port                 := FParametros.Email.SMTPPorta.ToString;
  ACBrMail1.Username             := FParametros.Email.Usuario;
  ACBrMail1.Password             := FParametros.Email.Senha;
  ACBrMail1.From                 := FParametros.Email.Usuario;
  ACBrMail1.SetSSL               := FParametros.Email.SSLTSL; // SSL - ConexÃ£o Segura
  ACBrMail1.SetTLS               := FParametros.Email.SSLTSL; // Auto TLS
  ACBrMail1.ReadingConfirmation  := False;              // Nao pedir confirmacao de leitura do email
  ACBrMail1.UseThread            := False;              // Aguarda Envio do Email(nao usa thread)
  ACBrMail1.FromName             := FParametros.Email.Nome;
end;

procedure TBaseDados.prcDANFELogo;
begin
   if ACBrNFe1.DANFE <> nil then
   begin
     if FileExists(db_Parametros.FieldByName('INF_IMGIMPRIMIR').AsString) then
       ACBrNFe1.DANFE.Logo       := db_Parametros.FieldByName('INF_IMGIMPRIMIR').AsString;
   end;
end;

procedure TBaseDados.GerarNFe(NumNFe: integer);
var
   nSequencia : integer;
   ncst : Real;
   nlQTDE, nlValorUnit, nlValorTotal : Real;
   mFaturas          : Boolean;
   mCodANP           : String;
   mInscricao        : String;
   mCNPJ             : String;
   mTipoPessoa       : String;
   mParcela          : String;
begin
   mFaturas          := False;
   inNotaFiscal      := QryVenda.FieldByName('NOTAFISCAL').AsInteger;
   inCliente         := QryVenda.FieldByName('CLIENTE').AsInteger;
   inTransportadora  := QryVenda.FieldByName('TRANSPORTADORA').AsInteger;
   prcDANFELogo;
   ACBrNFe1.NotasFiscais.Clear;
   SetGerarDANFE();
   SetCertificados();

   with ACBrNFe1.NotasFiscais.Add.NFe do
   begin
      //|+--------------------------------[ infRespTec ] ---------------------------------------+|
      //||  Responsável Técnico do Software Emissor de NF-e/NFC-e                               ||
      //||--------------------------------------------------------------------------------------||
      //||--------------------------------------------------------------------------------------||
      //|| ATENÇÃO PROGRAMADOR:                                                                 ||
      //|| Fiz as atualizações do ACBr dia 06/04/2019                                           ||
      //||                                                                                      ||
      //|| 1 - Se na compilação der erro aqui:  atualize seu ACBr via SVN.                      ||
      //||                                                                                      ||
      //|| 2 - Se der erro ao gerar NF-e: atualize os esquemas (.xsd) (use Schemas do ACBr)     ||
      //||                                                                                      ||
      //|+--------------------------------------------------------------------------------------+|
      if (StrToIntDef(FParametros.NFE.RespTec_IDCSRT,0)>0) and (FParametros.NFE.RespTec_CSRT <> '') then
      begin
        ACBrNFe1.Configuracoes.RespTec.IdCSRT  := StrToIntDef(FParametros.NFE.RespTec_IDCSRT,0);    // Conforme indicação
        ACBrNFe1.Configuracoes.RespTec.CSRT    := FParametros.NFE.RespTec_CSRT;        // Conforme indicação
        infRespTec.idCSRT   := StrToIntDef(FParametros.NFE.RespTec_IDCSRT,0);;     // Conforme indicação
      end;
      infRespTec.CNPJ     := OnlyNumber(FParametros.NFE.RespTec_CNPJ);
      infRespTec.xContato := FParametros.NFE.RespTec_xContato;
      infRespTec.email    := FParametros.NFE.RespTec_email;
      infRespTec.fone     := OnlyNumber(FParametros.NFE.RespTec_Fone);
      //--------------------------------------------------------------------------
      //
      //--------------------------------------------------------------------------
      Ide.natOp          := fnCFOP_NOME( QryVenda.FieldByName('CFOP').AsInteger );
      Ide.modelo        := db_Parametros.FieldByName('NFE_MODELO').AsInteger;
      Ide.serie         := db_Parametros.FieldByName('NFE_SERIE').AsInteger;
      Ide.nNF           := NumNFe;
      Ide.cNF           := NumNFe;
      Ide.dEmi          := QryVenda.FieldByName('EMISSAO').AsDateTime;
      Ide.dSaiEnt       := QryVenda.FieldByName('DATA_ENTRADASAIDA').AsDateTime;
      Ide.hSaiEnt       := Time;
      if QryVenda.FieldByName('OPERACAO').AsString='S' then
         Ide.tpNF          :=  tnSaida;
      if QryVenda.FieldByName('OPERACAO').AsString='E' then
         Ide.tpNF          := tnEntrada;
      Ide.tpEmis := teNormal;
      if FContigencia then
      begin
        Ide.tpEmis := teContingencia;
        Ide.dhCont := now;
        Ide.xJust  := 'Problema tecnico com a internet.';
      end
      else
      begin
        //Ide.tpEmis      := StrToTpEmis(Ok,  db_Parametros.FieldByName('NFE_FORMAEMISSAO').AsString);
        Ide.tpEmis      := StrToTpEmis(Ok,  FParametros.NFE.FormaEmissao);

      end;
      Ide.tpAmb := TpcnTipoAmbiente(FParametros.NFE.Ambiente);

      Ide.verProc       := 'ACBr'; // Versão do seu sistema
      Ide.cUF           := UFtoCUF(db_Parametros.FieldByName('UF').AsString);
      Ide.cMunFG        := db_Parametros.FieldByName('IDCIDADE').AsInteger;
      if ACBrNFe1.Configuracoes.Geral.VersaoDF=ve400 then
        Ide.indPres := TpcnPresencaComprador.pcPresencial; // 5
      Ide.finNFe                := fnNormal;
      Emit.CNPJCPF              := db_Parametros.FieldByName('CNPJ').AsString;
      Emit.IE                   := db_Parametros.FieldByName('IE').AsString;
      Emit.xNome                := db_Parametros.FieldByName('NOME').AsString;
      Emit.xFant                := db_Parametros.FieldByName('NOMEFANTASIA').AsString;
      Emit.EnderEmit.fone       := db_Parametros.FieldByName('FONE').AsString;
      Emit.EnderEmit.CEP        :=  StrToInt(SONUMERO(db_Parametros.FieldByName('CEP').AsString));
      Emit.EnderEmit.xLgr       := db_Parametros.FieldByName('ENDERECO').AsString;
      Emit.EnderEmit.nro        := db_Parametros.FieldByName('NUMERO').AsString;
      Emit.EnderEmit.xCpl       := db_Parametros.FieldByName('COMPLEMENTO').AsString;
      Emit.EnderEmit.xBairro    := db_Parametros.FieldByName('BAIRRO').AsString;
      Emit.EnderEmit.cMun       := db_Parametros.FieldByName('IDCIDADE').AsInteger;
      Emit.EnderEmit.xMun       := db_Parametros.FieldByName('CIDADE').AsString;
      Emit.EnderEmit.UF         := db_Parametros.FieldByName('UF').AsString;
      Emit.EnderEmit.cPais      := db_Parametros.FieldByName('IDPAIS').AsInteger;
      Emit.EnderEmit.xPais      := db_Parametros.FieldByName('NOMEPAIS').AsString;
      Emit.IEST := '';
      Emit.IM := ''; // Preencher no caso de existir serviços na nota
      Emit.CNAE := ''; // Verifique na cidade do emissor da NFe se é permitido


    {************************************************************************
     ** De acordo com o Ministério da Fazenda - 2012:                      **
     **    0 – Simples Nacional (1)                                        **
     **    1 – Simples Nacional excesso de sublimite da receita bruta (2)  **
     **    2 – Regime Normal (3)                                           **
     ************************************************************************
     **  se a empresa FOR optante do simples, pegar aliquota do SIMPLES    **
     ***********************************************************************}
      Emit.CRT := TpcnCRT(FParametros.Empresa.REGIME_TRIB);

      mTipoPessoa    := GetClienteCampo(inCliente,'CLASSIFICACAO');
      mCNPJ          := TiraPontos( GetClienteCampo(inCliente,'CPF_CNPJ') );
      mInscricao     := TiraPontos( UpperCase(GetClienteCampo(inCliente,'RG_IE')) );
      //---------------------------------------------------------------------------------------------------
      // TRATAMENTOS PARA INSCRICAO ESTADUAL
      //--------------------------------------------------------------------------------------------------
      Ide.indFinal := cfNao;
      Ide.idDest := doInterna; // Quando for operação dentro do estado
      if (db_Parametros.FieldByName('UF').AsString<>GetClienteCampo(inCliente,'UF')) then
        Ide.idDest := doInterestadual; // Quando for operação fora do estado
      if (mTipoPessoa = 'F') then
      Begin
        Dest.IE        := ''; // Em BRANCO
        Dest.indIEDest := inNaoContribuinte;
        Ide.indFinal   := cfConsumidorFinal;
      End;
      // Inscrição Estadual [Para quem tem CNPJ e não tem Inscrição estadual]
      if (mTipoPessoa = 'J') and (mInscricao='ISENTO') Then
      Begin
        Dest.IE        := 'ISENTO';
        Dest.indIEDest := inIsento;
      End;
      // Inscrição Estadual [Para quem tem CNPJ e tem Inscrição estadual]
      if (mTipoPessoa = 'J') and (mInscricao<>'ISENTO') Then
      Begin
        Dest.IE        := mInscricao;
        Dest.indIEDest := inContribuinte;
      End;
      //---------------------------------------------------------------------------------------------------
      //
      //--------------------------------------------------------------------------------------------------
      Dest.CNPJCPF           := mCNPJ;
      Dest.ISUF              := '';
      Dest.xNome             := Copy( GetClienteCampo(inCliente,'NOME'),1,60);
      Dest.EnderDest.fone    := SONUMERO(Cliente_Endereco(inCliente,'DDD_FONE') + Cliente_Endereco(inCliente,'FONE'));
      Dest.EnderDest.CEP     := StrToInt(SONUMERO(Cliente_Endereco(inCliente,'CEP')));
      Dest.EnderDest.xLgr    := Cliente_Endereco(inCliente,'ENDERECO');
      Dest.EnderDest.nro     := Cliente_Endereco(inCliente,'NUMERO');
      Dest.EnderDest.xCpl    := Cliente_Endereco(inCliente,'COMPLEMENTO');
      Dest.EnderDest.xBairro := Cliente_Endereco(inCliente,'BAIRRO');
      Dest.EnderDest.cMun    := StrToIntDef( Cliente_Endereco(inCliente,'IDCIDADE'), 0);
      Dest.EnderDest.xMun    := Cliente_Endereco(inCliente,'NOMECIDADE');
      Dest.EnderDest.UF      := Cliente_Endereco(inCliente,'UF');
      Dest.EnderDest.cPais   := 1058;
      Dest.EnderDest.xPais   := 'BRASIL';

      //------------------------------------------------------------------------
      // PRODUTOS:
      //------------------------------------------------------------------------

      strReferencia :='';
      nSequencia := 0;
      QryVendaItem.First;
      while not QryVendaItem.Eof do
      begin
         strReferencia :=QryVendaItem.FieldByName('PRODUTO').AsString;
         with Det.Add do
         begin
            inc(nSequencia);

            if ACBrNFe1.Configuracoes.Geral.VersaoDF=ve400 then
              Prod.indEscala :=ieNenhum;

            Prod.nItem            := nSequencia;
            Prod.cProd            := QryVendaItem.FieldByName('PRODUTO').AsString;
            Prod.xProd            := QryVendaItem.FieldByName('DESCRICAO').AsString;
            Prod.EXTIPI           := '';
            nlQTDE                := 0;
            nlValorUnit           := 0;
            nlValorTotal          := 0;

            nlQTDE                := ArrendondarDecimais( QryVendaItem.FieldByName('QUANTIDADE').AsFloat );
            nlValorUnit           := ArrendondarDecimais( QryVendaItem.FieldByName('VLR_UNIT').AsFloat );
            nlValorTotal          := ArrendondarDecimais( nlQTDE * nlValorUnit );

            Prod.uCom             := QryVendaItem.FieldByName('UND').AsString;
            Prod.qCom             := nlQTDE ;
            Prod.vUnCom           := nlValorUnit;
            Prod.vProd            := nlValorTotal;
            Prod.uTrib            := QryVendaItem.FieldByName('UND').AsString;
            Prod.qTrib            := nlQTDE;
            Prod.vUnTrib          := nlValorUnit;
            Prod.vDesc            := ArrendondarDecimais( QryVendaItem.FieldByName('VLR_DESCONTO').AsFloat );
            Prod.IndTot           := itSomaTotalNFe;

            Prod.NCM    := QryVendaItem.FieldByName('NCM').AsString;
            Prod.CEST   := QryVendaItem.FieldByName('CEST').AsString;
            Prod.CFOP   := QryVendaItem.FieldByName('NCFOP').AsString;

            //-----------------------------------------------------------------------
            // Normativa SEFAZ: informar codigo ANP em caso de uso da CFOP 5.656
            //-----------------------------------------------------------------------
            if (QryVenda.FieldByName('CFOP').AsInteger=5656) then
            begin
              mCodANP            := GetProdutoCampo(QryVendaItem.FieldByName('PRODUTO').AsString,'ANP');
              Prod.comb.cProdANP := StrToIntDef(mCodANP,0);
              Prod.comb.UFcons   := FParametros.Empresa.UF;
            end;
            mCodANP := '';
            {
            Prod.vFrete := 0;
            Prod.vSeg   := 0;
            Prod.vOutro := 0;
            infAdProd   := '';
            }

            //-------------------------------------------------------------------------------------------
            //-- [ATUALIZAR] Tratar o CSOSN x CST de acordo com a legislação vigente
            //-------------------------------------------------------------------------------------------
            { TODO : REVISAR "BASE DE CALCULO" }
            with Imposto do
            begin
               with ICMS do
               begin
                  ncst :=StrToIntDef(QryVendaItem.FieldByName('SITUACAO_TRIBUTARIA').AsString,40);
                  if (Dest.indIEDest <> inNaoContribuinte) then
                  begin
                    if (StrToIntDef(QryVendaItem.FieldByName('SITUACAO_TRIBUTARIA').AsString,0)<1) or (ncst<1) then
                    begin
                       case db_Parametros.FieldByName('REGIME_TRIB').AsInteger of
                            1: CST := cst00;  // 1 Simples Nacional
                            2: CST := cst00;  // 2 Simples Nacional – excesso de receita bruta
                            3: CST := cst00;  // 3 Regime Normal
                       end;
                    end
                    else
                    begin
                      if  (ncst>=100) then
                      begin
                        ncst := ncst / 10;
                      end;
                      CST  :=  StrToCSTICMS(OK, FloatToStr(ncst) );
                    end;
                  end;

                  { TODO : REVISAR "CSOSN" }
                  case db_Parametros.FieldByName('REGIME_TRIB').AsInteger of
                       1: begin
                            ICMS.CSOSN     := csosn101;     // 101 – Tributada pelo Simples Nacional com permissão de crédito
                          end;

                       2: begin
                            ICMS.CSOSN     := csosn102;     // 102 – Tributada pelo Simples Nacional sem permissão de crédito
                          end;

                       3: begin
                            ICMS.CSOSN     := csosn400;     // 400 – Não tributada pelo Simples Nacional
                          end;
                  end;
                  if (Dest.indIEDest = inNaoContribuinte) then
                  begin
                    ICMS.CSOSN := csosn102;
                  end;

                  ICMS.orig      := oeNacional;
                  ICMS.modBC     := dbiValorOperacao;
                  ICMS.vBC       := nlValorTotal;
                  ICMS.pICMS     := ( QryVendaItem.FieldByName('ICMS').AsFloat );
                  ICMS.vICMS     := ( QryVendaItem.FieldByName('VLR_ICMS').AsFloat );
                  ICMS.modBCST   := dbisMargemValorAgregado;
               end;
            end;
            Prod.cEAN       := GetProdutoCampo(QryVendaItem.FieldByName('PRODUTO').AsString,'CODIGO_BARRA');;
            Prod.cEANTrib   := GetProdutoCampo(QryVendaItem.FieldByName('PRODUTO').AsString,'CODIGO_BARRA');;
            if Prod.cEAN.IsEmpty then
              Prod.cEAN       := 'SEM GTIN';
            if Prod.cEANTrib.IsEmpty then
              Prod.cEANTrib   := 'SEM GTIN';
         end;
         QryVendaItem.next;
      End;

      { TODO : REVISAR "BASE DE CALCULO" }
      case db_Parametros.FieldByName('REGIME_TRIB').AsInteger of
         0,  1 : begin
                   Total.ICMSTot.vBC    := 0;
                   Total.ICMSTot.vICMS  := 0;
                 end ;

             2 : begin
                   Total.ICMSTot.vBC    := 0;
                   Total.ICMSTot.vICMS  := 0;
                 end;

             3 : begin
                   Total.ICMSTot.vBC    := (QryVenda.FieldByName('ICMS_BASECALCULO').AsFloat);
                   Total.ICMSTot.vICMS  := ( QryVenda.FieldByName('ICMS_VALOR').AsFloat);
                 end;

      end;

      Total.ICMSTot.vProd         := ArrendondarDecimais( QryVenda.FieldByName('VALOR_PRODUTOS').AsFloat);
      Total.ICMSTot.vDesc         := ArrendondarDecimais( QryVenda.FieldByName('VLR_DESCONTO').AsFloat);
      Total.ICMSTot.vNF           := ArrendondarDecimais( QryVenda.FieldByName('TOTAL_NF').AsFloat);

    {***********************************************************************
       0 Contratação do Frete por conta do Remetente (CIF);
       1 Contratação do Frete por conta do destinatário/remetente (FOB);
       2 Contratação do Frete por conta de terceiros;
       3 Transporte próprio por conta do remetente;
       4 Transporte próprio por conta do destinatário;
       9 Sem Transportadora.
     ***********************************************************************}

      case StrToIntDef(QryVenda.FieldByName('FRETE').AsString,0) of
            0: Transp.modFrete := mfContaEmitente;
            1: Transp.modFrete := mfContaDestinatario;
            2: Transp.modFrete := mfContaTerceiros;
            3: Transp.modFrete := mfProprioRemetente;
            4: Transp.modFrete := mfProprioDestinatario;
            9: Transp.modFrete := mfSemFrete;
      end;

      if inTransportadora>0 then
      begin
        Transp.Transporta.CNPJCPF := SONUMERO( GetClienteCampo(inTransportadora,'CPF_CNPJ') );
        Transp.Transporta.IE :=      SONUMERO( GetClienteCampo(inTransportadora,'RG_IE') );
        Transp.Transporta.xNome :=   GetClienteCampo(inTransportadora,'NOME');
        Transp.Transporta.xEnder :=  GetClienteCampo(inTransportadora,'ENDERECO');
        Transp.Transporta.xMun :=    GetClienteCampo(inTransportadora,'NOMECIDADE');
        Transp.Transporta.UF :=      GetClienteCampo(inTransportadora,'UF');

        with Transp.Vol.Add do
        begin
           qVol := QryVenda.FieldByName('FRETE_QUANTIDADE').AsInteger;
           esp := QryVenda.FieldByName('FRETE_ESPECIE').AsString;
           marca := QryVenda.FieldByName('FRETE_MARCA').AsString;
           nVol := QryVenda.FieldByName('FRETE_NUMERO').AsString;
           pesoB := QryVenda.FieldByName('FRETE_PBRUTO').AsFloat;
           pesoL := QryVenda.FieldByName('FRETE_PLIQUIDO').AsFloat;

           // Lacres do volume. Pode ser adicionado vários
           // Lacres.Add.nLacre := '';
        end;
      end;

      Cobr.Fat.nFat  := inNotaFiscal.ToString;
      Cobr.Fat.vOrig := QryVenda.FieldByName('TOTAL_NF').AsFloat;
      Cobr.Fat.vDesc := 0;
      Cobr.Fat.vLiq  := QryVenda.FieldByName('TOTAL_NF').AsFloat;
     if not (Ide.finNFe in [fnDevolucao, fnAjuste]) then
     begin
       //------------------------------------------------------------------------
       // se houve forma de pagamento
       //------------------------------------------------------------------------
       if QryVenda.FieldByName('FORMAPAGTO').AsInteger>0 then
       begin
         QueryObjCriar(tblVendasFaturas);
         try
           prcViewFaturas(tblVendasFaturas,inCliente,inNotaFiscal);
           mFaturas := tblVendasFaturas.RecordCount >0;
           if mFaturas then
           begin
             while not tblVendasFaturas.Eof do
             begin
                with Cobr.Dup.Add do
                begin
                   mParcela  := ZeroEsquerda(tblVendasFaturas.FieldByName('PARCELA').AsString,3);
                   nDup      := mParcela;
                   dVenc     := tblVendasFaturas.FieldByName('VENCIMENTO').AsDateTime;
                   vDup      := ArrendondarDecimais(tblVendasFaturas.FieldByName('VALOR').AsFloat);
                end;
                tblVendasFaturas.next;
             end;
              with pag.Add do
              begin
                 tPag      := TpcnFormaPagamento.fpBoletoBancario;
                 vPag      := ArrendondarDecimais(QryVenda.FieldByName('TOTAL_NF').AsFloat);
              end;

           end
           else
           begin
              if ACBrNFe1.Configuracoes.Geral.VersaoDF=ve400 then
              begin
                with pag.Add do
                begin
                   tPag      := TpcnFormaPagamento.fpOutro;
                   vPag      := ArrendondarDecimais(QryVenda.FieldByName('TOTAL_NF').AsFloat);
                end;
              end;
           end;
         finally
           QueryObjLiberar(tblVendasFaturas);
         end;
       end
       else
       begin
         if ACBrNFe1.Configuracoes.Geral.VersaoDF=ve400 then
         begin
           with pag.Add do
           begin
              tPag      := TpcnFormaPagamento.fpOutro;
              vPag      := ArrendondarDecimais(QryVenda.FieldByName('TOTAL_NF').AsFloat);
           end;
         end;
       end;
     end;

      with InfAdic.obsCont.Add do
      begin
         xCampo := '.';
         xTexto := '.';
      end;

      with InfAdic.obsFisco.Add do
      begin
         xCampo := '.';
         xTexto := '.';
      end;

      InfAdic.infCpl     := QryVenda.FieldByName('OBS1').AsString;
      InfAdic.infAdFisco := QryVenda.FieldByName('OBS2').AsString;

      exporta.UFembarq := '';;
      exporta.xLocEmbarq := '';

      compra.xNEmp := '';
      compra.xPed := '';
      compra.xCont := '';

   end;

end;

Function TBaseDados.GerarNumeroNotaFiscal(nVenda: integer): integer;
begin
   /// ////////////////////////////////////////////////////////////////////
   /// Checar se ja possui numero de nota fiscal. Nao possui, gerar.
   /// ////////////////////////////////////////////////////////////////////
   QryVenda.close;
   QryVenda.ParamByname('CODIGO').AsInteger := nVenda;
   QryVenda.open;
   if UpperCase(QryVenda.FieldByName('TIPONF').AsString) = 'NFE' then
      result := GerarNumeroNFe(nVenda);
end;

function TBaseDados.GerarNumeroNFe(nVenda: integer): integer;
begin
   SetCertificados();
   if (QryVenda.FieldByName('NOTAFISCAL').AsInteger > 0) Then
     exit;
   /// continuar e gerar o proximo numero de nota fiscal.

   if not db_Parametros.active then
      db_Parametros.open;

   db_Parametros.Refresh;
   db_Parametros.Edit;
   db_Parametros.FieldByName('NFE_SEQUENCIA').AsInteger := db_Parametros.FieldByName('NFE_SEQUENCIA').AsInteger + 1;
   db_Parametros.Post;
   db_Parametros.Refresh;

   QryVenda.Edit;
   QryVenda.FieldByName('NOTAFISCAL').AsInteger := db_Parametros.FieldByName('NFE_SEQUENCIA').AsInteger;
   QryVenda.Post;
   QryVenda.Refresh;
   Result := db_Parametros.FieldByName('NFE_SEQUENCIA').AsInteger;
   prcRegistrarUltimaVenda(QryVenda.FieldByName('CLIENTE').AsInteger,'NFE');
end;


function TBaseDados.GerarLote(): integer;
begin
   Result := 0;
   db_Parametros.Refresh;
   db_Parametros.Edit;
   db_Parametros.FieldByName('NFE_LOTE').AsInteger :=     db_Parametros.FieldByName('NFE_LOTE').AsInteger + 1;
   db_Parametros.Post;
   db_Parametros.Refresh;
   result := db_Parametros.FieldByName('NFE_LOTE').AsInteger;
end;

procedure TBaseDados.Calcular_VendaItens;
Begin

   Quantidade := 0;
   Vlr_Unit := 0;
   SubTotal := 0;
   wFloat[0] := 0;
   wFloat[1] := 0;

   Quantidade := QryVendaItem.FieldByName('QUANTIDADE').AsFloat;
   Vlr_Unit := (QryVendaItem.FieldByName('VLR_UNIT').AsFloat);
   wFloat[0] := (QryVendaItem.FieldByName('DESCONTO').AsFloat);

   // quantidade X valor Unitário=subtotal
   SubTotal := ((Quantidade) * (Vlr_Unit));
   wFloat[1] := fncGeraPercentual((SubTotal), (wFloat[0]) );
   SubTotal := ((SubTotal) - (wFloat[1]));

   Wtexto[0] := FormatFloat('##0.00', SubTotal);
   Wtexto[1] := FormatFloat('##0.00', wFloat[1]);
   SubTotal := StrToFloat(Wtexto[0]);
   wFloat[1] := StrToFloat(Wtexto[1]);

   QryVendaItem.FieldByName('VLR_DESCONTO').AsFloat := (wFloat[1]);
   QryVendaItem.FieldByName('VLR_TOTAL').AsFloat := (SubTotal);

   Quantidade := 0;
   Vlr_Unit := 0;
   SubTotal := 0;
   wFloat[0] := 0;
   wFloat[1] := 0;

End;


procedure TBaseDados.db_CtaPagarAfterClose(DataSet: TDataSet);
begin
  db_CtaPagar.ParamByName('CODIGO').Clear;

end;

procedure TBaseDados.db_CtaPagarBeforeOpen(DataSet: TDataSet);
begin
   db_CtaPagar.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;
end;

procedure TBaseDados.db_CtaPagarBeforePost(DataSet: TDataSet);
begin
 if db_CtaPagar.FieldByName('FORNECEDOR').AsInteger<1 then
 begin
    informar('campo Fornecedor é obrigatório ');
    abort;
 end;
end;

procedure TBaseDados.db_CtaPagarFORNECEDORChange(Sender: TField);
begin

   db_CtaPagar.FieldByName('DEPARTAMENTO').AsInteger   := BuscaClienteCentroCusto(db_CtaPagar.FieldByName('FORNECEDOR').AsInteger);
   db_CtaPagar.FieldByName('CFOP').AsInteger           := fncClienteBuscaCFOP(db_CtaPagar.FieldByName('FORNECEDOR').AsInteger);
   db_CtaPagar.FieldByName('PLANO_CONTAS').AsString    := fncBuscaPlanoContasCliente(db_CtaPagar.FieldByName('FORNECEDOR').AsInteger);


end;

procedure TBaseDados.db_CtaPagarNewRecord(DataSet: TDataSet);
begin
   db_CtaPagar.FieldByName('EMPRESA').AsInteger   := FSistema.Empresa ;
   db_CtaPagar.FieldByName('FORNECEDOR').AsInteger := 0;
   db_CtaPagar.FieldByName('NOTAFISCAL').AsInteger := 0;
   db_CtaPagar.FieldByName('DATA').AsDateTime := Date;
   db_CtaPagar.FieldByName('QUITADO').AsString := 'N';

end;

procedure TBaseDados.db_ctaReceberAfterClose(DataSet: TDataSet);
begin
  db_ctaReceber.ParamByName('CODIGO').Clear;

end;

procedure TBaseDados.db_ctaReceberBeforeOpen(DataSet: TDataSet);
begin
   db_ctaReceber.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;

end;

procedure TBaseDados.db_ctaReceberCLIENTEChange(Sender: TField);
begin
   db_ctaReceber.FieldByName('DEPARTAMENTO').AsInteger   := BuscaClienteCentroCusto(db_ctaReceber.FieldByName('CLIENTE').AsInteger);
   db_ctaReceber.FieldByName('CFOP').AsInteger           := fncClienteBuscaCFOP(db_ctaReceber.FieldByName('CLIENTE').AsInteger);
   db_ctaReceber.FieldByName('PLANO_CONTAS').AsString    := fncBuscaPlanoContasCliente(db_ctaReceber.FieldByName('CLIENTE').AsInteger);

end;

procedure TBaseDados.db_ctaReceberNewRecord(DataSet: TDataSet);
begin
   db_ctaReceber.FieldByName('EMPRESA').AsInteger   := FSistema.Empresa ;
   db_ctaReceber.FieldByName('CLIENTE').AsInteger := 0;
   db_ctaReceber.FieldByName('NOTAFISCAL').AsInteger := 0;
   db_ctaReceber.FieldByName('DATA').AsDateTime := Date;
   db_ctaReceber.FieldByName('QUITADO').AsString := 'N';
end;

procedure TBaseDados.db_ParametrosBeforeOpen(DataSet: TDataSet);
begin
   db_Parametros.ParamByName('EMPRESA').Clear;
   db_Parametros.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;
end;

procedure TBaseDados.db_PedidoCompraAfterClose(DataSet: TDataSet);
begin
  db_PedidoCompra.ParamByName('CODIGO').Clear;
end;

procedure TBaseDados.db_PedidoCompraAfterPost(DataSet: TDataSet);
begin
   db_PedidoCompra.ParamByName('CODIGO').AsInteger   := db_PedidoCompra.FieldByName('CODIGO').AsInteger;
end;

procedure TBaseDados.db_PedidoCompraBeforeOpen(DataSet: TDataSet);
begin
   db_PedidoCompra.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;
end;

procedure TBaseDados.db_PedidoCompraBeforePost(DataSet: TDataSet);
begin

   if (db_PedidoCompra.FieldByName('FORNECEDOR').AsInteger=0) Then
   begin
     AvisoSistema('Campo [Fornecedor] é obrigatório.');
     abort;
   end;

   if (db_PedidoCompra.FieldByName('TRANSPORTADORA').AsInteger>0)  and
      (db_PedidoCompra.FieldByName('FRETE_TIPO').AsString='')  Then
   begin
     AvisoSistema('Você informou uma [Transportadora], informe tambem o campo [Frete por conta] ');
     abort;
   end;


   if (db_PedidoCompra.FieldByName('DEPARTAMENTO').AsInteger=0) Then
   begin
     AvisoSistema('Campo [Departamento] é obrigatório.');
     abort;
   end;

   db_PedidoCompra.FieldByName('APROVADO').AsString :='S';

end;

procedure TBaseDados.prcPedidoCompraCalcular;
begin

   SPPEDIDOCOMPRA_CALCULAR.ParamByName('EMPRESA').AsInteger :=  FSistema.Empresa;
   SPPEDIDOCOMPRA_CALCULAR.ParamByName('CODIGO').AsInteger :=  db_PedidoCompra.FieldByName('CODIGO').AsInteger;
   SPPEDIDOCOMPRA_CALCULAR.ExecProc;

   db_PedidoCompra.refresh;
   db_PedidoCompraItens.refresh;

end;

procedure TBaseDados.db_PedidoCompraItensAfterDelete(DataSet: TDataSet);
begin
   prcPedidoCompraCalcular;
end;

procedure TBaseDados.db_PedidoCompraItensAfterPost(DataSet: TDataSet);
begin
   prcPedidoCompraCalcular;
end;

procedure TBaseDados.db_PedidoCompraItensBeforePost(DataSet: TDataSet);
begin

   db_PedidoCompraItens.FieldByName('EMPRESA').AsInteger :=  db_PedidoCompra.FieldByName('EMPRESA').AsInteger;
   db_PedidoCompraItens.FieldByName('CODIGO').AsInteger  :=  db_PedidoCompra.FieldByName('CODIGO').AsInteger;

end;

procedure TBaseDados.db_PedidoCompraItensPRODUTOChange(Sender: TField);
begin

   strReferencia := db_PedidoCompraItens.FieldByName('PRODUTO').AsString;

   if fncPedidoCompraExisteProduto(db_PedidoCompra.FieldByName('CODIGO').AsInteger,strReferencia) Then
   begin
      Aviso('Ja existe nesta grade produto com a mesma referência.');
      db_PedidoCompraItens.Cancel;
      exit;
   end;

   if ValidaReferencia(strReferencia)=false Then
   begin
      Aviso('Produto não existe no cadastro de produtos');
      db_PedidoCompraItens.Cancel;
      exit;
   end;

   db_PedidoCompraItens.FieldByName('DESCRICAO').AsString   := fncReferenciaNome(strReferencia);
   db_PedidoCompraItens.FieldByName('UND').AsString         := GetProdutoCampo(strReferencia,'UNIDADE');
   db_PedidoCompraItens.FieldByName('VALOR_UNIT').AsFloat   := fncReferenciaPrecoCusto(strReferencia);

end;

procedure TBaseDados.db_PedidoCompraNewRecord(DataSet: TDataSet);
begin
   db_PedidoCompra.FieldByName('DATA').AsDateTime   :=Date;
   db_PedidoCompra.FieldByName('APROVADO').AsString :='S';

end;

procedure TBaseDados.QryVendaAfterClose(DataSet: TDataSet);
begin
  QryVenda.ParamByName('CODIGO').Clear;
end;

procedure TBaseDados.QryVendaAfterPost(DataSet: TDataSet);
begin
  QryVenda.ParamByName('CODIGO').AsInteger := QryVenda.FieldByName('CODIGO').AsInteger;
end;

procedure TBaseDados.QryVendaBeforeOpen(DataSet: TDataSet);
begin
   QryVenda.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;
end;

procedure TBaseDados.QryVendaNewRecord(DataSet: TDataSet);
begin
   QryVenda.FieldByName('EMPRESA').AsInteger             := FSistema.Empresa;
   QryVenda.FieldByName('NOTAFISCAL').AsInteger          := 0;
   if FParametros.CFOP.VendaUFLocal>0 then
     QryVenda.FieldByName('CFOP').AsInteger              := FParametros.CFOP.VendaUFLocal;
   if FParametros.Venda.Cliente>0 then
     QryVenda.FieldByName('CLIENTE').AsInteger           := FParametros.Venda.Cliente;
   if FParametros.Venda.IDPagto>0 then
     QryVenda.FieldByName('FORMAPAGTO').AsInteger        := FParametros.Venda.IDPagto;
   if FParametros.Venda.Vendedor>0 then
     QryVenda.FieldByName('VENDEDOR').AsInteger          := FParametros.Venda.Vendedor;
   QryVenda.FieldByName('FRETE').AsInteger               := FParametros.Frete.Padrao;
   QryVenda.FieldByName('FRETE_ESPECIE').AsString        := 'CAIXA';
   QryVenda.FieldByName('EMISSAO').AsDateTime            := Date;
   QryVenda.FieldByName('DATA_ENTRADASAIDA').AsDateTime  := Date;
   QryVenda.FieldByName('HORA').AsDateTime               := Time;
   QryVenda.FieldByName('OPERACAO').AsString             := 'S';
   QryVenda.FieldByName('MODELO').AsString               := '1';
   QryVenda.FieldByName('SERIE').AsString                := '1';
   QryVenda.FieldByName('TIPONF').AsString               := 'PEDIDO';
   QryVenda.FieldByName('CUPOM').AsString                := 'N';
   QryVenda.FieldByName('STATUS').AsString               := 'N';

   if OpcaoNumeroFiscal = 'NFE' then
   begin
      QryVenda.FieldByName('MODELO').AsString  :=  FParametros.NFE.Modelo;
      QryVenda.FieldByName('SERIE').AsString   :=  FParametros.NFE.Serie;
      QryVenda.FieldByName('TIPONF').AsString  := 'NFE';
      QryVenda.FieldByName('NFE_TRANSMITIDO').AsString  := 'NAO';
   end;
end;

procedure TBaseDados.QryVendaItemAfterPost(DataSet: TDataSet);
Var
   nVenda: integer;
begin
   nVenda := QryVenda.FieldByName('CODIGO').AsInteger;
   QryVendaItem.Refresh;

   SP_NFE_CALCULA.ParamByName('NEMPRESA').AsInteger   := FSistema.Empresa;
   SP_NFE_CALCULA.ParamByName('NCODIGO').AsInteger     := nVenda;
   SP_NFE_CALCULA.ParamByName('ACAO').AsString        := 'SAIDA';
   SP_NFE_CALCULA.ExecProc;

   QryVenda.ParamByname('CODIGO').AsInteger := nVenda;
   QryVenda.Refresh;
   QryVenda.ParamByname('CODIGO').AsInteger := nVenda;
   QryVendaItem.Refresh;

end;

procedure TBaseDados.QryVendaItemBeforePost(DataSet: TDataSet);
begin

   QryVendaItem.FieldByName('CODIGO').AsInteger :=
     QryVenda.FieldByName('CODIGO').AsInteger;

   QryVendaItem.FieldByName('EMPRESA').AsInteger :=
     QryVenda.FieldByName('EMPRESA').AsInteger;

   QryVendaItem.FieldByName('NOTAFISCAL').AsInteger :=
     QryVenda.FieldByName('NOTAFISCAL').AsInteger;

   QryVendaItem.FieldByName('MODELO').AsString :=
     QryVenda.FieldByName('MODELO').AsString;

   QryVendaItem.FieldByName('SERIE').AsString :=
     QryVenda.FieldByName('SERIE').AsString;

   QryVendaItem.FieldByName('TIPONF').AsString :=
     QryVenda.FieldByName('TIPONF').AsString;

   QryVendaItem.FieldByName('EMISSAO').AsDateTime :=
     QryVenda.FieldByName('EMISSAO').AsDateTime;

   QryVendaItem.FieldByName('OPERACAO').AsString :=
     QryVenda.FieldByName('OPERACAO').AsString;

   QryVendaItem.FieldByName('CLIENTE').AsInteger :=
     QryVenda.FieldByName('CLIENTE').AsInteger;

   QryVendaItem.FieldByName('VENDEDOR').AsInteger :=
     QryVenda.FieldByName('VENDEDOR').AsInteger;

   QryVendaItem.FieldByName('CFOP').AsInteger  := QryVenda.FieldByName('CFOP') .AsInteger;

   inCFOP        :=0;
   inCliente     :=QryVenda.FieldByName('CLIENTE') .AsInteger;
   strReferencia :=QryVendaItem.FieldByName('PRODUTO').AsString;
   inCFOP        :=QryVenda.FieldByName('CFOP') .AsInteger;

   QryVendaItem.FieldByName('TABELA').AsInteger :=
     QryVenda.FieldByName('TABELA').AsInteger;

   QryVendaItem.FieldByName('FORMAPAGTO').AsInteger :=
     QryVenda.FieldByName('FORMAPAGTO').AsInteger;

   QryVendaItem.FieldByName('TRANSPORTADORA').AsInteger :=
     QryVenda.FieldByName('TRANSPORTADORA').AsInteger;

   if QryVendaItem.FieldByName('UND').AsString='' then
      QryVendaItem.FieldByName('UND').AsString:='UN' ;


  Calcular_VendaItens();

end;

function TBaseDados.RetornaImposto(TipoImposto: String): Real;
begin
   result := 0;
   { TODO : REVISAR "CFOP" }

   {***********************************************************************
    ** De acordo com o Ministério da Fazenda - 2012:                    ***
    **    1 – Simples Nacional                                          ***
    **    2 – Simples Nacional excesso de sublimite da receita bruta    ***
    **    3 – Regime Normal                                             ***
    ***********************************************************************
    **  se a empresa FOR optante do simples, pegar aliquota do SIMPLES   **
    ***********************************************************************}
   case db_Parametros.FieldByName('REGIME_TRIB').AsInteger of
      0,
     -1,
      1,
      2: exit; // sendo optante do Simples Nacional, nao continuar. Sair.
   end;

   inCliente := QryVenda.FieldByName('Cliente').AsInteger;
   inCFOP    := QryVendaItem.FieldByName('NCFOP').AsInteger;

   if fncCliente_Validar(inCliente)=False then
   begin

      FormMensagem('Cliente ' + IntToStr(inCliente) +
        ' não existe. Verifique antes de prosseguir.');

      // Cancela o item da venda (que está em edição) para impedir falha humana
      // e possivel comprometimento do sistema.
      QryVendaItem.Cancel;
      Abort;
   end;

   strEstado := GetClienteCampo(inCliente,'UF');

   if fnUFImposto_VALIDAR(strEstado)=false then
   begin

      FormMensagem('Não existe estado (UF) "' + strEstado +
        '". Verifique o cadastro de clientes ' +
        'ou configure a Tabela de Impostos que esta '+
        'no Menu Arquivo->Configurações->Sistema->Nota Fiscal Eletrônica.'
        );

      // Cancela o item da venda (que está em edição) para impedir falha humana
      // e possivel comprometimento do sistema.
      QryVendaItem.Cancel;
      Abort;
   end;

   // CFOP
   if fnCFOP_VALIDAR(inCFOP)=false Then
   begin
      AvisoSistema('Não existe CFOP ' + IntToStr(inCFOP) + ' cadastrado ');
      // Cancela o item da venda (que está em edição) para impedir falha humana
      // e possivel comprometimento do sistema.
      QryVendaItem.Cancel;
      Abort;

   end;

   /// /////////////////////////////////////////////////////////
   // Verificar se CFOP é aplicavel ao ICMS.
   /// /////////////////////////////////////////////////////////

   if fnCFOP_ICMS_CALCULA(inCFOP) Then
   begin
      // Retornar alioquota do ICMS
      // (imposto sobre circulação de mercadorias e serviços.)
      if TipoImposto = 'ICMS' then
      begin
         // Validar tipo de ICMS. Há diferença na aliquota
         // entre pessoa juridica e fisica
         if GetClienteCampo(inCliente,'CLASSIFICACAO') = 'J' then
         begin
            result := fnUFImposto_ICMS_PJ(strEstado);
         end
         else
         // se for pessoa fisica
           if GetClienteCampo(inCliente,'CLASSIFICACAO') = 'F' then
         begin
            result := fnUFImposto_ICMS_PF(strEstado);
         end;

      end;
   end;

   /// /////////////////////////////////////////////////////////
   // Verificar se CFOP é aplicavel ao IPI.
   /// /////////////////////////////////////////////////////////
   if fnCFOP_IPI_CALCULA(inCFOP) Then
   begin
      // Aliquota do IPI (Imposto sobre Produtos Industrializados)
      if TipoImposto = 'IPI' then
      begin
         result := fnUFImposto_IPI(strEstado);
      end;
   end;

   /// /////////////////////////////////////////////////////////
   // Verificar se CFOP é aplicavel ao ISS.
   /// /////////////////////////////////////////////////////////
   if fnCFOP_ISS_CALCULA(inCFOP) Then
   begin
      // Aliquota do ISS (imposto sobre serviços)
      if TipoImposto = 'ISS' then
      begin
         result := fnUFImposto_ISS(strEstado);
      end;
   end;

   /// /////////////////////////////////////////////////////////
   // Aliquota do IR (Imposto de Renda)
   /// /////////////////////////////////////////////////////////
   if TipoImposto = 'IR' then
   begin
      result := fnUFImposto_IR(strEstado);
   end;

end;

end.

