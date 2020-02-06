{***********************************************************************************
**  SISTEMA...............: Vida Nova Gest�o de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  C�digo pertencente ao cliente sob prote��o autoral.                           ****  N�o comercializ�vel sem pr�via autoriza��o do mesmo.                          **
***********************************************************************************}

Unit Classe.Parametros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Classe.EMail;

type

   TParametrosEmpresa = Class
   Private
     FCodigo                           : Integer;
     FDataAtividade                    : TDateTime; // data inicial de atividade da empresa
     FNome                             : String;
     FNomeFantasia                     : String;
     FCNPJ                             : String;
     FIE                               : String;
     FIEmunicipal                      : String;
     FEndereco                         : String;
     FNumero                           : String;
     FBairro                           : String;
     FComplemento                      : String;
     FCep                              : String;
     FFone                             : String;
     FFax                              : String;
     FEmail                            : String;
     FSite                             : String;
     FContato                          : String;
     FIDCidade                         : Integer;
     FIDUF                             : Integer;
     FCidade                           : String;
     FUF                               : String;
     FCodigoPais                       : Integer;
     FNomePais                         : String;
     FREGIME_TRIB                      : Integer;
     FREGIME_TRIBALIQ                  : Real;

   Public
     property Codigo                   : Integer    Read  FCodigo                     Write FCodigo;
     property DataAtividade            : TDateTime  Read  FDataAtividade              Write FDataAtividade;
     property Nome                     : String     Read  FNome                       Write FNome;
     property NomeFantasia             : String     Read  FNomeFantasia               Write FNomeFantasia;
     property CNPJ                     : String     Read  FCNPJ                       Write FCNPJ;
     property IE                       : String     Read  FIE                         Write FIE;
     property IEmunicipal              : String     Read  FIEmunicipal                Write FIEmunicipal;
     property Endereco                 : String     Read  FEndereco                   Write FEndereco;
     property Numero                   : String     Read  FNumero                     Write FNumero;
     property Bairro                   : String     Read  FBairro                     Write FBairro;
     property Complemento              : String     Read  FComplemento                Write FComplemento;
     property Cep                      : String     Read  FCep                        Write FCep;
     property Fone                     : String     Read  FFone                       Write FFone;
     property Fax                      : String     Read  FFax                        Write FFax;
     property Email                    : String     Read  FEmail                      Write FEmail;
     property Site                     : String     Read  FSite                       Write FSite;
     property Contato                  : String     Read  FContato                    Write FContato;
     property IDCidade                 : Integer    Read  FIDCidade                   Write FIDCidade;
     property IDUF                     : Integer    Read  FIDUF                       Write FIDUF;
     property Cidade                   : String     Read  FCidade                     Write FCidade;
     property UF                       : String     Read  FUF                         Write FUF;
     property CodigoPais               : Integer    Read  FCodigoPais                 Write FCodigoPais;
     property NomePais                 : String     Read  FNomePais                   Write FNomePais;
     property REGIME_TRIB              : Integer    Read  FREGIME_TRIB                Write FREGIME_TRIB;
     property REGIME_TRIBALIQ          : Real       Read  FREGIME_TRIBALIQ            Write FREGIME_TRIBALIQ;

   End;


   TParametrosNFE = Class
   private
     { Private declarations }
     FAmbiente          : Integer;
     FTipoDANFE         : String;
     FFormaEmissao      : String;
     FModelo            : String;
     FSerie             : String;
     FSequencia         : Integer;
     FLote              : Integer;
     FVersaoNFe         : Integer;
     FCertArquivo       : String;
     FCertSenha         : String;
     FCertSerie         : String;
     FEnviarEmail       : Boolean;
     FGeradorDANFE      : String;

     FRespTec_IDCSRT    : String;
     FRespTec_CSRT      : String;
     FRespTec_CNPJ      : String;
     FRespTec_xContato  : String;
     FRespTec_email     : String;
     FRespTec_Fone      : String;

   public
     { Public declarations }
     property Ambiente           : Integer    Read  FAmbiente        Write  FAmbiente;
     property TipoDANFE          : String     Read  FTipoDANFE       Write  FTipoDANFE;
     property FormaEmissao       : String     Read  FFormaEmissao    Write  FFormaEmissao;
     property Modelo             : String     Read  FModelo          Write  FModelo;
     property Serie              : String     Read  FSerie           Write  FSerie;
     property Sequencia          : Integer    Read  FSequencia       Write  FSequencia;
     property Lote               : Integer    Read  FLote            Write  FLote;
     property VersaoNFe          : Integer    Read  FVersaoNFe       Write  FVersaoNFe;

     property CertArquivo        : String     Read  FCertArquivo     Write  FCertArquivo;
     property CertSenha          : String     Read  FCertSenha       Write  FCertSenha;
     property CertSerie          : String     Read  FCertSerie       Write  FCertSerie;
     property EnviarEmail        : Boolean    Read  FEnviarEmail     Write  FEnviarEmail;
     property GeradorDANFE       : String     Read  FGeradorDANFE    Write  FGeradorDANFE;

     property RespTec_IDCSRT     : String     Read  FRespTec_IDCSRT   Write  FRespTec_IDCSRT;
     property RespTec_CSRT       : String     Read  FRespTec_CSRT     Write  FRespTec_CSRT;
     property RespTec_CNPJ       : String     Read  FRespTec_CNPJ     Write  FRespTec_CNPJ;
     property RespTec_xContato   : String     Read  FRespTec_xContato Write  FRespTec_xContato;
     property RespTec_email      : String     Read  FRespTec_email    Write  FRespTec_email;
     property RespTec_Fone       : String     Read  FRespTec_Fone     Write  FRespTec_Fone;
   End;


   TParametrosProduto = Class
   Private
     FCodificacao                      : String;
     FSeparador                        : String;
     FGrupo                            : Integer;
     FSubgrupo                         : Integer;
     FProduto                          : Integer;
     FEstoqueNegativo                  : String;
     FSituacaoTributaria               : String;
     FNCM                              : String;

   Public
     property  Codificacao             : String     Read  FCodificacao            Write    FCodificacao;
     property  Separador               : String     Read  FSeparador              Write    FSeparador;
     property  Grupo                   : Integer    Read  FGrupo                  Write    FGrupo;
     property  Subgrupo                : Integer    Read  FSubgrupo               Write    FSubgrupo;
     property  Produto                 : Integer    Read  FProduto                Write    FProduto;
     property  EstoqueNegativo         : String    Read  FEstoqueNegativo        Write    FEstoqueNegativo;
     property  SituacaoTributaria      : String     Read  FSituacaoTributaria     Write    FSituacaoTributaria;
     property  NCM                     : String     Read  FNCM                    Write    FNCM;

   End;

   TParametrosProducao = Class
   Private
     FPRODUCAO_FINALIZAR                : String;
     FQualidadePadrao                  : Integer;

   Public
     property PRODUCAO_FINALIZAR        : String    Read FPRODUCAO_FINALIZAR      Write  FPRODUCAO_FINALIZAR;
     property QualidadePadrao          : Integer   Read FQualidadePadrao        Write  FQualidadePadrao;
   End;

   TParametrosFinanceiro = Class
   Private
     FJuros                            : Real;
     FCartorio                         : Real;
     FCobrancaDias                     : Integer;
     FVendaVistaBaixar                 : String;
     FDiasBloqueio                     : Integer;
     FPagarLancarCaixa                 : String;
     FPagarLancarBanco                 : String;
     FPagarComissao                    : String;
     FPagarContaCaixa                  : Integer;
     FPagarPlanoContas                 : String;
     FPagarComissaoVencimento          : Integer;
     FPagarComissaoContaCaixa          : Integer;
     FPagarComissaoCentroCusto         : Integer;
     FPagarComissaoPlanoConta          : String;
     FReceberLancarCaixa               : String;
     FReceberLancarBanco               : String;
     FReceberContaCaixa                : Integer;
     FReceberPlanoContas               : String;
     FBalcaoLancarCaixa                : String;
     FSiteCotacao                      : String;

   Public
     property Juros                    : Real         Read   FJuros                        Write   FJuros;
     property Cartorio                 : Real         Read   FCartorio                     Write   FCartorio;
     property CobrancaDias             : Integer      Read   FCobrancaDias                 Write   FCobrancaDias;
     property VendaVistaBaixar         : String      Read   FVendaVistaBaixar             Write   FVendaVistaBaixar;
     property DiasBloqueio             : Integer      Read   FDiasBloqueio                 Write   FDiasBloqueio;
     property PagarLancarCaixa         : String      Read   FPagarLancarCaixa             Write   FPagarLancarCaixa;
     property PagarLancarBanco         : String      Read   FPagarLancarBanco             Write   FPagarLancarBanco;
     property PagarComissao            : String       Read   FPagarComissao                Write   FPagarComissao;
     property PagarContaCaixa          : Integer      Read   FPagarContaCaixa              Write   FPagarContaCaixa;
     property PagarPlanoContas         : String       Read   FPagarPlanoContas             Write   FPagarPlanoContas;
     property PagarComissaoVencimento  : Integer      Read   FPagarComissaoVencimento      Write   FPagarComissaoVencimento;
     property PagarComissaoContaCaixa  : Integer      Read   FPagarComissaoContaCaixa      Write   FPagarComissaoContaCaixa;
     property PagarComissaoCentroCusto : Integer      Read   FPagarComissaoCentroCusto     Write   FPagarComissaoCentroCusto;
     property PagarComissaoPlanoconta  : String       Read   FPagarComissaoPlanoconta      Write   FPagarComissaoPlanoConta;
     property ReceberLancarCaixa       : String      Read   FReceberLancarCaixa           Write   FReceberLancarCaixa;
     property ReceberLancarBanco       : String      Read   FReceberLancarBanco           Write   FReceberLancarBanco;
     property ReceberContaCaixa        : Integer      Read   FReceberContaCaixa            Write   FReceberContaCaixa;
     property ReceberPlanoContas       : String       Read   FReceberPlanoContas           Write   FReceberPlanoContas;
     property BalcaoLancarCaixa        : String       Read   FBalcaoLancarCaixa            Write   FBalcaoLancarCaixa;
     property SiteCotacao              : String       Read   FSiteCotacao                    Write FSiteCotacao;

   End;

   TParametrosCompra = Class
   Private
     FPlanoContas                      : String;
     FCFOP                             : Integer;
     FFornecedor                       : Integer;

   Public
     property Planocontas              : String    Read FPlanocontas       Write FPlanoContas;
     property Fornecedor               : Integer   Read FFornecedor        Write FFornecedor;
     property CFOP                     : Integer   Read FCFOP              Write FCFOP;

   End;

   TParametrosAlerta = Class
   Private
     FEstoque                          : String;
     FCtareceber                       : String;
     FCtareceberDias                   : Integer;
     FCtapagar                         : String;
     FCtapagarDias                     : Integer;
     FPedidos                          : String;
     FCobranca                         : String;
     FValidade                         : String;
     FValidadeDias                     : Integer;
     FPedidosCompras                   : String;

   Public
     property Estoque                  : String   Read  FEstoque            Write   FEstoque;
     property Ctareceber               : String   Read  FCtareceber         Write   FCtareceber;
     property CtareceberDias           : Integer   Read  FCtareceberDias     Write   FCtareceberDias;
     property Ctapagar                 : String   Read  FCtapagar           Write   FCtapagar;
     property CtapagarDias             : Integer   Read  FCtapagarDias       Write   FCtapagarDias;
     property Pedidos                  : String   Read  FPedidos            Write   FPedidos;
     property Cobranca                 : String   Read  FCobranca           Write   FCobranca;
     property Validade                 : String   Read  FValidade           Write   FValidade;
     property ValidadeDias             : Integer   Read  FValidadeDias       Write   FValidadeDias;
     property PedidosCompras           : String   Read  FPedidosCompras     Write   FPedidosCompras;
   End;

   TParametrosCFOP = Class
   private
     { Private declarations }
     FVendaUFLocal                     : Integer;
     FVendaUFFora                      : Integer;
     FDevolucaoUFLocal                 : Integer;
     FDevolucaoUFFora                  : Integer;
     FCompraUFLocal                    : Integer;
     FCompraUFFora                     : Integer;

   public
     { Public declarations }
     property VendaUFLocal             : Integer  Read   FVendaUFLocal        Write   FVendaUFLocal;
     property VendaUFFora              : Integer  Read   FVendaUFFora         Write   FVendaUFFora;
     property DevolucaoUFLocal         : Integer  Read   FDevolucaoUFLocal    Write   FDevolucaoUFLocal;
     property DevolucaoUFFora          : Integer  Read   FDevolucaoUFFora     Write   FDevolucaoUFFora;
     property CompraUFLocal            : Integer  Read   FCompraUFLocal       Write   FCompraUFLocal;
     property CompraUFFora             : Integer  Read   FCompraUFFora        Write   FCompraUFFora;
   End;

   TParametrosLogotipo = Class
   Private
     FLogoPrincipal                    : String;
     FLogoRelatorios                   : String;

   Public
     property LogoPrincipal            : String   Read   FLogoPrincipal      Write  FLogoPrincipal;
     property LogoRelatorios           : String   Read   FLogoRelatorios     Write  FLogoRelatorios;
   End;

   TParametrosCliente = Class
   Private
     FInatividade                      : Integer;
     FAtrasoPermitido                  : Integer;

   Public
     property Inatividade              : Integer  Read   FInatividade         Write  FInatividade;
     property Atrasopermitido          : Integer  Read   FAtrasoPermitido     Write  FAtrasoPermitido;

   End;

   TParametrosPedidos = Class
   Private
     FEntrega                          : Integer;
     FBaixaEstoque                     : String;
     FMensagem                         : WideString;

   Public
     property Entrega                  : Integer        Read   FEntrega          Write  FEntrega;
     property Baixaestoque             : String         Read   FBaixaEstoque     Write  FBaixaEstoque;
     property Mensagem                 : WideString     Read   FMensagem         Write  FMensagem;

   End;

   TParametrosVenda = Class
   Private
     FVendedor                         : Integer;
     FCliente                          : Integer;
     FIDPagto                          : Integer;
     FImprimeFatura                    : String;

   Public
     property Vendedor                 : Integer  Read   FVendedor          Write  FVendedor;
     property Cliente                  : Integer  Read   FCliente           Write  FCliente;
     property IDPagto                  : Integer  Read   FIDPagto           Write  FIDPagto;
     property Imprimefatura            : String   Read   FImprimeFatura     Write  FImprimeFatura;

   End;

   TParametrosFrete = Class
   Private
     FPadrao                           : Integer;
   Public
     property Padrao                   : Integer Read   FPadrao     Write  FPadrao;

   End;

   TParametrosTerceirizado = Class
   Private
     FDiaVencimento                    : Integer;
   Public
     property DiaVencimento            : Integer   Read   FDiaVencimento     Write  FDiaVencimento;

   End;

   TParametros = Class(TPersistent)
   private
     { Private declarations }
     FEmpresa                        : TParametrosEmpresa;
     FEmail                          : TEmail;
     FProduto                        : TParametrosProduto;
     FFinanceiro                     : TParametrosFinanceiro;
     FCompra                         : TParametrosCompra;
     FAlerta                         : TParametrosAlerta;
     FCFOP                           : TParametrosCFOP;
     FNFE                            : TParametrosNFE;
     FConfiguracao                   : TParametrosLogotipo;
     FCliente                        : TParametrosCliente;
     FVenda                          : TParametrosVenda;
     FPedido                         : TParametrosPedidos;
     FFrete                          : TParametrosFrete;
     FTerceirizado                   : TParametrosTerceirizado;
     FProducao                       : TParametrosProducao;
     FQuantificar                    : String;
     FVisualizarComprovante          : Boolean;
   public
      { Public declarations }
     constructor Create;
     destructor  Destroy; override;

     property Empresa                : TParametrosEmpresa         Read  FEmpresa            Write   FEmpresa;
     property Email                  : TEmail                     Read  FEmail              Write   FEmail;
     property Produto                : TParametrosProduto         Read  FProduto            Write   FProduto;
     property Producao               : TParametrosProducao        Read  FProducao           Write   FProducao;
     property Financeiro             : TParametrosFinanceiro      Read  FFinanceiro         Write   FFinanceiro;
     property Compra                 : TParametrosCompra          Read  FCompra             Write   FCompra;
     property Alerta                 : TParametrosAlerta          Read  FAlerta             Write   FAlerta;
     property CFOP                   : TParametrosCFOP            Read  FCFOP               Write   FCFOP;
     property NFE                    : TParametrosNFE             Read  FNFE                Write   FNFE;
     property Configuracao           : TParametrosLogotipo        Read  FConfiguracao       Write   FConfiguracao;
     property Cliente                : TParametrosCliente         Read  FCliente            Write   FCliente;
     property Venda                  : TParametrosVenda           Read  FVenda              Write   FVenda;
     property Pedido                 : TParametrosPedidos         Read  FPedido             Write   FPedido;
     property Frete                  : TParametrosFrete           Read  FFrete              Write   FFrete;
     property Terceirizado           : TParametrosTerceirizado    Read  FTerceirizado       Write   FTerceirizado;
     property Quantificar            : String                     Read  FQuantificar        Write   FQuantificar;
     property VisualizarComprovante  : Boolean                    Read  FVisualizarComprovante     Write   FVisualizarComprovante;
   End;

implementation



{ TParametros }
constructor TParametros.Create;
begin
   FEmpresa            := TParametrosEmpresa.Create;
   FProduto            := TParametrosProduto.Create;
   FFinanceiro         := TParametrosFinanceiro.Create;
   FCompra             := TParametrosCompra.Create;
   FAlerta             := TParametrosAlerta.Create;
   FCFOP               := TParametrosCFOP.Create;
   FNFE                := TParametrosNFE.Create;
   FConfiguracao       := TParametrosLogotipo.Create;
   FCliente            := TParametrosCliente.Create;
   FVenda              := TParametrosVenda.Create;
   FPedido             := TParametrosPedidos.Create;
   FFrete              := TParametrosFrete.Create;
   FTerceirizado       := TParametrosTerceirizado.Create;
   FProducao           := TParametrosProducao.Create;
   FEmail              := TEmail.Create;

   FQuantificar        := '';
   FVisualizarComprovante     :=True;
end;

destructor TParametros.Destroy;
begin
     FTerceirizado.Free;
     FFrete.Free;
     FEmpresa.Free;
     FProduto.Free;
     FFinanceiro.Free;
     FCompra.Free;
     FAlerta.Free;
     FCFOP.Free;
     FNFE.Free;
     FConfiguracao.Free;
     FCliente.Free;
     FVenda.Free;
     FPedido.Free;
     FProducao.Free;
     FEmail.Free;
end;

end.



