object FormTambahJamShif: TFormTambahJamShif
  Left = 322
  Top = 146
  Width = 319
  Height = 280
  Caption = 'Tambah Jam Shif'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 303
    Height = 41
    Align = alTop
    Caption = 'DATA JAM SHIF'
    Color = clSkyBlue
    TabOrder = 0
  end
  object pnlBawah: TPanel
    Left = 0
    Top = 201
    Width = 303
    Height = 41
    Align = alBottom
    Color = clSkyBlue
    TabOrder = 1
    object btnBaru: TButton
      Left = 28
      Top = 6
      Width = 75
      Height = 25
      Caption = 'BARU'
      TabOrder = 0
      OnClick = btnBaruClick
    end
    object btnSimpan: TButton
      Left = 107
      Top = 6
      Width = 75
      Height = 25
      Caption = 'SIMPAN'
      TabOrder = 1
      OnClick = btnSimpanClick
    end
    object btnKeluar: TButton
      Left = 187
      Top = 7
      Width = 75
      Height = 25
      Caption = 'KELUAR'
      TabOrder = 2
      OnClick = btnKeluarClick
    end
  end
  object pnlTengah: TPanel
    Left = 0
    Top = 41
    Width = 303
    Height = 160
    Align = alClient
    TabOrder = 2
    object lblKode: TLabel
      Left = 19
      Top = 15
      Width = 24
      Height = 13
      Caption = 'SHIF'
    end
    object lbl1: TLabel
      Left = 18
      Top = 39
      Width = 62
      Height = 13
      Caption = 'JAM MASUK'
    end
    object lbl2: TLabel
      Left = 17
      Top = 65
      Width = 68
      Height = 13
      Caption = 'JAM PULANG'
    end
    object lbl3: TLabel
      Left = 16
      Top = 91
      Width = 74
      Height = 13
      Caption = 'KETERANGAN'
    end
    object cbbSHIF: TComboBox
      Left = 107
      Top = 12
      Width = 124
      Height = 21
      ItemHeight = 13
      TabOrder = 0
      Text = 'cbbSHIF'
      Items.Strings = (
        'I'
        'II'
        'III')
    end
    object cxtmdtJamMasuk: TcxTimeEdit
      Left = 107
      Top = 37
      EditValue = 0d
      TabOrder = 1
      Width = 121
    end
    object cxtmdtJamPulang: TcxTimeEdit
      Left = 109
      Top = 61
      EditValue = 0d
      TabOrder = 2
      Width = 121
    end
    object cxmKETERANGAN: TcxMemo
      Left = 109
      Top = 88
      Lines.Strings = (
        'cxmKETERANGAN')
      TabOrder = 3
      Height = 58
      Width = 180
    end
    object cxlblID: TcxLabel
      Left = 20
      Top = 119
      Caption = 'cxlblID'
    end
  end
end
