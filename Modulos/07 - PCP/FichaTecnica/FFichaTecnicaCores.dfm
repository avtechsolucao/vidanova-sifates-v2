object FrmFichaTecnicaCores: TFrmFichaTecnicaCores
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Grade de Cores'
  ClientHeight = 444
  ClientWidth = 930
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
  PixelsPerInch = 96
  TextHeight = 13
  inline FrmFrameBotoes1: TFrmFrameBotoes
    Left = 0
    Top = 384
    Width = 930
    Height = 60
    Align = alBottom
    AutoSize = True
    Constraints.MinHeight = 60
    Constraints.MinWidth = 930
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    TabStop = True
    ExplicitTop = 384
    ExplicitWidth = 930
    inherited PanelBotoesBottom: TPanel
      Width = 920
      ExplicitWidth = 920
      inherited SpbAdicionar: TSpeedButton
        Left = 26
      end
      inherited SpbEditar: TSpeedButton
        Left = 226
      end
      inherited SpbCancelar: TSpeedButton
        Left = 326
      end
      inherited SpbSalvar: TSpeedButton
        Left = 126
      end
      inherited SpbExcluir: TSpeedButton
        Left = 426
      end
      inherited SpbImprimir: TSpeedButton
        Left = 626
      end
      inherited SpbSair: TSpeedButton
        Left = 816
      end
      inherited SpbExtra: TSpeedButton
        Left = 726
      end
      inherited SpbProcurar: TSpeedButton
        Left = 526
      end
    end
  end
  object GroupBox4: TGroupBox
    Left = 0
    Top = 0
    Width = 930
    Height = 384
    Align = alClient
    Caption = 'Grade de Cores:'
    TabOrder = 1
    object GridGradeCores: TDBGrid
      Left = 2
      Top = 15
      Width = 926
      Height = 367
      Align = alClient
      DataSource = BaseDados_PCP.ds_Cores_Modelos
      Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnKeyPress = GridGradeCoresKeyPress
      Columns = <
        item
          ButtonStyle = cbsEllipsis
          Expanded = False
          FieldName = 'ID_COR'
          Title.Caption = 'C'#243'digo:'
          Width = 58
          Visible = True
        end
        item
          Color = 14811135
          Expanded = False
          FieldName = 'NOME'
          ReadOnly = True
          Title.Caption = 'Descri'#231#227'o:'
          Width = 410
          Visible = True
        end>
    end
  end
end
