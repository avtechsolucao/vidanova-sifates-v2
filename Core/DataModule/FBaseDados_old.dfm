object BaseDados: TBaseDados
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 506
  Width = 1040
  object db_Parametros: TFDQuery
    BeforeOpen = db_ParametrosBeforeOpen
    Connection = FrmPrincipal.DBConexao
    UpdateOptions.AutoIncFields = 'EMPRESA'
    SQL.Strings = (
      'SELECT * FROM CONFIG_PARAMETROS'
      'WHERE '
      'EMPRESA=:EMPRESA')
    Left = 216
    Top = 72
    ParamData = <
      item
        Name = 'EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object db_ctaReceber: TFDQuery
    BeforeOpen = db_ctaReceberBeforeOpen
    AfterClose = db_ctaReceberAfterClose
    OnNewRecord = db_ctaReceberNewRecord
    Connection = FrmPrincipal.DBConexao
    UpdateOptions.AutoIncFields = 'CODIGO'
    SQL.Strings = (
      'SELECT *  FROM FIN_CTARECEBER'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'CODIGO=:CODIGO')
    Left = 40
    Top = 72
    ParamData = <
      item
        Name = 'EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object db_ctaReceberEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
    end
    object db_ctaReceberCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ReadOnly = True
    end
    object db_ctaReceberCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Required = True
      OnChange = db_ctaReceberCLIENTEChange
    end
    object db_ctaReceberNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
      Required = True
    end
    object db_ctaReceberSERIENF: TStringField
      FieldName = 'SERIENF'
      Size = 30
    end
    object db_ctaReceberDATA: TSQLTimeStampField
      FieldName = 'DATA'
      EditMask = '99/99/9999'
    end
    object db_ctaReceberVENCIMENTO: TSQLTimeStampField
      FieldName = 'VENCIMENTO'
      EditMask = '99/99/9999'
    end
    object db_ctaReceberDATA_PAGTO: TSQLTimeStampField
      FieldName = 'DATA_PAGTO'
      EditMask = '99/99/9999'
    end
    object db_ctaReceberDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Size = 30
    end
    object db_ctaReceberPARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object db_ctaReceberCFOP: TIntegerField
      FieldName = 'CFOP'
    end
    object db_ctaReceberVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object db_ctaReceberESPECIE: TStringField
      FieldName = 'ESPECIE'
      Size = 30
    end
    object db_ctaReceberTIPO: TStringField
      FieldName = 'TIPO'
      Size = 30
    end
    object db_ctaReceberVALOR: TFloatField
      FieldName = 'VALOR'
      DisplayFormat = '###,##0.00'
    end
    object db_ctaReceberVALOR_PAGO: TFloatField
      FieldName = 'VALOR_PAGO'
      DisplayFormat = '###,##0.00'
    end
    object db_ctaReceberVALOR_SALDO: TFloatField
      FieldName = 'VALOR_SALDO'
      DisplayFormat = '###,##0.00'
    end
    object db_ctaReceberCONTA_CREDITO: TIntegerField
      FieldName = 'CONTA_CREDITO'
    end
    object db_ctaReceberCHQ_BANCO: TStringField
      FieldName = 'CHQ_BANCO'
      Size = 30
    end
    object db_ctaReceberCHQ_AGENCIA: TStringField
      FieldName = 'CHQ_AGENCIA'
      Size = 30
    end
    object db_ctaReceberCHQ_CONTA_CORRENTE: TStringField
      FieldName = 'CHQ_CONTA_CORRENTE'
      Size = 30
    end
    object db_ctaReceberCHQ_NUMEROCHEQUE: TStringField
      FieldName = 'CHQ_NUMEROCHEQUE'
      Size = 30
    end
    object db_ctaReceberCHQ_CODCIDADE: TStringField
      FieldName = 'CHQ_CODCIDADE'
      Size = 200
    end
    object db_ctaReceberCHQ_EMITENTE: TStringField
      FieldName = 'CHQ_EMITENTE'
      Size = 200
    end
    object db_ctaReceberCHQ_NOMECIDADE_UF: TStringField
      FieldName = 'CHQ_NOMECIDADE_UF'
      Size = 200
    end
    object db_ctaReceberCHQ_DESTINO: TStringField
      FieldName = 'CHQ_DESTINO'
      Size = 200
    end
    object db_ctaReceberFORMA_PAGTO: TIntegerField
      FieldName = 'FORMA_PAGTO'
    end
    object db_ctaReceberDEPARTAMENTO: TIntegerField
      FieldName = 'DEPARTAMENTO'
    end
    object db_ctaReceberDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object db_ctaReceberDESCONTO_DATA: TSQLTimeStampField
      FieldName = 'DESCONTO_DATA'
    end
    object db_ctaReceberENTRADA: TFloatField
      FieldName = 'ENTRADA'
    end
    object db_ctaReceberPLANO_CONTAS: TStringField
      FieldName = 'PLANO_CONTAS'
      Size = 30
    end
    object db_ctaReceberHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 5000
    end
    object db_ctaReceberOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 5000
    end
    object db_ctaReceberGERARRECIBO: TStringField
      FieldName = 'GERARRECIBO'
      Size = 30
    end
    object db_ctaReceberGERARDUPLICATA: TStringField
      FieldName = 'GERARDUPLICATA'
      Size = 10
    end
    object db_ctaReceberGERARBOLETO: TStringField
      FieldName = 'GERARBOLETO'
      Size = 10
    end
    object db_ctaReceberGERARCOMPLEMENTO: TStringField
      FieldName = 'GERARCOMPLEMENTO'
      Size = 10
    end
    object db_ctaReceberGERARREMESSA: TStringField
      FieldName = 'GERARREMESSA'
      Size = 10
    end
    object db_ctaReceberNOSSONUMERO: TStringField
      FieldName = 'NOSSONUMERO'
      Size = 30
    end
    object db_ctaReceberDESPESAS_BOLETO: TFloatField
      FieldName = 'DESPESAS_BOLETO'
    end
    object db_ctaReceberDESPESAS_JUROS: TFloatField
      FieldName = 'DESPESAS_JUROS'
    end
    object db_ctaReceberDESPESAS_MULTA: TFloatField
      FieldName = 'DESPESAS_MULTA'
    end
    object db_ctaReceberDESPESAS_CARTORIO: TFloatField
      FieldName = 'DESPESAS_CARTORIO'
    end
    object db_ctaReceberDESPESAS_TOTAL: TFloatField
      FieldName = 'DESPESAS_TOTAL'
    end
    object db_ctaReceberATRASADA: TStringField
      FieldName = 'ATRASADA'
      Size = 10
    end
    object db_ctaReceberQUITADO: TStringField
      FieldName = 'QUITADO'
      Size = 10
    end
    object db_ctaReceberMOTIVO_BAIXA: TIntegerField
      FieldName = 'MOTIVO_BAIXA'
    end
    object db_ctaReceberCOMPLEMENTAR: TStringField
      FieldName = 'COMPLEMENTAR'
      Size = 10
    end
    object db_ctaReceberDESCONTO_USER: TIntegerField
      FieldName = 'DESCONTO_USER'
    end
    object db_ctaReceberCONTACAIXA: TIntegerField
      FieldName = 'CONTACAIXA'
    end
    object db_ctaReceberPROTESTOSTATUS: TStringField
      FieldName = 'PROTESTOSTATUS'
      Size = 30
    end
    object db_ctaReceberDESCONTOVALOR: TFloatField
      FieldName = 'DESCONTOVALOR'
    end
    object db_ctaReceberDESPESAS_JUROSVALOR: TFloatField
      FieldName = 'DESPESAS_JUROSVALOR'
    end
    object db_ctaReceberSELECIONADO: TStringField
      FieldName = 'SELECIONADO'
      Size = 10
    end
    object db_ctaReceberDESCONTADO: TStringField
      FieldName = 'DESCONTADO'
      Size = 10
    end
    object db_ctaReceberPAGAMENTOTITULO: TStringField
      FieldName = 'PAGAMENTOTITULO'
      Size = 10
    end
    object db_ctaReceberCARTEIRA: TIntegerField
      FieldName = 'CARTEIRA'
    end
  end
  object ds_ctaReceber: TDataSource
    AutoEdit = False
    DataSet = db_ctaReceber
    Left = 48
    Top = 112
  end
  object db_CtaPagar: TFDQuery
    BeforeOpen = db_CtaPagarBeforeOpen
    AfterClose = db_CtaPagarAfterClose
    BeforePost = db_CtaPagarBeforePost
    OnNewRecord = db_CtaPagarNewRecord
    Connection = FrmPrincipal.DBConexao
    UpdateOptions.AutoIncFields = 'CODIGO'
    SQL.Strings = (
      'SELECT *  FROM FIN_CTAPAGAR'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'CODIGO=:CODIGO')
    Left = 136
    Top = 72
    ParamData = <
      item
        Name = 'EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object db_CtaPagarCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ReadOnly = True
    end
    object db_CtaPagarFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
      Required = True
      OnChange = db_CtaPagarFORNECEDORChange
    end
    object db_CtaPagarNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
      Required = True
    end
    object db_CtaPagarSERIENF: TStringField
      FieldName = 'SERIENF'
      Size = 30
    end
    object db_CtaPagarDATA: TSQLTimeStampField
      FieldName = 'DATA'
      EditMask = '99/99/9999'
    end
    object db_CtaPagarVENCIMENTO: TSQLTimeStampField
      FieldName = 'VENCIMENTO'
      EditMask = '99/99/9999'
    end
    object db_CtaPagarDATA_PAGTO: TSQLTimeStampField
      FieldName = 'DATA_PAGTO'
      EditMask = '99/99/9999'
    end
    object db_CtaPagarDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Size = 30
    end
    object db_CtaPagarPARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object db_CtaPagarCFOP: TIntegerField
      FieldName = 'CFOP'
    end
    object db_CtaPagarESPECIE: TStringField
      FieldName = 'ESPECIE'
      Size = 30
    end
    object db_CtaPagarTIPO: TStringField
      FieldName = 'TIPO'
      Size = 30
    end
    object db_CtaPagarVALOR: TFloatField
      FieldName = 'VALOR'
      DisplayFormat = '###,##0.00'
    end
    object db_CtaPagarVALOR_PAGO: TFloatField
      FieldName = 'VALOR_PAGO'
      DisplayFormat = '###,##0.00'
    end
    object db_CtaPagarVALOR_SALDO: TFloatField
      FieldName = 'VALOR_SALDO'
      DisplayFormat = '###,##0.00'
    end
    object db_CtaPagarCONTA_CREDITO: TIntegerField
      FieldName = 'CONTA_CREDITO'
    end
    object db_CtaPagarCHQ_BANCO: TStringField
      FieldName = 'CHQ_BANCO'
      Size = 30
    end
    object db_CtaPagarCHQ_AGENCIA: TStringField
      FieldName = 'CHQ_AGENCIA'
      Size = 30
    end
    object db_CtaPagarCHQ_CONTA_CORRENTE: TStringField
      FieldName = 'CHQ_CONTA_CORRENTE'
      Size = 30
    end
    object db_CtaPagarCHQ_CODCIDADE: TStringField
      FieldName = 'CHQ_CODCIDADE'
      Size = 200
    end
    object db_CtaPagarCHQ_NOMECIDADE_UF: TStringField
      FieldName = 'CHQ_NOMECIDADE_UF'
      Size = 200
    end
    object db_CtaPagarCHQ_EMITENTE: TStringField
      FieldName = 'CHQ_EMITENTE'
      Size = 200
    end
    object db_CtaPagarCHQ_DESTINO: TStringField
      FieldName = 'CHQ_DESTINO'
      Size = 200
    end
    object db_CtaPagarFORMA_PAGTO: TIntegerField
      FieldName = 'FORMA_PAGTO'
    end
    object db_CtaPagarDEPARTAMENTO: TIntegerField
      FieldName = 'DEPARTAMENTO'
    end
    object db_CtaPagarDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object db_CtaPagarPLANO_CONTAS: TStringField
      FieldName = 'PLANO_CONTAS'
      Size = 200
    end
    object db_CtaPagarHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 5000
    end
    object db_CtaPagarOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 5000
    end
    object db_CtaPagarGERARRECIBO: TStringField
      FieldName = 'GERARRECIBO'
      Size = 30
    end
    object db_CtaPagarNOSSONUMERO: TStringField
      FieldName = 'NOSSONUMERO'
      Size = 30
    end
    object db_CtaPagarDESPESAS_BOLETO: TFloatField
      FieldName = 'DESPESAS_BOLETO'
    end
    object db_CtaPagarDESPESAS_JUROS: TFloatField
      FieldName = 'DESPESAS_JUROS'
    end
    object db_CtaPagarDESPESAS_MULTA: TFloatField
      FieldName = 'DESPESAS_MULTA'
    end
    object db_CtaPagarDESPESAS_CARTORIO: TFloatField
      FieldName = 'DESPESAS_CARTORIO'
    end
    object db_CtaPagarDESPESAS_TOTAL: TFloatField
      FieldName = 'DESPESAS_TOTAL'
    end
    object db_CtaPagarATRASADA: TStringField
      FieldName = 'ATRASADA'
      Size = 10
    end
    object db_CtaPagarQUITADO: TStringField
      FieldName = 'QUITADO'
      Size = 10
    end
    object db_CtaPagarMOTIVO_BAIXA: TIntegerField
      FieldName = 'MOTIVO_BAIXA'
    end
    object db_CtaPagarFORNECEDOR_NOME: TStringField
      FieldName = 'FORNECEDOR_NOME'
      Size = 200
    end
    object db_CtaPagarCOMPLEMENTAR: TStringField
      FieldName = 'COMPLEMENTAR'
      Size = 10
    end
    object db_CtaPagarCONTACAIXA: TIntegerField
      FieldName = 'CONTACAIXA'
    end
    object db_CtaPagarREMESSA: TIntegerField
      FieldName = 'REMESSA'
    end
    object db_CtaPagarCHECADO: TStringField
      FieldName = 'CHECADO'
      Size = 10
    end
    object db_CtaPagarPAGTOTERCEIRIZADO: TStringField
      FieldName = 'PAGTOTERCEIRIZADO'
      Size = 10
    end
    object db_CtaPagarPROTESTOSTATUS: TStringField
      FieldName = 'PROTESTOSTATUS'
      Size = 30
    end
    object db_CtaPagarEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
    end
    object db_CtaPagarDESCONTOVALOR: TFloatField
      FieldName = 'DESCONTOVALOR'
    end
    object db_CtaPagarDESPESAS_JUROSVALOR: TFloatField
      FieldName = 'DESPESAS_JUROSVALOR'
    end
  end
  object DS_CtaPagar: TDataSource
    AutoEdit = False
    DataSet = db_CtaPagar
    Left = 136
    Top = 112
  end
  object SP_NFE_CALCULA: TFDStoredProc
    Connection = FrmPrincipal.DBConexao
    StoredProcName = 'SPNFE_CALCULA'
    Left = 752
    Top = 215
    ParamData = <
      item
        Position = 1
        Name = 'RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
        Value = 0
      end
      item
        Position = 2
        Name = 'NEMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'NCODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'ACAO'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end>
  end
  object SPNFE_PROCESSAR: TFDStoredProc
    Connection = FrmPrincipal.DBConexao
    StoredProcName = 'SPNFE_PROCESSAR'
    Left = 880
    Top = 215
    ParamData = <
      item
        Position = 1
        Name = 'RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
        Value = 0
      end
      item
        Position = 2
        Name = 'NEMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'NVENDA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'ACAO'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end>
  end
  object ACBrNFe1: TACBrNFe
    MAIL = ACBrMail1
    Configuracoes.Geral.SSLLib = libOpenSSL
    Configuracoes.Geral.SSLCryptLib = cryOpenSSL
    Configuracoes.Geral.SSLHttpLib = httpOpenSSL
    Configuracoes.Geral.SSLXmlSignLib = xsLibXml2
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.VersaoQRCode = veqr200
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.WebServices.UF = 'PR'
    Configuracoes.WebServices.Ambiente = taProducao
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.RespTec.IdCSRT = 0
    Left = 56
    Top = 16
  end
  object ds_PedidoCompra: TDataSource
    DataSet = db_PedidoCompra
    Left = 496
    Top = 128
  end
  object ds_PedidoCompraItens: TDataSource
    DataSet = db_PedidoCompraItens
    Left = 608
    Top = 128
  end
  object db_PedidoCompra: TFDQuery
    BeforeOpen = db_PedidoCompraBeforeOpen
    AfterClose = db_PedidoCompraAfterClose
    BeforePost = db_PedidoCompraBeforePost
    AfterPost = db_PedidoCompraAfterPost
    OnNewRecord = db_PedidoCompraNewRecord
    Connection = FrmPrincipal.DBConexao
    UpdateOptions.AutoIncFields = 'CODIGO'
    SQL.Strings = (
      'SELECT * FROM COMPRA_PEDIDOS'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'CODIGO=:CODIGO')
    Left = 496
    Top = 72
    ParamData = <
      item
        Name = 'EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object db_PedidoCompraEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Required = True
    end
    object db_PedidoCompraCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ReadOnly = True
      Required = True
    end
    object db_PedidoCompraDATA: TSQLTimeStampField
      FieldName = 'DATA'
      EditMask = '99/99/9999'
    end
    object db_PedidoCompraDATA_ENTREGA: TSQLTimeStampField
      FieldName = 'DATA_ENTREGA'
      EditMask = '99/99/9999'
    end
    object db_PedidoCompraREQUISICAO: TIntegerField
      FieldName = 'REQUISICAO'
    end
    object db_PedidoCompraFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
    end
    object db_PedidoCompraFORNECEDORPEDIDO: TStringField
      FieldName = 'FORNECEDORPEDIDO'
      Size = 30
    end
    object db_PedidoCompraTRANSPORTADORA: TIntegerField
      FieldName = 'TRANSPORTADORA'
    end
    object db_PedidoCompraFORMAPAGTO: TIntegerField
      FieldName = 'FORMAPAGTO'
    end
    object db_PedidoCompraDEPARTAMENTO: TIntegerField
      FieldName = 'DEPARTAMENTO'
    end
    object db_PedidoCompraUSUARIO: TIntegerField
      FieldName = 'USUARIO'
    end
    object db_PedidoCompraQTDE_PEDIDA: TFloatField
      FieldName = 'QTDE_PEDIDA'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_PedidoCompraQTDE_ENTREGUE: TFloatField
      FieldName = 'QTDE_ENTREGUE'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_PedidoCompraVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_PedidoCompraFRETE_VALOR: TFloatField
      FieldName = 'FRETE_VALOR'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_PedidoCompraFRETE_TIPO: TStringField
      FieldName = 'FRETE_TIPO'
      Size = 30
    end
    object db_PedidoCompraOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 5000
    end
    object db_PedidoCompraEFETIVADO: TStringField
      FieldName = 'EFETIVADO'
      Size = 10
    end
    object db_PedidoCompraAPROVADO: TStringField
      FieldName = 'APROVADO'
      Size = 10
    end
  end
  object db_PedidoCompraItens: TFDQuery
    BeforePost = db_PedidoCompraItensBeforePost
    AfterPost = db_PedidoCompraItensAfterPost
    AfterDelete = db_PedidoCompraItensAfterDelete
    MasterSource = ds_PedidoCompra
    MasterFields = 'EMPRESA;CODIGO'
    DetailFields = 'EMPRESA;CODIGO'
    Connection = FrmPrincipal.DBConexao
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT * FROM COMPRA_PEDIDOS_ITENS'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'CODIGO=:CODIGO')
    Left = 608
    Top = 72
    ParamData = <
      item
        Name = 'EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object db_PedidoCompraItensEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Required = True
    end
    object db_PedidoCompraItensCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object db_PedidoCompraItensPRODUTO: TStringField
      FieldName = 'PRODUTO'
      OnChange = db_PedidoCompraItensPRODUTOChange
      Size = 30
    end
    object db_PedidoCompraItensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
    object db_PedidoCompraItensUND: TStringField
      FieldName = 'UND'
      Size = 30
    end
    object db_PedidoCompraItensQTDE_PEDIDA: TFloatField
      FieldName = 'QTDE_PEDIDA'
      DisplayFormat = '####,####0'
      EditFormat = '#'
    end
    object db_PedidoCompraItensQTDE_ENTREGUE: TFloatField
      FieldName = 'QTDE_ENTREGUE'
      DisplayFormat = '####,####0'
      EditFormat = '#'
    end
    object db_PedidoCompraItensQTDE_RESTANTE: TFloatField
      FieldName = 'QTDE_RESTANTE'
      ReadOnly = True
      DisplayFormat = '####,####0'
      EditFormat = '#'
    end
    object db_PedidoCompraItensVALOR_UNIT: TFloatField
      FieldName = 'VALOR_UNIT'
      DisplayFormat = '###,##0.0000'
      EditFormat = '###,##0.0000'
    end
    object db_PedidoCompraItensVALOR_TOTAL: TFloatField
      FieldName = 'VALOR_TOTAL'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object db_PedidoCompraItensDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      DisplayFormat = '###,##0.000'
      EditFormat = '###,##0.000'
    end
    object db_PedidoCompraItensVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
      DisplayFormat = '###,##0.000'
      EditFormat = '###,##0.000'
    end
  end
  object SPPEDIDOCOMPRA_CALCULAR: TFDStoredProc
    Connection = FrmPrincipal.DBConexao
    StoredProcName = 'SPPEDIDOCOMPRA_CALCULAR'
    Left = 496
    Top = 192
    ParamData = <
      item
        Position = 1
        Name = 'RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
        Value = 0
      end
      item
        Position = 2
        Name = 'EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object ACBrMail1: TACBrMail
    Host = '127.0.0.1'
    Port = '25'
    SetSSL = False
    SetTLS = False
    Attempts = 3
    DefaultCharset = UTF_8
    IDECharset = CP1252
    Left = 216
    Top = 16
  end
  object ACBrValidador1: TACBrValidador
    TipoDocto = docGTIN
    IgnorarChar = './-'
    Left = 256
    Top = 136
  end
  object QryVenda: TFDQuery
    BeforeOpen = QryVendaBeforeOpen
    AfterClose = QryVendaAfterClose
    BeforePost = QryVendaBeforePost
    AfterPost = QryVendaAfterPost
    OnNewRecord = QryVendaNewRecord
    Connection = FrmPrincipal.DBConexao
    Transaction = FrmPrincipal.FDTransacao
    FormatOptions.AssignedValues = [fvFmtDisplayNumeric]
    UpdateOptions.AutoIncFields = 'CODIGO'
    SQL.Strings = (
      'SELECT * FROM VENDAS'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'CODIGO=:CODIGO')
    Left = 792
    Top = 64
    ParamData = <
      item
        Name = 'EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QryVendaItem: TFDQuery
    BeforePost = QryVendaItemBeforePost
    AfterPost = QryVendaItemAfterPost
    MasterSource = dsVenda
    MasterFields = 'CODIGO'
    DetailFields = 'CODIGO'
    Connection = FrmPrincipal.DBConexao
    Transaction = FrmPrincipal.FDTransacao
    SQL.Strings = (
      'SELECT * FROM VENDAS_ITENS'
      'WHERE'
      'CODIGO=:CODIGO')
    Left = 880
    Top = 56
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object dsVenda: TDataSource
    DataSet = QryVenda
    Left = 792
    Top = 120
  end
  object dsVendaItem: TDataSource
    DataSet = QryVendaItem
    Left = 880
    Top = 112
  end
end
