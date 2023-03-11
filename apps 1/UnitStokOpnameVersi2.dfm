object FormStokOpanameVersi2: TFormStokOpanameVersi2
  Left = 191
  Top = 124
  Width = 928
  Height = 480
  Align = alClient
  Caption = 'STOK OPNAME VERSI 2'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnActivate = FormShow
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlBawah: TPanel
    Left = 0
    Top = 402
    Width = 912
    Height = 40
    Align = alBottom
    Color = clSkyBlue
    TabOrder = 0
    object btnSELESAI: TcxButton
      Left = 433
      Top = 8
      Width = 75
      Height = 25
      Caption = 'SELESAI'
      TabOrder = 0
      OnClick = btnSELESAIClick
    end
    object cxlblCari: TcxLabel
      Left = 11
      Top = 12
      Caption = 'Pencarian / Nama Obat'
    end
    object cxtxtdtNamaObat: TcxTextEdit
      Left = 137
      Top = 10
      TabOrder = 2
      Text = 'cxtxtdtNamaObat'
      OnDblClick = cxtxtdtNamaObatDblClick
      OnKeyPress = cxtxtdtNamaObatKeyPress
      Width = 213
    end
    object btnTAMPIL: TcxButton
      Left = 356
      Top = 8
      Width = 75
      Height = 25
      Caption = 'TAMPIL'
      TabOrder = 3
      OnClick = btnTAMPILClick
    end
  end
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 912
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
    Width = 912
    Height = 361
    Align = alClient
    TabOrder = 2
    object cxgrpbxProsesStokOpname: TcxGroupBox
      Left = 1
      Top = 1
      Align = alTop
      Caption = 'PROSES STOK OPNAME'
      TabOrder = 0
      Height = 114
      Width = 910
      object cxlbl1: TcxLabel
        Left = 8
        Top = 19
        Caption = 'NO STOK OPNAME'
      end
      object cxlbl2: TcxLabel
        Left = 238
        Top = 17
        Caption = 'TGL STOK OPANAME'
      end
      object cxlbl3: TcxLabel
        Left = 9
        Top = 42
        Caption = 'KETERANGAN'
      end
      object cxtxtdtNOSTOKOPNAME: TcxTextEdit
        Left = 113
        Top = 16
        TabOrder = 3
        Text = 'cxtxtdtNOSTOKOPNAME'
        Width = 121
      end
      object cxdtdtTGLSTOKOPNAME: TcxDateEdit
        Left = 356
        Top = 15
        Properties.ShowTime = False
        TabOrder = 4
        Width = 121
      end
      object cxtxtdtKETERANGAN: TcxTextEdit
        Left = 114
        Top = 41
        TabOrder = 5
        Text = 'cxtxtdtKETERANGAN'
        Width = 363
      end
      object cxlblS: TcxLabel
        Left = 10
        Top = 70
        Caption = 'STATUS'
      end
      object cbbSTATUS: TcxComboBox
        Left = 113
        Top = 68
        Properties.Items.Strings = (
          'PROSES'
          'SELESAI')
        TabOrder = 7
        Text = 'cbbSTATUS'
        Width = 119
      end
      object btnPROSES: TcxButton
        Left = 237
        Top = 64
        Width = 75
        Height = 25
        Caption = 'PROSES'
        TabOrder = 8
        OnClick = btnPROSESClick
      end
    end
    object cxgrpbxDAFTARDATASTOKONAME: TcxGroupBox
      Left = 1
      Top = 115
      Align = alClient
      Caption = 'DAFTAR DATA STOK OPNAME'
      TabOrder = 1
      Height = 245
      Width = 910
      object cxgrdSTOKOPNAME: TcxGrid
        Left = 3
        Top = 15
        Width = 904
        Height = 220
        Align = alClient
        TabOrder = 0
        object cxgrdbtblvwSTOKOPNAME: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = DM.dsStokOpname
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object cxgrdbclmnSTOKOPNAMEnamaObat: TcxGridDBColumn
            Caption = 'NAMA OBAT'
            DataBinding.FieldName = 'namaObat'
            Options.Editing = False
            Width = 357
          end
          object cxgrdbclmnSTOKOPNAMEsatuanObat: TcxGridDBColumn
            Caption = 'SATUAN OBAT'
            DataBinding.FieldName = 'satuanObat'
            Options.Editing = False
            Width = 120
          end
          object cxgrdbclmnSTOKOPNAMEjumlahStok: TcxGridDBColumn
            Caption = 'JUMLAH STOK'
            DataBinding.FieldName = 'jumlahStok'
            Options.Editing = False
            Width = 110
          end
          object cxgrdbclmnSTOKOPNAMEColumn1: TcxGridDBColumn
            Caption = 'LOKASI RAK'
            DataBinding.FieldName = 'lokasiRak'
            Options.Editing = False
            Width = 103
          end
          object cxgrdbclmnSTOKOPNAMEjumlahStokReal: TcxGridDBColumn
            Caption = 'JUMLAH REAL STOK'
            DataBinding.FieldName = 'jumlahStokReal'
            Width = 134
          end
        end
        object cxgrdlvlSTOKOPNAME: TcxGridLevel
          GridView = cxgrdbtblvwSTOKOPNAME
        end
      end
    end
  end
end
