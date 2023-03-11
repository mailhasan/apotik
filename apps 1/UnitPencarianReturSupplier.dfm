object FormpPencarianReturSupplier: TFormpPencarianReturSupplier
  Left = 369
  Top = 89
  Width = 603
  Height = 574
  Caption = 'PENCARIAN RETUR SUPPLIER'
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
  object cxgrpbxCari: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    Caption = 'CARI'
    TabOrder = 0
    Height = 62
    Width = 587
    object cxlbl1: TcxLabel
      Left = 172
      Top = 26
      Caption = 'SUPPLIER'
    end
    object cxtxtdtSUPPLIER: TcxTextEdit
      Left = 243
      Top = 24
      Properties.OnChange = cxtxtdtSUPPLIERPropertiesChange
      TabOrder = 1
      Text = 'cxtxtdtSUPPLIER'
      Width = 227
    end
    object cxlblKATEGORI: TcxLabel
      Left = 6
      Top = 26
      Caption = 'SUPPLIER'
    end
  end
  object cxgrpbxListDataSupplier: TcxGroupBox
    Left = 0
    Top = 62
    Align = alClient
    Caption = 'LIST DATA SUPPLIER'
    TabOrder = 1
    Height = 474
    Width = 587
    object cxgrdSUPPLIERRETUR: TcxGrid
      Left = 3
      Top = 15
      Width = 581
      Height = 449
      Align = alClient
      TabOrder = 0
      object cxgrdbtblvwSUPPLIERRETUR: TcxGridDBTableView
        OnDblClick = cxgrdbtblvwSUPPLIERRETURDblClick
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = DM.dsSupplierRetur
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        object cxgrdbclmnSUPPLIERRETURnamaSupplier: TcxGridDBColumn
          Caption = 'NAMA SUPPLIER'
          DataBinding.FieldName = 'namaSupplier'
          Width = 232
        end
        object cxgrdbclmnSUPPLIERRETURtglPenerimaanObat: TcxGridDBColumn
          Caption = 'TGL PENERIMAAN'
          DataBinding.FieldName = 'tglPenerimaanObat'
          Width = 106
        end
        object cxgrdbclmnSUPPLIERRETURkategoriPenerimaan: TcxGridDBColumn
          Caption = 'KATEGORI'
          DataBinding.FieldName = 'kategoriPenerimaan'
          Width = 98
        end
        object cxgrdbclmnSUPPLIERRETURnoPenerimaanObat: TcxGridDBColumn
          Caption = 'NO PENERIMAAN'
          DataBinding.FieldName = 'noPenerimaanObat'
          Width = 95
        end
      end
      object cxgrdlvlSUPPLIERRETUR: TcxGridLevel
        GridView = cxgrdbtblvwSUPPLIERRETUR
      end
    end
  end
end
