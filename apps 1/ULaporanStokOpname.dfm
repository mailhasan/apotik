object FLaporangStokOpname: TFLaporangStokOpname
  Left = 192
  Top = 124
  Width = 1025
  Height = 500
  Align = alClient
  Caption = 'LAPORANG STOK OPNAME'
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
    Width = 1009
    Height = 41
    Align = alTop
    Caption = 'LAPORAN STOK OPNAME'
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
    Width = 1009
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
  object pnlTengah: TPanel
    Left = 0
    Top = 41
    Width = 1009
    Height = 381
    Align = alClient
    TabOrder = 2
    object dbgrdhStokOpname: TDBGridEh
      Left = 1
      Top = 1
      Width = 1007
      Height = 379
      Align = alClient
      DataGrouping.GroupLevels = <>
      DataSource = DM.dsStokOpname
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
          Title.Caption = 'TGL STOK OPNAME'
          Width = 121
        end
        item
          EditButtons = <>
          FieldName = 'kdObat'
          Footers = <>
          Title.Caption = 'KODE OBAT'
          Width = 99
        end
        item
          EditButtons = <>
          FieldName = 'namaObat'
          Footers = <>
          Title.Caption = 'NAMA OBAT'
          Width = 159
        end
        item
          EditButtons = <>
          FieldName = 'satuanObat'
          Footers = <>
          Title.Caption = 'SATUAN OBAT'
          Width = 170
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
          Width = 123
        end
        item
          EditButtons = <>
          FieldName = 'keterangan'
          Footers = <>
          Title.Caption = 'KETERANGAN'
          Width = 212
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object frxrprtStokOpname: TfrxReport
    Version = '4.9.35'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43898.545804687500000000
    ReportOptions.LastChange = 43898.557729247690000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 400
    Top = 329
    Datasets = <
      item
        DataSet = frxdbdtstStokOpname
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
        Height = 105.826840000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          Left = 423.307360000000000000
          Top = 3.779530000000000000
          Width = 204.094620000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'LAPORAN STOK OPNAME'
            'APOTIK LIVE MEDIKA')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 56.692950000000000000
          Width = 1054.488870000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line2: TfrxLineView
          Top = 94.488250000000000000
          Width = 1062.047930000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo2: TfrxMemoView
          Left = 7.559060000000000000
          Top = 71.811070000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'TGL/JAM')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 151.181200000000000000
          Top = 68.031540000000000000
          Width = 94.488250000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'KODE OBAT')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 264.567100000000000000
          Top = 71.811070000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'NAMA OBAT')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 453.543600000000000000
          Top = 71.811070000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'SATUAN')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 642.520100000000000000
          Top = 71.811070000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'STOK')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 729.449290000000000000
          Top = 71.811070000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'STOK REAL')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 831.496600000000000000
          Top = 71.811070000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'KETERANGAN')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 185.196970000000000000
        Width = 1046.929810000000000000
        DataSet = frxdbdtstStokOpname
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1kdObat: TfrxMemoView
          Left = 154.960730000000000000
          Top = 3.779530000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'kdObat'
          DataSet = frxdbdtstStokOpname
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."kdObat"]')
          ParentFont = False
        end
        object frxDBDataset1namaObat: TfrxMemoView
          Left = 264.567100000000000000
          Top = 3.779530000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'namaObat'
          DataSet = frxdbdtstStokOpname
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."namaObat"]')
          ParentFont = False
        end
        object frxDBDataset1satuanObat: TfrxMemoView
          Left = 453.543600000000000000
          Top = 3.779530000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'satuanObat'
          DataSet = frxdbdtstStokOpname
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."satuanObat"]')
          ParentFont = False
        end
        object frxDBDataset1jumlahStok: TfrxMemoView
          Left = 642.520100000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'jumlahStok'
          DataSet = frxdbdtstStokOpname
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."jumlahStok"]')
          ParentFont = False
        end
        object frxDBDataset1jumlahStokReal: TfrxMemoView
          Left = 729.449290000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'jumlahStokReal'
          DataSet = frxdbdtstStokOpname
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."jumlahStokReal"]')
          ParentFont = False
        end
        object frxDBDataset1keterangan: TfrxMemoView
          Left = 831.496600000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'keterangan'
          DataSet = frxdbdtstStokOpname
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."keterangan"]')
          ParentFont = False
        end
        object frxDBDataset1tglStokOpname: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'tglStokOpname'
          DataSet = frxdbdtstStokOpname
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."tglStokOpname"]')
          ParentFont = False
        end
      end
    end
  end
  object frxdbdtstStokOpname: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = DM.qryStokOpname
    BCDToCurrency = False
    Left = 536
    Top = 321
  end
  object frxpdfxprtStok: TfrxPDFExport
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
    Left = 512
    Top = 369
  end
end
