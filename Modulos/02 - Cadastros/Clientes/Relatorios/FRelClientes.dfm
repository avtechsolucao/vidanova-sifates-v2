object FrmRelClientes: TFrmRelClientes
  Left = 303
  Top = 106
  BorderStyle = bsDialog
  Caption = 'Relat'#243'rios Clientes/Fornecedores'
  ClientHeight = 491
  ClientWidth = 622
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 435
    Width = 622
    Height = 56
    Align = alBottom
    BevelInner = bvRaised
    BorderStyle = bsSingle
    TabOrder = 0
    object Btn_Imprimir: TSpeedButton
      Left = 533
      Top = 5
      Width = 40
      Height = 40
      Cursor = crHandPoint
      Hint = '[tecla F11] Imprimir registro'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9999
        9907070700000000000000000000000000000000000000000000000000000018
        1818FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFC6F6F6F0101
        01121212383838ACACACACACACACACACACACACACACACACACACACACAC74747400
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0484848090909A9A9
        A9545454545454FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFACACAC00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCDCDC292929191919CBCBCBFFFF
        FF545454545454FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFACACAC00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1818180000000000000000000000
        00000000575757FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFACACAC00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000747474ACACACACACACACAC
        ACACACACDDDDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFACACAC00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000ACACACFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFACACAC00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000ACACACFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFACACAC00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000ACACACFFFFFF7070700000
        00000000000000000000000000000000000000000000707070FFFFFFACACAC00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000ACACACFFFFFFDCDCDCAAAA
        AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADDDDDDFFFFFFACACAC00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDD
        ACACACACACACACACACACACACACACACACACAC000000ACACACFFFFFFDCDCDCAAAA
        AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADDDDDDFFFFFFACACAC00
        0000ACACACACACACACACACACACACACACACACACACDDDDDDFFFFFFFFFFFF575757
        000000000000000000000000000000000000000000ACACACFFFFFF7070700000
        00000000000000000000000000000000000000000000707070FFFFFFACACAC00
        0000000000000000000000000000000000000000575757FFFFFFFFFFFF545454
        545454FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000ACACACFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFACACAC00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF545454545454FFFFFFFFFFFF545454
        545454FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000ACACACFFFFFFA6A6A65656
        56565656565656565656565656565656565656555555A6A6A6FFFFFFACACAC00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF545454545454FFFFFFFFFFFF545454
        545454FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000ACACACFFFFFFA6A6A65656
        56565656565656565656565656565656565656565656A6A6A6FFFFFFACACAC00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF545454545454FFFFFFFFFFFF545454
        545454FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000ACACACFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFACACAC00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF545454545454FFFFFFFFFFFF545454
        545454FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000ACACACFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFACACAC00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF545454545454FFFFFFFFFFFF545454
        545454FFFFFFFFFFFFA7A7A75454545454540000003737375151515151515151
        5151515151515151515151515151515151515151515151515151515137373700
        0000545454545454A7A7A7FFFFFFFFFFFF545454545454FFFFFFFFFFFF545454
        545454FFFFFFFFFFFF5454541C1C1C5454545252525151515151515151515151
        5151515151515151515151515151515151515151515151515151515151515152
        52525454541C1C1C545454FFFFFFFFFFFF545454545454FFFFFFFFFFFF545454
        545454FFFFFFFFFFFF545454545454FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF545454545454FFFFFFFFFFFF545454545454FFFFFFFFFFFF545454
        545454FFFFFFFFFFFF5757570000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000575757FFFFFFFFFFFF545454545454FFFFFFFFFFFF545454
        545454FFFFFFFFFFFFDDDDDDACACACACACACACACACACACACACACACACACACACAC
        ACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACAC
        ACACACACACACACACDDDDDDFFFFFFFFFFFF545454545454FFFFFFFFFFFF545454
        383838ACACACACACACACACACACACACA9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9
        A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9
        A9A9A9A9A9ACACACACACACACACACACACAC383838545454FFFFFFFFFFFF6E6E6E
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000006E6E6EFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFACACAC000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF000000ACACACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFACACAC000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF000000ACACACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFACACAC000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF000000ACACACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFACACAC000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF000000ACACACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFACACAC000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF000000ACACACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFACACAC000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF000000ACACACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFACACAC000000ACACACACACACACACACACACACACAC
        ACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACAC
        ACAC000000ACACACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFC1C1C10202020000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000020202C1C1C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphTop
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      OnClick = Btn_ImprimirClick
    end
    object BtnSair: TBitBtn
      Left = 572
      Top = 5
      Width = 40
      Height = 40
      Cursor = crHandPoint
      Hint = 'Sair'
      Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000310183F051A2863051A2863051A28630419255F06223461126A
        A3C3157DBFE2126AA3C30F5885A20C456A82082F48630520315B051A285B0417
        235B04152057041520570415205704151F5401070A1E00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000082D45930C517CFF0C517DFF0C517DFF0C517DFF0C517DFF1376B5FF1793
        E2FF1793E2FF1793E2FF1692E1FF1692E1FF1591E0FF158FDDFF158EDAFF158B
        D7FF1484CBFF137CBEFF1274B2FF1169A1FF0D517CF80416224B000000000000
        0000000000000000000000000000000000000000000000000000000000000104
        05130C507CFD0C527EFF0C527EFF175983FF246289FF236289FF1C83C4FF1894
        E3FF1793E2FF1793E2FF1793E2FF1692E1FF1692E1FF1591E0FF1591E0FF1591
        E0FF1591E0FF1591E0FF1591E0FF1590DFFF137FC4FF0A4163CC000000000000
        0000000000000000000000000000000000000000000000000000000000000107
        0B230C527EFF0C527EFF7199B2FFEBEDEEFFEBEBEBFFE6E6E6FF5EAFE3FF1894
        E3FF1894E3FF1793E2FF1793E2FF1793E2FF1692E1FF1692E1FF1591E0FF1591
        E0FF1591E0FF1591E0FF1591E0FF1591E0FF1590DFFF0C5380DF000000000000
        0000000000000000000000000000000000000000000000000000000000000107
        0B230D537FFF185B85FFF0F2F3FFF0F0F0FFEBEBEBFFE6E6E6FF5EAFE3FF1895
        E4FF1894E3FF1894E3FF1793E2FF1793E2FF1793E2FF1692E1FF1692E1FF1591
        E0FF1591E0FF1591E0FF1591E0FF1591E0FF1591E0FF0D5786DF000000000000
        0000000000000000000000000000000000000000000000000000000000000107
        0B230D5480FF27668DFFF5F5F5FFF0F0F0FFEBEBEBFFE6E6E6FF5EB0E4FF1995
        E4FF1995E4FF1894E3FF1894E3FF1794E3FF1793E2FF1793E2FF1692E1FF1692
        E1FF1692E1FF1591E0FF1591E0FF1591E0FF1591E0FF0D5786DF000000000000
        0000000000000000000000000000000000000000000000000000000000000107
        0B230E5581FF27668EFFF5F5F5FFF0F0F0FFEBEBEBFFE6E6E6FF5EB0E4FF1996
        E5FF1995E4FF1995E4FF1894E3FF1894E3FF1794E3FF1793E2FF1793E2FF1692
        E1FF1692E1FF1692E1FF1591E0FF1591E0FF1591E0FF0D5787DF000000000000
        000000000000000000000000000000000000000000001F180931020201050309
        0C230F5682FF28678FFFF5F5F5FFF0F0F0FFEBEBEBFFE6E6E6FF5FB0E4FF1A96
        E5FF1996E5FF1995E4FF1995E4FF1894E3FF1894E3FF1894E3FF1793E2FF1793
        E2FF1692E1FF1692E1FF1692E1FF1591E0FF1591E0FF0E5888DF000000000000
        00000000000000000000000000000000000000000000937028AFA37C2DCA2123
        1A490F5683FF286890FFF5F5F5FFF0F0F0FFEBEBEBFFE6E6E6FF5FB1E4FF1A96
        E5FF1A96E5FF1A96E5FF1995E4FF1995E4FF1894E3FF1894E3FF1894E3FF1793
        E2FF1793E2FF1692E1FF1692E1FF1692E1FF1591E0FF0E5988DF0605020E0C09
        031B0C09031B0C09031B0C09031B0C09031B0D0A041B9C782CB8D9A53AFFC99C
        3BFA5A7266FF296991FFF5F5F5FFF0F0F0FFEBEBEBFFE6E6E6FF5FB1E5FF1B97
        E6FF1A96E5FF1A96E5FF1A96E5FF1995E4FF1995E4FF1895E4FF1894E3FF1894
        E3FF1793E2FF1793E2FF1793E2FF1692E1FF1692E1FF0F5988DFAF8531D3D5A3
        3BFFD5A33BFFD5A33BFFD5A33BFFD5A33BFFD5A33BFFD9A53CFFDBA73CFFDBA7
        3CFFD9A53CFFA3945AFFF2EEE7FFF0F0F0FFEBEBEBFFE6E6E6FF60B1E5FF1B97
        E6FF1B97E6FF1A97E6FF1A96E5FF1A96E5FF1995E4FF1995E4FF1895E4FF1894
        E3FF1894E3FF1793E2FF1793E2FF1793E2FF1692E1FF0F5A89DFC09335DFDCA8
        3EFFDCA83EFFDCA83EFFDCA83EFFDCA83EFFDCA83EFFDCA83EFFDCA83EFFDCA8
        3EFFDCA83EFFDCA83EFFD8AB4FFFE6D9BFFFEBEBEBFFE6E6E6FF60B1E5FF1B98
        E7FF1B97E6FF1B97E6FF1A97E6FF1A96E5FF1A96E5FF1995E4FF1995E4FF1895
        E4FF1894E3FF1894E3FF1793E2FF1793E2FF1793E2FF105B8ADFC29537DFDEAA
        3FFFDEAA3FFFDEAA3FFFDEAA3FFFDEAA3FFFDEAA3FFFDEAA3FFFDEAA3FFFDEAA
        3FFFDEAA3FFFDEAA3FFFDEAA3FFFDBA840FFDCC18AFFE5E3E1FF60B2E6FF1C98
        E7FF1C98E7FF1B97E6FF1B97E6FF1A97E6FF1A96E5FF1A96E5FF1995E4FF1995
        E4FF1895E4FF1894E3FF1894E3FF1793E2FF1793E2FF105B8BDFC39639DFE0AC
        41FFE0AC41FFE0AC41FFE0AC41FFE0AC41FFE0AC41FFE0AC41FFE0AC41FFE0AC
        41FFE0AC41FFE0AC41FFE0AC41FFE0AC41FFDFAB41FFDAB363FF60B2E6FF1C99
        E8FF1C98E7FF1C98E7FF1B97E6FF1B97E6FF1A97E6FF1A96E5FF1A96E5FF1996
        E5FF1995E4FF1995E4FF1894E3FF1894E3FF1794E3FF115C8CDFC5973BDFE1AD
        43FFE1AD43FFE1AD43FFE1AD43FFE1AD43FFE1AD43FFE1AD43FFE1AD43FFE1AD
        43FFE1AD43FFE1AD43FFE1AD43FFE1AD43FFE2B354FFE4D6BAFF61B2E6FF1D99
        E8FF1C99E7FF176FA7FF1573AFFF1B98E7FF1B97E6FF1B97E6FF1A96E5FF1A96
        E5FF1996E5FF1995E4FF1995E4FF1894E3FF1894E3FF115D8CDFC7993CDFE3AF
        45FFE3AF45FFE3AF45FFE3AF45FFE3AF45FFE3AF45FFE3AF45FFE3AF45FFE3AF
        45FFE3AF45FFE3AF45FFE3AF45FFE7C37AFFEAE6DEFFE6E6E6FF61B3E6FF1D9A
        E9FF1D98E7FF176291FF116294FF1C98E7FF1B98E7FF1B97E6FF1B97E6FF1A96
        E5FF1A96E5FF1996E5FF1995E4FF1995E4FF1894E3FF115E8DDFC5983CDCE4B0
        46FFE4B046FFE4B046FFE4B046FFE4B046FFE4B046FFE4B046FFE4B046FFE4B0
        46FFE4B046FFE1B04BFFEED9AEFFF0F0F0FFEBEBEBFFE6E6E6FF61B3E7FF1E9A
        E9FF1D9AE9FF1A85C8FF1987CDFF1C98E7FF1C98E7FF1B98E7FF1B97E6FF1B97
        E6FF1A96E5FF1A96E5FF1A96E5FF1995E4FF1995E4FF125E8EDF241C0B323A2D
        124F3A2D124F3A2D124F3A2D124F3A2D124F3B2E134FB28A38C5E6B248FFE6B2
        48FFBDA255FF4E7C8DFFF5F5F5FFF0F0F0FFEBEBEBFFE6E6E6FF62B3E7FF1E9A
        E9FF1E9AE9FF1D9AE9FF1D99E8FF1D99E8FF1C98E7FF1C98E7FF1B98E7FF1B97
        E6FF1B97E6FF1A96E5FF1A96E5FF1A96E5FF1995E4FF125E8FDF000000000000
        000000000000000000000000000000000000000000009B7832ABE6B349FD7668
        3AA61A608BFF2D6F98FFF5F5F5FFF0F0F0FFEBEBEBFFE6E6E6FF62B4E7FF1F9B
        EAFF1E9BEAFF1E9AE9FF1D9AE9FF1D99E8FF1D99E8FF1C99E8FF1C98E7FF1B98
        E7FF1B97E6FF1B97E6FF1A97E6FF1A96E5FF1A96E5FF135F8FDF000000000000
        000000000000000000000000000000000000000000007158247C3B2E13430B0F
        0E23155F8DFF2E7099FFF5F5F5FFF0F0F0FFEBEBEBFFE6E6E6FF62B4E8FF1F9B
        EAFF1F9BEAFF1E9BEAFF1E9AE9FF1D9AE9FF1D99E8FF1D99E8FF1C99E8FF1C98
        E7FF1B98E7FF1B97E6FF1B97E6FF1A97E6FF1A96E5FF135F8FDF000000000000
        0000000000000000000000000000000000000000000000000000000000000208
        0C2316608EFF2E709AFFF5F5F5FFF0F0F0FFEBEBEBFFE6E6E6FF62B4E8FF1F9C
        EBFF1F9BEAFF1F9BEAFF1E9BEAFF1E9AE9FF1D9AE9FF1D99E8FF1D99E8FF1C99
        E8FF1C98E7FF1C98E7FF1B97E6FF1B97E6FF1A97E6FF146090DF000000000000
        0000000000000000000000000000000000000000000000000000000000000208
        0C2316618FFF2F719BFFF5F5F5FFF0F0F0FFEBEBEBFFE6E6E6FF63B4E8FF209C
        EBFF1F9CEBFF1F9BEAFF1F9BEAFF1E9BEAFF1E9AE9FF1D9AE9FF1D99E8FF1D99
        E8FF1C99E8FF1C98E7FF1C98E7FF1B97E6FF1B97E6FF146191DF000000000000
        0000000000000000000000000000000000000000000000000000000000000208
        0C23176190FF2F729CFFF5F5F5FFF0F0F0FFEBEBEBFFE6E6E6FF63B5E8FF209D
        ECFF209CEBFF1F9CEBFF1F9BEAFF1F9BEAFF1E9BEAFF1E9AE9FF1E9AE9FF1D9A
        E9FF1D99E8FF1C99E8FF1C98E7FF1C98E7FF1B98E7FF156192DF000000000000
        0000000000000000000000000000000000000000000000000000000000000208
        0C23186291FF30729DFFF5F5F5FFF0F0F0FFEBEBEBFFE6E6E6FF63B5E9FF219D
        ECFF209DECFF209CEBFF209CEBFF1F9CEBFF1F9BEAFF1E9BEAFF1E9AE9FF1E9A
        E9FF1D9AE9FF1D99E8FF1C99E8FF1C98E7FF1C98E7FF156293DF000000000000
        0000000000000000000000000000000000000000000000000000000000000208
        0C23186392FF30739DFFF5F5F5FFF0F0F0FFEBEBEBFFE6E6E6FF64B5E9FF219E
        EDFF219DECFF209DECFF209CEBFF209CEBFF1F9CEBFF1F9BEAFF1E9BEAFF1E9A
        E9FF1E9AE9FF1D9AE9FF1D99E8FF1D99E8FF1C98E7FF166393DF000000000000
        0000000000000000000000000000000000000000000000000000000000000209
        0D23196493FF2F729DFFF5F5F5FFF0F0F0FFEBEBEBFFE6E6E6FF64B6EAFF229E
        EDFF219EEDFF219DECFF209DECFF209CEBFF209CEBFF1F9CEBFF1F9BEAFF1E9B
        EAFF1E9AE9FF1E9AE9FF1D9AE9FF1D99E8FF1D99E8FF176494DF000000000000
        0000000000000000000000000000000000000000000000000000000000000209
        0D23196594FF1A6594FFCDDBE3FFF0F0F0FFEBEBEBFFE6E6E6FF64B6EAFF229E
        EDFF229EEDFF219EEDFF219DECFF209DECFF209CEBFF209CEBFF1F9CEBFF1F9B
        EAFF1F9BEAFF1E9BEAFF1E9AE9FF1D9AE9FF1D99E8FF16608FDF000000000000
        0000000000000000000000000000000000000000000000000000000000000208
        0C211A6595FF1A6595FF2E729EFF8BAEC5FF99B7CAFF97B5C7FF4BA6E0FF229F
        EEFF229FEEFF229EEDFF219EEDFF219DECFF209DECFF209DECFF209CEBFF1F9C
        EBFF1F9BEAFF1F9BEAFF1E9BEAFF1E9AE9FF1C87CBFF165882DE000000000000
        0000000000000000000000000000000000000000000000000000000000000001
        0103175983DF1A6696FF1A6696FF1A6696FF1A6696FF1A6696FF1F87C8FF239F
        EEFF229FEEFF229FEEFF229EEDFF219EEDFF219DECFF209DECFF209BE9FF1F94
        DEFF1E8CD2FF1D85C7FF1C7DBBFF1B74ABFF1A6696FF114363A8000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000040F172A134A6DB8185A83DE185A84DF185A84DF185A84DF185E8ADF1D7F
        BDE11D86C7E31C7EBCE31B76B0E31A6EA5E319689AE3186392E7185D89E7185D
        89E7185D89E7185D89E7195E8AE9195E89E8124565AB02070A14000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = BtnSairClick
    end
  end
  object pgControle: TPageControl
    Left = 0
    Top = 44
    Width = 622
    Height = 391
    ActivePage = Tab_fornecedores
    Align = alClient
    TabOrder = 1
    object Tab_clientes: TTabSheet
      Caption = 'Clientes'
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 241
        Height = 363
        Align = alLeft
        BorderStyle = bsSingle
        TabOrder = 0
        object GroupBox2: TGroupBox
          Left = 1
          Top = 1
          Width = 235
          Height = 64
          Align = alTop
          Caption = 'Data de cadastro'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object Label3: TLabel
            Left = 8
            Top = 24
            Width = 14
            Height = 13
            Caption = 'De'
          end
          object Label4: TLabel
            Left = 112
            Top = 24
            Width = 16
            Height = 13
            Caption = 'At'#233
          end
          object MskDataIni: TMaskEdit
            Left = 32
            Top = 20
            Width = 69
            Height = 21
            EditMask = '99/99/9999'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 10
            ParentFont = False
            TabOrder = 0
            Text = '01/01/2012'
            OnExit = MskDataIniExit
          end
          object MskDataFim: TMaskEdit
            Left = 133
            Top = 20
            Width = 72
            Height = 21
            EditMask = '99/99/9999'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 10
            ParentFont = False
            TabOrder = 1
            Text = '  /  /    '
            OnExit = MskDataFimExit
          end
        end
        object RadioG: TRadioGroup
          Left = 1
          Top = 65
          Width = 235
          Height = 293
          Cursor = crHandPoint
          Align = alClient
          Caption = '&Selecione seu Relat'#243'rio'
          ItemIndex = 0
          Items.Strings = (
            'Lista Telef'#244'nica'
            'Listagem em ordem &num'#233'rica'
            'Listagem em ordem &alfab'#233'tica'
            'Cadastro ana&l'#237'tico'
            'Cidades'
            'Estados (UF)'
            'Etiquetas (Mala Direta)'
            'Vendedores'
            'Bloqueados')
          TabOrder = 1
          OnClick = RadioGClick
        end
      end
      object Panel3: TPanel
        Left = 241
        Top = 0
        Width = 373
        Height = 363
        Align = alClient
        BorderStyle = bsSingle
        TabOrder = 1
        object BoxRepresentante: TGroupBox
          Left = 1
          Top = 89
          Width = 367
          Height = 91
          Cursor = crHandPoint
          Align = alTop
          Caption = 'Sele'#231#227'o de Representantes'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 1
          Visible = False
          object chkRepres: TCheckBox
            Left = 10
            Top = 20
            Width = 145
            Height = 17
            Cursor = crHandPoint
            Caption = 'Todos os Vendedores'
            Checked = True
            State = cbChecked
            TabOrder = 1
            OnClick = chkRepresClick
          end
          object EditNomeVendedor: TEdit
            Left = 64
            Top = 60
            Width = 218
            Height = 21
            Color = clWhite
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object EditVendedor: TIDBEditDialog
            Left = 10
            Top = 60
            Width = 52
            Height = 21
            HelpKeyWord = ''
            Color = clWindow
            Enabled = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            Text = ''
            Visible = True
            LabelCaption = 'Vendedor'
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
            ButtonKeyClickBtn = 119
            SQLdbFazBusca = True
            SQLdbFocusControl = EditNomeVendedor
            SQLdbCampoRetorno = 'NOME'
            SQLdbRetornoVazio = ' *** '
            SQLdbCampoParametro = 'CODIGO'
            SQLdbSQL.Strings = (
              'SELECT * FROM CAD_CLIENTES'
              'WHERE'
              'CODIGO=:CODIGO'
              '')
            SQLdbMaxLenght = 10
            SearchQuery.Strings = (
              'SELECT * FROM CAD_CLIENTES'
              'WHERE'
              'TIPO='#39'VENDEDOR'#39
              'AND'
              '%WHERE%')
            CountQuery.Strings = (
              '')
            SearchDialogFieldList = <
              item
                FieldName = 'CODIGO'
                WhereSyntax = 'CODIGO'
                DisplayLabel = 'C'#243'digo:'
                DisplayWidth = 10
                DisplayColumnWidth = 0
                FieldType = ftInteger
                Search = True
                EmptyOperation = eoNull
                DefaultComparison = scEqual
                SearchCase = scUpper
              end
              item
                FieldName = 'NOME'
                WhereSyntax = 'NOME'
                DisplayLabel = 'Nome:'
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
        object BoxCidades: TGroupBox
          Left = 1
          Top = 180
          Width = 367
          Height = 60
          Cursor = crHandPoint
          Align = alTop
          Caption = 'Sele'#231#227'o de Cidades'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 2
          Visible = False
          object Label2: TLabel
            Left = 160
            Top = 20
            Width = 61
            Height = 13
            Caption = 'C'#243'digo IBGE'
          end
          object EditCidade: TEdit
            Left = 227
            Top = 16
            Width = 55
            Height = 21
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 6
            ParentFont = False
            TabOrder = 1
          end
          object chkCidades: TCheckBox
            Left = 10
            Top = 20
            Width = 105
            Height = 17
            Cursor = crHandPoint
            Caption = 'Todas as Cidades'
            Checked = True
            State = cbChecked
            TabOrder = 0
            OnClick = chkCidadesClick
          end
        end
        object BoxEstados: TGroupBox
          Left = 1
          Top = 240
          Width = 367
          Height = 77
          Cursor = crHandPoint
          Align = alTop
          Caption = 'Sele'#231#227'o de Estado (UF)'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 3
          Visible = False
          object Label1: TLabel
            Left = 11
            Top = 52
            Width = 33
            Height = 13
            Caption = 'Estado'
          end
          object chkEstados: TCheckBox
            Left = 10
            Top = 20
            Width = 105
            Height = 17
            Cursor = crHandPoint
            Caption = 'Todos os Estados'
            Checked = True
            State = cbChecked
            TabOrder = 0
            OnClick = chkEstadosClick
          end
          object EditEstado: TComboBox
            Left = 50
            Top = 49
            Width = 145
            Height = 19
            Style = csOwnerDrawFixed
            DropDownCount = 20
            Enabled = False
            ItemHeight = 13
            Sorted = True
            TabOrder = 1
            Items.Strings = (
              'AC-Acre'
              'AL-Alagoas'
              'AM-Amazonas'
              'AP-Amapa'
              'BA-Bahia'
              'CE-Ceara'
              'DF-Distrito Federal'
              'ES-Espirito Santo'
              'EX-Exterior'
              'GO-Goias'
              'MA-Maranhao'
              'MG-Minas Gerais'
              'MS-Mato Grosso do Sul'
              'MT-Mato Grosso'
              'PA-Para'
              'PB-Paraiba'
              'PE-Pernambuco'
              'PI-Piaui'
              'PR-Parana'
              'RJ-Rio de Janeiro'
              'RN-Rio Grande do Norte'
              'RO-Rondonia'
              'RR-Roraima'
              'RS-Rio Grande do Sul'
              'SC-Santa Catarina'
              'SE-Sergipe'
              'SP-Sao Paulo'
              'TO-Tocantins')
          end
        end
        object BoxClientes: TGroupBox
          Left = 1
          Top = 1
          Width = 367
          Height = 88
          Align = alTop
          Caption = 'Sele'#231#227'o de Clientes'
          TabOrder = 0
          object chkCliente: TCheckBox
            Left = 10
            Top = 20
            Width = 120
            Height = 13
            Cursor = crHandPoint
            Caption = 'Todos os Clientes'
            Checked = True
            State = cbChecked
            TabOrder = 0
            OnClick = chkClienteClick
          end
          object EditClienteNome: TEdit
            Left = 92
            Top = 55
            Width = 265
            Height = 21
            Color = clWhite
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            Text = '***'
          end
          object EditCliente: TIDBEditDialog
            Left = 5
            Top = 55
            Width = 85
            Height = 21
            HelpKeyWord = ''
            Color = clWindow
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            Text = '0'
            Visible = True
            EditType = etNumeric
            FocusColor = clBtnFace
            LabelCaption = 'Cliente'
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
            ButtonKeyClickBtn = 119
            SQLdbFazBusca = True
            SQLdbFocusControl = EditClienteNome
            SQLdbCampoRetorno = 'NOME'
            SQLdbRetornoVazio = ' *** '
            SQLdbCampoParametro = 'CODIGO'
            SQLdbSQL.Strings = (
              'SELECT * FROM CAD_CLIENTES'
              'WHERE'
              'CODIGO=:CODIGO')
            SQLdbMaxLenght = 10
            SearchQuery.Strings = (
              'SELECT * FROM CAD_CLIENTES'
              'WHERE'
              'TIPO='#39'CLIENTE'#39
              'AND'
              '%WHERE%')
            CountQuery.Strings = (
              'SELECT COUNT(*) FROM CAD_CLIENTES'
              'WHERE'
              'TIPO='#39'CLIENTE'#39
              'AND'
              '%WHERE%')
            SearchDialogFieldList = <
              item
                FieldName = 'NOME'
                WhereSyntax = 'NOME'
                DisplayLabel = 'Nome:'
                DisplayWidth = 80
                DisplayColumnWidth = 0
                FieldType = ftString
                Search = True
                EmptyOperation = eoNull
                DefaultComparison = scContains
                SearchCase = scUpper
              end
              item
                FieldName = 'CODIGO'
                WhereSyntax = 'CODIGO'
                DisplayLabel = 'C'#243'digo:'
                DisplayWidth = 10
                DisplayColumnWidth = 0
                FieldType = ftInteger
                Search = True
                EmptyOperation = eoNull
                DefaultComparison = scEqual
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
        object RadioGroupOrdenar: TRadioGroup
          Left = 1
          Top = 317
          Width = 367
          Height = 41
          Align = alClient
          Caption = 'Ordenar'
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            'Vendedor/Cliente'
            'Cliente'
            'Cidade'
            'UF')
          TabOrder = 4
        end
      end
    end
    object Tab_fornecedores: TTabSheet
      Caption = 'Fornecedores'
      ImageIndex = 1
      object RadioGForn: TRadioGroup
        Left = 0
        Top = 76
        Width = 614
        Height = 173
        Align = alTop
        Caption = '&Selecione seu Relat'#243'rio'
        ItemIndex = 0
        Items.Strings = (
          'Lista Telef'#244'nica'
          'Cidades'
          'Estados (UF)')
        TabOrder = 0
        OnClick = RadioGFornClick
      end
      object BoxCidadesForn: TGroupBox
        Left = 0
        Top = 249
        Width = 614
        Height = 60
        Cursor = crHandPoint
        Align = alTop
        Caption = 'Sele'#231#227'o de Cidades'
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 1
        Visible = False
        object Label8: TLabel
          Left = 253
          Top = 23
          Width = 61
          Height = 13
          Caption = 'C'#243'digo IBGE'
        end
        object DCodCidadeForn: TEdit
          Left = 320
          Top = 20
          Width = 55
          Height = 21
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 6
          ParentFont = False
          TabOrder = 1
        end
        object chkCidadesForn: TCheckBox
          Left = 10
          Top = 24
          Width = 105
          Height = 17
          Cursor = crHandPoint
          Caption = 'Todas as Cidades'
          Checked = True
          State = cbChecked
          TabOrder = 0
          OnClick = chkCidadesFornClick
        end
      end
      object BoxEstadosForn: TGroupBox
        Left = 0
        Top = 309
        Width = 614
        Height = 60
        Cursor = crHandPoint
        Align = alTop
        Caption = 'Sele'#231#227'o de Estado (UF)'
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 2
        Visible = False
        object Label9: TLabel
          Left = 227
          Top = 22
          Width = 33
          Height = 13
          Caption = 'Estado'
        end
        object chkEstadosForn: TCheckBox
          Left = 10
          Top = 24
          Width = 105
          Height = 17
          Cursor = crHandPoint
          Caption = 'Todos os Estados'
          Checked = True
          State = cbChecked
          TabOrder = 0
          OnClick = chkEstadosFornClick
        end
        object dCodEstadoForn: TComboBox
          Left = 264
          Top = 19
          Width = 145
          Height = 21
          Style = csDropDownList
          Color = clWhite
          DropDownCount = 20
          Enabled = False
          Sorted = True
          TabOrder = 1
          Items.Strings = (
            'AC-Acre'
            'AL-Alagoas'
            'AM-Amazonas'
            'AP-Amapa'
            'BA-Bahia'
            'CE-Ceara'
            'DF-Distrito Federal'
            'ES-Espirito Santo'
            'EX-Exterior'
            'GO-Goias'
            'MA-Maranhao'
            'MG-Minas Gerais'
            'MS-Mato Grosso do Sul'
            'MT-Mato Grosso'
            'PA-Para'
            'PB-Paraiba'
            'PE-Pernambuco'
            'PI-Piaui'
            'PR-Parana'
            'RJ-Rio de Janeiro'
            'RN-Rio Grande do Norte'
            'RO-Rondonia'
            'RR-Roraima'
            'RS-Rio Grande do Sul'
            'SC-Santa Catarina'
            'SE-Sergipe'
            'SP-Sao Paulo'
            'TO-Tocantins')
        end
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 614
        Height = 76
        Align = alTop
        Caption = 'Data de cadastro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        object Label6: TLabel
          Left = 8
          Top = 24
          Width = 14
          Height = 13
          Caption = 'De'
        end
        object Label7: TLabel
          Left = 112
          Top = 24
          Width = 16
          Height = 13
          Caption = 'At'#233
        end
        object MaskEdit1: TMaskEdit
          Left = 32
          Top = 20
          Width = 70
          Height = 21
          EditMask = '99/99/9999'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          TabOrder = 0
          Text = '01/01/2004'
        end
        object MaskEdit2: TMaskEdit
          Left = 133
          Top = 20
          Width = 72
          Height = 21
          EditMask = '99/99/9999'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          TabOrder = 1
          Text = '  /  /    '
        end
        object chkFornecedor: TCheckBox
          Left = 226
          Top = 15
          Width = 134
          Height = 13
          Cursor = crHandPoint
          Caption = 'Todos os Fornecedores'
          Checked = True
          State = cbChecked
          TabOrder = 2
          Visible = False
          OnClick = chkFornecedorClick
        end
        object EditFornecedor: TIDBEditDialog
          Left = 227
          Top = 46
          Width = 105
          Height = 21
          HelpKeyWord = ''
          CharCase = ecUpperCase
          Color = clWindow
          Enabled = False
          TabOrder = 3
          Text = ''
          Visible = False
          LabelCaption = 'Fornecedor'
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
          ButtonKeyClickBtn = 119
          SQLdbFazBusca = True
          SQLdbFocusControl = EditNomeCliente
          SQLdbCampoRetorno = 'NOME'
          SQLdbRetornoVazio = ' *** '
          SQLdbCampoParametro = 'CODIGO'
          SQLdbSQL.Strings = (
            'SELECT * FROM CAD_CLIENTES'
            'WHERE'
            'CODIGO=:CODIGO')
          SQLdbMaxLenght = 10
          SearchQuery.Strings = (
            'SELECT * FROM CAD_CLIENTES'
            'WHERE'
            '%WHERE%'
            'AND'
            'TIPO='#39'FORNECEDOR'#39
            'OR'
            'TIPO='#39'OFICINA'#39
            'OR '
            'TIPO='#39'TRANSPORTADORA'#39' ')
          SearchDialogFieldList = <
            item
              FieldName = 'CODIGO'
              WhereSyntax = 'CODIGO'
              DisplayLabel = 'C'#243'digo:'
              DisplayWidth = 10
              DisplayColumnWidth = 0
              FieldType = ftInteger
              Search = False
              EmptyOperation = eoNull
              DefaultComparison = scEqual
              SearchCase = scMixed
            end
            item
              FieldName = 'NOME'
              WhereSyntax = 'NOME'
              DisplayLabel = 'Nome:'
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
        object EditNomeCliente: TEdit
          Left = 336
          Top = 46
          Width = 271
          Height = 21
          CharCase = ecUpperCase
          Color = clWhite
          Enabled = False
          TabOrder = 4
          Visible = False
        end
      end
    end
  end
  inline FrameRelatorios1: TFrameRelatorios
    Left = 0
    Top = 0
    Width = 622
    Height = 44
    Align = alTop
    Color = clWhite
    ParentBackground = False
    ParentColor = False
    TabOrder = 2
    TabStop = True
    ExplicitWidth = 622
    inherited Image3: TImage
      Width = 622
      ExplicitWidth = 622
    end
    inherited LblBarraTitulo: TLabel
      Width = 622
      Caption = 'Relat'#243'rios Clientes/Fornecedores'
      ExplicitWidth = 268
    end
    inherited Image2: TImage
      Left = 549
      ExplicitLeft = 549
    end
  end
end
