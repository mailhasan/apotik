object FPembayaran: TFPembayaran
  Left = 190
  Top = 153
  Width = 504
  Height = 227
  Caption = 'PEMBAYARAN'
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
    Top = 152
    Width = 488
    Height = 37
    Align = alBottom
    Color = clSkyBlue
    TabOrder = 0
    object btnPembayaran: TcxButton
      Left = 8
      Top = 8
      Width = 105
      Height = 25
      Caption = 'PEMBAYARAN'
      TabOrder = 0
      OnClick = btnPembayaranClick
    end
  end
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 488
    Height = 41
    Align = alTop
    Caption = 'PEMBAYARAN PENERIMAAN'
    Color = clSkyBlue
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Stencil'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object cxlblNo: TcxLabel
      Left = 16
      Top = 8
      Caption = 'cxlblNo'
    end
  end
  object cxgrpbxPelunasan: TcxGroupBox
    Left = 0
    Top = 41
    Align = alClient
    Caption = 'PEMBAYARAN'
    TabOrder = 2
    Height = 111
    Width = 488
    object lblTotalPembayaran: TLabel
      Left = 12
      Top = 56
      Width = 120
      Height = 13
      Caption = 'JUMLAH PEMBAYARAN'
    end
    object lblSisaPembayaran: TLabel
      Left = 167
      Top = 56
      Width = 101
      Height = 13
      Caption = 'SISA PEMBAYARAN'
    end
    object lblPembayaran: TLabel
      Left = 322
      Top = 16
      Width = 74
      Height = 13
      Caption = 'PEMBAYARAN'
    end
    object lblStatus: TLabel
      Left = 321
      Top = 56
      Width = 43
      Height = 13
      Caption = 'STATUS'
    end
    object cxcrncydtTotalPembayaran: TcxCurrencyEdit
      Left = 11
      Top = 72
      Enabled = False
      TabOrder = 0
      Width = 137
    end
    object cxcrncydtSisaPembayaran: TcxCurrencyEdit
      Left = 163
      Top = 72
      Enabled = False
      TabOrder = 1
      Width = 145
    end
    object cxcrncydtPembayaran: TcxCurrencyEdit
      Left = 323
      Top = 32
      TabOrder = 2
      OnKeyPress = cxcrncydtPembayaranKeyPress
      Width = 150
    end
    object cbbStatusPembayaran: TComboBox
      Left = 323
      Top = 72
      Width = 145
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 3
      Text = 'BELUM LUNAS'
      Items.Strings = (
        'BELUM LUNAS'
        'LUNAS')
    end
    object cxlblTotalPembelian: TcxLabel
      Left = 8
      Top = 16
      Caption = 'TOTAL PEMBELIAN'
    end
    object cxcrncydtTotalPembelian: TcxCurrencyEdit
      Left = 8
      Top = 32
      Enabled = False
      TabOrder = 5
      Width = 145
    end
    object cxlblDiskon: TcxLabel
      Left = 168
      Top = 16
      Caption = 'DISKON'
    end
    object cxcrncydtDiskon: TcxCurrencyEdit
      Left = 168
      Top = 32
      Enabled = False
      TabOrder = 7
      Width = 137
    end
  end
end
