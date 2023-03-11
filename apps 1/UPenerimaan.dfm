object FPenerimaan: TFPenerimaan
  Left = 202
  Top = 150
  Width = 1150
  Height = 582
  Align = alClient
  Caption = 'PENERIMAAN'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTengah: TPanel
    Left = 0
    Top = 41
    Width = 1134
    Height = 463
    Align = alClient
    TabOrder = 0
    object pnlAtas1: TPanel
      Left = 1
      Top = 1
      Width = 1132
      Height = 48
      Align = alTop
      TabOrder = 0
      object lblNoPenerimaan: TLabel
        Left = 16
        Top = 8
        Width = 90
        Height = 13
        Caption = 'NO PENERIMAAN'
      end
      object lblTglPenerimaan: TLabel
        Left = 224
        Top = 8
        Width = 95
        Height = 13
        Caption = 'TGL PENERIMAAN'
      end
      object lblNmSupplier: TLabel
        Left = 376
        Top = 8
        Width = 87
        Height = 13
        Caption = 'NAMA SUPPLIER'
      end
      object lblKdSupplier: TLabel
        Left = 608
        Top = 8
        Width = 86
        Height = 13
        Caption = 'KODE SUPPLIER'
      end
      object lblKategori: TLabel
        Left = 736
        Top = 8
        Width = 129
        Height = 13
        Caption = 'KATEGORI PENERIMAAN'
      end
      object edtNoPenerimaan: TEdit
        Left = 8
        Top = 24
        Width = 97
        Height = 21
        Enabled = False
        TabOrder = 0
      end
      object dtpTglPenerimaan: TDateTimePicker
        Left = 224
        Top = 24
        Width = 145
        Height = 21
        Date = 43738.888502569450000000
        Time = 43738.888502569450000000
        TabOrder = 1
      end
      object cbbNmSupplier: TcxLookupComboBox
        Left = 376
        Top = 24
        Properties.KeyFieldNames = 'namaSupplier'
        Properties.ListColumns = <
          item
            Caption = 'NAMA SUPPLIER'
            FieldName = 'namaSupplier'
          end>
        Properties.ListSource = DM.dsSupplier
        Properties.OnEditValueChanged = cbbNmSupplierPropertiesEditValueChanged
        TabOrder = 2
        OnDblClick = cbbNmSupplierDblClick
        OnKeyPress = cbbNmSupplierKeyPress
        Width = 225
      end
      object edtKdSupplier: TEdit
        Left = 608
        Top = 24
        Width = 121
        Height = 21
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object btnCariNoPenerimaan: TcxButton
        Left = 112
        Top = 16
        Width = 105
        Height = 25
        Caption = 'NO PENERIMAAN'
        TabOrder = 4
      end
      object cbbKategoriPenerimaan: TComboBox
        Left = 736
        Top = 24
        Width = 145
        Height = 21
        ItemHeight = 13
        TabOrder = 5
        OnKeyPress = cbbKategoriPenerimaanKeyPress
        Items.Strings = (
          'NON KONSINYASI'
          'KONSINYASI')
      end
    end
    object pnlTengah1: TPanel
      Left = 1
      Top = 49
      Width = 1132
      Height = 413
      Align = alClient
      TabOrder = 1
      object pnlTengahAtas: TPanel
        Left = 1
        Top = 1
        Width = 1130
        Height = 176
        Align = alTop
        TabOrder = 0
        object cxgrpbxDataObatSekarang: TcxGroupBox
          Left = 368
          Top = 1
          Align = alCustom
          Caption = 'DATA OBAT SEKARANG'
          TabOrder = 0
          Height = 63
          Width = 761
          object lblSatuan: TLabel
            Left = 8
            Top = 16
            Width = 44
            Height = 13
            Caption = 'SATUAN'
          end
          object lblJumlahStok: TLabel
            Left = 104
            Top = 16
            Width = 75
            Height = 13
            Caption = 'JUMLAH STOK'
          end
          object lblHargaBeliLama: TLabel
            Left = 216
            Top = 16
            Width = 96
            Height = 13
            Caption = 'HARGA BELI LAMA'
          end
          object lblKeuntungan: TLabel
            Left = 344
            Top = 16
            Width = 76
            Height = 13
            Caption = 'KEUNTUNGAN'
          end
          object lblHargaJual: TLabel
            Left = 472
            Top = 16
            Width = 67
            Height = 13
            Caption = 'HARGA JUAL'
          end
          object edtSatuan: TcxTextEdit
            Left = 8
            Top = 32
            Enabled = False
            ParentFont = False
            Style.BorderColor = clWindow
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWhite
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = []
            Style.TextColor = clWhite
            Style.IsFontAssigned = True
            StyleDisabled.BorderColor = clWindow
            StyleDisabled.Color = clWindow
            StyleDisabled.TextColor = clWindowText
            TabOrder = 0
            Width = 89
          end
          object cxcrncydtJumlahStok: TcxCurrencyEdit
            Left = 104
            Top = 32
            Enabled = False
            Properties.AssignedValues.DisplayFormat = True
            StyleDisabled.Color = clWindow
            StyleDisabled.TextColor = clWindowText
            TabOrder = 1
            Width = 105
          end
          object cxcrncydtHargaBeliLama: TcxCurrencyEdit
            Left = 216
            Top = 32
            Enabled = False
            StyleDisabled.Color = clWindow
            StyleDisabled.TextColor = clWindowText
            TabOrder = 2
            Width = 121
          end
          object cxcrncydtKeuntungan: TcxCurrencyEdit
            Left = 344
            Top = 32
            Enabled = False
            Properties.AssignedValues.DisplayFormat = True
            StyleDisabled.Color = clWindow
            StyleDisabled.TextColor = clWindowText
            TabOrder = 3
            Width = 121
          end
          object cxcrncydtHargaJualLama: TcxCurrencyEdit
            Left = 464
            Top = 32
            StyleDisabled.Color = clWindow
            StyleDisabled.TextColor = clWindowText
            TabOrder = 4
            Width = 121
          end
        end
        object cxgrpbxDataPencarian: TcxGroupBox
          Left = 1
          Top = 1
          Align = alCustom
          Caption = 'DATA PENCARIAN OBAT'
          TabOrder = 1
          Height = 63
          Width = 368
          object lblKodeObat: TLabel
            Left = 8
            Top = 16
            Width = 62
            Height = 13
            Caption = 'KODE OBAT'
          end
          object lblNamaObat: TLabel
            Left = 112
            Top = 16
            Width = 63
            Height = 13
            Caption = 'NAMA OBAT'
          end
          object edtKodeObat: TcxTextEdit
            Left = 8
            Top = 32
            TabOrder = 0
            Width = 97
          end
          object cbbNamaObat: TcxLookupComboBox
            Left = 112
            Top = 32
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
            Width = 241
          end
        end
        object cxgrpbxDataPenerimaanObat: TcxGroupBox
          Left = 1
          Top = 64
          Align = alCustom
          Caption = 'DATA PENERIMAAN OBAT BARU'
          TabOrder = 2
          Height = 111
          Width = 1128
          object lblNoBatch: TLabel
            Left = 10
            Top = 16
            Width = 55
            Height = 13
            Caption = 'NO BATCH'
          end
          object lblJumlahObat: TLabel
            Left = 8
            Top = 61
            Width = 91
            Height = 13
            Caption = 'JUMLAH ISI OBAT'
          end
          object lblHargaBeli: TLabel
            Left = 136
            Top = 61
            Width = 64
            Height = 13
            Caption = 'HARGA BELI'
          end
          object lblKeuntunganBaru: TLabel
            Left = 264
            Top = 61
            Width = 76
            Height = 13
            Caption = 'KEUNTUNGAN'
          end
          object lblHargaJualBaru: TLabel
            Left = 360
            Top = 61
            Width = 70
            Height = 13
            Caption = 'HARGA JUAL '
          end
          object lblTglExp: TLabel
            Left = 744
            Top = 13
            Width = 45
            Height = 13
            Caption = 'TGL EXP'
          end
          object lblSubTotalBeli: TLabel
            Left = 616
            Top = 13
            Width = 86
            Height = 13
            Caption = 'SUB TOTAL BELI'
          end
          object lblSubTotalJual: TLabel
            Left = 488
            Top = 61
            Width = 89
            Height = 13
            Caption = 'SUB TOTAL JUAL'
          end
          object lblDiskon: TLabel
            Left = 488
            Top = 16
            Width = 41
            Height = 13
            Caption = 'DISKON'
          end
          object lblSatuanBeli: TLabel
            Left = 136
            Top = 16
            Width = 70
            Height = 13
            Caption = 'SATUAN BELI'
          end
          object lblJumlahBeli: TLabel
            Left = 264
            Top = 16
            Width = 92
            Height = 13
            Caption = 'JML BELI FAKTUR'
          end
          object lblHargaBeliFaktur: TLabel
            Left = 360
            Top = 16
            Width = 110
            Height = 13
            Caption = 'HARGA BELI FAKTUR'
          end
          object edtNoBatch: TEdit
            Left = 8
            Top = 32
            Width = 121
            Height = 21
            TabOrder = 0
            OnKeyPress = edtNoBatchKeyPress
          end
          object cxcrncydtJumlahObat: TcxCurrencyEdit
            Left = 8
            Top = 77
            Properties.AssignedValues.DisplayFormat = True
            TabOrder = 1
            OnKeyPress = cxcrncydtJumlahObatKeyPress
            Width = 121
          end
          object cxcrncydtHargaBeli: TcxCurrencyEdit
            Left = 136
            Top = 77
            Properties.OnEditValueChanged = cxcrncydtHargaBeliPropertiesEditValueChanged
            TabOrder = 2
            OnKeyPress = cxcrncydtHargaBeliKeyPress
            Width = 121
          end
          object cxcrncydtKeuntunganBaru: TcxCurrencyEdit
            Left = 264
            Top = 77
            Properties.AssignedValues.DisplayFormat = True
            Properties.OnChange = cxcrncydtKeuntunganBaruPropertiesChange
            TabOrder = 3
            OnKeyPress = cxcrncydtKeuntunganBaruKeyPress
            Width = 89
          end
          object cxcrncydtHargaJualBaru: TcxCurrencyEdit
            Left = 360
            Top = 77
            TabOrder = 4
            OnKeyPress = cxcrncydtHargaJualBaruKeyPress
            Width = 121
          end
          object dtpTglExp: TDateTimePicker
            Left = 744
            Top = 29
            Width = 105
            Height = 21
            Date = 43738.909771516210000000
            Time = 43738.909771516210000000
            TabOrder = 5
            OnKeyPress = dtpTglExpKeyPress
          end
          object cxcrncydtSubTotalBeliFaktur: TcxCurrencyEdit
            Left = 616
            Top = 29
            Enabled = False
            StyleDisabled.Color = clWindow
            TabOrder = 6
            Width = 121
          end
          object cxcrncydtSubTotalJual: TcxCurrencyEdit
            Left = 488
            Top = 77
            Enabled = False
            StyleDisabled.Color = clWindow
            TabOrder = 7
            Width = 121
          end
          object btnInput: TcxButton
            Left = 616
            Top = 73
            Width = 217
            Height = 25
            Caption = 'INPUT'
            TabOrder = 8
            OnClick = btnInputClick
          end
          object edtSatuanBeli: TEdit
            Left = 136
            Top = 32
            Width = 121
            Height = 21
            TabOrder = 9
            OnKeyPress = edtSatuanBeliKeyPress
          end
          object cxcrncydtHargaBeliFaktur: TcxCurrencyEdit
            Left = 360
            Top = 32
            TabOrder = 10
            OnKeyPress = cxcrncydtHargaBeliFakturKeyPress
            Width = 121
          end
          object cxcrncydtJmlBeli: TcxCurrencyEdit
            Left = 264
            Top = 32
            Properties.AssignedValues.DisplayFormat = True
            TabOrder = 11
            OnKeyPress = cxcrncydtJmlBeliKeyPress
            Width = 89
          end
          object cxcrncydtDiskonFaktur: TcxCurrencyEdit
            Left = 488
            Top = 32
            TabOrder = 12
            OnKeyPress = cxcrncydtDiskonFakturKeyPress
            Width = 121
          end
        end
      end
      object pnlTengahTengah: TPanel
        Left = 1
        Top = 177
        Width = 1130
        Height = 175
        Align = alClient
        TabOrder = 1
        object dbgrdhPenerimaan: TDBGridEh
          Left = 1
          Top = 1
          Width = 1128
          Height = 173
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
          FooterRowCount = 1
          IndicatorOptions = [gioShowRowIndicatorEh]
          PopupMenu = pm1
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          Columns = <
            item
              EditButtons = <>
              FieldName = 'kdObat'
              Footers = <>
              Title.Caption = 'KODE OBAT'
              Width = 108
            end
            item
              EditButtons = <>
              FieldName = 'noBatch'
              Footers = <>
              Title.Caption = 'NO BATCH'
              Width = 131
            end
            item
              EditButtons = <>
              FieldName = 'namaObat'
              Footers = <>
              Title.Caption = 'NAMA OBAT'
              Width = 195
            end
            item
              EditButtons = <>
              FieldName = 'satuanBeliFaktur'
              Footers = <>
              Title.Caption = 'FAKTUR | SATUAN '
            end
            item
              EditButtons = <>
              FieldName = 'jmlBeliFaktur'
              Footers = <>
              Title.Caption = 'FAKTUR | JML BELI'
            end
            item
              DisplayFormat = '#,#0'
              EditButtons = <>
              FieldName = 'diskonFaktur'
              Footer.DisplayFormat = '#,#0'
              Footer.FieldName = 'diskonFaktur'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'FAKTUR | DISKON'
            end
            item
              DisplayFormat = '#,#0'
              EditButtons = <>
              FieldName = 'hargaBeliFaktur'
              Footers = <>
              Title.Caption = 'FAKTUR | HARGA BELI'
            end
            item
              DisplayFormat = '#,#0'
              EditButtons = <>
              FieldName = 'subTotalFaktur'
              Footer.DisplayFormat = '#,#0'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'FAKTUR | SUB TOTAL'
            end
            item
              EditButtons = <>
              FieldName = 'jumlahIsiBeli'
              Footers = <>
              Title.Caption = 'JUMLAH ISI BELI'
              Width = 137
            end
            item
              DisplayFormat = '#,#0'
              EditButtons = <>
              FieldName = 'hargaBeliPerBiji'
              Footers = <>
              Title.Caption = 'HARGA | BELI'
              Width = 84
            end
            item
              DisplayFormat = '#,#0'
              EditButtons = <>
              FieldName = 'hargaJualPerBiji'
              Footers = <>
              Title.Caption = 'HARGA | JUAL'
              Width = 87
            end
            item
              EditButtons = <>
              FieldName = 'keuntunganPerbiji'
              Footers = <>
              Title.Caption = 'KEUNTUNGAN'
              Width = 93
            end
            item
              DisplayFormat = '#,#0'
              EditButtons = <>
              FieldName = 'subTotalHargaBeli'
              Footer.DisplayFormat = '#,#0'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'SUB TOTAL JUAL'
              Width = 79
            end
            item
              EditButtons = <>
              FieldName = 'tglKadaluarsa'
              Footers = <>
              Title.Caption = 'TGL EXP'
              Width = 138
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
      object pnlTengah1Bawah: TPanel
        Left = 1
        Top = 352
        Width = 1130
        Height = 60
        Align = alBottom
        TabOrder = 2
        object lblTotalPembayaran: TLabel
          Left = 120
          Top = 8
          Width = 112
          Height = 13
          Caption = 'TOTAL PEMBAYARAN'
        end
        object lblPembayaran: TLabel
          Left = 384
          Top = 32
          Width = 74
          Height = 13
          Caption = 'PEMBAYARAN'
        end
        object lblStatus: TLabel
          Left = 616
          Top = 40
          Width = 43
          Height = 13
          Caption = 'STATUS'
        end
        object lblSisaPembayaran: TLabel
          Left = 616
          Top = 8
          Width = 101
          Height = 13
          Caption = 'SISA PEMBAYARAN'
        end
        object cxcrncydtTotalPembayaran: TcxCurrencyEdit
          Left = 240
          Top = 8
          TabOrder = 0
          Width = 137
        end
        object cxcrncydtPembayaran: TcxCurrencyEdit
          Left = 464
          Top = 32
          TabOrder = 1
          OnKeyPress = cxcrncydtPembayaranKeyPress
          Width = 145
        end
        object cxcrncydtSisaPembayaran: TcxCurrencyEdit
          Left = 728
          Top = 8
          TabOrder = 2
          Width = 145
        end
        object cbbStatusPembayaran: TComboBox
          Left = 728
          Top = 32
          Width = 145
          Height = 21
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 3
          Text = 'BELUM LUNAS'
          Items.Strings = (
            'BELUM LUNAS'
            'LUNAS')
        end
        object btnPembayaran: TcxButton
          Left = 920
          Top = 24
          Width = 121
          Height = 25
          Caption = 'PEMBAYARAN'
          TabOrder = 4
          OnClick = btnPembayaranClick
        end
        object cxlblDiskon: TcxLabel
          Left = 120
          Top = 32
          Caption = 'DISKON'
        end
        object cxcrncydtDiskon: TcxCurrencyEdit
          Left = 240
          Top = 32
          TabOrder = 6
          OnKeyPress = cxcrncydtDiskonKeyPress
          Width = 137
        end
        object cxlblPpn: TcxLabel
          Left = 384
          Top = 8
          Caption = 'PPN'
        end
        object cxcrncydtPpn: TcxCurrencyEdit
          Left = 464
          Top = 8
          TabOrder = 8
          OnKeyPress = cxcrncydtPpnKeyPress
          Width = 145
        end
      end
    end
  end
  object pnlBawah: TPanel
    Left = 0
    Top = 504
    Width = 1134
    Height = 40
    Align = alBottom
    Color = clSkyBlue
    TabOrder = 1
    object btnBaru: TButton
      Left = 936
      Top = 8
      Width = 75
      Height = 25
      Caption = 'BARU'
      TabOrder = 0
      OnClick = btnBaruClick
    end
  end
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 1134
    Height = 41
    Align = alTop
    Caption = 'PENERIMAAN OBAT'
    Color = clSkyBlue
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Stencil'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object pm1: TPopupMenu
    Left = 314
    Top = 386
    object HAPUS1: TMenuItem
      Caption = 'HAPUS'
      OnClick = HAPUS1Click
    end
  end
end
