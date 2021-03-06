object FrmMarkup: TFrmMarkup
  Left = 1
  Top = 1
  Caption = 'Markup'
  ClientHeight = 505
  ClientWidth = 868
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 60
    Width = 868
    Height = 384
    Align = alClient
    TabOrder = 0
    object pgMarkup: TPageControl
      Left = 1
      Top = 1
      Width = 866
      Height = 382
      ActivePage = TabRegistros
      Align = alClient
      TabOrder = 0
      object TabRegistros: TTabSheet
        Caption = 'Registros'
        object cxGrid: TcxGrid
          Left = 0
          Top = 0
          Width = 858
          Height = 354
          Align = alClient
          TabOrder = 0
          object cxGridDados: TcxGridDBTableView
            OnDblClick = cxGridDadosDblClick
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = ds_Markup
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.ColumnAutoWidth = True
            object cxGridDadosCodigo: TcxGridDBColumn
              Caption = 'C'#243'digo'
              DataBinding.FieldName = 'CODIGO'
              Options.Filtering = False
              Options.AutoWidthSizable = False
              Options.Grouping = False
              Styles.Content = cxStyle1
              Width = 75
            end
            object cxGridDadosNome: TcxGridDBColumn
              Caption = 'Nome'
              DataBinding.FieldName = 'NOME'
              Options.Grouping = False
              Width = 471
            end
            object cxGridDadosStatus: TcxGridDBColumn
              Caption = 'Ativado'
              DataBinding.FieldName = 'STATUS'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              HeaderAlignmentHorz = taCenter
              Options.AutoWidthSizable = False
            end
          end
          object cxGridNivel: TcxGridLevel
            GridView = cxGridDados
          end
        end
      end
      object TabEditar: TTabSheet
        Caption = 'Editar'
        ImageIndex = 1
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object GroupBox3: TGroupBox
          Left = 0
          Top = 0
          Width = 858
          Height = 354
          Align = alClient
          TabOrder = 0
          object GroupBox2: TGroupBox
            Left = 2
            Top = 15
            Width = 854
            Height = 64
            Align = alTop
            TabOrder = 0
            object Label3: TLabel
              Left = 87
              Top = 15
              Width = 31
              Height = 13
              Caption = 'Nome:'
              FocusControl = EditNome
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label1: TLabel
              Left = 10
              Top = 15
              Width = 33
              Height = 13
              Caption = '&C'#243'digo'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object EditNome: TDBEdit
              Left = 87
              Top = 30
              Width = 450
              Height = 21
              CharCase = ecUpperCase
              DataField = 'NOME'
              DataSource = ds_Markup
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 10
              Top = 30
              Width = 67
              Height = 21
              CharCase = ecUpperCase
              Color = 14811135
              DataField = 'CODIGO'
              DataSource = ds_Markup
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object DBCheckBox1: TDBCheckBox
              Left = 543
              Top = 30
              Width = 61
              Height = 17
              AllowGrayed = True
              Caption = 'Ativado'
              DataField = 'STATUS'
              DataSource = ds_Markup
              TabOrder = 2
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
          end
          object GroupBox1: TGroupBox
            Left = 2
            Top = 79
            Width = 854
            Height = 273
            Align = alClient
            TabOrder = 1
            object Label2: TLabel
              Left = 24
              Top = 12
              Width = 35
              Height = 13
              Caption = 'Markup'
              FocusControl = DBEdit1
            end
            object Label4: TLabel
              Left = 421
              Top = 12
              Width = 80
              Height = 13
              Caption = 'Outros encargos'
              FocusControl = DBEdit3
            end
            object Label5: TLabel
              Left = 24
              Top = 52
              Width = 25
              Height = 13
              Caption = 'ICMS'
              FocusControl = DBEdit4
            end
            object Label6: TLabel
              Left = 24
              Top = 92
              Width = 14
              Height = 13
              Caption = 'IPI'
              FocusControl = DBEdit5
            end
            object Label7: TLabel
              Left = 24
              Top = 132
              Width = 53
              Height = 13
              Caption = 'Publicidade'
              FocusControl = DBEdit6
            end
            object Label8: TLabel
              Left = 222
              Top = 173
              Width = 65
              Height = 13
              Caption = 'Inadimpl'#234'ncia'
              FocusControl = DBEdit7
            end
            object Label9: TLabel
              Left = 222
              Top = 212
              Width = 68
              Height = 13
              Caption = 'Administrativo'
              FocusControl = DBEdit8
            end
            object Label10: TLabel
              Left = 24
              Top = 173
              Width = 49
              Height = 13
              Caption = 'Financeiro'
              FocusControl = DBEdit9
            end
            object Label11: TLabel
              Left = 24
              Top = 213
              Width = 16
              Height = 13
              Caption = 'PIS'
              FocusControl = DBEdit10
            end
            object Label12: TLabel
              Left = 222
              Top = 12
              Width = 38
              Height = 13
              Caption = 'COFINS'
              FocusControl = DBEdit11
            end
            object Label13: TLabel
              Left = 222
              Top = 52
              Width = 88
              Height = 13
              Caption = 'Imposto de Renda'
              FocusControl = DBEdit12
            end
            object Label14: TLabel
              Left = 222
              Top = 92
              Width = 55
              Height = 13
              Caption = 'Importa'#231#227'o'
              FocusControl = DBEdit13
            end
            object Label15: TLabel
              Left = 222
              Top = 132
              Width = 26
              Height = 13
              Caption = 'Frete'
              FocusControl = DBEdit14
            end
            object Label16: TLabel
              Left = 421
              Top = 52
              Width = 82
              Height = 13
              Caption = 'Margem de Lucro'
              FocusControl = DBEdit15
            end
            object DBEdit1: TDBEdit
              Left = 24
              Top = 28
              Width = 134
              Height = 21
              DataField = 'MARKUP'
              DataSource = ds_Markup
              TabOrder = 0
            end
            object DBEdit3: TDBEdit
              Left = 421
              Top = 28
              Width = 134
              Height = 21
              DataField = 'OUTROSIMPOSTOS'
              DataSource = ds_Markup
              TabOrder = 12
            end
            object DBEdit4: TDBEdit
              Left = 24
              Top = 68
              Width = 134
              Height = 21
              DataField = 'ICMS'
              DataSource = ds_Markup
              TabOrder = 1
            end
            object DBEdit5: TDBEdit
              Left = 24
              Top = 108
              Width = 134
              Height = 21
              DataField = 'IPI'
              DataSource = ds_Markup
              TabOrder = 2
            end
            object DBEdit6: TDBEdit
              Left = 24
              Top = 148
              Width = 134
              Height = 21
              DataField = 'PUBLICIDADE'
              DataSource = ds_Markup
              TabOrder = 3
            end
            object DBEdit7: TDBEdit
              Left = 222
              Top = 189
              Width = 134
              Height = 21
              DataField = 'INADIMPLENCIA'
              DataSource = ds_Markup
              TabOrder = 10
            end
            object DBEdit8: TDBEdit
              Left = 222
              Top = 228
              Width = 134
              Height = 21
              DataField = 'ADMINISTRATIVO'
              DataSource = ds_Markup
              TabOrder = 11
            end
            object DBEdit9: TDBEdit
              Left = 24
              Top = 189
              Width = 134
              Height = 21
              DataField = 'FINANCEIRO'
              DataSource = ds_Markup
              TabOrder = 4
            end
            object DBEdit10: TDBEdit
              Left = 24
              Top = 229
              Width = 134
              Height = 21
              DataField = 'PIS'
              DataSource = ds_Markup
              TabOrder = 5
            end
            object DBEdit11: TDBEdit
              Left = 222
              Top = 28
              Width = 134
              Height = 21
              DataField = 'COFINS'
              DataSource = ds_Markup
              TabOrder = 6
            end
            object DBEdit12: TDBEdit
              Left = 222
              Top = 68
              Width = 134
              Height = 21
              DataField = 'IR'
              DataSource = ds_Markup
              TabOrder = 7
            end
            object DBEdit13: TDBEdit
              Left = 222
              Top = 108
              Width = 134
              Height = 21
              DataField = 'IMPORTACAO'
              DataSource = ds_Markup
              TabOrder = 8
            end
            object DBEdit14: TDBEdit
              Left = 222
              Top = 148
              Width = 134
              Height = 21
              DataField = 'FRETE'
              DataSource = ds_Markup
              TabOrder = 9
            end
            object DBEdit15: TDBEdit
              Left = 421
              Top = 68
              Width = 134
              Height = 21
              DataField = 'MARGEMLUCRO'
              DataSource = ds_Markup
              TabOrder = 13
            end
          end
        end
      end
    end
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 868
    Height = 36
    Align = alTop
    Constraints.MinHeight = 36
    Color = 14120960
    ParentBackground = False
    ParentColor = False
    TabOrder = 1
    ExplicitWidth = 868
    ExplicitHeight = 36
    inherited Image3: TImage
      Width = 868
      Height = 36
      ExplicitWidth = 657
      ExplicitHeight = 36
    end
    inherited pnTitulo: TPanel
      Width = 868
      Height = 36
      Constraints.MinHeight = 36
      ExplicitWidth = 868
      ExplicitHeight = 36
      inherited LblBarraTitulo: TLabel
        Width = 725
        Height = 28
        Caption = 'Markup'
        ExplicitWidth = 77
        ExplicitHeight = 28
      end
      inherited Image1: TImage
        Height = 34
        ExplicitHeight = 34
      end
      inherited Image2: TImage
        Left = 809
        Height = 28
        ExplicitLeft = 601
        ExplicitHeight = 34
      end
    end
  end
  object Navegador: TDBNavigator
    Left = 0
    Top = 36
    Width = 868
    Height = 24
    Cursor = crHandPoint
    DataSource = ds_Markup
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    Align = alTop
    Flat = True
    Hints.Strings = (
      'In'#237'cio do Arquivo'
      'Registro Anterior'
      'Pr'#243'ximo Registro'
      'Final do Arquivo')
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
  end
  inline FrmFrameBotoes1: TFrmFrameBotoes
    Left = 0
    Top = 444
    Width = 868
    Height = 61
    Align = alBottom
    AutoSize = True
    Constraints.MinHeight = 60
    Constraints.MinWidth = 860
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    TabStop = True
    ExplicitTop = 444
    ExplicitWidth = 868
    ExplicitHeight = 61
    inherited PanelBotoesBottom: TPanel
      Width = 858
      Height = 55
      ExplicitWidth = 858
      ExplicitHeight = 55
      inherited SpbAdicionar: TSpeedButton
        Left = -36
        Height = 51
        ExplicitLeft = -36
        ExplicitHeight = 51
      end
      inherited SpbEditar: TSpeedButton
        Left = 164
        Height = 51
        ExplicitLeft = 164
        ExplicitHeight = 51
      end
      inherited SpbCancelar: TSpeedButton
        Left = 264
        Height = 51
        ExplicitLeft = 264
        ExplicitHeight = 51
      end
      inherited SpbSalvar: TSpeedButton
        Left = 64
        Height = 51
        ExplicitLeft = 64
        ExplicitHeight = 51
      end
      inherited SpbExcluir: TSpeedButton
        Left = 364
        Height = 51
        ExplicitLeft = 364
        ExplicitHeight = 51
      end
      inherited SpbImprimir: TSpeedButton
        Left = 564
        Height = 51
        ExplicitLeft = 564
        ExplicitHeight = 51
      end
      inherited SpbSair: TSpeedButton
        Left = 754
        Height = 51
        ExplicitLeft = 754
        ExplicitHeight = 51
      end
      inherited SpbExtra: TSpeedButton
        Left = 664
        Height = 51
        ExplicitLeft = 664
        ExplicitHeight = 51
      end
      inherited SpbProcurar: TSpeedButton
        Left = 464
        Height = 51
        ExplicitLeft = 464
        ExplicitHeight = 51
      end
    end
  end
  object db_Markup: TFDQuery
    BeforeOpen = db_MarkupBeforeOpen
    BeforePost = db_MarkupBeforePost
    Connection = FrmPrincipal.DBConexao
    UpdateOptions.AutoIncFields = 'CODIGO'
    SQL.Strings = (
      'SELECT * FROM CAD_MARKUP'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'ORDER BY CODIGO')
    Left = 312
    Top = 39
    ParamData = <
      item
        Name = 'EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object db_MarkupEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Required = True
    end
    object db_MarkupCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object db_MarkupNOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
    object db_MarkupMARKUP: TFloatField
      FieldName = 'MARKUP'
      DisplayFormat = '###,##0.00%'
    end
    object db_MarkupOUTROSIMPOSTOS: TFloatField
      FieldName = 'OUTROSIMPOSTOS'
      DisplayFormat = '###,##0.00%'
    end
    object db_MarkupICMS: TFloatField
      FieldName = 'ICMS'
      DisplayFormat = '###,##0.00%'
    end
    object db_MarkupIPI: TFloatField
      FieldName = 'IPI'
      DisplayFormat = '###,##0.00%'
    end
    object db_MarkupPUBLICIDADE: TFloatField
      FieldName = 'PUBLICIDADE'
      DisplayFormat = '###,##0.00%'
    end
    object db_MarkupINADIMPLENCIA: TFloatField
      FieldName = 'INADIMPLENCIA'
      DisplayFormat = '###,##0.00%'
    end
    object db_MarkupADMINISTRATIVO: TFloatField
      FieldName = 'ADMINISTRATIVO'
      DisplayFormat = '###,##0.00%'
    end
    object db_MarkupFINANCEIRO: TFloatField
      FieldName = 'FINANCEIRO'
      DisplayFormat = '###,##0.00%'
    end
    object db_MarkupPIS: TFloatField
      FieldName = 'PIS'
      DisplayFormat = '###,##0.00%'
    end
    object db_MarkupCOFINS: TFloatField
      FieldName = 'COFINS'
      DisplayFormat = '###,##0.00%'
    end
    object db_MarkupIR: TFloatField
      FieldName = 'IR'
      DisplayFormat = '###,##0.00%'
    end
    object db_MarkupIMPORTACAO: TFloatField
      FieldName = 'IMPORTACAO'
      DisplayFormat = '###,##0.00%'
    end
    object db_MarkupFRETE: TFloatField
      FieldName = 'FRETE'
      DisplayFormat = '###,##0.00%'
    end
    object db_MarkupMARGEMLUCRO: TFloatField
      FieldName = 'MARGEMLUCRO'
      DisplayFormat = '###,##0.00%'
    end
    object db_MarkupSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 10
    end
  end
  object ds_Markup: TDataSource
    DataSet = db_Markup
    Left = 388
    Top = 40
  end
  object cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 55293
      TextColor = clBlack
    end
  end
end
