object FDataSupplier: TFDataSupplier
  Left = 387
  Top = 217
  Width = 651
  Height = 414
  Caption = 'DATA SUPPLIER'
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
    Width = 635
    Height = 41
    Align = alTop
    Caption = 'DAFTAR DATA SUPPLIER'
    Color = clSkyBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object pnlTengah: TPanel
    Left = 0
    Top = 41
    Width = 635
    Height = 294
    Align = alClient
    TabOrder = 1
    object dbgrdhSupplier: TDBGridEh
      Left = 1
      Top = 1
      Width = 633
      Height = 292
      Align = alClient
      DataGrouping.GroupLevels = <>
      DataSource = DM.dsSupplier
      DrawMemoText = True
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      IndicatorOptions = [gioShowRowIndicatorEh]
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          EditButtons = <>
          FieldName = 'kdSupplier'
          Footers = <>
          Title.Caption = 'KODE'
          Width = 59
        end
        item
          EditButtons = <>
          FieldName = 'namaSupplier'
          Footers = <>
          Title.Caption = 'NAMA SUPPLIER'
          Width = 177
        end
        item
          EditButtons = <>
          FieldName = 'alamat'
          Footers = <>
          Title.Caption = 'ALAMAT'
          Width = 116
        end
        item
          EditButtons = <>
          FieldName = 'telpone'
          Footers = <>
          Title.Caption = 'TELEPONE'
          Width = 141
        end
        item
          EditButtons = <>
          FieldName = 'status'
          Footers = <>
          Title.Caption = 'STATUS'
          Width = 121
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object pnlBawah: TPanel
    Left = 0
    Top = 335
    Width = 635
    Height = 41
    Align = alBottom
    Color = clSkyBlue
    TabOrder = 2
    object lblCari: TLabel
      Left = 16
      Top = 16
      Width = 25
      Height = 13
      Caption = 'CARI'
    end
    object edtCari: TEdit
      Left = 48
      Top = 8
      Width = 169
      Height = 21
      TabOrder = 0
      OnChange = edtCariChange
    end
    object btnTambah: TButton
      Left = 232
      Top = 8
      Width = 75
      Height = 25
      Caption = 'TAMBAH'
      TabOrder = 1
      OnClick = btnTambahClick
    end
    object btnUbah: TButton
      Left = 312
      Top = 8
      Width = 75
      Height = 25
      Caption = 'UBAH'
      TabOrder = 2
      OnClick = btnUbahClick
    end
    object btnHapus: TButton
      Left = 392
      Top = 8
      Width = 75
      Height = 25
      Caption = 'HAPUS'
      TabOrder = 3
      OnClick = btnHapusClick
    end
    object btnKeluar: TButton
      Left = 472
      Top = 8
      Width = 75
      Height = 25
      Caption = 'KELUAR'
      TabOrder = 4
      OnClick = btnKeluarClick
    end
  end
end
