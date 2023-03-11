object FLaporanUrutanBarang: TFLaporanUrutanBarang
  Left = 192
  Top = 124
  Width = 979
  Height = 563
  Caption = 'Laporan Urutan Barang Terjual Mulai Dari Terlaris'
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
  object pnlBawah: TPanel
    Left = 0
    Top = 485
    Width = 963
    Height = 40
    Align = alBottom
    Color = clSkyBlue
    TabOrder = 0
    object lblMulai: TLabel
      Left = 8
      Top = 0
      Width = 33
      Height = 13
      Caption = 'MULAI'
    end
    object lblSampai: TLabel
      Left = 136
      Top = 0
      Width = 40
      Height = 13
      Caption = 'SAMPAI'
    end
    object dtpTgl: TDateTimePicker
      Left = 8
      Top = 16
      Width = 121
      Height = 21
      Date = 43712.275516273150000000
      Time = 43712.275516273150000000
      TabOrder = 0
    end
    object dtpSampai: TDateTimePicker
      Left = 136
      Top = 16
      Width = 113
      Height = 21
      Date = 43730.946688518520000000
      Time = 43730.946688518520000000
      TabOrder = 1
    end
    object btnTampil: TcxButton
      Left = 256
      Top = 15
      Width = 75
      Height = 25
      Caption = 'TAMPIL'
      TabOrder = 2
      OnClick = btnTampilClick
    end
  end
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 963
    Height = 41
    Align = alTop
    Caption = 'LAPORAN URUTAN BARANG TERJUAL MULAI DARI TERLARIS'
    Color = clSkyBlue
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Stencil'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object pnlTengah: TPanel
    Left = 0
    Top = 41
    Width = 963
    Height = 444
    Align = alClient
    TabOrder = 2
    object dbgrdhBarangTerjual: TDBGridEh
      Left = 1
      Top = 1
      Width = 961
      Height = 442
      Align = alClient
      DataGrouping.GroupLevels = <>
      DataSource = DM.dsUrutanBarangTerjual
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
          FieldName = 'namaObat'
          Footers = <>
          Title.Caption = 'NAMA OBAT'
          Width = 206
        end
        item
          EditButtons = <>
          FieldName = 'SUM(`detailpenjualan`.`jumlahJual`)'
          Footers = <>
          Title.Caption = 'JUMLAH PENJUALAN'
          Width = 158
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
end
