﻿{***********************************************************************************
**  SISTEMA...............: Vida Nova Gestão de Vendas 2019                       **
**  PARA EMPRESAS.........: Micro e Pequena Empresa                               **
**  LINGUAGEM/DB..........: Delphi 10.3 Rio / Firebird 2.5                        **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  AUTOR/PROGRAMADOR.....: Bruno Batista                                         **
**  E-MAIL................: batista.bjs@gmail.com                                 **** ------------------------------------------------------------------------------ ****  Código pertencente ao cliente sob proteção autoral.                           ****  Não comercializável sem prévia autorização do mesmo.                          **
***********************************************************************************}

unit App.Constantes;

interface

uses System.Generics.Collections, Vcl.Graphics, System.SysUtils;

Type
  Pessoa     = (tpFisica,  tpJuridica);
  TipoPessoa = (tpCliente, tpFornecedor, tpTransportadora, tpVendedor);

Const

  //--------------------------------------------------------------------
  // Segurança do sistema
  //--------------------------------------------------------------------
  _DIAS_EXPIRAR   = 35;
  _CHAVESEGREDO   = 1;     // Informe qualquer numero aqui de 1 a 999999
  CKEY1           = 2;     // Informe qualquer numero aqui de 1 a 999999
  CKEY2           = 3;     // Informe qualquer numero aqui de 1 a 999999
  _ERROCHAVE      = '<Erro na chave>';
  _INICIO_        = '{';
  _FIM_           = '}';

  //--------------------------------------------------------------------
  //
  //--------------------------------------------------------------------
  Base64Charset    = AnsiString('ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/');

  //--------------------------------------------------------------------
  //
  //--------------------------------------------------------------------
  VERSAO                  = 'Versão 0.24 (Beta)';
  _ANOATUAL                = 2019;//CurrentYear;
  _SISTEMA_NOME              = 'VidaNovaSGN';
  EXECUTAVEL_NOME            = _SISTEMA_NOME;
  _VENDAEXPRESSA             = 'VendaExpressa';
  CONFIG_INI                 = _SISTEMA_NOME+'.ini';
  CONFIG_SQLITE              = _VENDAEXPRESSA+'.ini';
  _DRIVE                     = 'C:';
  PASTA_SEPARADOR            = '\';
  PASTA_BINARIO              = 'Binarios';
  PASTA_DADOS                = 'DB';
  LOGO_NOME                  = 'logo.jpg';
  _DRIVESISTEMA              = Concat(_DRIVE,PASTA_SEPARADOR);
  _PASTASISTEMA              = Concat(_DRIVESISTEMA,_SISTEMA_NOME);
  _PASTASISTEMA_DB           = Concat(_DRIVESISTEMA,_SISTEMA_NOME,'\DB\');
  PASTA_IMG                  = Concat(_DRIVESISTEMA,_SISTEMA_NOME,'\Imagens');
  _APP_PASTA_BINARIO         = Concat(_DRIVESISTEMA,_SISTEMA_NOME,PASTA_SEPARADOR,PASTA_BINARIO,PASTA_SEPARADOR);
  _PASTALOG                  = _PASTASISTEMA+PASTA_SEPARADOR+'log';
  _LOGMAIL                   = _PASTASISTEMA+'\Log\LogMails.log';
  _LOCALINI                  = Concat(_DRIVE,PASTA_SEPARADOR,_SISTEMA_NOME,PASTA_SEPARADOR,PASTA_BINARIO,PASTA_SEPARADOR,CONFIG_INI );

  SITE_EMPRESA               = 'www.altaica.com.br';
  EMAIL_EMPRESA              = 'batista.bjs@gmail.com';
  FONE_EMPRESA               = '(67) 99999-0113';

  _APP_PASTA_DADOS           = Concat(_DRIVESISTEMA,_SISTEMA_NOME,PASTA_SEPARADOR,PASTA_DADOS,PASTA_SEPARADOR);

  DATABASE_GERENCIADOR       = 'Firebird';
  DATABASE_VERSAO            = 'V2.5';

  _DATABASE_SERVIDOR          = '127.0.0.1';
  _DATABASE_NOME              = _APP_PASTA_DADOS+_SISTEMA_NOME+'.fdb';
  _DATABASE_NOME_SQLITE       = _APP_PASTA_DADOS+_VENDAEXPRESSA+'.db'; // SQLITE

  _DATABASE_DRIVER            = 'FB';
  _DATABASE_DRIVERSQLITE      = 'SQLite';
  _DATABASE_USUARIO           = 'SYSDBA';
  _DATABASE_SENHA             = 'masterkey';
  _DATABASE_PORTA             = 3050;

  MASTER_USUARIO             = 'SYSTEM';
  MASTER_SENHA               = 'SYSTEM';

  REMOTO_DATABASE_SERVIDOR   = SITE_EMPRESA;
  REMOTO_DATABASE_NOME       = 'informar banco de dados';
  REMOTO_DATABASE_USUARIO    = 'informar usuario';
  REMOTO_DATABASE_SENHA      = 'informar senha';
  REMOTO_DATABASE_PORTA      = 0;
  _ARQUIVOAUTENTICASENHA     = _APP_PASTA_BINARIO+_SISTEMA_NOME+'.txt';


  //--------------------------------------------------------------------
  // Cores
  //--------------------------------------------------------------------
  _COR_READONLY              = clBtnFace;
  _COR_HIGHLIGHT             = $0000D7FD;  // Cor das Linhas (exemplo, grids)
  _COR_HIGHLIGHTBACKGROUND   = clWhite;    // Cor de fundo  (exemplo, grids)

  //--------------------------------------------------------------------
  // Nota Fiscal Eletronica
  //--------------------------------------------------------------------
  _NFE_DANFE               = 'DANFeRetrato_2019.fr3';
  _NFE_LOCAL_DANFE         =  Concat(_PASTASISTEMA,'\DANFE\',_NFE_DANFE);
  _NFE_LOCAL_SCHEMA        =  Concat(_PASTASISTEMA,'\SCHEMAS');
  _NFE_LOCAL_PDF           =  Concat(_PASTASISTEMA,'\NFE\PDF');
  _NFE_LOCAL_INUTILIZADAS  =  Concat(_PASTASISTEMA,'\NFE\INUTILIZADAS');
  _NFE_LOCAL_GERADAS       =  CONCAT(_PASTASISTEMA,'\NFE\GERADAS');
  _NFE_LOCAL_EVENTO        =  CONCAT(_PASTASISTEMA,'\NFE\EVENTOS');
  _NFE_LOCAL_SALVAR        =  CONCAT(_PASTASISTEMA,'\NFE\SALVAR');
  _NFE_LOCAL_DOWNLOADS     =  CONCAT(_PASTASISTEMA,'\NFE\DOWNLOADS');


  //--------------------------------------------------------------------
  // Boletos Bancarios
  //--------------------------------------------------------------------
  _BOLETO_FR3               = 'boletofr.fr3';
  _BOLETO_ARQREMESSA        =  _SISTEMA_NOME+'_Remessa';
  _BOLETO_ARQRETORNO        =  _SISTEMA_NOME+'_Retorno';
  _BOLETO_DIRLOGO           =  Concat(_PASTASISTEMA,'\Boletos\Logos');
  _BOLETO_REPORTFILE        =  Concat(_PASTASISTEMA,'\Boletos\Layout\',_BOLETO_FR3);
  _BOLETO_DIRARQREMESSA     =  Concat(_DRIVE,'\',_SISTEMA_NOME,'\','Boletos\Remessa\');
  _BOLETO_DIRARQRETORNO     =  Concat(_DRIVE,'\',_SISTEMA_NOME,'\','Boletos\Retorno\');

  //--------------------------------------------------------------------
  // versão DEMO
  //--------------------------------------------------------------------

  _LICENCA_EXPIROU = 'Essa licença expirou o prazo de uso. '+slinebreak+
                     slinebreak+
                     '[Entre em contato] '+sLineBreak+
                     ' Site: %s' +sLineBreak+
                     ' Fone: %s'+sLineBreak+
                     ' E-Mail: %s';


  //--------------------------------------------------------------------
  //
  //--------------------------------------------------------------------
  _DEVELOPER_ = _APP_PASTA_BINARIO+'developer.key';
  _ARQUIVO_EXPORTAR =  Concat(_PASTASISTEMA,'\Arquivos\');

  //--------------------------------------------------------------------
  //
  //--------------------------------------------------------------------
  _ERRODANFE = 'Sem recursos para visualizar/imprimir DANFE. Por falta de componentes necessários nas configurações do seu Windows. Isso não impede o uso do sistema.';

  //--------------------------------------------------------------------
  // NFC-E
  //--------------------------------------------------------------------
  _ARQUIVO_TEMP_VENDA = _PASTASISTEMA_DB+'venda.xml';
  _ARQUIVO_TEMP_ITENS = _PASTASISTEMA_DB+'vendaitens.xml';


implementation

end.

