object FLaporanPengeluaranLain: TFLaporanPengeluaranLain
  Left = 228
  Top = 140
  Width = 870
  Height = 500
  Caption = 'LAPORAN PENGELUARAN LAIN-LAIN'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlBawah: TPanel
    Left = 0
    Top = 422
    Width = 854
    Height = 40
    Align = alBottom
    Color = clSkyBlue
    TabOrder = 0
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
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 854
    Height = 41
    Align = alTop
    Caption = 'LAPORAN PENGELUARAN '
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
    Width = 854
    Height = 381
    Align = alClient
    TabOrder = 2
    object dbgrdhLaporanPegeluaran: TDBGridEh
      Left = 1
      Top = 1
      Width = 852
      Height = 379
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
      IndicatorOptions = [gioShowRowIndicatorEh]
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
        end
        item
          DisplayFormat = '#,#0.00;'
          EditButtons = <>
          FieldName = 'pengeluaran'
          Footers = <>
          Title.Caption = 'PENGELUARAN'
          Width = 153
        end
        item
          EditButtons = <>
          FieldName = 'keterangan'
          Footers = <>
          Title.Caption = 'KETERANGAN'
          Width = 435
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object frxrprtLaporanPengeluaran: TfrxReport
    Version = '4.9.35'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43900.898428275500000000
    ReportOptions.LastChange = 43900.903779340270000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 384
    Top = 257
    Datasets = <
      item
        DataSet = frxdbdtstLaporanPengeluaran
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 79.370130000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 226.771800000000000000
          Width = 272.126160000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'LAPORAN PENGELUARAN LAIN-LAIN'
            'APOTIK LIVE MEDIKA')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 68.031540000000000000
          Width = 733.228820000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo2: TfrxMemoView
          Left = 11.338590000000000000
          Top = 45.354360000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'TGL PENGELUARAN')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 162.519790000000000000
          Top = 49.133890000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'PENGELUARAN')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 287.244280000000000000
          Top = 49.133890000000000000
          Width = 147.401670000000000000
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
        Top = 158.740260000000000000
        Width = 718.110700000000000000
        DataSet = frxdbdtstLaporanPengeluaran
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1tglPengeluaran: TfrxMemoView
          Left = 11.338590000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'tglPengeluaran'
          DataSet = frxdbdtstLaporanPengeluaran
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."tglPengeluaran"]')
          ParentFont = False
        end
        object frxDBDataset1pengeluaran: TfrxMemoView
          Left = 162.519790000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxdbdtstLaporanPengeluaran
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."pengeluaran"]')
          ParentFont = False
        end
        object frxDBDataset1keterangan: TfrxMemoView
          Left = 287.244280000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          AutoWidth = True
          DataField = 'keterangan'
          DataSet = frxdbdtstLaporanPengeluaran
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
      end
    end
  end
  object frxdbdtstLaporanPengeluaran: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = DM.qryPengeluaran
    BCDToCurrency = False
    Left = 536
    Top = 257
  end
end
