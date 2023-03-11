object FormJadwalKerja: TFormJadwalKerja
  Left = 192
  Top = 124
  Width = 928
  Height = 480
  Caption = 'JADWAL KERJA'
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
  object pnlTengah: TPanel
    Left = 0
    Top = 41
    Width = 912
    Height = 360
    Align = alClient
    TabOrder = 0
    object cxgrd1: TcxGrid
      Left = 1
      Top = 1
      Width = 910
      Height = 358
      Align = alClient
      TabOrder = 0
      object cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = DM.dsjadwalkerja
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        object cxgrdbclmnGrid1DBTableView1TANGGAL: TcxGridDBColumn
          DataBinding.FieldName = 'TANGGAL'
          Width = 77
        end
        object cxgrdbclmnGrid1DBTableView1PETUGAS: TcxGridDBColumn
          DataBinding.FieldName = 'PETUGAS'
          Width = 220
        end
        object cxgrdbclmnGrid1DBTableView1SHIF: TcxGridDBColumn
          DataBinding.FieldName = 'SHIF'
          Width = 49
        end
        object cxgrdbclmnGrid1DBTableView1JAMMASUK: TcxGridDBColumn
          DataBinding.FieldName = 'JAMMASUK'
          Width = 125
        end
        object cxgrdbclmnGrid1DBTableView1JAMPULANG: TcxGridDBColumn
          DataBinding.FieldName = 'JAMPULANG'
          Width = 129
        end
        object cxgrdbclmnGrid1DBTableView1CREATEDATE: TcxGridDBColumn
          DataBinding.FieldName = 'CREATEDATE'
          Width = 77
        end
        object cxgrdbclmnGrid1DBTableView1CREATEUSER: TcxGridDBColumn
          DataBinding.FieldName = 'CREATEUSER'
          Width = 95
        end
        object cxgrdbclmnGrid1DBTableView1MODIFDATE: TcxGridDBColumn
          DataBinding.FieldName = 'MODIFDATE'
          Width = 85
        end
        object cxgrdbclmnGrid1DBTableView1MODIFUSER: TcxGridDBColumn
          DataBinding.FieldName = 'MODIFUSER'
          Width = 69
        end
      end
      object cxgrdlvlGrid1Level1: TcxGridLevel
        GridView = cxgrdbtblvwGrid1DBTableView1
      end
    end
  end
  object pnlBawah: TPanel
    Left = 0
    Top = 401
    Width = 912
    Height = 41
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
    object btnTambah: TButton
      Left = 335
      Top = 12
      Width = 75
      Height = 25
      Caption = 'TAMBAH'
      TabOrder = 0
      OnClick = btnTambahClick
    end
    object btnUbah: TButton
      Left = 413
      Top = 13
      Width = 75
      Height = 25
      Caption = 'UBAH'
      TabOrder = 1
      OnClick = btnUbahClick
    end
    object btnHapus: TButton
      Left = 492
      Top = 12
      Width = 75
      Height = 25
      Caption = 'HAPUS'
      TabOrder = 2
      OnClick = btnHapusClick
    end
    object btnKeluar: TButton
      Left = 572
      Top = 12
      Width = 75
      Height = 25
      Caption = 'KELUAR'
      TabOrder = 3
      OnClick = btnKeluarClick
    end
    object dtpTgl: TDateTimePicker
      Left = 8
      Top = 16
      Width = 121
      Height = 21
      Date = 43712.275516273150000000
      Time = 43712.275516273150000000
      TabOrder = 4
    end
    object dtpSampai: TDateTimePicker
      Left = 136
      Top = 16
      Width = 113
      Height = 21
      Date = 43730.946688518520000000
      Time = 43730.946688518520000000
      TabOrder = 5
    end
    object btnTampil: TcxButton
      Left = 253
      Top = 14
      Width = 75
      Height = 25
      Caption = 'TAMPIL'
      TabOrder = 6
      OnClick = btnTampilClick
    end
  end
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 912
    Height = 41
    Align = alTop
    Caption = 'DAFTAR DATA JADWAL KERJA'
    Color = clSkyBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
end
