object FListDataReturSupplier: TFListDataReturSupplier
  Left = 192
  Top = 124
  Width = 979
  Height = 563
  Align = alClient
  Caption = 'LIST RETUR SUPPLIER'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTengah: TPanel
    Left = 0
    Top = 41
    Width = 963
    Height = 439
    Align = alClient
    TabOrder = 0
    object dbgrdhiPenjualan: TDBGridEh
      Left = 1
      Top = 1
      Width = 961
      Height = 437
      Align = alClient
      DataGrouping.GroupLevels = <>
      DataSource = DM.dsReturSupplier
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
      RowDetailPanel.Active = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnCellClick = dbgrdhiPenjualanCellClick
      Columns = <
        item
          EditButtons = <>
          FieldName = 'noReturSupplier'
          Footers = <>
          Title.Caption = 'NO RETUR SUPPLIER'
          Width = 149
        end
        item
          EditButtons = <>
          FieldName = 'tglReturSupplier'
          Footers = <>
          Title.Caption = 'TGL RETUR'
          Width = 126
        end
        item
          EditButtons = <>
          FieldName = 'noPenerimaanObat'
          Footers = <>
          Title.Caption = 'NO PENERIMAAN'
          Width = 162
        end
        item
          EditButtons = <>
          FieldName = 'tglPenerimaanObat'
          Footers = <>
          Title.Caption = 'TGL PENERIMAAN'
          Width = 118
        end
        item
          EditButtons = <>
          FieldName = 'supplier'
          Footers = <>
          Title.Caption = 'SUPPLIER'
        end
        item
          DisplayFormat = '#,#0'
          EditButtons = <>
          FieldName = 'totalHargBeli'
          Footers = <>
          Title.Caption = 'TOTAL HARGA BELI'
          Width = 114
        end
        item
          DisplayFormat = '#,#0'
          EditButtons = <>
          FieldName = 'totalRetur'
          Footers = <>
          Title.Caption = 'TOTAL RETUR'
          Width = 119
        end
        item
          EditButtons = <>
          FieldName = 'kategoriPenerimaan'
          Footers = <>
          Title.Caption = 'KATEGORI PENERIMAAN'
        end>
      object RowDetailData: TRowDetailPanelControlEh
        object dbgrdhDetailPenjualan: TDBGridEh
          Left = 0
          Top = 0
          Width = 924
          Height = 118
          Align = alClient
          DataGrouping.GroupLevels = <>
          DataSource = DM.dsDetailReturSupplier
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
              FieldName = 'kdObat'
              Footers = <>
              Title.Caption = 'KODE OBAT'
              Width = 88
            end
            item
              EditButtons = <>
              FieldName = 'namaObat'
              Footers = <>
              Title.Caption = 'NAMA OBAT'
              Width = 220
            end
            item
              EditButtons = <>
              FieldName = 'jumlahPenerimaan'
              Footers = <>
              Title.Caption = 'JML PENERIMAAN'
              Width = 107
            end
            item
              DisplayFormat = '#,#0'
              EditButtons = <>
              FieldName = 'jumlahRetur'
              Footers = <>
              Title.Caption = 'JML RETUR'
              Width = 96
            end
            item
              EditButtons = <>
              FieldName = 'hargaBeli'
              Footers = <>
              Title.Caption = 'HARGA BELI'
              Width = 92
            end
            item
              DisplayFormat = '#,#0'
              EditButtons = <>
              FieldName = 'subTotalRetur'
              Footers = <>
              Title.Caption = 'SUB TOTAL RETUR'
              Width = 115
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
    end
  end
  object pnlBawah: TPanel
    Left = 0
    Top = 480
    Width = 963
    Height = 45
    Align = alBottom
    Color = clSkyBlue
    TabOrder = 1
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
    object btnTampil: TcxButton
      Left = 256
      Top = 16
      Width = 75
      Height = 25
      Caption = 'TAMPIL'
      TabOrder = 1
      OnClick = btnTampilClick
    end
    object dtpSampai: TDateTimePicker
      Left = 136
      Top = 16
      Width = 113
      Height = 21
      Date = 43730.946688518520000000
      Time = 43730.946688518520000000
      TabOrder = 2
    end
  end
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 963
    Height = 41
    Align = alTop
    Caption = 'LIST DATA RETUR SUPPLIER'
    Color = clSkyBlue
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Stencil'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
end
