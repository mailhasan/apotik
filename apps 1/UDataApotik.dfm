object DM: TDM
  OldCreateOrder = False
  Left = 329
  Top = 116
  Height = 555
  Width = 953
  object conApotik: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=apoti' +
      'k;Initial Catalog=apotikmedika'
    LoginPrompt = False
    Left = 40
    Top = 24
  end
  object qrySupplier: TADOQuery
    Connection = conApotik
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from supplier limit 5')
    Left = 40
    Top = 80
  end
  object dsSupplier: TDataSource
    DataSet = qrySupplier
    Left = 104
    Top = 80
  end
  object qryPenjualan: TADOQuery
    Active = True
    Connection = conApotik
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from penjualan')
    Left = 48
    Top = 144
  end
  object qryDetailPenjualan: TADOQuery
    Active = True
    Connection = conApotik
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from detailpenjualan')
    Left = 48
    Top = 200
  end
  object dsDetailPenjualan: TDataSource
    DataSet = qryDetailPenjualan
    Left = 144
    Top = 200
  end
  object qryObat: TADOQuery
    Active = True
    Connection = conApotik
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from obat ')
    Left = 32
    Top = 256
  end
  object dsObat: TDataSource
    DataSet = qryObat
    Left = 80
    Top = 256
  end
  object dsPenjualan: TDataSource
    DataSet = qryPenjualan
    Left = 112
    Top = 144
  end
  object qryDokter: TADOQuery
    Active = True
    Connection = conApotik
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from dokter')
    Left = 32
    Top = 312
  end
  object dsDokter: TDataSource
    DataSet = qryDokter
    Left = 88
    Top = 312
  end
  object qryPenerimaanObat: TADOQuery
    Active = True
    Connection = conApotik
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from penerimaanobat')
    Left = 232
    Top = 88
  end
  object dsPenerimaanObat: TDataSource
    DataSet = qryPenerimaanObat
    Left = 328
    Top = 104
  end
  object qryDetailPenerimaanObat: TADOQuery
    Active = True
    Connection = conApotik
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from detailpenerimaanobat')
    Left = 232
    Top = 152
  end
  object dsDetailPenerimaanObat: TDataSource
    DataSet = qryDetailPenerimaanObat
    Left = 352
    Top = 152
  end
  object qryStokOpname: TADOQuery
    Active = True
    Connection = conApotik
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from stokopname')
    Left = 231
    Top = 200
  end
  object dsStokOpname: TDataSource
    DataSet = qryStokOpname
    Left = 312
    Top = 200
  end
  object qryPengeluaran: TADOQuery
    Active = True
    Connection = conApotik
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from pengeluaran')
    Left = 232
    Top = 256
  end
  object dsPengeluaran: TDataSource
    DataSet = qryPengeluaran
    Left = 312
    Top = 264
  end
  object qryStorBank: TADOQuery
    Active = True
    Connection = conApotik
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from storbank')
    Left = 232
    Top = 312
  end
  object dsStorBank: TDataSource
    DataSet = qryStorBank
    Left = 296
    Top = 312
  end
  object qryPengguna: TADOQuery
    Active = True
    Connection = conApotik
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from pengguna')
    Left = 232
    Top = 368
  end
  object dsPengguna: TDataSource
    DataSet = qryPengguna
    Left = 304
    Top = 368
  end
  object qrySupplierRetur: TADOQuery
    Active = True
    Connection = conApotik
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT namaSupplier,tglPenerimaanObat,kategoriPenerimaan,noPener' +
        'imaanObat  FROM  penerimaanobat')
    Left = 480
    Top = 72
  end
  object dsSupplierRetur: TDataSource
    DataSet = qrySupplierRetur
    Left = 576
    Top = 72
  end
  object qryReturSupplier: TADOQuery
    Active = True
    Connection = conApotik
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *  FROM returSupplier')
    Left = 488
    Top = 128
  end
  object dsReturSupplier: TDataSource
    DataSet = qryReturSupplier
    Left = 592
    Top = 144
  end
  object qryDetailReturSupplier: TADOQuery
    Active = True
    Connection = conApotik
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM detailreturSupplier')
    Left = 496
    Top = 200
  end
  object dsDetailReturSupplier: TDataSource
    DataSet = qryDetailReturSupplier
    Left = 584
    Top = 224
  end
  object qryUrutanBarangTerjual: TADOQuery
    Active = True
    Connection = conApotik
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      '    `penjualan`.`noPenjualan`'
      '    , `penjualan`.`tglPenjualan`'
      '    , `detailpenjualan`.`namaObat`'
      '    , SUM(`detailpenjualan`.`jumlahJual`)'
      'FROM'
      '    `detailpenjualan`'
      '    INNER JOIN `penjualan` '
      
        '        ON (`detailpenjualan`.`noPenjualan` = `penjualan`.`noPen' +
        'jualan`)'
      'GROUP BY `detailpenjualan`.`namaObat`'
      'ORDER BY SUM(`detailpenjualan`.`jumlahJual`) DESC;')
    Left = 488
    Top = 272
  end
  object dsUrutanBarangTerjual: TDataSource
    DataSet = qryUrutanBarangTerjual
    Left = 576
    Top = 296
  end
  object qryTotalResepDokter: TADOQuery
    Active = True
    Connection = conApotik
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      '    `noPenjualan`'
      '    , `tglPenjualan`'
      '    , `namaDokter`'
      '    , SUM(`totalPenjualan`) AS `total_resep`'
      'FROM'
      '    `penjualan`'
      'GROUP BY `namaDokter`;')
    Left = 464
    Top = 352
  end
  object dsTotalResepDokter: TDataSource
    DataSet = qryTotalResepDokter
    Left = 576
    Top = 352
  end
  object qrySatuan: TADOQuery
    Active = True
    Connection = conApotik
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM satuan')
    Left = 40
    Top = 376
  end
  object dsSatuan: TDataSource
    DataSet = qrySatuan
    Left = 96
    Top = 376
  end
  object qryIdentitasApotek: TADOQuery
    Active = True
    Connection = conApotik
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from identitasapotik')
    Left = 48
    Top = 440
  end
  object qryhistoritambahstok: TADOQuery
    Active = True
    Connection = conApotik
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM historitambahstok LIMIT 10')
    Left = 480
    Top = 413
  end
  object dshistoritambahstok: TDataSource
    DataSet = qryhistoritambahstok
    Left = 570
    Top = 420
  end
  object qryJamShif: TADOQuery
    Active = True
    Connection = conApotik
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from jamshif')
    Left = 694
    Top = 84
  end
  object dsJamshif: TDataSource
    DataSet = qryJamShif
    Left = 762
    Top = 108
  end
  object qryjadwalkerja: TADOQuery
    Active = True
    Connection = conApotik
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from jadwalkerja')
    Left = 700
    Top = 178
  end
  object dsjadwalkerja: TDataSource
    DataSet = qryjadwalkerja
    Left = 775
    Top = 201
  end
  object qryCariNmObatPenerimaan: TADOQuery
    Active = True
    Connection = conApotik
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      '    `penerimaanobat`.`noPenerimaanObat`'
      '    , `penerimaanobat`.`tglPenerimaanObat`'
      '    , `penerimaanobat`.`kdSupplier`'
      '    , `penerimaanobat`.`namaSupplier`'
      '    , `detailpenerimaanobat`.`kdObat`'
      '    , `detailpenerimaanobat`.`namaObat`'
      '    , `detailpenerimaanobat`.`jumlahIsiBeli`'
      '    , `detailpenerimaanobat`.`jmlBeliFaktur`'
      '    , `detailpenerimaanobat`.`hargaBeliFaktur`'
      'FROM'
      '    `detailpenerimaanobat`'
      '    INNER JOIN `penerimaanobat` '
      
        '        ON (`detailpenerimaanobat`.`noPenerimaanObat` = `penerim' +
        'aanobat`.`noPenerimaanObat`);')
    Left = 712
    Top = 278
  end
  object dsCariNmObatPenerimaan: TDataSource
    DataSet = qryCariNmObatPenerimaan
    Left = 818
    Top = 311
  end
  object qryJadwalStokOpname: TADOQuery
    Active = True
    Connection = conApotik
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from jadwalstokopname')
    Left = 709
    Top = 371
  end
  object qryLokasiRak: TADOQuery
    Active = True
    Connection = conApotik
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from lokasirak')
    Left = 711
    Top = 438
  end
  object dsLokasiRak: TDataSource
    DataSet = qryLokasiRak
    Left = 782
    Top = 441
  end
end
