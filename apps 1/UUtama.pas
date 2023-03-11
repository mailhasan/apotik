unit UUtama;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, Menus, XPMan, jpeg, StdCtrls,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  cxLookAndFeels, dxSkinsForm;

type
  TFUtama = class(TForm)
    pnlAtas: TPanel;
    pnlTengah: TPanel;
    stat1: TStatusBar;
    mmApotik: TMainMenu;
    DATAMASTER1: TMenuItem;
    DATASUPPLIER1: TMenuItem;
    DATADOKTER1: TMenuItem;
    DATAOBAT1: TMenuItem;
    DATAPENGGUNA1: TMenuItem;
    PENERIMAAN1: TMenuItem;
    PENJUALAN1: TMenuItem;
    RETUR1: TMenuItem;
    STOKOPNAME1: TMenuItem;
    LAPORAN1: TMenuItem;
    HELP1: TMenuItem;
    PENERIMAANOBAT1: TMenuItem;
    LIST1: TMenuItem;
    PENJUALANOBAT1: TMenuItem;
    LISTPENJUALANOBAT1: TMenuItem;
    img1: TImage;
    dxskncntrlr1: TdxSkinController;
    RANSAKSILAIN1: TMenuItem;
    PENGELUARAN1: TMenuItem;
    STORBANK1: TMenuItem;
    PENDAPATAN1: TMenuItem;
    LAPORANPENERIMAAN1: TMenuItem;
    LAPORANPENJUALAN1: TMenuItem;
    STOKOPNAME2: TMenuItem;
    LAPORANSTOK1: TMenuItem;
    PENGELUARAN2: TMenuItem;
    RETURKONSINYASI1: TMenuItem;
    LISTRETURSUPPLIER1: TMenuItem;
    RETUR2: TMenuItem;
    IDENTITASAPOTIK1: TMenuItem;
    URUTANTERLARIS1: TMenuItem;
    OTALRESEPDOKTER1: TMenuItem;
    SATUAN1: TMenuItem;
    AMBAHSTOKMANUAL1: TMenuItem;
    LISTTAMBAHSTOKMANUAL1: TMenuItem;
    JADWALKERJA2: TMenuItem;
    JAMSHIF2: TMenuItem;
    JADWAKERJA1: TMenuItem;
    KARTUSTOK1: TMenuItem;
    Versi11: TMenuItem;
    Versi21: TMenuItem;
    LOKASIRAK1: TMenuItem;
    UPDATEDATAOBATRAK1: TMenuItem;
    REKAPLAPORAN1: TMenuItem;
    procedure DATASUPPLIER1Click(Sender: TObject);
    procedure PENJUALANOBAT1Click(Sender: TObject);
    procedure HELP1Click(Sender: TObject);
    procedure DATADOKTER1Click(Sender: TObject);
    procedure DATAOBAT1Click(Sender: TObject);
    procedure LISTPENJUALANOBAT1Click(Sender: TObject);
    procedure PENERIMAANOBAT1Click(Sender: TObject);
    procedure LIST1Click(Sender: TObject);
    procedure PENGELUARAN1Click(Sender: TObject);
    procedure STORBANK1Click(Sender: TObject);
    procedure PENDAPATAN1Click(Sender: TObject);
    procedure RETUROBAT1Click(Sender: TObject);
    procedure LISTRETUROBAT1Click(Sender: TObject);
    procedure LAPORANPENERIMAAN1Click(Sender: TObject);
    procedure LAPORANPENJUALAN1Click(Sender: TObject);
    procedure STOKOPNAME2Click(Sender: TObject);
    procedure LAPORANSTOK1Click(Sender: TObject);
    procedure DATAPENGGUNA1Click(Sender: TObject);
    procedure PENGELUARAN2Click(Sender: TObject);
    procedure RETURKONSINYASI1Click(Sender: TObject);
    procedure LISTRETURSUPPLIER1Click(Sender: TObject);
    procedure URUTANTERLARIS1Click(Sender: TObject);
    procedure OTALRESEPDOKTER1Click(Sender: TObject);
    procedure SATUAN1Click(Sender: TObject);
    procedure IDENTITASAPOTIK1Click(Sender: TObject);
    procedure AMBAHSTOKMANUAL1Click(Sender: TObject);
    procedure LISTTAMBAHSTOKMANUAL1Click(Sender: TObject);
    procedure JAMSHIF2Click(Sender: TObject);
    procedure JADWAKERJA1Click(Sender: TObject);
    procedure KARTUSTOK1Click(Sender: TObject);
    procedure Versi11Click(Sender: TObject);
    procedure Versi21Click(Sender: TObject);
    procedure LOKASIRAK1Click(Sender: TObject);
    procedure UPDATEDATAOBATRAK1Click(Sender: TObject);
    procedure REKAPLAPORAN1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FUtama: TFUtama;

implementation

{$R *.dfm}
uses UDataSupplier,UPenjualanObat,UDataDokter,UDataObat,UnListDataPenjualan,UBantuan,
      UPenerimaan,UListDataPenerimaan,UStokOpname,
      UPengeluaran,UStorBank,ULaporanPendapatan,ULaporanPenerimaan,
      ULaporanPenjualan,ULaporanStokOpname,ULaporanStokObat,UDataPengguna,
      ULaporanPengeluaranLain,UReturKonsinyasi,UListDataRetur,
      ULaporanUrutanBarang,ULaporanTotalResepDokter,
      USatuanObat,UIdentiasApotik,UnitTambahStokManual,UnitListDataStokManual,
      UnitJamShif,UnitDataJadwalKerja,UnitMonitoringStok,UnitStokOpnameVersi2,
      UnitLokasiRak,UnitUpdateDataRakObat,UnitRekapLaporanData;

procedure TFUtama.DATASUPPLIER1Click(Sender: TObject);
begin
  Application.CreateForm(TFDataSupplier, FDataSupplier);
  FDataSupplier.Show;
end;

procedure TFUtama.PENJUALANOBAT1Click(Sender: TObject);
begin
  Application.CreateForm(TFPenjualanObat, FPenjualanObat);
  FPenjualanObat.Show;
end;

procedure TFUtama.HELP1Click(Sender: TObject);
begin
  Application.CreateForm(TFBantuan, FBantuan);
  FBantuan.Show;
end;

procedure TFUtama.DATADOKTER1Click(Sender: TObject);
begin
  Application.CreateForm(TFDataDokter, FDataDokter);
  FDataDokter.Show;
end;

procedure TFUtama.DATAOBAT1Click(Sender: TObject);
begin
  Application.CreateForm(TFDataObat, FDataObat);
  FDataObat.Show;
end;

procedure TFUtama.LISTPENJUALANOBAT1Click(Sender: TObject);
begin
  Application.CreateForm(TFListDataPenjualan, FListDataPenjualan);
  FListDataPenjualan.Show;
end;

procedure TFUtama.PENERIMAANOBAT1Click(Sender: TObject);
begin
  Application.CreateForm(TFPenerimaan, FPenerimaan);
  FPenerimaan.Show;
end;

procedure TFUtama.LIST1Click(Sender: TObject);
begin
  Application.CreateForm(TFListDataPenerimaan, FListDataPenerimaan);
  FListDataPenerimaan.Show;
end;

procedure TFUtama.PENGELUARAN1Click(Sender: TObject);
begin
  Application.CreateForm(TFPengeluaran, FPengeluaran);
  FPengeluaran.Show;
end;

procedure TFUtama.STORBANK1Click(Sender: TObject);
begin
  Application.CreateForm(TFStorBank, FStorBank);
  FStorBank.Show;
end;

procedure TFUtama.PENDAPATAN1Click(Sender: TObject);
begin
  Application.CreateForm(TFLaporangPendapatan, FLaporangPendapatan);
  FLaporangPendapatan.Show;
end;

procedure TFUtama.RETUROBAT1Click(Sender: TObject);
begin
  ShowMessage('Masih Di Kunci...');
end;

procedure TFUtama.LISTRETUROBAT1Click(Sender: TObject);
begin
  ShowMessage('Masih Di Kunci...');
end;

procedure TFUtama.LAPORANPENERIMAAN1Click(Sender: TObject);
begin
  Application.CreateForm(TFLaporanPenerimaanTgl, FLaporanPenerimaanTgl);
  FLaporanPenerimaanTgl.Show;
end;

procedure TFUtama.LAPORANPENJUALAN1Click(Sender: TObject);
begin
  Application.CreateForm(TFLaporangPenjualan, FLaporangPenjualan);
  FLaporangPenjualan.Show;
end;

procedure TFUtama.STOKOPNAME2Click(Sender: TObject);
begin
  Application.CreateForm(TFLaporangStokOpname, FLaporangStokOpname);
  FLaporangStokOpname.Show;
end;

procedure TFUtama.LAPORANSTOK1Click(Sender: TObject);
begin
  Application.CreateForm(TFLaporanStokObat, FLaporanStokObat);
  FLaporanStokObat.Show;
end;

procedure TFUtama.DATAPENGGUNA1Click(Sender: TObject);
begin
  Application.CreateForm(TFDataPengguna, FDataPengguna);
  FDataPengguna.Show;
end;

procedure TFUtama.PENGELUARAN2Click(Sender: TObject);
begin
  Application.CreateForm(TFLaporanPengeluaranLain, FLaporanPengeluaranLain);
  FLaporanPengeluaranLain.Show;
end;

procedure TFUtama.RETURKONSINYASI1Click(Sender: TObject);
begin
  Application.CreateForm(TFReturKonsinyasi, FReturKonsinyasi);
  FReturKonsinyasi.Show;
end;

procedure TFUtama.LISTRETURSUPPLIER1Click(Sender: TObject);
begin
  Application.CreateForm(TFListDataReturSupplier, FListDataReturSupplier);
  FListDataReturSupplier.Show
end;

procedure TFUtama.URUTANTERLARIS1Click(Sender: TObject);
begin
  Application.CreateForm(TFLaporanUrutanBarang, FLaporanUrutanBarang);
  FLaporanUrutanBarang.Show;
end;

procedure TFUtama.OTALRESEPDOKTER1Click(Sender: TObject);
begin
  Application.CreateForm(TFLaporanTotalResepDokter, FLaporanTotalResepDokter);
  FLaporanTotalResepDokter.Show;
end;

procedure TFUtama.SATUAN1Click(Sender: TObject);
begin
  Application.CreateForm(TFSatuanObat, FSatuanObat);
  FSatuanObat.Show;
end;

procedure TFUtama.IDENTITASAPOTIK1Click(Sender: TObject);
begin
  Application.CreateForm(TFIndentitasApotik, FIndentitasApotik);
  FIndentitasApotik.Show;
end;

procedure TFUtama.AMBAHSTOKMANUAL1Click(Sender: TObject);
begin
  Application.CreateForm(TFormTambahStokManual, FormTambahStokManual);
  FormTambahStokManual.Show;
end;

procedure TFUtama.LISTTAMBAHSTOKMANUAL1Click(Sender: TObject);
begin
  Application.CreateForm(TFormListTambahStokManual, FormListTambahStokManual);
  FormListTambahStokManual.Show;
end;

procedure TFUtama.JAMSHIF2Click(Sender: TObject);
begin
  Application.CreateForm(TFormJamShif, FormJamShif);
  FormJamShif.Show;
end;

procedure TFUtama.JADWAKERJA1Click(Sender: TObject);
begin
  Application.CreateForm(TFormJadwalKerja, FormJadwalKerja);
  FormJadwalKerja.Show;
end;

procedure TFUtama.KARTUSTOK1Click(Sender: TObject);
begin
 Application.CreateForm(TFormMONITORINGSTOK, FormMONITORINGSTOK);
 FormMONITORINGSTOK.Show;
end;

procedure TFUtama.Versi11Click(Sender: TObject);
begin
Application.CreateForm(TFStokOpname, FStokOpname);
FStokOpname.Show;
end;

procedure TFUtama.Versi21Click(Sender: TObject);
begin
  Application.CreateForm(TFormStokOpanameVersi2, FormStokOpanameVersi2);
  FormStokOpanameVersi2.Show;
end;

procedure TFUtama.LOKASIRAK1Click(Sender: TObject);
begin
  Application.CreateForm(TFormDataLokasiRak, FormDataLokasiRak);
  FormDataLokasiRak.Show;
end;

procedure TFUtama.UPDATEDATAOBATRAK1Click(Sender: TObject);
begin
  Application.CreateForm(TFormUpdateDataRakObat, FormUpdateDataRakObat);
  FormUpdateDataRakObat.Show;
end;

procedure TFUtama.REKAPLAPORAN1Click(Sender: TObject);
begin
  Application.CreateForm(TFormRekapLaporanData, FormRekapLaporanData);
  FormRekapLaporanData.Show;
end;

end.
