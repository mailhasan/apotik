object FormUpdateDataRakObat: TFormUpdateDataRakObat
  Left = 192
  Top = 124
  Width = 556
  Height = 480
  Align = alCustom
  Caption = 'UPDATE DATA RAK OBAT'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object cxgrd1: TcxGrid
    Left = 0
    Top = 25
    Width = 603
    Height = 417
    Align = alCustom
    TabOrder = 0
    object cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DM.dsObat
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxgrdbclmnGrid1DBTableView1kdObat: TcxGridDBColumn
        Caption = 'KODE OBAT'
        DataBinding.FieldName = 'kdObat'
        Options.Editing = False
        Width = 104
      end
      object cxgrdbclmnGrid1DBTableView1namaObat: TcxGridDBColumn
        Caption = 'NAMA OBAT'
        DataBinding.FieldName = 'namaObat'
        Options.Editing = False
        Width = 226
      end
      object cxgrdbclmnGrid1DBTableView1satuanObat: TcxGridDBColumn
        Caption = 'SATUAN'
        DataBinding.FieldName = 'satuanObat'
        Options.Editing = False
        Width = 70
      end
      object cxgrdbclmnGrid1DBTableView1lokasiRak: TcxGridDBColumn
        Caption = 'LOKASI RAK'
        DataBinding.FieldName = 'lokasiRak'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'LOKASI'
        Properties.ListColumns = <
          item
            FieldName = 'LOKASI'
          end>
        Properties.ListSource = DM.dsLokasiRak
        Width = 119
      end
    end
    object cxgrdlvlGrid1Level1: TcxGridLevel
      GridView = cxgrdbtblvwGrid1DBTableView1
    end
  end
  object btn1: TcxButton
    Left = 0
    Top = 0
    Width = 540
    Height = 25
    Caption = 'TAMPIL'
    TabOrder = 1
    Align = alTop
  end
end
