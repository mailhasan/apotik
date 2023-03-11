object FormCariBerdasarkanNamaObat: TFormCariBerdasarkanNamaObat
  Left = 245
  Top = 136
  Width = 928
  Height = 480
  Caption = 'LIST PENERIMAAN / CARI BERDASARKAN NAMA OBAT'
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
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 912
    Height = 41
    Align = alTop
    Caption = 'LIST CARI BERDASKAN NAMA OBAT'
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
    Top = 397
    Width = 912
    Height = 45
    Align = alBottom
    Color = clSkyBlue
    TabOrder = 1
    object lblMulai: TLabel
      Left = 7
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
    object lbl1: TLabel
      Left = 257
      Top = 4
      Width = 63
      Height = 13
      Caption = 'NAMA OBAT'
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
      Left = 471
      Top = 12
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
    object cxtxtdtNAMAOBAT: TcxTextEdit
      Left = 257
      Top = 17
      TabOrder = 3
      Text = 'cxtxtdtNAMAOBAT'
      Width = 207
    end
  end
  object pnlTengah: TPanel
    Left = 0
    Top = 41
    Width = 912
    Height = 356
    Align = alClient
    TabOrder = 2
    object cxgrd1: TcxGrid
      Left = 1
      Top = 1
      Width = 910
      Height = 354
      Align = alClient
      TabOrder = 0
      object cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = DM.dsCariNmObatPenerimaan
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        object cxgrdbclmnGrid1DBTableView1noPenerimaanObat: TcxGridDBColumn
          Caption = 'NO PENERIMAAN'
          DataBinding.FieldName = 'noPenerimaanObat'
          Width = 110
        end
        object cxgrdbclmnGrid1DBTableView1tglPenerimaanObat: TcxGridDBColumn
          Caption = 'TGL'
          DataBinding.FieldName = 'tglPenerimaanObat'
          Width = 112
        end
        object cxgrdbclmnGrid1DBTableView1kdSupplier: TcxGridDBColumn
          Caption = 'KD SUPPLIER'
          DataBinding.FieldName = 'kdSupplier'
          Width = 87
        end
        object cxgrdbclmnGrid1DBTableView1namaSupplier: TcxGridDBColumn
          Caption = 'NAMA SUPPLIER'
          DataBinding.FieldName = 'namaSupplier'
          Width = 181
        end
        object cxgrdbclmnGrid1DBTableView1kdObat: TcxGridDBColumn
          Caption = 'KD OBAT'
          DataBinding.FieldName = 'kdObat'
          Width = 95
        end
        object cxgrdbclmnGrid1DBTableView1namaObat: TcxGridDBColumn
          Caption = 'NAMA OBAT'
          DataBinding.FieldName = 'namaObat'
          Width = 358
        end
        object cxgrdbclmnGrid1DBTableView1jumlahIsiBeli: TcxGridDBColumn
          Caption = 'JML'
          DataBinding.FieldName = 'jumlahIsiBeli'
          Width = 75
        end
        object cxgrdbclmnGrid1DBTableView1jmlBeliFaktur: TcxGridDBColumn
          Caption = 'JML BELI FAKTUR'
          DataBinding.FieldName = 'jmlBeliFaktur'
          Width = 72
        end
        object cxgrdbclmnGrid1DBTableView1hargaBeliFaktur: TcxGridDBColumn
          Caption = 'HARGA BELI FAKTUR'
          DataBinding.FieldName = 'hargaBeliFaktur'
        end
      end
      object cxgrdlvlGrid1Level1: TcxGridLevel
        GridView = cxgrdbtblvwGrid1DBTableView1
      end
    end
  end
end
