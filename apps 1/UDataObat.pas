unit UDataObat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, StdCtrls, GridsEh, DBGridEh, ExtCtrls;

type
  TFDataObat = class(TForm)
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
    procedure btnKeluarClick(Sender: TObject);
    procedure edtCariDblClick(Sender: TObject);
    procedure edtCariChange(Sender: TObject);
    procedure btnTambahClick(Sender: TObject);
    procedure btnUbahClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDataObat: TFDataObat;

implementation

{$R *.dfm}

uses UDataApotik,UTambahDataObat, ADODB, DB;

procedure TFDataObat.btnKeluarClick(Sender: TObject);
begin
  Close;
end;

procedure TFDataObat.edtCariDblClick(Sender: TObject);
begin
edtCari.Text := '';
end;

procedure TFDataObat.edtCariChange(Sender: TObject);
begin
if (edtCari.Text='') then
  begin
    with DM.qryObat do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'select * from obat ORDER BY kdObat  asc';
      Open;
    end;
  end
  else
  begin
    with DM.qryObat do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'select * from obat where kdObat like "%'+edtCari.Text+'%" or namaObat like "%'+edtCari.Text+'%"';
      Open;
    end;
  end;
end;

procedure TFDataObat.btnTambahClick(Sender: TObject);
begin
Application.CreateForm(TFTambahDataObat, FTambahDataObat);
with FTambahDataObat do
begin
  baru;
  Show;
end
end;

procedure TFDataObat.btnUbahClick(Sender: TObject);
begin
if DM.qryObat.RecordCount >= 1 then
  begin
     Application.CreateForm(TFTambahDataObat, FTambahDataObat);
     with FTambahDataObat do
     begin
       edtKode.Text := DM.qryObat.FieldByname('kdObat').AsString;
       edtNmObat.Text := DM.qryObat.FieldByname('namaObat').AsString;
       edtSatuan.Text := DM.qryObat.Fieldbyname('satuanObat').AsString;
       edtStokAwal.Value := DM.qryObat.Fieldbyname('jumlahStok').AsString;
       edtHargaBeli.Value := DM.qryObat.Fieldbyname('hargaBeli').AsString;
       edtKeuntungan.Value := DM.qryObat.Fieldbyname('keuntungan').AsString;
       edtHargaJual.Value := DM.qryObat.Fieldbyname('hargaJual').AsString;
       btnSimpan.Caption := 'UBAH';
       Show;
     end;
  end
  else
  MessageDlg('Data Tidak Di Temukan...!',mtInformation,[mbok],0);
end;

procedure TFDataObat.btnHapusClick(Sender: TObject);
var
  kode: String;
begin
if DM.qryObat.RecordCount<=0 then
  ShowMessage('Data Tidak ada ') else
  begin
  if MessageDlg('Anda Ingin Menghapus Data "'+DM.qryObat['namaObat']+'" ?', mtConfirmation,[mbyes,mbno],0)=mryes then
  begin
    Kode := DM.qryObat['kdObat'];
    with DM.qryObat do
    begin
    Close;
    SQL.Text:='DELETE from obat WHERE kdObat="'+Kode+'"';
    ExecSQL;
    SQL.Text:= 'select * from obat';
    Open;
  end;
  end else
  abort;
end;
end;

end.
