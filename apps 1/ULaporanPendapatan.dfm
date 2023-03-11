object FLaporangPendapatan: TFLaporangPendapatan
  Left = 239
  Top = 146
  Width = 979
  Height = 605
  Align = alClient
  Caption = 'LAPORAN PENDAPATAN'
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
    Top = 527
    Width = 963
    Height = 40
    Align = alBottom
    Color = clSkyBlue
    TabOrder = 0
    object lblMulai: TLabel
      Left = 16
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
    object btnTambah: TcxButton
      Left = 352
      Top = 16
      Width = 75
      Height = 25
      Caption = 'TAMBAH'
      TabOrder = 3
    end
    object btnUbah: TcxButton
      Left = 432
      Top = 16
      Width = 75
      Height = 25
      Caption = 'UBAH'
      TabOrder = 4
    end
  end
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 963
    Height = 41
    Align = alTop
    Caption = 'LAPORAN PENDAPATAN'
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
    Height = 486
    Align = alClient
    TabOrder = 2
    object grpPengeluaran: TGroupBox
      Left = 1
      Top = 1
      Width = 961
      Height = 272
      Align = alTop
      Caption = 'PENGELUARAN'
      TabOrder = 0
      object grpPengeluaranPembelian: TGroupBox
        Left = 2
        Top = 15
        Width = 957
        Height = 145
        Align = alClient
        Caption = 'PENGELUARAN PEMBELIAN OBAT'
        TabOrder = 0
        object dbgrdhPengeluaranPembelian: TDBGridEh
          Left = 2
          Top = 15
          Width = 953
          Height = 128
          Align = alClient
          DataGrouping.GroupLevels = <>
          DataSource = DM.dsPenerimaanObat
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          IndicatorOptions = [gioShowRowIndicatorEh]
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              EditButtons = <>
              FieldName = 'noPenerimaanObat'
              Footers = <>
              Title.Caption = 'NO PENERIMAAN'
              Width = 130
            end
            item
              EditButtons = <>
              FieldName = 'tglPenerimaanObat'
              Footers = <>
              Title.Caption = 'TGL PENERIMAAN'
              Width = 131
            end
            item
              EditButtons = <>
              FieldName = 'namaSupplier'
              Footers = <>
              STFilter.ListSource = DM.dsPenerimaanObat
              Title.Caption = 'NAMA SUPPLIER'
              Width = 272
            end
            item
              EditButtons = <>
              FieldName = 'totalHargaBeli'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'TOTAL HARGA BELI'
              Width = 137
            end
            item
              EditButtons = <>
              FieldName = 'jumlahPembayaranBeli'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'JUMLAH PEMBAYARAN'
              Width = 145
            end
            item
              EditButtons = <>
              FieldName = 'sisaPembayaranBeli'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'SISA PEMBAYARAN'
              Width = 141
            end
            item
              EditButtons = <>
              FieldName = 'statusPembayaran'
              Footers = <>
              Title.Caption = 'STATUS PEMBAYARAN'
              Width = 145
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
      object grpPengeluaranLain: TGroupBox
        Left = 2
        Top = 160
        Width = 957
        Height = 110
        Align = alBottom
        Caption = 'PENGELUARAN LAIN'
        TabOrder = 1
        object dbgrdhPengeluaranLain: TDBGridEh
          Left = 2
          Top = 15
          Width = 953
          Height = 93
          Align = alClient
          DataGrouping.GroupLevels = <>
          DataSource = DM.dsPengeluaran
          DrawMemoText = True
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          IndicatorOptions = [gioShowRowIndicatorEh]
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              EditButtons = <>
              FieldName = 'tglPengeluaran'
              Footers = <>
              Title.Caption = 'TGL PENGELUARAN'
              Width = 150
            end
            item
              EditButtons = <>
              FieldName = 'pengeluaran'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'PENGELUARAN'
              Width = 164
            end
            item
              EditButtons = <>
              FieldName = 'keterangan'
              Footers = <>
              Title.Caption = 'KETERANGAN'
              Width = 437
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
    end
    object grpPendapatan: TGroupBox
      Left = 1
      Top = 273
      Width = 961
      Height = 140
      Align = alClient
      Caption = 'PENDAPATAN'
      TabOrder = 1
      object dbgrdhPendapatan: TDBGridEh
        Left = 2
        Top = 15
        Width = 957
        Height = 123
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
        FooterRowCount = 1
        IndicatorOptions = [gioShowRowIndicatorEh]
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'noPenjualan'
            Footers = <>
            Title.Caption = 'NO PENJUALAN'
            Width = 125
          end
          item
            EditButtons = <>
            FieldName = 'tglPenjualan'
            Footers = <>
            Title.Caption = 'TGL PENJUALAN'
            Width = 113
          end
          item
            EditButtons = <>
            FieldName = 'totalPenjualan'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'TOTAL PENJUALAN'
            Width = 178
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object grpPerhitungan: TGroupBox
      Left = 1
      Top = 413
      Width = 961
      Height = 72
      Align = alBottom
      Caption = 'TOTAL PERHITUNGAN'
      TabOrder = 2
      object lblPendapatan: TLabel
        Left = 8
        Top = 16
        Width = 73
        Height = 13
        Caption = 'PENDAPATAN'
      end
      object lblKurang: TLabel
        Left = 136
        Top = 16
        Width = 3
        Height = 13
        Caption = '-'
      end
      object lblPengeluaran: TLabel
        Left = 144
        Top = 16
        Width = 81
        Height = 13
        Caption = 'PENGELUARAN'
      end
      object lblSamaDgn: TLabel
        Left = 272
        Top = 16
        Width = 6
        Height = 13
        Caption = '='
      end
      object lblHasil: TLabel
        Left = 296
        Top = 16
        Width = 31
        Height = 13
        Caption = 'HASIL'
      end
      object lblSisaPembayaran: TLabel
        Left = 560
        Top = 16
        Width = 158
        Height = 13
        Caption = 'SISA PEMBAYARAN / HUTANG'
      end
      object cxcrncydtPendapatan: TcxCurrencyEdit
        Left = 8
        Top = 32
        TabOrder = 0
        Width = 121
      end
      object cxcrncydtPengeluaran: TcxCurrencyEdit
        Left = 144
        Top = 32
        TabOrder = 1
        Width = 121
      end
      object cxcrncydtHasil: TcxCurrencyEdit
        Left = 296
        Top = 32
        TabOrder = 2
        Width = 121
      end
      object cxcrncydtSisaPembayaran: TcxCurrencyEdit
        Left = 560
        Top = 32
        TabOrder = 3
        Width = 161
      end
    end
  end
end
