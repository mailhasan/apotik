object FDataObat: TFDataObat
  Left = 192
  Top = 124
  Width = 979
  Height = 563
  Caption = 'DATA OBAT'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTengah: TPanel
    Left = 0
    Top = 41
    Width = 963
    Height = 443
    Align = alClient
    TabOrder = 0
    object dbgrdhDokter: TDBGridEh
      Left = 1
      Top = 1
      Width = 961
      Height = 441
      Align = alClient
      DataGrouping.GroupLevels = <>
      DataSource = DM.dsObat
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
          FieldName = 'kdObat'
          Footers = <>
          Title.Caption = 'KODE'
        end
        item
          EditButtons = <>
          FieldName = 'namaObat'
          Footers = <>
          Title.Caption = 'NAMA OBAT'
          Width = 160
        end
        item
          EditButtons = <>
          FieldName = 'satuanObat'
          Footers = <>
          Title.Caption = 'SATUAN'
        end
        item
          EditButtons = <>
          FieldName = 'jumlahStok'
          Footers = <>
          Title.Caption = 'STOK'
        end
        item
          DisplayFormat = '#,#0'
          EditButtons = <>
          FieldName = 'hargaBeli'
          Footer.DisplayFormat = '#,#0'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = 'HARGA BELI'
          Width = 103
        end
        item
          EditButtons = <>
          FieldName = 'keuntungan'
          Footers = <>
          Title.Caption = 'KEUNTUNGAN'
          Width = 98
        end
        item
          DisplayFormat = '#,#0'
          EditButtons = <>
          FieldName = 'hargaJual'
          Footer.DisplayFormat = '#,#0'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = 'HARGA JUAL'
          Width = 100
        end
        item
          EditButtons = <>
          FieldName = 'lokasiRak'
          Footers = <>
          Title.Caption = 'LOKASI RAK'
          Width = 94
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object pnlBawah: TPanel
    Left = 0
    Top = 484
    Width = 963
    Height = 41
    Align = alBottom
    Color = clSkyBlue
    TabOrder = 1
    object lblCari: TLabel
      Left = 16
      Top = 16
      Width = 25
      Height = 13
      Caption = 'CARI'
    end
    object edtCari: TEdit
      Left = 48
      Top = 8
      Width = 169
      Height = 21
      TabOrder = 0
      OnChange = edtCariChange
      OnDblClick = edtCariDblClick
    end
    object btnTambah: TButton
      Left = 232
      Top = 8
      Width = 75
      Height = 25
      Caption = 'TAMBAH'
      TabOrder = 1
      OnClick = btnTambahClick
    end
    object btnUbah: TButton
      Left = 312
      Top = 8
      Width = 75
      Height = 25
      Caption = 'UBAH'
      TabOrder = 2
      OnClick = btnUbahClick
    end
    object btnHapus: TButton
      Left = 390
      Top = 8
      Width = 75
      Height = 25
      Caption = 'HAPUS'
      TabOrder = 3
      OnClick = btnHapusClick
    end
    object btnKeluar: TButton
      Left = 472
      Top = 8
      Width = 75
      Height = 25
      Caption = 'KELUAR'
      TabOrder = 4
      OnClick = btnKeluarClick
    end
  end
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 963
    Height = 41
    Align = alTop
    Caption = 'DAFTAR DATA OBAT'
    Color = clSkyBlue
    TabOrder = 2
  end
end
