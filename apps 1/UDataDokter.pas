unit UDataDokter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, StdCtrls, GridsEh, DBGridEh, ExtCtrls;

type
  TFDataDokter = class(TForm)
    pnlTengah: TPanel;
    dbgrdhDokter: TDBGridEh;
    pnlBawah: TPanel;
    lblCari: TLabel;
    edtCari: TEdit;
    btnTambah: TButton;
    btnUbah: TButton;
    btnHapus: TButton;
    btnKeluar: TButton;
    pnlAtas: TPanel;
    procedure edtCariDblClick(Sender: TObject);
    procedure edtCariChange(Sender: TObject);
    procedure btnTambahClick(Sender: TObject);
    procedure btnKeluarClick(Sender: TObject);
    procedure btnUbahClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDataDokter: TFDataDokter;

implementation

{$R *.dfm}

uses UDataApotik,UTambahDataDokter, ADODB, DB;

procedure TFDataDokter.edtCariDblClick(Sender: TObject);
begin
edtCari.Text :='';
end;

procedure TFDataDokter.edtCariChange(Sender: TObject);
begin
if (edtCari.Text='') then
  begin
    with DM.qryDokter do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'select * from dokter';
      Open;
    end;
  end
  else
  begin
     with DM.qryDokter do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'select * from dokter where kdDokter like "%'+edtCari.Text+'%"';
      Open;
    end;
  end;
end;

procedure TFDataDokter.btnTambahClick(Sender: TObject);
begin
Application.CreateForm(TFTambahDataDokter, FTambahDataDokter);
with FTambahDataDokter do
begin
  baru;
  Show;
end;
end;

procedure TFDataDokter.btnKeluarClick(Sender: TObject);
begin
  Close;
end;

procedure TFDataDokter.btnUbahClick(Sender: TObject);
begin
if DM.qryDokter.RecordCount >= 1 then
  begin
    Application.CreateForm(TFTambahDataDokter, FTambahDataDokter);
    with FTambahDataDokter do
    begin
      edtKode.Text := DM.qryDokter.FieldByname('kdDokter').AsString;
      edtNmDokter.Text := DM.qryDokter.FieldByname('namaDokter').AsString;
      mmoTempatPraktek.Text := DM.qryDokter.FieldByname('lokasiPraktek').AsString;
      cbbStatus.Text := DM.qryDokter.FieldByname('status').AsString;
      btnSimpan.Caption := 'UBAH';
      Show;
    end;
  end
  else
  MessageDlg('Data Tidak Di Temukan!!',mtWarning,[mbok],0)
end;

procedure TFDataDokter.btnHapusClick(Sender: TObject);
var
  kode: String;
begin
if DM.qryDokter.RecordCount<=0 then
  ShowMessage('Data Tidak ada ') else
  begin
  if MessageDlg('Anda Ingin Menghapus Data "'+DM.qryDokter['namaDokter']+'" ?', mtConfirmation,[mbyes,mbno],0)=mryes then
  begin
    Kode := DM.qryDokter['kdDokter'];
    with DM.qryDokter do
    begin
    Close;
    SQL.Text:='update dokter set status="tidak aktif" WHERE kdDokter="'+Kode+'"';
    ExecSQL;
    SQL.Text:='select * from dokter';
    Open;
  end;
  end else
  abort;
end;
end;

end.
