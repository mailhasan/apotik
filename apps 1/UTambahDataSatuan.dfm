object FTambahDataSatuan: TFTambahDataSatuan
  Left = 399
  Top = 233
  Width = 305
  Height = 189
  Caption = 'Tambah Data Satuan'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlBawah: TPanel
    Left = 0
    Top = 110
    Width = 289
    Height = 41
    Align = alBottom
    Color = clSkyBlue
    TabOrder = 0
    object btnBaru: TButton
      Left = 24
      Top = 8
      Width = 75
      Height = 25
      Caption = 'BARU'
      TabOrder = 0
      OnClick = btnBaruClick
    end
    object btnSimpan: TButton
      Left = 104
      Top = 8
      Width = 75
      Height = 25
      Caption = 'SIMPAN'
      TabOrder = 1
      OnClick = btnSimpanClick
    end
    object btnKeluar: TButton
      Left = 200
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
    Width = 289
    Height = 41
    Align = alTop
    Caption = 'DATA SATUAN'
    Color = clSkyBlue
    TabOrder = 1
  end
  object pnlTengah: TPanel
    Left = 0
    Top = 41
    Width = 289
    Height = 69
    Align = alClient
    TabOrder = 2
    object lblKodeSatuan: TLabel
      Left = 16
      Top = 8
      Width = 62
      Height = 13
      Caption = 'Kode Satuan'
    end
    object lblSatuan: TLabel
      Left = 16
      Top = 40
      Width = 34
      Height = 13
      Caption = 'Satuan'
    end
    object edtKodeSatuan: TEdit
      Left = 96
      Top = 8
      Width = 121
      Height = 21
      TabOrder = 0
      Text = 'edtKodeSatuan'
    end
    object edtSatuan: TEdit
      Left = 96
      Top = 32
      Width = 177
      Height = 21
      TabOrder = 1
      Text = 'edtSatuan'
    end
  end
end
