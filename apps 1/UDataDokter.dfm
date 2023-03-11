object FDataDokter: TFDataDokter
  Left = 313
  Top = 168
  Width = 757
  Height = 493
  Caption = 'DATA DOKTER '
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
    Width = 741
    Height = 373
    Align = alClient
    TabOrder = 0
    object dbgrdhDokter: TDBGridEh
      Left = 1
      Top = 1
      Width = 739
      Height = 371
      Align = alClient
      DataGrouping.GroupLevels = <>
      DataSource = DM.dsDokter
      DrawMemoText = True
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      IndicatorOptions = [gioShowRowIndicatorEh]
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          EditButtons = <>
          FieldName = 'kdDokter'
          Footers = <>
          Title.Caption = 'KODE'
        end
        item
          EditButtons = <>
          FieldName = 'namaDokter'
          Footers = <>
          Title.Caption = 'NAMA DOKTER'
          Width = 161
        end
        item
          EditButtons = <>
          FieldName = 'lokasiPraktek'
          Footers = <>
          Title.Caption = 'TEMPAT PRAKTEK'
          Width = 219
        end
        item
          EditButtons = <>
          FieldName = 'status'
          Footers = <>
          Title.Caption = 'STATUS'
          Width = 85
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object pnlBawah: TPanel
    Left = 0
    Top = 414
    Width = 741
    Height = 41
    Align = alBottom
    Color = clSkyBlue
    TabOrder = 1
    object lblCari: TLabel
      Left = 16
      Top = 16
      Width = 25
      Height = 13
      Caption = 'CARI'
    end
    object edtCari: TEdit
      Left = 48
      Top = 8
      Width = 169
      Height = 21
      TabOrder = 0
      OnChange = edtCariChange
      OnDblClick = edtCariDblClick
    end
    object btnTambah: TButton
      Left = 232
      Top = 8
      Width = 75
      Height = 25
      Caption = 'TAMBAH'
      TabOrder = 1
      OnClick = btnTambahClick
    end
    object btnUbah: TButton
      Left = 312
      Top = 8
      Width = 75
      Height = 25
      Caption = 'UBAH'
      TabOrder = 2
      OnClick = btnUbahClick
    end
    object btnHapus: TButton
      Left = 392
      Top = 8
      Width = 75
      Height = 25
      Caption = 'HAPUS'
      TabOrder = 3
      OnClick = btnHapusClick
    end
    object btnKeluar: TButton
      Left = 472
      Top = 8
      Width = 75
      Height = 25
      Caption = 'KELUAR'
      TabOrder = 4
      OnClick = btnKeluarClick
    end
  end
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 741
    Height = 41
    Align = alTop
    Caption = 'DAFTAR DATA DOKTER'
    Color = clSkyBlue
    TabOrder = 2
  end
end
