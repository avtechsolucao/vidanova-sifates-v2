object FrmOpcaoConferencia: TFrmOpcaoConferencia
  Left = 229
  Top = 107
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Confer'#234'ncia de Pedido de Venda'
  ClientHeight = 340
  ClientWidth = 468
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 468
    Height = 33
    Align = alTop
    Constraints.MinHeight = 33
    Color = 7368816
    ParentBackground = False
    ParentColor = False
    TabOrder = 4
    ExplicitWidth = 468
    ExplicitHeight = 33
    inherited Image3: TImage
      Width = 468
      Height = 33
      ExplicitWidth = 468
    end
    inherited pnTitulo: TPanel
      Width = 468
      Height = 33
      Constraints.MinHeight = 33
      ExplicitWidth = 468
      ExplicitHeight = 33
      inherited LblBarraTitulo: TLabel
        Width = 325
        Height = 25
        Caption = 'Confer'#234'ncia de Pedido de Venda | Op'#231#227'o'
        ExplicitWidth = 254
        ExplicitHeight = 33
      end
      inherited Image1: TImage
        Height = 31
        ExplicitHeight = 31
      end
      inherited Image2: TImage
        Left = 409
        Height = 25
        ExplicitLeft = 412
        ExplicitHeight = 31
      end
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 33
    Width = 468
    Height = 41
    Align = alTop
    BorderWidth = 3
    Caption = 'pressione a tecla correspondente'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object BtnImportar: TButton
    Left = 96
    Top = 96
    Width = 265
    Height = 49
    Caption = 'F3 - Importar Pedido Integral'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = BtnImportarClick
  end
  object BtnSair: TButton
    Left = 96
    Top = 224
    Width = 265
    Height = 49
    Caption = 'ESC - Sair'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = BtnSairClick
  end
  object BtnDigitar: TButton
    Left = 96
    Top = 160
    Width = 265
    Height = 49
    Caption = 'F4 - Parcial'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = BtnDigitarClick
  end
end
