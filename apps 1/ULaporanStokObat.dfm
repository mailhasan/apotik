object FLaporanStokObat: TFLaporanStokObat
  Left = 192
  Top = 124
  Width = 446
  Height = 500
  Caption = 'LAPORAN STOK OBAT'
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
    Width = 430
    Height = 41
    Align = alTop
    Caption = 'DATA STOK OBAT'
    Color = clSkyBlue
    TabOrder = 0
  end
  object pnlBawah: TPanel
    Left = 0
    Top = 421
    Width = 430
    Height = 41
    Align = alBottom
    Color = clSkyBlue
    TabOrder = 1
    object lblCari: TLabel
      Left = 16
      Top = 16
      Width = 25
      Height = 13
      Caption = 'CARI'
    end
    object btnKeluar: TButton
      Left = 336
      Top = 8
      Width = 75
      Height = 25
      Caption = 'KELUAR'
      TabOrder = 0
      OnClick = btnKeluarClick
    end
    object edtCari: TEdit
      Left = 48
      Top = 8
      Width = 169
      Height = 21
      TabOrder = 1
      OnChange = edtCariChange
    end
  end
  object pnlTengah: TPanel
    Left = 0
    Top = 41
    Width = 430
    Height = 380
    Align = alClient
    TabOrder = 2
    object dbgrdhDokter: TDBGridEh
      Left = 1
      Top = 1
      Width = 428
      Height = 378
      Align = alClient
      DataGrouping.GroupLevels = <>
      DataSource = DM.dsObat
      DrawMemoText = True
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      FooterRowCount = 1
      IndicatorOptions = [gioShowRowIndicatorEh]
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      SumList.Active = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          EditButtons = <>
          FieldName = 'kdObat'
          Footers = <>
          Title.Caption = 'KODE'
          Width = 71
        end
        item
          EditButtons = <>
          FieldName = 'namaObat'
          Footers = <>
          Title.Caption = 'NAMA OBAT'
          Width = 160
        end
        item
          EditButtons = <>
          FieldName = 'satuanObat'
          Footers = <>
          Title.Caption = 'SATUAN'
        end
        item
          EditButtons = <>
          FieldName = 'jumlahStok'
          Footers = <>
          Title.Caption = 'STOK'
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
end
