object FrmFramePadrao: TFrmFramePadrao
  Left = 0
  Top = 0
  Width = 451
  Height = 305
  Align = alClient
  AutoSize = True
  TabOrder = 0
  object PNPainelPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 451
    Height = 305
    Align = alClient
    TabOrder = 0
    inline FrmFrameBarra1: TFrmFrameBarra
      Left = 1
      Top = 1
      Width = 449
      Height = 45
      Align = alTop
      AutoSize = True
      Constraints.MinHeight = 45
      Color = 7368816
      ParentBackground = False
      ParentColor = False
      TabOrder = 0
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 449
      ExplicitHeight = 45
      inherited Image3: TImage
        Width = 449
        Height = 45
        ExplicitWidth = 449
      end
      inherited pnTitulo: TPanel
        Width = 449
        Height = 45
        ExplicitWidth = 449
        inherited LblBarraTitulo: TLabel
          Width = 306
          Height = 37
          ExplicitWidth = 306
        end
        inherited Image1: TImage
          Height = 43
        end
        inherited Image2: TImage
          Left = 390
          Height = 37
          ExplicitLeft = 390
        end
      end
    end
  end
end
