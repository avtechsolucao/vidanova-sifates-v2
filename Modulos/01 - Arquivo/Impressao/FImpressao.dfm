object FrmImpressao: TFrmImpressao
  Left = 0
  Top = 0
  Caption = 'Visualizador de Arquivos'
  ClientHeight = 611
  ClientWidth = 1064
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 1064
    Height = 33
    Align = alTop
    Constraints.MinHeight = 33
    Color = 7500402
    ParentBackground = False
    ParentColor = False
    TabOrder = 0
    ExplicitWidth = 1064
    ExplicitHeight = 33
    inherited Image3: TImage
      Width = 1064
      Height = 33
      ExplicitWidth = 753
    end
    inherited pnTitulo: TPanel
      Width = 1064
      Height = 33
      Constraints.MinHeight = 33
      ExplicitWidth = 1064
      ExplicitHeight = 33
      inherited LblBarraTitulo: TLabel
        Width = 921
        Height = 25
        Caption = 'Imprimir'
        ExplicitWidth = 320
        ExplicitHeight = 25
      end
      inherited Image1: TImage
        Height = 31
        ExplicitHeight = 31
      end
      inherited Image2: TImage
        Left = 1005
        Height = 25
        ExplicitLeft = 697
        ExplicitHeight = 31
      end
    end
  end
  object pnl_relatorio: TPanel
    Left = 0
    Top = 93
    Width = 1064
    Height = 472
    Align = alClient
    TabOrder = 1
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 1062
      Height = 5
      Align = alTop
      BevelOuter = bvNone
      Color = clAppWorkSpace
      ParentBackground = False
      TabOrder = 0
    end
  end
  inline FrameRelatoriosBotoes1: TFrameRelatoriosBotoes
    Left = 0
    Top = 565
    Width = 1064
    Height = 46
    Align = alBottom
    TabOrder = 2
    ExplicitTop = 565
    ExplicitWidth = 1064
    inherited Panel1: TPanel
      Width = 1064
      ExplicitWidth = 1064
      inherited SpbImprimir: TBitBtn
        Width = 84
        Caption = 'Imprimir'
        OnClick = FrameRelatoriosBotoes1SpbImprimirClick
        ExplicitWidth = 84
      end
      inherited SpbSair: TBitBtn
        Left = 95
        Width = 84
        Caption = 'Voltar'
        OnClick = FrameRelatoriosBotoes1SpbSairClick
        ExplicitLeft = 95
        ExplicitWidth = 84
      end
    end
  end
  inline FrmFrameBotoes1: TFrmFrameBotoes
    Left = 0
    Top = 33
    Width = 1064
    Height = 60
    Align = alTop
    AutoSize = True
    Constraints.MinHeight = 60
    Constraints.MinWidth = 860
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    TabStop = True
    Visible = False
    ExplicitTop = 33
    ExplicitWidth = 1064
    inherited PanelBotoesBottom: TPanel
      Width = 1054
      ExplicitWidth = 1054
      inherited SpbAdicionar: TSpeedButton
        Left = 160
        ExplicitLeft = -44
      end
      inherited SpbEditar: TSpeedButton
        Left = 360
        ExplicitLeft = 156
      end
      inherited SpbCancelar: TSpeedButton
        Left = 460
        ExplicitLeft = 256
      end
      inherited SpbSalvar: TSpeedButton
        Left = 260
        ExplicitLeft = 56
      end
      inherited SpbExcluir: TSpeedButton
        Left = 560
        ExplicitLeft = 356
      end
      inherited SpbImprimir: TSpeedButton
        Left = 760
        ExplicitLeft = 556
      end
      inherited SpbSair: TSpeedButton
        Left = 950
        ExplicitLeft = 746
      end
      inherited SpbExtra: TSpeedButton
        Left = 860
        ExplicitLeft = 656
      end
      inherited SpbProcurar: TSpeedButton
        Left = 660
        ExplicitLeft = 456
      end
    end
  end
end
