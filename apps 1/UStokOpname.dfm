object FStokOpname: TFStokOpname
  Left = 192
  Top = 124
  Width = 1044
  Height = 563
  Align = alClient
  Caption = 'STOK OPNAME VERSI 1'
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
    Top = 485
    Width = 1028
    Height = 40
    Align = alBottom
    Color = clSkyBlue
    TabOrder = 0
    object btnSelesai: TcxButton
      Left = 9
      Top = 8
      Width = 125
      Height = 25
      Caption = 'Selesai Stok Opname'
      TabOrder = 0
      OnClick = btnSelesaiClick
    end
  end
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 1028
    Height = 41
    Align = alTop
    Caption = 'STOK OPNAME'
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
    Width = 1028
    Height = 444
    Align = alClient
    TabOrder = 2
    object cxgrpbxDataObat: TcxGroupBox
      Left = 1
      Top = 1
      Align = alTop
      Caption = 'STOK OPNAME / DATA OBAT'
      TabOrder = 0
      Height = 111
      Width = 1026
      object cxlblTglStokOpname: TcxLabel
        Left = 8
        Top = 16
        Caption = 'TGL STOK OPNAME'
      end
      object cxdtdtTglStokOpname: TcxDateEdit
        Left = 8
        Top = 32
        TabOrder = 1
        Width = 105
      end
      object cxlblKodeObat: TcxLabel
        Left = 8
        Top = 56
        Caption = 'KODE OBAT'
      end
      object edtKodeObat: TcxTextEdit
        Left = 8
        Top = 72
        TabOrder = 3
        Width = 105
      end
      object cxlblNamaObat: TcxLabel
        Left = 120
        Top = 56
        Caption = 'NAMA OBAT'
      end
      object cbbNamaObat: TcxLookupComboBox
        Left = 120
        Top = 72
        Properties.KeyFieldNames = 'namaObat'
        Properties.ListColumns = <
          item
            Caption = 'NAMA OBAT'
            FieldName = 'namaObat'
          end>
        Properties.ListSource = DM.dsObat
        TabOrder = 5
        OnDblClick = cbbNamaObatDblClick
        OnKeyPress = cbbNamaObatKeyPress
        Width = 209
      end
      object cxlblSatuan: TcxLabel
        Left = 328
        Top = 56
        Caption = 'SATUAN'
      end
      object edtSatuan: TcxTextEdit
        Left = 328
        Top = 72
        Enabled = False
        TabOrder = 7
        Width = 97
      end
      object cxlblStok: TcxLabel
        Left = 432
        Top = 56
        Caption = 'STOK'
      end
      object cxcrncydtStok: TcxCurrencyEdit
        Left = 432
        Top = 72
        Enabled = False
        Properties.AssignedValues.DisplayFormat = True
        TabOrder = 9
        OnKeyPress = cxcrncydtStokKeyPress
        Width = 89
      end
      object cxlblRealStok: TcxLabel
        Left = 528
        Top = 56
        Caption = 'REAL STOK'
      end
      object cxcrncydtRealStok: TcxCurrencyEdit
        Left = 528
        Top = 72
        Properties.AssignedValues.DisplayFormat = True
        TabOrder = 11
        OnKeyPress = cxcrncydtRealStokKeyPress
        Width = 89
      end
      object cxlblKeterangan: TcxLabel
        Left = 624
        Top = 48
        Caption = 'KETERANGAN'
      end
      object cxmKeterangan: TcxMemo
        Left = 624
        Top = 72
        TabOrder = 13
        OnKeyPress = cxmKeteranganKeyPress
        Height = 25
        Width = 265
      end
      object btnInput: TcxButton
        Left = 896
        Top = 72
        Width = 75
        Height = 25
        Caption = 'INPUT'
        TabOrder = 14
        OnClick = btnInputClick
      end
    end
    object cxgrpbxDataObatStokOpname: TcxGroupBox
      Left = 1
      Top = 112
      Align = alClient
      Caption = 'DATA OBAT STOK OPNAME'
      TabOrder = 1
      Height = 331
      Width = 1026
      object dbgrdhDataObat: TDBGridEh
        Left = 3
        Top = 65
        Width = 1020
        Height = 256
        Align = alClient
        DataGrouping.GroupLevels = <>
        DataSource = DM.dsStokOpnameTemp
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
        PopupMenu = pm1
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'tglStokOpname'
            Footers = <>
            Title.Caption = 'TGL'
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'kdObat'
            Footers = <>
            Title.Caption = 'KODE'
            Width = 86
          end
          item
            EditButtons = <>
            FieldName = 'namaObat'
            Footers = <>
            Title.Caption = 'NAMA OBAT'
            Width = 178
          end
          item
            EditButtons = <>
            FieldName = 'satuanObat'
            Footers = <>
            Title.Caption = 'SATUAN'
            Width = 85
          end
          item
            EditButtons = <>
            FieldName = 'jumlahStok'
            Footers = <>
            Title.Caption = 'JUMLAH STOK'
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'jumlahStokReal'
            Footers = <>
            Title.Caption = 'JUMLAH STOK REAL'
            Width = 135
          end
          item
            EditButtons = <>
            FieldName = 'keterangan'
            Footers = <>
            Title.Caption = 'KETERANGAN'
            Width = 304
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object cxgrpbxTampilObat: TcxGroupBox
        Left = 3
        Top = 15
        Align = alTop
        Caption = 'LIMIT'
        TabOrder = 1
        Height = 50
        Width = 1020
        object cbblLimit: TcxComboBox
          Left = 8
          Top = 16
          Properties.Items.Strings = (
            '10'
            '20'
            '30'
            'Tampil Semua')
          Properties.OnChange = cbblLimitPropertiesChange
          TabOrder = 0
          Text = 'cbblLimit'
          Width = 162
        end
      end
    end
  end
  object pm1: TPopupMenu
    Left = 390
    Top = 256
    object HAPUS1: TMenuItem
      Caption = 'HAPUS'
      OnClick = HAPUS1Click
    end
  end
end
