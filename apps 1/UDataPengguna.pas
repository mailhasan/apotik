unit UDataPengguna;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, StdCtrls, GridsEh, DBGridEh, ExtCtrls;

type
  TFDataPengguna = class(TForm)
    pnlTengah: TPanel;
    dbgrdhSupplier: TDBGridEh;
    pnlBawah: TPanel;
    lblCari: TLabel;
    edtCari: TEdit;
    btnTambah: TButton;
    btnUbah: TButton;
    btnHapus: TButton;
    btnKeluar: TButton;
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
  FDataPengguna: TFDataPengguna;


implementation

{$R *.dfm}
uses UDataApotik,UTambahDataPengguna;

procedure TFDataPengguna.btnKeluarClick(Sender: TObject);
begin
  Close;
end;

procedure TFDataPengguna.btnTambahClick(Sender: TObject);
begin
Application.CreateForm(TFTambahDataPengguna, FTambahDataPengguna);
with FTambahDataPengguna do
begin
  baru;
  Show;
end;

end;

procedure TFDataPengguna.btnUbahClick(Sender: TObject);
begin
if DM.qryPengguna.RecordCount >= 1 then
  begin
    Application.CreateForm(TFTambahDataPengguna, FTambahDataPengguna);
    with FTambahDataPengguna do
    begin
      lblId.Caption := DM.qryPengguna.FieldByname('idPengguna').AsString;
      edtUsername.Text := DM.qryPengguna.FieldByname('username').AsString;
      edtPassword.Text := DM.qryPengguna.FieldByname('password').AsString;
      edtNamaPengguna.Text := DM.qryPengguna.FieldByname('namaPengguna').AsString;
      cbbStatus.Text := DM.qryPengguna.FieldByname('status').AsString;
      btnSimpan.Caption := 'UBAH';
      Show;
    end;
  end
  else
  Abort;
end;

procedure TFDataPengguna.btnHapusClick(Sender: TObject);
var
  kode: String;
begin
if DM.qryPengguna.RecordCount<=0 then
  ShowMessage('Data Tidak ada ') else
  begin
  if MessageDlg('Anda Ingin Menghapus Data "'+DM.qryPengguna['namaPengguna']+'" ?', mtConfirmation,[mbyes,mbno],0)=mryes then
  begin
    Kode := DM.qryPengguna['idPengguna'];
    with DM.qryPengguna do
    begin
    Close;
    SQL.Text:='update `pengguna` set status="tidak aktif" WHERE idPengguna="'+Kode+'"';
    ExecSQL;
    SQL.Text:='select * from `pengguna`';
    Open;
  end;
  end else
  abort;
end;
end;

end.
