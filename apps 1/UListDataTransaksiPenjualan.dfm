object FListDataTransaksiPenjualan: TFListDataTransaksiPenjualan
  Left = 452
  Top = 122
  Width = 449
  Height = 501
  Caption = 'LIST DATA TRANSAKSI PENJUALAN'
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
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 433
    Height = 41
    Align = alTop
    Caption = 'LIST TRANSAKSI PENJUALAN OBAT'
    Color = clSkyBlue
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Stencil'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object pnlBawah: TPanel
    Left = 0
    Top = 422
    Width = 433
    Height = 41
    Align = alBottom
    Color = clSkyBlue
    TabOrder = 1
    object dtpTgl: TDateTimePicker
      Left = 16
      Top = 8
      Width = 121
      Height = 21
      Date = 43712.275516273150000000
      Time = 43712.275516273150000000
      TabOrder = 0
    end
    object btnTampil: TcxButton
      Left = 144
      Top = 8
      Width = 75
      Height = 25
      Caption = 'TAMPIL'
      TabOrder = 1
      OnClick = btnTampilClick
    end
  end
  object pnlTengah: TPanel
    Left = 0
    Top = 41
    Width = 433
    Height = 381
    Align = alClient
    TabOrder = 2
    object dbgrdhTransaksiPenjualan: TDBGridEh
      Left = 1
      Top = 1
      Width = 431
      Height = 379
      Align = alClient
      DataGrouping.GroupLevels = <>
      DataSource = DM.dsPenjualan
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
      OnDblClick = dbgrdhTransaksiPenjualanDblClick
      Columns = <
        item
          EditButtons = <>
          FieldName = 'noPenjualan'
          Footers = <>
          Title.Caption = 'NO PENJUALAN'
          Width = 95
        end
        item
          EditButtons = <>
          FieldName = 'tglPenjualan'
          Footers = <>
          Title.Caption = 'TGL PENJUALAN'
          Width = 107
        end
        item
          EditButtons = <>
          FieldName = 'totalPenjualan'
          Footers = <>
          Title.Caption = 'TOTAL PENJUALAN'
          Width = 122
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
end
