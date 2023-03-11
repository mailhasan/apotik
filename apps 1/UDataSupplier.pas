unit UDataSupplier;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DBGridEhGrouping, GridsEh, DBGridEh;

type
  TFDataSupplier = class(TForm)
    pnlAtas: TPanel;
    pnlTengah: TPanel;
    pnlBawah: TPanel;
    lblCari: TLabel;
    edtCari: TEdit;
    btnTambah: TButton;
    btnUbah: TButton;
    btnHapus: TButton;
    btnKeluar: TButton;
    dbgrdhSupplier: TDBGridEh;
    procedure btnKeluarClick(Sender: TObject);
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
  FDataSupplier: TFDataSupplier;

implementation

{$R *.dfm}

uses UDataApotik,UTambahDataSupplier, ADODB, DB;

procedure TFDataSupplier.btnKeluarClick(Sender: TObject);
begin
  Close;
end;

procedure TFDataSupplier.edtCariChange(Sender: TObject);
begin
if (edtCari.Text='') then
  begin
    with DM.qrySupplier do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'select * from supplier';
      Open;
    end;
  end
  else
  begin
    with DM.qrySupplier do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'select * from supplier where namaSupplier like "%'+edtCari.Text+'%"';
      Open;
    end;
  end;
end;

procedure TFDataSupplier.btnTambahClick(Sender: TObject);
begin
  Application.CreateForm(TFTambahDataSupplier, FTambahDataSupplier);
  with FTambahDataSupplier do
  begin
    baru;
    Show;
  end;
end;

procedure TFDataSupplier.btnUbahClick(Sender: TObject);
begin
if DM.qrySupplier.RecordCount >= 1 then
  begin
    Application.CreateForm(TFTambahDataSupplier, FTambahDataSupplier);
    with FTambahDataSupplier do
    begin
      edtKode.Text := dm.qrySupplier.FieldByname('kdSupplier').AsString;
      edtNmSupplier.Text := dm.qrySupplier.FieldByname('namaSupplier').AsString;
      mmoAlamat.Text := dm.qrySupplier.FieldByname('alamat').AsString;
      edtTelpone.Text := dm.qrySupplier.FieldByname('telpone').AsString;
      cbbStatus.Text := DM.qrySupplier.FIeldByname('status').AsString;
      btnSimpan.Caption := 'UBAH';
      Show;
    end;
  end
  else
  MessageDlg('Data Tidak Di Temukan!!',mtWarning,[mbok],0)
end;

procedure TFDataSupplier.btnHapusClick(Sender: TObject);
var
  kode: String;
begin
if DM.qrySupplier.RecordCount<=0 then
  ShowMessage('Data Tidak ada ') else
  begin
  if MessageDlg('Anda Ingin Menghapus Data "'+DM.qrySupplier['namaSupplier']+'" ?', mtConfirmation,[mbyes,mbno],0)=mryes then
  begin
    Kode := DM.qrySupplier['kdSupplier'];
    with DM.qrySupplier do
    begin
    Close;
    SQL.Text:='update supplier set status="tidak aktif" WHERE kdSupplier="'+Kode+'"';
    ExecSQL;
    SQL.Text:='select * from supplier';
    Open;
  end;
  end else
  abort;
end;
end;

end.
