unit UnitDataJadwalKerja;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  cxButtons, ComCtrls, StdCtrls, ExtCtrls, cxControls, cxStyles,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid;

type
  TFormJadwalKerja = class(TForm)
    pnlTengah: TPanel;
    pnlBawah: TPanel;
    btnTambah: TButton;
    btnUbah: TButton;
    btnHapus: TButton;
    btnKeluar: TButton;
    pnlAtas: TPanel;
    lblMulai: TLabel;
    dtpTgl: TDateTimePicker;
    dtpSampai: TDateTimePicker;
    lblSampai: TLabel;
    btnTampil: TcxButton;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    cxgrd1: TcxGrid;
    cxgrdbclmnGrid1DBTableView1TANGGAL: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1PETUGAS: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1SHIF: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1JAMMASUK: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1JAMPULANG: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1CREATEDATE: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1CREATEUSER: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1MODIFDATE: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1MODIFUSER: TcxGridDBColumn;
    procedure btnKeluarClick(Sender: TObject);
    procedure btnTambahClick(Sender: TObject);
    procedure btnUbahClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnTampilClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormJadwalKerja: TFormJadwalKerja;

implementation

{$R *.dfm}
uses UDataApotik,UnitTambahJadwalKerja, ADODB;

procedure TFormJadwalKerja.btnKeluarClick(Sender: TObject);
begin
Close;
end;

procedure TFormJadwalKerja.btnTambahClick(Sender: TObject);
begin
 Application.CreateForm(TFormTambahJadwalKerja, FormTambahJadwalKerja);
 WITH FormTambahJadwalKerja DO
 begin
  BARU;
  Show;
 end;

end;

procedure TFormJadwalKerja.btnUbahClick(Sender: TObject);
begin
if DM.qryjadwalkerja.RecordCount >= 1 then
  begin
   Application.CreateForm(TFormTambahJadwalKerja, FormTambahJadwalKerja);
   with FormTambahJadwalKerja do
   begin
     lblId.Caption := DM.qryjadwalkerja.Fieldbyname('ID').AsString;
     cxdtdtTANGGAL.Date := DM.qryjadwalkerja.Fieldbyname('TANGGAL').AsDateTime;
     cxtxtdtPETUGAS.Text := DM.qryjadwalkerja.FieldByname('PETUGAS').AsString;
     cbbSHIF.Text := DM.qryjadwalkerja.FieldByname('SHIF').AsString;
     cxtmdtJamMasuk.Time := DM.qryjadwalkerja.FieldByname('JAMMASUK').AsDateTime;
     cxtmdtJamPulang.Time := DM.qryjadwalkerja.FieldByname('JAMPULANG').AsDateTime;
     btnSimpan.Caption := 'UBAH';
     Show;
   end;
  end
  else
  MessageDlg('Data Tidak Di temukan...!',mtWarning,[mbYes],0);
end;

procedure TFormJadwalKerja.FormShow(Sender: TObject);
begin
  dtpTgl.Date := Now;
  dtpSampai.Date := Now+1;
end;

procedure TFormJadwalKerja.btnTampilClick(Sender: TObject);
begin
  with DM.qryjadwalkerja do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'select * from jadwalkerja where Tanggal BETWEEN "'+FormatDateTime('YYYY-MM-dd',dtpTgl.Date)+'" and "'+FormatDateTime('YYYY-MM-dd',dtpSampai.Date)+'"';
    Open;
  end;
end;

procedure TFormJadwalKerja.btnHapusClick(Sender: TObject);
var
  kode:String;
begin
if DM.qryjadwalkerja.RecordCount<=0 then
  ShowMessage('Data Tidak ada ') else
  begin
  if MessageDlg('Anda Ingin Menghapus Data "'+DM.qryjadwalkerja['PETUGAS']+'" ?', mtConfirmation,[mbyes,mbno],0)=mryes then
  begin
    Kode := DM.qryjadwalkerja['ID'];
    with DM.qryjadwalkerja do
    begin
    Close;
    SQL.Text:='delete from jadwalkerja where ID="'+kode+'"';
    ExecSQL;
    SQL.Text:='select * from jadwalkerja';
    Open;
  end;
  end else
  abort;
end;
end;

end.
