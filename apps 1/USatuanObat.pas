unit USatuanObat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TFSatuanObat = class(TForm)
    pnlBawah: TPanel;
    btnTambah: TButton;
    btnUbah: TButton;
    btnHapus: TButton;
    btnKeluar: TButton;
    pnlTengah: TPanel;
    dbgrdhSatuan: TDBGridEh;
    pnlAtas: TPanel;
    procedure btnKeluarClick(Sender: TObject);
    procedure btnTambahClick(Sender: TObject);
    procedure btnUbahClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSatuanObat: TFSatuanObat;

implementation

{$R *.dfm}
uses UDataApotik,UTambahDataSatuan, ADODB;

procedure TFSatuanObat.btnKeluarClick(Sender: TObject);
begin
  Close;
end;

procedure TFSatuanObat.btnTambahClick(Sender: TObject);
begin
Application.CreateForm(TFTambahDataSatuan, FTambahDataSatuan);
with FTambahDataSatuan do
begin
  baru;
  Show;
end;
end;

procedure TFSatuanObat.btnUbahClick(Sender: TObject);
begin
if DM.qrySatuan.RecordCount >= 1 then
  begin
    Application.CreateForm(TFTambahDataSatuan, FTambahDataSatuan);
    with FTambahDataSatuan do
    begin
      edtKodeSatuan.Text := DM.qrySatuan.FieldByname('kdSatuan').AsString;
      edtSatuan.Text := DM.qrySatuan.FieldByname('satuan').AsString;
      btnSimpan.Caption := 'UBAH';
      Show;
    end;
  end
  else
  MessageDlg('Data Tidak Di Temukan!!',mtWarning,[mbok],0)
end;

procedure TFSatuanObat.btnHapusClick(Sender: TObject);
var
  kode: String;
begin
if DM.qrySatuan.RecordCount<=0 then
  ShowMessage('Data Tidak ada ') else
  begin
  if MessageDlg('Anda Ingin Menghapus Data "'+DM.qrySatuan['satuan']+'" ?', mtConfirmation,[mbyes,mbno],0)=mryes then
  begin
    Kode := DM.qrySatuan['kdSatuan'];
    with DM.qrySatuan do
    begin
    Close;
    SQL.Clear;
    SQL.Text:='delete from satuan WHERE kdSatuan="'+Kode+'"';
    ExecSQL;
    SQL.Text:='select * from satuan';
    Open;
  end;
  end else
  abort;
end;
end;

end.
