unit UTambahDataSatuan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFTambahDataSatuan = class(TForm)
    pnlBawah: TPanel;
    btnBaru: TButton;
    btnSimpan: TButton;
    btnKeluar: TButton;
    pnlAtas: TPanel;
    pnlTengah: TPanel;
    lblKodeSatuan: TLabel;
    lblSatuan: TLabel;
    edtKodeSatuan: TEdit;
    edtSatuan: TEdit;
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
  FTambahDataSatuan: TFTambahDataSatuan;

implementation

{$R *.dfm}
uses UDataApotik, UUtama;

procedure TFTambahDataSatuan.baru;
begin
  edtKodeSatuan.Text := '';
  edtSatuan.Text := '';
  btnSimpan.Caption := 'SIMPAN';
end;

procedure TFTambahDataSatuan.btnKeluarClick(Sender: TObject);
begin
  Close;
end;

procedure TFTambahDataSatuan.btnBaruClick(Sender: TObject);
begin
  baru;
end;

procedure TFTambahDataSatuan.btnSimpanClick(Sender: TObject);
var
  tgl,user:String;
begin
if (edtKodeSatuan.Text='') or (edtSatuan.Text='') then
    ShowMessage('Data Tidak Boleh Kosong...!')
    else
    begin
      tgl := FormatDateTime('yyyy-MM-dd',Now);
      user := FUtama.stat1.Panels[0].Text;
      if btnSimpan.Caption = 'SIMPAN' then
        begin
          if DM.qrySatuan.Locate('kdSatuan',edtKodeSatuan.Text,[])  then
            MessageDlg('Data Sudah Ada!!',mtWarning,[mbok],0)
          else
          begin
            with DM.qrySatuan do
            begin
              Close;
              SQL.Clear;
              SQL.Text := 'insert into satuan (kdSatuan,satuan,'+
                          'createDate,createUserId) values ("'+edtKodeSatuan.Text+'","'+edtSatuan.Text+'",'+
                          '"'+tgl+'","'+user+'")';
              ExecSQL;
              SQL.Text := 'select * from satuan';
              Open;
            end;
          end;
        end
        else
        begin
          with DM.qrySatuan do
          begin
            Close;
            SQL.Clear;
            SQL.Text := 'update satuan set satuan="'+edtSatuan.Text+'",'+
                        'modifDate="'+tgl+'",modifUserId="'+user+'" where kdSatuan="'+edtKodeSatuan.Text+'" ';
            ExecSQL;
            SQL.Text := 'select * from satuan';
            Open;
          end;
        end;
    end;
end;

end.
