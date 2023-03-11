object FPenjualanObat: TFPenjualanObat
  Left = 190
  Top = 128
  Width = 1065
  Height = 569
  Align = alCustom
  AutoSize = True
  Caption = 'PENJUALAN OBAT'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 1049
    Height = 41
    Align = alTop
    Caption = 'PENJUALAN OBAT'
    Color = clSkyBlue
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Stencil'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object pnlTengah: TPanel
    Left = 0
    Top = 41
    Width = 1049
    Height = 429
    Align = alClient
    TabOrder = 1
    object pnlAtas1: TPanel
      Left = 1
      Top = 1
      Width = 1047
      Height = 96
      Align = alTop
      TabOrder = 0
      object lblNoPenjualan: TLabel
        Left = 8
        Top = 8
        Width = 82
        Height = 13
        Caption = 'NO PENJUALAN'
      end
      object lblTglPenjualan: TLabel
        Left = 176
        Top = 8
        Width = 117
        Height = 13
        Caption = 'TANGGAL PENJUALAN'
      end
      object lblDokter: TLabel
        Left = 312
        Top = 8
        Width = 45
        Height = 13
        Caption = 'DOKTER'
      end
      object lblKodeDokter: TLabel
        Left = 552
        Top = 8
        Width = 78
        Height = 13
        Caption = 'KODE DOKTER'
      end
      object lblNamaPasien: TLabel
        Left = 8
        Top = 48
        Width = 73
        Height = 13
        Caption = 'NAMA PASIEN'
      end
      object lblUmur: TLabel
        Left = 176
        Top = 48
        Width = 33
        Height = 13
        Caption = 'UMUR'
      end
      object lblAlamat: TLabel
        Left = 304
        Top = 48
        Width = 43
        Height = 13
        Caption = 'ALAMAT'
      end
      object lblAsalResep: TLabel
        Left = 552
        Top = 48
        Width = 66
        Height = 13
        Caption = 'ASAL RESEP'
      end
      object edtNoPenjualan: TEdit
        Left = 8
        Top = 24
        Width = 121
        Height = 21
        Enabled = False
        TabOrder = 0
      end
      object dtpTglPenjualan: TDateTimePicker
        Left = 176
        Top = 24
        Width = 121
        Height = 21
        Date = 43705.901008356480000000
        Time = 43705.901008356480000000
        TabOrder = 1
      end
      object cbbDokter: TcxLookupComboBox
        Left = 304
        Top = 24
        Properties.KeyFieldNames = 'namaDokter'
        Properties.ListColumns = <
          item
            Caption = 'NAMA DOKTER'
            FieldName = 'namaDokter'
          end>
        Properties.ListSource = DM.dsDokter
        Properties.OnEditValueChanged = cbbDokterPropertiesEditValueChanged
        TabOrder = 2
        OnDblClick = cbbDokterDblClick
        Width = 241
      end
      object edtKdDokter: TcxTextEdit
        Left = 552
        Top = 24
        Enabled = False
        TabOrder = 3
        Width = 185
      end
      object btnCari: TButton
        Left = 136
        Top = 24
        Width = 33
        Height = 25
        Caption = 'CARI'
        TabOrder = 4
        OnClick = btnCariClick
      end
      object edtNama: TEdit
        Left = 8
        Top = 64
        Width = 161
        Height = 21
        TabOrder = 5
      end
      object edtUmur: TEdit
        Left = 176
        Top = 64
        Width = 121
        Height = 21
        TabOrder = 6
      end
      object edtAlamat: TEdit
        Left = 304
        Top = 64
        Width = 241
        Height = 21
        TabOrder = 7
      end
      object edtAsalResep: TEdit
        Left = 552
        Top = 64
        Width = 185
        Height = 21
        TabOrder = 8
      end
    end
    object pnlTengah1: TPanel
      Left = 1
      Top = 97
      Width = 1047
      Height = 331
      Align = alClient
      TabOrder = 1
      object pnlAtas2: TPanel
        Left = 1
        Top = 1
        Width = 1045
        Height = 48
        Align = alTop
        TabOrder = 0
        object lblKodeObat: TLabel
          Left = 8
          Top = 8
          Width = 62
          Height = 13
          Caption = 'KODE OBAT'
        end
        object lblNamaObat: TLabel
          Left = 136
          Top = 8
          Width = 63
          Height = 13
          Caption = 'NAMA OBAT'
        end
        object lblSatuan: TLabel
          Left = 344
          Top = 8
          Width = 44
          Height = 13
          Caption = 'SATUAN'
        end
        object lblJumlahStok: TLabel
          Left = 472
          Top = 8
          Width = 75
          Height = 13
          Caption = 'JUMLAH STOK'
        end
        object lblHargaJual: TLabel
          Left = 568
          Top = 8
          Width = 67
          Height = 13
          Caption = 'HARGA JUAL'
        end
        object lblJumlahJual: TLabel
          Left = 696
          Top = 8
          Width = 75
          Height = 13
          Caption = 'JUMLAH JUAL:'
        end
        object lblSubTotalJual: TLabel
          Left = 824
          Top = 8
          Width = 60
          Height = 13
          Caption = 'SUB TOTAL'
        end
        object edtKodeObat: TcxTextEdit
          Left = 8
          Top = 24
          TabOrder = 0
          OnKeyPress = edtKodeObatKeyPress
          Width = 121
        end
        object cbbNamaObat: TcxLookupComboBox
          Left = 136
          Top = 24
          Properties.HideSelection = False
          Properties.KeyFieldNames = 'namaObat'
          Properties.ListColumns = <
            item
              Caption = 'NAMA OBAT'
              Fixed = True
              FieldName = 'namaObat'
            end>
          Properties.ListSource = DM.dsObat
          TabOrder = 1
          OnDblClick = cbbNamaObatDblClick
          OnKeyPress = cbbNamaObatKeyPress
          Width = 201
        end
        object edtSatuan: TcxTextEdit
          Left = 344
          Top = 24
          Enabled = False
          StyleDisabled.Color = clWindow
          TabOrder = 2
          Width = 121
        end
        object edtJumlahStok: TcxTextEdit
          Left = 472
          Top = 24
          Enabled = False
          StyleDisabled.Color = clWindow
          TabOrder = 3
          Width = 89
        end
        object edtHargaJual: TcxTextEdit
          Left = 568
          Top = 24
          TabOrder = 4
          Width = 121
        end
        object edtJumlahJual: TcxTextEdit
          Left = 696
          Top = 24
          TabOrder = 5
          OnKeyPress = edtJumlahJualKeyPress
          Width = 121
        end
        object edtSubTotal: TcxTextEdit
          Left = 824
          Top = 24
          Enabled = False
          StyleDisabled.Color = clWindow
          TabOrder = 6
          Width = 121
        end
        object btnInput: TButton
          Left = 952
          Top = 16
          Width = 75
          Height = 25
          Caption = 'INPUT'
          TabOrder = 7
          OnClick = btnInputClick
        end
      end
      object pnlTengah2: TPanel
        Left = 1
        Top = 49
        Width = 1045
        Height = 185
        Align = alClient
        TabOrder = 1
        object dbgrdhPenjualan: TDBGridEh
          Left = 1
          Top = 1
          Width = 1043
          Height = 183
          Align = alClient
          DataGrouping.GroupLevels = <>
          DataSource = DM.dsDetailPenjualan
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
          PopupMenu = pmPenjualan
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
              FieldName = 'kdObat'
              Footers = <>
              Title.Caption = 'KODE'
              Width = 112
            end
            item
              EditButtons = <>
              FieldName = 'namaObat'
              Footers = <>
              Title.Caption = 'NAMA OBAT'
              Width = 301
            end
            item
              DisplayFormat = '#,#0'
              EditButtons = <>
              FieldName = 'hargaJual'
              Footers = <>
              Title.Caption = 'HARGA JUAL'
              Width = 132
            end
            item
              EditButtons = <>
              FieldName = 'jumlahJual'
              Footer.Value = 'TOTAL '
              Footer.ValueType = fvtStaticText
              Footers = <>
              Title.Caption = 'JUMLAH'
              Width = 88
            end
            item
              DisplayFormat = '#,#0'
              EditButtons = <>
              FieldName = 'subTotalJual'
              Footer.DisplayFormat = '#,#0'
              Footer.FieldName = 'subTotalJual'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'SUB TOTAL'
              Width = 139
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
      object pnlBawah2: TPanel
        Left = 1
        Top = 234
        Width = 1045
        Height = 96
        Align = alBottom
        TabOrder = 2
        object lblTotalBayar: TLabel
          Left = 792
          Top = 16
          Width = 74
          Height = 13
          Caption = 'TOTAL BAYAR'
        end
        object lblBayar: TLabel
          Left = 792
          Top = 40
          Width = 36
          Height = 13
          Caption = 'BAYAR'
        end
        object lblKembali: TLabel
          Left = 792
          Top = 64
          Width = 46
          Height = 13
          Caption = 'KEMBALI'
        end
        object lblIsiTotalBayar: TLabel
          Left = 16
          Top = 24
          Width = 9
          Height = 40
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -35
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object edtTotalBayar: TcxTextEdit
          Left = 880
          Top = 8
          TabOrder = 0
          Width = 153
        end
        object edtBayar: TcxTextEdit
          Left = 880
          Top = 32
          TabOrder = 1
          OnKeyPress = edtBayarKeyPress
          Width = 153
        end
        object edtKembali: TcxTextEdit
          Left = 880
          Top = 56
          TabOrder = 2
          Width = 153
        end
      end
    end
  end
  object pnlBawah: TPanel
    Left = 0
    Top = 470
    Width = 1049
    Height = 41
    Align = alBottom
    Color = clSkyBlue
    TabOrder = 2
    object btnBaru: TButton
      Left = 872
      Top = 8
      Width = 75
      Height = 25
      Caption = 'BARU'
      TabOrder = 0
      OnClick = btnBaruClick
    end
    object btnPrint: TButton
      Left = 952
      Top = 8
      Width = 75
      Height = 25
      Caption = 'PRINT'
      TabOrder = 1
      OnClick = btnPrintClick
    end
    object btnBatal: TcxButton
      Left = 792
      Top = 8
      Width = 75
      Height = 25
      Caption = 'BATAL'
      TabOrder = 2
    end
  end
  object pmPenjualan: TPopupMenu
    Left = 370
    Top = 251
    object HAPUS1: TMenuItem
      Caption = 'HAPUS'
      OnClick = HAPUS1Click
    end
  end
  object mm1: TMainMenu
    Left = 805
    Top = 65
    object REKAPLAPORANDATA1: TMenuItem
      Caption = 'REKAP LAPORAN DATA'
      OnClick = REKAPLAPORANDATA1Click
    end
  end
end
