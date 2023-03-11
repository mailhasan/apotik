object FIndentitasApotik: TFIndentitasApotik
  Left = 396
  Top = 198
  Width = 430
  Height = 266
  Caption = 'INDENTITAS APOTEK'
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
  object pnlTengah: TPanel
    Left = 0
    Top = 41
    Width = 414
    Height = 146
    Align = alClient
    TabOrder = 0
    object lblNAMAAPOTIK: TLabel
      Left = 16
      Top = 8
      Width = 73
      Height = 13
      Caption = 'NAMA APOTIK'
    end
    object lblALAMAT: TLabel
      Left = 16
      Top = 40
      Width = 43
      Height = 13
      Caption = 'ALAMAT'
    end
    object edtNAMAAPOTIK: TEdit
      Left = 104
      Top = 8
      Width = 281
      Height = 21
      TabOrder = 0
    end
    object mmoALAMAT: TMemo
      Left = 104
      Top = 40
      Width = 281
      Height = 89
      TabOrder = 1
    end
  end
  object pnlBawah: TPanel
    Left = 0
    Top = 187
    Width = 414
    Height = 41
    Align = alBottom
    Color = clSkyBlue
    TabOrder = 1
    object btnKeluar: TButton
      Left = 104
      Top = 8
      Width = 75
      Height = 25
      Caption = 'KELUAR'
      TabOrder = 0
      OnClick = btnKeluarClick
    end
    object btnSimpan: TButton
      Left = 16
      Top = 8
      Width = 75
      Height = 25
      Caption = 'SIMPAN'
      TabOrder = 1
      OnClick = btnSimpanClick
    end
  end
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 414
    Height = 41
    Align = alTop
    Caption = 'IDENTITAS APOTEK'
    Color = clSkyBlue
    TabOrder = 2
  end
end
