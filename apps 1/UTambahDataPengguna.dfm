object FTambahDataPengguna: TFTambahDataPengguna
  Left = 378
  Top = 134
  Width = 368
  Height = 242
  Caption = 'TAMBAH DATA PENGGUNA'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTengah: TPanel
    Left = 0
    Top = 41
    Width = 352
    Height = 122
    Align = alClient
    TabOrder = 0
    object lblUsername: TLabel
      Left = 16
      Top = 16
      Width = 61
      Height = 13
      Caption = 'USERNAME'
    end
    object lblPassword: TLabel
      Left = 16
      Top = 48
      Width = 63
      Height = 13
      Caption = 'PASSWORD'
    end
    object lblNamaPengguna: TLabel
      Left = 16
      Top = 72
      Width = 95
      Height = 13
      Caption = 'NAMA PENGGUNA'
    end
    object lblStatus: TLabel
      Left = 16
      Top = 96
      Width = 43
      Height = 13
      Caption = 'STATUS'
    end
    object edtUsername: TEdit
      Left = 128
      Top = 16
      Width = 177
      Height = 21
      TabOrder = 0
    end
    object edtPassword: TEdit
      Left = 128
      Top = 40
      Width = 177
      Height = 21
      TabOrder = 1
    end
    object edtNamaPengguna: TEdit
      Left = 128
      Top = 64
      Width = 177
      Height = 21
      TabOrder = 2
    end
    object cbbStatus: TComboBox
      Left = 128
      Top = 93
      Width = 177
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 3
      Text = 'aktif'
      Items.Strings = (
        'aktif'
        'tidak aktif')
    end
  end
  object pnlBawah: TPanel
    Left = 0
    Top = 163
    Width = 352
    Height = 41
    Align = alBottom
    Color = clSkyBlue
    TabOrder = 1
    object btnBaru: TButton
      Left = 40
      Top = 8
      Width = 75
      Height = 25
      Caption = 'BARU'
      TabOrder = 0
      OnClick = btnBaruClick
    end
    object btnSimpan: TButton
      Left = 120
      Top = 8
      Width = 75
      Height = 25
      Caption = 'SIMPAN'
      TabOrder = 1
      OnClick = btnSimpanClick
    end
    object btnKeluar: TButton
      Left = 208
      Top = 8
      Width = 75
      Height = 25
      Caption = 'KELUAR'
      TabOrder = 2
      OnClick = btnKeluarClick
    end
  end
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 352
    Height = 41
    Align = alTop
    Caption = 'DATA PENGGUNA'
    Color = clSkyBlue
    TabOrder = 2
    object lblId: TLabel
      Left = 32
      Top = 8
      Width = 19
      Height = 13
      Caption = 'lblId'
      Visible = False
    end
  end
end
