unit UReturKonsinyasi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  ComCtrls, Buttons;

type
  TFReturKonsinyasi = class(TForm)
    pnlBawah: TPanel;
    pnlAtas: TPanel;
    pnlTengah: TPanel;
    grpDataSupplier: TGroupBox;
    lblNamaSupplier: TLabel;
    lblKodeSupplier: TLabel;
    edtKodeSupplier: TEdit;
    lblNoPenerimaan: TLabel;
    edtSupplier: TEdit;
    lblTglPenerimaan: TLabel;
    lblTotalHargaBeli: TLabel;
    edtTotalHargaBeli: TEdit;
    lblTotalPembayaran: TLabel;
    edtTotalPembayaran: TEdit;
    lblSisaPembayaran: TLabel;
    edtSisaPembayaran: TEdit;
    lblStatus: TLabel;
    cbbStatusPembayaran: TComboBox;
    grpDaftarBarangKonsinyasi: TGroupBox;
    strngrdDaftarBarang: TStringGrid;
    lblNoRetur: TLabel;
    edtNoRetur: TEdit;
    lblTglRetur: TLabel;
    cbbKategoriPenerimaan: TComboBox;
    lblKategori: TLabel;
    dtpTglRetur: TDateTimePicker;
    dtpTglPenerimaan: TDateTimePicker;
    btnProses: TButton;
    btnBaru: TButton;
    btnPembayaranPelunasan: TButton;
    btnCariSupplier: TSpeedButton;
    cxtxtdtNOPENERIMAAN: TcxTextEdit;
    procedure FormShow(Sender: TObject);
    procedure cbbKategoriPenerimaanKeyPress(Sender: TObject;
      var Key: Char);
    procedure cbbSupplierKeyPress(Sender: TObject; var Key: Char);
    procedure btnBaruClick(Sender: TObject);
    procedure cbbSupplierClick(Sender: TObject);
    procedure btnProsesClick(Sender: TObject);
    procedure btnPembayaranPelunasanClick(Sender: TObject);
    procedure btnCariSupplierClick(Sender: TObject);
    procedure cxtxtdtNOPENERIMAANClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure reset;
    procedure awal;
    procedure aturkolom;
    procedure ambildata;
    procedure tampildata;
  end;

var
  FReturKonsinyasi: TFReturKonsinyasi;

implementation

{$R *.dfm}
uses UDataApotik,UPembayaranPenerimaan,UnitPencarianReturSupplier, ADODB, DB;

procedure TFReturKonsinyasi.reset;
var
  i:integer;
begin
  for i := 0 to ComponentCount -1 do
    begin
      if (Components[i] is TEdit) and (TEdit(Components[i]).Tag = 0) then
       Tedit(Components[i]).Text :=''
    end;
    //bitbtn1.Caption:='Tambah';
    // Lrp.Caption:='Rp';
end;

procedure TFReturKonsinyasi.awal;
begin
   edtNoRetur.Text := 'R-'+FormatDateTime('ddMMYY',Now)+'-'+IntToStr(DM.qryReturSupplier.RecordCount+1);
   dtpTglRetur.Date := Now;
   cbbKategoriPenerimaan.Text := '';
   cxtxtdtNOPENERIMAAN.Text := '';
   edtKodeSupplier.Text := '';
   edtSupplier.Text := '';
   dtpTglPenerimaan.Date := Now;
   cbbStatusPembayaran.Text := '';
   edtTotalHargaBeli.Text := '';
   edtTotalPembayaran.Text := '';
   edtSisaPembayaran.Text := '';
end;

procedure TFReturKonsinyasi.aturkolom;
var
  i,j:integer;
begin
  with strngrdDaftarBarang do
  begin
    for i := 0 to colCount-1 do
        for j := 0 to rowCount-1 do
          Cells[i,j]:='';

    ColCount :=6;
    RowCount :=2;
    FixedCols:=1;
    DefaultROwHeight:=18;

    Cells[0,0]:='No.';
    Cells[1,0]:= 'KODE OBAT ';
    Cells[2,0]:='NAMA OBAT';
    Cells[3,0]:='JML PENERIMAAN';
    Cells[4,0]:='HARGA';
    Cells[5,0]:='JML RETUR';

    //lebar kolom
    ColWidths[0]:=25;
    ColWidths[1]:=80;
    ColWidths[2]:=200;
    ColWidths[3]:=100;
    ColWidths[4]:=100;
    ColWidths[5]:=100;

  end;
end;

procedure TFReturKonsinyasi.ambildata;
begin
  with DM.qryDetailPenerimaanObat do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'select * from detailpenerimaanobat where noPenerimaanObat="'+cxtxtdtNOPENERIMAAN.Text+'"';
    Open;
  end;
end;

procedure TFReturKonsinyasi.tampildata;
var i:Integer;
begin
  if DM.qryDetailPenerimaanObat.RecordCount<>0 then
  begin
    strngrdDaftarBarang.RowCount := DM.qryDetailPenerimaanObat.RecordCount+1;
    for i:=0 to  DM.qryDetailPenerimaanObat.RecordCount-1 do
    begin
      strngrdDaftarBarang.Cells[0,i+1] := IntToStr(i+1)+'.';
      strngrdDaftarBarang.Cells[1,i+1] := DM.qryDetailPenerimaanObat.FieldByName('kdObat').AsString;
      strngrdDaftarBarang.Cells[2,i+1] := DM.qryDetailPenerimaanObat.FieldByName('namaObat').AsString;
      strngrdDaftarBarang.Cells[3,i+1] := DM.qryDetailPenerimaanObat.FieldByName('jumlahIsiBeli').AsString;
      strngrdDaftarBarang.Cells[4,i+1] := DM.qryDetailPenerimaanObat.FieldByName('hargaBeliPerBiji').AsString;
      strngrdDaftarBarang.Cells[5,i+1] := IntToStr(0);
      DM.qryDetailPenerimaanObat.Next
    end;
  end;
end;

procedure TFReturKonsinyasi.FormShow(Sender: TObject);
begin
  awal; aturkolom;
end;

procedure TFReturKonsinyasi.cbbKategoriPenerimaanKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    if (cbbKategoriPenerimaan.Text='') then
    begin
      ShowMessage('Kategori Penerimaan Harus Di Isi Dulu...!')
    end
    else
    begin
      btnCariSupplier.Click;
    end;

  end;
end;

procedure TFReturKonsinyasi.cbbSupplierKeyPress(Sender: TObject;
  var Key: Char);
begin
{if Key=#13 then
  begin
    if cbbSupplier.Text = '' then
      begin
        ShowMessage('Data Supplier Belum Di isi....!');
        cbbSupplier.SetFocus;
      end
      else
      begin
        with DM.qryPenerimaanObat do
        begin
          Close;
          SQL.Clear;
          SQL.Text := 'select * from penerimaanObat where noPenerimaanObat="'+cbbSupplier.Text+'" ';
          Open;
        end;
        if DM.qryPenerimaanObat['noPenerimaanObat'] = cbbSupplier.Text then
        begin
          cbbSupplier.Text := DM.qryPenerimaanObat.FieldByname('noPenerimaanObat').AsString;
          dtpTglPenerimaan.Date := DM.qryPenerimaanObat.FieldByname('tglPenerimaanObat').AsDateTime;
          edtKodeSupplier.Text := DM.qryPenerimaanObat.FieldByname('kdSupplier').AsString;
          edtSupplier.Text := DM.qryPenerimaanObat.FieldByname('namaSupplier').AsString;
          cbbStatusPembayaran.Text := DM.qryPenerimaanObat.FieldByname('statusPembayaran').AsString;
          edtTotalHargaBeli.Text := DM.qryPenerimaanObat.FieldByname('totalHargaBeli').AsString;
          edtTotalPembayaran.Text := DM.qryPenerimaanObat.FieldByname('jumlahPembayaranBeli').AsString;
          edtSisaPembayaran.Text := DM.qryPenerimaanObat.FieldByname('sisaPembayaranBeli').AsString;
        end;

        ambildata; tampildata;

      end;
  end;}
end;

procedure TFReturKonsinyasi.btnBaruClick(Sender: TObject);
begin
reset;  awal;  aturkolom;
end;

procedure TFReturKonsinyasi.cbbSupplierClick(Sender: TObject);
begin
if cbbKategoriPenerimaan.Text = '' then
  begin
     ShowMessage('Kategori Penerimaan Wajib Di Pilih...!');
     cbbKategoriPenerimaan.SetFocus;
  end;
end;

procedure TFReturKonsinyasi.btnProsesClick(Sender: TObject);
var
  i,jmlStok:integer;
  subTotal,totalRetur:Double;
begin
if (edtNoRetur.Text='') then
    MessageDlg('Data tidak boleh kosong !!!',mtInformation,[mbOK],0)
    else
    begin
     if DM.qryReturSupplier.Locate('noReturSupplier',edtNoRetur.Text,[])  then
      MessageDlg('Data Sudah Ada!!',mtWarning,[mbok],0)
      else
      begin
         for i:=1 to strngrdDaftarBarang.RowCount -1 do
          begin
            subTotal := (StrToFloat(strngrdDaftarBarang.Cells[4,i])*StrToFloat(strngrdDaftarBarang.Cells[5,i]));


            with DM.qryDetailReturSupplier do
            begin
              Close;
              SQL.Clear;                                                          
              SQL.Text := 'insert into detailretursupplier (noReturSupplier,kdObat,namaObat,jumlahPenerimaan,jumlahRetur,hargaBeli,subTotalRetur)'+
                        'values ('+QuotedStr(edtNoRetur.Text)+','+QuotedStr(strngrdDaftarBarang.Cells[1,i])+','+
                        ''+QuotedStr(strngrdDaftarBarang.Cells[2,i])+','+QuotedStr(strngrdDaftarBarang.Cells[3,i])+','+
                        ''+QuotedStr(strngrdDaftarBarang.Cells[4,i])+','+QuotedStr(strngrdDaftarBarang.Cells[5,i])+','+
                        ''+QuotedStr(FloatToStr(subTotal))+')';
              ExecSQL;

              Close;
              SQL.Clear;
              SQL.Text:='update obat set jumlahStok=jumlahStok-"'+strngrdDaftarBarang.Cells[5,i]+'" where kdObat="'+strngrdDaftarBarang.Cells[1,i]+'"';
              ExecSQL;
            end;

          end;

          with DM.qryDetailReturSupplier do
          begin
            Close;
            SQL.Clear;
            SQL.Text := 'SELECT SUM(subTotalRetur) FROM detailretursupplier WHERE noReturSupplier="'+edtNoRetur.Text+'"';
            Open;
          end;

          totalRetur := dm.qryDetailReturSupplier.Fields[0].AsFloat;

          with DM.qryReturSupplier do
          begin
            Close;
            SQL.Clear;
            SQL.Text := 'insert into retursupplier (noReturSupplier,tglReturSupplier,noPenerimaanObat,'+
                      'tglPenerimaanObat,kdSupplier,supplier,totalHargBeli,totalRetur,kategoriPenerimaan) '+
                      'values ("'+edtNoRetur.Text+'","'+FormatDateTime('yyyy-mm-dd',dtpTglRetur.Date)+'",'+
                      '"'+cxtxtdtNOPENERIMAAN.Text+'","'+FormatDateTime('yyyy-mm-dd',dtpTglPenerimaan.Date)+'",'+
                      '"'+edtKodeSupplier.Text+'","'+edtSupplier.Text+'","'+edtTotalHargaBeli.Text+'","'+FloatToStr(subTotal)+'","'+cbbKategoriPenerimaan.Text+'")';
            ExecSQL;
            SQL.Text := 'select * from retursupplier';
            Open;
          end;

          with DM.qryPenerimaanObat do
          begin
            Close;
            SQL.Clear;
            SQL.Text := 'update penerimaanobat set jumlahPembayaranBeli=jumlahPembayaranBeli+"'+FloatToStr(totalRetur)+'",sisaPembayaranBeli=totalHargaBeli-jumlahPembayaranBeli where noPenerimaanObat="'+cxtxtdtNOPENERIMAAN.Text+'"';
            ExecSQL;
            SQL.Text := 'select * from penerimaanObat';
            Open;
          end;

          ShowMessage('Berhasil Proses Retur...!');
      end;
    end;
end;

procedure TFReturKonsinyasi.btnPembayaranPelunasanClick(Sender: TObject);
var
  noPenerimaa:String;
begin
with DM.qryPenerimaanObat do
begin
 Close;
 SQL.Clear;
 SQL.Text := 'select * from penerimaanObat where noPenerimaanObat="'+cxtxtdtNOPENERIMAAN.Text+'"';
 Open;
end;
if DM.qryPenerimaanObat.RecordCount >= 1 then
  begin
    noPenerimaa:= DM.qryPenerimaanObat.FieldByname('noPenerimaanObat').AsString;
    Application.CreateForm(TFPembayaran, FPembayaran);
    with FPembayaran do
    begin
     cxlblNo.Caption := noPenerimaa;
     cxcrncydtTotalPembelian.Value := DM.qryPenerimaanObat.FieldByname('totalHargaBeli').AsFloat;
     cxcrncydtSisaPembayaran.Value := DM.qryPenerimaanObat.FieldByname('sisaPembayaranBeli').AsFloat;
     cxcrncydtTotalPembayaran.Value := DM.qryPenerimaanObat.FieldByname('jumlahPembayaranBeli').AsFloat;
     cxcrncydtDiskon.Value := DM.qryPenerimaanObat.FieldByname('diskon').AsFloat;
     cbbStatusPembayaran.Text :=  DM.qryPenerimaanObat.FieldByname('statusPembayaran').AsString;
     Show;
    end;
  end;
end;

procedure TFReturKonsinyasi.btnCariSupplierClick(Sender: TObject);
begin
if cbbKategoriPenerimaan.Text = '' then
  begin
     ShowMessage('Kategori Penerimaan Wajib Di Pilih...!');
     cbbKategoriPenerimaan.SetFocus;
  end
  else
  begin
    Application.CreateForm(TFormpPencarianReturSupplier, FormpPencarianReturSupplier);
    WITH FormpPencarianReturSupplier DO
    begin
      cxlblKATEGORI.Caption := cbbKategoriPenerimaan.Text;
      Show;
    end;
  end
end;

procedure TFReturKonsinyasi.cxtxtdtNOPENERIMAANClick(Sender: TObject);
begin
  ambildata; tampildata;
end;

end.
