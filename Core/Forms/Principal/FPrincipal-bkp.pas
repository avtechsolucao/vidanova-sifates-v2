{--------------------------------------------------------------------------------+
|  SISTEMA...............: IndPCP (E TAMBEM AUTOR DO VESTISPCP - DESCONTINUADO)  |
|  PORTE DE EMPRESA......: Destinado para Micro Empresas                         |
|  SEGMENTO..............: Com�rcio em geral e industrias (vestu�rio)            |
|  LINGUAGEM/DB..........: Delphi 10.2 Tokyo / Firebird 2.5                      |
|--------------------------------------------------------------------------------|
|                                                                                |
|  AUTOR/PROGRAMADOR.....: Adriano Zanini (2018)                                 |
|  E-MAIL................: fontes@altaica.com.br                                 |
|--------------------------------------------------------------------------------|
|  Voc� n�o pode comercializar o codigo-fonte. Nem mesmo parcialmente!           |
|  Comercialize somente o sistema compilado (com o nome/interface que desejar).  |
+--------------------------------------------------------------------------------}

{
xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
==>>  N�O FAREI ALTERA��ES/CUSTOMIZA��ES. � POR SUA CONTA!!!  <<==
xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
***********************************************************************************
 OBSERVA��O 1:
***********************************************************************************
 Prezado(a) desenvolvedor(a):
 Esse c�digo-fonte, que adquiriu. Contem todas funcionalidades anunciadas.
 Se houver algum recurso, que n�o tenha e que seja necess�rio, fica por sua conta
 implementar. Se na �NF-e� necessitar de algo a mais, que n�o esteja nos fontes,
 � por sua conta. Impostos, etc, ou seja o que for. O mesmo vale para �NFC-e�
 (Venda Expressa).

 Se encontrar algum erro dentro do que j� existe, eu dou garantias. Basta
 me reportar eu providencio corre��o caso voc� mesmo n�o consiga resolver
 (com sua experiencia de desenvolvedor(a) Delphi).

 N�O FAREI ALTERA��ES/CUSTOMIZA��ES.

***********************************************************************************
 OBSERVA��O 2:
***********************************************************************************
 ATEN��O DESENVOLVEDOR(A): SOBRE NFC-E

 As configura��es de NFC-e est�o nesse retaguarda, IndPCP: Formul�rio "FrmConfigurar".
 -->  ou menu configura��es -> Parametros do sistema -> NFC-e (aba)

Sobre certificado digital:
O protocolo SSL que defini � o OpenSSL. No componente "ACBrNFe1" que fica
 no DataModule "BaseDados".->Propriedades->Geral->(SSLLib/SSLCryptLib/SSLHttpLib/SSLXmlSignLib).

Ent�o, nas configura��es->"parametros operacionais", voc� tentar obter n�mero
de serie de certificado, normalmente ocorrer� esse erro: "n�o suportado em: TDFeOpenSSL".

Para resolver (� por sua conta), mude para "cryWinCrypt" ou "Capicom".
(Altere todas propriedades correspondentes corretamente, � por sua conta)

 N�O FAREI ALTERA��ES/CUSTOMIZA��ES.

***********************************************************************************
 OBSERVA��O 3:
***********************************************************************************
 ATEN��O DESENVOLVEDOR(A): SOBRE ERRO "USUARIO" (SINGULAR) N�O ENCONTRADO.
 A raz�o disso: Havia tabela "usuarios" (plural), n�o existe mais. Agora � "usuario".

 Erro:
 "Se" ao tentar executar, aparecer mensagem (em ingles) que a tabela "usuario" n�o foi
 encontrada, significa que voc� esta utilizando um banco de dados antigo.

 Solu��o:
 Use o banco de dados "indpcp.fdb", que esta com os fontes novos e copie para
 "c:\indpcp\db", sobrecrevendo o que existir. Ir� resolver!

xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
==>>  N�O FAREI ALTERA��ES/CUSTOMIZA��ES. � POR SUA CONTA!!!  <<==
xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx}

unit FPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Phys.IBBase,
  FireDAC.Comp.Client, Data.DB, frxClass, frxDBSet, FireDAC.Comp.DataSet,
  System.ImageList, Vcl.ImgList, Vcl.PlatformDefaultStyleActnCtrls,
  System.Actions, Vcl.ActnList, Vcl.ActnMan, dxStatusBar, Vcl.ActnCtrls,
  Vcl.Ribbon, Vcl.ToolWin, Vcl.ActnMenus, Vcl.RibbonActnMenus,
  Vcl.RibbonObsidianStyleActnCtrls, dxGDIPlusClasses, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.RibbonLunaStyleActnCtrls, Vcl.RibbonSilverStyleActnCtrls;

type
   TFrmPrincipal = class(TForm)
      ActionMenus: TActionManager;
    actClassificacaoProdutosGrupos: TAction;
    actCadastrosSubgrupo: TAction;
    actCadastrosTiposProdutos: TAction;
    actEstoqueCadastros: TAction;
    actGestaoTabelaPrecos: TAction;
    actEstoqueAtualizar: TAction;
    actEstoqueCodigoBarraTermica: TAction;
    actConfigurarParametros: TAction;
    actConfigurarWindows: TAction;
    actConfigurarServidor: TAction;
    actConfigurarEtiquetas: TAction;
    actConfigurarNFE: TAction;
    actConfigurarBoletoBancario: TAction;
    actConfigurarImpressora: TAction;
    actConfigurarCotacaoMoeda: TAction;
    actConfigurarUsuarios: TAction;
    actSairSistema: TAction;
    actCadastrosClientePessoaJuridica: TAction;
    actCadastrosClientePessoaFisica: TAction;
    actCadastrosClienteMalaDireta: TAction;
    actCadastrosRepresentantesRegioes: TAction;
    actCadastrosRepresentantesPessoaJuridica: TAction;
    actCadastrosFornecedorPessoaJuridica: TAction;
    actCadastrosTransportadoras: TAction;
    actFiscalPlanoContas: TAction;
    actFiscalCFOP: TAction;
    actCadastrosAuxiliaresDepartamentos: TAction;
    actCadastrosAuxiliaresFormaPagto: TAction;
    actComprasPedido: TAction;
    actEstoqueCompras: TAction;
    actTerceirizadosRelatorios: TAction;
    actCadastrosGrifes: TAction;
    actCadastrosColecao: TAction;
    actCadastrosFaixaEtaria: TAction;
    actCadastrosFases: TAction;
    actPCPEtiquetaComposicao: TAction;
    actCadastrosTamanhos: TAction;
    actCadastrosGradesTamanho: TAction;
    actCadastrosCores: TAction;
    actPCPProcessos: TAction;
    actCadastrosMaquinas: TAction;
    actPCPDefeitos: TAction;
    actPCPQualidades: TAction;
    actPCPFichaTecnica: TAction;
    actChaoFabricaOrdemProducao: TAction;
    actPCPRelatorios: TAction;
    actEstoquePesquisaEstoque: TAction;
    actVendasPedidosEmitir: TAction;
    actVendasPedidosAprovar: TAction;
    actVendasEmitirNFE: TAction;
    actVendasDevolucao: TAction;
    actFinanceiroReceberLancamento: TAction;
    actFinanceiroReceberBaixa: TAction;
    actFinanceiroReceberArquivoRetorno: TAction;
    actFinanceiroImpressosBoletoBancario: TAction;
    actFinanceiroPagarLancamentos: TAction;
    actFinanceiroPagarBaixas: TAction;
    actFinanceiroChequesReceber: TAction;
    actFinanceiroChequesPagar: TAction;
    actCadastrosContasBancos: TAction;
    actCadastrosContasCorrente: TAction;
    actFinanceiroMovimentoContasControleBancario: TAction;
    actTransportePacotesProdutos: TAction;
    actTransporteConferenciaPedidos: TAction;
    actTransporteRomaneio: TAction;
    actTransporteEtiquetas: TAction;
    actTransporteRelatorios: TAction;
    actFiscalSubstituicaoTributaria: TAction;
    actFiscalPlanoContasRelatorios: TAction;
    actAjudaTopicos: TAction;
    actAjudaOrganizarJanelas: TAction;
    actAjudaSobreSistema: TAction;
    ActionAplications: TActionManager;
    AppMenuCalculadora: TAction;
    AppMenuSair: TAction;
    imgMenusImagens32x: TImageList;
    AppMenuEmail: TAction;
    actVendasRelatorios: TAction;
    actCadastrosClienteRelatorio: TAction;
    actEstoqueRelatorios: TAction;
    actFinanceiroReceberRelatorios: TAction;
      PrinterSetupDialog1: TPrinterSetupDialog;
    actVendasConsultar: TAction;
    actCadastrosAuxiliaresGeneros: TAction;
    actFinanceiroPagarRelatorios: TAction;
    actCadastrosAuxiliaresRamoAtividades: TAction;
    actVendasPedidosRelatorio: TAction;
    actCadastrosAuxiliaresIBGECEP: TAction;
    actVendasPedidosConferencia: TAction;
    actTerceirizadoPagamentos: TAction;
    actFinanceiroCaixaFluxo: TAction;
    actCadastrosContasCaixa: TAction;
    actFinanceiroMovimentoContasTransferencia: TAction;
    actConfigurarEmpresas: TAction;
    actAjudaCalendario: TAction;
    actFinanceiroReceberBordero: TAction;
    actFinanceiroReceberBaixaLote: TAction;
    actFinanceiroPagarBaixasLote: TAction;
    actCadastrosFornecedorRelatorio: TAction;
    actChaoFabricaAndamentoFaseProducao: TAction;
    actCadastrosFasesGrade: TAction;
    actEstoqueCodigoBarraJatoTintas: TAction;
    actComprasRelatorios: TAction;
    actPCPLoteProducao: TAction;
    actVendasExpressa: TAction;
    actGestaoMarkup: TAction;
    actTerceirizadosPrecosServicos: TAction;
    actFinanceiroPagarSubstituir: TAction;
    actCadastrosAuxiliaresMotivoBaixa: TAction;
    actFinanceiroComissoesLancamentos: TAction;
    actFinanceiroComissoesRelatorios: TAction;
    actCadastrosAuxiliaresCarteiraCobranca: TAction;
    actFiscalNCM: TAction;
    Ribbon1: TRibbon;
    rbVenda: TRibbonPage;
    RibbonApplicationMenuBar1: TRibbonApplicationMenuBar;
    rbFiscal: TRibbonPage;
    rpTesouraria: TRibbonPage;
    rbEstoque: TRibbonPage;
    rbTerceirizados: TRibbonPage;
    rbCompras: TRibbonPage;
    rbTransportes: TRibbonPage;
    rbPCP: TRibbonPage;
    rbGestao: TRibbonPage;
    rbCadastros: TRibbonPage;
    rbVendaGrupoPedidoVendas: TRibbonGroup;
    rbVendaGrupoNotaFiscal: TRibbonGroup;
    RibbonGroup1: TRibbonGroup;
    RibbonGroup2: TRibbonGroup;
    RibbonGroup3: TRibbonGroup;
    RibbonGroup4: TRibbonGroup;
    RibbonGroup5: TRibbonGroup;
    RibbonGroup6: TRibbonGroup;
    RibbonGroup7: TRibbonGroup;
    RibbonGroup8: TRibbonGroup;
    RibbonGroup9: TRibbonGroup;
    rbGrupoProdutos: TRibbonGroup;
    RibbonGroup11: TRibbonGroup;
    RibbonGroup12: TRibbonGroup;
    RibbonGroup15: TRibbonGroup;
    RibbonGroup16: TRibbonGroup;
    RibbonGroup17: TRibbonGroup;
    RibbonGroup18: TRibbonGroup;
    RibbonGroup19: TRibbonGroup;
    RibbonGroup20: TRibbonGroup;
    RibbonGroup21: TRibbonGroup;
    RibbonGroup22: TRibbonGroup;
    RibbonGroup27: TRibbonGroup;
    rbConfiguracao: TRibbonPage;
    RibbonGroup28: TRibbonGroup;
    RibbonGroup29: TRibbonGroup;
    RibbonGroup30: TRibbonGroup;
    RibbonGroup31: TRibbonGroup;
    RibbonGroup34: TRibbonGroup;
    Action1: TAction;
    actFinanceiroComissoesRegras: TAction;
    actFinanceiroComissoesPadrao: TAction;
    actCadastrosClienteTipos: TAction;
    actCadastrosRepresentantesTipos: TAction;
    actCadastrosRepresentantesRegioesCaracteristicas: TAction;
    Action2: TAction;
    RibbonGroup40: TRibbonGroup;
    actCadastrosGrupoCompras: TAction;
    actCadastrosPorteClientes: TAction;
    actAjudaTrocarUsuario: TAction;
    actAjudaTrocarEmpresa: TAction;
    actAjudaLogOFF: TAction;
    rbAjuda: TRibbonPage;
    actAjudaSolicitarSuporte: TAction;
    actCadastrosTiposLinhaProduto: TAction;
    actCadastrosFornecedorGrupo: TAction;
    actEstoqueSegmento: TAction;
    db_empresa: TFDQuery;
    frx_dsEmpresa: TfrxDBDataset;
    DBConexao: TFDConnection;
    FDTransacao: TFDTransaction;
    dxStatusBar1: TdxStatusBar;
    RibbonGroup36: TRibbonGroup;
    RibbonGroup35: TRibbonGroup;
    ImagemLogo: TImage;
    RibbonGroup37: TRibbonGroup;
    FDPhysFBDriverLink: TFDPhysFBDriverLink;
    actConfigurarCadEmpresa: TAction;
    RibbonGroup13: TRibbonGroup;
    RibbonGroup24: TRibbonGroup;
    actTerceirizadosRemessas: TAction;
    RibbonGroup14: TRibbonGroup;
    QryCriarCampo: TFDQuery;
    panel_bottom: TPanel;
    lb_server: TLabel;
    lb_on_offline: TLabel;
    lb_serverip: TLabel;
    lb_ip: TLabel;
    lb_user: TLabel;
    lb_username: TLabel;
    lb_teclasatalho: TLabel;    

    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

    procedure actSairSistemaExecute(Sender: TObject);
    procedure actConfigurarParametrosExecute(Sender: TObject);
    procedure actConfigurarWindowsExecute(Sender: TObject);
    procedure actConfigurarServidorExecute(Sender: TObject);
    procedure actConfigurarEtiquetasExecute(Sender: TObject);
    procedure actConfigurarNFEExecute(Sender: TObject);
    procedure actConfigurarBoletoBancarioExecute(Sender: TObject);
    procedure actConfigurarImpressoraExecute(Sender: TObject);
    procedure actConfigurarCotacaoMoedaExecute(Sender: TObject);
    procedure actConfigurarUsuariosExecute(Sender: TObject);
    procedure actCadastrosClientePessoaJuridicaExecute(Sender: TObject);
    procedure actCadastrosClientePessoaFisicaExecute(Sender: TObject);
    procedure Action23Execute(Sender: TObject);
    procedure actCadastrosClienteMalaDiretaExecute(Sender: TObject);
    procedure actCadastrosRepresentantesRegioesExecute(Sender: TObject);
    procedure actCadastrosRepresentantesPessoaJuridicaExecute(Sender: TObject);
    procedure actCadastrosFornecedorPessoaJuridicaExecute(Sender: TObject);
    procedure actCadastrosAuxiliaresDepartamentosExecute(Sender: TObject);
    procedure actCadastrosAuxiliaresFormaPagtoExecute(Sender: TObject);
    procedure actEstoqueComprasExecute(Sender: TObject);
    procedure actFiscalCFOPExecute(Sender: TObject);
    procedure actFiscalPlanoContasExecute(Sender: TObject);
    procedure actFiscalSubstituicaoTributariaExecute(Sender: TObject);
    procedure actFiscalPlanoContasRelatoriosExecute(Sender: TObject);
    procedure Action134Execute(Sender: TObject);
    procedure actTransporteRomaneioExecute(Sender: TObject);
    procedure actTransporteEtiquetasExecute(Sender: TObject);
    procedure actTransporteRelatoriosExecute(Sender: TObject);
    procedure actFinanceiroReceberLancamentoExecute(Sender: TObject);
    procedure actFinanceiroReceberBaixaExecute(Sender: TObject);
    procedure actFinanceiroReceberArquivoRetornoExecute(Sender: TObject);
    procedure actFinanceiroImpressosBoletoBancarioExecute(Sender: TObject);
    procedure Action100Execute(Sender: TObject);
    procedure actFinanceiroPagarLancamentosExecute(Sender: TObject);
    procedure actFinanceiroPagarBaixasExecute(Sender: TObject);
    procedure actFinanceiroChequesReceberExecute(Sender: TObject);
    procedure actFinanceiroChequesPagarExecute(Sender: TObject);
    procedure Action109Execute(Sender: TObject);
    procedure actFinanceiroMovimentoContasControleCaixaExecute(Sender: TObject);
    procedure actCadastrosContasBancosExecute(Sender: TObject);
    procedure actCadastrosContasCorrenteExecute(Sender: TObject);
    procedure actFinanceiroMovimentoContasControleBancarioExecute(Sender: TObject);
    procedure actCadastrosGrifesExecute(Sender: TObject);
    procedure actCadastrosColecaoExecute(Sender: TObject);
    procedure actCadastrosFasesExecute(Sender: TObject);
    procedure actPCPEtiquetaComposicaoExecute(Sender: TObject);
    procedure actCadastrosTamanhosExecute(Sender: TObject);
    procedure actCadastrosGradesTamanhoExecute(Sender: TObject);
    procedure actCadastrosCoresExecute(Sender: TObject);
    procedure actPCPProcessosExecute(Sender: TObject);
    procedure actPCPProcessosGradeExecute(Sender: TObject);
    procedure actCadastrosMaquinasExecute(Sender: TObject);
    procedure actPCPProcessoMaquinasExecute(Sender: TObject);
    procedure actPCPDefeitosExecute(Sender: TObject);
    procedure actPCPQualidadesExecute(Sender: TObject);
    procedure actPCPProcessosOperadorExecute(Sender: TObject);
    procedure actPCPFichaTecnicaExecute(Sender: TObject);
    procedure actChaoFabricaOrdemProducaoExecute(Sender: TObject);
    procedure actPCPRelatoriosExecute(Sender: TObject);
    procedure actClassificacaoProdutosGruposExecute(Sender: TObject);
    procedure actCadastrosSubgrupoExecute(Sender: TObject);
    procedure actCadastrosTiposProdutosExecute(Sender: TObject);
    procedure actEstoqueCadastrosExecute(Sender: TObject);
    procedure actGestaoTabelaPrecosExecute(Sender: TObject);
    procedure actEstoqueAtualizarExecute(Sender: TObject);
    procedure actEstoqueCodigoBarraTermicaExecute(Sender: TObject);
    procedure actEstoqueRelatoriosExecute(Sender: TObject);
    procedure actEstoquePesquisaEstoqueExecute(Sender: TObject);
    procedure actVendasPedidosEmitirExecute(Sender: TObject);
    procedure actVendasPedidosAprovarExecute(Sender: TObject);
    procedure actVendasEmitirNFEExecute(Sender: TObject);
    procedure actVendasConsultarExecute(Sender: TObject);
    procedure actVendasDevolucaoExecute(Sender: TObject);
    procedure actVendasRelatoriosExecute(Sender: TObject);
    procedure actFinanceiroReceberRelatoriosExecute(Sender: TObject);
    procedure actCadastrosAuxiliaresGenerosExecute(Sender: TObject);
    procedure actFinanceiroPagarRelatoriosExecute(Sender: TObject);
    procedure actCadastrosAuxiliaresRamoAtividadesExecute(Sender: TObject);
    procedure actVendasPedidosRelatorioExecute(Sender: TObject);
    procedure actAjudaOrganizarJanelasExecute(Sender: TObject);
    procedure actCadastrosAuxiliaresIBGECEPExecute(Sender: TObject);
    procedure actVendasPedidosConferenciaExecute(Sender: TObject);
    procedure actAjudaSobreSistemaExecute(Sender: TObject);
    procedure actTerceirizadoPagamentosExecute(Sender: TObject);
    procedure actFinanceiroCaixaFluxoExecute(Sender: TObject);
    procedure actCadastrosContasCaixaExecute(Sender: TObject);
    procedure actFinanceiroCaixaFechamentoExecute(Sender: TObject);
    procedure actFinanceiroMovimentoContasTransferenciaExecute(Sender: TObject);
    procedure actCadastrosClienteRelatorioExecute(Sender: TObject);
    procedure DBConexaoAfterConnect(Sender: TObject);
    procedure actConfigurarEmpresasExecute(Sender: TObject);
    procedure actComprasPedidoExecute(Sender: TObject);
    procedure AppMenuSairExecute(Sender: TObject);
    procedure actAjudaCalendarioExecute(Sender: TObject);
    procedure actFinanceiroReceberBorderoExecute(Sender: TObject);
    procedure actFinanceiroReceberBaixaLoteExecute(Sender: TObject);
    procedure actCadastrosFornecedorRelatorioExecute(Sender: TObject);
    procedure actChaoFabricaAndamentoFaseProducaoExecute(Sender: TObject);
    procedure actFinanceiroPagarBaixasLoteExecute(Sender: TObject);
    procedure actCadastrosFasesGradeExecute(Sender: TObject);
    procedure actEstoqueCodigoBarraJatoTintasExecute(Sender: TObject);
    procedure actPCPLoteProducaoExecute(Sender: TObject);
    procedure actVendasExpressaExecute(Sender: TObject);
    procedure actGestaoMarkupExecute(Sender: TObject);
    procedure actTerceirizadosPrecosServicosExecute(Sender: TObject);
    procedure actFinanceiroPagarSubstituirExecute(Sender: TObject);
    procedure actCadastrosAuxiliaresMotivoBaixaExecute(Sender: TObject);
    procedure actFinanceiroComissoesLancamentosExecute(Sender: TObject);
    procedure actFinanceiroComissoesRelatoriosExecute(Sender: TObject);
    procedure actCadastrosAuxiliaresCarteiraCobrancaExecute(Sender: TObject);
    procedure actFiscalNCMExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure actCadastrosAssessoresAssessorExecute(Sender: TObject);
    procedure actCadastrosAgenciaExecute(Sender: TObject);
    procedure actFinanceiroComissoesRegrasExecute(Sender: TObject);
    procedure actFinanceiroComissoesPadraoExecute(Sender: TObject);
    procedure actCadastrosClienteTiposExecute(Sender: TObject);
    procedure actCadastrosRepresentantesTiposExecute(Sender: TObject);
    procedure actCadastrosRepresentantesRegioesCaracteristicasExecute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure actCadastrosGrupoComprasExecute(Sender: TObject);
    procedure actCadastrosPorteClientesExecute(Sender: TObject);
    procedure actAjudaTrocarUsuarioExecute(Sender: TObject);
    procedure actAjudaTrocarEmpresaExecute(Sender: TObject);
    procedure actAjudaLogOFFExecute(Sender: TObject);
    procedure actAjudaSolicitarSuporteExecute(Sender: TObject);
    procedure actCadastrosTiposLinhaProdutoExecute(Sender: TObject);
    procedure actCadastrosFornecedorGrupoExecute(Sender: TObject);
    procedure actEstoqueSegmentoExecute(Sender: TObject);
    procedure actCadastrosTransportadorasExecute(Sender: TObject);
    procedure db_empresaBeforeOpen(DataSet: TDataSet);
    procedure DBConexaoAfterDisconnect(Sender: TObject);
    procedure actTerceirizadosRelatoriosExecute(Sender: TObject);
    procedure actComprasRelatoriosExecute(Sender: TObject);
    procedure DBConexaoError(ASender, AInitiator: TObject;
      var AException: Exception);
    procedure Ribbon1HelpButtonClick(Sender: TObject);
    procedure actConfigurarCadEmpresaExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure actTerceirizadosRemessasExecute(Sender: TObject);
    procedure panel_bottomClick(Sender: TObject);

   private
      { Private declarations }

    procedure ShowHintPersonalizado(var HintStr: string; var CanShow: Boolean;var HintInfo: THintInfo);
    procedure AppException(Sender: TObject; E: Exception);

    procedure StatusCarregar(aMensagem : String);
    function FormAtivo(AForm: TFormClass): Boolean;
    procedure IsFormCreated(FClass: TFormClass; var Instance);

    procedure MenusHabilitar;

   public
      { Public declarations }
    FDiasAtivar : Integer;
    FErroConectaDB  : Boolean;
    Procedure SetarEmpresa;
    Procedure CarregarEmpresa;
    procedure cfg_EmpresaGravar(lnEmpresa:integer);
    function  cfg_EmpresaLer: integer;

    procedure InstanciarDBFirebird;
    procedure InstanciarDBSQLite;
    Procedure ConfigurarInicio;
    Procedure CarregarUltimaEtapa;
    Procedure InstanciarDataModule;
    procedure CriarPastas;
    procedure LogOn;
    procedure LogOff;
  end;
  Procedure TerminarAplicacao;
  procedure ActionVisivel(const aItemMenu : String; aVisivel : Boolean);
  procedure ActionHabilitar(const aItemMenu : String; aHabilitar : Boolean);

var

   FrmPrincipal: TFrmPrincipal;
   IniciarMenuPrincipal : Boolean = True;
   FProsseguir : Boolean;
   FProgramador :Boolean;
   FGerarDANFE  : Boolean;

   /// ------------------------------------------------------------------------
   /// Configurar Diretorios, Pasta e  Arquivos
   /// Exemplos:
   ///
   /// Ajuda
   /// Atualizacoes
   /// Backup
   /// Binarios
   /// Boletos
   /// Documentacao
   /// Imagens
   /// NF-e
   /// Remessa
   /// Retorno
   ///
   /// ------------------------------------------------------------------------


   /// ------------------------------------------------------------------------
   // da estrutura do banco de dados
   //I: Integer;
   TListaAdicionar, TListaAlterar, TListaExcluir: TStrings;

implementation

{$R *.dfm}

uses

  Global, Biblioteca, FSplash, SQLServer, Classe.Global,
  FFrameBotoes, FBaseDados, FAcesso, FBaseDados_PCP,
  FBaseComponentes, FAtividades, FCarneImprimir, FCtaPagarBaixas,
  FCtaPagarBaixasLotes, FComissoes, FComissoesRelatorios,
  FControleChequesRecebidos, FControleChequesEmitidos, FCartaEmitir,
  FControleCaixa, FBancos, FContaCorrente, FControleBancario, FRecibo,
  FCotacaoMoeda, FCadClientes, FRelClientes, FTerceirizadoLancaFinanceiro,
  FCtaPagar, FBordero, FCtaReceber, FNotaFiscal,
  FPedidoVenda, FFaseProducao, FColecao, FDefeitos, FEtiquetas,
  FFasesGrade, FGradeTamanhos, FGrifes, FMaquinas, FOrdemProducao,
  FQualidades, FProcessos_Maquinas,
  FProcessos_Operadores, FFichaTecnica, FRelatorioProducao, FTamanhos,
  FRomaneio, FRelEntregas, FGeneros, FSituacaoTributaria,
  FRelPlanoContas, FRelDemonstrativo, FEditorTexto, FCarteiraCobranca,
  FMotivoBaixas, FCtaPagarSubstituirTitulos, FUsuarios, FAboutBox,
  FRelEstoque, FRelMovCaixa, FRelFluxoCaixa,
  FTransferenciaContas, FClientesGradeEdicao, FRelCtaPagar, FRelCtaReceber,
  FRelClientesMalaDireta, FRegioes, FColaborador, FFornecedores,
  FTransportadoras, FPlanoContas, FCFOP, FDepartamentos, FFormaPagto, FMarkup,
  FVendaExpressa, FTabelaNCM, FSubGrupos, FTipoProduto, FProdutos,
  FEtiquetasWindows, FServidorSistema, FTabelaPreco, FProdutosQuantidade,
  FEtiquetasGerar, FPedidoCompra, FCompras, FEtiquetaConfigurar,
  FTabelaPrecoServicos, FLoteProducao, FCalendario, FProdutosPesquisaPreco,
  FConfigurar, FPedidoAprovarVenda, FVendaDevolucaoProdutos,
  FCtaReceberBaixas, FCtaReceberBaixasLotes, FConciliacaoBanco, FBoletoBancario,
  FEmpresaSelecionar, FPedidoVendaConferencia, FRelFaturamento,
  FEtiquetacaixa, FCores, FFases, FConta, FTelaPrincipal, FProdutosDetalhados,
  FGrupos, FAlertasLancamentos, FGrupoCompras, FTipoCliente,
  FPorteClientes, FRelPedidos,
  FLinhasProdutos, FEntidadeGrupo, FSegmento, FCidadeIBGE, App.Constantes,
  FTerceirizadosRelatorios, FRelCompras, FEmpresa, FDistribuirRemessa,
  FNotaFiscalEmitidas, FProcessosGrade, FProcessos, FCompra, Classe.GetConnect,
  FAtivarSistema;

procedure TerminarAplicacao;
begin
    Application.Terminate;
    TerminateProcess(GetCurrentProcess, 0);
end;


procedure TFrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  if Assigned(BaseDados) then
    BaseDados.Free;

  if Assigned(BaseDados_PCP) then
    BaseDados_PCP.Free;

  if Assigned(dmBaseComponentes) then
    dmBaseComponentes.Free;

  DestruirObjetos;

  TerminarAplicacao;

  action:=cafree;

end;

procedure TFrmPrincipal.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  DBConexao.Connected:=False;
end;

procedure TFrmPrincipal.AppException(Sender: TObject; E: Exception);
begin
  //Application.ShowException(E);
end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
  FDiasAtivar   := 0;
  DBConexao.Connected := False;
  FGerarDANFE := False; // Saiba onde essa variavel � alterada, na unit FBaseDados o evento OnCreate (DataModuleCreate)
  FProgramador := False;
  {$IFDEF DEBUG}
    FProgramador := FileExists(LowerCase(_DEVELOPER_)) ; // se "arquivo secreto" existir, retorna "True".
    blnUsuarioAutorizado := True;
  {$ENDIF}

  // ------------------------------------------------------------------------
  //
  // ------------------------------------------------------------------------
  DBConexao.Close;
  StatusCarregar('Checando configura��es..');
  DBConexao.Connected :=False;
  FErroConectaDB      :=False;
  CriarObjetos;

  if not FileExists(_LOCALINI) then
    FInfFile.GravarINI; // For�a Criar um novo ".INI"
  FInfFile.CarregarINI;

  FProsseguir := True;
  // ------------------------------------------------------------------------
  // Configura��es do sistema (Windows)                 '
  // ------------------------------------------------------------------------
  FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
  FormatSettings.ShortTimeFormat := 'hh:mm:ss';
  FormatSettings.DecimalSeparator := ',';

  // ----------------------------------------------------------
  // Conex�o com banco de dados
  // ----------------------------------------------------------
  if FProsseguir then
    CarregarEmpresa;

  // ----------------------------------------------------------
  // Conex�o com banco de dados
  // ----------------------------------------------------------
  if FProsseguir then
    InstanciarDBFirebird;

  if FProsseguir then
  begin
    if FErroConectaDB then
    begin
      DBConexao.Close;
      FProsseguir :=False;
      TerminarAplicacao;
      Exit;
    end;
  end;

  // --------------------------------------------------------------------------
  // necessario para criar campo "SSL_TIPO" na tabela 'CONFIG_PARAMETROS'
  // --------------------------------------------------------------------------
  try
    try
      QryCriarCampo.Close;
      QryCriarCampo.ExecSQL;
    finally
      QryCriarCampo.Close;
    end;
  except
  end;

  if FProsseguir then
    SetParametrosAtualizaDados;

  if FProsseguir then
    SetarEmpresa;

  if FProsseguir then
  begin
    InstanciarDataModule;
    BaseDados.SetCertificados();
  end;

  //----------------------------------------------------------------------
  // SE NAO FOR INDUSTRIA/COMERCIO CONFECOES, EXCLUIR ITENS DO MENU
  //----------------------------------------------------------------------
  if FParametros.Quantificar='NORMAL' then
  begin
    Ribbon1.DeleteTab(4);
    Ribbon1.DeleteTab(6);
    rbGrupoProdutos.Items.Items[10].Free;
    rbGrupoProdutos.Items.Items[4].Free;
    rbGrupoProdutos.Items.Items[3].Free;
    rbGrupoProdutos.Items.Items[2].Free;
    rbGrupoProdutos.Items.Items[1].Free;
    rbGrupoProdutos.Items.Items[0].Free;
    rbGrupoProdutos.Refresh;
  end;

End;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
  // --------------------------------------------------------------------------
  //
  // --------------------------------------------------------------------------
  StatusCarregar('Checando conex�o com banco de dados...');
  CriarPastas();

  FConexao := DBConexao;
  FProsseguir :=True;

  Cursor :=crSQLWait;
  Try
    //if not FileExists(_LOCALINI) then
    //  FInfFile.infSave; // For�a Criar um novo ".INI"

    // se n�o for ambiente de desenvolvimento, dever� validar diretorio padr�o do sistema
    if not FileExists(_ARQUIVOAUTENTICASENHA) then
    begin
      if not FileExists(lowercase(_DATABASE_NOME)) then
      begin
        FProsseguir :=False;
        Erro('Banco de dados n�o encontrado.'+slinebreak+slinebreak+'['+lowercase(_DATABASE_NOME)+']');
        TerminarAplicacao;
      end;
    end;

//    if FProsseguir then
//      InstanciarBancoDados;
//
//    if FProsseguir then
//    begin
//      if FErroConectaDB then
//      begin
//        DBConexao.Close;
//        FProsseguir :=False;
//        Application.Terminate;
//        Exit;
//      end;
//    end;

//    if FProsseguir then
//      InstanciarDataModule;

    if FProsseguir then
      ConfigurarInicio;

    if FProsseguir then
      StatusCarregar('Abrindo tela de Login...');

    //-------------------------------------------------------------------
    // Sendo ambinte de desenvolvimento n�o pedir� login no sistema
    // (do contrario, pedir� login)
    //-------------------------------------------------------------------

    //if not FileExists(_DEVELOPER_) then
    if not FProgramador then
    begin
      FProsseguir := True;
      blnUsuarioAutorizado := True;
      // ------------------------------------------------------------------------
      // Definir dados na barra de status
      // ------------------------------------------------------------------------
      dxStatusBar1.Panels[2].Text := Concat(' Usu�rio: ', FUsuario.Nome);

      // ------------------------------------------------------------------------
      // Define acesso ao menus
      // ------------------------------------------------------------------------
      FUsuario.LogUsuario('Sistema','acessou sistema '+Application.Title);

      if FProsseguir then
        LogOn; // Solicitar Login
    end;

    if FProsseguir then
      StatusCarregar('Verifica��es finais...');

    if FProsseguir then
      CarregarUltimaEtapa;

    if FProgramador then
    begin
      FUsuario.Nome:='Desenvolvedor';
      dxStatusBar1.Panels[2].Text := Concat(' Usu�rio: ', FUsuario.Nome+' (Desenvolvedor)');
    end;

    //-------------------------------------------------------
    // checar se � demo e prazo de validade (45) dias
    // (Programador: ajuste ao seu modo como deseja)
    //------------------------------------------------------
    //if not FProgramador then
     {$IFDEF RELEASE}
       //FSistema.SistemaDemo;
     {$ENDIF}

    MenusHabilitar;

  Finally
    Cursor := crDefault;
  End;
end;

{******************************************************************************
  Criar pastas
******************************************************************************}
procedure TFrmPrincipal.CriarPastas;
begin
  ForceDirectories(_NFE_LOCAL_GERADAS);
  ForceDirectories(_NFE_LOCAL_SCHEMA);
  ForceDirectories(_NFE_LOCAL_PDF);
  ForceDirectories(_NFE_LOCAL_INUTILIZADAS);
  ForceDirectories(_NFE_LOCAL_GERADAS);
  ForceDirectories(_NFE_LOCAL_EVENTO);
  ForceDirectories(_NFE_LOCAL_SALVAR);
  ForceDirectories(_NFE_LOCAL_DOWNLOADS);
  Sleep(1000);
end;

procedure TFrmPrincipal.cfg_EmpresaGravar(lnEmpresa:integer);
Begin
  FInfFile.GravarItemINI('PARAMETROS', 'Empresa', lnEmpresa );
  if lnEmpresa<1 then
     lnEmpresa:=1;
End;

Function TFrmPrincipal.cfg_EmpresaLer : integer ;
Begin
  Result :=0;
  Result :=FInfFile.LerItemINI('PARAMETROS', 'Empresa' , 1 );
End;

procedure TFrmPrincipal.actCadastrosAuxiliaresRamoAtividadesExecute(Sender: TObject);
begin
   IsFormCreated(TFrmAtividades,FrmAtividades);
end;

procedure TFrmPrincipal.Action100Execute(Sender: TObject);
begin
  FrmCarneImprimir := TFrmCarneImprimir.create(self);
  FrmCarneImprimir.ShowModal;
end;

procedure TFrmPrincipal.actFinanceiroPagarBaixasExecute(Sender: TObject);
begin
   IsFormCreated(TFrmCtaPagarBaixas,FrmCtaPagarBaixas);
end;

procedure TFrmPrincipal.actFinanceiroPagarBaixasLoteExecute(Sender: TObject);
begin
  FrmCtaPagarBaixasLotes := TFrmCtaPagarBaixasLotes.create(self);
  FrmCtaPagarBaixasLotes.ShowModal;
end;

procedure TFrmPrincipal.actFinanceiroComissoesLancamentosExecute(Sender: TObject);
begin
   IsFormCreated(TFrmComissoes,FrmComissoes);
end;

procedure TFrmPrincipal.actFinanceiroComissoesPadraoExecute(Sender: TObject);
begin
   //IsFormCreated(TFrmComissaoPadrao,FrmComissaoPadrao);
end;

procedure TFrmPrincipal.actFinanceiroComissoesRegrasExecute(Sender: TObject);
begin
   //IsFormCreated(TFrmRegrasComissao,FrmRegrasComissao);
end;

procedure TFrmPrincipal.actFinanceiroComissoesRelatoriosExecute(
  Sender: TObject);
begin
  IsFormCreated(TFrmComissoesRelatorios,FrmComissoesRelatorios);
end;

procedure TFrmPrincipal.actFinanceiroChequesReceberExecute(Sender: TObject);
begin
  IsFormCreated(TFrmChequesRecebidos,FrmChequesRecebidos);

end;

procedure TFrmPrincipal.actFinanceiroChequesPagarExecute(Sender: TObject);
begin
  IsFormCreated(TFrmChequesEmitidos,FrmChequesEmitidos);
end;

procedure TFrmPrincipal.Action109Execute(Sender: TObject);
begin
  FrmCartaEmitir := TFrmCartaEmitir.create(self);
  FrmCartaEmitir.ShowModal;
end;

procedure TFrmPrincipal.actConfigurarImpressoraExecute(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TFrmPrincipal.actFinanceiroMovimentoContasControleCaixaExecute(Sender: TObject);
begin
  IsFormCreated(TFrmControleCaixa,FrmControleCaixa);
end;

procedure TFrmPrincipal.actCadastrosContasBancosExecute(Sender: TObject);
begin
  IsFormCreated(TFrmBancos,FrmBancos);
end;

procedure TFrmPrincipal.actCadastrosContasCorrenteExecute(Sender: TObject);
begin
  IsFormCreated(TFrmContaCorrente,FrmContaCorrente);

end;

procedure TFrmPrincipal.actFinanceiroMovimentoContasControleBancarioExecute(Sender: TObject);
begin
  IsFormCreated(TFrmControleBancario,FrmControleBancario);
end;

procedure TFrmPrincipal.actConfigurarCadEmpresaExecute(Sender: TObject);
begin
   FrmEmpresa := TFrmEmpresa.Create(self);
   FrmEmpresa.ShowModal;
end;

procedure TFrmPrincipal.actConfigurarCotacaoMoedaExecute(Sender: TObject);
begin
  IsFormCreated(TFrmCotacaoMoeda,FrmCotacaoMoeda);
end;

procedure TFrmPrincipal.actCadastrosClientePessoaJuridicaExecute(Sender: TObject);
begin
   ViaMenu     := True;
   strCliente  := 'J';
   FrmClientes := TFrmClientes.create(self);
   FrmClientes.show;

end;

procedure TFrmPrincipal.actCadastrosClientePessoaFisicaExecute(Sender: TObject);
begin
   ViaMenu     := True;
   strCliente  := 'F';
   FrmClientes := TFrmClientes.create(self);
   FrmClientes.show;
end;

procedure TFrmPrincipal.actCadastrosClienteRelatorioExecute(Sender: TObject);
begin
   FrmRelClientes :=TFrmRelClientes.create(self);
   FrmRelClientes.pgControle.Pages[1].Free;
   FrmRelClientes.TipoRelatorio :='CLIENTE';
   FrmRelClientes.ShowModal;
end;

procedure TFrmPrincipal.actCadastrosClienteTiposExecute(Sender: TObject);
begin
  IsFormCreated(TFrmTipoCliente, FrmTipoCliente);
end;

procedure TFrmPrincipal.actCadastrosRepresentantesTiposExecute(Sender: TObject);
begin
  //IsFormCreated(TFrmTipoVendedor, FrmTipoVendedor);
end;

procedure TFrmPrincipal.actCadastrosFornecedorRelatorioExecute(Sender: TObject);
begin
   FrmRelClientes :=TFrmRelClientes.create(self);
   FrmRelClientes.pgControle.Pages[0].Free;
   FrmRelClientes.TipoRelatorio :='FORNECEDOR';
   FrmRelClientes.ShowModal;
end;

procedure TFrmPrincipal.actTerceirizadoPagamentosExecute(Sender: TObject);
begin
  FrmTerceirizadoLancaFinanceiro:=TFrmTerceirizadoLancaFinanceiro.Create(self);
  FrmTerceirizadoLancaFinanceiro.Show;
end;

procedure TFrmPrincipal.actFinanceiroPagarLancamentosExecute(Sender: TObject);
begin
  IsFormCreated(TFrmCtaPagar, FrmCtaPagar);
end;

procedure TFrmPrincipal.actFinanceiroReceberBorderoExecute(Sender: TObject);
begin
 // IsFormCreated(TFrmBordero, FrmBordero);
  IsFormCreated(TFrmCarneImprimir,FrmCarneImprimir);
end;

procedure TFrmPrincipal.actFinanceiroReceberLancamentoExecute(Sender: TObject);
begin
  IsFormCreated(TFrmCtaReceber, FrmCtaReceber);
end;

procedure TFrmPrincipal.actVendasEmitirNFEExecute(Sender: TObject);
begin
  IsFormCreated(TFrmNotaFiscal, FrmNotaFiscal);
end;

procedure TFrmPrincipal.actVendasConsultarExecute(Sender: TObject);
begin
   FrmNotaFiscalEmitidas := TFrmNotaFiscalEmitidas.create(self);
   FrmNotaFiscalEmitidas.Show;
end;

procedure TFrmPrincipal.actChaoFabricaAndamentoFaseProducaoExecute(Sender: TObject);
begin
  IsFormCreated(TFrmFaseProducao, FrmFaseProducao);
end;

procedure TFrmPrincipal.actCadastrosColecaoExecute(Sender: TObject);
begin
  IsFormCreated(TFrmColecao, FrmColecao);
end;

procedure TFrmPrincipal.actCadastrosCoresExecute(Sender: TObject);
begin
  IsFormCreated(TFrmCores, FrmCores);
end;

procedure TFrmPrincipal.actPCPDefeitosExecute(Sender: TObject);
begin
  IsFormCreated(TFrmDefeitos, FrmDefeitos);
end;

procedure TFrmPrincipal.actPCPEtiquetaComposicaoExecute(Sender: TObject);
begin
  IsFormCreated(TFrmEtiquetas, FrmEtiquetas);
end;

procedure TFrmPrincipal.actCadastrosFasesExecute(Sender: TObject);
begin
  IsFormCreated(TFrmFases, FrmFases);
end;

procedure TFrmPrincipal.actCadastrosFasesGradeExecute(Sender: TObject);
begin
  IsFormCreated(TFrmFasesGrade, FrmFasesGrade);
end;

procedure TFrmPrincipal.actCadastrosGradesTamanhoExecute(Sender: TObject);
begin
  IsFormCreated(TFrmGradeTamanhos, FrmGradeTamanhos);
end;

procedure TFrmPrincipal.actCadastrosGrifesExecute(Sender: TObject);
begin
  IsFormCreated(TFrmGrifes, FrmGrifes);
end;

procedure TFrmPrincipal.actCadastrosMaquinasExecute(Sender: TObject);
begin
  IsFormCreated(TFrmMaquinas, FrmMaquinas);
end;

procedure TFrmPrincipal.actChaoFabricaOrdemProducaoExecute(Sender: TObject);
begin
  IsFormCreated(TFrmOrdemProducao, FrmOrdemProducao);
end;

procedure TFrmPrincipal.actPCPQualidadesExecute(Sender: TObject);
begin
  FrmQualidades:=TFrmQualidades.Create(self);
  FrmQualidades.Show;
end;

procedure TFrmPrincipal.actPCPProcessoMaquinasExecute(Sender: TObject);
begin
  FrmProcessos_Maquinas:=TFrmProcessos_Maquinas.Create(self);
  FrmProcessos_Maquinas.Show;
end;

procedure TFrmPrincipal.actPCPProcessosExecute(Sender: TObject);
begin
  FrmProcessos:=TFrmProcessos.Create(self);
  FrmProcessos.Show;
end;

procedure TFrmPrincipal.actPCPProcessosGradeExecute(Sender: TObject);
begin
  FrmProcessosGrade:=TFrmProcessosGrade.Create(self);
  FrmProcessosGrade.Show;
end;

procedure TFrmPrincipal.actPCPProcessosOperadorExecute(Sender: TObject);
begin
  FrmProcessos_Operadores:=TFrmProcessos_Operadores.Create(self);
  FrmProcessos_Operadores.Show;
end;

procedure TFrmPrincipal.actPCPFichaTecnicaExecute(Sender: TObject);
begin
  FrmFichaTecnica:=TFrmFichaTecnica.Create(self);
  FrmFichaTecnica.Show;
end;

procedure TFrmPrincipal.actPCPRelatoriosExecute(Sender: TObject);
begin
   FrmRelatorioProducao := TFrmRelatorioProducao.create(self);
   FrmRelatorioProducao.ShowModal;
end;

procedure TFrmPrincipal.actCadastrosTamanhosExecute(Sender: TObject);
begin
  FrmTamanhos:=TFrmTamanhos.Create(self);
  FrmTamanhos.Show;
end;

procedure TFrmPrincipal.actTransporteRomaneioExecute(Sender: TObject);
begin
   FrmRomaneio := TFrmRomaneio.create(self);
   FrmRomaneio.Show;
end;


procedure TFrmPrincipal.actTransporteRelatoriosExecute(Sender: TObject);
begin
   FrmRelEntregas := TFrmRelEntregas.create(self);
   FrmRelEntregas.ShowModal;

end;

procedure TFrmPrincipal.actCadastrosAuxiliaresGenerosExecute(Sender: TObject);
begin
  FrmGeneros:=TFrmGeneros.Create(self);
  FrmGeneros.Show;
end;

procedure TFrmPrincipal.actFiscalSubstituicaoTributariaExecute(Sender: TObject);
begin
   FrmSituacaoTributaria := TFrmSituacaoTributaria.create(self);
   FrmSituacaoTributaria.ShowModal;
end;

procedure TFrmPrincipal.actFiscalPlanoContasRelatoriosExecute(Sender: TObject);
begin
   FrmRelPlanoContas := TFrmRelPlanoContas.create(self);
   FrmRelPlanoContas.ShowModal;
end;

procedure TFrmPrincipal.Action134Execute(Sender: TObject);
begin
   FrmRelDemonstrativo := TFrmRelDemonstrativo.create(self);
   FrmRelDemonstrativo.ShowModal;
end;

procedure TFrmPrincipal.Action1Execute(Sender: TObject);
begin
   FrmEditorTexto := TFrmEditorTexto.create(self);
   FrmEditorTexto.ShowModal;
end;

procedure TFrmPrincipal.actCadastrosAgenciaExecute(Sender: TObject);
begin
  //FrmAgenciaAssessores:=TFrmAgenciaAssessores.Create(Self);
  //FrmAgenciaAssessores.Show;
end;

procedure TFrmPrincipal.actCadastrosAssessoresAssessorExecute(Sender: TObject);
begin
  //FrmAssessores:=TFrmAssessores.Create(Self);
  //FrmAssessores.Show;
end;

procedure TFrmPrincipal.actCadastrosAuxiliaresCarteiraCobrancaExecute(Sender: TObject);
begin
  FrmCarteiraCobranca:=TFrmCarteiraCobranca.Create(self);
  FrmCarteiraCobranca.Show;
end;

procedure TFrmPrincipal.actCadastrosAuxiliaresMotivoBaixaExecute(Sender: TObject);
begin
  FrmMotivoBaixas:=TFrmMotivoBaixas.Create(self);
  FrmMotivoBaixas.Show;
end;

procedure TFrmPrincipal.actFinanceiroPagarSubstituirExecute(Sender: TObject);
begin
   FrmCtaPagarSubstituirTitulos :=TFrmCtaPagarSubstituirTitulos.Create(self);
   FrmCtaPagarSubstituirTitulos.ShowModal;
end;

procedure TFrmPrincipal.actConfigurarUsuariosExecute(Sender: TObject);
begin
   FrmUsuarios := TFrmUsuarios.create(self);
   FrmUsuarios.ShowModal;
end;

procedure TFrmPrincipal.actAjudaLogOFFExecute(Sender: TObject);
begin
  LogOff;
end;

procedure TFrmPrincipal.actAjudaOrganizarJanelasExecute(Sender: TObject);
begin
   Cascade;
end;

procedure TFrmPrincipal.actAjudaSobreSistemaExecute(Sender: TObject);
begin
   FrmAboutBox :=TFrmAboutBox.create(self);
   FrmAboutBox.Showmodal;
end;

procedure TFrmPrincipal.actAjudaSolicitarSuporteExecute(Sender: TObject);
begin
//
end;

procedure TFrmPrincipal.actAjudaTrocarEmpresaExecute(Sender: TObject);
begin
   FrmEmpresaSelecionar := TFrmEmpresaSelecionar.Create(self);
   FrmEmpresaSelecionar.ShowModal;
end;

procedure TFrmPrincipal.actAjudaTrocarUsuarioExecute(Sender: TObject);
begin
  LogOff;
end;

procedure TFrmPrincipal.actEstoqueRelatoriosExecute(Sender: TObject);
begin
   FrmRelEstoque := TFrmRelEstoque.create(self);
   FrmRelEstoque.ShowModal;

end;

procedure TFrmPrincipal.actEstoqueSegmentoExecute(Sender: TObject);
begin
  FrmSegmento:=TFrmSegmento.Create(self);
  FrmSegmento.Show;
end;

procedure TFrmPrincipal.actCadastrosContasCaixaExecute(Sender: TObject);
begin
  FrmConta:=TFrmConta.Create(self);
  FrmConta.Show;

end;

procedure TFrmPrincipal.actFinanceiroCaixaFechamentoExecute(Sender: TObject);
begin
  FrmRelMovCaixa:=TFrmRelMovCaixa.Create(self);
  FrmRelMovCaixa.Show;

end;

procedure TFrmPrincipal.actFinanceiroCaixaFluxoExecute(Sender: TObject);
begin
  FrmRelFluxoCaixa:=TFrmRelFluxoCaixa.Create(self);
  FrmRelFluxoCaixa.Show;
end;

procedure TFrmPrincipal.actFinanceiroMovimentoContasTransferenciaExecute(Sender: TObject);
begin
  FrmTransferenciaContas:=TFrmTransferenciaContas.Create(self);
  FrmTransferenciaContas.Show;
end;

procedure TFrmPrincipal.Action23Execute(Sender: TObject);
begin
   FrmClientesGradeEdicao := TFrmClientesGradeEdicao.create(self);
   FrmClientesGradeEdicao.ShowModal;

end;

procedure TFrmPrincipal.Action2Execute(Sender: TObject);
begin
  { TODO : isolado...deve  reabilitar posteriormente. }
  //FrmAlertasLancamentos:=TFrmAlertasLancamentos.Create(self);
  //FrmAlertasLancamentos.Show;
end;

procedure TFrmPrincipal.actTerceirizadosRemessasExecute(Sender: TObject);
begin
  FrmDistribuirRemessa:=TFrmDistribuirRemessa.Create(Self);
  FrmDistribuirRemessa.Show;

end;

procedure TFrmPrincipal.actCadastrosTiposLinhaProdutoExecute(Sender: TObject);
begin
  FrmLinhasProdutos:=TFrmLinhasProdutos.Create(self);
  FrmLinhasProdutos.Show;
end;

procedure TFrmPrincipal.actCadastrosGrupoComprasExecute(Sender: TObject);
begin
  FrmGrupoCompras:=TFrmGrupoCompras.Create(self);
  FrmGrupoCompras.Show;

end;

procedure TFrmPrincipal.actCadastrosPorteClientesExecute(Sender: TObject);
begin
  FrmPorteClientes:=TFrmPorteClientes.Create(self);
  FrmPorteClientes.Show;

end;

procedure TFrmPrincipal.actCadastrosRepresentantesRegioesCaracteristicasExecute(Sender: TObject);
begin
  //FrmRegioesCaracteristicas:=TFrmRegioesCaracteristicas.Create(self);
  //FrmRegioesCaracteristicas.Show;
end;

procedure TFrmPrincipal.actFinanceiroPagarRelatoriosExecute(Sender: TObject);
begin
  FrmRelCtaPagar:=TFrmRelCtaPagar.Create(self);
  FrmRelCtaPagar.Show;

end;

procedure TFrmPrincipal.actFinanceiroReceberRelatoriosExecute(Sender: TObject);
begin
  FrmRelCtaReceber:=TFrmRelCtaReceber.Create(self);
  FrmRelCtaReceber.Show;


end;

procedure TFrmPrincipal.actCadastrosClienteMalaDiretaExecute(Sender: TObject);
begin
   FrmRelClientesMalaDireta := TFrmRelClientesMalaDireta.create(self);
   FrmRelClientesMalaDireta.ShowModal;

end;

procedure TFrmPrincipal.actCadastrosRepresentantesRegioesExecute(Sender: TObject);
begin
  FrmRegioes:=TFrmRegioes.Create(self);
  FrmRegioes.Show;

end;

procedure TFrmPrincipal.actCadastrosRepresentantesPessoaJuridicaExecute(Sender: TObject);
begin
   FrmColaborador := TFrmColaborador.create(self);
   FrmColaborador.Show;

end;

procedure TFrmPrincipal.actCadastrosFornecedorGrupoExecute(Sender: TObject);
begin
  FrmEntidadeGrupo:=TFrmEntidadeGrupo.Create(self);
  FrmEntidadeGrupo.Show;
end;

procedure TFrmPrincipal.actCadastrosFornecedorPessoaJuridicaExecute(Sender: TObject);
begin
   FrmFornecedores := TFrmFornecedores.create(self);
   FrmFornecedores.show;
end;

procedure TFrmPrincipal.AppMenuSairExecute(Sender: TObject);
begin
  Close;
//  FrmPrincipal.hide;
//  FrmTelaPrincipal :=TFrmTelaPrincipal.create(Application);
//  FrmTelaPrincipal.ShowModal;
end;

procedure TFrmPrincipal.actFiscalPlanoContasExecute(Sender: TObject);
begin
  FrmPlanoContas := TFrmPlanoContas.create(self);
  FrmPlanoContas.ShowModal;
end;

procedure TFrmPrincipal.actFiscalCFOPExecute(Sender: TObject);
begin
   FrmCFOP := TFrmCFOP.create(self);
   FrmCFOP.ShowModal;
end;

procedure TFrmPrincipal.actCadastrosAuxiliaresDepartamentosExecute(Sender: TObject);
begin
  FrmDepartamentos:=TFrmDepartamentos.Create(self);
  FrmDepartamentos.Show;

end;

procedure TFrmPrincipal.actCadastrosAuxiliaresFormaPagtoExecute(Sender: TObject);
begin
  FrmFormaPagto := TFrmFormaPagto.create(self);
  FrmFormaPagto.Show;
end;

procedure TFrmPrincipal.actConfigurarWindowsExecute(Sender: TObject);
begin
   WinExec('RunDLL32.exe Shell32.DLL,Control_RunDLL Intl.cpl', SW_Show);
end;

procedure TFrmPrincipal.actGestaoMarkupExecute(Sender: TObject);
begin
  FrmMarkup:=TFrmMarkup.Create(self);
  FrmMarkup.Show;

end;

procedure TFrmPrincipal.actVendasExpressaExecute(Sender: TObject);
begin
  FrmVendaExpressa:=TFrmVendaExpressa.Create(self);
  FrmVendaExpressa.Show;

end;

procedure TFrmPrincipal.actClassificacaoProdutosGruposExecute(Sender: TObject);
begin
  FrmGrupos:=TFrmGrupos.Create(self);
  FrmGrupos.Show;

end;

procedure TFrmPrincipal.actFiscalNCMExecute(Sender: TObject);
begin
  FrmTabelaNCM:=TFrmTabelaNCM.Create(self);
  FrmTabelaNCM.Show;

end;

procedure TFrmPrincipal.actCadastrosSubgrupoExecute(Sender: TObject);
begin
  FrmSubGrupos:=TFrmSubGrupos.Create(self);
  FrmSubGrupos.Show;

end;

procedure TFrmPrincipal.actCadastrosTiposProdutosExecute(Sender: TObject);
begin
  FrmTipoProduto:=TFrmTipoProduto.Create(self);
  FrmTipoProduto.Show;
end;

procedure TFrmPrincipal.actCadastrosTransportadorasExecute(Sender: TObject);
begin
  FrmTransportadoras:=TFrmTransportadoras.Create(self);
  FrmTransportadoras.Show;
end;

procedure TFrmPrincipal.actEstoqueCadastrosExecute(Sender: TObject);
begin
   if FParametros.Quantificar='GRADE' then
   begin
     FrmProdutosDetalhados:=TFrmProdutosDetalhados.Create(self);
     FrmProdutosDetalhados.Show;
   end;
   if FParametros.Quantificar='NORMAL' then
   begin
     FrmProdutosDetalhados:=TFrmProdutosDetalhados.Create(self);
     FrmProdutosDetalhados.TabGrade.Free;
     FrmProdutosDetalhados.EditGrife.Visible := False;
     FrmProdutosDetalhados.EditNomeGrife.Visible := False;
     FrmProdutosDetalhados.EditGradeTamanhos.Visible := False;
     FrmProdutosDetalhados.EditNomeGrade.Visible := False;
     FrmProdutosDetalhados.EditColecao.Visible := False;
     FrmProdutosDetalhados.EditNomeColecao.Visible := False;
     FrmProdutosDetalhados.rdUtilizaGrade.Visible := False;
     FrmProdutosDetalhados.rdCiclo.Visible := False;
     FrmProdutosDetalhados.gpGrades.Visible := False;
     FrmProdutosDetalhados.pgDetalhes.TabIndex := 0;
     FrmProdutosDetalhados.Show;

     //FrmProdutos:=TFrmProdutos.Create(self);
     //FrmProdutos.Show;
   end;
end;

procedure TFrmPrincipal.actEstoqueCodigoBarraJatoTintasExecute(Sender: TObject);
begin
  FrmEtiquetasWindows :=TFrmEtiquetasWindows.Create(self);
  FrmEtiquetasWindows.ShowModal;
end;

procedure TFrmPrincipal.actConfigurarServidorExecute(Sender: TObject);
begin
   FrmServidorSistema := TFrmServidorSistema.create(self);
   FrmServidorSistema.ShowModal;
end;

procedure TFrmPrincipal.actGestaoTabelaPrecosExecute(Sender: TObject);
begin
   FrmTabelaPreco := TFrmTabelaPreco.create(self);
   FrmTabelaPreco.Show;
end;

procedure TFrmPrincipal.actEstoqueAtualizarExecute(Sender: TObject);
begin
   FrmProdutosQuantidade := TFrmProdutosQuantidade.create(self);
   FrmProdutosQuantidade.ShowModal;
end;

procedure TFrmPrincipal.actEstoqueCodigoBarraTermicaExecute(Sender: TObject);
begin
   FrmEtiquetasGerar := TFrmEtiquetasGerar.create(self);
   FrmEtiquetasGerar.Show;
end;

procedure TFrmPrincipal.actComprasPedidoExecute(Sender: TObject);
begin
  FrmPedidoCompra:=TFrmPedidoCompra.Create(self);
  FrmPedidoCompra.Show;

end;

procedure TFrmPrincipal.actComprasRelatoriosExecute(Sender: TObject);
begin
  FrmRelCompras := TFrmRelCompras.Create(Self);
  FrmRelCompras.ShowModal;
end;

procedure TFrmPrincipal.actEstoqueComprasExecute(Sender: TObject);
begin
   FrmCompra := TFrmCompra.Create(self);
   FrmCompra.Show;
 end;

procedure TFrmPrincipal.actCadastrosAuxiliaresIBGECEPExecute(Sender: TObject);
begin
  FrmCidadeIBGE:=TFrmCidadeIBGE.create(self);
  FrmCidadeIBGE.Show;
end;

procedure TFrmPrincipal.actConfigurarEtiquetasExecute(Sender: TObject);
begin
   FrmEtiquetaConfigurar := TFrmEtiquetaConfigurar.create(self);
   FrmEtiquetaConfigurar.ShowModal;
end;

procedure TFrmPrincipal.actTerceirizadosPrecosServicosExecute(Sender: TObject);
begin
  FrmTabelaPrecoServicos:=TFrmTabelaPrecoServicos.Create(self);
  FrmTabelaPrecoServicos.Show;
end;

procedure TFrmPrincipal.actTerceirizadosRelatoriosExecute(Sender: TObject);
begin
  FrmTerceirizadosRelatorios :=TFrmTerceirizadosRelatorios.Create(Self);
  FrmTerceirizadosRelatorios.showModal;
end;

procedure TFrmPrincipal.actPCPLoteProducaoExecute(Sender: TObject);
begin
  FrmLoteProducao:=TFrmLoteProducao.Create(self);
  FrmLoteProducao.Show;


end;

procedure TFrmPrincipal.actAjudaCalendarioExecute(Sender: TObject);
begin
  FrmCalendario:=TFrmCalendario.Create(self);
  FrmCalendario.Show;

end;

procedure TFrmPrincipal.actEstoquePesquisaEstoqueExecute(Sender: TObject);
begin
   FrmProdutosPesquisaPreco := TFrmProdutosPesquisaPreco.create(self);
   FrmProdutosPesquisaPreco.ShowModal;

end;

procedure TFrmPrincipal.actConfigurarNFEExecute(Sender: TObject);
begin
   try
     FrmConfigurar := TFrmConfigurar.create(self);
     FrmConfigurar.PgParametros.ActivePageIndex := 3;
     FrmConfigurar.ShowModal;
   finally
     FrmConfigurar.Free;
   end;
end;

procedure TFrmPrincipal.actVendasPedidosAprovarExecute(Sender: TObject);
begin
  FrmPedidoAprovarVenda:=TFrmPedidoAprovarVenda.Create(self);
  FrmPedidoAprovarVenda.Show;


end;

procedure TFrmPrincipal.actVendasDevolucaoExecute(Sender: TObject);
begin
   { TODO : isolado...deve  reabilitar posteriormente. }
   //FrmVendaDevolucaoProdutos := TFrmVendaDevolucaoProdutos.create(self);
   //FrmVendaDevolucaoProdutos.Show;
end;

procedure TFrmPrincipal.actFinanceiroReceberBaixaExecute(Sender: TObject);
begin
  FrmCtaReceberBaixas:=TFrmCtaReceberBaixas.Create(self);
  FrmCtaReceberBaixas.Show;


end;


procedure TFrmPrincipal.actFinanceiroReceberBaixaLoteExecute(Sender: TObject);
begin
   FrmCtaReceberBaixasLotes:=TFrmCtaReceberBaixasLotes.Create(self);;
   FrmCtaReceberBaixasLotes.ShowModal;
end;

procedure TFrmPrincipal.actFinanceiroReceberArquivoRetornoExecute(Sender: TObject);
begin
  FrmConciliacaoBanco:=TFrmConciliacaoBanco.Create(self);
  FrmConciliacaoBanco.Show;

end;

procedure TFrmPrincipal.actFinanceiroImpressosBoletoBancarioExecute(Sender: TObject);
begin
  FrmBoletoBancario:=TFrmBoletoBancario.Create(self);
  FrmBoletoBancario.Show;

end;

procedure TFrmPrincipal.actConfigurarBoletoBancarioExecute(Sender: TObject);
begin
   FrmContaCorrente := TFrmContaCorrente.create(self);
   FrmContaCorrente.Show;
end;

procedure TFrmPrincipal.actConfigurarEmpresasExecute(Sender: TObject);
Var
 idEmpresaOld : Integer;
begin
   idEmpresaOld := FSistema.Empresa;

   FrmEmpresaSelecionar := TFrmEmpresaSelecionar.Create(self);
   FrmEmpresaSelecionar.ShowModal;

   // se houve mudan�a na empresa, reconfigurar.
   if idEmpresaOld <> FSistema.Empresa then
   Begin
      SetarEmpresa;

      AvisoSistema('O Sistema ser� fechado.' +
                sLineBreak+
                sLineBreak+
                'E execute-o novamente, para carregar as configura��es adequadas.');


      FProsseguir := not blTerminate;
      blTerminate := True;
      TerminarAplicacao;

   End;
end;

procedure TFrmPrincipal.actConfigurarParametrosExecute(Sender: TObject);
var
  mTipo : String;
begin
   mTipo := FParametros.Quantificar;
   try
     FrmConfigurar := TFrmConfigurar.create(self);
     FrmConfigurar.ShowModal;
   finally
     FrmConfigurar.Free;
     if mTipo <> FParametros.Quantificar then
     begin
        AvisoSistema('O Sistema ser� fechado.' +
                  sLineBreak+
                  sLineBreak+
                  'E execute-o novamente, para carregar as configura��es adequadas.');
        TerminarAplicacao;
     end;
   end;
end;

procedure TFrmPrincipal.actSairSistemaExecute(Sender: TObject);
begin
  Application.Terminate;
  TerminateProcess(GetCurrentProcess, 0);
end;

procedure TFrmPrincipal.actVendasPedidosConferenciaExecute(Sender: TObject);
begin
   FrmPedidoVendaConferencia :=TFrmPedidoVendaConferencia.Create(self);
   FrmPedidoVendaConferencia.Show;
end;

procedure TFrmPrincipal.actVendasRelatoriosExecute(Sender: TObject);
begin
  FrmRelFaturamento:=TFrmRelFaturamento.Create(self);
  FrmRelFaturamento.Show;
end;

procedure TFrmPrincipal.actVendasPedidosRelatorioExecute(Sender: TObject);
begin
  FrmRelPedidos:=TFrmRelPedidos.Create(self);
  FrmRelPedidos.Show;

end;

procedure TFrmPrincipal.LogOff;
begin
  FUsuario.Resetar;
  LogOn;
end;

procedure TFrmPrincipal.LogOn;
begin
   // ------------------------------------------------------------------------
   // Acessa tela de LOGIN
   // ------------------------------------------------------------------------
   FrmAcesso := TFrmAcesso.create(self);
   FrmAcesso.ShowModal;

   //blnUsuarioAutorizado :=true;
   if blnUsuarioAutorizado = False then
   begin
      // fechar sistema
      FProsseguir       :=False;
      TerminarAplicacao;
   end;

   if not FProsseguir then
     Exit;

    //if FProsseguir then
    //  FParametrosAtualizaDados;

   // ------------------------------------------------------------------------
   // Definir dados na barra de status
   // ------------------------------------------------------------------------
   FUsuario.Nome:=fncPrimeiraLetra(FUsuario.Nome);
   dxStatusBar1.Panels[2].Text := Concat(' Usu�rio: ', FUsuario.Nome);

   // ------------------------------------------------------------------------
   // Define acesso ao menus
   // ------------------------------------------------------------------------
   FUsuario.LogUsuario('Sistema','acessou sistema '+Application.Title);


end;

procedure TFrmPrincipal.ConfigurarInicio;
var
  iActMenus  :  Integer;
  ac: TAction;
begin
   Application.OnShowHint    := ShowHintPersonalizado;
   FSistema.ExeName := Uppercase(ExtractName( Application.ExeName));
   // ------------------------------------------------------------------------
   // Configura componente ImagemLogo para cobrir toda area do formul�rio
   // e centralizar no formul�rio
   // ------------------------------------------------------------------------
   ImagemLogo.AutoSize := True;
   ImagemLogo.Align := alClient;
   // ------------------------------------------------------------------------
   // Checa se a LOGO existe, se exitir carrega no formul�rio principal
   // ------------------------------------------------------------------------
   if fileexists(FSistema.PastaPadrao+'\logo.jpg') then
   Begin
      ImagemLogo.Picture.LoadFromFile(FSistema.PastaPadrao+'\logo.jpg');
   End;
   Update;
   //Application.OnMessage := MudarComEnter;

   dxStatusBar1.Panels[0].Text := Concat(Application.Title, ' | ' +  _ANOATUAL.ToString(_ANOATUAL)  ) ;

   // ------------------------------------------------------------------------
   // Fechar formul�rio SPLASH depois que tudo foi carregado e configurado
   // ------------------------------------------------------------------------
   FrmSplash.Close;
  if FrmSplash<>Nil then
     FrmSplash.Free;

end;

procedure TFrmPrincipal.DBConexaoAfterConnect(Sender: TObject);
begin
   dxStatusBar1.Panels[3].Text := 'Status do Servidor: Conectado';
   dxStatusBar1.Panels[4].Text := 'Servidor: '+FBancoDados.Endereco; //DBConexao.Params.Values['server'];
end;

procedure TFrmPrincipal.DBConexaoAfterDisconnect(Sender: TObject);
begin
   if dxStatusBar1<>nil then
   begin
     dxStatusBar1.Panels[3].Text := 'Status do Servidor: Desconectado';
     dxStatusBar1.Panels[4].Text := 'IP Servidor: offline';
   end;
end;

procedure TFrmPrincipal.DBConexaoError(ASender, AInitiator: TObject;
  var AException: Exception);
begin
//   AvisoSistemaErro(Format('Erro ao tentar conectar ao banco de dados %s.'+sLineBreak+'('+AException.Message+')',[DATABASE_GERENCIADOR]));
end;

procedure TFrmPrincipal.db_empresaBeforeOpen(DataSet: TDataSet);
begin
   db_empresa.ParamByName('EMPRESA').Clear;
   db_empresa.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;
end;

// ------------------------------------------------------------------------
// conectar ao servidor...
// ------------------------------------------------------------------------
procedure TFrmPrincipal.CarregarEmpresa;
begin
   FSistema.Empresa:=cfg_EmpresaLer;
   //FParametrosAtualizaDados;
   //SetarEmpresa;
end;

procedure TFrmPrincipal.SetarEmpresa;
begin
   cfg_EmpresaGravar(FSistema.Empresa);
   dxStatusBar1.Panels[1].Text := Concat('Empresa: ', IntToStr(FSistema.Empresa),  '  ', FParametros.Empresa.NomeFantasia ) ;
end;

procedure TFrmPrincipal.InstanciarDBFirebird;
var
  mCursor : TCursor;
begin
  if not FileExists(FBancoDados.BancoDados) then
  try
    //raise Exception.Create('Banco de dados n�o encontrado'+sLineBreak+sLineBreak+
    //                       'Local: '+FBancoDados.BancoDados);
    AvisoSistemaErro('Banco de dados n�o encontrado... verifique o problema.'+sLineBreak+sLineBreak+
                'Local: '+FBancoDados.BancoDados+sLineBreak+sLineBreak+
                'O sistema ser� encerrado. ');
  finally
    TerminarAplicacao;
  end;


  mCursor :=Cursor;
  FErroConectaDB :=False;
  DBConexao.Close;
  GetConfigFB(DBConexao);
  Try
    Cursor :=crSQLWait;
    Try
      DBConexao.Open;
    Except
      FProsseguir    :=False;
      FErroConectaDB :=True;
    End;
  Finally
    mCursor :=Cursor ;
  End;
end;

procedure TFrmPrincipal.InstanciarDBSQLite;
var
  mCursor : TCursor;
begin
//  mCursor :=Cursor;
//  ConnectSQLite.Close;
//  Try
//    Cursor :=crSQLWait;
//    GetConfigSQLITE(ConnectSQLite);
//    Try
//      ConnectSQLite.Open;
//    Except
//    End;
//  Finally
//    Cursor := mCursor;
//  End;
end;

procedure TFrmPrincipal.InstanciarDataModule;
begin
   // ------------------------------------------------------------------------
   // Carregar na mem�ria DATAMODULEs
   // ------------------------------------------------------------------------
   BaseDados          := TBaseDados.create(self);
   BaseDados_PCP      := TBaseDados_PCP.create(self);
   dmBaseComponentes  := TdmBaseComponentes.create(self);

   /// ------------------------------------------------------------------------
   /// Enviar ao servidor dados de registros
   /// ------------------------------------------------------------------------
   BaseDados.db_Parametros.Close;
   BaseDados.db_Parametros.Open;
   //SetarEmpresa;
end;

procedure TFrmPrincipal.CarregarUltimaEtapa;
begin
   // ------------------------------------------------------------------------
   // Define parametros de acordo com o cadastro do usuario
   // ------------------------------------------------------------------------
   BaseDados.db_Parametros.Close;
   BaseDados.db_Parametros.Open;
   db_empresa.Close;
   db_empresa.Open;

   // ------------------------------------------------------------------------
   // carregar papel de parede
   // ------------------------------------------------------------------------
   if BaseDados.db_Parametros.FieldByName('INF_IMGPRINCIPAL').AsString>'' then
   begin
      If fileexists(BaseDados.db_Parametros.FieldByName('INF_IMGPRINCIPAL').AsString) then
      Begin
         //ImagemLogo.Visible := True;
         ImagemLogo.Picture.LoadFromFile(BaseDados.db_Parametros.FieldByName('INF_IMGPRINCIPAL').AsString);
      End;
   end;

   if blnUsuarioAutorizado = False then
   begin
      // fechar sistema
      TerminarAplicacao;
   end;

   BaseDados.db_Parametros.Close;
   BaseDados.db_Parametros.Open;

   db_empresa.Close;
   db_empresa.Open;
end;

procedure TFrmPrincipal.ShowHintPersonalizado(var HintStr: string; var CanShow: Boolean;
  var HintInfo: THintInfo);
var
   I: Integer;
begin
   for I := 0 to (Application.ComponentCount - 1) do
   Begin
      if Application.Components[I] is THintWindow then
      with THintWindow(Application.Components[I]).Canvas do
      begin
         Font.Name := 'Segoe UI';
         Font.Size := 8;
         Font.Style := [fsBold];
         HintInfo.HintColor := clYellow;
      End;
   End;
end;

procedure TFrmPrincipal.StatusCarregar(aMensagem: String);
begin
  if not Assigned(FrmSplash) then
    exit;

  FrmSplash.pnStatus.Caption :=Trim(aMensagem);
  Application.ProcessMessages;
end;

procedure TFrmPrincipal.Ribbon1HelpButtonClick(Sender: TObject);
begin
  FrmAboutBox:=TFrmAboutBox.Create(Self);
  FrmAboutBox.ShowModal;
end;

procedure TFrmPrincipal.actTransporteEtiquetasExecute(Sender: TObject);
begin
  FrmEtiquetacaixa:=TFrmEtiquetacaixa.Create(self);
  FrmEtiquetacaixa.Show;
end;

procedure TFrmPrincipal.actVendasPedidosEmitirExecute(Sender: TObject);
begin
  FrmPedidoVenda:=TFrmPedidoVenda.Create(self);
  FrmPedidoVenda.Show;
end;

function TFrmPrincipal.FormAtivo(AForm: TFormClass): Boolean;
var
  I: Integer;
  F: TForm;
begin
  Result := False;
  for I :=  0 to Application.MainForm.MDIChildCount - 1 do
  begin
    if Application.MainForm.MDIChildren[i] is AForm then
    begin
      F := Application.MainForm.MDIChildren[I] as AForm;
      Result := True;
      Break;
    end;
  end;
end;


procedure TFrmPrincipal.IsFormCreated(FClass: TFormClass; var Instance);
begin
  //if Assigned(TForm(Instance)) then
  if (TForm(Instance)<>Nil) then
  begin
     //TForm(Instance).SetFocus;
		 //TForm(Instance).WindowState := wsNormal;
		 TForm(Instance).BringToFront;
     TForm(Instance).Show;
  end
  else
  begin
     Application.CreateForm(FClass, Instance);
  end;
end;

procedure TFrmPrincipal.MenusHabilitar;
var
  mQuery   : TFDQuery;
  mVisivel : Boolean;
begin
  if (UpperCase(FUsuario.Nome) = MASTER_USUARIO) and (UpperCase(FUsuario.Senha) = MASTER_SENHA) then
    exit;
  mVisivel := False;
  try
    mQuery := TFDQuery.Create(Self);
    mQuery.Connection := DBConexao;

    mQuery.Close;
    mQuery.SQL.Clear;
    mQuery.SQL.Add(' SELECT * FROM USUARIO   ');
    mQuery.SQL.Add(' WHERE  ');
    mQuery.SQL.Add(' ID='+IntToStr(FUsuario.ID));
    mQuery.Open;
    mVisivel := (mQuery.FieldByName('ACESSOVISIVEL').AsString = 'SIM');

    mQuery.Close;
    mQuery.SQL.Clear;
    mQuery.SQL.Add(' SELECT ID, CATEGORIA, MENU, TITULO, ACESSO FROM USUARIOACESSO   ');
    mQuery.SQL.Add(' WHERE  ');
    mQuery.SQL.Add(' ID='+IntToStr(FUsuario.ID));
    mQuery.Open;
    while not mQuery.eof do
    begin
       if mVisivel then
       begin
         ActionHabilitar(mQuery.FieldByName('MENU').AsString,
                         mQuery.FieldByName('ACESSO').AsString='SIM');
       end
       else
       begin
         ActionVisivel(mQuery.FieldByName('MENU').AsString,
                       mQuery.FieldByName('ACESSO').AsString='SIM');
       end;
       mQuery.next;
    end;
  finally
    mQuery.Close;
    mQuery.Free;
  end;

end;

procedure TFrmPrincipal.panel_bottomClick(Sender: TObject);
begin

end;

// --------------------------------------------------------------------------
// Habilitar/Desabilitar acesso Items do ActionMenus (TActionList)
// --------------------------------------------------------------------------
procedure ActionHabilitar(const aItemMenu : String; aHabilitar : Boolean);
var
  I       : Integer;
  mAction : TAction;
begin
  for i := 0 to Pred(FrmPrincipal.ActionMenus.ActionCount) do
  begin
    mAction := TAction(FrmPrincipal.ActionMenus.Actions[i]);
    if LowerCase(mAction.Name)=LowerCase(trim(aItemMenu)) then
    begin
      if mAction.Visible then
      begin
        mAction.Enabled := aHabilitar;
      end;
    end;
  end;
end;

// --------------------------------------------------------------------------
// Habilitar/Desabilitar visibilidade do Items do ActionMenus (TActionList)
// --------------------------------------------------------------------------
procedure ActionVisivel(const aItemMenu : String; aVisivel : Boolean);
var
  I       : Integer;
  mAction : TAction;
begin
  for i := 0 to Pred(FrmPrincipal.ActionMenus.ActionCount) do
  begin
    mAction := TAction(FrmPrincipal.ActionMenus.Actions[i]);
    if LowerCase(mAction.Name)=LowerCase(trim(aItemMenu)) then
      mAction.Visible := aVisivel;
  end;
end;

end.


