unit UnitTambahJadwalKerja;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxSpinEdit, cxTimeEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  Buttons;

type
  TFormTambahJadwalKerja = class(TForm)
    pnlAtas: TPanel;
    pnlBawah: TPanel;
    btnBaru: TButton;
    btnSimpan: TButton;
    btnKeluar: TButton;
    pnlTengah: TPanel;
    lblId: TLabel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    cxdtdtTANGGAL: TcxDateEdit;
    cxtxtdtPETUGAS: TcxTextEdit;
    cxtmdtJamMasuk: TcxTimeEdit;
    cxtmdtJamPulang: TcxTimeEdit;
    cbbSHIF: TcxLookupComboBox;
    btnCariPetugas: TSpeedButton;
    procedure btnKeluarClick(Sender: TObject);
    procedure btnBaruClick(Sender: TObject);
    procedure cbbSHIFKeyPress(Sender: TObject; var Key: Char);
    procedure btnSimpanClick(Sender: TObject);
    procedure btnCariPetugasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure BARU;
  end;

var
  FormTambahJadwalKerja: TFormTambahJadwalKerja;

implementation

{$R *.dfm}
uses UDataApotik,UnitCariPengguna, ADODB, DB, Math, UUtama;

procedure TFormTambahJadwalKerja.BARU;
begin
 cxdtdtTANGGAL.Date := Now;
 cxtxtdtPETUGAS.Text := '';
 cbbSHIF.ItemIndex := 0;
 cxtmdtJamMasuk.Time := Now;
 cxtmdtJamPulang.Time := Now;
 btnSimpan.Caption := 'SIMPAN';
end;

procedure TFormTambahJadwalKerja.btnKeluarClick(Sender: TObject);
begin
  Close;
end;

procedure TFormTambahJadwalKerja.btnBaruClick(Sender: TObject);
begin
  BARU;
end;

procedure TFormTambahJadwalKerja.cbbSHIFKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    if cbbSHIF.Text = '' then
    begin
      MessageDlg('Shif yang di pilih kosong',mtWarning,[mbOK],0);
    end
    else
    begin
      with DM.qryJamShif do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'select * from jamshif where SHIF="'+cbbSHIF.EditValue+'"';
        Open;
      end;
      if DM.qryJamShif.RecordCount >= 1 then
      begin
        cbbSHIF.Text := DM.qryJamShif.FieldByname('SHIF').AsString;
        cxtmdtJamMasuk.Time := DM.qryJamShif.FieldByname('JAMMASUK').AsDateTime;
        cxtmdtJamPulang.Time := DM.qryJamShif.FieldByname('JAMPULANG').AsDateTime;
        btnSimpan.SetFocus;

        with DM.qryJamShif do
        begin
          Close;
          SQL.Clear;
          SQL.Text := 'select * from jamshif ';
          Open;
        end;
      end
      else
      MessageDlg('Data Tidak di temukan...!',mtWarning,[mbOK],0);
    end;
  end;
end;

procedure TFormTambahJadwalKerja.btnSimpanClick(Sender: TObject);
var
  tgl,jmMasuk,jmKeluar,tglSkrg,user:String;
begin
if (cxdtdtTANGGAL.Text='') or (cxtxtdtPETUGAS.Text='') then
  begin
   MessageDlg('Data Wajib Di Isi...!',mtWarning,[mbOK],0);
  end
  else
  begin
   tgl:= FormatDateTime('yyyy-MM-dd',cxdtdtTANGGAL.Date);
   jmMasuk:= FormatDateTime('hh:mm:ss',cxtmdtJamMasuk.Time);
   jmKeluar:= FormatDateTime('hh:mm:ss',cxtmdtJamPulang.Time);
   tglSkrg :=FormatDateTime('yyyy-MM-dd',Now);
   user := FUtama.stat1.Panels[0].Text;
   if btnSimpan.Caption = 'SIMPAN' then
   begin
     with DM.qryjadwalkerja do
     begin
      Close;
      SQL.Clear;
      SQL.Text := 'insert into jadwalkerja (TANGGAL,PETUGAS,SHIF,JAMMASUK,JAMPULANG,CREATEDATE,CREATEUSER) '+
      'values ("'+tgl+'","'+cxtxtdtPETUGAS.Text+'","'+cbbSHIF.Text+'","'+jmMasuk+'","'+jmKeluar+'","'+tglSkrg+'","'+user+'")';
      ExecSQL;
      SQL.Text := 'select * from jadwalkerja';
      Open;
     end;
   end
   else
   begin
     with DM.qryjadwalkerja do
     begin
      Close;
      SQL.Clear;
      SQL.Text := 'update jadwalkerja set TANGGAL="'+tgl+'",PETUGAS="'+cxtxtdtPETUGAS.Text+'",'+
      'SHIF="'+cbbSHIF.Text+'",JAMMASUK="'+jmMasuk+'",JAMPULANG="'+jmKeluar+'",'+
      'MODIFDATE="'+tglSkrg+'",MODIFUSER="'+user+'" where ID="'+lblId.Caption+'"';
      ExecSQL;
      SQL.Text := 'select * from jadwalkerja';
      Open;
     end;
     MessageDlg('Data Berhasil Di Ubah...',mtInformation,[mbYes],0);
   end;
  end
end;

procedure TFormTambahJadwalKerja.btnCariPetugasClick(Sender: TObject);
begin
Application.CreateForm(TFormCariPengguna, FormCariPengguna);
FormCariPengguna.Show;
end;

end.
