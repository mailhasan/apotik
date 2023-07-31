unit UDataApotik;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDM = class(TDataModule)
    conApotik: TADOConnection;
    qrySupplier: TADOQuery;
    dsSupplier: TDataSource;
    qryPenjualan: TADOQuery;
    qryDetailPenjualan: TADOQuery;
    dsDetailPenjualan: TDataSource;
    qryObat: TADOQuery;
    dsObat: TDataSource;
    dsPenjualan: TDataSource;
    qryDokter: TADOQuery;
    dsDokter: TDataSource;
    qryPenerimaanObat: TADOQuery;
    dsPenerimaanObat: TDataSource;
    qryDetailPenerimaanObat: TADOQuery;
    dsDetailPenerimaanObat: TDataSource;
    qryStokOpname: TADOQuery;
    dsStokOpname: TDataSource;
    qryPengeluaran: TADOQuery;
    dsPengeluaran: TDataSource;
    qryStorBank: TADOQuery;
    dsStorBank: TDataSource;
    qryPengguna: TADOQuery;
    dsPengguna: TDataSource;
    qrySupplierRetur: TADOQuery;
    dsSupplierRetur: TDataSource;
    qryReturSupplier: TADOQuery;
    dsReturSupplier: TDataSource;
    qryDetailReturSupplier: TADOQuery;
    dsDetailReturSupplier: TDataSource;
    qryUrutanBarangTerjual: TADOQuery;
    dsUrutanBarangTerjual: TDataSource;
    qryTotalResepDokter: TADOQuery;
    dsTotalResepDokter: TDataSource;
    qrySatuan: TADOQuery;
    dsSatuan: TDataSource;
    qryIdentitasApotek: TADOQuery;
    qryhistoritambahstok: TADOQuery;
    dshistoritambahstok: TDataSource;
    qryJamShif: TADOQuery;
    dsJamshif: TDataSource;
    qryjadwalkerja: TADOQuery;
    dsjadwalkerja: TDataSource;
    qryCariNmObatPenerimaan: TADOQuery;
    dsCariNmObatPenerimaan: TDataSource;
    qryJadwalStokOpname: TADOQuery;
    qryLokasiRak: TADOQuery;
    dsLokasiRak: TDataSource;
    qryStokOpnameTemp: TADOQuery;
    dsStokOpnameTemp: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

end.
