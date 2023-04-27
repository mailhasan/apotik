unit UStokOpname;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxGroupBox, cxLabel, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxCurrencyEdit, cxMemo, Menus, cxButtons, cxSpinEdit,
  cxSpinButton, DBGridEhGrouping, GridsEh, DBGridEh;

type
  TFStokOpname = class(TForm)
    pnlBawah: TPanel;
    pnlAtas: TPanel;
    pnlTengah: TPanel;
    cxgrpbxDataObat: TcxGroupBox;
    cxlblTglStokOpname: TcxLabel;
    cxdtdtTglStokOpname: TcxDateEdit;
    cxlblKodeObat: TcxLabel;
    edtKodeObat: TcxTextEdit;
    cxlblNamaObat: TcxLabel;
    cbbNamaObat: TcxLookupComboBox;
    cxlblSatuan: TcxLabel;
    edtSatuan: TcxTextEdit;
    cxlblStok: TcxLabel;
    cxcrncydtStok: TcxCurrencyEdit;
    cxlblRealStok: TcxLabel;
    cxcrncydtRealStok: TcxCurrencyEdit;
    cxlblKeterangan: TcxLabel;
    cxmKeterangan: TcxMemo;
    btnInput: TcxButton;
    cxgrpbxDataObatStokOpname: TcxGroupBox;
    dbgrdhDataObat: TDBGridEh;
    pm1: TPopupMenu;
    HAPUS1: TMenuItem;
    cxgrpbxTampilObat: TcxGroupBox;
    cbblLimit: TcxComboBox;
    procedure cbbNamaObatKeyPress(Sender: TObject; var Key: Char);
    procedure cbbNamaObatDblClick(Sender: TObject);
    procedure cxcrncydtStokKeyPress(Sender: TObject; var Key: Char);
    procedure cxcrncydtRealStokKeyPress(Sender: TObject; var Key: Char);
    procedure cxmKeteranganKeyPress(Sender: TObject; var Key: Char);
    procedure btnInputClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure HAPUS1Click(Sender: TObject);
    procedure cbblLimitPropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure awal;
    procedure baruSetelahInput;
    procedure tampilStokOpname;
  end;

var
  FStokOpname: TFStokOpname;

implementation

{$R *.dfm}
uses UDataApotik, ADODB,DateUtils, DB;

procedure TFStokOpname.awal;
begin
  cxdtdtTglStokOpname.Date := Now;
  cbblLimit.ItemIndex := 0;
end;

procedure TFStokOpname.baruSetelahInput;
begin
  edtKodeObat.Text := '';
  cbbNamaObat.Text := '';
  edtSatuan.Text := '';
  cxcrncydtStok.Value := 0;
  cxcrncydtRealStok.Value := 0;
  cbbNamaObat.SetFocus;

  with DM.qryObat do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'select * from obat';
    Open;
  end;
end;

procedure TFStokOpname.tampilStokOpname;
var 
	tanggal,tanggal1:string;
begin
  tanggal := FormatDateTime('yyyy-MM-dd',cxdtdtTglStokOpname.EditValue);
  tanggal1 := FormatDateTime('yyyy-MM-dd',IncDay(cxdtdtTglStokOpname.EditValue,1));
  if cbblLimit.Text = 'Tampil Semua' then
    begin
     with DM.qryStokOpname do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'SELECT * FROM stokopname WHERE tglStokOpname BETWEEN "'+tanggal+'" AND "'+tanggal1+'"';
        Open;
      end;
    end
  else
    begin
      with DM.qryStokOpname do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'SELECT * FROM stokopname WHERE (tglStokOpname BETWEEN "'+tanggal+'" AND "'+tanggal1+'") ORDER BY createDate DESC limit '+cbblLimit.Text+' ';
        Open;
      end;
    end
end;

procedure TFStokOpname.cbbNamaObatKeyPress(Sender: TObject; var Key: Char);
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
         cxcrncydtStok.Text := DM.qryObat.FieldByName('jumlahStok').AsString;
         cxcrncydtRealStok.SetFocus;
      end
      else
      MessageDlg('Kode Obat Yang Anda Masukan Tidak Di Temukan',mtInformation,[mbok],0)
end;
end;
end;

procedure TFStokOpname.cbbNamaObatDblClick(Sender: TObject);
begin
  baruSetelahInput;
end;

procedure TFStokOpname.cxcrncydtStokKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  cxcrncydtRealStok.SetFocus;
end;

procedure TFStokOpname.cxcrncydtRealStokKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  cxmKeterangan.SetFocus;
end;

procedure TFStokOpname.cxmKeteranganKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  btnInput.SetFocus;
end;

procedure TFStokOpname.btnInputClick(Sender: TObject);
var
  tglStokOpname:String;
begin
if (edtKodeObat.Text='') or (cbbNamaObat.Text='') or
   (edtSatuan.Text='') or (cxcrncydtStok.Text='') or (cxcrncydtRealStok.Text='') then
    MessageDlg('Data Harus Di Isi Lengkap...!',mtInformation,[mbok],0)
    else
    begin
      with DM.qryObat do
      begin
       Close;
       SQL.Clear;
       SQL.Text := 'update obat set jumlahStok="'+cxcrncydtRealStok.Text+'" where kdObat="'+edtKodeObat.Text+'"';
       ExecSQL;
       SQL.Text := 'select * from obat';
       Open;
      end;

      tglStokOpname := FormatDateTime('yyyy-MM-dd H:mm',cxdtdtTglStokOpname.EditValue);
      with DM.qryStokOpname do
      begin
       Close;
       SQL.Clear;
       SQL.Text := 'insert into stokopname (tglStokOpname,kdObat,namaObat,'+
                  'satuanObat,jumlahStok,jumlahStokReal,keterangan,createDate) values '+
                  '("'+tglStokOpname+'","'+edtKodeObat.Text+'","'+cbbNamaObat.Text+'",'+
                  '"'+edtSatuan.Text+'","'+cxcrncydtStok.Text+'","'+cxcrncydtRealStok.Text+'",'+
                  '"'+cxmKeterangan.Text+'","'+FormatDateTime('yyyy-MM-dd hh:mm:ss',Now)+'")';
       ExecSQL;
       //SQL.Text := 'select * from stokopname';
       //Open;
      end;

      baruSetelahInput;
      tampilStokOpname;
    end;
end;

procedure TFStokOpname.FormShow(Sender: TObject);
begin
awal;
baruSetelahInput;
tampilStokOpname;
end;

procedure TFStokOpname.HAPUS1Click(Sender: TObject);
var
  id,kodeObat:String;
  jumlahStok:Integer;
begin
IF DM.qryStokOpname.RecordCount >= 1 then
  begin
    if MessageDlg('Anda Ingin Menghapus Data "'+DM.qryStokOpname['namaObat']+'" ?', mtConfirmation,[mbyes,mbno],0)=mryes then
    begin
     id := DM.qryStokOpname.Fieldbyname('idStokOpname').AsString;
     kodeObat := DM.qryStokOpname.Fieldbyname('kdObat').AsString;
     jumlahStok := DM.qryStokOpname.Fieldbyname('jumlahStok').AsInteger;

     with DM.qryObat do
     begin
      Close;
      SQL.Clear;
      SQL.Text := 'update obat set jumlahStok="'+IntToStr(jumlahStok)+'" where kdObat="'+kodeObat+'"';
      ExecSQL;
      SQL.Text := 'select * from obat';
      Open;
     end;

     with DM.qryStokOpname do
     begin
      Close;
      SQL.Clear;
      SQL.Text := 'delete from stokopname where idStokOpname="'+id+'" limit 1';
      ExecSQL;
      ///SQL.Text := 'select * from stokopname';
      ///Open;
     end;

     tampilStokOpname;

     MessageDlg('Data Berhasil di Hapus...!',mtInformation,[mbOK],0);
    end
    else
    Abort;
  end
  else
  MessageDlg('Data Tidak Di Temukan...!',mtWarning,[mbOK],0);
end;

procedure TFStokOpname.cbblLimitPropertiesChange(Sender: TObject);
begin
tampilStokOpname;
end;

end.
