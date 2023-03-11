object FTambahDataDokter: TFTambahDataDokter
  Left = 458
  Top = 206
  Width = 362
  Height = 310
  Caption = 'TAMBAH DATA DOKTER'
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
    Width = 346
    Height = 190
    Align = alClient
    TabOrder = 0
    object lblKode: TLabel
      Left = 16
      Top = 16
      Width = 30
      Height = 13
      Caption = 'KODE'
    end
    object lblNamaDokter: TLabel
      Left = 16
      Top = 40
      Width = 79
      Height = 13
      Caption = 'NAMA DOKTER'
    end
    object lblAlamat: TLabel
      Left = 16
      Top = 72
      Width = 97
      Height = 13
      Caption = 'TEMPAT PRAKTEK'
    end
    object lblStatus: TLabel
      Left = 16
      Top = 160
      Width = 43
      Height = 13
      Caption = 'STATUS'
    end
    object edtKode: TEdit
      Left = 112
      Top = 16
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object edtNmDokter: TEdit
      Left = 112
      Top = 40
      Width = 217
      Height = 21
      TabOrder = 1
    end
    object mmoTempatPraktek: TMemo
      Left = 112
      Top = 64
      Width = 217
      Height = 89
      Lines.Strings = (
        '')
      TabOrder = 2
    end
    object cbbStatus: TComboBox
      Left = 112
      Top = 160
      Width = 145
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
    Top = 231
    Width = 346
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
    Width = 346
    Height = 41
    Align = alTop
    Caption = 'DATA DOKTER'
    Color = clSkyBlue
    TabOrder = 2
  end
end
