object FormMONITORINGSTOK: TFormMONITORINGSTOK
  Left = 191
  Top = 124
  Width = 865
  Height = 535
  Caption = 'MONITORING STOK'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 849
    Height = 41
    Align = alTop
    Caption = 'Dalam Tahap Testing'
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
    Top = 456
    Width = 849
    Height = 41
    Align = alBottom
    Color = clSkyBlue
    TabOrder = 1
  end
  object pnlTengah: TPanel
    Left = 0
    Top = 41
    Width = 849
    Height = 415
    Align = alClient
    TabOrder = 2
    object grpFilter: TGroupBox
      Left = 1
      Top = 1
      Width = 847
      Height = 110
      Align = alTop
      Caption = 'FILTER'
      TabOrder = 0
      object lblNamaObat: TLabel
        Left = 9
        Top = 17
        Width = 63
        Height = 13
        Caption = 'NAMA OBAT'
      end
      object lblKodeObat: TLabel
        Left = 259
        Top = 13
        Width = 62
        Height = 13
        Caption = 'KODE OBAT'
      end
      object lblSatuan: TLabel
        Left = 381
        Top = 15
        Width = 44
        Height = 13
        Caption = 'SATUAN'
      end
      object lblJumlahStok: TLabel
        Left = 507
        Top = 13
        Width = 75
        Height = 13
        Caption = 'JUMLAH STOK'
      end
      object lblMulai: TLabel
        Left = 9
        Top = 60
        Width = 33
        Height = 13
        Caption = 'MULAI'
      end
      object lblSampai: TLabel
        Left = 139
        Top = 60
        Width = 40
        Height = 13
        Caption = 'SAMPAI'
      end
      object cbbNamaObat: TcxLookupComboBox
        Left = 7
        Top = 33
        Properties.HideSelection = False
        Properties.KeyFieldNames = 'namaObat'
        Properties.ListColumns = <
          item
            Caption = 'NAMA OBAT'
            Fixed = True
            FieldName = 'namaObat'
          end>
        Properties.ListSource = DM.dsObat
        TabOrder = 0
        OnDblClick = cbbNamaObatDblClick
        OnKeyPress = cbbNamaObatKeyPress
        Width = 244
      end
      object cxtxtdtKodeObat: TcxTextEdit
        Left = 258
        Top = 34
        Enabled = False
        StyleDisabled.BorderColor = clWhite
        TabOrder = 1
        Width = 121
      end
      object cxtxtdtSatuan: TcxTextEdit
        Left = 382
        Top = 32
        Enabled = False
        StyleDisabled.Color = clWindow
        TabOrder = 2
        Width = 121
      end
      object cxtxtdtJumlahStok: TcxTextEdit
        Left = 507
        Top = 32
        Enabled = False
        StyleDisabled.Color = clWindow
        TabOrder = 3
        Width = 89
      end
      object dtpTgl: TDateTimePicker
        Left = 10
        Top = 75
        Width = 121
        Height = 21
        Date = 43712.275516273150000000
        Time = 43712.275516273150000000
        TabOrder = 4
      end
      object dtpSampai: TDateTimePicker
        Left = 139
        Top = 76
        Width = 113
        Height = 21
        Date = 43730.946688518520000000
        Time = 43730.946688518520000000
        TabOrder = 5
      end
      object btnTampil: TcxButton
        Left = 261
        Top = 72
        Width = 75
        Height = 25
        Caption = 'TAMPIL'
        TabOrder = 6
        OnClick = btnTampilClick
      end
      object btnRiwayatStokOpname: TcxButton
        Left = 340
        Top = 73
        Width = 164
        Height = 25
        Caption = 'RIWAYAT STOK OPNAME'
        TabOrder = 7
        OnClick = btnRiwayatStokOpnameClick
      end
    end
    object cxgrpbxPENERIMAAN: TcxGroupBox
      Left = 1
      Top = 111
      Align = alLeft
      Caption = 'PENERIMAAN (+)'
      TabOrder = 1
      Height = 303
      Width = 233
      object cxgrdPENERIMAAN: TcxGrid
        Left = 3
        Top = 15
        Width = 227
        Height = 278
        Align = alClient
        TabOrder = 0
        object cxgrdbtblvwPENERIMAAN: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsStokPeneriman
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              Column = cxgrdbclmnPENERIMAANjumlahPenerimaan
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          object cxgrdbclmnPENERIMAANtglPenerimaanObat: TcxGridDBColumn
            Caption = 'TGL'
            DataBinding.FieldName = 'tglPenerimaanObat'
            Width = 107
          end
          object cxgrdbclmnPENERIMAANjumlahPenerimaan: TcxGridDBColumn
            Caption = 'JML'
            DataBinding.FieldName = 'jumlahIsiBeli'
            Width = 86
          end
        end
        object cxgrdlvlPENERIMAAN: TcxGridLevel
          GridView = cxgrdbtblvwPENERIMAAN
        end
      end
    end
    object cxgrpbxSTOKMANUAL: TcxGroupBox
      Left = 234
      Top = 111
      Align = alLeft
      Caption = 'STOK MANUAL (+)'
      TabOrder = 2
      Height = 303
      Width = 217
      object cxgrdTambahStok: TcxGrid
        Left = 3
        Top = 15
        Width = 211
        Height = 278
        Align = alClient
        TabOrder = 0
        object cxgrdbtblvwTambahStok: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsTAMBAHSTOKMANUAL
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              FieldName = 'jmlTambahStok'
              Column = cxgrdbclmnTambahStokjmlTambahStok
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          object cxgrdbclmnTambahStoktglTambahStok: TcxGridDBColumn
            Caption = 'TGL'
            DataBinding.FieldName = 'tglTambahStok'
            Width = 77
          end
          object cxgrdbclmnTambahStokjmlTambahStok: TcxGridDBColumn
            Caption = 'STOK MANUAL'
            DataBinding.FieldName = 'jmlTambahStok'
            Width = 99
          end
        end
        object cxgrdlvlTambahStok: TcxGridLevel
          GridView = cxgrdbtblvwTambahStok
        end
      end
    end
    object cxgrpbxRETUR: TcxGroupBox
      Left = 451
      Top = 111
      Align = alLeft
      Caption = 'RETUR'
      TabOrder = 3
      Height = 303
      Width = 205
      object cxgrdRetur: TcxGrid
        Left = 3
        Top = 15
        Width = 199
        Height = 278
        Align = alClient
        TabOrder = 0
        object cxgrdbtblvwRetur: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsRetur
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              Column = cxgrdbclmnReturjumlah
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          object cxgrdbclmnReturtglReturSupplier: TcxGridDBColumn
            Caption = 'TGL'
            DataBinding.FieldName = 'tglReturSupplier'
          end
          object cxgrdbclmnReturjumlah: TcxGridDBColumn
            Caption = 'JUMLAH'
            DataBinding.FieldName = 'jumlah'
          end
        end
        object cxgrdlvlRetur: TcxGridLevel
          GridView = cxgrdbtblvwRetur
        end
      end
    end
    object cxgrpbxPENJUALAN: TcxGroupBox
      Left = 656
      Top = 111
      Align = alLeft
      Caption = 'PENJUALAN'
      TabOrder = 4
      Height = 303
      Width = 189
      object cxgrdPENJUALAN: TcxGrid
        Left = 3
        Top = 15
        Width = 183
        Height = 278
        Align = alClient
        TabOrder = 0
        object cxgrdbtblvwPENJUALAN: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsPENJUALAN
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              Column = cxgrdbclmnPENJUALANjumlahPenjualan
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          object cxgrdbclmnPENJUALANtglPenjualan: TcxGridDBColumn
            Caption = 'TGL'
            DataBinding.FieldName = 'tglPenjualan'
            Width = 87
          end
          object cxgrdbclmnPENJUALANjumlahPenjualan: TcxGridDBColumn
            Caption = 'JML'
            DataBinding.FieldName = 'jumlahPenjualan'
            Width = 66
          end
        end
        object cxgrdlvlPENJUALAN: TcxGridLevel
          GridView = cxgrdbtblvwPENJUALAN
        end
      end
    end
  end
  object qryStokPenerimaan: TADOQuery
    Connection = DM.conApotik
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      '    `penerimaanobat`.`noPenerimaanObat`'
      '    , `penerimaanobat`.`tglPenerimaanObat`'
      '    , `detailpenerimaanobat`.`kdObat`'
      '    , `detailpenerimaanobat`.`namaObat`'
      '    ,`detailpenerimaanobat`.`jumlahIsiBeli`'
      'FROM'
      '    `detailpenerimaanobat`'
      '    INNER JOIN `penerimaanobat` '
      
        '        ON (`detailpenerimaanobat`.`noPenerimaanObat` = `penerim' +
        'aanobat`.`noPenerimaanObat`)')
    Left = 625
    Top = 43
  end
  object dsStokPeneriman: TDataSource
    DataSet = qryStokPenerimaan
    Left = 745
    Top = 53
  end
  object qryTAMBAHSTOKMANUAL: TADOQuery
    Connection = DM.conApotik
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      '    `tglTambahStok`'
      '    , `kdObat`'
      '    , `namaObat`'
      '    , (`jmlTambahStok`) AS `jmlTambahStok`'
      'FROM'
      '    `historitambahstok`')
    Left = 655
    Top = 90
  end
  object dsTAMBAHSTOKMANUAL: TDataSource
    DataSet = qryTAMBAHSTOKMANUAL
    Left = 724
    Top = 121
  end
  object qryPENJUALAN: TADOQuery
    Active = True
    Connection = DM.conApotik
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      '    `penjualan`.`noPenjualan`'
      '    , `penjualan`.`tglPenjualan`'
      '    , `detailpenjualan`.`kdObat`'
      '    , `detailpenjualan`.`namaObat`'
      '    , (`detailpenjualan`.`jumlahJual`) AS `jumlahPenjualan`'
      'FROM'
      '    `penjualan`'
      '    INNER JOIN `detailpenjualan` '
      
        '        ON (`penjualan`.`noPenjualan` = `detailpenjualan`.`noPen' +
        'jualan`)'
      '')
    Left = 678
    Top = 165
  end
  object dsPENJUALAN: TDataSource
    DataSet = qryPENJUALAN
    Left = 752
    Top = 162
  end
  object qryJmlRetur: TADOQuery
    Connection = DM.conApotik
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      '    `retursupplier`.`noReturSupplier`'
      '    , `retursupplier`.`tglPenerimaanObat`'
      '    , `retursupplier`.`tglReturSupplier`'
      '    , `detailretursupplier`.`kdObat`'
      '    , `detailretursupplier`.`namaObat`'
      '    , (`detailretursupplier`.`hargaBeli`) AS jumlah'
      'FROM'
      '    `detailretursupplier`'
      '    INNER JOIN `retursupplier` '
      
        '        ON (`detailretursupplier`.`noReturSupplier` = `retursupp' +
        'lier`.`noReturSupplier`) '
      '')
    Left = 543
    Top = 102
  end
  object dsRetur: TDataSource
    DataSet = qryJmlRetur
    Left = 590
    Top = 138
  end
end
