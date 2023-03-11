object FTambahDataObat: TFTambahDataObat
  Left = 369
  Top = 159
  Width = 403
  Height = 309
  Caption = 'TAMBAH DATA OBAT'
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
    Width = 387
    Height = 189
    Align = alClient
    TabOrder = 0
    object lblKode: TLabel
      Left = 16
      Top = 16
      Width = 30
      Height = 13
      Caption = 'KODE'
    end
    object lblNamaObat: TLabel
      Left = 16
      Top = 48
      Width = 63
      Height = 13
      Caption = 'NAMA OBAT'
    end
    object lblSatuanObat: TLabel
      Left = 16
      Top = 72
      Width = 76
      Height = 13
      Caption = 'SATUAN OBAT'
    end
    object lblStokAwal: TLabel
      Left = 16
      Top = 96
      Width = 63
      Height = 13
      Caption = 'STOK AWAL'
    end
    object lblHargaBeli: TLabel
      Left = 16
      Top = 120
      Width = 64
      Height = 13
      Caption = 'HARGA BELI'
    end
    object lblKeuntungan: TLabel
      Left = 16
      Top = 144
      Width = 76
      Height = 13
      Caption = 'KEUNTUNGAN'
    end
    object lblHargaJual: TLabel
      Left = 16
      Top = 168
      Width = 67
      Height = 13
      Caption = 'HARGA JUAL'
    end
    object edtKode: TEdit
      Left = 104
      Top = 16
      Width = 121
      Height = 21
      TabOrder = 0
      Text = 'edtKode'
    end
    object edtNmObat: TEdit
      Left = 104
      Top = 40
      Width = 265
      Height = 21
      TabOrder = 1
      Text = 'edtNmObat'
    end
    object edtSatuan: TEdit
      Left = 104
      Top = 64
      Width = 121
      Height = 21
      TabOrder = 2
      Text = 'edtSatuan'
    end
    object edtStokAwal: TDBNumberEditEh
      Left = 104
      Top = 88
      Width = 121
      Height = 21
      EditButtons = <>
      TabOrder = 3
      Visible = True
    end
    object edtHargaBeli: TDBNumberEditEh
      Left = 104
      Top = 112
      Width = 121
      Height = 21
      EditButtons = <>
      TabOrder = 4
      Visible = True
    end
    object edtKeuntungan: TDBNumberEditEh
      Left = 104
      Top = 136
      Width = 121
      Height = 21
      EditButtons = <>
      TabOrder = 5
      Visible = True
      OnChange = edtKeuntunganChange
    end
    object edtHargaJual: TDBNumberEditEh
      Left = 104
      Top = 160
      Width = 121
      Height = 21
      EditButtons = <>
      TabOrder = 6
      Visible = True
    end
  end
  object pnlBawah: TPanel
    Left = 0
    Top = 230
    Width = 387
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
    Width = 387
    Height = 41
    Align = alTop
    Caption = 'DATA OBAT'
    Color = clSkyBlue
    TabOrder = 2
  end
end
