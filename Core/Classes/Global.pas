{***********************************************************************************
**  SISTEMA...............: Vida Nova Gest�o de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  C�digo pertencente ao cliente sob prote��o autoral.                           ****  N�o comercializ�vel sem pr�via autoriza��o do mesmo.                          **
***********************************************************************************}

Unit Global;

interface

uses IniFiles, SysUtils,
     FireDAC.Comp.Client;

type
   ErroExcecao = class(Exception);
   TStringResultArray = array of string; // <== Defini��o do tipo
   TVariantResultArray = array of Variant; // <== Defini��o do tipo

Var

  // ----------------------------------------------------------
  //  Novas variaveis para vers�o 2012 em diante
  //  INICIO
  // ----------------------------------------------------------
  tblVendasFaturas,
  TblProdutos        : TFDQuery;


  // ----------------------------------------------------------
  // Numeros Inteiros (Integer)
  // ----------------------------------------------------------
  inVenda,  inNotaFiscal,
  inCliente, inVendedor,
  inTransportadora,
  inCFOP,
  inPrtEtiquetaAvanco,
  inPrtEtiquetaAltura,
  inFaseTransferencia        : Integer;


  nQuantidadeDigitada : Integer;
  nQuantidadeRestante : Integer;
  nLoteProducao  : integer;
  nOrdemProducao : integer;
  nRemessa, nTabelaPreco,
  nPedidoVenda : Integer;
  nIDXPedidoVenda : Integer;
  nTerceirizado : Integer;
  nTerceirizadoOrigem : Integer;
  nTerceirizadoDestino : Integer;
  nFase : Integer;
  nMarkup,
  nEtiquetas,
  nUsuario : Integer;



  // --------------------------------------------------------------------------------------
  // primeira coluna
  // --------------------------------------------------------------------------------------
  l_LinhaDescricao      ,
  l_LinhaCodProduto     ,
  l_LinhaCor            ,
  l_LinhaTam            ,
  l_LinhaCBARRA         ,
  l_LinhaOP             ,
  l_LinhaLote           ,
  l_LinhaPreco          ,

  l_ColunaDescricao     ,
  l_ColunaCodProduto    ,
  l_ColunaCor           ,
  l_ColunaTam           ,
  l_ColunaCBARRA        ,
  l_ColunaOP            ,
  l_ColunaLote          ,
  l_ColunaPreco         ,



  // --------------------------------------------------------------------------------------
  // segunda coluna
  // --------------------------------------------------------------------------------------
  r_LinhaDescricao      ,
  r_LinhaCodProduto     ,
  r_LinhaCor            ,
  r_LinhaTam            ,
  r_LinhaCBARRA         ,
  r_LinhaOP             ,
  r_LinhaLote           ,
  r_LinhaPreco          ,

  r_ColunaDescricao     ,
  r_ColunaCodProduto    ,
  r_ColunaCor           ,
  r_ColunaTam           ,
  r_ColunaCBARRA        ,
  r_ColunaOP            ,
  r_ColunaLote          ,
  r_ColunaPreco         ,


  // --------------------------------------------------------------------------------------
  // terceira coluna
  // --------------------------------------------------------------------------------------
  r3_LinhaDescricao      ,
  r3_LinhaCodProduto     ,
  r3_LinhaCor            ,
  r3_LinhaTam            ,
  r3_LinhaCBARRA         ,
  r3_LinhaOP             ,
  r3_LinhaLote           ,
  r3_LinhaPreco          ,

  r3_ColunaDescricao     ,
  r3_ColunaCodProduto    ,
  r3_ColunaCor           ,
  r3_ColunaTam           ,
  r3_ColunaCBARRA        ,
  r3_ColunaOP            ,
  r3_ColunaLote          ,
  r3_ColunaPreco          : Integer;





  // ----------------------------------------------------------
  // Numerico - REAL...FLOAT
  // ----------------------------------------------------------
  nValorDigitado,
  nvDesconto,
  nvComissao,
  nVlrComissao,

  nvAcrescimo           : Real;


  // ----------------------------------------------------------
  // Alfanumericos String...WideString
  // ----------------------------------------------------------

   ctaCliente, ctaVendedor, ctaDocumento: String;


  strURL,
  strJustificativa   : WideString;



  strProduto,
  strGrupo,
  strSubGrupo,
  strReferencia,
  strPreco,
  strDescricao,
  strCliente,
  strFornecedor,
  strVendedor,
  strInscrEstadual,
  strCidade,
  strEstado,
  strContaCorrente,
  strContaCaixa,
  strCarteira,
  strMotivoBaixa,
  strFormaPagamento,
  strTipoDocumento,
  strNomeAgrupamento,
  strCor,
  strTamanho,
  strOrdemDados,
  strOpcaoDevolver,
  sPrtEtiquetaDriver,
  sPrtEtiquetaPorta,
  sPrtEtiquetaTipo,
  strOrdemProducaoAcao,

  strNatureza,
  strPeriodoData,
  strSobra,
  strBarraGrafica,
  strRestricaoCredito,
  strBorderos,
  strOrdemProducao,
  strLoteProducao,
  strSimNao,
  strOpcaoCancelar,
  strCreditoDebito,
  strCNPJ,
  strTipoPessoa,
  strTipoCadastro   : String;



  // ----------------------------------------------------------
  // Datas
  // ----------------------------------------------------------
  dtVencimento, dtDataIni, dtDataFim, TDatas : TDateTime;


  // ----------------------------------------------------------
  // e-mail
  // ----------------------------------------------------------

   sPop3ServerName         : String;
   nPop3ServerPort         : Integer;
   sPop3ServerUserName     : String;
   sPop3ServerPassword     : String;

   sSmtpServerName         : String;
   nSmtpServerPort         : Integer;
   sSmtpServerUserName     : String;
   sSmtpServerPassword     : String;
   nSmtpAuthType           : Integer;

   sUserNameEmail          : String;


  // ----------------------------------------------------------
  // Variveis l�gicas - true ou false  (Boolean)
  // ----------------------------------------------------------
  sGradeEditada : Boolean;
  blAlterado    : Boolean;
  blTerminate   : Boolean;
  blProdutoViaLeitor   : Boolean;




  TStrArray: array of string;
  TExplodeArray: array of String;
  VariantResultados: TVariantResultArray;
  StringResultArray: TStringResultArray;
  FSQL                       : String;

  sOpcao : String;

  MouseHook: THandle;

   sqlMaster, sqlDetalhe, ModeloMaster1, ModeloMaster2, vSelect, TextoCliente,
     xSQL, SQLtemp, ScriptSQL: WideString;

   Cod_Grupo,

     Tipo_NF,

     Texto_Aux,  QuebraLn, Cod_vendedor, forma, vlr_text,
     CodIni, CodFim,   qtxt, xpassword,
     NF, SerieNF, Agrupar, Formulario, eMail, TxtAuxiliar, NomeCliente,
     Data_Emissao, EspecieCarga, MascaraData, CupomItemAcao,
     OpcaoVenda, OpcaoNumeroFiscal, Texto,
     sFichaTecnica : String;

     dNfs, qt_parc, parc_atu, I, BarProgress, vlrvar, VolumesCarga, NumParcelas,
     qteForms: Integer;


   //UsuarioAutenticarAcao,
   blnUsuarioAutorizado, ImprimirNaoCupom : Boolean;

   tt_nota, vlr_ipi, vVlr_parc, vlr_parc, vlr_cent, Valor_Total, parc_cc,
      parc_sc, vTT_parcs, ICMS, IPI, Vlr_Unit, SubTotal, TotalNota,
     Flutuante, Flutuante1, Flutuante2, Quantidade, VDesc, nFormularios,
     nFormulariosII, SaldoAtual, Debito, Credito: Real;

   ViaMenu, StatusTabela, FaturaPedido, FecharCupom: Boolean;

   iRetorno, iACK, iST1, iST2: Integer;

   Codigo, Descricao, Aliquota, TipoQtde, Qtde, Valor, TipoDesc, Desc,
     UND: string;
   FormaPagamento, AcreDesc, TipoAcreDesc, PercDesc, VlrTotalNota, MSG: string;

   TIPOPRODUTO: String;

   ReproduzirSom: String;

   wsenha: String;
   wSequencia: Integer;


   { parametros para Faturamentos }

   FATURA_PARCELA: array [1 .. 20] of String;
   FATURA_VENCIMENTO: array [1 .. 20] of String;
   FATURA_VALOR: array [1 .. 20] of Real;

   FaturasAtrasadas: array [1 .. 255] of String;

   // matrizes
   wCampo: array [0 .. 255] of String;
   // wCampo                                 : array[0..255,0..0] of String;
   wTexto: array [0 .. 255] of String;
   tAchar: array [0 .. 255] of String;
   iAchar: array [0 .. 255] of Integer;
   iniConfigs: array [0 .. 3] of String;
   wData: array [0 .. 255] of TDateTime;
   wFloat: array [0 .. 255] of Real;
   wInteger: array [0 .. 255] of Integer;
   AcaoUserName: array [0 .. 255] of WideString;
   SQLScript: WideString;
   DiasAtraso: Double;
   FIniFileName: WideString;
   Achar: array [0 .. 255] of String;
   TextoLongo: array [0 .. 255] of WideString;

   ctaValor: Real;
   ctaData: TDateTime;
   Year, Month, Day: Word;
   wDia, wMes, wAno: Word;


   sTipoPedido : String;

   // ----------------------------------------
   // variaveis globais para impressora
   // ----------------------------------------

   PrinterFile: TextFile;
   TituloPedido: String;


implementation


end.
