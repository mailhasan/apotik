object FLogin: TFLogin
  Left = 254
  Top = 162
  Width = 358
  Height = 223
  Caption = 'LOGIN...!'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlBawah: TPanel
    Left = 0
    Top = 144
    Width = 342
    Height = 41
    Align = alBottom
    Color = clSkyBlue
    TabOrder = 0
    object btnLOGIN: TButton
      Left = 32
      Top = 8
      Width = 75
      Height = 25
      Caption = 'LOGIN'
      TabOrder = 0
      OnClick = btnLOGINClick
    end
    object btnBATAL: TButton
      Left = 120
      Top = 8
      Width = 75
      Height = 25
      Caption = 'BATAL'
      TabOrder = 1
      OnClick = btnBATALClick
    end
  end
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 342
    Height = 41
    Align = alTop
    Caption = 'LOGIN APLIKASI.....!'
    Color = clSkyBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object pnlTengah: TPanel
    Left = 0
    Top = 41
    Width = 342
    Height = 103
    Align = alClient
    TabOrder = 2
    object lblUSERNAME: TLabel
      Left = 16
      Top = 16
      Width = 64
      Height = 13
      Caption = 'USER NAME'
    end
    object lblPASSWORD: TLabel
      Left = 16
      Top = 48
      Width = 63
      Height = 13
      Caption = 'PASSWORD'
    end
    object edtUSERNAME: TEdit
      Left = 112
      Top = 16
      Width = 185
      Height = 21
      TabOrder = 0
      Text = 'edtUSERNAME'
    end
    object edtPASSWORD: TEdit
      Left = 112
      Top = 48
      Width = 185
      Height = 21
      TabOrder = 1
      Text = 'edtPASSWORD'
    end
  end
end
