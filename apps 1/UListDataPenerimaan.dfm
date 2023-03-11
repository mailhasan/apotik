object FListDataPenerimaan: TFListDataPenerimaan
  Left = 193
  Top = 71
  Width = 1063
  Height = 636
  Align = alClient
  Caption = 'LIST DATA PENERIMAAN'
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
  object pnlBawah: TPanel
    Left = 0
    Top = 553
    Width = 1047
    Height = 45
    Align = alBottom
    Color = clSkyBlue
    TabOrder = 0
    object lblMulai: TLabel
      Left = 7
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
    object lbl1: TLabel
      Left = 257
      Top = 4
      Width = 87
      Height = 13
      Caption = 'NAMA SUPPLIER'
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
      Left = 499
      Top = 12
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
    object btnPembayaran: TcxButton
      Left = 577
      Top = 11
      Width = 105
      Height = 25
      Caption = 'PEMBAYARAN'
      TabOrder = 3
      OnClick = btnPembayaranClick
    end
    object cbbNAMASUPPLIER: TcxLookupComboBox
      Left = 257
      Top = 18
      Properties.KeyFieldNames = 'namaSupplier'
      Properties.ListColumns = <
        item
          Caption = 'NAMA SUPPLIER'
          FieldName = 'namaSupplier'
        end>
      Properties.ListSource = DM.dsSupplier
      TabOrder = 4
      Width = 235
    end
    object btnCariBerdasarkanObat: TcxButton
      Left = 693
      Top = 10
      Width = 179
      Height = 25
      Caption = 'CARI BERDASARKAN OBAT'
      TabOrder = 5
      OnClick = btnCariBerdasarkanObatClick
    end
  end
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 1047
    Height = 41
    Align = alTop
    Caption = 'LIST DATA TRANSAKSI PENERIMAAN OBAT'
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
    Width = 1047
    Height = 512
    Align = alClient
    TabOrder = 2
    object dbgrdhiPenjualan: TDBGridEh
      Left = 1
      Top = 1
      Width = 1045
      Height = 510
      Align = alClient
      DataGrouping.GroupLevels = <>
      DataSource = DM.dsPenerimaanObat
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
          FieldName = 'noPenerimaanObat'
          Footers = <>
          Title.Caption = 'NO PENERIMAAN OBAT'
          Width = 139
        end
        item
          EditButtons = <>
          FieldName = 'tglPenerimaanObat'
          Footers = <>
          Title.Caption = 'TGL PENERIMAAN OBAT'
          Width = 134
        end
        item
          EditButtons = <>
          FieldName = 'kdSupplier'
          Footers = <>
          Title.Caption = 'KODE SUPPLIER'
          Width = 92
        end
        item
          EditButtons = <>
          FieldName = 'namaSupplier'
          Footers = <>
          Title.Caption = 'NAMA SUPPLIER'
          Width = 191
        end
        item
          DisplayFormat = '#,#0'
          EditButtons = <>
          FieldName = 'totalHargaBeli'
          Footers = <>
          Title.Caption = 'TOTAL | HARGA BELI'
          Width = 118
        end
        item
          DisplayFormat = '#,#0'
          EditButtons = <>
          FieldName = 'jumlahPembayaranBeli'
          Footers = <>
          Title.Caption = 'JUMLAH PEMBAYARAN'
          Width = 128
        end
        item
          DisplayFormat = '#,#0'
          EditButtons = <>
          FieldName = 'sisaPembayaranBeli'
          Footers = <>
          Title.Caption = 'SISA PEMABAYARAN'
          Width = 114
        end
        item
          EditButtons = <>
          FieldName = 'statusPembayaran'
          Footers = <>
          Title.Caption = 'STATUS PEMBAYARAN'
          Width = 126
        end
        item
          EditButtons = <>
          FieldName = 'kategoriPenerimaan'
          Footers = <>
          Title.Caption = 'KATEGORI PENERIMAAN'
          Width = 117
        end>
      object RowDetailData: TRowDetailPanelControlEh
        object dbgrdhDetailPenjualan: TDBGridEh
          Left = 0
          Top = 0
          Width = 1008
          Height = 118
          Align = alClient
          DataGrouping.GroupLevels = <>
          DataSource = DM.dsDetailPenerimaanObat
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
            end
            item
              EditButtons = <>
              FieldName = 'noBatch'
              Footers = <>
              Title.Caption = 'NO BATCH'
              Width = 134
            end
            item
              EditButtons = <>
              FieldName = 'namaObat'
              Footers = <>
              Title.Caption = 'NAMA OBAT'
              Width = 262
            end
            item
              EditButtons = <>
              FieldName = 'jmlBeliFaktur'
              Footers = <>
              Title.Caption = 'JUMLAH BELI'
              Width = 78
            end
            item
              EditButtons = <>
              FieldName = 'hargaBeliFaktur'
              Footers = <>
              Title.Caption = 'HARGA BELI'
              Width = 88
            end
            item
              EditButtons = <>
              FieldName = 'keuntungan'
              Footers = <>
              Title.Caption = 'KEUNTUNGAN'
              Width = 85
            end
            item
              EditButtons = <>
              FieldName = 'hargaJual'
              Footers = <>
              Title.Caption = 'HARGA JUAL'
              Width = 87
            end
            item
              DisplayFormat = '#,#0'
              EditButtons = <>
              FieldName = 'subTotalHargaBeli'
              Footers = <>
              Title.Caption = 'SUB TOTAL HARGA BELI'
              Width = 143
            end
            item
              EditButtons = <>
              FieldName = 'tglKadaluarsa'
              Footers = <>
              Title.Caption = 'TGL EXP'
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
    end
  end
end
