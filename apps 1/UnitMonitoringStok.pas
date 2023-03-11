unit UnitMonitoringStok;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  cxButtons, StdCtrls, ExtCtrls, cxControls, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxTextEdit, ComCtrls, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, ADODB, cxGroupBox;

type
  TFormMONITORINGSTOK = class(TForm)
    pnlAtas: TPanel;
    pnlBawah: TPanel;
    pnlTengah: TPanel;
    grpFilter: TGroupBox;
    lblNamaObat: TLabel;
    cbbNamaObat: TcxLookupComboBox;
    cxtxtdtKodeObat: TcxTextEdit;
    lblKodeObat: TLabel;
    cxtxtdtSatuan: TcxTextEdit;
    lblSatuan: TLabel;
    cxtxtdtJumlahStok: TcxTextEdit;
    lblJumlahStok: TLabel;
    lblMulai: TLabel;
    dtpTgl: TDateTimePicker;
    dtpSampai: TDateTimePicker;
    lblSampai: TLabel;
    btnTampil: TcxButton;
    qryStokPenerimaan: TADOQuery;
    dsStokPeneriman: TDataSource;
    btnRiwayatStokOpname: TcxButton;
    cxgrpbxPENERIMAAN: TcxGroupBox;
    cxgrdPENERIMAAN: TcxGrid;
    cxgrdbtblvwPENERIMAAN: TcxGridDBTableView;
    cxgrdbclmnPENERIMAANtglPenerimaanObat: TcxGridDBColumn;
    cxgrdbclmnPENERIMAANjumlahPenerimaan: TcxGridDBColumn;
    cxgrdlvlPENERIMAAN: TcxGridLevel;
    cxgrpbxSTOKMANUAL: TcxGroupBox;
    qryTAMBAHSTOKMANUAL: TADOQuery;
    dsTAMBAHSTOKMANUAL: TDataSource;
    cxgrdbtblvwTambahStok: TcxGridDBTableView;
    cxgrdlvlTambahStok: TcxGridLevel;
    cxgrdTambahStok: TcxGrid;
    cxgrdbclmnTambahStoktglTambahStok: TcxGridDBColumn;
    cxgrdbclmnTambahStokjmlTambahStok: TcxGridDBColumn;
    cxgrpbxRETUR: TcxGroupBox;
    cxgrpbxPENJUALAN: TcxGroupBox;
    qryPENJUALAN: TADOQuery;
    dsPENJUALAN: TDataSource;
    cxgrdbtblvwPENJUALAN: TcxGridDBTableView;
    cxgrdlvlPENJUALAN: TcxGridLevel;
    cxgrdPENJUALAN: TcxGrid;
    cxgrdbclmnPENJUALANtglPenjualan: TcxGridDBColumn;
    cxgrdbclmnPENJUALANjumlahPenjualan: TcxGridDBColumn;
    qryJmlRetur: TADOQuery;
    cxgrdbtblvwRetur: TcxGridDBTableView;
    cxgrdlvlRetur: TcxGridLevel;
    cxgrdRetur: TcxGrid;
    dsRetur: TDataSource;
    cxgrdbclmnReturtglReturSupplier: TcxGridDBColumn;
    cxgrdbclmnReturjumlah: TcxGridDBColumn;
    procedure cbbNamaObatKeyPress(Sender: TObject; var Key: Char);
    procedure cbbNamaObatDblClick(Sender: TObject);
    procedure btnTampilClick(Sender: TObject);
    procedure btnRiwayatStokOpnameClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMONITORINGSTOK: TFormMONITORINGSTOK;

implementation

{$R *.dfm}
uses UDataApotik;

procedure TFormMONITORINGSTOK.cbbNamaObatKeyPress(Sender: TObject;
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
      end
      else
      MessageDlg('Kode Obat Yang Anda Masukan Tidak Di Temukan',mtInformation,[mbok],0)
    end;
end;
end;

procedure TFormMONITORINGSTOK.cbbNamaObatDblClick(Sender: TObject);
begin
  cbbNamaObat.Clear;
  cxtxtdtKodeObat.Clear;
  cxtxtdtSatuan.Clear;
  cxtxtdtJumlahStok.Text := '';
  with DM.qryObat do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'select * from obat';
    Open;
  end;
end;

procedure TFormMONITORINGSTOK.btnTampilClick(Sender: TObject);
VAR
  tglMulai,tglSelesai,kdObat:String;
begin
  tglMulai:= FormatDateTime('YYYY-MM-dd',dtpTgl.Date);
  tglSelesai := FormatDateTime('YYYY-MM-dd',dtpSampai.Date);
  kdObat := cxtxtdtKodeObat.Text;

  with qryStokPenerimaan do
  begin
    Active := True;
    Close;
    SQL.Clear;
    SQL.Text := 'SELECT '+
                  '`penerimaanobat`.`noPenerimaanObat`'+
                 ' , `penerimaanobat`.`tglPenerimaanObat`'+
                 ' , `detailpenerimaanobat`.`kdObat`'+
                 ' , `detailpenerimaanobat`.`namaObat`'+
                 ' ,`detailpenerimaanobat`.`jumlahIsiBeli`'+
              'FROM'+
                  '`detailpenerimaanobat`'+
                  'INNER JOIN `penerimaanobat`'+
                     ' ON (`detailpenerimaanobat`.`noPenerimaanObat` = `penerimaanobat`.`noPenerimaanObat`)'+
             ' WHERE penerimaanobat.tglPenerimaanObat BETWEEN "'+tglMulai+'" AND "'+tglSelesai+'"  AND (detailpenerimaanobat.kdObat="'+kdObat+'")';
    Open;
  end;

  with qryTAMBAHSTOKMANUAL do
  begin
    Active := True;
    Close;
    SQL.Clear;
    SQL.Text := 'SELECT '+
                  '`tglTambahStok`'+
                  ', `kdObat`'+
                  ', `namaObat`'+
                  ', (`jmlTambahStok`) AS `jmlTambahStok`'+
              'FROM'+
                  '`historitambahstok`'+
              'WHERE tglTambahStok BETWEEN "'+tglMulai+'" AND "'+tglSelesai+'" AND kdObat="'+kdObat+'"';
    Open;
  end;

  with qryJmlRetur do
  begin
    Active := True;
    Close;
    SQL.Clear;
    SQL.Text := 'SELECT '+
                   ' `retursupplier`.`noReturSupplier`'+
                   ' , `retursupplier`.`tglPenerimaanObat`'+
                   ' , `retursupplier`.`tglReturSupplier`'+
                   ' , `detailretursupplier`.`kdObat`'+
                   ' , `detailretursupplier`.`namaObat`'+
                   ' , `detailretursupplier`.`hargaBeli`'+
                'FROM'+
                    '`detailretursupplier`'+
                    'INNER JOIN `retursupplier`'+
                       ' ON (`detailretursupplier`.`noReturSupplier` = `retursupplier`.`noReturSupplier`) where (`retursupplier`.`tglReturSupplier` BETWEEN "'+tglMulai+'" and "'+tglSelesai+'") and (`detailretursupplier`.`kdObat`="'+kdObat+'")';
    Open;
  end;

  with qryPENJUALAN do
  begin
    Active := True;
    Close;
    SQL.Clear;
    SQL.Text := 'SELECT '+
                 ' `penjualan`.`noPenjualan`'+
                 ' , `penjualan`.`tglPenjualan`'+
                 ' , `detailpenjualan`.`kdObat`'+
                 ' , `detailpenjualan`.`namaObat`'+
                 ' , (`detailpenjualan`.`jumlahJual`) AS `jumlahPenjualan`'+
              'FROM'+
                  '`penjualan`'+
                  'INNER JOIN `detailpenjualan`'+
                      'ON (`penjualan`.`noPenjualan` = `detailpenjualan`.`noPenjualan`) where (`penjualan`.`tglPenjualan` BETWEEN "'+tglMulai+'" and "'+tglSelesai+'") and (`detailpenjualan`.`kdObat`="'+kdObat+'")';
    Open;
  end;
end;

procedure TFormMONITORINGSTOK.btnRiwayatStokOpnameClick(Sender: TObject);
begin
  ShowMessage('Dalam Penambahan Fitur');
end;

end.
