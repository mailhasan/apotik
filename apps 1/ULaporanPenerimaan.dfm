object FLaporanPenerimaanTgl: TFLaporanPenerimaanTgl
  Left = 351
  Top = 145
  Width = 836
  Height = 498
  Align = alClient
  Caption = 'LAPORANG PENERIMAAN'
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
    Width = 820
    Height = 379
    Align = alClient
    TabOrder = 0
    object dbgrdhiPenjualan: TDBGridEh
      Left = 1
      Top = 1
      Width = 818
      Height = 377
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
          Width = 191
        end
        item
          EditButtons = <>
          FieldName = 'tglPenerimaanObat'
          Footers = <>
          Title.Caption = 'TGL PENERIMAAN OBAT'
          Width = 138
        end
        item
          EditButtons = <>
          FieldName = 'kdSupplier'
          Footers = <>
          Title.Caption = 'KODE SUPPLIER'
          Width = 107
        end
        item
          EditButtons = <>
          FieldName = 'namaSupplier'
          Footers = <>
          Title.Caption = 'NAMA SUPPLIER'
          Width = 292
        end
        item
          DisplayFormat = '#,#0'
          EditButtons = <>
          FieldName = 'totalHargaBeli'
          Footers = <>
          Title.Caption = 'TOTAL | HARGA BELI'
          Width = 135
        end
        item
          DisplayFormat = '#,#0'
          EditButtons = <>
          FieldName = 'jumlahPembayaranBeli'
          Footers = <>
          Title.Caption = 'JUMLAH PEMBAYARAN'
          Width = 135
        end
        item
          DisplayFormat = '#,#0'
          EditButtons = <>
          FieldName = 'sisaPembayaranBeli'
          Footers = <>
          Title.Caption = 'SISA PEMABAYARAN'
          Width = 117
        end
        item
          EditButtons = <>
          FieldName = 'statusPembayaran'
          Footers = <>
          Title.Caption = 'STATUS PEMBAYARAN'
          Width = 133
        end>
      object RowDetailData: TRowDetailPanelControlEh
        object dbgrdhDetailPenjualan: TDBGridEh
          Left = 0
          Top = 0
          Width = 764
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
              FieldName = 'jumlahBeli'
              Footers = <>
              Title.Caption = 'JUMLAH BELI'
              Width = 78
            end
            item
              EditButtons = <>
              FieldName = 'hargaBeli'
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
  object pnlBawah: TPanel
    Left = 0
    Top = 420
    Width = 820
    Height = 40
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
    object btnPrint: TButton
      Left = 336
      Top = 16
      Width = 75
      Height = 25
      Caption = 'PRINT'
      TabOrder = 3
      OnClick = btnPrintClick
    end
  end
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 820
    Height = 41
    Align = alTop
    Caption = 'LAPORAN PENERIMAAN'
    Color = clSkyBlue
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Stencil'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object frxrprtPenerimaan: TfrxReport
    Version = '4.9.35'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43860.957020150500000000
    ReportOptions.LastChange = 43898.475409178240000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 464
    Top = 276
    Datasets = <
      item
        DataSet = frxdbdtstPenerimaan
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 290.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 98.267780000000000000
        Top = 18.897650000000000000
        Width = 1020.473100000000000000
        object Line1: TfrxLineView
          Top = 56.692950000000000000
          Width = 1031.811690000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line2: TfrxLineView
          Top = 90.708720000000000000
          Width = 1024.252630000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo2: TfrxMemoView
          Left = 7.559060000000000000
          Top = 71.811070000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'TGL')
        end
        object Memo3: TfrxMemoView
          Left = 94.488250000000000000
          Top = 68.031540000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'SUPPLIER')
        end
        object Memo4: TfrxMemoView
          Left = 302.362400000000000000
          Top = 71.811070000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'DISKON')
        end
        object Memo5: TfrxMemoView
          Left = 408.189240000000000000
          Top = 71.811070000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'PPN')
        end
        object Memo6: TfrxMemoView
          Left = 502.677490000000000000
          Top = 56.692950000000000000
          Width = 83.149660000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'TOTAL '
            'PEMBELIAN')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 593.386210000000000000
          Top = 56.692950000000000000
          Width = 83.149660000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'TOTAL '
            'PEMBAYARAN')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 684.094930000000000000
          Top = 56.692950000000000000
          Width = 83.149660000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'SISA'
            'PEMBAYARAN')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 778.583180000000000000
          Top = 56.692950000000000000
          Width = 83.149660000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'STATUS'
            'PEMBAYARAN')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 907.087200000000000000
          Top = 60.472480000000000000
          Width = 83.149660000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'KATEGORI')
          ParentFont = False
        end
      end
      object Memo1: TfrxMemoView
        Left = 438.425480000000000000
        Top = 15.118120000000000000
        Width = 185.196970000000000000
        Height = 37.795300000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8 = (
          'Laporan Penerimaan'
          'APOTIK LIVE MEDIKA')
        ParentFont = False
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 177.637910000000000000
        Width = 1020.473100000000000000
        DataSet = frxdbdtstPenerimaan
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1tglPenerimaanObat: TfrxMemoView
          Left = 7.559060000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'tglPenerimaanObat'
          DataSet = frxdbdtstPenerimaan
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."tglPenerimaanObat"]')
        end
        object frxDBDataset1namaSupplier: TfrxMemoView
          Left = 94.488250000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'namaSupplier'
          DataSet = frxdbdtstPenerimaan
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."namaSupplier"]')
        end
        object frxDBDataset1totalHargaBeli: TfrxMemoView
          Left = 506.457020000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'totalHargaBeli'
          DataSet = frxdbdtstPenerimaan
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."totalHargaBeli"]')
        end
        object frxDBDataset1diskon: TfrxMemoView
          Left = 302.362400000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'diskon'
          DataSet = frxdbdtstPenerimaan
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."diskon"]')
        end
        object frxDBDataset1ppn: TfrxMemoView
          Left = 408.189240000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'ppn'
          DataSet = frxdbdtstPenerimaan
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."ppn"]')
        end
        object frxDBDataset1jumlahPembayaranBeli: TfrxMemoView
          Left = 593.386210000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'jumlahPembayaranBeli'
          DataSet = frxdbdtstPenerimaan
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."jumlahPembayaranBeli"]')
        end
        object frxDBDataset1sisaPembayaranBeli: TfrxMemoView
          Left = 684.094930000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'sisaPembayaranBeli'
          DataSet = frxdbdtstPenerimaan
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."sisaPembayaranBeli"]')
        end
        object frxDBDataset1statusPembayaran: TfrxMemoView
          Left = 778.583180000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'statusPembayaran'
          DataSet = frxdbdtstPenerimaan
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."statusPembayaran"]')
        end
        object frxDBDataset1kategoriPenerimaan: TfrxMemoView
          Left = 907.087200000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'kategoriPenerimaan'
          DataSet = frxdbdtstPenerimaan
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."kategoriPenerimaan"]')
        end
      end
      object Footer1: TfrxFooter
        Height = 56.692950000000000000
        Top = 222.992270000000000000
        Width = 1020.473100000000000000
        object Memo11: TfrxMemoView
          Left = 377.953000000000000000
          Top = 3.779530000000000000
          Width = 154.960730000000000000
          Height = 52.913420000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            
              'TOTAL PEMBELIAN : [SUM(<frxDBDataset1."totalHargaBeli">,MasterDa' +
              'ta1,2)]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 551.811380000000000000
          Top = 3.779530000000000000
          Width = 158.740260000000000000
          Height = 52.913420000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            
              'TOTAL PEMBAYARAN : [SUM(<frxDBDataset1."jumlahPembayaranBeli">,M' +
              'asterData1,2)]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 725.669760000000000000
          Top = 3.779530000000000000
          Width = 230.551330000000000000
          Height = 49.133890000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            
              'TOTAL SISA PEMBAYARAN : [SUM(<frxDBDataset1."sisaPembayaranBeli"' +
              '>,MasterData1,2)]')
          ParentFont = False
        end
      end
    end
  end
  object frxdbdtstPenerimaan: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'noPenerimaanObat=noPenerimaanObat'
      'tglPenerimaanObat=tglPenerimaanObat'
      'kdSupplier=kdSupplier'
      'namaSupplier=namaSupplier'
      'totalHargaBeli=totalHargaBeli'
      'totalHargaJual=totalHargaJual'
      'diskon=diskon'
      'jumlahPembayaranBeli=jumlahPembayaranBeli'
      'ppn=ppn'
      'sisaPembayaranBeli=sisaPembayaranBeli'
      'statusPembayaran=statusPembayaran'
      'kategoriPenerimaan=kategoriPenerimaan'
      'createDate=createDate'
      'createId=createId'
      'modifDate=modifDate'
      'modifId=modifId')
    DataSet = DM.qryPenerimaanObat
    BCDToCurrency = False
    Left = 584
    Top = 281
  end
  object frxpdfxprt1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 544
    Top = 353
  end
end
