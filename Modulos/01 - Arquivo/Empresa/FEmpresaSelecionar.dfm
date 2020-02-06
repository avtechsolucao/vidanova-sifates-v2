object FrmEmpresaSelecionar: TFrmEmpresaSelecionar
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Selecionar Empresa'
  ClientHeight = 376
  ClientWidth = 734
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
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 734
    Height = 33
    Align = alTop
    Constraints.MinHeight = 33
    Color = 14120960
    ParentBackground = False
    ParentColor = False
    TabOrder = 2
    ExplicitWidth = 734
    ExplicitHeight = 33
    inherited Image3: TImage
      Width = 734
      Height = 33
      ExplicitWidth = 734
    end
    inherited pnTitulo: TPanel
      Width = 734
      Height = 33
      Constraints.MinHeight = 33
      ExplicitWidth = 734
      ExplicitHeight = 33
      inherited LblBarraTitulo: TLabel
        Width = 591
        Height = 25
        Caption = 'Selecionar Empresa'
        ExplicitWidth = 198
        ExplicitHeight = 33
      end
      inherited Image1: TImage
        Height = 31
        ExplicitLeft = 678
        ExplicitHeight = 31
      end
      inherited Image2: TImage
        Left = 675
        Height = 25
        ExplicitLeft = 678
        ExplicitHeight = 31
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 335
    Width = 734
    Height = 41
    Align = alBottom
    TabOrder = 1
    object BtnSelecionar: TButton
      Left = 8
      Top = 6
      Width = 100
      Height = 25
      Caption = 'Enter-Selecionar'
      Default = True
      TabOrder = 0
      OnClick = BtnSelecionarClick
    end
    object BtnSair: TButton
      Left = 114
      Top = 6
      Width = 100
      Height = 25
      Caption = 'Esc-Sair'
      TabOrder = 1
      OnClick = BtnSairClick
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 33
    Width = 734
    Height = 302
    Align = alClient
    DataSource = DS_Parametros
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'EMPRESA'
        Title.Caption = 'Empresa'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Raz'#227'o Social'
        Width = 208
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMEFANTASIA'
        Title.Caption = 'Nome Fantasia'
        Width = 152
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FONE'
        Title.Caption = 'Fone:'
        Width = 93
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CIDADE'
        Title.Caption = 'Cidade'
        Width = 145
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UF'
        Width = 33
        Visible = True
      end>
  end
  object db_Parametros: TFDQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT * FROM CONFIG_PARAMETROS'
      'ORDER BY EMPRESA')
    Left = 240
    Top = 72
  end
  object DS_Parametros: TDataSource
    DataSet = db_Parametros
    Left = 336
    Top = 72
  end
end
