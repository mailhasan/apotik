unit UPenjualanObat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, DBGridEh, Mask, DBCtrlsEh,
  DBLookupEh, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, DBGridEhGrouping, GridsEh, Menus,
  cxButtons;

type
  TFPenjualanObat = class(TForm)
    pnlAtas: TPanel;
    pnlTengah: TPanel;
    pnlBawah: TPanel;
    pnlAtas1: TPanel;
    lblNoPenjualan: TLabel;
    edtNoPenjualan: TEdit;
    lblTglPenjualan: TLabel;
    dtpTglPenjualan: TDateTimePicker;
    lblDokter: TLabel;
    lblKodeDokter: TLabel;
    cbbDokter: TcxLookupComboBox;
    edtKdDokter: TcxTextEdit;
    pnlTengah1: TPanel;
    pnlAtas2: TPanel;
    lblKodeObat: TLabel;
    lblNamaObat: TLabel;
    lblSatuan: TLabel;
    lblJumlahStok: TLabel;
    lblHargaJual: TLabel;
    lblJumlahJual: TLabel;
    lblSubTotalJual: TLabel;
    edtKodeObat: TcxTextEdit;
    cbbNamaObat: TcxLookupComboBox;
    edtSatuan: TcxTextEdit;
    edtJumlahStok: TcxTextEdit;
    edtHargaJual: TcxTextEdit;
    edtJumlahJual: TcxTextEdit;
    edtSubTotal: TcxTextEdit;
    btnInput: TButton;
    pnlTengah2: TPanel;
    btnBaru: TButton;
    btnPrint: TButton;
    dbgrdhPenjualan: TDBGridEh;
    pnlBawah2: TPanel;
    lblTotalBayar: TLabel;
    edtTotalBayar: TcxTextEdit;
    lblBayar: TLabel;
    edtBayar: TcxTextEdit;
    edtKembali: TcxTextEdit;
    lblKembali: TLabel;
    btnCari: TButton;
    lblIsiTotalBayar: TLabel;
    btnBatal: TcxButton;
    pmPenjualan: TPopupMenu;
    HAPUS1: TMenuItem;
    lblNamaPasien: TLabel;
    edtNama: TEdit;
    lblUmur: TLabel;
    edtUmur: TEdit;
    lblAlamat: TLabel;
    edtAlamat: TEdit;
    lblAsalResep: TLabel;
    edtAsalResep: TEdit;
    mm1: TMainMenu;
    REKAPLAPORANDATA1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure btnBaruClick(Sender: TObject);
    procedure edtKodeObatKeyPress(Sender: TObject; var Key: Char);
    procedure edtJumlahJualKeyPress(Sender: TObject; var Key: Char);
    procedure btnInputClick(Sender: TObject);
    procedure cbbNamaObatKeyPress(Sender: TObject; var Key: Char);
    procedure cbbNamaObatDblClick(Sender: TObject);
    procedure btnCariClick(Sender: TObject);
    procedure edtBayarKeyPress(Sender: TObject; var Key: Char);
    procedure HAPUS1Click(Sender: TObject);
    procedure cbbDokterPropertiesEditValueChanged(Sender: TObject);
    procedure cbbDokterDblClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure REKAPLAPORANDATA1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure noPenjualan;
    procedure baru;
    procedure hitungSubTotal;
    procedure awalDetaiPenjualan;
    procedure baruSetelahInput;
    procedure tampilDokter;
  end;

var
  FPenjualanObat: TFPenjualanObat;
  subTotal,hargaJual:Real;
  jumlahJual,JumlahStok:Integer;
implementation

{$R *.dfm}

uses UDataApotik,UListDataTransaksiPenjualan,UPrintPenjualan,UnitRekapLaporanData, ADODB, DB;

procedure TFPenjualanObat.noPenjualan;
begin
  edtNoPenjualan.Text := 'P-'+FormatDateTime('ddMMYY',Now)+'-'+IntToStr(DM.qryPenjualan.RecordCount+1);
end;

procedure TFPenjualanObat.baru;
begin
  noPenjualan;
  dtpTglPenjualan.Date := Now;

  cbbDokter.EditValue := '';
  edtKdDokter.Text := '';

  edtNama.Text := '';
  edtUmur.Text := '';
  edtAlamat.Text := '';
  edtAsalResep.Text := '';

  edtKodeObat.Text := '';
  cbbNamaObat.EditText := '';
  edtSatuan.Text := '';
  edtJumlahStok.Text := '';
  edtHargaJual.Text := '';
  edtJumlahJual.Text := '';
  edtSubTotal.Text := '';
  edtTotalBayar.Text := '';
  edtBayar.Text :='';
  edtKembali.Text :='';

  lblIsiTotalBayar.Caption := '';
  tampilDokter;
end;

procedure TFPenjualanObat.hitungSubTotal;
begin
  hargaJual:= StrToFloat(edtHargaJual.Text);
  jumlahJual := StrToInt(edtJumlahJual.Text);
  JumlahStok := StrToInt(edtJumlahStok.Text);
  if jumlahJual > JumlahStok then
  begin
     MessageDlg('Jumlah Penjualan Tidak Boleh Lebih Dari Jumlah Stok',mtInformation,[mbok],0);
     edtJumlahJual.SetFocus;
  end
  else
  begin
    edtJumlahStok.Text := IntToStr(JumlahStok-jumlahJual);
    subTotal := hargaJual*jumlahJual;
    edtSubTotal.Text := FloatToStr(subTotal);
    btnInput.SetFocus;
  end;
end;

procedure TFPenjualanObat.awalDetaiPenjualan;
begin
  with DM.qryDetailPenjualan DO
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'select * from detailpenjualan where noPenjualan="'+edtNoPenjualan.Text+'"';
    Open;
  end;
end;

procedure TFPenjualanObat.tampilDokter;
begin
  with DM.qryDokter do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'select * from dokter';
    Open;
  end;
end;

procedure TFPenjualanObat.baruSetelahInput;
begin
  edtKodeObat.Clear;
  cbbNamaObat.EditValue := '';
  edtSatuan.Text := '';
  edtJumlahStok.Text :='';
  edtJumlahJual.Text := '';
  edtHargaJual.Text :='';
  edtSubTotal.Text :='';
  cbbNamaObat.SetFocus;

  with DM.qryObat do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'select * from obat';
    Open;
  end;
end;


procedure TFPenjualanObat.FormShow(Sender: TObject);
begin
WindowState := wsMaximized;
baru;
awalDetaiPenjualan;
end;

procedure TFPenjualanObat.btnBaruClick(Sender: TObject);
begin
  baru;
  awalDetaiPenjualan;
end;

procedure TFPenjualanObat.edtKodeObatKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
  if edtKodeObat.Text = '' then
    MessageDlg('Kode Obat Belum Di Isi...!',mtInformation,[mbok],0)
    else
    begin
      with DM.qryObat do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'select * from obat where kdObat="'+edtKodeObat.Text+'" ';
        Open;
      end;

      if DM.qryObat.FieldByName('kdObat').AsString = edtKodeObat.Text then
      begin
         edtKodeObat.Text := DM.qryObat.FieldByName('kdObat').AsString;
         cbbNamaObat.EditText := DM.qryObat.FieldByName('namaObat').AsString;
         edtSatuan.Text := DM.qryObat.FieldByName('satuanObat').AsString;
         edtJumlahStok.Text := DM.qryObat.FieldByName('jumlahStok').AsString;
         edtHargaJual.Text := DM.qryObat.FieldByName('hargaJual').AsString;
         edtJumlahJual.Text := FloatToStr(1);
         edtJumlahJual.SetFocus;
         hitungSubTotal;
      end
      else
      MessageDlg('Kode Obat Yang Anda Masukan Tidak Di Temukan',mtInformation,[mbok],0)
    end;
  end;
end;

procedure TFPenjualanObat.edtJumlahJualKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
begin
 if edtJumlahJual.Text = '' then
    MessageDlg('Jumlah Obat Tidak Boleh Kosong',mtInformation,[mbok],0)
 else
 begin
 hitungSubTotal;
 end
end;
end;
procedure TFPenjualanObat.btnInputClick(Sender: TObject);
var
  tglPenjualan:string;
  totalBayar:Double;
begin
if (edtKodeObat.Text='') or (cbbNamaObat.Text='') then
    MessageDlg('Data Harus Di Isi Lengkap...!',mtInformation,[mbok],0)
    else
    begin
      tglPenjualan := FormatDateTime('yyyy-mm-dd',dtpTglPenjualan.Date);

      with DM.qryDetailPenjualan do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'insert into detailpenjualan (noPenjualan,kdObat,namaObat,hargaJual,jumlahJual,subTotalJual) values '+
                    '("'+edtNoPenjualan.Text+'","'+edtKodeObat.Text+'","'+cbbNamaObat.EditText+'",'+
                    '"'+edtHargaJual.Text+'","'+edtJumlahJual.Text+'","'+edtSubTotal.Text+'")';
        ExecSQL;
        SQL.Text := 'select * from detailpenjualan where noPenjualan="'+edtNoPenjualan.Text+'"';
        Open;
      end;

      with DM.qryObat do
      begin
       Close;
       SQL.Clear;
       SQL.Text := 'update obat set jumlahStok="'+edtJumlahStok.Text+'" where kdObat="'+edtKodeObat.Text+'"';
       ExecSQL;
       SQL.Text := 'select * from obat';
       Open;
      end;

      totalBayar := dbgrdhPenjualan.columns[4].Footer.SumValue;
      if DM.qryPenjualan.Locate('noPenjualan',edtNoPenjualan.Text,[])  then
      begin
        with DM.qryPenjualan do
        begin
          Close;
          SQL.Clear;
          SQL.Text := 'update penjualan set noPenjualan="'+edtNoPenjualan.Text+'",'+
                      'tglPenjualan="'+tglPenjualan+'",kdDokter="'+edtKdDokter.Text+'",'+
                      'namaDokter="'+cbbDokter.EditText+'",'+
                      'namaPasien="'+edtNama.Text+'",umurPasien="'+edtUmur.Text+'",'+
                      'alamatPasien="'+edtAlamat.Text+'",asalResepPasien="'+edtAsalResep.Text+'",'+
                      'totalPenjualan="'+FloatToStr(totalBayar)+'" '+
                      'where noPenjualan="'+edtNoPenjualan.Text+'"';
          ExecSQL;
          SQL.Text := 'select * from penjualan';
          Open;
        end;
      end
      else
      begin
        with DM.qryPenjualan do
        begin
          Close;
          SQL.Clear;
          SQL.Text := 'insert into penjualan (noPenjualan,tglPenjualan,kdDokter,namaDokter,'+
                      'namaPasien,umurPasien,alamatPasien,asalResepPasien,totalPenjualan) values '+
                      '("'+edtNoPenjualan.Text+'","'+tglPenjualan+'","'+edtKdDokter.Text+'",'+
                      '"'+cbbDokter.EditingText+'","'+edtNama.Text+'","'+edtUmur.Text+'",'+
                      '"'+edtAlamat.Text+'","'+edtAsalResep.Text+'","'+FloatToStr(totalBayar)+'")';
          ExecSQL;
          SQL.Text := 'select * from penjualan';
          Open;
        end;
      end;

      edtTotalBayar.Text := FloatToStr(totalBayar);
      lblIsiTotalBayar.Caption := 'TOTAL BAYAR :'+edtTotalBayar.Text;
      baruSetelahInput;

    end;
end;


procedure TFPenjualanObat.cbbNamaObatKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
begin
if cbbNamaObat.Text = '' then
    MessageDlg('Nama Obat Belum Di Isi...!',mtInformation,[mbok],0)
    else
    begin
      with DM.qryObat do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'select * from obat where namaObat="'+cbbNamaObat.EditValue+'" ';
        Open;
      end;

      if DM.qryObat.FieldByName('namaObat').AsString = cbbNamaObat.EditValue then
      begin
         edtKodeObat.Text := DM.qryObat.FieldByName('kdObat').AsString;
         cbbNamaObat.EditValue := DM.qryObat.FieldByName('namaObat').AsString;
         edtSatuan.Text := DM.qryObat.FieldByName('satuanObat').AsString;
         edtJumlahStok.Text := DM.qryObat.FieldByName('jumlahStok').AsString;
         edtHargaJual.Text := DM.qryObat.FieldByName('hargaJual').AsString;
         edtJumlahJual.Text := FloatToStr(1);
         edtJumlahJual.SetFocus;
      end
      else
      MessageDlg('Kode Obat Yang Anda Masukan Tidak Di Temukan',mtInformation,[mbok],0)
    end;
end;
end;
procedure TFPenjualanObat.cbbNamaObatDblClick(Sender: TObject);
begin
baruSetelahInput;
end;

procedure TFPenjualanObat.btnCariClick(Sender: TObject);
begin
  Application.CreateForm(TFListDataTransaksiPenjualan, FListDataTransaksiPenjualan);
  FListDataTransaksiPenjualan.Show;
end;

procedure TFPenjualanObat.edtBayarKeyPress(Sender: TObject; var Key: Char);
var
   totalBayar,bayar,kembali:Double;
begin
if Key=#13 then
  begin
   totalBayar := StrToFloat(edtTotalBayar.Text);
   bayar := StrToFloat(edtBayar.Text);
   kembali := bayar-totalBayar;
   edtKembali.Text := FloatToStr(kembali);
  end;
end;

procedure TFPenjualanObat.HAPUS1Click(Sender: TObject);
var
  kodeDetail,kodeObat:String;
  jumlahJual,stokObat,jumlahStok:Integer;
  totalBayar:Double;
begin
if DM.qryDetailPenjualan.RecordCount >= 1 then
  begin
    if MessageDlg('Anda Ingin Menghapus Data "'+DM.qryDetailPenjualan['namaObat']+'" ?', mtConfirmation,[mbyes,mbno],0)=mryes then
    begin
      kodeDetail:= DM.qryDetailPenjualan.FieldByName('idPenjualan').AsString;
      kodeObat := DM.qryDetailPenjualan.FieldByName('kdObat').asstring;
      jumlahJual := DM.qryDetailPenjualan.FieldByName('jumlahJual').AsInteger;
      with DM.qryObat do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'select * from obat where kdObat="'+kodeObat+'"';
        Open;
      end;
      stokObat := DM.qryObat.FieldByName('jumlahStok').AsInteger;
      jumlahStok := stokObat+jumlahJual;

      with DM.qryObat do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'update obat set jumlahStok="'+IntToStr(jumlahStok)+'" where kdObat="'+kodeObat+'"';
        ExecSQL;
        SQL.Text := 'select * from obat';
        Open;
      end;

      with DM.qryDetailPenjualan do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'delete from detailpenjualan where idPenjualan="'+IntToStr(StrToInt(kodeDetail))+'"';
        ExecSQL;
        SQL.Text := 'select * from detailpenjualan';
        Open;
      end;

      awalDetaiPenjualan;
      
      totalBayar := dbgrdhPenjualan.columns[4].Footer.SumValue;
      with DM.qryPenjualan do
      begin
          Close;
          SQL.Clear;
          SQL.Text := 'update penjualan set totalPenjualan="'+FloatToStr(totalBayar)+'" '+
                      'where noPenjualan="'+edtNoPenjualan.Text+'"';
          ExecSQL;
          SQL.Text := 'select * from penjualan';
          Open;
      end;

      edtTotalBayar.Text := FloatToStr(totalBayar);
      lblIsiTotalBayar.Caption := 'TOTAL BAYAR :'+edtTotalBayar.Text;

    end
    else
    Abort;
  end
  else
  MessageDlg('Data Tidak Di Temukan...!!',mtInformation,[mbok],0);
end;

procedure TFPenjualanObat.cbbDokterPropertiesEditValueChanged(
  Sender: TObject);
begin
with DM.qryDokter do
begin
  Close;
  SQL.Clear;
  SQL.Text := 'select * from dokter where namaDokter="'+cbbDokter.EditValue+'"';
  Open;
end;

if  DM.qryDokter.FieldByName('namaDokter').AsString = cbbDokter.EditValue then
  begin
    cbbDokter.EditValue := DM.qryDokter.FieldByName('namaDokter').AsString;
    edtKdDokter.Text := DM.qryDokter.FieldByName('kdDokter').AsString;
    tampilDokter;
  end
  else
    Abort;
end;

procedure TFPenjualanObat.cbbDokterDblClick(Sender: TObject);
begin
  edtKdDokter.Text := '';
  cbbDokter.EditValue := '';
  tampilDokter;
end;

procedure TFPenjualanObat.btnPrintClick(Sender: TObject);
begin
with FPrintPenjualan do
begin

  qrlblNoNota.Caption := 'NO NOTA : '+edtNoPenjualan.Text;
  qrlblNama.Caption := 'NAMA : '+edtNama.Text;
  qrlblUmur.Caption := 'UMUR : '+edtUmur.Text;
  qrlblAlamat.Caption := 'ALAMAT : '+edtAlamat.Text;
  qrlblDokter.Caption := 'DOKTER : '+cbbDokter.Text;
  
  qrlblTotalByr.Caption := 'TOTAL BAYAR : Rp.'+FloatToStr(dbgrdhPenjualan.columns[4].Footer.SumValue);
  with DM.qryDetailPenjualan do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'select * from detailpenjualan where noPenjualan="'+edtNoPenjualan.Text+'"';
    Open;
  end;
  qckrPrintNota.Preview;
end
end;

procedure TFPenjualanObat.REKAPLAPORANDATA1Click(Sender: TObject);
begin
  FormRekapLaporanData.Show;
end;

end.
