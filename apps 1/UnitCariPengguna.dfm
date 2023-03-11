object FormCariPengguna: TFormCariPengguna
  Left = 380
  Top = 176
  Width = 450
  Height = 323
  Caption = 'Cari Pengguna'
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
    Width = 434
    Height = 41
    Align = alTop
    Caption = 'CARI PENGGUNA'
    Color = clSkyBlue
    TabOrder = 0
  end
  object pnlBawah: TPanel
    Left = 0
    Top = 244
    Width = 434
    Height = 41
    Align = alBottom
    Color = clSkyBlue
    TabOrder = 1
    object lbl1: TLabel
      Left = 12
      Top = 13
      Width = 25
      Height = 13
      Caption = 'CARI'
    end
    object btnKeluar: TButton
      Left = 353
      Top = 8
      Width = 75
      Height = 25
      Caption = 'KELUAR'
      TabOrder = 0
      OnClick = btnKeluarClick
    end
    object edtCARI: TEdit
      Left = 51
      Top = 9
      Width = 214
      Height = 21
      TabOrder = 1
      Text = 'edtCARI'
      OnChange = edtCARIChange
      OnDblClick = edtCARIDblClick
    end
  end
  object pnlTengah: TPanel
    Left = 0
    Top = 41
    Width = 434
    Height = 203
    Align = alClient
    TabOrder = 2
    object cxgrd1: TcxGrid
      Left = 1
      Top = 1
      Width = 432
      Height = 201
      Align = alClient
      TabOrder = 0
      object cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView
        OnDblClick = cxgrdbtblvwGrid1DBTableView1DblClick
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = DM.dsPengguna
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        object cxgrdbclmnGrid1DBTableView1namaPengguna: TcxGridDBColumn
          Caption = 'NAMA'
          DataBinding.FieldName = 'namaPengguna'
          Width = 337
        end
        object cxgrdbclmnGrid1DBTableView1status: TcxGridDBColumn
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
