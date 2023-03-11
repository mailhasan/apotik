object FormJamShif: TFormJamShif
  Left = 362
  Top = 135
  Width = 555
  Height = 358
  Caption = 'DAFTAR DATA JAM SHIF'
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
    Width = 539
    Height = 41
    Align = alTop
    Caption = 'DAFTAR DATA JAM SHIF'
    Color = clSkyBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object pnlBawah: TPanel
    Left = 0
    Top = 279
    Width = 539
    Height = 41
    Align = alBottom
    Color = clSkyBlue
    TabOrder = 1
    object btnTambah: TButton
      Left = 14
      Top = 10
      Width = 75
      Height = 25
      Caption = 'TAMBAH'
      TabOrder = 0
      OnClick = btnTambahClick
    end
    object btnUbah: TButton
      Left = 92
      Top = 10
      Width = 75
      Height = 25
      Caption = 'UBAH'
      TabOrder = 1
      OnClick = btnUbahClick
    end
    object btnHapus: TButton
      Left = 169
      Top = 10
      Width = 75
      Height = 25
      Caption = 'HAPUS'
      TabOrder = 2
      OnClick = btnHapusClick
    end
    object btnKeluar: TButton
      Left = 247
      Top = 10
      Width = 75
      Height = 25
      Caption = 'KELUAR'
      TabOrder = 3
      OnClick = btnKeluarClick
    end
  end
  object pnlTengah: TPanel
    Left = 0
    Top = 41
    Width = 539
    Height = 238
    Align = alClient
    TabOrder = 2
    object cxgrd1: TcxGrid
      Left = 1
      Top = 1
      Width = 537
      Height = 236
      Align = alClient
      TabOrder = 0
      object cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = DM.dsJamshif
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        object cxgrdbclmnGrid1DBTableView1ID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Width = 20
        end
        object cxgrdbclmnGrid1DBTableView1SHIF: TcxGridDBColumn
          DataBinding.FieldName = 'SHIF'
          Width = 48
        end
        object cxgrdbclmnGrid1DBTableView1JAMMASUK: TcxGridDBColumn
          DataBinding.FieldName = 'JAMMASUK'
          Width = 101
        end
        object cxgrdbclmnGrid1DBTableView1JAMPULANG: TcxGridDBColumn
          DataBinding.FieldName = 'JAMPULANG'
          Width = 96
        end
        object cxgrdbclmnGrid1DBTableView1KETERANGAN: TcxGridDBColumn
          DataBinding.FieldName = 'KETERANGAN'
          Width = 227
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
          Width = 86
        end
      end
      object cxgrdlvlGrid1Level1: TcxGridLevel
        GridView = cxgrdbtblvwGrid1DBTableView1
      end
    end
  end
end
