object FTambahDataPengeluaran: TFTambahDataPengeluaran
  Left = 443
  Top = 160
  Width = 327
  Height = 253
  Caption = 'DATA PENGELUARAN'
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
    Width = 311
    Height = 133
    Align = alClient
    TabOrder = 0
    object cxlblTglPengeluaran: TcxLabel
      Left = 8
      Top = 16
      Caption = 'TGL PENGELUARAN'
    end
    object cxdtdtTglPengeluaran: TcxDateEdit
      Left = 128
      Top = 16
      TabOrder = 1
      Width = 169
    end
    object cxlblPengeluaran: TcxLabel
      Left = 8
      Top = 48
      Caption = 'PENGELUARAN'
    end
    object cxcrncydtPengeluaran: TcxCurrencyEdit
      Left = 128
      Top = 40
      TabOrder = 3
      Width = 169
    end
    object cxlblKeterangan: TcxLabel
      Left = 8
      Top = 72
      Caption = 'KETERANGAN'
    end
    object cxmKeterangan: TcxMemo
      Left = 128
      Top = 64
      Lines.Strings = (
        'cxmKeterangan')
      TabOrder = 5
      Height = 57
      Width = 169
    end
  end
  object pnlBawah: TPanel
    Left = 0
    Top = 174
    Width = 311
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
    Width = 311
    Height = 41
    Align = alTop
    Caption = 'DATA PENGELUARAN'
    Color = clSkyBlue
    TabOrder = 2
  end
end
