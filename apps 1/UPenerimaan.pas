unit UPenerimaan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  cxButtons, StdCtrls, ExtCtrls, ComCtrls, cxControls, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxCurrencyEdit, DBGridEhGrouping, GridsEh, DBGridEh,
  cxLabel, cxGroupBox;

type
  TFPenerimaan = class(TForm)
    pnlTengah: TPanel;
    pnlBawah: TPanel;
    btnBaru: TButton;
    pnlAtas: TPanel;
    pnlAtas1: TPanel;
    lblNoPenerimaan: TLabel;
    edtNoPenerimaan: TEdit;
    lblTglPenerimaan: TLabel;
    dtpTglPenerimaan: TDateTimePicker;
    lblNmSupplier: TLabel;
    cbbNmSupplier: TcxLookupComboBox;
    lblKdSupplier: TLabel;
    edtKdSupplier: TEdit;
    pnlTengah1: TPanel;
    pnlTengahAtas: TPanel;
    pnlTengahTengah: TPanel;
    dbgrdhPenerimaan: TDBGridEh;
    btnCariNoPenerimaan: TcxButton;
    pnlTengah1Bawah: TPanel;
    lblTotalPembayaran: TLabel;
    lblPembayaran: TLabel;
    lblStatus: TLabel;
    cxcrncydtTotalPembayaran: TcxCurrencyEdit;
    cxcrncydtPembayaran: TcxCurrencyEdit;
    lblSisaPembayaran: TLabel;
    cxcrncydtSisaPembayaran: TcxCurrencyEdit;
    cbbStatusPembayaran: TComboBox;
    btnPembayaran: TcxButton;
    pm1: TPopupMenu;
    HAPUS1: TMenuItem;
    cxlblDiskon: TcxLabel;
    cxcrncydtDiskon: TcxCurrencyEdit;
    cxlblPpn: TcxLabel;
    cxcrncydtPpn: TcxCurrencyEdit;
    cxgrpbxDataObatSekarang: TcxGroupBox;
    edtSatuan: TcxTextEdit;
    lblSatuan: TLabel;
    cxcrncydtJumlahStok: TcxCurrencyEdit;
    lblJumlahStok: TLabel;
    cxcrncydtHargaBeliLama: TcxCurrencyEdit;
    lblHargaBeliLama: TLabel;
    cxcrncydtKeuntungan: TcxCurrencyEdit;
    lblKeuntungan: TLabel;
    cxcrncydtHargaJualLama: TcxCurrencyEdit;
    lblHargaJual: TLabel;
    cxgrpbxDataPencarian: TcxGroupBox;
    lblKodeObat: TLabel;
    edtKodeObat: TcxTextEdit;
    cbbNamaObat: TcxLookupComboBox;
    lblNamaObat: TLabel;
    cxgrpbxDataPenerimaanObat: TcxGroupBox;
    lblNoBatch: TLabel;
    edtNoBatch: TEdit;
    lblJumlahObat: TLabel;
    cxcrncydtJumlahObat: TcxCurrencyEdit;
    lblHargaBeli: TLabel;
    cxcrncydtHargaBeli: TcxCurrencyEdit;
    cxcrncydtKeuntunganBaru: TcxCurrencyEdit;
    lblKeuntunganBaru: TLabel;
    cxcrncydtHargaJualBaru: TcxCurrencyEdit;
    lblHargaJualBaru: TLabel;
    dtpTglExp: TDateTimePicker;
    lblTglExp: TLabel;
    cxcrncydtSubTotalBeliFaktur: TcxCurrencyEdit;
    lblSubTotalBeli: TLabel;
    cxcrncydtSubTotalJual: TcxCurrencyEdit;
    lblSubTotalJual: TLabel;
    btnInput: TcxButton;
    lblDiskon: TLabel;
    lblSatuanBeli: TLabel;
    edtSatuanBeli: TEdit;
    lblJumlahBeli: TLabel;
    cxcrncydtHargaBeliFaktur: TcxCurrencyEdit;
    lblHargaBeliFaktur: TLabel;
    cxcrncydtJmlBeli: TcxCurrencyEdit;
    cxcrncydtDiskonFaktur: TcxCurrencyEdit;
    lblKategori: TLabel;
    cbbKategoriPenerimaan: TComboBox;
    procedure cbbNmSupplierDblClick(Sender: TObject);
    procedure cbbNmSupplierPropertiesEditValueChanged(Sender: TObject);
    procedure btnBaruClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbbNamaObatDblClick(Sender: TObject);
    procedure cbbNamaObatKeyPress(Sender: TObject; var Key: Char);
    procedure cxcrncydtJumlahObatKeyPress(Sender: TObject; var Key: Char);
    procedure cxcrncydtHargaBeliKeyPress(Sender: TObject; var Key: Char);
    procedure cxcrncydtKeuntunganBaruKeyPress(Sender: TObject;
      var Key: Char);
    procedure edtNoBatchKeyPress(Sender: TObject; var Key: Char);
    procedure cxcrncydtKeuntunganBaruPropertiesChange(Sender: TObject);
    procedure dtpTglExpKeyPress(Sender: TObject; var Key: Char);
    procedure cxcrncydtHargaBeliPropertiesEditValueChanged(
      Sender: TObject);
    procedure btnInputClick(Sender: TObject);
    procedure btnPembayaranClick(Sender: TObject);
    procedure HAPUS1Click(Sender: TObject);
    procedure cxcrncydtDiskonKeyPress(Sender: TObject; var Key: Char);
    procedure cxcrncydtPembayaranKeyPress(Sender: TObject; var Key: Char);
    procedure cxcrncydtPpnKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbbNmSupplierKeyPress(Sender: TObject; var Key: Char);
    procedure edtSatuanBeliKeyPress(Sender: TObject; var Key: Char);
    procedure cxcrncydtJmlBeliKeyPress(Sender: TObject; var Key: Char);
    procedure cxcrncydtHargaBeliFakturKeyPress(Sender: TObject;
      var Key: Char);
    procedure cxcrncydtDiskonFakturKeyPress(Sender: TObject;
      var Key: Char);
    procedure cxcrncydtHargaJualBaruKeyPress(Sender: TObject;
      var Key: Char);
    procedure cbbKategoriPenerimaanKeyPress(Sender: TObject;
      var Key: Char);
    //procedure cxcrncydtJmlBeliKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure settingCreate;
    procedure awalPenerimaan;
    procedure baru;
    procedure inputBaru;
    procedure tampilSupplier;
    procedure tampilObat;
    procedure IsiHrgBeliLamaMahal;
    procedure IsiHrgBeliLamaMurah;
    procedure tampilAwalDetailPenerimaan;
    procedure batalTransaksi;
  end;

var
  FPenerimaan: TFPenerimaan;
  tgl,user:String;
implementation

{$R *.dfm}
uses UDataApotik, ADODB, DB, Math, DateUtils, UUtama;

procedure TFPenerimaan.settingCreate;
begin
  tgl := FormatDateTime('yyyy-MM-dd hh:mm:ss',Now);
  user := FUtama.stat1.Panels[0].Text;
end;

procedure TFPenerimaan.awalPenerimaan;
begin
  with DM.qryPenerimaanObat do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'select * from penerimaanobat';
    Open;
  end
end;
/// procedure awal baru
procedure TFPenerimaan.baru;
begin
  /// panggil procedure
  awalPenerimaan;

  edtNoPenerimaan.Text := 'T-'+FormatDateTime('ddMMYY',Now)+'-'+IntToStr(DM.qryPenerimaanObat.RecordCount+1);
  dtpTglPenerimaan.Date := Now;
  cbbNmSupplier.Text := '';
  edtKdSupplier.Text := '';
  cbbKategoriPenerimaan.ItemIndex := 0; 
  edtKodeObat.Text := '';
  cbbNamaObat.EditText := '';
  edtSatuan.Text := '';
  cxcrncydtJumlahStok.Value := 0;
  cxcrncydtHargaBeliLama.Value := 0;
  cxcrncydtKeuntungan.Value := 0;
  cxcrncydtHargaJualLama.Value := 0;
  edtNoBatch.Text := '';
  cxcrncydtJmlBeli.Value := 0;
  cxcrncydtHargaBeliFaktur.Value := 0;
  cxcrncydtDiskonFaktur.Value := 0;
  cxcrncydtJumlahObat.Value := 0;
  cxcrncydtHargaBeli.Value := 0;
  cxcrncydtKeuntunganBaru.Value := 0;
  cxcrncydtHargaJualBaru.Value := 0;
  dtpTglExp.Date := Now;
  cxcrncydtSubTotalBeliFaktur.Value := 0;
  cxcrncydtSubTotalJual.Value := 0;
  cxcrncydtTotalPembayaran.Value := 0;
  cxcrncydtDiskon.Value := 0;
  cxcrncydtPpn.Value := 0;
  cxcrncydtPembayaran.Value := 0;
  cxcrncydtSisaPembayaran.Value := 0;
  cbbStatusPembayaran.ItemIndex := 1;
  btnBaru.Enabled := False;
  tampilSupplier;
end;

/// procedure baru setelah tombol input
procedure TFPenerimaan.inputBaru;
begin
  edtKodeObat.Text := '';
  cbbNamaObat.Text := '';
  edtSatuan.Text := '';
  cxcrncydtJumlahStok.Value := 0;
  cxcrncydtHargaBeliLama.Value := 0;
  cxcrncydtKeuntungan.Value := 0;
  cxcrncydtHargaJualLama.Value := 0;
  edtNoBatch.Text := '';
  cxcrncydtJmlBeli.Value := 0;
  cxcrncydtHargaBeliFaktur.Value := 0;
  cxcrncydtDiskonFaktur.Value := 0;
  cxcrncydtJumlahObat.Value := 0;
  cxcrncydtHargaBeli.Value := 0;
  cxcrncydtKeuntunganBaru.Value := 0;
  cxcrncydtHargaJualBaru.Value := 0;
  dtpTglExp.Date := Now;
  cxcrncydtSubTotalBeliFaktur.Value := 0;
  cxcrncydtSubTotalJual.Value := 0;
end;

/// tampil data supplier
procedure TFPenerimaan.tampilSupplier;
begin
  with DM.qrySupplier do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'select * from supplier';
    Open;
  end;
end;

/// tampil data obat 
procedure TFPenerimaan.tampilObat;
begin
  with DM.qryObat do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'select * from obat';
    Open;
  end;
end;

/// tampil awal detail penerimaan
procedure TFPenerimaan.tampilAwalDetailPenerimaan;
begin
 with DM.qryDetailPenerimaanObat do
 begin
   Close;
   SQL.Clear;
   SQL.Text := 'select * from detailpenerimaanobat where noPenerimaanObat="'+edtNoPenerimaan.Text+'"';
   Open;
 end;
end;

/// jika harga obat beli lama lebih mahal 
procedure TFPenerimaan.IsiHrgBeliLamaMahal;
begin
 cxcrncydtKeuntunganBaru.SetFocus;
 cxcrncydtHargaBeliLama.Value := cxcrncydtHargaBeli.Value;
end;

/// jika harga obat beli lama lebih murah
procedure TFPenerimaan.IsiHrgBeliLamaMurah;
begin
 cxcrncydtKeuntunganBaru.SetFocus;
 cxcrncydtHargaBeliLama.Value := cxcrncydtHargaBeli.Value;
end;

/// batal transaksi
procedure TFPenerimaan.batalTransaksi;
var
  noPenerimaan:String;
  konfirmasiKeluar:Integer;
begin
  konfirmasiKeluar := messagedlg('apakah anda tidak menlanjutkan transaksi penerimaan ...?',mtConfirmation, mbOKCancel, 0);
  if konfirmasiKeluar = mrOK  then
  begin
   with DM.qryPenerimaanObat do
   begin
     Close;
     SQL.Clear;
     SQL.Text := 'select * from penerimaanobat where noPenerimaanObat="'+edtNoPenerimaan.Text+'"';
     Open;
   end;
   if DM.qryPenerimaanObat.RecordCount >= 1 then
   begin
    noPenerimaan := DM.qryPenerimaanObat.Fieldbyname('noPenerimaanObat').AsString;
    with DM.qryPenerimaanObat do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'delete from penerimaanobat where noPenerimaanObat="'+noPenerimaan+'"';
      ExecSQL;
      SQL.Text := 'select * from penerimaanobat';
      Open;
    end;

    with DM.qryDetailPenerimaanObat do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'delete from detailpenerimaanobat where noPenerimaanObat="'+noPenerimaan+'"';
      ExecSQL;
      SQL.Text := 'select * from detailpenerimaanobat';
      Open;
    end;
    Close;
   end;
  end;
  if konfirmasiKeluar = mrCancel then Abort;
end;

procedure TFPenerimaan.cbbNmSupplierDblClick(Sender: TObject);
begin
  cbbNmSupplier.EditValue := '';
  edtKdSupplier.Text := '';
  tampilSupplier;
end;

procedure TFPenerimaan.cbbNmSupplierPropertiesEditValueChanged(
  Sender: TObject);
begin
/// pencarian data supplier
with DM.qrySupplier do
begin
  Close;
  SQL.Clear;
  SQL.Text := 'select * from supplier where namaSupplier="'+cbbNmSupplier.EditText+'"';
  Open;
end;

/// pengujian nama supplier 
if DM.qrySupplier.FieldByName('namaSupplier').AsString = cbbNmSupplier.EditText then
  begin
    cbbNmSupplier.EditValue := DM.qrySupplier.FieldByName('namaSupplier').AsString;
    edtKdSupplier.Text := DM.qrySupplier.FieldByName('kdSupplier').AsString;
    tampilSupplier;
  end
  else
    Abort;
end;

procedure TFPenerimaan.btnBaruClick(Sender: TObject);
begin
  /// memanggil nama procedure
  baru;
  tampilAwalDetailPenerimaan;
end;

procedure TFPenerimaan.FormShow(Sender: TObject);
begin
  /// memanggil nama procedure
  baru;
  tampilAwalDetailPenerimaan;
end;

procedure TFPenerimaan.cbbNamaObatDblClick(Sender: TObject);
begin
  /// memanggil nama procedure
  inputBaru;
  tampilObat;
end;

procedure TFPenerimaan.cbbNamaObatKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
begin
if cbbNamaObat.Text = '' then
    MessageDlg('Nama Obat Belum Di Isi...!',mtInformation,[mbok],0)
    else
    begin
      ///pencarian data obat
      with DM.qryObat do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'select * from obat where namaObat="'+cbbNamaObat.EditValue+'" ';
        Open;
      end;

      ///pengujian data ditemukan data obat
      if DM.qryObat.FieldByName('namaObat').AsString = cbbNamaObat.EditValue then
      begin
         edtKodeObat.Text := DM.qryObat.FieldByName('kdObat').AsString;
         cbbNamaObat.EditValue := DM.qryObat.FieldByName('namaObat').AsString;
         edtSatuan.Text := DM.qryObat.FieldByName('satuanObat').AsString;
         cxcrncydtJumlahStok.Value  := DM.qryObat.FieldByName('jumlahStok').AsFloat;
         cxcrncydtHargaBeliLama.Value := DM.qryObat.FieldByName('hargaBeli').AsFloat;
         cxcrncydtKeuntungan.Value := DM.qryObat.FieldByName('keuntungan').AsFloat;
         cxcrncydtHargaJualLama.Value := DM.qryObat.FieldByName('hargaJual').AsFloat;
         edtNoBatch.SetFocus;
      end
      else
      MessageDlg('Kode Obat Yang Anda Masukan Tidak Di Temukan',mtInformation,[mbok],0)
end;
end;
end;

procedure TFPenerimaan.cxcrncydtJumlahObatKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
begin
 ///pengujian jumlah obat tidak boleh kosong
 if (cxcrncydtJumlahObat.Text = '') or  (cxcrncydtJumlahObat.Value=0) then
    MessageDlg('Jumlah Obat Tidak Boleh Kosong',mtInformation,[mbok],0)
 else
 begin
   /// isi perhitungan jumlah stok
   //cxcrncydtJumlahStok.Value := cxcrncydtJumlahStok.Value + cxcrncydtJumlahObat.Value;
   cxcrncydtHargaBeli.Value := (cxcrncydtHargaBeliFaktur.Value)/(cxcrncydtJumlahObat.Value);
   cxcrncydtHargaBeli.SetFocus;
 end
end;
end;

procedure TFPenerimaan.cxcrncydtHargaBeliKeyPress(Sender: TObject;
  var Key: Char);
var
  pilihan:Integer;
begin
if Key=#13 then
begin
///eksekusi pengujian harga beli obat lebih mahal
if cxcrncydtHargaBeli.Value >  cxcrncydtHargaBeliLama.Value then
  begin
    pilihan := messagedlg('Harga Baru Lebih Mahal Dari Harga lama, apakah anda yakin ganti ...?',mtError, mbOKCancel, 0);
    if pilihan = mrOK  then IsiHrgBeliLamaMahal;
    if pilihan = mrCancel then cxcrncydtKeuntunganBaru.SetFocus;
  end
///eksekusi pengujian harga beli obat lebih murah
else if cxcrncydtHargaBeli.Value <  cxcrncydtHargaBeliLama.Value then
  begin
    pilihan := messagedlg('Harga Baru Lebih Murah Dari Harga lama, apakah anda yakin ganti ...?',mtError, mbOKCancel, 0);
    if pilihan = mrOK  then IsiHrgBeliLamaMurah;
    if pilihan = mrCancel then cxcrncydtKeuntunganBaru.SetFocus;
  end
else
  cxcrncydtKeuntunganBaru.SetFocus;
end;
end;

procedure TFPenerimaan.cxcrncydtKeuntunganBaruKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
begin
  cxcrncydtHargaJualBaru.Value := (cxcrncydtHargaBeli.Value+((cxcrncydtHargaBeli.Value*cxcrncydtKeuntunganBaru.Value)/100)); 
  cxcrncydtHargaJualBaru.SetFocus;
end;
end;

procedure TFPenerimaan.edtNoBatchKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
begin
  edtSatuanBeli.SetFocus;
end;
end;

procedure TFPenerimaan.cxcrncydtKeuntunganBaruPropertiesChange(
  Sender: TObject);
begin
  ///hasil dari pengisian keuntungan

  //// isi harga jual baru
  cxcrncydtHargaJualBaru.Value := (cxcrncydtHargaBeli.Value+((cxcrncydtHargaBeli.Value*cxcrncydtKeuntunganBaru.Value)/100));
  //// isi harga jual lama
  cxcrncydtHargaJualLama.Value := (cxcrncydtHargaBeliLama.Value+((cxcrncydtHargaBeliLama.Value*cxcrncydtKeuntungan.Value)/100));
  /// isi sub total jual
  cxcrncydtSubTotalJual.Value := (cxcrncydtJumlahObat.Value)*cxcrncydtHargaJualBaru.Value;
end;

procedure TFPenerimaan.dtpTglExpKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    cxcrncydtJumlahObat.SetFocus;
  end;
end;

procedure TFPenerimaan.cxcrncydtHargaBeliPropertiesEditValueChanged(
  Sender: TObject);
begin
  /// isi perhitungan sub total beli
  //cxcrncydtSubTotalBeli.Value:= (cxcrncydtHargaBeli.Value)*(cxcrncydtJumlahObat.Value);
end;

procedure TFPenerimaan.btnInputClick(Sender: TObject);
var
  tglKadaluarsa,tglPenerimaan:String;
  subTotalBeli,subTotalJual,updateJmlStok,diskon:Double;
begin
if (cbbNmSupplier.Text = '') or (cbbNamaObat.Text='') or (cxcrncydtJumlahObat.Value=0) or
    (cxcrncydtHargaBeli.Value=0) or (edtSatuanBeli.Text='')
    or (cxcrncydtJmlBeli.Value=0) or (cxcrncydtHargaBeliFaktur.Value=0)
    then
       MessageDlg('Data Harus Di Isi Lengkap...!',mtInformation,[mbok],0)
    else
    begin

      /// insert ke tabel detail penerimaan obat
      tglKadaluarsa:= FormatDateTime('yyyy-MM-dd',dtpTglExp.Date);

      settingCreate;

      with DM.qryDetailPenerimaanObat do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'insert into detailpenerimaanobat (noPenerimaanObat,kdObat,noBatch,namaObat,jumlahIsiBeli,'+
                    'hargaBeliPerBiji,keuntunganPerbiji,hargaJualPerBiji,subTotalHargaBeli,tglKadaluarsa,'+
                    'satuanBeliFaktur,jmlBeliFaktur,hargaBeliFaktur,diskonFaktur,subTotalFaktur,'+
                    'createDate,createId) '+
                    'values ("'+edtNoPenerimaan.Text+'","'+edtKodeObat.Text+'","'+edtNoBatch.Text+'","'+cbbNamaObat.EditText+'",'+
                    '"'+FloatToStr(cxcrncydtJumlahObat.value)+'","'+FloatToStr(cxcrncydtHargaBeli.value)+'",'+
                    '"'+FloatToStr(cxcrncydtKeuntunganBaru.value)+'","'+FloatToStr(cxcrncydtHargaJualBaru.Value)+'",'+
                    '"'+FloatToStr(cxcrncydtSubTotalJual.Value)+'","'+tglKadaluarsa+'","'+edtSatuanBeli.Text+'",'+
                    '"'+FloatToStr(cxcrncydtJmlBeli.Value)+'","'+FloatToStr(cxcrncydtHargaBeliFaktur.Value)+'",'+
                    '"'+FloatToStr(cxcrncydtDiskonFaktur.Value)+'","'+FloatToStr(cxcrncydtSubTotalBeliFaktur.Value)+'",'+
                    '"'+tgl+'","'+user+'")';
        ExecSQL;
        SQL.Text := 'select * from detailpenerimaanobat where noPenerimaanObat="'+edtNoPenerimaan.Text+'"';
        Open;
      end;

      updateJmlStok := cxcrncydtJumlahObat.Value+cxcrncydtJumlahStok.Value;
      /// update data ke tabel obat 
      with DM.qryObat do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'update obat set jumlahStok="'+FloatToStr(updateJmlStok)+'",'+
                    'hargaBeli="'+FloatToStr(cxcrncydtHargaBeliLama.Value)+'",'+
                    'keuntungan="'+FloatToStr(cxcrncydtKeuntungan.Value)+'",'+
                    'hargaJual="'+FloatToStr(cxcrncydtHargaJualLama.Value)+'"'+
                    'where kdObat="'+edtKodeObat.Text+'"';
        ExecSQL;
        SQL.Text := 'select * from obat';
        Open;
      end;

      /// insert atau update data yang input ke tabel penerimaan
      subTotalBeli := dbgrdhPenerimaan.columns[7].Footer.SumValue;
      subTotalJual := dbgrdhPenerimaan.columns[12].Footer.SumValue;
      diskon := dbgrdhPenerimaan.columns[5].Footer.SumValue;
      tglPenerimaan := FormatDateTime('yyyy-MM-dd',dtpTglPenerimaan.Date);
      if DM.qryPenerimaanObat.Locate('noPenerimaanObat',edtNoPenerimaan.Text,[])  then
      begin
        with DM.qryPenerimaanObat do
        begin
          Close;
          SQL.Clear;
          SQL.Text := 'update penerimaanobat set noPenerimaanObat="'+edtNoPenerimaan.Text+'",'+
                      'tglPenerimaanObat="'+tglPenerimaan+'",kdSupplier="'+edtKdSupplier.Text+'",'+
                      'namaSupplier="'+cbbNmSupplier.EditText+'",diskon="'+FloatToStr(diskon)+'",'+
                      'jumlahPembayaranBeli="'+FloatToStr(cxcrncydtPembayaran.Value)+'",statusPembayaran="BELUM LUNAS",'+
                      'ppn="'+FloatToStr(cxcrncydtPpn.Value)+'",sisaPembayaranBeli="'+FloatToStr(cxcrncydtSisaPembayaran.Value)+'",'+
                      'totalHargaBeli="'+FloatToStr(subTotalBeli)+'",totalHargaJual="'+ FloatToStr(subTotalJual)+'", '+
                      'kategoriPenerimaan="'+cbbKategoriPenerimaan.Text+'",'+
                      'modifDate="'+tgl+'",modifId="'+user+'" where noPenerimaanObat="'+edtNoPenerimaan.Text+'"';
          ExecSQL;
          SQL.Text := 'select * from penerimaanobat';
          Open;
        end;
      end
      else
      begin
        with DM.qryPenerimaanObat do
        begin
          Close;
          SQL.Clear;
          SQL.Text := 'insert into penerimaanobat (noPenerimaanObat,tglPenerimaanObat,kdSupplier,namaSupplier,'+
                      'totalHargaBeli,totalHargaJual,diskon,jumlahPembayaranBeli,ppn,sisaPembayaranBeli,'+
                      'statusPembayaran,kategoriPenerimaan,createDate,createId) values '+
                      '("'+edtNoPenerimaan.Text+'","'+tglPenerimaan+'","'+edtKdSupplier.Text+'",'+
                      '"'+cbbNmSupplier.EditText+'","'+FloatToStr(subTotalBeli)+'","'+FloatToStr(subTotalJual)+'",'+
                      '"'+FloatToStr(cxcrncydtDiskon.Value)+'","'+FloatToStr(cxcrncydtPembayaran.Value)+'",'+
                      '"'+FloatToStr(cxcrncydtPpn.Value)+'","'+FloatToStr(cxcrncydtSisaPembayaran.Value)+'",'+
                      '"BELUM LUNAS","'+cbbKategoriPenerimaan.Text+'","'+tgl+'","'+user+'")';
          ExecSQL;
          SQL.Text := 'select * from penerimaanobat';
          Open;
        end;
      end;

      cxcrncydtTotalPembayaran.Value := subTotalBeli;
      cxcrncydtSisaPembayaran.Value := subTotalBeli;
      cxcrncydtDiskon.Value := diskon;
      /// isi procedure selesai input
      inputBaru;
    end;
end;

procedure TFPenerimaan.btnPembayaranClick(Sender: TObject);
begin
  ///update tabel penerimaan
  with DM.qryPenerimaanObat do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'update penerimaanobat set totalHargaBeli="'+FloatToStr(cxcrncydtTotalPembayaran.Value)+'",'+
                'jumlahPembayaranBeli="'+FloatToStr(cxcrncydtPembayaran.Value)+'",'+
                'diskon="'+FloatToStr(cxcrncydtDiskon.Value)+'",'+
                'ppn="'+FloatToStr(cxcrncydtPpn.Value)+'",'+
                'sisaPembayaranBeli="'+FloatToStr(cxcrncydtSisaPembayaran.Value)+'",'+
                'statusPembayaran="'+cbbStatusPembayaran.Text+'",modifDate="'+tgl+'",modifId="'+user+'" where noPenerimaanObat="'+edtNoPenerimaan.Text+'"';
    ExecSQL;
    SQL.Text := 'select * from penerimaanobat';
    Open;
  end;
  btnBaru.Enabled := True;
end;

procedure TFPenerimaan.HAPUS1Click(Sender: TObject);
var
  kodeDetail,kodeObat,tglPenerimaan1:String;
  jumlahBeli,stokObat:Integer;
  subTotalBeli1,subTotalJual1,diskon1:Double;
begin
if DM.qryDetailPenerimaanObat.RecordCount >= 1 then
  begin
    if MessageDlg('Anda Ingin Menghapus Data "'+DM.qryDetailPenerimaanObat['namaObat']+'" ?', mtConfirmation,[mbyes,mbno],0)=mryes then
    begin
      kodeDetail:= DM.qryDetailPenerimaanObat.FieldByName('idDetailPenerimaanObat').AsString;
      kodeObat := DM.qryDetailPenerimaanObat.FieldByName('kdObat').asstring;
      jumlahBeli := DM.qryDetailPenerimaanObat.FieldByName('jumlahIsiBeli').AsInteger;

      settingCreate;

      with DM.qryObat do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'select * from obat where kdObat="'+kodeObat+'"';
        Open;
      end;
      stokObat := DM.qryObat.FieldByName('jumlahStok').AsInteger;
      jumlahBeli := stokObat+jumlahBeli;

      with DM.qryObat do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'update obat set jumlahStok="'+IntToStr(jumlahBeli)+'" where kdObat="'+kodeObat+'"';
        ExecSQL;
        SQL.Text := 'select * from obat';
        Open;
      end;

      with DM.qryDetailPenerimaanObat do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'delete from detailpenerimaanobat where idDetailPenerimaanObat="'+IntToStr(StrToInt(kodeDetail))+'"';
        ExecSQL;
        SQL.Text := 'select * from detailpenerimaanobat';
        Open;
      end;

      tampilAwalDetailPenerimaan;
      
      subTotalBeli1 := dbgrdhPenerimaan.columns[7].Footer.SumValue;
      subTotalJual1 := dbgrdhPenerimaan.columns[12].Footer.SumValue;
      diskon1 := dbgrdhPenerimaan.columns[5].Footer.SumValue;
      tglPenerimaan1 := FormatDateTime('yyyy-MM-dd',dtpTglPenerimaan.Date);

       with DM.qryPenerimaanObat do
        begin
          Close;
          SQL.Clear;
          SQL.Text := 'update penerimaanobat set noPenerimaanObat="'+edtNoPenerimaan.Text+'",'+
                      'tglPenerimaanObat="'+tglPenerimaan1+'",kdSupplier="'+edtKdSupplier.Text+'",'+
                      'namaSupplier="'+cbbNmSupplier.EditText+'",diskon="'+FloatToStr(diskon1)+'",'+
                      'jumlahPembayaranBeli="'+FloatToStr(cxcrncydtPembayaran.Value)+'",statusPembayaran="BELUM LUNAS",'+
                      'ppn="'+FloatToStr(cxcrncydtPpn.Value)+'",sisaPembayaranBeli="'+FloatToStr(cxcrncydtSisaPembayaran.Value)+'",'+
                      'totalHargaBeli="'+FloatToStr(subTotalBeli1)+'",totalHargaJual="'+ FloatToStr(subTotalJual1)+'", '+
                      'kategoriPenerimaan="'+cbbKategoriPenerimaan.Text+'",modifDate="'+tgl+'",modifId="'+user+'" where noPenerimaanObat="'+edtNoPenerimaan.Text+'"';
          ExecSQL;
          SQL.Text := 'select * from penerimaanobat';
          Open;
        end; 
       cxcrncydtTotalPembayaran.Value := subTotalBeli1;
       cxcrncydtSisaPembayaran.Value := subTotalBeli1;
       cxcrncydtDiskon.Value := diskon1;
  end
  else
   MessageDlg('Data Tidak Di Temukan...!',mtInformation,[mbok],0)
end;
end;

procedure TFPenerimaan.cxcrncydtDiskonKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    cxcrncydtTotalPembayaran.Value := cxcrncydtTotalPembayaran.Value-cxcrncydtDiskon.Value;
    cxcrncydtPpn.SetFocus;
  end;
end;

procedure TFPenerimaan.cxcrncydtPembayaranKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    cxcrncydtSisaPembayaran.Value := (cxcrncydtTotalPembayaran.Value)-(cxcrncydtPembayaran.Value);
    cxcrncydtSisaPembayaran.SetFocus;
  end;
end;

procedure TFPenerimaan.cxcrncydtPpnKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
   cxcrncydtTotalPembayaran.Value := cxcrncydtTotalPembayaran.Value++cxcrncydtPpn.Value;
   cxcrncydtPembayaran.SetFocus;
  end;
end;

procedure TFPenerimaan.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //batalTransaksi;
end;

procedure TFPenerimaan.cbbNmSupplierKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
begin
 cbbKategoriPenerimaan.SetFocus;
end;
end;

procedure TFPenerimaan.edtSatuanBeliKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  cxcrncydtJmlBeli.SetFocus
end;

procedure TFPenerimaan.cxcrncydtJmlBeliKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  cxcrncydtHargaBeliFaktur.SetFocus;
end;

procedure TFPenerimaan.cxcrncydtHargaBeliFakturKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    cxcrncydtDiskonFaktur.SetFocus;
  end;
end;

procedure TFPenerimaan.cxcrncydtDiskonFakturKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    cxcrncydtSubTotalBeliFaktur.Value := (cxcrncydtJmlBeli.Value*cxcrncydtHargaBeliFaktur.Value)-cxcrncydtDiskonFaktur.Value;
    dtpTglExp.SetFocus;
  end;
end;

procedure TFPenerimaan.cxcrncydtHargaJualBaruKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
begin
 cxcrncydtSubTotalJual.Value := cxcrncydtHargaJualBaru.Value*cxcrncydtJumlahObat.Value; 
 btnInput.SetFocus;
end;
end;

procedure TFPenerimaan.cbbKategoriPenerimaanKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
begin
 edtKodeObat.SetFocus;
end;
end;

end.
