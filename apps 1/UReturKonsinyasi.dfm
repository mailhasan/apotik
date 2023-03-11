object FReturKonsinyasi: TFReturKonsinyasi
  Left = 192
  Top = 124
  Width = 1016
  Height = 641
  Align = alClient
  Caption = 'RETUR KONSINYASI'
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
    Top = 563
    Width = 1000
    Height = 40
    Align = alBottom
    Color = clSkyBlue
    TabOrder = 0
    object btnProses: TButton
      Left = 600
      Top = 7
      Width = 75
      Height = 25
      Caption = 'PROSES'
      TabOrder = 0
      OnClick = btnProsesClick
    end
    object btnBaru: TButton
      Left = 520
      Top = 8
      Width = 75
      Height = 25
      Caption = 'BARU'
      TabOrder = 1
      OnClick = btnBaruClick
    end
    object btnPembayaranPelunasan: TButton
      Left = 680
      Top = 8
      Width = 121
      Height = 25
      Caption = 'PEMBAYARAN'
      TabOrder = 2
      OnClick = btnPembayaranPelunasanClick
    end
  end
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 1000
    Height = 41
    Align = alTop
    Caption = 'RETUR KONSINYASI OBAT'
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
    Width = 1000
    Height = 522
    Align = alClient
    TabOrder = 2
    object grpDataSupplier: TGroupBox
      Left = 1
      Top = 1
      Width = 998
      Height = 144
      Align = alTop
      Caption = 'DATA RETUR'
      TabOrder = 0
      object lblNamaSupplier: TLabel
        Left = 447
        Top = 16
        Width = 93
        Height = 13
        Caption = 'NO PENERIMAAN '
      end
      object lblKodeSupplier: TLabel
        Left = 136
        Top = 56
        Width = 86
        Height = 13
        Caption = 'KODE SUPPLIER'
      end
      object lblNoPenerimaan: TLabel
        Left = 264
        Top = 56
        Width = 53
        Height = 13
        Caption = 'SUPPLIER'
      end
      object lblTglPenerimaan: TLabel
        Left = 8
        Top = 56
        Width = 95
        Height = 13
        Caption = 'TGL PENERIMAAN'
      end
      object lblTotalHargaBeli: TLabel
        Left = 136
        Top = 96
        Width = 102
        Height = 13
        Caption = 'TOTAL HARGA BELI'
      end
      object lblTotalPembayaran: TLabel
        Left = 264
        Top = 96
        Width = 112
        Height = 13
        Caption = 'TOTAL PEMBAYARAN'
      end
      object lblSisaPembayaran: TLabel
        Left = 392
        Top = 96
        Width = 101
        Height = 13
        Caption = 'SISA PEMBAYARAN'
      end
      object lblStatus: TLabel
        Left = 8
        Top = 96
        Width = 43
        Height = 13
        Caption = 'STATUS'
      end
      object lblNoRetur: TLabel
        Left = 8
        Top = 16
        Width = 57
        Height = 13
        Caption = 'NO RETUR'
      end
      object lblTglRetur: TLabel
        Left = 136
        Top = 16
        Width = 62
        Height = 13
        Caption = 'TGL RETUR'
      end
      object lblKategori: TLabel
        Left = 264
        Top = 16
        Width = 129
        Height = 13
        Caption = 'KATEGORI PENERIMAAN'
      end
      object btnCariSupplier: TSpeedButton
        Left = 414
        Top = 30
        Width = 23
        Height = 22
        Caption = '...'
        OnClick = btnCariSupplierClick
      end
      object edtKodeSupplier: TEdit
        Left = 136
        Top = 72
        Width = 121
        Height = 21
        TabOrder = 0
        Text = 'edtKodeSupplier'
      end
      object edtSupplier: TEdit
        Left = 264
        Top = 72
        Width = 553
        Height = 21
        TabOrder = 1
        Text = 'edtSupplier'
      end
      object edtTotalHargaBeli: TEdit
        Left = 136
        Top = 112
        Width = 121
        Height = 21
        TabOrder = 2
        Text = 'edtTotalHargaBeli'
      end
      object edtTotalPembayaran: TEdit
        Left = 264
        Top = 112
        Width = 121
        Height = 21
        TabOrder = 3
        Text = 'edtTotalPembayaran'
      end
      object edtSisaPembayaran: TEdit
        Left = 392
        Top = 112
        Width = 121
        Height = 21
        TabOrder = 4
        Text = 'edtSisaPembayaran'
      end
      object cbbStatusPembayaran: TComboBox
        Left = 8
        Top = 112
        Width = 121
        Height = 21
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 5
        Text = 'BELUM LUNAS'
        Items.Strings = (
          'BELUM LUNAS'
          'LUNAS')
      end
      object edtNoRetur: TEdit
        Left = 8
        Top = 32
        Width = 121
        Height = 21
        TabOrder = 6
        Text = 'edtNoRetur'
      end
      object cbbKategoriPenerimaan: TComboBox
        Left = 264
        Top = 32
        Width = 145
        Height = 21
        ItemHeight = 13
        TabOrder = 7
        OnKeyPress = cbbKategoriPenerimaanKeyPress
        Items.Strings = (
          'NON KONSINYASI'
          'KONSINYASI')
      end
      object dtpTglRetur: TDateTimePicker
        Left = 136
        Top = 32
        Width = 121
        Height = 21
        Date = 43918.851403368050000000
        Time = 43918.851403368050000000
        TabOrder = 8
      end
      object dtpTglPenerimaan: TDateTimePicker
        Left = 8
        Top = 72
        Width = 121
        Height = 21
        Date = 43918.853601377310000000
        Time = 43918.853601377310000000
        TabOrder = 9
      end
      object cxtxtdtNOPENERIMAAN: TcxTextEdit
        Left = 447
        Top = 31
        TabOrder = 10
        Text = 'cxtxtdtNOPENERIMAAN'
        OnClick = cxtxtdtNOPENERIMAANClick
        Width = 121
      end
    end
    object grpDaftarBarangKonsinyasi: TGroupBox
      Left = 1
      Top = 145
      Width = 998
      Height = 376
      Align = alClient
      Caption = 'DAFTAR BARANG KONSINYASI'
      TabOrder = 1
      object strngrdDaftarBarang: TStringGrid
        Left = 2
        Top = 15
        Width = 994
        Height = 359
        Align = alClient
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goColSizing, goRowMoving, goColMoving, goEditing]
        TabOrder = 0
      end
    end
  end
end
