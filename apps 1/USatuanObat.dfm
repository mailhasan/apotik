object FSatuanObat: TFSatuanObat
  Left = 315
  Top = 192
  Width = 436
  Height = 457
  Caption = 'SATUAN OBAT'
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
    Top = 378
    Width = 420
    Height = 41
    Align = alBottom
    Color = clSkyBlue
    TabOrder = 0
    object btnTambah: TButton
      Left = 24
      Top = 8
      Width = 75
      Height = 25
      Caption = 'TAMBAH'
      TabOrder = 0
      OnClick = btnTambahClick
    end
    object btnUbah: TButton
      Left = 104
      Top = 8
      Width = 75
      Height = 25
      Caption = 'UBAH'
      TabOrder = 1
      OnClick = btnUbahClick
    end
    object btnHapus: TButton
      Left = 184
      Top = 8
      Width = 75
      Height = 25
      Caption = 'HAPUS'
      TabOrder = 2
      OnClick = btnHapusClick
    end
    object btnKeluar: TButton
      Left = 264
      Top = 8
      Width = 75
      Height = 25
      Caption = 'KELUAR'
      TabOrder = 3
      OnClick = btnKeluarClick
    end
  end
  object pnlTengah: TPanel
    Left = 0
    Top = 41
    Width = 420
    Height = 337
    Align = alClient
    TabOrder = 1
    object dbgrdhSatuan: TDBGridEh
      Left = 1
      Top = 1
      Width = 418
      Height = 335
      Align = alClient
      DataGrouping.GroupLevels = <>
      DataSource = DM.dsSatuan
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
          FieldName = 'kdSatuan'
          Footers = <>
          Title.Caption = 'KODE SATUAN'
          Width = 86
        end
        item
          EditButtons = <>
          FieldName = 'satuan'
          Footers = <>
          Title.Caption = 'SATUAN'
          Width = 98
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 420
    Height = 41
    Align = alTop
    Caption = 'DAFTAR DATA SATUAN'
    Color = clSkyBlue
    TabOrder = 2
  end
end
