object FStorBank: TFStorBank
  Left = 280
  Top = 166
  Width = 979
  Height = 563
  Caption = 'STOR BANK'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTengah: TPanel
    Left = 0
    Top = 41
    Width = 963
    Height = 444
    Align = alClient
    TabOrder = 0
    object dbgrdhPengeluaran: TDBGridEh
      Left = 1
      Top = 1
      Width = 961
      Height = 442
      Align = alClient
      DataGrouping.GroupLevels = <>
      DataSource = DM.dsStorBank
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
          FieldName = 'tglStorBank'
          Footers = <>
          Title.Caption = 'TGL STOR BANK'
        end
        item
          EditButtons = <>
          FieldName = 'storBank'
          Footers = <>
          Title.Caption = 'STOR BANK'
          Width = 164
        end
        item
          EditButtons = <>
          FieldName = 'keterangan'
          Footers = <>
          Title.Caption = 'KETERANGAN'
          Width = 494
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object pnlBawah: TPanel
    Left = 0
    Top = 485
    Width = 963
    Height = 40
    Align = alBottom
    Color = clSkyBlue
    TabOrder = 1
    object lblMulai: TLabel
      Left = 16
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
    object dtpSampai: TDateTimePicker
      Left = 136
      Top = 16
      Width = 113
      Height = 21
      Date = 43730.946688518520000000
      Time = 43730.946688518520000000
      TabOrder = 1
    end
    object btnTampil: TcxButton
      Left = 256
      Top = 15
      Width = 75
      Height = 25
      Caption = 'TAMPIL'
      TabOrder = 2
      OnClick = btnTampilClick
    end
    object btnTambah: TcxButton
      Left = 352
      Top = 16
      Width = 75
      Height = 25
      Caption = 'TAMBAH'
      TabOrder = 3
      OnClick = btnTambahClick
    end
    object btnUbah: TcxButton
      Left = 432
      Top = 16
      Width = 75
      Height = 25
      Caption = 'UBAH'
      TabOrder = 4
      OnClick = btnUbahClick
    end
  end
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 963
    Height = 41
    Align = alTop
    Caption = 'STOR BANK'
    Color = clSkyBlue
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Stencil'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
end
