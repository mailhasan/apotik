object FormTambahJadwalKerja: TFormTambahJadwalKerja
  Left = 305
  Top = 148
  Width = 388
  Height = 275
  Caption = 'TAMBAH JADWAL KERJA'
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
    Width = 372
    Height = 41
    Align = alTop
    Caption = 'TAMBAH JADWAL KERJA'
    Color = clSkyBlue
    TabOrder = 0
  end
  object pnlBawah: TPanel
    Left = 0
    Top = 196
    Width = 372
    Height = 41
    Align = alBottom
    Color = clSkyBlue
    TabOrder = 1
    object btnBaru: TButton
      Left = 75
      Top = 8
      Width = 75
      Height = 25
      Caption = 'BARU'
      TabOrder = 0
      OnClick = btnBaruClick
    end
    object btnSimpan: TButton
      Left = 155
      Top = 8
      Width = 75
      Height = 25
      Caption = 'SIMPAN'
      TabOrder = 1
      OnClick = btnSimpanClick
    end
    object btnKeluar: TButton
      Left = 238
      Top = 8
      Width = 75
      Height = 25
      Caption = 'KELUAR'
      TabOrder = 2
      OnClick = btnKeluarClick
    end
  end
  object pnlTengah: TPanel
    Left = 0
    Top = 41
    Width = 372
    Height = 155
    Align = alClient
    TabOrder = 2
    object lblId: TLabel
      Left = 268
      Top = 103
      Width = 19
      Height = 13
      Caption = 'lblId'
      Visible = False
    end
    object lbl1: TLabel
      Left = 14
      Top = 8
      Width = 51
      Height = 13
      Caption = 'TANGGAL'
    end
    object lbl2: TLabel
      Left = 15
      Top = 35
      Width = 51
      Height = 13
      Caption = 'PETUGAS'
    end
    object lbl3: TLabel
      Left = 15
      Top = 59
      Width = 24
      Height = 13
      Caption = 'SHIF'
    end
    object lbl4: TLabel
      Left = 15
      Top = 88
      Width = 62
      Height = 13
      Caption = 'JAM MASUK'
    end
    object lbl5: TLabel
      Left = 15
      Top = 118
      Width = 67
      Height = 13
      Caption = 'JAM KELUAR'
    end
    object btnCariPetugas: TSpeedButton
      Left = 334
      Top = 30
      Width = 23
      Height = 22
      Caption = '...'
      OnClick = btnCariPetugasClick
    end
    object cxdtdtTANGGAL: TcxDateEdit
      Left = 114
      Top = 6
      TabOrder = 0
      Width = 121
    end
    object cxtxtdtPETUGAS: TcxTextEdit
      Left = 115
      Top = 30
      TabOrder = 1
      Text = 'cxtxtdtPETUGAS'
      Width = 216
    end
    object cxtmdtJamMasuk: TcxTimeEdit
      Left = 114
      Top = 85
      EditValue = 0d
      TabOrder = 2
      Width = 121
    end
    object cxtmdtJamPulang: TcxTimeEdit
      Left = 115
      Top = 112
      EditValue = 0d
      TabOrder = 3
      Width = 121
    end
    object cbbSHIF: TcxLookupComboBox
      Left = 115
      Top = 55
      Properties.DropDownWidth = 500
      Properties.KeyFieldNames = 'SHIF'
      Properties.ListColumns = <
        item
          FieldName = 'SHIF'
        end
        item
          FieldName = 'JAMMASUK'
        end
        item
          FieldName = 'JAMPULANG'
        end
        item
          FieldName = 'KETERANGAN'
        end>
      Properties.ListSource = DM.dsJamshif
      TabOrder = 4
      OnKeyPress = cbbSHIFKeyPress
      Width = 214
    end
  end
end
