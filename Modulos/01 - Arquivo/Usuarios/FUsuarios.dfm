object FrmUsuarios: TFrmUsuarios
  Left = 146
  Top = 115
  Caption = 'Cadastro de Usu'#225'rios'
  ClientHeight = 578
  ClientWidth = 1184
  Color = clWhite
  Constraints.MaxWidth = 1200
  Constraints.MinWidth = 1200
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 381
    Top = 33
    Width = 532
    Height = 483
    Align = alClient
    Caption = 'Menus'
    TabOrder = 1
    Visible = False
    OnEnter = GroupBox1Enter
    object Panel1: TPanel
      Left = 2
      Top = 15
      Width = 528
      Height = 39
      Align = alTop
      TabOrder = 0
      object BtnLiberarTudo: TButton
        Left = 98
        Top = 8
        Width = 90
        Height = 25
        Caption = 'Liberar todos'
        TabOrder = 1
        OnClick = BtnLiberarTudoClick
      end
      object BtnBloquearTudo: TButton
        Left = 187
        Top = 8
        Width = 90
        Height = 25
        Caption = 'Bloquear todos'
        TabOrder = 2
        OnClick = BtnBloquearTudoClick
      end
      object BtnRecriar: TButton
        Left = 8
        Top = 8
        Width = 90
        Height = 25
        Caption = 'Listar'
        TabOrder = 0
        OnClick = BtnRecriarClick
      end
    end
    object cxGrid2: TcxGrid
      Left = 2
      Top = 54
      Width = 528
      Height = 370
      Align = alClient
      TabOrder = 1
      object cxGridMenus: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsUsuariosAcesso
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        object cxGridMenusColumn1: TcxGridDBColumn
          Caption = 'Nivel'
          DataBinding.FieldName = 'CATEGORIA'
          Visible = False
          GroupIndex = 0
          Options.Editing = False
          Options.AutoWidthSizable = False
          Width = 173
        end
        object cxGridMenusColumn2: TcxGridDBColumn
          Caption = 'Menu'
          DataBinding.FieldName = 'TITULO'
          Options.Editing = False
        end
        object cxGridMenusColumn3: TcxGridDBColumn
          Caption = 'Acesso'
          DataBinding.FieldName = 'ACESSO'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.DisplayChecked = 'SIM'
          Properties.DisplayUnchecked = 'NAO'
          Properties.ValueChecked = 'SIM'
          Properties.ValueUnchecked = 'NAO'
          Options.AutoWidthSizable = False
        end
      end
      object cxGrid2Level1: TcxGridLevel
        GridView = cxGridMenus
      end
    end
    object DBRadioGroup2: TDBRadioGroup
      Left = 2
      Top = 424
      Width = 528
      Height = 57
      Align = alBottom
      Caption = 'Item de menu quando o acesso n'#227'o for autorizado'
      Columns = 2
      DataField = 'ACESSOVISIVEL'
      DataSource = dsUsuario
      Items.Strings = (
        'Apenas desabilitar'
        'Deixar invis'#237'vel')
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      Values.Strings = (
        'SIM'
        'NAO')
      Visible = False
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 33
    Width = 381
    Height = 483
    Align = alLeft
    Caption = '[Usuarios]'
    TabOrder = 0
    OnExit = GroupBox2Exit
    object GroupBox4: TGroupBox
      AlignWithMargins = True
      Left = 5
      Top = 337
      Width = 371
      Height = 141
      Align = alBottom
      Caption = 'Dados de Login'
      TabOrder = 1
      object Label2: TLabel
        Left = 6
        Top = 58
        Width = 31
        Height = 13
        Caption = '&Senha'
        FocusControl = EditSenha
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 6
        Top = 16
        Width = 72
        Height = 13
        Caption = '&Nome de Login'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object EditSenha: TDBEdit
        Left = 6
        Top = 73
        Width = 200
        Height = 23
        AutoSize = False
        BevelKind = bkFlat
        CharCase = ecUpperCase
        DataField = 'SENHA'
        DataSource = dsUsuario
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        PasswordChar = '*'
        TabOrder = 1
      end
      object EditUserName: TDBEdit
        Left = 6
        Top = 31
        Width = 200
        Height = 23
        AutoSize = False
        BevelKind = bkFlat
        CharCase = ecUpperCase
        DataField = 'USERNAME'
        DataSource = dsUsuario
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object DBCheckBox100: TDBCheckBox
        Left = 6
        Top = 109
        Width = 112
        Height = 17
        Cursor = crHandPoint
        Hint = 'pergunta ao usu'#225'rio se deseja sair do sistema '
        Alignment = taLeftJustify
        Caption = 'Bloquear Usu'#225'rio'
        DataField = 'BLOQUEAR'
        DataSource = dsUsuario
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 232
        Top = 15
        Width = 137
        Height = 124
        Align = alRight
        Caption = 'Nivel'
        DataField = 'NIVEL'
        DataSource = dsUsuario
        Items.Strings = (
          'Administra'#231#227'o'
          'Ger'#234'ncia'
          'Supervis'#227'o'
          'Vendas'
          'Entregas'
          'Sistema')
        TabOrder = 3
        Values.Strings = (
          'ADMINISTRADOR'
          'GERENTE'
          'SUPERVISOR'
          'VENDEDOR'
          'ENTREGADOR'
          'SISTEMA')
      end
    end
    object GroupBox3: TGroupBox
      AlignWithMargins = True
      Left = 5
      Top = 18
      Width = 371
      Height = 313
      Align = alClient
      TabOrder = 0
      object cxGrid1: TcxGrid
        Left = 2
        Top = 15
        Width = 367
        Height = 296
        Align = alClient
        TabOrder = 0
        object cxGridUsuario: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          FindPanel.DisplayMode = fpdmManual
          FindPanel.InfoText = 'Informe nome do usu'#225'rio:'
          DataController.DataSource = dsUsuario
          DataController.KeyFieldNames = 'ID'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnFiltering = False
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.MultiSelect = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object cxGridUsuarioCodigo: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'ID'
            Options.AutoWidthSizable = False
            Width = 50
          end
          object cxGridUsuarioUSERNAME: TcxGridDBColumn
            Caption = 'Usu'#225'rio'
            DataBinding.FieldName = 'USERNAME'
            Width = 224
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGridUsuario
        end
      end
    end
  end
  inline FrmFrameBotoes1: TFrmFrameBotoes
    Left = 0
    Top = 516
    Width = 1184
    Height = 62
    Align = alBottom
    AutoSize = True
    Constraints.MinHeight = 60
    Constraints.MinWidth = 860
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    TabStop = True
    ExplicitTop = 516
    ExplicitWidth = 1184
    ExplicitHeight = 62
    inherited PanelBotoesBottom: TPanel
      Width = 1174
      Height = 56
      ExplicitWidth = 1174
      ExplicitHeight = 56
      inherited SpbAdicionar: TSpeedButton
        Left = 280
        Height = 52
        ExplicitLeft = 280
        ExplicitHeight = 52
      end
      inherited SpbEditar: TSpeedButton
        Left = 480
        Height = 52
        ExplicitLeft = 480
        ExplicitHeight = 52
      end
      inherited SpbCancelar: TSpeedButton
        Left = 580
        Height = 52
        ExplicitLeft = 580
        ExplicitHeight = 52
      end
      inherited SpbSalvar: TSpeedButton
        Left = 380
        Height = 52
        OnClick = FrmFrameBotoes1SpbSalvarClick
        ExplicitLeft = 380
        ExplicitHeight = 52
      end
      inherited SpbExcluir: TSpeedButton
        Left = 680
        Height = 52
        ExplicitLeft = 680
        ExplicitHeight = 52
      end
      inherited SpbImprimir: TSpeedButton
        Left = 880
        Height = 52
        ExplicitLeft = 880
        ExplicitHeight = 52
      end
      inherited SpbSair: TSpeedButton
        Left = 1070
        Height = 52
        ExplicitLeft = 1070
        ExplicitHeight = 52
      end
      inherited SpbExtra: TSpeedButton
        Left = 980
        Height = 52
        ExplicitLeft = 980
        ExplicitHeight = 52
      end
      inherited SpbProcurar: TSpeedButton
        Left = 780
        Height = 52
        ExplicitLeft = 780
        ExplicitHeight = 52
      end
    end
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 1184
    Height = 33
    Align = alTop
    Constraints.MinHeight = 33
    Color = 14120960
    ParentBackground = False
    ParentColor = False
    TabOrder = 4
    ExplicitWidth = 1184
    ExplicitHeight = 33
    inherited Image3: TImage
      Width = 1184
      Height = 33
      ExplicitTop = 33
      ExplicitWidth = 1033
    end
    inherited pnTitulo: TPanel
      Width = 1184
      Height = 33
      Constraints.MinHeight = 33
      ExplicitWidth = 1184
      ExplicitHeight = 33
      inherited LblBarraTitulo: TLabel
        Width = 1041
        Height = 25
        Caption = 'Controle de Usu'#225'rios'
        ExplicitWidth = 213
        ExplicitHeight = 33
      end
      inherited Image1: TImage
        Height = 31
        ExplicitLeft = 1418
        ExplicitHeight = 31
      end
      inherited Image2: TImage
        Left = 1125
        Height = 25
        ExplicitLeft = 977
        ExplicitHeight = 31
      end
    end
  end
  object GroupBox5: TGroupBox
    Left = 913
    Top = 33
    Width = 271
    Height = 483
    Align = alRight
    Caption = 'Logs de Sistema'
    TabOrder = 2
    object DBCheckBox1: TDBCheckBox
      Left = 10
      Top = 43
      Width = 285
      Height = 17
      Cursor = crHandPoint
      Caption = 'Permitir Aprovar/Desaprovar Pedido de Venda'
      DataField = 'PEDIDOVENDAAPROVAR'
      DataSource = dsUsuario
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCheckBox2: TDBCheckBox
      Left = 10
      Top = 109
      Width = 285
      Height = 17
      Cursor = crHandPoint
      Caption = 'Permitir atualizar estoque via Produ'#231#227'o'
      DataField = 'PRODUCAOATUALIZARESTOQUE'
      DataSource = dsUsuario
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      ValueChecked = 'S'
      ValueUnchecked = 'N'
      Visible = False
    end
    object DBCheckBox3: TDBCheckBox
      Left = 10
      Top = 152
      Width = 285
      Height = 17
      Cursor = crHandPoint
      Caption = 'Permitir atualizar estoque via Invent'#225'rio'
      DataField = 'ESTOQUEINVENTARIO'
      DataSource = dsUsuario
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      ValueChecked = 'S'
      ValueUnchecked = 'N'
      Visible = False
    end
    object DBCheckBox4: TDBCheckBox
      Left = 10
      Top = 287
      Width = 285
      Height = 17
      Cursor = crHandPoint
      Caption = 'Permitir Aprovar/Desaprovar Ordem de Produ'#231#227'o'
      DataField = 'PRODUCAOAPROVAR'
      DataSource = dsUsuario
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      ValueChecked = 'S'
      ValueUnchecked = 'N'
      Visible = False
    end
    object DBCheckBox5: TDBCheckBox
      Left = 10
      Top = 129
      Width = 285
      Height = 17
      Cursor = crHandPoint
      Caption = 'Permitir movimentar Fases na produ'#231#227'o'
      DataField = 'PRODUCAOFASEMOVIMENTAR'
      DataSource = dsUsuario
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      ValueChecked = 'S'
      ValueUnchecked = 'N'
      Visible = False
    end
    object DBCheckBox6: TDBCheckBox
      Left = 10
      Top = 66
      Width = 285
      Height = 17
      Cursor = crHandPoint
      Caption = 'Permitir cancelar Nota Fiscal'
      DataField = 'NOTAFISCALCANCELAR'
      DataSource = dsUsuario
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCheckBox7: TDBCheckBox
      Left = 10
      Top = 175
      Width = 285
      Height = 17
      Cursor = crHandPoint
      Caption = 'Permitir visualizar pre'#231'os nos Pedidos de Vendas'
      DataField = 'PEDIDOVENDAVERPRECOS'
      DataSource = dsUsuario
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      ValueChecked = 'S'
      ValueUnchecked = 'N'
      Visible = False
    end
    object DBCheckBox8: TDBCheckBox
      Left = 10
      Top = 197
      Width = 285
      Height = 17
      Cursor = crHandPoint
      Caption = 'Alterar Forma de Pagamento nos Pedidos de Vendas'
      DataField = 'PEDIDOVENDAALTERARPAGAMENTO'
      DataSource = dsUsuario
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      ValueChecked = 'S'
      ValueUnchecked = 'N'
      Visible = False
    end
    object DBCheckBox9: TDBCheckBox
      Left = 10
      Top = 219
      Width = 285
      Height = 17
      Cursor = crHandPoint
      Caption = 'Alterar/Visualizar pre'#231'o no cadastro de Produtos'
      DataField = 'PRODUTOVERPRECOS'
      DataSource = dsUsuario
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      ValueChecked = 'S'
      ValueUnchecked = 'N'
      Visible = False
    end
    object DBCheckBox10: TDBCheckBox
      Left = 10
      Top = 241
      Width = 285
      Height = 17
      Cursor = crHandPoint
      Caption = 'Liberar Pagamentos para Fornecedores'
      DataField = 'FORNEC_LIBERARPAGAMENTO'
      DataSource = dsUsuario
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
      ValueChecked = 'S'
      ValueUnchecked = 'N'
      Visible = False
    end
    object DBCheckBox11: TDBCheckBox
      Left = 10
      Top = 264
      Width = 285
      Height = 17
      Cursor = crHandPoint
      Caption = 'Liberar Pagamentos para Fornecedores'
      DataField = 'CLI_LIBERARPAGAMENTO'
      DataSource = dsUsuario
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
      ValueChecked = 'S'
      ValueUnchecked = 'N'
      Visible = False
    end
    object pnfuncoes: TPanel
      AlignWithMargins = True
      Left = 5
      Top = 399
      Width = 261
      Height = 79
      Margins.Top = 10
      Align = alBottom
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 11
      object BitBtn1: TBitBtn
        AlignWithMargins = True
        Left = -1
        Top = 9
        Width = 75
        Height = 69
        Caption = 'Log'
        Glyph.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000A67545E6B8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFA57545E50000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000B37E4BF8B8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB37E4BF80000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000886039BCB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFF886039BC0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000023190F31B17D4AF5B8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB17D
          4AF524190F320000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000002B1F123CA57445E4B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF93683ECC7B5733AA9469
          3ECDB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFA57445E42B1F
          123C000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000906040C563D
          24779A6D41D6B8824DFFB8824DFFB47F4BF93A29185100000000000000000000
          0000402D1B59B6804CFCB8824DFFB8824DFF9A6D41D6563D24770906040C0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000001C140C27795532A7553C24760000000000000000000000000000
          000000000000593F257B7C5834AC1C140C270000000000000000000000000000
          0000000000000000000000000000000000000000000000000000AE7B49F1B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFF9C6E41D83F2D1B583F2D1B580101000100000000000000000907040D0000
          00000000000001010102000000003C2A19539C6E41D8B8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFAD7A48F0B17D4AF5B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFF3F2D1B5804030205543B2374A37344E2B8824DFFA474
          45E3563D247702020103402D1B59B8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB17D4AF5795633A8B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFF7E5935AE00000000795532A7B8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFF785532A6000000007E5935AEB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF795633A80F0B06159D6F
          42D9B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFF2C1F123D3A291851B8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFF3A2918512B1F123CB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFF9E7042DB120D0819000000000C09
          051171502F9DB5804CFBB8824DFFB8824DFFB8824DFFA37344E248331E64261B
          10353C2A1953020201038C633BC2B8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFF8D633BC3010100011F160D2B49331E65A57445E4B882
          4DFFB8824DFFB8824DFFB5804CFB71502F9D0C09051100000000000000000000
          000000000000140E081C4C36206995693ECEA77646E7100B0716000000000000
          00000000000020170E2DB6804CFCB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB6804CFC21170E2E0000000000000000140E081CA977
          47EA95693ECE4C362069140E081C000000000000000000000000000000000000
          00000000000000000000000000000302010420170E2D00000000000000000000
          000000000000886039BCB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFF886039BC0000000000000000000000002017
          0E2D030201040000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000022180E2F704F2F9B9166
          3DC919110A2290663CC8B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFF92673DCA1E150D2A7351309F20170E2D0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000034251648B47F4BF9B8824DFFB882
          4DFF281C11374E37216CB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFF4F38216D261B1035B8824DFFB47F4BF93525
          1649000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000705030AA77646E8B8824DFFB8824DFFB882
          4DFF6A4B2C933626174BB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFF3626174B694A2C92B8824DFFB8824DFFA776
          46E80806030B0000000000000000000000000000000000000000000000000000
          000000000000000000000000000045301D5FB8824DFFB8824DFFB8824DFFB882
          4DFF825C36B4281C1137B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFF2C1F123D825C36B4B8824DFFB8824DFFB882
          4DFF47321E630000000000000000000000000000000000000000000000000000
          0000000000000000000006040208976B3FD1B8824DFFB8824DFFB8824DFFB882
          4DFF90663CC80705030AAF7C49F3B8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB27D4AF60A07040E8C633BC2B8824DFFB8824DFFB882
          4DFF976B3FD10604020800000000000000000000000000000000000000000000
          000000000000000000003827174DB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB17D4AF50906040C5A40267DB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFF5F43288406050309AE7B49F1B8824DFFB8824DFFB882
          4DFFB8824DFF3827174D00000000000000000000000000000000000000000000
          0000000000000000000022180E2FB6804CFCB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFF5E4227820000000044301C5E8D633BC3A87746E9B5804CFBA977
          47EA8F653CC645301D5F01010001593F257BB8824DFFB8824DFFB8824DFFB882
          4DFFB6804CFC20170E2D00000000000000000000000000000000000000000000
          00000000000000000000000000009E7042DBB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFF745231A1261B10340000000000000000000000000000
          00000D090512291D1139735230A0B7814DFEB8824DFFB8824DFFB8824DFFB882
          4DFF9F7042DC0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000956A3FCFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFF966A3FD00000000000000000000000000000
          0000956A3FCFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFF966A3FD00000000000000000000000000000000000000000000000000000
          0000000000000000000000000000765331A3B8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFF7A5633A90000000000000000000000000000
          0000765331A3B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFF7A5633A90000000000000000000000000000000000000000000000000000
          0000000000000000000000000000281D1138B6804CFCB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB6804CFC2D20133E0000000000000000000000000000
          0000281D1138B6804CFCB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB680
          4CFC2D20133E0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000002F211441835D37B6A87746E9B580
          4CFBA97747EA855E38B930221442000000000000000000000000000000000000
          0000000000002F211441835D37B6A87746E9B5804CFBA97747EA855E38B93022
          1442000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Layout = blGlyphBottom
        TabOrder = 0
        WordWrap = True
        OnClick = BitBtn1Click
      end
    end
  end
  object dsUsuario: TDataSource
    DataSet = QryUsuario
    Left = 184
    Top = 112
  end
  object QryUsuario: TFDQuery
    BeforePost = QryUsuarioBeforePost
    AfterScroll = QryUsuarioAfterScroll
    OnNewRecord = QryUsuarioNewRecord
    Connection = FrmPrincipal.DBConexao
    UpdateOptions.AutoIncFields = 'ID'
    SQL.Strings = (
      'SELECT * FROM USUARIO'
      'ORDER BY USERNAME')
    Left = 60
    Top = 116
  end
  object QryUsuarioAcesso: TFDQuery
    BeforePost = QryUsuarioAcessoBeforePost
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM USUARIOACESSO'
      'WHERE'
      'ID=:ID')
    Left = 64
    Top = 164
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
  end
  object dsUsuariosAcesso: TDataSource
    DataSet = QryUsuarioAcesso
    Left = 188
    Top = 164
  end
  object QryExcluirAcesso: TFDQuery
    BeforePost = QryUsuarioAcessoBeforePost
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'DELETE FROM USUARIOACESSO'
      'WHERE'
      'ID=:ID')
    Left = 392
    Top = 116
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object QryUsuarioSetarAcesso: TFDQuery
    BeforePost = QryUsuarioAcessoBeforePost
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'UPDATE USUARIOACESSO SET ACESSO=:ACAO'
      'WHERE'
      'ID=:ID'
      'AND'
      'MENU<>'#39#39)
    Left = 392
    Top = 172
    ParamData = <
      item
        Name = 'ACAO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object ActionList_Listar: TActionList
    Left = 496
    Top = 240
  end
end
