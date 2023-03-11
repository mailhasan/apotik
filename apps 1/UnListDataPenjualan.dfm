object FListDataPenjualan: TFListDataPenjualan
  Left = 192
  Top = 124
  Width = 1068
  Height = 563
  Caption = 'LIST DATA PENJUALAN'
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
    Width = 1052
    Height = 439
    Align = alClient
    TabOrder = 0
    object dbgrdhiPenjualan: TDBGridEh
      Left = 1
      Top = 1
      Width = 1050
      Height = 437
      Align = alClient
      DataGrouping.GroupLevels = <>
      DataSource = DM.dsPenjualan
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
      RowDetailPanel.Active = True
      SumList.Active = True
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
          FieldName = 'noPenjualan'
          Footers = <>
          Title.Caption = 'NO PENJUALAN'
          Width = 113
        end
        item
          EditButtons = <>
          FieldName = 'tglPenjualan'
          Footers = <>
          Title.Caption = 'TGL PENJUALAN'
          Width = 95
        end
        item
          EditButtons = <>
          FieldName = 'namaDokter'
          Footers = <>
          Title.Caption = 'NAMA DOKTER'
          Width = 138
        end
        item
          EditButtons = <>
          FieldName = 'namaPasien'
          Footers = <>
          Title.Caption = 'NAMA PASIEN'
          Width = 136
        end
        item
          EditButtons = <>
          FieldName = 'umurPasien'
          Footers = <>
          Title.Caption = 'UMUR PASIEN'
          Width = 84
        end
        item
          EditButtons = <>
          FieldName = 'alamatPasien'
          Footers = <>
          Title.Caption = 'ALAMAT'
        end
        item
          EditButtons = <>
          FieldName = 'asalResepPasien'
          Footer.Value = 'TOTAL : '
          Footer.ValueType = fvtStaticText
          Footers = <>
          Title.Caption = 'ASAL RESEP'
          Width = 122
        end
        item
          DisplayFormat = '#,#0'
          EditButtons = <>
          FieldName = 'totalPenjualan'
          Footer.DisplayFormat = '#,#0'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = 'TOTAL PENJUALAN'
          Width = 124
        end>
      object RowDetailData: TRowDetailPanelControlEh
        object dbgrdhDetailPenjualan: TDBGridEh
          Left = 0
          Top = 0
          Width = 863
          Height = 118
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
              Width = 86
            end
            item
              EditButtons = <>
              FieldName = 'namaObat'
              Footers = <>
              Title.Caption = 'NAMA OBAT'
              Width = 228
            end
            item
              DisplayFormat = '#,#0'
              EditButtons = <>
              FieldName = 'hargaJual'
              Footers = <>
              Title.Caption = 'HARGA JUAL'
              Width = 104
            end
            item
              EditButtons = <>
              FieldName = 'jumlahJual'
              Footers = <>
              Title.Caption = 'JUMLAH'
              Width = 47
            end
            item
              DisplayFormat = '#,#0'
              EditButtons = <>
              FieldName = 'subTotalJual'
              Footers = <>
              Title.Caption = 'SUB TOTAL'
              Width = 102
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
    Width = 1052
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
    Width = 1052
    Height = 41
    Align = alTop
    Caption = 'LIST DATA TRANSAKSI PENJUALAN OBAT'
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
