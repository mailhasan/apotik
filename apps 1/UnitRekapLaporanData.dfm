object FormRekapLaporanData: TFormRekapLaporanData
  Left = 202
  Top = 121
  Width = 518
  Height = 480
  Align = alCustom
  Caption = 'Rekap Laporan Data'
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
  object pnlBawah: TPanel
    Left = 0
    Top = 401
    Width = 502
    Height = 41
    Align = alBottom
    Color = clSkyBlue
    TabOrder = 0
    object edtLink: TEdit
      Left = 137
      Top = 12
      Width = 281
      Height = 21
      Enabled = False
      TabOrder = 0
      Text = 'http://nfikreatif.mra.my.id/apotiklv/krimDataLaporan.php'
      Visible = False
    end
    object btnSelesai: TButton
      Left = 10
      Top = 8
      Width = 75
      Height = 25
      Caption = 'SELESAI'
      TabOrder = 1
      OnClick = btnSelesaiClick
    end
  end
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 502
    Height = 41
    Align = alTop
    Caption = 'REKAP LAPORAN DATA'
    Color = clSkyBlue
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Stencil'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object pnlTengah: TPanel
    Left = 0
    Top = 41
    Width = 502
    Height = 360
    Align = alClient
    TabOrder = 2
    object pnlTengahAtas: TPanel
      Left = 1
      Top = 1
      Width = 500
      Height = 68
      Align = alTop
      TabOrder = 0
      object lblTglPenjualan: TLabel
        Left = 9
        Top = 5
        Width = 87
        Height = 13
        Caption = 'TGL PENJUALAN'
      end
      object lbl1: TLabel
        Left = 6
        Top = 27
        Width = 102
        Height = 13
        Caption = 'REKAP PENJUALAN'
      end
      object lbl2: TLabel
        Left = 3
        Top = 51
        Width = 359
        Height = 13
        Caption = 
          '* Catatan : Rekap Data Di Proses Setiap Hari Pada Saat Apotik Ak' +
          'an Tutup'
      end
      object dtpTGLPENJUALAN: TDateTimePicker
        Left = 120
        Top = 3
        Width = 137
        Height = 21
        Date = 44871.467399178240000000
        Time = 44871.467399178240000000
        TabOrder = 0
      end
      object edtREKAPPENJUALAN: TEdit
        Left = 118
        Top = 28
        Width = 140
        Height = 21
        TabOrder = 1
        Text = 'edtREKAPPENJUALAN'
      end
      object btnSIMPAN: TButton
        Left = 263
        Top = 24
        Width = 75
        Height = 25
        Caption = 'SIMPAN'
        TabOrder = 2
        OnClick = btnSIMPANClick
      end
    end
  end
  object idhtp1: TIdHTTP
    MaxLineAction = maException
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = 0
    Request.ContentRangeStart = 0
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 401
    Top = 71
  end
end
