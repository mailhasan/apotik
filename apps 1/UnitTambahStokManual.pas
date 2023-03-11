unit UnitTambahStokManual;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxGroupBox, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, StdCtrls, Menus,
  cxButtons, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid;

type
  TFormTambahStokManual = class(TForm)
    cxgrpbxDataTambahStokObat: TcxGroupBox;
    lblKodeObat: TLabel;
    cxtxtdtKodeObat: TcxTextEdit;
    cbbNamaObat: TcxLookupComboBox;
    lblNamaObat: TLabel;
    cxtxtdtSatuan: TcxTextEdit;
    lblSatuan: TLabel;
    cxtxtdtJumlahStok: TcxTextEdit;
    lblJumlahStok: TLabel;
    cxtxtdtJumlahTambah: TcxTextEdit;
    lblJumlahJual: TLabel;
    cxgrpbxRIWAYATTAMBAHSTOKHARIINI: TcxGroupBox;
    btnTAMBAH: TcxButton;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    cxgrd1: TcxGrid;
    cxgrdbclmnGrid1DBTableView1tglTambahStok: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1kdObat: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1namaObat: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1jmlSisaStok: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1jmlTambahStok: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1createDate: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1createUserId: TcxGridDBColumn;
    pm1: TPopupMenu;
    HAPUS1: TMenuItem;
    procedure cbbNamaObatDblClick(Sender: TObject);
    procedure cbbNamaObatKeyPress(Sender: TObject; var Key: Char);
    procedure cxtxtdtJumlahTambahKeyPress(Sender: TObject; var Key: Char);
    procedure btnTAMBAHClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure HAPUS1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure baruSetelahInput;
    procedure tampilDataTrasaksi;
  end;

var
  FormTambahStokManual: TFormTambahStokManual;

implementation

{$R *.dfm}
USES UDataApotik, ADODB, UUtama;

procedure TFormTambahStokManual.baruSetelahInput;
begin
  cxtxtdtKodeObat.Clear;
  cbbNamaObat.EditValue := '';
  cxtxtdtSatuan.Text := '';
  cxtxtdtJumlahStok.Text :='';
  cxtxtdtJumlahTambah.Text :='1';
  cbbNamaObat.SetFocus;

  with DM.qryObat do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'select * from obat';
    Open;
  end;
end;

procedure TFormTambahStokManual.tampilDataTrasaksi;
begin
  with DM.qryhistoritambahstok do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'select * from historitambahstok where tglTambahStok="'+FormatDateTime('YYYY-mm-dd',Now)+'"';
    Open;
  end;
end;

procedure TFormTambahStokManual.cbbNamaObatDblClick(Sender: TObject);
begin
baruSetelahInput;
end;

procedure TFormTambahStokManual.cbbNamaObatKeyPress(Sender: TObject;
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
         cxtxtdtKodeObat.Text := DM.qryObat.FieldByName('kdObat').AsString;
         cbbNamaObat.EditValue := DM.qryObat.FieldByName('namaObat').AsString;
         cxtxtdtSatuan.Text := DM.qryObat.FieldByName('satuanObat').AsString;
         cxtxtdtJumlahStok.Text := DM.qryObat.FieldByName('jumlahStok').AsString;
         cxtxtdtJumlahTambah.Text := FloatToStr(1);
         cxtxtdtJumlahTambah.SetFocus;
      end
      else
      MessageDlg('Kode Obat Yang Anda Masukan Tidak Di Temukan',mtInformation,[mbok],0)
    end;
end;
end;

procedure TFormTambahStokManual.cxtxtdtJumlahTambahKeyPress(
  Sender: TObject; var Key: Char);
begin
if Key=#13 then
  btnTAMBAH.SetFocus;
end;

procedure TFormTambahStokManual.btnTAMBAHClick(Sender: TObject);
var
  tglTransaksi,createDt,user:String;
  jumlahStok:Integer;
begin
if (cxtxtdtKodeObat.Text = '') or (cbbNamaObat.Text = '') or (cxtxtdtSatuan.Text='') or
    (cxtxtdtJumlahStok.Text='') or (cxtxtdtJumlahTambah.Text='0') then
    MessageDlg('Data Wajib Di Isi Lengkap...!',mtWarning,[mbOK],0)
    else
    begin
     tglTransaksi := FormatDateTime('YYYY-mm-dd',Now);
     createDt := FormatDateTime('YYYY-mm-dd hh:mm:ss',Now);
     user := FUtama.stat1.Panels[0].Text;
     jumlahStok := StrToInt(cxtxtdtJumlahStok.Text)+ StrToInt(cxtxtdtJumlahTambah.Text);
     with DM.qryObat do
     begin
        Close;
        SQL.Clear;
        SQL.Text := 'update obat set jumlahStok="'+IntToStr(jumlahStok)+'" where kdObat="'+cxtxtdtKodeObat.Text+'"';
        ExecSQL;
        SQL.Text := 'select * from obat';
        Open;
     end;

     with DM.qryhistoritambahstok do
     begin
       Close;
       SQL.Clear;
       SQL.Text := 'insert into historitambahstok (tglTambahStok,kdObat,namaObat,jmlSisaStok,jmlTambahStok,createDate,createUserId) values '+
                  '("'+tglTransaksi+'","'+cxtxtdtKodeObat.Text+'","'+cbbNamaObat.Text+'","'+cxtxtdtJumlahStok.Text+'","'+cxtxtdtJumlahTambah.Text+'","'+createDt+'","'+user+'")';
       ExecSQL;
       SQL.Text := 'select * from historitambahstok';
       Open;
     end;

     tampilDataTrasaksi;
     baruSetelahInput;
    end;
end;

procedure TFormTambahStokManual.FormShow(Sender: TObject);
begin
tampilDataTrasaksi; baruSetelahInput;
end;

procedure TFormTambahStokManual.HAPUS1Click(Sender: TObject);
var
  kodeObat:String;
  jumlahTambah,stokObat,jumlahStok,kode:Integer;
begin
if DM.qryhistoritambahstok.RecordCount >= 1 then
  begin
   if MessageDlg('Anda Ingin Menghapus Data "'+DM.qryhistoritambahstok['namaObat']+'" ?', mtConfirmation,[mbyes,mbno],0)=mryes then
    begin
      kode:= DM.qryhistoritambahstok.FieldByName('id').AsInteger;
      kodeObat := DM.qryhistoritambahstok.FieldByName('kdObat').asstring;
      jumlahTambah := DM.qryhistoritambahstok.FieldByName('jmlTambahStok').AsInteger;
      with DM.qryObat do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'select * from obat where kdObat="'+kodeObat+'"';
        Open;
      end;
      stokObat := DM.qryObat.FieldByName('jumlahStok').AsInteger;
      jumlahStok := stokObat-jumlahTambah;

      with DM.qryObat do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'update obat set jumlahStok="'+IntToStr(jumlahStok)+'" where kdObat="'+kodeObat+'"';
        ExecSQL;
        SQL.Text := 'select * from obat';
        Open;
      end;

      with DM.qryhistoritambahstok do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'delete from historitambahstok where id="'+IntToStr(kode)+'"';
        ExecSQL;
        SQL.Text := 'select * from historitambahstok';
        Open;
      end;
      tampilDataTrasaksi;
    end
    else
    Abort;
  end
  else
  MessageDlg('Data Tidak Di Temukan...!!',mtInformation,[mbok],0);
end;

end.
