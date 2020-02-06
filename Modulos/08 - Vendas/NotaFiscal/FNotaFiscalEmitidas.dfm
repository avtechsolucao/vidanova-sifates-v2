object FrmNotaFiscalEmitidas: TFrmNotaFiscalEmitidas
  Left = 0
  Top = 0
  Caption = 'NF-e (Nota Fiscal Eletr'#244'nica)'
  ClientHeight = 512
  ClientWidth = 1087
  Color = clBtnFace
  Constraints.MinHeight = 550
  Constraints.MinWidth = 1000
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 1087
    Height = 33
    Align = alTop
    Constraints.MinHeight = 33
    Color = 14120960
    ParentBackground = False
    ParentColor = False
    TabOrder = 2
    ExplicitWidth = 1087
    ExplicitHeight = 33
    inherited Image3: TImage
      Width = 1087
      Height = 33
      ExplicitTop = 33
      ExplicitWidth = 970
    end
    inherited pnTitulo: TPanel
      Width = 1087
      Height = 33
      Constraints.MinHeight = 33
      ExplicitWidth = 1087
      ExplicitHeight = 33
      inherited LblBarraTitulo: TLabel
        Width = 944
        Height = 25
        Caption = 'Consultar NF-e/NFC-e'
        ExplicitWidth = 414
        ExplicitHeight = 25
      end
      inherited Image1: TImage
        Height = 31
        ExplicitLeft = 979
        ExplicitHeight = 31
      end
      inherited Image2: TImage
        Left = 1028
        Height = 25
        ExplicitLeft = 914
        ExplicitHeight = 31
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 472
    Width = 1087
    Height = 40
    Align = alBottom
    TabOrder = 1
    object BtnSair: TBitBtn
      Left = 1006
      Top = 1
      Width = 80
      Height = 38
      Align = alRight
      Caption = 'Fechar'
      TabOrder = 7
      OnClick = BtnSairClick
    end
    object BtnDANFE: TBitBtn
      Left = 221
      Top = 1
      Width = 110
      Height = 38
      Align = alLeft
      Caption = 'DANFE...'
      TabOrder = 2
      OnClick = BtnDANFEClick
    end
    object btnGerarPDF: TBitBtn
      Left = 441
      Top = 1
      Width = 110
      Height = 38
      Align = alLeft
      Caption = 'Gerar PDF...'
      TabOrder = 3
      OnClick = btnGerarPDFClick
    end
    object BtnSituacaoSEFAZ: TBitBtn
      Left = 1
      Top = 1
      Width = 110
      Height = 38
      Align = alLeft
      Caption = 'Situa'#231#227'o na SEFAZ'
      TabOrder = 0
      OnClick = BtnSituacaoSEFAZClick
    end
    object BtnCancelarNFe: TBitBtn
      Left = 111
      Top = 1
      Width = 110
      Height = 38
      Align = alLeft
      Caption = 'Cancelar NF-e'
      TabOrder = 1
      OnClick = BtnCancelarNFeClick
    end
    object BtnInutilizarNFe: TBitBtn
      Left = 771
      Top = 1
      Width = 110
      Height = 38
      Align = alLeft
      Caption = 'Inutilizar NF-e'
      Enabled = False
      TabOrder = 6
      Visible = False
      OnClick = BtnInutilizarNFeClick
    end
    object BtnEnviarEMailNFe: TBitBtn
      Left = 661
      Top = 1
      Width = 110
      Height = 38
      Align = alLeft
      Caption = 'Enviar por e-Mail'
      TabOrder = 5
      OnClick = BtnEnviarEMailNFeClick
    end
    object BitBtn1: TBitBtn
      Left = 551
      Top = 1
      Width = 110
      Height = 38
      Align = alLeft
      Caption = 'Revalidar XML'
      TabOrder = 4
      OnClick = BitBtn1Click
    end
    object btnReenviar: TBitBtn
      Left = 331
      Top = 1
      Width = 110
      Height = 38
      Align = alLeft
      Caption = 'Reenviar'
      TabOrder = 8
      OnClick = btnReenviarClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 33
    Width = 1087
    Height = 439
    Align = alClient
    TabOrder = 0
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 1085
      Height = 437
      Align = alClient
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = DS_Vendas
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        object cxGrid1DBTableView1Column1: TcxGridDBColumn
          Caption = 'Data'
          DataBinding.FieldName = 'EMISSAO'
          MinWidth = 80
          Options.AutoWidthSizable = False
          Width = 80
        end
        object cxGrid1DBTableView1Column2: TcxGridDBColumn
          Caption = 'Nota Fiscal'
          DataBinding.FieldName = 'NOTAFISCAL'
          MinWidth = 80
          Options.AutoWidthSizable = False
          Width = 80
        end
        object cxGrid1DBTableView1Column11: TcxGridDBColumn
          Caption = 'Enviado'
          DataBinding.FieldName = 'NFE_TRANSMITIDO'
          MinWidth = 50
          Options.AutoWidthSizable = False
          Width = 62
        end
        object cxGrid1DBTableView1Column10: TcxGridDBColumn
          Caption = 'Tipo'
          DataBinding.FieldName = 'TIPONF'
          MinWidth = 70
          Options.AutoWidthSizable = False
          Width = 70
        end
        object cxGrid1DBTableView1Column5: TcxGridDBColumn
          Caption = 'Modelo'
          DataBinding.FieldName = 'MODELO'
          MinWidth = 45
          Options.AutoWidthSizable = False
          Width = 45
        end
        object cxGrid1DBTableView1Column9: TcxGridDBColumn
          Caption = 'Qtde Total'
          DataBinding.FieldName = 'QTDE_PRODUTOS'
          MinWidth = 80
          Options.AutoWidthSizable = False
          Width = 80
        end
        object cxGrid1DBTableView1Column6: TcxGridDBColumn
          Caption = 'Valor Total'
          DataBinding.FieldName = 'TOTAL_NF'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          MinWidth = 105
          Options.AutoWidthSizable = False
          Width = 105
        end
        object cxGrid1DBTableView1Column8: TcxGridDBColumn
          Caption = 'Chave de Acesso'
          DataBinding.FieldName = 'NFE_CHAVEACESSO'
          MinWidth = 290
          Options.AutoWidthSizable = False
          Width = 290
        end
        object cxGrid1DBTableView1Column7: TcxGridDBColumn
          Caption = 'Situa'#231#227'o'
          DataBinding.FieldName = 'NFE_SITUACAOSEFAZ'
          MinWidth = 150
          Width = 168
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object db_Vendas_NFE: TFDQuery
    BeforeOpen = db_Vendas_NFEBeforeOpen
    AfterPost = db_Vendas_NFEAfterPost
    Connection = FrmPrincipal.DBConexao
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    SQL.Strings = (
      'SELECT FIRST 100 * FROM VENDAS'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'ORDER BY EMISSAO DESC, NOTAFISCAL DESC')
    Left = 608
    Top = 8
    ParamData = <
      item
        Name = 'EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
  end
  object DS_Vendas: TDataSource
    DataSet = db_Vendas_NFE
    Left = 704
    Top = 8
  end
  object ACBrNFeDANFCeFortes1: TACBrNFeDANFCeFortes
    MostraSetup = True
    UsaSeparadorPathPDF = True
    Sistema = 'IndPCP - PDV | NFC-e 4.0'
    Site = 'www.altaica.com.br'
    MargemInferior = 0.800000000000000000
    MargemSuperior = 0.800000000000000000
    MargemEsquerda = 0.600000000000000000
    MargemDireita = 0.510000000000000000
    CasasDecimais.Formato = tdetInteger
    CasasDecimais.qCom = 2
    CasasDecimais.vUnCom = 2
    CasasDecimais.MaskqCom = ',0.00'
    CasasDecimais.MaskvUnCom = ',0.00'
    TipoDANFE = tiNFCe
    ExibeTotalTributosItem = True
    ImprimeQRCodeLateral = True
    FonteLinhaItem.Charset = DEFAULT_CHARSET
    FonteLinhaItem.Color = clWindowText
    FonteLinhaItem.Height = -9
    FonteLinhaItem.Name = 'Lucida Console'
    FonteLinhaItem.Style = []
    Left = 230
    Top = 157
  end
end
