object FrmEtiquetaProdutosConfigurar: TFrmEtiquetaProdutosConfigurar
  Left = 1
  Top = 1
  BorderStyle = bsDialog
  Caption = 'Etiqueta de Produtos | Configurar'
  ClientHeight = 576
  ClientWidth = 964
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesigned
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 33
    Width = 964
    Height = 482
    Align = alClient
    TabOrder = 0
    object Grupo1: TGroupBox
      Left = 1
      Top = 1
      Width = 962
      Height = 69
      Align = alTop
      Caption = 'Identifica'#231#227'o'
      TabOrder = 0
      object Label1: TLabel
        Left = 10
        Top = 25
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
      object Label2: TLabel
        Left = 79
        Top = 25
        Width = 48
        Height = 13
        Caption = '&Descri'#231#227'o'
        FocusControl = EditNome
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit2: TDBEdit
        Left = 10
        Top = 40
        Width = 67
        Height = 21
        CharCase = ecUpperCase
        Color = clBtnFace
        DataField = 'CODIGO'
        DataSource = ds_EtiquetasLayout
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object EditNome: TDBEdit
        Left = 79
        Top = 40
        Width = 573
        Height = 21
        CharCase = ecUpperCase
        DataField = 'DESCRICAO'
        DataSource = ds_EtiquetasLayout
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object Locate_EtiquetasLayout: TIDBEditDialog
        Left = 567
        Top = 13
        Width = 65
        Height = 21
        HelpKeyWord = ''
        Color = clWindow
        Enabled = True
        TabOrder = 2
        Text = ''
        Visible = False
        LabelCaption = 'Procurar'
        LabelAlwaysEnabled = True
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        Lookup.Separator = ';'
        Version = '5.0.0.0'
        ButtonStyle = bsButton
        ButtonWidth = 16
        ButtonHint = 'Procurar...'
        Etched = False
        ButtonCaption = '...'
        SQLdbRetornoVazio = ' *** '
        SQLdbMaxLenght = 10
        SearchQuery.Strings = (
          'SELECT * FROM CONFIG_ETIQUETAS_PRODUTOS'
          'WHERE'
          '%WHERE%'
          '')
        SearchDialogFieldList = <
          item
            FieldName = 'CODIGO'
            WhereSyntax = 'CODIGO'
            DisplayLabel = 'C'#211'DIGO:'
            DisplayWidth = 12
            DisplayColumnWidth = 0
            FieldType = ftInteger
            Search = True
            EmptyOperation = eoNull
            DefaultComparison = scEqual
            SearchCase = scMixed
          end
          item
            FieldName = 'DESCRICAO'
            WhereSyntax = 'DESCRICAO'
            DisplayLabel = 'DESCRI'#199#195'O'
            DisplayWidth = 90
            DisplayColumnWidth = 0
            FieldType = ftString
            Search = True
            EmptyOperation = eoNull
            DefaultComparison = scContains
            SearchCase = scUpper
          end>
        SearchPresetList = <>
        DialogCaption = 'Pesquisa'
        DialogWidth = 0
        DialogHeight = 0
        Store = dsFields
        CompareFormatDate = 'DDMMYYYY'
        CompareFormatTime = 'HHMMSS'
        CompareFormatDateTime = 'DDMMYYYY'
        TrueExpression = '1=1'
        DefaultSet = [ddSearchStyle, ddCriteriaCount, ddMaxCriteria, ddMax, ddCaseFormatUpper, ddCaseFormatLower, ddRegistryPath, ddDialogCaption, ddDialogWidth, ddDialogHeight, ddStore, ddCompareFormatDate, ddCompareFormatTime, ddCompareFormatDateTime, ddQuotedDateTime, ddQuoteChar, ddDecimalChar, ddTrueExpression, ddStartOpen, ddIgnoreEmptyValues, ddShowPresets, ddClearValueOnFieldChange, ddShowPresetsCustomization, ddShowHint]
        ConnectionDialog = FrmPrincipal.DBConexao
        Connection = FrmPrincipal.DBConexao
      end
    end
    object Grupo2: TGroupBox
      Left = 1
      Top = 70
      Width = 962
      Height = 152
      Align = alTop
      Caption = 'Configura'#231#227'o da Impressora'
      TabOrder = 1
      object Label3: TLabel
        Left = 567
        Top = 18
        Width = 145
        Height = 13
        Caption = 'Endere'#231'o/Porta da Impressora'
        FocusControl = EditNome
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object SpeedButton1: TSpeedButton
        Left = 567
        Top = 58
        Width = 378
        Height = 22
        Caption = 'Exemplo de Endere'#231'o/Porta da Impressora...'
        OnClick = SpeedButton1Click
      end
      object DBAdvOfficeRadioGroup1: TDBRadioGroup
        Left = 2
        Top = 15
        Width = 202
        Height = 135
        Align = alLeft
        Caption = 'Driver - Linguagem da Impressora'
        Columns = 2
        DataField = 'DRIVER'
        DataSource = ds_EtiquetasLayout
        Items.Strings = (
          'Nenhuma'
          'PPL-A'
          'PPL-B'
          'ZPL-II'
          'EPL-2')
        ParentBackground = False
        TabOrder = 0
        Values.Strings = (
          'etqNenhuma'
          'etqPpla'
          'etqPPlb'
          'etqZPLII'
          'etqEpl2')
      end
      object EditLocalImpressora: TDBEdit
        Left = 567
        Top = 35
        Width = 378
        Height = 21
        Hint = 
          'informe "\\nome-computador\nome-impressora-na-rede"  (exemplo:  ' +
          '\\expedicao01\ArgoxOS_214'
        DataField = 'PORTA'
        DataSource = ds_EtiquetasLayout
        MaxLength = 200
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
      object GroupBox1: TGroupBox
        Left = 204
        Top = 15
        Width = 357
        Height = 135
        Align = alLeft
        Caption = 'Dimens'#245'es do C'#243'digo de Barras'
        TabOrder = 1
        object Label4: TLabel
          Left = 16
          Top = 18
          Width = 101
          Height = 13
          Caption = 'Tipo de C'#243'digo Barras'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 165
          Top = 18
          Width = 29
          Height = 13
          Hint = 'Altura (de cima pra baixo)'
          Caption = 'Altura'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
        end
        object Label6: TLabel
          Left = 255
          Top = 18
          Width = 77
          Height = 13
          Caption = 'Avan'#231'o do Papel'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 14
          Top = 76
          Width = 122
          Height = 13
          Caption = 'Largura Grafico de Barras:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 197
          Top = 76
          Width = 111
          Height = 13
          Caption = 'Largura das "Barrinhas"'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
        end
        object AdvDBComboBox1: TDBComboBox
          Left = 14
          Top = 34
          Width = 145
          Height = 21
          Style = csDropDownList
          DataField = 'CODBARRAS_TIPO'
          DataSource = ds_EtiquetasLayout
          Items.Strings = (
            'CODE 128'
            'CODE 39'
            'EAN13')
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
        end
        object DBAdvSpinEdit7: TcxDBSpinEdit
          Left = 166
          Top = 34
          Hint = 'Altura (de cima pra baixo)'
          DataBinding.DataField = 'CODBARRAS_ALTURA'
          DataBinding.DataSource = ds_EtiquetasLayout
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          Width = 83
        end
        object DBAdvSpinEdit54: TcxDBSpinEdit
          Left = 14
          Top = 93
          DataBinding.DataField = 'CODBARRAS_LARGURA'
          DataBinding.DataSource = ds_EtiquetasLayout
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          Width = 145
        end
        object DBAdvSpinEdit55: TcxDBSpinEdit
          Left = 197
          Top = 93
          Hint = 'Defina entre 1 e 2 (no tamanho 2 a leitura '#233' mais r'#225'pida)'
          DataBinding.DataField = 'CODBARRAS_LARGURABARRAS'
          DataBinding.DataSource = ds_EtiquetasLayout
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          Width = 145
        end
        object DBAdvSpinEdit1: TcxDBSpinEdit
          Left = 255
          Top = 33
          DataBinding.DataField = 'AVANCOPAPEL'
          DataBinding.DataSource = ds_EtiquetasLayout
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          Width = 87
        end
      end
    end
    object ScrollBoxCampos: TScrollBox
      Left = 1
      Top = 222
      Width = 962
      Height = 259
      VertScrollBar.Range = 750
      Align = alClient
      AutoScroll = False
      TabOrder = 2
      object grpColuna1: TGroupBox
        Left = 0
        Top = 0
        Width = 941
        Height = 246
        Align = alTop
        Caption = 'Coordenadas de campos [COLUNA 1]'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object GrupoDescricao1: TGroupBox
          Left = 2
          Top = 15
          Width = 110
          Height = 229
          Align = alLeft
          Caption = '[DESCRI'#199#195'O]'
          TabOrder = 0
          object Label9: TLabel
            Left = 7
            Top = 48
            Width = 33
            Height = 13
            Caption = 'Coluna'
          end
          object Label10: TLabel
            Left = 7
            Top = 97
            Width = 26
            Height = 13
            Caption = 'Linha'
          end
          object Label11: TLabel
            Left = 7
            Top = 144
            Width = 27
            Height = 13
            Caption = 'Fonte'
          end
          object DBAdvSpinEdit2: TcxDBSpinEdit
            Left = 7
            Top = 65
            DataBinding.DataField = 'L_DESCRICAO_COLUNA'
            DataBinding.DataSource = ds_EtiquetasLayout
            TabOrder = 0
            Width = 61
          end
          object DBAdvSpinEdit3: TcxDBSpinEdit
            Left = 7
            Top = 113
            DataBinding.DataField = 'L_DESCRICAO_LINHA'
            DataBinding.DataSource = ds_EtiquetasLayout
            TabOrder = 1
            Width = 61
          end
          object DBAdvSpinEdit4: TcxDBSpinEdit
            Left = 7
            Top = 161
            DataBinding.DataField = 'L_DESCRICAO_FONTE'
            DataBinding.DataSource = ds_EtiquetasLayout
            TabOrder = 2
            Width = 61
          end
          object DBCheckBox1: TDBCheckBox
            Left = 7
            Top = 21
            Width = 61
            Height = 17
            Caption = 'Imprimir'
            DataField = 'L_DESCRICAO_IMPRIMIR'
            DataSource = ds_EtiquetasLayout
            TabOrder = 3
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
        object GrupoCBarra1: TGroupBox
          Left = 112
          Top = 15
          Width = 110
          Height = 229
          Align = alLeft
          Caption = '[C'#211'DIGO DE BARRAS]'
          TabOrder = 1
          object Label12: TLabel
            Left = 7
            Top = 97
            Width = 26
            Height = 13
            Caption = 'Linha'
          end
          object Label13: TLabel
            Left = 7
            Top = 48
            Width = 33
            Height = 13
            Caption = 'Coluna'
          end
          object DBAdvSpinEdit5: TcxDBSpinEdit
            Left = 7
            Top = 65
            DataBinding.DataField = 'L_CODBARRAS_COLUNA'
            DataBinding.DataSource = ds_EtiquetasLayout
            TabOrder = 0
            Width = 60
          end
          object DBAdvSpinEdit6: TcxDBSpinEdit
            Left = 7
            Top = 113
            DataBinding.DataField = 'L_CODBARRAS_LINHA'
            DataBinding.DataSource = ds_EtiquetasLayout
            TabOrder = 1
            Width = 60
          end
          object DBCheckBox2: TDBCheckBox
            Left = 7
            Top = 21
            Width = 61
            Height = 17
            Caption = 'Imprimir'
            DataField = 'L_CODBARRAS_IMPRIMIR'
            DataSource = ds_EtiquetasLayout
            TabOrder = 2
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox6: TDBCheckBox
            Left = 7
            Top = 161
            Width = 85
            Height = 17
            Caption = 'Exibir C'#243'digo'
            DataField = 'L_CODBARRAS_EXIBECODIGO'
            DataSource = ds_EtiquetasLayout
            TabOrder = 3
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
        object GrupoCor1: TGroupBox
          Left = 332
          Top = 15
          Width = 110
          Height = 229
          Align = alLeft
          Caption = '[COR]'
          TabOrder = 3
          object Label17: TLabel
            Left = 7
            Top = 97
            Width = 26
            Height = 13
            Caption = 'Linha'
          end
          object Label18: TLabel
            Left = 7
            Top = 48
            Width = 33
            Height = 13
            Caption = 'Coluna'
          end
          object Label19: TLabel
            Left = 7
            Top = 144
            Width = 27
            Height = 13
            Caption = 'Fonte'
          end
          object DBAdvSpinEdit8: TcxDBSpinEdit
            Left = 7
            Top = 65
            DataBinding.DataField = 'L_COR_COLUNA'
            DataBinding.DataSource = ds_EtiquetasLayout
            TabOrder = 0
            Width = 61
          end
          object DBAdvSpinEdit9: TcxDBSpinEdit
            Left = 7
            Top = 113
            DataBinding.DataField = 'L_COR_LINHA'
            DataBinding.DataSource = ds_EtiquetasLayout
            TabOrder = 1
            Width = 61
          end
          object DBAdvSpinEdit10: TcxDBSpinEdit
            Left = 7
            Top = 161
            DataBinding.DataField = 'L_COR_FONTE'
            DataBinding.DataSource = ds_EtiquetasLayout
            TabOrder = 2
            Width = 61
          end
          object DBCheckBox3: TDBCheckBox
            Left = 7
            Top = 21
            Width = 61
            Height = 17
            Caption = 'Imprimir'
            DataField = 'L_COR_IMPRIMIR'
            DataSource = ds_EtiquetasLayout
            TabOrder = 3
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
        object GrupoTamanho1: TGroupBox
          Left = 442
          Top = 15
          Width = 110
          Height = 229
          Align = alLeft
          Caption = '[TAMANHO]'
          TabOrder = 4
          object Label20: TLabel
            Left = 7
            Top = 97
            Width = 26
            Height = 13
            Caption = 'Linha'
          end
          object Label21: TLabel
            Left = 7
            Top = 48
            Width = 33
            Height = 13
            Caption = 'Coluna'
          end
          object Label22: TLabel
            Left = 7
            Top = 144
            Width = 27
            Height = 13
            Caption = 'Fonte'
          end
          object DBAdvSpinEdit11: TcxDBSpinEdit
            Left = 7
            Top = 65
            DataBinding.DataField = 'L_TAMANHO_COLUNA'
            DataBinding.DataSource = ds_EtiquetasLayout
            TabOrder = 0
            Width = 61
          end
          object DBAdvSpinEdit12: TcxDBSpinEdit
            Left = 7
            Top = 113
            DataBinding.DataField = 'L_TAMANHO_LINHA'
            DataBinding.DataSource = ds_EtiquetasLayout
            TabOrder = 1
            Width = 61
          end
          object DBAdvSpinEdit13: TcxDBSpinEdit
            Left = 7
            Top = 161
            DataBinding.DataField = 'L_TAMANHO_FONTE'
            DataBinding.DataSource = ds_EtiquetasLayout
            TabOrder = 2
            Width = 61
          end
          object DBCheckBox4: TDBCheckBox
            Left = 7
            Top = 21
            Width = 61
            Height = 17
            Caption = 'Imprimir'
            DataField = 'L_TAMANHO_IMPRIMIR'
            DataSource = ds_EtiquetasLayout
            TabOrder = 3
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
        object GrupoPrecos1: TGroupBox
          Left = 552
          Top = 15
          Width = 110
          Height = 229
          Align = alLeft
          Caption = '[PRE'#199'OS]'
          TabOrder = 5
          object Label23: TLabel
            Left = 7
            Top = 97
            Width = 26
            Height = 13
            Caption = 'Linha'
          end
          object Label24: TLabel
            Left = 7
            Top = 48
            Width = 33
            Height = 13
            Caption = 'Coluna'
          end
          object Label25: TLabel
            Left = 7
            Top = 144
            Width = 27
            Height = 13
            Caption = 'Fonte'
          end
          object DBAdvSpinEdit14: TcxDBSpinEdit
            Left = 7
            Top = 65
            DataBinding.DataField = 'L_PRECO_COLUNA'
            DataBinding.DataSource = ds_EtiquetasLayout
            TabOrder = 0
            Width = 61
          end
          object DBAdvSpinEdit15: TcxDBSpinEdit
            Left = 7
            Top = 113
            DataBinding.DataField = 'L_PRECO_LINHA'
            DataBinding.DataSource = ds_EtiquetasLayout
            TabOrder = 1
            Width = 61
          end
          object DBAdvSpinEdit16: TcxDBSpinEdit
            Left = 7
            Top = 161
            DataBinding.DataField = 'L_PRECO_FONTE'
            DataBinding.DataSource = ds_EtiquetasLayout
            TabOrder = 2
            Width = 61
          end
          object DBCheckBox5: TDBCheckBox
            Left = 7
            Top = 21
            Width = 61
            Height = 17
            Caption = 'Imprimir'
            DataField = 'L_PRECO_IMPRIMIR'
            DataSource = ds_EtiquetasLayout
            TabOrder = 3
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
        object GrupoCodigoProduto: TGroupBox
          Left = 222
          Top = 15
          Width = 110
          Height = 229
          Align = alLeft
          Caption = '[C'#211'DIGO PRODUTO]'
          TabOrder = 2
          object Label14: TLabel
            Left = 7
            Top = 97
            Width = 26
            Height = 13
            Caption = 'Linha'
          end
          object Label15: TLabel
            Left = 7
            Top = 48
            Width = 33
            Height = 13
            Caption = 'Coluna'
          end
          object Label16: TLabel
            Left = 7
            Top = 144
            Width = 27
            Height = 13
            Caption = 'Fonte'
          end
          object DBAdvSpinEdit31: TcxDBSpinEdit
            Left = 7
            Top = 65
            DataBinding.DataField = 'L_CODIGO_COLUNA'
            DataBinding.DataSource = ds_EtiquetasLayout
            TabOrder = 0
            Width = 61
          end
          object DBAdvSpinEdit32: TcxDBSpinEdit
            Left = 6
            Top = 113
            DataBinding.DataField = 'L_CODIGO_LINHA'
            DataBinding.DataSource = ds_EtiquetasLayout
            TabOrder = 1
            Width = 61
          end
          object DBAdvSpinEdit33: TcxDBSpinEdit
            Left = 7
            Top = 161
            DataBinding.DataField = 'L_CODIGO_FONTE'
            DataBinding.DataSource = ds_EtiquetasLayout
            TabOrder = 2
            Width = 61
          end
          object DBCheckBox13: TDBCheckBox
            Left = 7
            Top = 21
            Width = 61
            Height = 17
            Caption = 'Imprimir'
            DataField = 'L_CODIGO_IMPRIMIR'
            DataSource = ds_EtiquetasLayout
            TabOrder = 3
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
        object GrupoOP1: TGroupBox
          Left = 662
          Top = 15
          Width = 110
          Height = 229
          Align = alLeft
          Caption = '[ORDEM PRODU'#199#195'O]'
          TabOrder = 6
          object Label26: TLabel
            Left = 7
            Top = 97
            Width = 26
            Height = 13
            Caption = 'Linha'
          end
          object Label27: TLabel
            Left = 7
            Top = 48
            Width = 33
            Height = 13
            Caption = 'Coluna'
          end
          object Label28: TLabel
            Left = 7
            Top = 144
            Width = 27
            Height = 13
            Caption = 'Fonte'
          end
          object DBAdvSpinEdit56: TcxDBSpinEdit
            Left = 7
            Top = 65
            DataBinding.DataField = 'L_OP_COLUNA'
            DataBinding.DataSource = ds_EtiquetasLayout
            TabOrder = 0
            Width = 61
          end
          object DBAdvSpinEdit57: TcxDBSpinEdit
            Left = 7
            Top = 113
            DataBinding.DataField = 'L_OP_LINHA'
            DataBinding.DataSource = ds_EtiquetasLayout
            TabOrder = 1
            Width = 61
          end
          object DBAdvSpinEdit58: TcxDBSpinEdit
            Left = 7
            Top = 161
            DataBinding.DataField = 'L_OP_FONTE'
            DataBinding.DataSource = ds_EtiquetasLayout
            TabOrder = 2
            Width = 61
          end
          object DBCheckBox22: TDBCheckBox
            Left = 7
            Top = 21
            Width = 61
            Height = 17
            Caption = 'Imprimir'
            DataField = 'L_OP_IMPRIMIR'
            DataSource = ds_EtiquetasLayout
            TabOrder = 3
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
        object GrupoLote1: TGroupBox
          Left = 772
          Top = 15
          Width = 110
          Height = 229
          Align = alLeft
          Caption = '[LOTE PRODU'#199#195'O]'
          TabOrder = 7
          object Label29: TLabel
            Left = 7
            Top = 97
            Width = 26
            Height = 13
            Caption = 'Linha'
          end
          object Label30: TLabel
            Left = 7
            Top = 48
            Width = 33
            Height = 13
            Caption = 'Coluna'
          end
          object Label31: TLabel
            Left = 7
            Top = 144
            Width = 27
            Height = 13
            Caption = 'Fonte'
          end
          object DBAdvSpinEdit59: TcxDBSpinEdit
            Left = 7
            Top = 65
            DataBinding.DataField = 'L_LOTE_COLUNA'
            DataBinding.DataSource = ds_EtiquetasLayout
            TabOrder = 0
            Width = 61
          end
          object DBAdvSpinEdit60: TcxDBSpinEdit
            Left = 7
            Top = 113
            DataBinding.DataField = 'L_LOTE_LINHA'
            DataBinding.DataSource = ds_EtiquetasLayout
            TabOrder = 1
            Width = 61
          end
          object DBAdvSpinEdit61: TcxDBSpinEdit
            Left = 7
            Top = 161
            DataBinding.DataField = 'L_LOTE_FONTE'
            DataBinding.DataSource = ds_EtiquetasLayout
            TabOrder = 2
            Width = 61
          end
          object DBCheckBox23: TDBCheckBox
            Left = 7
            Top = 21
            Width = 61
            Height = 17
            Caption = 'Imprimir'
            DataField = 'L_LOTE_IMPRIMIR'
            DataSource = ds_EtiquetasLayout
            TabOrder = 3
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
      end
      object grpColuna2: TGroupBox
        Left = 0
        Top = 246
        Width = 941
        Height = 246
        Align = alTop
        Caption = 'Coordenadas de campos [COLUNA 2]'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object GrupoDescricao2: TGroupBox
          Left = 2
          Top = 15
          Width = 110
          Height = 229
          Align = alLeft
          Caption = '[DESCRI'#199#195'O]'
          TabOrder = 0
          object Label32: TLabel
            Left = 5
            Top = 98
            Width = 26
            Height = 13
            Caption = 'Linha'
          end
          object Label33: TLabel
            Left = 5
            Top = 49
            Width = 33
            Height = 13
            Caption = 'Coluna'
          end
          object Label34: TLabel
            Left = 5
            Top = 145
            Width = 27
            Height = 13
            Caption = 'Fonte'
          end
          object DBAdvSpinEdit17: TcxDBSpinEdit
            Left = 5
            Top = 65
            DataBinding.DataField = 'R_DESCRICAO_COLUNA'
            DataBinding.DataSource = ds_EtiquetasLayout
            TabOrder = 0
            Width = 61
          end
          object DBAdvSpinEdit18: TcxDBSpinEdit
            Left = 5
            Top = 113
            DataBinding.DataField = 'R_DESCRICAO_LINHA'
            DataBinding.DataSource = ds_EtiquetasLayout
            TabOrder = 1
            Width = 61
          end
          object DBAdvSpinEdit19: TcxDBSpinEdit
            Left = 5
            Top = 161
            DataBinding.DataField = 'R_DESCRICAO_FONTE'
            DataBinding.DataSource = ds_EtiquetasLayout
            TabOrder = 2
            Width = 61
          end
          object DBCheckBox7: TDBCheckBox
            Left = 5
            Top = 21
            Width = 61
            Height = 17
            Caption = 'Imprimir'
            DataField = 'R_DESCRICAO_IMPRIMIR'
            DataSource = ds_EtiquetasLayout
            TabOrder = 3
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
        object GrupoCBarra2: TGroupBox
          Left = 112
          Top = 15
          Width = 110
          Height = 229
          Align = alLeft
          Caption = '[C'#211'DIGO DE BARRAS]'
          TabOrder = 1
          object Label35: TLabel
            Left = 5
            Top = 98
            Width = 33
            Height = 13
            Caption = 'Coluna'
          end
          object Label36: TLabel
            Left = 5
            Top = 49
            Width = 33
            Height = 13
            Caption = 'Coluna'
          end
          object DBAdvSpinEdit20: TcxDBSpinEdit
            Left = 5
            Top = 65
            DataBinding.DataField = 'R_CODBARRAS_COLUNA'
            DataBinding.DataSource = ds_EtiquetasLayout
            TabOrder = 0
            Width = 60
          end
          object DBAdvSpinEdit21: TcxDBSpinEdit
            Left = 5
            Top = 113
            DataBinding.DataField = 'R_CODBARRAS_LINHA'
            DataBinding.DataSource = ds_EtiquetasLayout
            TabOrder = 1
            Width = 60
          end
          object DBCheckBox8: TDBCheckBox
            Left = 5
            Top = 21
            Width = 61
            Height = 17
            Caption = 'Imprimir'
            DataField = 'R_CODBARRAS_IMPRIMIR'
            DataSource = ds_EtiquetasLayout
            TabOrder = 2
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox9: TDBCheckBox
            Left = 5
            Top = 161
            Width = 85
            Height = 17
            Caption = 'Exibir C'#243'digo'
            DataField = 'R_CODBARRAS_EXIBECODIGO'
            DataSource = ds_EtiquetasLayout
            TabOrder = 3
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
        object GrupoCor2: TGroupBox
          Left = 332
          Top = 15
          Width = 110
          Height = 229
          Align = alLeft
          Caption = '[COR]'
          TabOrder = 3
          object Label40: TLabel
            Left = 5
            Top = 98
            Width = 33
            Height = 13
            Caption = 'Coluna'
          end
          object Label41: TLabel
            Left = 5
            Top = 49
            Width = 33
            Height = 13
            Caption = 'Coluna'
          end
          object Label42: TLabel
            Left = 5
            Top = 145
            Width = 27
            Height = 13
            Caption = 'Fonte'
          end
          object DBAdvSpinEdit22: TcxDBSpinEdit
            Left = 5
            Top = 65
            DataBinding.DataField = 'R_COR_COLUNA'
            DataBinding.DataSource = ds_EtiquetasLayout
            TabOrder = 0
            Width = 61
          end
          object DBAdvSpinEdit23: TcxDBSpinEdit
            Left = 5
            Top = 113
            DataBinding.DataField = 'R_COR_LINHA'
            DataBinding.DataSource = ds_EtiquetasLayout
            TabOrder = 1
            Width = 61
          end
          object DBAdvSpinEdit24: TcxDBSpinEdit
            Left = 5
            Top = 161
            DataBinding.DataField = 'R_COR_FONTE'
            DataBinding.DataSource = ds_EtiquetasLayout
            TabOrder = 2
            Width = 61
          end
          object DBCheckBox10: TDBCheckBox
            Left = 5
            Top = 21
            Width = 61
            Height = 17
            Caption = 'Imprimir'
            DataField = 'R_COR_IMPRIMIR'
            DataSource = ds_EtiquetasLayout
            TabOrder = 3
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
        object GrupoTamanho2: TGroupBox
          Left = 442
          Top = 15
          Width = 110
          Height = 229
          Align = alLeft
          Caption = '[TAMANHO]'
          TabOrder = 4
          object Label43: TLabel
            Left = 5
            Top = 98
            Width = 33
            Height = 13
            Caption = 'Coluna'
          end
          object Label44: TLabel
            Left = 5
            Top = 49
            Width = 33
            Height = 13
            Caption = 'Coluna'
          end
          object Label45: TLabel
            Left = 5
            Top = 145
            Width = 27
            Height = 13
            Caption = 'Fonte'
          end
          object DBAdvSpinEdit25: TcxDBSpinEdit
            Left = 5
            Top = 65
            DataBinding.DataField = 'R_TAMANHO_COLUNA'
            DataBinding.DataSource = ds_EtiquetasLayout
            TabOrder = 0
            Width = 61
          end
          object DBAdvSpinEdit26: TcxDBSpinEdit
            Left = 5
            Top = 113
            DataBinding.DataField = 'R_TAMANHO_LINHA'
            DataBinding.DataSource = ds_EtiquetasLayout
            TabOrder = 1
            Width = 61
          end
          object DBAdvSpinEdit27: TcxDBSpinEdit
            Left = 5
            Top = 161
            DataBinding.DataField = 'R_TAMANHO_FONTE'
            DataBinding.DataSource = ds_EtiquetasLayout
            TabOrder = 2
            Width = 61
          end
          object DBCheckBox11: TDBCheckBox
            Left = 5
            Top = 21
            Width = 61
            Height = 17
            Caption = 'Imprimir'
            DataField = 'R_TAMANHO_IMPRIMIR'
            DataSource = ds_EtiquetasLayout
            TabOrder = 3
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
        object GrupoPrecos2: TGroupBox
          Left = 552
          Top = 15
          Width = 110
          Height = 229
          Align = alLeft
          Caption = '[PRE'#199'OS]'
          TabOrder = 5
          object Label46: TLabel
            Left = 7
            Top = 98
            Width = 33
            Height = 13
            Caption = 'Coluna'
          end
          object Label47: TLabel
            Left = 7
            Top = 49
            Width = 33
            Height = 13
            Caption = 'Coluna'
          end
          object Label48: TLabel
            Left = 7
            Top = 145
            Width = 27
            Height = 13
            Caption = 'Fonte'
          end
          object DBAdvSpinEdit28: TcxDBSpinEdit
            Left = 5
            Top = 65
            DataBinding.DataField = 'R_PRECO_COLUNA'
            DataBinding.DataSource = ds_EtiquetasLayout
            TabOrder = 0
            Width = 61
          end
          object DBAdvSpinEdit29: TcxDBSpinEdit
            Left = 5
            Top = 113
            DataBinding.DataField = 'R_PRECO_LINHA'
            DataBinding.DataSource = ds_EtiquetasLayout
            TabOrder = 1
            Width = 61
          end
          object DBAdvSpinEdit30: TcxDBSpinEdit
            Left = 5
            Top = 161
            DataBinding.DataField = 'R_PRECO_FONTE'
            DataBinding.DataSource = ds_EtiquetasLayout
            TabOrder = 2
            Width = 61
          end
          object DBCheckBox12: TDBCheckBox
            Left = 5
            Top = 21
            Width = 61
            Height = 17
            Caption = 'Imprimir'
            DataField = 'R_PRECO_IMPRIMIR'
            DataSource = ds_EtiquetasLayout
            TabOrder = 3
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
        object AdvGroupBox1: TGroupBox
          Left = 222
          Top = 15
          Width = 110
          Height = 229
          Align = alLeft
          Caption = '[C'#211'DIGO PRODUTO]'
          TabOrder = 2
          object Label37: TLabel
            Left = 5
            Top = 98
            Width = 33
            Height = 13
            Caption = 'Coluna'
          end
          object Label38: TLabel
            Left = 5
            Top = 49
            Width = 33
            Height = 13
            Caption = 'Coluna'
          end
          object Label39: TLabel
            Left = 5
            Top = 145
            Width = 27
            Height = 13
            Caption = 'Fonte'
          end
          object DBAdvSpinEdit34: TcxDBSpinEdit
            Left = 5
            Top = 65
            DataBinding.DataSource = ds_EtiquetasLayout
            TabOrder = 0
            Width = 61
          end
          object DBAdvSpinEdit35: TcxDBSpinEdit
            Left = 5
            Top = 113
            DataBinding.DataSource = ds_EtiquetasLayout
            TabOrder = 1
            Width = 61
          end
          object DBAdvSpinEdit36: TcxDBSpinEdit
            Left = 5
            Top = 161
            DataBinding.DataSource = ds_EtiquetasLayout
            TabOrder = 2
            Width = 61
          end
          object DBCheckBox14: TDBCheckBox
            Left = 5
            Top = 21
            Width = 61
            Height = 17
            Caption = 'Imprimir'
            DataField = 'R_CODIGO_IMPRIMIR'
            DataSource = ds_EtiquetasLayout
            TabOrder = 3
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
        object GrupoOP2: TGroupBox
          Left = 662
          Top = 15
          Width = 110
          Height = 229
          Align = alLeft
          Caption = '[ORDEM PRODU'#199#195'O]'
          TabOrder = 6
          object Label49: TLabel
            Left = 7
            Top = 98
            Width = 33
            Height = 13
            Caption = 'Coluna'
          end
          object Label50: TLabel
            Left = 7
            Top = 49
            Width = 33
            Height = 13
            Caption = 'Coluna'
          end
          object Label51: TLabel
            Left = 7
            Top = 145
            Width = 27
            Height = 13
            Caption = 'Fonte'
          end
          object DBAdvSpinEdit62: TcxDBSpinEdit
            Left = 7
            Top = 65
            DataBinding.DataField = 'R_OP_COLUNA'
            DataBinding.DataSource = ds_EtiquetasLayout
            TabOrder = 0
            Width = 61
          end
          object DBAdvSpinEdit63: TcxDBSpinEdit
            Left = 7
            Top = 113
            DataBinding.DataField = 'R_OP_LINHA'
            DataBinding.DataSource = ds_EtiquetasLayout
            TabOrder = 1
            Width = 61
          end
          object DBAdvSpinEdit64: TcxDBSpinEdit
            Left = 7
            Top = 161
            DataBinding.DataField = 'R_OP_FONTE'
            DataBinding.DataSource = ds_EtiquetasLayout
            TabOrder = 2
            Width = 61
          end
          object DBCheckBox24: TDBCheckBox
            Left = 7
            Top = 21
            Width = 61
            Height = 17
            Caption = 'Imprimir'
            DataField = 'R_OP_IMPRIMIR'
            DataSource = ds_EtiquetasLayout
            TabOrder = 3
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
        object GrupoLote2: TGroupBox
          Left = 772
          Top = 15
          Width = 110
          Height = 229
          Align = alLeft
          Caption = '[LOTE PRODU'#199#195'O]'
          TabOrder = 7
          object Label52: TLabel
            Left = 7
            Top = 98
            Width = 33
            Height = 13
            Caption = 'Coluna'
          end
          object Label53: TLabel
            Left = 7
            Top = 49
            Width = 33
            Height = 13
            Caption = 'Coluna'
          end
          object Label54: TLabel
            Left = 7
            Top = 145
            Width = 27
            Height = 13
            Caption = 'Fonte'
          end
          object DBAdvSpinEdit65: TcxDBSpinEdit
            Left = 7
            Top = 65
            DataBinding.DataField = 'R_LOTE_COLUNA'
            DataBinding.DataSource = ds_EtiquetasLayout
            TabOrder = 0
            Width = 61
          end
          object DBAdvSpinEdit66: TcxDBSpinEdit
            Left = 7
            Top = 113
            DataBinding.DataField = 'R_LOTE_LINHA'
            DataBinding.DataSource = ds_EtiquetasLayout
            TabOrder = 1
            Width = 61
          end
          object DBAdvSpinEdit67: TcxDBSpinEdit
            Left = 7
            Top = 161
            DataBinding.DataField = 'R_LOTE_FONTE'
            DataBinding.DataSource = ds_EtiquetasLayout
            TabOrder = 2
            Width = 61
          end
          object DBCheckBox25: TDBCheckBox
            Left = 7
            Top = 21
            Width = 61
            Height = 17
            Caption = 'Imprimir'
            DataField = 'R_LOTE_IMPRIMIR'
            DataSource = ds_EtiquetasLayout
            TabOrder = 3
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
      end
      object grpColuna3: TGroupBox
        Left = 0
        Top = 492
        Width = 941
        Height = 246
        Align = alTop
        Caption = 'Coordenadas de campos [COLUNA 3]'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        object AdvGroupBox2: TGroupBox
          Left = 2
          Top = 15
          Width = 110
          Height = 229
          Align = alLeft
          Caption = '[DESCRI'#199#195'O]'
          TabOrder = 0
          object Label55: TLabel
            Left = 7
            Top = 99
            Width = 26
            Height = 13
            Caption = 'Linha'
          end
          object Label56: TLabel
            Left = 7
            Top = 50
            Width = 33
            Height = 13
            Caption = 'Coluna'
          end
          object Label57: TLabel
            Left = 7
            Top = 146
            Width = 27
            Height = 13
            Caption = 'Fonte'
          end
          object DBAdvSpinEdit37: TcxDBSpinEdit
            Left = 7
            Top = 65
            DataBinding.DataField = 'R3_DESCRICAO_COLUNA'
            DataBinding.DataSource = ds_EtiquetasLayout
            TabOrder = 0
            Width = 61
          end
          object DBAdvSpinEdit38: TcxDBSpinEdit
            Left = 7
            Top = 113
            DataBinding.DataField = 'R3_DESCRICAO_LINHA'
            DataBinding.DataSource = ds_EtiquetasLayout
            TabOrder = 1
            Width = 61
          end
          object DBAdvSpinEdit39: TcxDBSpinEdit
            Left = 7
            Top = 161
            DataBinding.DataField = 'R3_DESCRICAO_FONTE'
            DataBinding.DataSource = ds_EtiquetasLayout
            TabOrder = 2
            Width = 61
          end
          object DBCheckBox15: TDBCheckBox
            Left = 7
            Top = 21
            Width = 61
            Height = 17
            Caption = 'Imprimir'
            DataField = 'R3_DESCRICAO_IMPRIMIR'
            DataSource = ds_EtiquetasLayout
            TabOrder = 3
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
        object AdvGroupBox3: TGroupBox
          Left = 112
          Top = 15
          Width = 110
          Height = 229
          Align = alLeft
          Caption = '[C'#211'DIGO DE BARRAS]'
          TabOrder = 1
          object Label58: TLabel
            Left = 7
            Top = 99
            Width = 26
            Height = 13
            Caption = 'Linha'
          end
          object Label59: TLabel
            Left = 7
            Top = 50
            Width = 33
            Height = 13
            Caption = 'Coluna'
          end
          object DBAdvSpinEdit40: TcxDBSpinEdit
            Left = 7
            Top = 65
            DataBinding.DataField = 'R3_CODBARRAS_COLUNA'
            DataBinding.DataSource = ds_EtiquetasLayout
            TabOrder = 0
            Width = 60
          end
          object DBAdvSpinEdit41: TcxDBSpinEdit
            Left = 7
            Top = 113
            DataBinding.DataField = 'R3_CODBARRAS_LINHA'
            DataBinding.DataSource = ds_EtiquetasLayout
            TabOrder = 1
            Width = 60
          end
          object DBCheckBox16: TDBCheckBox
            Left = 7
            Top = 21
            Width = 61
            Height = 17
            Caption = 'Imprimir'
            DataField = 'R3_CODBARRAS_IMPRIMIR'
            DataSource = ds_EtiquetasLayout
            TabOrder = 2
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox17: TDBCheckBox
            Left = 7
            Top = 161
            Width = 85
            Height = 17
            Caption = 'Exibir C'#243'digo'
            DataField = 'R3_CODBARRAS_EXIBECODIGO'
            DataSource = ds_EtiquetasLayout
            TabOrder = 3
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
        object AdvGroupBox4: TGroupBox
          Left = 332
          Top = 15
          Width = 110
          Height = 229
          Align = alLeft
          Caption = '[COR]'
          TabOrder = 3
          object Label63: TLabel
            Left = 7
            Top = 99
            Width = 26
            Height = 13
            Caption = 'Linha'
          end
          object Label64: TLabel
            Left = 7
            Top = 50
            Width = 33
            Height = 13
            Caption = 'Coluna'
          end
          object Label65: TLabel
            Left = 7
            Top = 146
            Width = 27
            Height = 13
            Caption = 'Fonte'
          end
          object DBAdvSpinEdit42: TcxDBSpinEdit
            Left = 7
            Top = 65
            DataBinding.DataField = 'R3_COR_COLUNA'
            DataBinding.DataSource = ds_EtiquetasLayout
            TabOrder = 0
            Width = 61
          end
          object DBAdvSpinEdit43: TcxDBSpinEdit
            Left = 7
            Top = 113
            DataBinding.DataField = 'R3_COR_LINHA'
            DataBinding.DataSource = ds_EtiquetasLayout
            TabOrder = 1
            Width = 61
          end
          object DBAdvSpinEdit44: TcxDBSpinEdit
            Left = 7
            Top = 161
            DataBinding.DataField = 'R3_COR_FONTE'
            DataBinding.DataSource = ds_EtiquetasLayout
            TabOrder = 2
            Width = 61
          end
          object DBCheckBox18: TDBCheckBox
            Left = 7
            Top = 21
            Width = 61
            Height = 17
            Caption = 'Imprimir'
            DataField = 'R3_COR_IMPRIMIR'
            DataSource = ds_EtiquetasLayout
            TabOrder = 3
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
        object AdvGroupBox5: TGroupBox
          Left = 442
          Top = 15
          Width = 110
          Height = 229
          Align = alLeft
          Caption = '[TAMANHO]'
          TabOrder = 4
          object Label66: TLabel
            Left = 7
            Top = 99
            Width = 26
            Height = 13
            Caption = 'Linha'
          end
          object Label67: TLabel
            Left = 7
            Top = 50
            Width = 33
            Height = 13
            Caption = 'Coluna'
          end
          object Label68: TLabel
            Left = 7
            Top = 146
            Width = 27
            Height = 13
            Caption = 'Fonte'
          end
          object DBAdvSpinEdit45: TcxDBSpinEdit
            Left = 7
            Top = 65
            DataBinding.DataField = 'R3_TAMANHO_COLUNA'
            DataBinding.DataSource = ds_EtiquetasLayout
            TabOrder = 0
            Width = 61
          end
          object DBAdvSpinEdit46: TcxDBSpinEdit
            Left = 7
            Top = 113
            DataBinding.DataField = 'R3_TAMANHO_LINHA'
            DataBinding.DataSource = ds_EtiquetasLayout
            TabOrder = 1
            Width = 61
          end
          object DBAdvSpinEdit47: TcxDBSpinEdit
            Left = 7
            Top = 161
            DataBinding.DataField = 'R3_TAMANHO_FONTE'
            DataBinding.DataSource = ds_EtiquetasLayout
            TabOrder = 2
            Width = 61
          end
          object DBCheckBox19: TDBCheckBox
            Left = 7
            Top = 21
            Width = 61
            Height = 17
            Caption = 'Imprimir'
            DataField = 'R3_TAMANHO_IMPRIMIR'
            DataSource = ds_EtiquetasLayout
            TabOrder = 3
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
        object AdvGroupBox6: TGroupBox
          Left = 552
          Top = 15
          Width = 110
          Height = 229
          Align = alLeft
          Caption = '[PRE'#199'OS]'
          TabOrder = 5
          object Label69: TLabel
            Left = 7
            Top = 99
            Width = 26
            Height = 13
            Caption = 'Linha'
          end
          object Label70: TLabel
            Left = 7
            Top = 50
            Width = 33
            Height = 13
            Caption = 'Coluna'
          end
          object Label71: TLabel
            Left = 7
            Top = 146
            Width = 27
            Height = 13
            Caption = 'Fonte'
          end
          object DBAdvSpinEdit48: TcxDBSpinEdit
            Left = 7
            Top = 65
            DataBinding.DataField = 'R3_PRECO_COLUNA'
            DataBinding.DataSource = ds_EtiquetasLayout
            TabOrder = 0
            Width = 61
          end
          object DBAdvSpinEdit49: TcxDBSpinEdit
            Left = 7
            Top = 113
            DataBinding.DataField = 'R3_PRECO_LINHA'
            DataBinding.DataSource = ds_EtiquetasLayout
            TabOrder = 1
            Width = 61
          end
          object DBAdvSpinEdit50: TcxDBSpinEdit
            Left = 7
            Top = 161
            DataBinding.DataField = 'R3_PRECO_FONTE'
            DataBinding.DataSource = ds_EtiquetasLayout
            TabOrder = 2
            Width = 61
          end
          object DBCheckBox20: TDBCheckBox
            Left = 7
            Top = 21
            Width = 61
            Height = 17
            Caption = 'Imprimir'
            DataField = 'R3_PRECO_IMPRIMIR'
            DataSource = ds_EtiquetasLayout
            TabOrder = 3
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
        object AdvGroupBox7: TGroupBox
          Left = 222
          Top = 15
          Width = 110
          Height = 229
          Align = alLeft
          Caption = '[C'#211'DIGO PRODUTO]'
          TabOrder = 2
          object Label60: TLabel
            Left = 7
            Top = 99
            Width = 26
            Height = 13
            Caption = 'Linha'
          end
          object Label61: TLabel
            Left = 7
            Top = 50
            Width = 33
            Height = 13
            Caption = 'Coluna'
          end
          object Label62: TLabel
            Left = 7
            Top = 146
            Width = 27
            Height = 13
            Caption = 'Fonte'
          end
          object DBAdvSpinEdit51: TcxDBSpinEdit
            Left = 7
            Top = 65
            DataBinding.DataSource = ds_EtiquetasLayout
            TabOrder = 0
            Width = 61
          end
          object DBAdvSpinEdit52: TcxDBSpinEdit
            Left = 7
            Top = 113
            DataBinding.DataSource = ds_EtiquetasLayout
            TabOrder = 1
            Width = 61
          end
          object DBAdvSpinEdit53: TcxDBSpinEdit
            Left = 7
            Top = 161
            DataBinding.DataSource = ds_EtiquetasLayout
            TabOrder = 2
            Width = 61
          end
          object DBCheckBox21: TDBCheckBox
            Left = 7
            Top = 21
            Width = 61
            Height = 17
            Caption = 'Imprimir'
            DataField = 'R3_CODIGO_IMPRIMIR'
            DataSource = ds_EtiquetasLayout
            TabOrder = 3
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
        object GrupoOP3: TGroupBox
          Left = 662
          Top = 15
          Width = 110
          Height = 229
          Align = alLeft
          Caption = '[ORDEM PRODU'#199#195'O]'
          TabOrder = 6
          object Label72: TLabel
            Left = 7
            Top = 99
            Width = 26
            Height = 13
            Caption = 'Linha'
          end
          object Label73: TLabel
            Left = 7
            Top = 50
            Width = 33
            Height = 13
            Caption = 'Coluna'
          end
          object Label74: TLabel
            Left = 7
            Top = 146
            Width = 27
            Height = 13
            Caption = 'Fonte'
          end
          object DBAdvSpinEdit68: TcxDBSpinEdit
            Left = 7
            Top = 65
            DataBinding.DataField = 'R3_OP_COLUNA'
            DataBinding.DataSource = ds_EtiquetasLayout
            TabOrder = 0
            Width = 61
          end
          object DBAdvSpinEdit69: TcxDBSpinEdit
            Left = 7
            Top = 113
            DataBinding.DataField = 'R3_OP_LINHA'
            DataBinding.DataSource = ds_EtiquetasLayout
            TabOrder = 1
            Width = 61
          end
          object DBAdvSpinEdit70: TcxDBSpinEdit
            Left = 7
            Top = 161
            DataBinding.DataField = 'R3_OP_FONTE'
            DataBinding.DataSource = ds_EtiquetasLayout
            TabOrder = 2
            Width = 61
          end
          object DBCheckBox26: TDBCheckBox
            Left = 7
            Top = 21
            Width = 61
            Height = 17
            Caption = 'Imprimir'
            DataField = 'R3_OP_IMPRIMIR'
            DataSource = ds_EtiquetasLayout
            TabOrder = 3
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
        object GrupoLote3: TGroupBox
          Left = 772
          Top = 15
          Width = 110
          Height = 229
          Align = alLeft
          Caption = '[LOTE PRODU'#199#195'O]'
          TabOrder = 7
          object Label75: TLabel
            Left = 7
            Top = 99
            Width = 26
            Height = 13
            Caption = 'Linha'
          end
          object Label76: TLabel
            Left = 7
            Top = 50
            Width = 33
            Height = 13
            Caption = 'Coluna'
          end
          object Label77: TLabel
            Left = 7
            Top = 146
            Width = 27
            Height = 13
            Caption = 'Fonte'
          end
          object DBAdvSpinEdit71: TcxDBSpinEdit
            Left = 7
            Top = 161
            DataBinding.DataField = 'R3_LOTE_FONTE'
            DataBinding.DataSource = ds_EtiquetasLayout
            TabOrder = 0
            Width = 61
          end
          object DBAdvSpinEdit72: TcxDBSpinEdit
            Left = 7
            Top = 113
            DataBinding.DataField = 'R3_LOTE_LINHA'
            DataBinding.DataSource = ds_EtiquetasLayout
            TabOrder = 1
            Width = 61
          end
          object DBAdvSpinEdit73: TcxDBSpinEdit
            Left = 7
            Top = 65
            DataBinding.DataField = 'R3_LOTE_COLUNA'
            DataBinding.DataSource = ds_EtiquetasLayout
            TabOrder = 2
            Width = 61
          end
          object DBCheckBox27: TDBCheckBox
            Left = 7
            Top = 21
            Width = 61
            Height = 17
            Caption = 'Imprimir'
            DataField = 'R3_LOTE_IMPRIMIR'
            DataSource = ds_EtiquetasLayout
            TabOrder = 3
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
      end
    end
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 964
    Height = 33
    Align = alTop
    Constraints.MinHeight = 33
    Color = 14120960
    ParentBackground = False
    ParentColor = False
    TabOrder = 2
    ExplicitWidth = 964
    ExplicitHeight = 33
    inherited Image3: TImage
      Width = 964
      Height = 33
      ExplicitWidth = 984
    end
    inherited pnTitulo: TPanel
      Width = 964
      Height = 33
      Constraints.MinHeight = 33
      ExplicitWidth = 964
      ExplicitHeight = 33
      inherited LblBarraTitulo: TLabel
        Width = 821
        Height = 25
        Caption = 'Etiqueta de Produtos | Configurar'
        ExplicitWidth = 208
        ExplicitHeight = 33
      end
      inherited Image1: TImage
        Height = 31
        ExplicitHeight = 31
      end
      inherited Image2: TImage
        Left = 905
        Height = 25
        ExplicitLeft = 928
        ExplicitHeight = 31
      end
    end
  end
  inline FrmFrameBotoes1: TFrmFrameBotoes
    Left = 0
    Top = 515
    Width = 964
    Height = 61
    Align = alBottom
    AutoSize = True
    Constraints.MinHeight = 60
    Constraints.MinWidth = 860
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    TabStop = True
    ExplicitTop = 515
    ExplicitWidth = 964
    ExplicitHeight = 61
    inherited PanelBotoesBottom: TPanel
      Width = 954
      Height = 55
      ExplicitWidth = 954
      ExplicitHeight = 55
      inherited SpbAdicionar: TSpeedButton
        Left = 60
        Height = 51
        ExplicitLeft = 60
        ExplicitHeight = 51
      end
      inherited SpbEditar: TSpeedButton
        Left = 260
        Height = 51
        ExplicitLeft = 260
        ExplicitHeight = 51
      end
      inherited SpbCancelar: TSpeedButton
        Left = 360
        Height = 51
        ExplicitLeft = 360
        ExplicitHeight = 51
      end
      inherited SpbSalvar: TSpeedButton
        Left = 160
        Height = 51
        ExplicitLeft = 160
        ExplicitHeight = 51
      end
      inherited SpbExcluir: TSpeedButton
        Left = 460
        Height = 51
        ExplicitLeft = 460
        ExplicitHeight = 51
      end
      inherited SpbImprimir: TSpeedButton
        Left = 660
        Height = 51
        ExplicitLeft = 660
        ExplicitHeight = 51
      end
      inherited SpbSair: TSpeedButton
        Left = 850
        Height = 51
        ExplicitLeft = 850
        ExplicitHeight = 51
      end
      inherited SpbExtra: TSpeedButton
        Left = 760
        Height = 51
        ExplicitLeft = 760
        ExplicitHeight = 51
      end
      inherited SpbProcurar: TSpeedButton
        Left = 560
        Height = 51
        OnClick = FrmFrameBotoes1SpbProcurarClick
        ExplicitLeft = 560
        ExplicitHeight = 51
      end
    end
  end
  object ds_EtiquetasLayout: TDataSource
    AutoEdit = False
    DataSet = db_EtiquetasLayout
    Left = 280
  end
  object db_EtiquetasLayout: TFDQuery
    BeforePost = db_EtiquetasLayoutBeforePost
    AfterPost = db_EtiquetasLayoutAfterPost
    Connection = FrmPrincipal.DBConexao
    UpdateOptions.AutoIncFields = 'CODIGO'
    SQL.Strings = (
      'SELECT * FROM CONFIG_ETIQUETAS_PRODUTOS'
      'WHERE'
      'CODIGO=:CODIGO')
    Left = 376
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
end
