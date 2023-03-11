object FLaporangPenjualan: TFLaporangPenjualan
  Left = 192
  Top = 124
  Width = 870
  Height = 500
  Caption = 'LAPORAN PENJUALAN'
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
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 854
    Height = 41
    Align = alTop
    Caption = 'LAPORAN PENJUALAN'
    Color = clSkyBlue
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Stencil'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object pnlBawah: TPanel
    Left = 0
    Top = 422
    Width = 854
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
    object btnPrint: TcxButton
      Left = 336
      Top = 16
      Width = 75
      Height = 25
      Caption = 'PRINT'
      TabOrder = 3
      OnClick = btnPrintClick
    end
  end
  object dbgrdhiPenjualan: TDBGridEh
    Left = 0
    Top = 41
    Width = 854
    Height = 381
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
    TabOrder = 2
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
        Width = 800
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
  object frxrprtPenjualan: TfrxReport
    Version = '4.9.35'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43897.534575335700000000
    ReportOptions.LastChange = 43898.467836990740000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 464
    Top = 304
    Datasets = <
      item
        DataSet = frxdbdtstPenjualan
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
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 109.606370000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Line1: TfrxLineView
          Top = 52.913420000000000000
          Width = 1046.929810000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line2: TfrxLineView
          Top = 102.047310000000000000
          Width = 1050.709340000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo2: TfrxMemoView
          Left = 7.559060000000000000
          Top = 56.692950000000000000
          Width = 98.267780000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'TGL PENJUALAN')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 166.299320000000000000
          Top = 60.472480000000000000
          Width = 117.165430000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'NO PENJUALAN')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 340.157700000000000000
          Top = 71.811070000000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'ASAL RESEP')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 812.598950000000000000
          Top = 60.472480000000000000
          Width = 132.283550000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'TOTAL PENJUALAN')
          ParentFont = False
        end
      end
      object Memo1: TfrxMemoView
        Left = 381.732530000000000000
        Top = 15.118120000000000000
        Width = 238.110390000000000000
        Height = 37.795300000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8 = (
          'laporan penjualan'
          'APOTIK LIVE MEDIKA')
        ParentFont = False
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 188.976500000000000000
        Width = 1046.929810000000000000
        DataSet = frxdbdtstPenjualan
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1tglPenjualan: TfrxMemoView
          Left = 11.338590000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'tglPenjualan'
          DataSet = frxdbdtstPenjualan
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."tglPenjualan"]')
          ParentFont = False
        end
        object frxDBDataset1noPenjualan: TfrxMemoView
          Left = 18.897650000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'noPenjualan'
          DataSet = frxdbdtstPenjualan
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."noPenjualan"]')
          ParentFont = False
        end
        object frxDBDataset1totalPenjualan: TfrxMemoView
          Left = 831.496600000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxdbdtstPenjualan
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."totalPenjualan"]')
          ParentFont = False
        end
        object frxDBDataset1asalResepPasien: TfrxMemoView
          Left = 347.716760000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'asalResepPasien'
          DataSet = frxdbdtstPenjualan
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."asalResepPasien"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Height = 22.677180000000000000
        Top = 234.330860000000000000
        Width = 1046.929810000000000000
        object Memo6: TfrxMemoView
          Left = 752.126470000000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'TOTAL : [SUM(<frxDBDataset1."totalPenjualan">,MasterData1,2)]')
          ParentFont = False
        end
      end
    end
  end
  object frxdbdtstPenjualan: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = DM.qryPenjualan
    BCDToCurrency = False
    Left = 560
    Top = 304
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
    Left = 488
    Top = 360
  end
end
