object FrmDefeitos: TFrmDefeitos
  Left = 1
  Top = 1
  Caption = 'Cadastro de Defeitos'
  ClientHeight = 196
  ClientWidth = 860
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
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
  object GroupBox1: TGroupBox
    Left = 0
    Top = 69
    Width = 860
    Height = 66
    Align = alClient
    TabOrder = 0
    object Label5: TLabel
      Left = 14
      Top = 41
      Width = 3
      Height = 14
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
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
    object Label3: TLabel
      Left = 79
      Top = 15
      Width = 28
      Height = 13
      Caption = 'Nome'
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
      Top = 30
      Width = 67
      Height = 21
      CharCase = ecUpperCase
      Color = 14811135
      DataField = 'CODIGO'
      DataSource = BaseDados_PCP.ds_Defeitos
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
      Top = 30
      Width = 466
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NOME'
      DataSource = BaseDados_PCP.ds_Defeitos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  inline FrmFrameBotoes1: TFrmFrameBotoes
    Left = 0
    Top = 135
    Width = 860
    Height = 61
    Align = alBottom
    AutoSize = True
    Constraints.MinHeight = 60
    Constraints.MinWidth = 860
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    TabStop = True
    ExplicitTop = 135
    ExplicitWidth = 860
    ExplicitHeight = 61
    inherited PanelBotoesBottom: TPanel
      Width = 850
      Height = 55
      ExplicitWidth = 850
      ExplicitHeight = 55
      inherited SpbAdicionar: TSpeedButton
        Left = -44
        Height = 51
        ExplicitLeft = -44
        ExplicitHeight = 51
      end
      inherited SpbEditar: TSpeedButton
        Left = 156
        Height = 51
        ExplicitLeft = 156
        ExplicitHeight = 51
      end
      inherited SpbCancelar: TSpeedButton
        Left = 256
        Height = 51
        ExplicitLeft = 256
        ExplicitHeight = 51
      end
      inherited SpbSalvar: TSpeedButton
        Left = 56
        Height = 51
        ExplicitLeft = 56
        ExplicitHeight = 51
      end
      inherited SpbExcluir: TSpeedButton
        Left = 356
        Height = 51
        ExplicitLeft = 356
        ExplicitHeight = 51
      end
      inherited SpbImprimir: TSpeedButton
        Left = 556
        Height = 51
        ExplicitLeft = 556
        ExplicitHeight = 51
      end
      inherited SpbSair: TSpeedButton
        Left = 746
        Height = 51
        ExplicitLeft = 746
        ExplicitHeight = 51
      end
      inherited SpbExtra: TSpeedButton
        Left = 656
        Height = 51
        ExplicitLeft = 656
        ExplicitHeight = 51
      end
      inherited SpbProcurar: TSpeedButton
        Left = 456
        Height = 51
        ExplicitLeft = 456
        ExplicitHeight = 51
      end
    end
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 860
    Height = 45
    Align = alTop
    AutoSize = True
    Constraints.MinHeight = 45
    Color = 16024898
    ParentBackground = False
    ParentColor = False
    TabOrder = 2
    ExplicitWidth = 860
    ExplicitHeight = 45
    inherited Image3: TImage
      Width = 860
      Height = 45
      ExplicitWidth = 558
      ExplicitHeight = 45
    end
    inherited pnTitulo: TPanel
      Width = 860
      Height = 45
      ExplicitWidth = 860
      ExplicitHeight = 45
      inherited LblBarraTitulo: TLabel
        Width = 717
        Height = 37
        Caption = 'Cadastro de Defeitos'
        ExplicitWidth = 214
        ExplicitHeight = 37
      end
      inherited Image1: TImage
        Height = 43
      end
      inherited Image2: TImage
        Left = 801
        Height = 37
        ExplicitLeft = 502
        ExplicitHeight = 37
      end
    end
  end
  object Navegador: TDBNavigator
    Left = 0
    Top = 45
    Width = 860
    Height = 24
    Cursor = crHandPoint
    DataSource = BaseDados_PCP.ds_Defeitos
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
    TabOrder = 3
  end
end
