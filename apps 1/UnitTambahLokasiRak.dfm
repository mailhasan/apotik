object FormTambahLokasiRak: TFormTambahLokasiRak
  Left = 386
  Top = 140
  Width = 314
  Height = 232
  Caption = 'TAMBAH LOKASI RAK'
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
    Top = 153
    Width = 298
    Height = 41
    Align = alBottom
    Color = clSkyBlue
    TabOrder = 0
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
    Width = 298
    Height = 41
    Align = alTop
    Caption = 'DATA LOKASI RAK'
    Color = clSkyBlue
    TabOrder = 1
  end
  object pnlTengah: TPanel
    Left = 0
    Top = 41
    Width = 298
    Height = 112
    Align = alClient
    TabOrder = 2
    object lbl1: TLabel
      Left = 15
      Top = 11
      Width = 71
      Height = 13
      Caption = 'KODE LOKASI'
    end
    object lbl2: TLabel
      Left = 14
      Top = 36
      Width = 38
      Height = 13
      Caption = 'LOKASI'
    end
    object Label1: TLabel
      Left = 13
      Top = 62
      Width = 43
      Height = 13
      Caption = 'STATUS'
    end
    object edtKodeLokasi: TEdit
      Left = 109
      Top = 9
      Width = 121
      Height = 21
      TabOrder = 0
      Text = 'edtKodeLokasi'
    end
    object edtLokasi: TEdit
      Left = 109
      Top = 34
      Width = 176
      Height = 21
      TabOrder = 1
      Text = 'edtLokasi'
    end
    object cbbSTATUS: TComboBox
      Left = 109
      Top = 60
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 2
      Text = 'cbbSTATUS'
      Items.Strings = (
        'aktif'
        'tidak aktif')
    end
  end
end
