unit UTambahDataDokter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFTambahDataDokter = class(TForm)
    pnlTengah: TPanel;
    lblKode: TLabel;
    lblNamaDokter: TLabel;
    lblAlamat: TLabel;
    lblStatus: TLabel;
    edtKode: TEdit;
    edtNmDokter: TEdit;
    mmoTempatPraktek: TMemo;
    cbbStatus: TComboBox;
    pnlBawah: TPanel;
    btnBaru: TButton;
    btnSimpan: TButton;
    btnKeluar: TButton;
    pnlAtas: TPanel;
    procedure btnBaruClick(Sender: TObject);
    procedure btnKeluarClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure baru;
  end;

var
  FTambahDataDokter: TFTambahDataDokter;

implementation

uses UUtama, UDataApotik;

{$R *.dfm}
procedure TFTambahDataDokter.baru;
begin
  edtKode.Text := '';
  edtNmDokter.Text := '';
  mmoTempatPraktek.Text := '';
  cbbStatus.ItemIndex := 0;
end;

procedure TFTambahDataDokter.btnBaruClick(Sender: TObject);
begin
  baru;
end;

procedure TFTambahDataDokter.btnKeluarClick(Sender: TObject);
begin
  Close;
end;

procedure TFTambahDataDokter.btnSimpanClick(Sender: TObject);
var
  tgl,user:String;
begin
if (edtKode.Text='') or (edtNmDokter.Text='') or (cbbStatus.Text='') then
    ShowMessage('Data Tidak Boleh Kosong...!')
    else
    begin
      tgl := FormatDateTime('yyyy-MM-dd',Now);
      user := FUtama.stat1.Panels[0].Text;
      if btnSimpan.Caption = 'SIMPAN' then
        begin
          if DM.qryDokter.Locate('kdDokter',edtKode.Text,[])  then
            MessageDlg('Data Sudah Ada!!',mtWarning,[mbok],0)
          else
          begin
            with DM.qryDokter do
            begin
              Close;
              SQL.Clear;
              SQL.Text := 'insert into dokter (kdDokter,namaDokter,lokasiPraktek,'+
                          'status,createDate,createUserId) values ("'+edtKode.Text+'","'+edtNmDokter.Text+'",'+
                          '"'+mmoTempatPraktek.Text+'","'+cbbStatus.Text+'","'+tgl+'","'+user+'")';
              ExecSQL;
              SQL.Text := 'select * from dokter';
              Open;
            end;
          end;
        end
        else
        begin
          with DM.qryDokter do
          begin
            Close;
            SQL.Clear;
            SQL.Text := 'update dokter set kdDokter="'+edtKode.Text+'",namaDokter="'+edtNmDokter.Text+'",'+
                        'lokasiPraktek="'+mmoTempatPraktek.Text+'",modifDate="'+tgl+'",modifUserId="'+user+'" where kdDokter="'+edtKode.Text+'" ';
            ExecSQL;
            SQL.Text := 'select * from dokter';
            Open;
          end;
        end;
    end;
end;

end.
