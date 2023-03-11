unit UTambahDataPengguna;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFTambahDataPengguna = class(TForm)
    pnlTengah: TPanel;
    pnlBawah: TPanel;
    btnBaru: TButton;
    btnSimpan: TButton;
    btnKeluar: TButton;
    pnlAtas: TPanel;
    lblUsername: TLabel;
    lblPassword: TLabel;
    lblNamaPengguna: TLabel;
    lblStatus: TLabel;
    edtUsername: TEdit;
    edtPassword: TEdit;
    edtNamaPengguna: TEdit;
    cbbStatus: TComboBox;
    lblId: TLabel;
    procedure btnKeluarClick(Sender: TObject);
    procedure btnBaruClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure baru;
  end;

var
  FTambahDataPengguna: TFTambahDataPengguna;

implementation

{$R *.dfm}

uses UDataApotik, ADODB, DB, UUtama;

procedure TFTambahDataPengguna.baru;
begin
  edtUsername.Text := '';
  edtPassword.Text := '';
  edtNamaPengguna.Text := '';
  cbbStatus.Text := 'aktif';
  btnSimpan.Caption := 'SIMPAN';
end;

procedure TFTambahDataPengguna.btnKeluarClick(Sender: TObject);
begin
  Close;
end;

procedure TFTambahDataPengguna.btnBaruClick(Sender: TObject);
begin
  baru;
end;

procedure TFTambahDataPengguna.btnSimpanClick(Sender: TObject);
var
  tgl,user:String;
begin
if (edtUsername.Text='') or (edtNamaPengguna.Text='') or (cbbStatus.Text='') then
     ShowMessage('Data Tidak Boleh Kosong...!')
     else
     begin
      tgl := FormatDateTime('yyyy-MM-dd hh:mm:ss',Now);
      user := FUtama.stat1.Panels[0].Text;
       if btnSimpan.Caption = 'SIMPAN' then
       begin
         with DM.qryPengguna do
         begin
           Close;
           SQL.Clear;
           SQL.Text := 'insert into pengguna (username,password,status,namaPengguna,createDate,createId) '+
                      'values ("'+edtUsername.Text+'","'+edtPassword.Text+'",'+
                      '"'+cbbStatus.Text+'","'+edtNamaPengguna.Text+'","'+tgl+'","'+user+'")';
           ExecSQL;
           SQL.Text := 'select * from pengguna';
           Open;
         end;
         MessageDlg('Berhasil Di Simpan...!!',mtWarning,[mbok],0)
       end
       else
       begin
        with DM.qryPengguna do
        begin
          Close;
          SQL.Clear;
          SQL.Text := 'update pengguna set username="'+edtUsername.Text+'",'+
                    'password="'+edtPassword.Text+'",namaPengguna="'+edtNamaPengguna.Text+'"'+
                    'modifDate="'+tgl+'",modifId="'+user+'" where idPengguna="'+lblId.Caption+'"';
          ExecSQL;
          SQL.Text := 'select * from pengguna';
          Open;
        end;
        MessageDlg('Berhasil Di Ubah...!!',mtWarning,[mbok],0)
       end;

     end;
end;

end.
