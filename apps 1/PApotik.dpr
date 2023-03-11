program PApotik;

uses
  Forms,
  UUtama in 'UUtama.pas' {FUtama},
  UDataSupplier in 'UDataSupplier.pas' {FDataSupplier},
  UTambahDataSupplier in 'UTambahDataSupplier.pas' {FTambahDataSupplier},
  UDataApotik in 'UDataApotik.pas' {DM: TDataModule},
  UPenjualanObat in 'UPenjualanObat.pas' {FPenjualanObat},
  UListDataTransaksiPenjualan in 'UListDataTransaksiPenjualan.pas' {FListDataTransaksiPenjualan},
  UDataDokter in 'UDataDokter.pas' {FDataDokter},
  UTambahDataDokter in 'UTambahDataDokter.pas' {FTambahDataDokter},
  UDataObat in 'UDataObat.pas' {FDataObat},
  UTambahDataObat in 'UTambahDataObat.pas' {FTambahDataObat},
  UnListDataPenjualan in 'UnListDataPenjualan.pas' {FListDataPenjualan},
  UPenerimaan in 'UPenerimaan.pas' {FPenerimaan},
  UBantuan in 'UBantuan.pas' {FBantuan},
  UPrintPenjualan in 'UPrintPenjualan.pas' {FPrintPenjualan},
  UListDataPenerimaan in 'UListDataPenerimaan.pas' {FListDataPenerimaan},
  UPembayaranPenerimaan in 'UPembayaranPenerimaan.pas' {FPembayaran},
  UStokOpname in 'UStokOpname.pas' {FStokOpname},
  UPengeluaran in 'UPengeluaran.pas' {FPengeluaran},
  UPengeluaranTambah in 'UPengeluaranTambah.pas' {FPengeluaranTambah},
  UTambahDataPengeluarang in 'UTambahDataPengeluarang.pas' {FTambahDataPengeluaran},
  UStorBank in 'UStorBank.pas' {FStorBank},
  UTambahStorBank in 'UTambahStorBank.pas' {FTambahStorBank},
  ULaporanPendapatan in 'ULaporanPendapatan.pas' {FLaporangPendapatan},
  ULaporanPenerimaan in 'ULaporanPenerimaan.pas' {FLaporanPenerimaanTgl},
  ULaporanPenjualan in 'ULaporanPenjualan.pas' {FLaporangPenjualan},
  ULaporanStokOpname in 'ULaporanStokOpname.pas' {FLaporangStokOpname},
  ULaporanStokObat in 'ULaporanStokObat.pas' {FLaporanStokObat},
  UDataPengguna in 'UDataPengguna.pas' {FDataPengguna},
  UTambahDataPengguna in 'UTambahDataPengguna.pas' {FTambahDataPengguna},
  ULaporanPengeluaranLain in 'ULaporanPengeluaranLain.pas' {FLaporanPengeluaranLain},
  UReturKonsinyasi in 'UReturKonsinyasi.pas' {FReturKonsinyasi},
  UListDataRetur in 'UListDataRetur.pas' {FListDataReturSupplier},
  ULogin in 'ULogin.pas' {FLogin},
  ULaporanUrutanBarang in 'ULaporanUrutanBarang.pas' {FLaporanUrutanBarang},
  ULaporanTotalResepDokter in 'ULaporanTotalResepDokter.pas' {FLaporanTotalResepDokter},
  USatuanObat in 'USatuanObat.pas' {FSatuanObat},
  UTambahDataSatuan in 'UTambahDataSatuan.pas' {FTambahDataSatuan},
  UIdentiasApotik in 'UIdentiasApotik.pas' {FIndentitasApotik},
  UnitTambahStokManual in 'UnitTambahStokManual.pas' {FormTambahStokManual},
  UnitListDataStokManual in 'UnitListDataStokManual.pas' {FormListTambahStokManual},
  UnitPencarianReturSupplier in 'UnitPencarianReturSupplier.pas' {FormpPencarianReturSupplier},
  UnitJamShif in 'UnitJamShif.pas' {FormJamShif},
  UnitTambahJamShif in 'UnitTambahJamShif.pas' {FormTambahJamShif},
  UnitDataJadwalKerja in 'UnitDataJadwalKerja.pas' {FormJadwalKerja},
  UnitTambahJadwalKerja in 'UnitTambahJadwalKerja.pas' {FormTambahJadwalKerja},
  UnitCariPengguna in 'UnitCariPengguna.pas' {FormCariPengguna},
  UnitMonitoringStok in 'UnitMonitoringStok.pas' {FormMONITORINGSTOK},
  UnitCariBerdasarkanNamaObat in 'UnitCariBerdasarkanNamaObat.pas' {FormCariBerdasarkanNamaObat},
  UnitStokOpnameVersi2 in 'UnitStokOpnameVersi2.pas' {FormStokOpanameVersi2},
  UnitLokasiRak in 'UnitLokasiRak.pas' {FormDataLokasiRak},
  UnitTambahLokasiRak in 'UnitTambahLokasiRak.pas' {FormTambahLokasiRak},
  UnitUpdateDataRakObat in 'UnitUpdateDataRakObat.pas' {FormUpdateDataRakObat},
  UnitRekapLaporanData in 'UnitRekapLaporanData.pas' {FormRekapLaporanData};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'APLIKASI APOTIK';
  Application.CreateForm(TFUtama, FUtama);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
