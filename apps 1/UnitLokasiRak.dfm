object FormDataLokasiRak: TFormDataLokasiRak
  Left = 246
  Top = 138
  Width = 508
  Height = 419
  Caption = 'LOKASI RAK'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlBawah: TPanel
    Left = 0
    Top = 340
    Width = 492
    Height = 41
    Align = alBottom
    Color = clSkyBlue
    TabOrder = 0
    object lblCari: TLabel
      Left = 11
      Top = 17
      Width = 25
      Height = 13
      Caption = 'CARI'
    end
    object edtCari: TEdit
      Left = 48
      Top = 8
      Width = 105
      Height = 21
      TabOrder = 0
      OnChange = edtCariChange
      OnDblClick = edtCariDblClick
    end
    object btnTambah: TButton
      Left = 163
      Top = 8
      Width = 75
      Height = 25
      Caption = 'TAMBAH'
      TabOrder = 1
      OnClick = btnTambahClick
    end
    object btnUbah: TButton
      Left = 243
      Top = 8
      Width = 75
      Height = 25
      Caption = 'UBAH'
      TabOrder = 2
      OnClick = btnUbahClick
    end
    object btnHapus: TButton
      Left = 321
      Top = 8
      Width = 75
      Height = 25
      Caption = 'HAPUS'
      TabOrder = 3
      OnClick = btnHapusClick
    end
    object btnKeluar: TButton
      Left = 403
      Top = 8
      Width = 75
      Height = 25
      Caption = 'KELUAR'
      TabOrder = 4
      OnClick = btnKeluarClick
    end
  end
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 492
    Height = 41
    Align = alTop
    Caption = 'DAFTAR DATA LOKASI RAK'
    Color = clSkyBlue
    TabOrder = 1
  end
  object pnlTengah: TPanel
    Left = 0
    Top = 41
    Width = 492
    Height = 299
    Align = alClient
    TabOrder = 2
    object cxgrd1: TcxGrid
      Left = 1
      Top = 1
      Width = 490
      Height = 297
      Align = alClient
      TabOrder = 0
      object cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = DM.dsLokasiRak
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object cxgrdbclmnGrid1DBTableView1ID: TcxGridDBColumn
          DataBinding.FieldName = 'kdLokasi'
          Width = 69
        end
        object cxgrdbclmnGrid1DBTableView1LOKASI: TcxGridDBColumn
          DataBinding.FieldName = 'LOKASI'
        end
        object cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn
          Caption = 'STATUS'
          DataBinding.FieldName = 'status'
        end
      end
      object cxgrdlvlGrid1Level1: TcxGridLevel
        GridView = cxgrdbtblvwGrid1DBTableView1
      end
    end
  end
end
