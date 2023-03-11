object FormListTambahStokManual: TFormListTambahStokManual
  Left = 196
  Top = 124
  Width = 928
  Height = 480
  Caption = 'LIST DATA TAMBAH STOK MANUAL'
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
    Caption = 'LIST DATA TAMBAH STOK MANUAL'
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
        DataController.DataSource = DM.dshistoritambahstok
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        object cxgrdbclmnGrid1DBTableView1tglTambahStok: TcxGridDBColumn
          Caption = 'TANGGAL '
          DataBinding.FieldName = 'tglTambahStok'
        end
        object cxgrdbclmnGrid1DBTableView1kdObat: TcxGridDBColumn
          Caption = 'KODE OBAT'
          DataBinding.FieldName = 'kdObat'
          Width = 84
        end
        object cxgrdbclmnGrid1DBTableView1namaObat: TcxGridDBColumn
          Caption = 'NAMA OBAT'
          DataBinding.FieldName = 'namaObat'
          Width = 173
        end
        object cxgrdbclmnGrid1DBTableView1jmlSisaStok: TcxGridDBColumn
          Caption = 'JML SISA STOK'
          DataBinding.FieldName = 'jmlSisaStok'
          Width = 101
        end
        object cxgrdbclmnGrid1DBTableView1jmlTambahStok: TcxGridDBColumn
          Caption = 'JML TAMBAH STOK'
          DataBinding.FieldName = 'jmlTambahStok'
          Width = 105
        end
        object cxgrdbclmnGrid1DBTableView1createDate: TcxGridDBColumn
          Caption = 'CREATE DATE'
          DataBinding.FieldName = 'createDate'
          Width = 109
        end
        object cxgrdbclmnGrid1DBTableView1createUserId: TcxGridDBColumn
          Caption = 'CREATE USER'
          DataBinding.FieldName = 'createUserId'
          Width = 153
        end
      end
      object cxgrdlvlGrid1Level1: TcxGridLevel
        GridView = cxgrdbtblvwGrid1DBTableView1
      end
    end
  end
end
