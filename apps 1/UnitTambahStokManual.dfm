object FormTambahStokManual: TFormTambahStokManual
  Left = 191
  Top = 124
  Width = 818
  Height = 480
  Caption = 'TAMBAH STOK MANUAL'
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
  object cxgrpbxDataTambahStokObat: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    Caption = 'DATA TAMBAH STOK OBAT'
    TabOrder = 0
    Height = 79
    Width = 802
    object lblKodeObat: TLabel
      Left = 10
      Top = 23
      Width = 62
      Height = 13
      Caption = 'KODE OBAT'
    end
    object lblNamaObat: TLabel
      Left = 138
      Top = 23
      Width = 63
      Height = 13
      Caption = 'NAMA OBAT'
    end
    object lblSatuan: TLabel
      Left = 346
      Top = 23
      Width = 44
      Height = 13
      Caption = 'SATUAN'
    end
    object lblJumlahStok: TLabel
      Left = 474
      Top = 23
      Width = 102
      Height = 13
      Caption = 'JUMLAH SISA STOK'
    end
    object lblJumlahJual: TLabel
      Left = 583
      Top = 19
      Width = 123
      Height = 13
      Caption = 'JUMLAH TAMBAH STOK'
    end
    object cxtxtdtKodeObat: TcxTextEdit
      Left = 10
      Top = 39
      TabOrder = 0
      Width = 121
    end
    object cbbNamaObat: TcxLookupComboBox
      Left = 138
      Top = 39
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
      Width = 201
    end
    object cxtxtdtSatuan: TcxTextEdit
      Left = 346
      Top = 39
      Enabled = False
      StyleDisabled.Color = clWindow
      TabOrder = 2
      Width = 121
    end
    object cxtxtdtJumlahStok: TcxTextEdit
      Left = 474
      Top = 39
      Enabled = False
      StyleDisabled.Color = clWindow
      TabOrder = 3
      Width = 101
    end
    object cxtxtdtJumlahTambah: TcxTextEdit
      Left = 583
      Top = 37
      TabOrder = 4
      OnKeyPress = cxtxtdtJumlahTambahKeyPress
      Width = 121
    end
    object btnTAMBAH: TcxButton
      Left = 711
      Top = 34
      Width = 75
      Height = 25
      Caption = 'TAMBAH'
      TabOrder = 5
      OnClick = btnTAMBAHClick
    end
  end
  object cxgrpbxRIWAYATTAMBAHSTOKHARIINI: TcxGroupBox
    Left = 0
    Top = 79
    Align = alClient
    Caption = 'RIWAYAT TAMBAH STOK HARI INI'
    TabOrder = 1
    Height = 363
    Width = 802
    object cxgrd1: TcxGrid
      Left = 3
      Top = 15
      Width = 796
      Height = 338
      Align = alClient
      PopupMenu = pm1
      TabOrder = 0
      object cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = DM.dshistoritambahstok
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        object cxgrdbclmnGrid1DBTableView1tglTambahStok: TcxGridDBColumn
          Caption = 'TGL'
          DataBinding.FieldName = 'tglTambahStok'
        end
        object cxgrdbclmnGrid1DBTableView1kdObat: TcxGridDBColumn
          Caption = 'KODE OBAT'
          DataBinding.FieldName = 'kdObat'
          Width = 67
        end
        object cxgrdbclmnGrid1DBTableView1namaObat: TcxGridDBColumn
          Caption = 'NAMA OBAT'
          DataBinding.FieldName = 'namaObat'
          Width = 208
        end
        object cxgrdbclmnGrid1DBTableView1jmlSisaStok: TcxGridDBColumn
          Caption = 'JML SISA STOK'
          DataBinding.FieldName = 'jmlSisaStok'
          Width = 132
        end
        object cxgrdbclmnGrid1DBTableView1jmlTambahStok: TcxGridDBColumn
          Caption = 'JML TAMBAH STOK'
          DataBinding.FieldName = 'jmlTambahStok'
          Width = 105
        end
        object cxgrdbclmnGrid1DBTableView1createDate: TcxGridDBColumn
          Caption = 'CREATE DATE'
          DataBinding.FieldName = 'createDate'
        end
        object cxgrdbclmnGrid1DBTableView1createUserId: TcxGridDBColumn
          Caption = 'CREATE USER'
          DataBinding.FieldName = 'createUserId'
        end
      end
      object cxgrdlvlGrid1Level1: TcxGridLevel
        GridView = cxgrdbtblvwGrid1DBTableView1
      end
    end
  end
  object pm1: TPopupMenu
    Left = 402
    Top = 245
    object HAPUS1: TMenuItem
      Caption = 'HAPUS'
      OnClick = HAPUS1Click
    end
  end
end
