unit UTambahDataObat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, DBCtrlsEh;

type
  TFTambahDataObat = class(TForm)
    pnlTengah: TPanel;
    pnlBawah: TPanel;
    btnBaru: TButton;
    btnSimpan: TButton;
    btnKeluar: TButton;
    pnlAtas: TPanel;
    lblKode: TLabel;
    lblNamaObat: TLabel;
    lblSatuanObat: TLabel;
    lblStokAwal: TLabel;
    lblHargaBeli: TLabel;
    lblKeuntungan: TLabel;
    lblHargaJual: TLabel;
    edtKode: TEdit;
    edtNmObat: TEdit;
    edtSatuan: TEdit;
    edtStokAwal: TDBNumberEditEh;
    edtHargaBeli: TDBNumberEditEh;
    edtKeuntungan: TDBNumberEditEh;
    edtHargaJual: TDBNumberEditEh;
    procedure btnBaruClick(Sender: TObject);
    procedure btnKeluarClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure edtKeuntunganChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure baru;
  end;

var
  FTambahDataObat: TFTambahDataObat;

implementation

uses UUtama, UDataApotik;

{$R *.dfm}

procedure TFTambahDataObat.baru;
begin
  edtKode.Text := '';
  edtNmObat.Text := '';
  edtSatuan.Text := '';
  edtStokAwal.Value := 0;
  edtHargaBeli.Value := 0;
  edtKeuntungan.Value := 0;
  edtHargaJual.Value := 0;
  btnSimpan.Caption := 'SIMPAN';
end;

procedure TFTambahDataObat.btnBaruClick(Sender: TObject);
begin
  baru;
end;

procedure TFTambahDataObat.btnKeluarClick(Sender: TObject);
begin
  Close;
end;

procedure TFTambahDataObat.btnSimpanClick(Sender: TObject);
var
  tgl,user:String;
begin
if (edtKode.Text='') or (edtNmObat.Text='') or (edtSatuan.Text='') 
    or (edtHargaBeli.Value=0) or (edtKeuntungan.Value=0) or (edtHargaJual.Value=0) then
      MessageDlg('Data Harus Di Isi Lengkap...!',mtInformation,[mbok],0)
    else
    begin
      tgl := FormatDateTime('yyyy-MM-dd',Now);
      user := FUtama.stat1.Panels[0].Text;
      if btnSimpan.Caption = 'SIMPAN' then
        begin
          if DM.qryObat.Locate('kdObat',edtKode.Text,[])  then
            MessageDlg('Data Sudah Ada!!',mtWarning,[mbok],0)
          else
          begin
            with DM.qryObat do
            begin
              Close;
              SQL.Clear;
              SQL.Text := 'insert into obat (kdObat,namaObat,satuanObat,jumlahStok,hargaBeli,keuntungan,'+
                          'hargaJual,createDate,createUserId) values ("'+edtKode.Text+'","'+edtNmObat.Text+'",'+
                          '"'+edtSatuan.Text+'","'+IntToStr(edtStokAwal.Value)+'","'+FloatToStr(edtHargaBeli.Value)+'",'+
                          '"'+FloatToStr(edtKeuntungan.Value)+'","'+FloatToStr(edtHargaJual.Value)+'",'+
                          '"'+tgl+'","'+user+'")';
              ExecSQL;
              SQL.Text := 'select * from obat';
              Open;
            end;
          end;
        end
        else
        begin
          with DM.qryObat do
          begin
            Close;
            SQL.Clear;
            SQL.Text := 'update obat set kdObat="'+edtKode.Text+'",namaObat="'+edtNmObat.Text+'",'+
                        'satuanObat="'+edtSatuan.Text+'",jumlahStok="'+IntToStr(edtStokAwal.Value)+'",'+
                        'hargaBeli="'+FloatToStr(edtHargaBeli.Value)+'",'+
                        'keuntungan="'+FloatToStr(edtKeuntungan.Value)+'",'+
                        'hargaJual="'+ FloatToStr(edtHargaJual.Value)+'",'+
                        'modifDate="'+tgl+'",modifUserId="'+user+'" where kdObat="'+edtKode.Text+'" ';
            ExecSQL;
            SQL.Text := 'select * from obat';
            Open;
          end;
        end;
    end;
end;

procedure TFTambahDataObat.edtKeuntunganChange(Sender: TObject);
begin
edtHargaJual.Value := (edtHargaBeli.Value+((edtHargaBeli.Value*edtKeuntungan.Value)/100));
end;

end.
