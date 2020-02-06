object FrmCalendario: TFrmCalendario
  Left = 256
  Top = 114
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Calend'#225'rio'
  ClientHeight = 579
  ClientWidth = 850
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 850
    Height = 33
    Align = alTop
    Constraints.MinHeight = 33
    Color = 7368816
    ParentBackground = False
    ParentColor = False
    TabOrder = 0
    ExplicitWidth = 850
    ExplicitHeight = 33
    inherited Image3: TImage
      Width = 850
      Height = 33
      ExplicitWidth = 850
    end
    inherited pnTitulo: TPanel
      Width = 850
      Height = 33
      Constraints.MinHeight = 33
      ExplicitWidth = 850
      ExplicitHeight = 33
      inherited LblBarraTitulo: TLabel
        Width = 707
        Height = 25
        Caption = 'Calend'#225'rio'
        ExplicitWidth = 109
        ExplicitHeight = 33
      end
      inherited Image1: TImage
        Height = 31
        ExplicitHeight = 31
      end
      inherited Image2: TImage
        Left = 791
        Height = 25
        ExplicitLeft = 794
        ExplicitHeight = 31
      end
    end
  end
end
