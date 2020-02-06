object FrmDistribuirPagamento: TFrmDistribuirPagamento
  Left = 1
  Top = 1
  Caption = 'Terceirizado | Gerar Pagamento'
  ClientHeight = 499
  ClientWidth = 865
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesigned
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object AdvGroupBox1: TGroupBox
    Left = 0
    Top = 91
    Width = 865
    Height = 347
    Align = alClient
    Caption = 'Edi'#231#227'o de Pedidos'
    TabOrder = 1
    object cxGrid: TcxGrid
      Left = 2
      Top = 15
      Width = 861
      Height = 330
      Align = alClient
      TabOrder = 0
      object cxGridDados: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        OnCustomDrawCell = cxGridDadosCustomDrawCell
        DataController.DataSource = ds_Distribuir
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        Styles.Selection = cxStyle1
        object cxGridDadosColumn1: TcxGridDBColumn
          Caption = 'Remessa:'
          DataBinding.FieldName = 'CODIGO'
          Options.AutoWidthSizable = False
          Width = 90
        end
        object cxGridDadosColumn2: TcxGridDBColumn
          Caption = 'Data:'
          DataBinding.FieldName = 'DATA'
          Options.AutoWidthSizable = False
          Width = 90
        end
        object cxGridDadosColumn3: TcxGridDBColumn
          Caption = 'Fechamento:'
          DataBinding.FieldName = 'DATAENCERRAMENTO'
          Options.AutoWidthSizable = False
          Width = 90
        end
        object cxGridDadosColumn4: TcxGridDBColumn
          Caption = 'Terceirizado:'
          DataBinding.FieldName = 'FORNECEDOR_NOME'
          Width = 348
        end
        object cxGridDadosColumn5: TcxGridDBColumn
          Caption = 'Remessa:'
          DataBinding.FieldName = 'QTDE_REMESSA'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '###.##0'
          Options.AutoWidthSizable = False
          Width = 97
        end
        object cxGridDadosColumn6: TcxGridDBColumn
          Caption = 'Retorno:'
          DataBinding.FieldName = 'QTDE_RETORNO'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '###.##0'
          Options.AutoWidthSizable = False
          Width = 97
        end
        object cxGridDadosColumn7: TcxGridDBColumn
          Caption = 'Restante:'
          DataBinding.FieldName = 'QTDE_RESTANTE'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '###.##0'
          Options.AutoWidthSizable = False
          Width = 97
        end
        object cxGridDadosColumn8: TcxGridDBColumn
          Caption = 'Valor a Pagar:'
          DataBinding.FieldName = 'VLR_TOTALPAGAR'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Options.AutoWidthSizable = False
          Width = 90
        end
        object cxGridDadosColumn9: TcxGridDBColumn
          Caption = 'Gerou pagamento:'
          DataBinding.FieldName = 'GEROUPAGAMENTO'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Options.AutoWidthSizable = False
          Width = 110
        end
      end
      object cxGridNivel: TcxGridLevel
        GridView = cxGridDados
      end
    end
  end
  inline FrmFrameBotoes1: TFrmFrameBotoes
    Left = 0
    Top = 438
    Width = 865
    Height = 61
    Align = alBottom
    AutoSize = True
    Constraints.MinHeight = 60
    Constraints.MinWidth = 860
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    TabStop = True
    ExplicitTop = 438
    ExplicitWidth = 865
    ExplicitHeight = 61
    inherited PanelBotoesBottom: TPanel
      Width = 855
      Height = 55
      ExplicitWidth = 855
      ExplicitHeight = 55
      inherited SpbAdicionar: TSpeedButton
        Left = -39
        Height = 51
        ExplicitLeft = -39
        ExplicitHeight = 51
      end
      inherited SpbEditar: TSpeedButton
        Left = 161
        Height = 51
        ExplicitLeft = 161
        ExplicitHeight = 51
      end
      inherited SpbCancelar: TSpeedButton
        Left = 261
        Height = 51
        ExplicitLeft = 261
        ExplicitHeight = 51
      end
      inherited SpbSalvar: TSpeedButton
        Left = 61
        Height = 51
        ExplicitLeft = 61
        ExplicitHeight = 51
      end
      inherited SpbExcluir: TSpeedButton
        Left = 361
        Height = 51
        ExplicitLeft = 361
        ExplicitHeight = 51
      end
      inherited SpbImprimir: TSpeedButton
        Left = 561
        Height = 51
        ExplicitLeft = 561
        ExplicitHeight = 51
      end
      inherited SpbSair: TSpeedButton
        Left = 751
        Height = 51
        ExplicitLeft = 751
        ExplicitHeight = 51
      end
      inherited SpbExtra: TSpeedButton
        Left = 661
        Height = 51
        ExplicitLeft = 661
        ExplicitHeight = 51
      end
      inherited SpbProcurar: TSpeedButton
        Left = 461
        Height = 51
        OnClick = FrmFrameBotoes1SpbProcurarClick
        ExplicitLeft = 461
        ExplicitHeight = 51
      end
    end
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 865
    Height = 33
    Align = alTop
    Constraints.MinHeight = 33
    Color = 16024898
    ParentBackground = False
    ParentColor = False
    TabOrder = 3
    ExplicitWidth = 865
    ExplicitHeight = 33
    inherited Image3: TImage
      Width = 865
      Height = 33
      ExplicitWidth = 865
    end
    inherited pnTitulo: TPanel
      Width = 865
      Height = 33
      Constraints.MinHeight = 33
      ExplicitWidth = 865
      ExplicitHeight = 33
      inherited LblBarraTitulo: TLabel
        Width = 722
        Height = 25
        Caption = 'Terceirizado | Gerar Pagamento | Parcial ou Intregral'
        ExplicitWidth = 536
        ExplicitHeight = 25
      end
      inherited Image1: TImage
        Height = 31
        ExplicitHeight = 31
      end
      inherited Image2: TImage
        Left = 806
        Height = 25
        ExplicitLeft = 809
        ExplicitHeight = 31
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 33
    Width = 865
    Height = 58
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 100
      Height = 13
      Caption = 'Data de Vencimento:'
    end
    object Label8: TLabel
      Left = 140
      Top = 8
      Width = 114
      Height = 13
      Caption = 'Especie de Documento:'
    end
    object EditVencimento: TMaskEdit
      Left = 16
      Top = 24
      Width = 112
      Height = 21
      EditMask = '99/99/9999;1;_'
      MaxLength = 10
      TabOrder = 0
      Text = '01/01/2012'
    end
    object ComboFormaPagamento: TComboBox
      Left = 140
      Top = 24
      Width = 157
      Height = 21
      Style = csDropDownList
      ItemIndex = 1
      TabOrder = 1
      Text = 'A PRAZO'
      Items.Strings = (
        'A VISTA'
        'A PRAZO'
        'CARTAO'
        'DUPLICATA'
        'BOLETO'
        'DDA'
        'CHEQUE'
        'CARTEIRA'
        'TICKET')
    end
  end
  object db_DistribuirGerarPagamento: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT *  FROM VIEW_DISTRIBUIR_PAGAMENTOS'
      '--WHERE CODIGO=:CODIGO')
    Left = 121
    Top = 168
    object db_DistribuirGerarPagamentoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object db_DistribuirGerarPagamentoORDEMPRODUCAO: TIntegerField
      FieldName = 'ORDEMPRODUCAO'
      Required = True
    end
    object db_DistribuirGerarPagamentoFASE: TIntegerField
      FieldName = 'FASE'
    end
    object db_DistribuirGerarPagamentoFASE_NOME: TStringField
      FieldName = 'FASE_NOME'
      ReadOnly = True
      Size = 200
    end
    object db_DistribuirGerarPagamentoDATA: TSQLTimeStampField
      FieldName = 'DATA'
    end
    object db_DistribuirGerarPagamentoDATARETORNO: TSQLTimeStampField
      FieldName = 'DATARETORNO'
    end
    object db_DistribuirGerarPagamentoDATAENCERRAMENTO: TSQLTimeStampField
      FieldName = 'DATAENCERRAMENTO'
      ReadOnly = True
    end
    object db_DistribuirGerarPagamentoFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
    end
    object db_DistribuirGerarPagamentoFORNECEDOR_NOME: TStringField
      FieldName = 'FORNECEDOR_NOME'
      ReadOnly = True
      Size = 200
    end
    object db_DistribuirGerarPagamentoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 30
    end
    object db_DistribuirGerarPagamentoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ReadOnly = True
      Size = 200
    end
    object db_DistribuirGerarPagamentoQTDE_REMESSA: TIntegerField
      FieldName = 'QTDE_REMESSA'
      DisplayFormat = '###,##0'
    end
    object db_DistribuirGerarPagamentoQTDE_RETORNO: TIntegerField
      FieldName = 'QTDE_RETORNO'
      DisplayFormat = '###,##0'
    end
    object db_DistribuirGerarPagamentoQTDE_RESTANTE: TIntegerField
      FieldName = 'QTDE_RESTANTE'
      ReadOnly = True
      DisplayFormat = '###,##0'
    end
    object db_DistribuirGerarPagamentoVLR_UNIT: TFloatField
      FieldName = 'VLR_UNIT'
      DisplayFormat = '###,##0.00'
    end
    object db_DistribuirGerarPagamentoVLR_TOTALPAGAR: TFloatField
      FieldName = 'VLR_TOTALPAGAR'
      DisplayFormat = '###,##0.00'
    end
    object db_DistribuirGerarPagamentoCONCLUIDO: TFloatField
      FieldName = 'CONCLUIDO'
      ReadOnly = True
      DisplayFormat = '###,##0.00%'
    end
    object db_DistribuirGerarPagamentoGEROUPAGAMENTO: TStringField
      FieldName = 'GEROUPAGAMENTO'
      ReadOnly = True
      Required = True
      Size = 3
    end
  end
  object ds_Distribuir: TDataSource
    AutoEdit = False
    DataSet = db_DistribuirGerarPagamento
    Left = 123
    Top = 224
  end
  object db_DistribuirBaixar: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'UPDATE PCP_DISTRIBUIR SET STATUS=:ACAO,'
      'DATAENCERRAMENTO   =getdate(),'
      'RESPONSAVEL =:RESPONSAVEL,'
      'OBSERVACAO=:OBSERVACAO'
      'WHERE CODIGO=:CODIGO')
    Left = 289
    Top = 208
    ParamData = <
      item
        Name = 'ACAO'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'RESPONSAVEL'
        ParamType = ptInput
      end
      item
        Name = 'OBSERVACAO'
        ParamType = ptInput
      end
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object SPOP_DISTRIBUIR_PAGAR: TFDStoredProc
    Connection = FrmPrincipal.DBConexao
    StoredProcName = 'SPOP_DISTRIBUIR_PAGAR'
    Left = 328
    Top = 224
    ParamData = <
      item
        Name = 'RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
        Value = 0
      end
      item
        Name = 'NREMESSA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'NFORNECEDOR'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'DVENCIMENTO'
        DataType = ftDateTime
        ParamType = ptInput
      end
      item
        Name = 'STIPOPAGMENTO'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'NVALOR'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Name = 'ACAO'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 8
    Top = 8
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 55293
      TextColor = clBlack
    end
  end
end
