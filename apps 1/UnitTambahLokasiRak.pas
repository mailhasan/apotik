unit UnitTambahLokasiRak;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFormTambahLokasiRak = class(TForm)
    pnlBawah: TPanel;
    btnBaru: TButton;
    btnSimpan: TButton;
    btnKeluar: TButton;
    pnlAtas: TPanel;
    pnlTengah: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    edtKodeLokasi: TEdit;
    edtLokasi: TEdit;
    Label1: TLabel;
    cbbSTATUS: TComboBox;
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
  FormTambahLokasiRak: TFormTambahLokasiRak;

implementation

{$R *.dfm}
uses UUtama,UDataApotik, ADODB, DB;

procedure TFormTambahLokasiRak.baru;
begin
  edtKodeLokasi.Text := '';
  edtLokasi.Text := '';
  cbbSTATUS.ItemIndex := 0;
end;

procedure TFormTambahLokasiRak.btnKeluarClick(Sender: TObject);
begin
  Close;
end;

procedure TFormTambahLokasiRak.btnBaruClick(Sender: TObject);
begin
  baru;
  btnSimpan.Caption := 'SIMPAN';
end;

procedure TFormTambahLokasiRak.btnSimpanClick(Sender: TObject);
var
  tgl,user:String;
begin
IF (edtKodeLokasi.Text='') OR (edtLokasi.Text='') then
    MessageDlg('Data Tidak Boleh Kosong..!',mtWarning,[mbOK],0)
    else
    begin
      tgl := FormatDateTime('yyyy-MM-dd hh:mm:ss',Now);
      user := FUtama.stat1.Panels[0].Text;  
      if btnSimpan.Caption = 'SIMPAN' then
        begin
          if DM.qryLokasiRak.Locate('kdLokasi',edtKodeLokasi.Text,[])  then
            MessageDlg('Data Sudah Ada!!',mtWarning,[mbok],0)
          else
          begin
            with DM.qryLokasiRak do
            begin
              Close;
              SQL.Clear;
              SQL.Text := 'insert into lokasirak (kdLokasi,LOKASI,status,createDate,createUser) values ("'+edtKodeLokasi.Text+'","'+edtLokasi.Text+'","aktif","'+tgl+'","'+user+'")';
              ExecSQL;
              SQL.Text := 'select * from lokasirak';
              Open;
            end;
          end;
        end
        else
        begin
          with DM.qryLokasiRak do
          begin
            Close;
            SQL.Clear;
            SQL.Text := 'update lokasirak set lokasi="'+edtLokasi.Text+'",status="'+cbbSTATUS.Text+'",modifDate="'+tgl+'",modifUser="'+user+'" where kdLokasi="'+edtKodeLokasi.Text+'"';
            ExecSQL;
            SQL.Text := 'select * from lokasirak';
            Open;
          end;
        end;
    end;
end;

end.
