-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versi server:                 10.1.8-MariaDB - mariadb.org binary distribution
-- OS Server:                    Win32
-- HeidiSQL Versi:               9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Membuang struktur basisdata untuk apotikmedika
CREATE DATABASE IF NOT EXISTS `apotikmedika` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `apotikmedika`;

-- membuang struktur untuk table apotikmedika.detailpenerimaanobat
CREATE TABLE IF NOT EXISTS `detailpenerimaanobat` (
  `idDetailPenerimaanObat` int(11) NOT NULL AUTO_INCREMENT,
  `noPenerimaanObat` varchar(50) DEFAULT NULL,
  `kdObat` varchar(20) DEFAULT NULL,
  `noBatch` varchar(200) DEFAULT NULL,
  `namaObat` varchar(150) DEFAULT NULL,
  `jumlahIsiBeli` int(11) DEFAULT NULL,
  `hargaBeliPerBiji` float DEFAULT NULL,
  `keuntunganPerbiji` float DEFAULT NULL,
  `hargaJualPerBiji` float DEFAULT NULL,
  `subTotalHargaBeli` float DEFAULT NULL,
  `subTotalFaktur` float DEFAULT NULL,
  `tglKadaluarsa` date DEFAULT NULL,
  `satuanBeliFaktur` varchar(50) DEFAULT NULL,
  `jmlBeliFaktur` int(11) DEFAULT NULL,
  `hargaBeliFaktur` float DEFAULT NULL,
  `diskonFaktur` float DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `createId` varchar(100) DEFAULT NULL,
  `modifDate` datetime DEFAULT NULL,
  `modifId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idDetailPenerimaanObat`)
) ENGINE=MyISAM AUTO_INCREMENT=9509 DEFAULT CHARSET=latin1;

-- Pengeluaran data tidak dipilih.
-- membuang struktur untuk table apotikmedika.detailpenjualan
CREATE TABLE IF NOT EXISTS `detailpenjualan` (
  `idPenjualan` int(11) NOT NULL AUTO_INCREMENT,
  `noPenjualan` varchar(50) DEFAULT NULL,
  `kdObat` varchar(20) DEFAULT NULL,
  `namaObat` varchar(150) DEFAULT NULL,
  `hargaJual` float DEFAULT NULL,
  `jumlahJual` int(11) DEFAULT NULL,
  `subTotalJual` float DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `createId` varchar(100) DEFAULT NULL,
  `modifDate` datetime DEFAULT NULL,
  `modifId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idPenjualan`)
) ENGINE=MyISAM AUTO_INCREMENT=87164 DEFAULT CHARSET=latin1;

-- Pengeluaran data tidak dipilih.
-- membuang struktur untuk table apotikmedika.detailretursupplier
CREATE TABLE IF NOT EXISTS `detailretursupplier` (
  `idDetailReturSupplier` int(11) NOT NULL AUTO_INCREMENT,
  `noReturSupplier` varchar(50) NOT NULL DEFAULT '0',
  `kdObat` varchar(30) NOT NULL DEFAULT '0',
  `namaObat` varchar(200) NOT NULL DEFAULT '0',
  `jumlahPenerimaan` int(11) NOT NULL DEFAULT '0',
  `jumlahRetur` int(11) NOT NULL DEFAULT '0',
  `hargaBeli` float NOT NULL DEFAULT '0',
  `subTotalRetur` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`idDetailReturSupplier`)
) ENGINE=MyISAM AUTO_INCREMENT=178 DEFAULT CHARSET=latin1;

-- Pengeluaran data tidak dipilih.
-- membuang struktur untuk table apotikmedika.dokter
CREATE TABLE IF NOT EXISTS `dokter` (
  `kdDokter` varchar(11) NOT NULL,
  `namaDokter` varchar(100) DEFAULT NULL,
  `lokasiPraktek` varchar(150) DEFAULT NULL,
  `status` char(11) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `createUserId` varchar(12) DEFAULT NULL,
  `modifDate` datetime DEFAULT NULL,
  `modifUserId` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`kdDokter`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Pengeluaran data tidak dipilih.
-- membuang struktur untuk table apotikmedika.historitambahstok
CREATE TABLE IF NOT EXISTS `historitambahstok` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tglTambahStok` date DEFAULT NULL,
  `kdObat` varchar(30) DEFAULT NULL,
  `namaObat` varchar(150) DEFAULT NULL,
  `jmlSisaStok` int(11) DEFAULT NULL,
  `jmlTambahStok` int(11) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `createUserId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=558 DEFAULT CHARSET=latin1;

-- Pengeluaran data tidak dipilih.
-- membuang struktur untuk table apotikmedika.identitasapotik
CREATE TABLE IF NOT EXISTS `identitasapotik` (
  `idApotek` int(11) NOT NULL,
  `namaApotek` varchar(150) DEFAULT NULL,
  `alamat` text,
  `createDate` datetime DEFAULT NULL,
  `createUserId` varchar(50) DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `updateUserId` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idApotek`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Pengeluaran data tidak dipilih.
-- membuang struktur untuk table apotikmedika.jadwalkerja
CREATE TABLE IF NOT EXISTS `jadwalkerja` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TANGGAL` date DEFAULT NULL,
  `PETUGAS` varchar(250) DEFAULT NULL,
  `SHIF` enum('I','II','III') DEFAULT NULL,
  `JAMMASUK` time DEFAULT NULL,
  `JAMPULANG` time DEFAULT NULL,
  `CREATEDATE` datetime DEFAULT NULL,
  `CREATEUSER` varchar(20) DEFAULT NULL,
  `MODIFDATE` datetime DEFAULT NULL,
  `MODIFUSER` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Pengeluaran data tidak dipilih.
-- membuang struktur untuk table apotikmedika.jamshif
CREATE TABLE IF NOT EXISTS `jamshif` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SHIF` enum('I','II','III') DEFAULT NULL,
  `JAMMASUK` time DEFAULT NULL,
  `JAMPULANG` time DEFAULT NULL,
  `KETERANGAN` text,
  `CREATEDATE` datetime DEFAULT NULL,
  `CREATEUSER` varchar(20) DEFAULT NULL,
  `MODIFDATE` datetime DEFAULT NULL,
  `MODIFUSER` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Pengeluaran data tidak dipilih.
-- membuang struktur untuk table apotikmedika.keuntungan
CREATE TABLE IF NOT EXISTS `keuntungan` (
  `idKeuntungan` int(11) NOT NULL AUTO_INCREMENT,
  `keuntungan` float DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `createId` varchar(12) DEFAULT NULL,
  `modifDate` datetime DEFAULT NULL,
  `modifId` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`idKeuntungan`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Pengeluaran data tidak dipilih.
-- membuang struktur untuk table apotikmedika.obat
CREATE TABLE IF NOT EXISTS `obat` (
  `kdObat` varchar(20) NOT NULL,
  `namaObat` varchar(150) DEFAULT NULL,
  `satuanObat` varchar(12) DEFAULT NULL,
  `jumlahStok` int(11) DEFAULT NULL,
  `hargaBeli` float DEFAULT NULL,
  `keuntungan` float DEFAULT NULL,
  `hargaJual` float DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `createUserId` varchar(12) DEFAULT NULL,
  `modifDate` datetime DEFAULT NULL,
  `modifUserId` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`kdObat`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Pengeluaran data tidak dipilih.
-- membuang struktur untuk table apotikmedika.penerimaanobat
CREATE TABLE IF NOT EXISTS `penerimaanobat` (
  `noPenerimaanObat` varchar(50) NOT NULL,
  `tglPenerimaanObat` date DEFAULT NULL,
  `kdSupplier` varchar(20) DEFAULT NULL,
  `namaSupplier` varchar(100) DEFAULT NULL,
  `totalHargaBeli` float DEFAULT NULL,
  `totalHargaJual` float DEFAULT NULL,
  `jumlahPembayaranBeli` float DEFAULT NULL,
  `diskon` float DEFAULT NULL,
  `ppn` float DEFAULT NULL,
  `sisaPembayaranBeli` float DEFAULT NULL,
  `statusPembayaran` varchar(50) DEFAULT NULL,
  `kategoriPenerimaan` varchar(50) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `createId` varchar(100) DEFAULT NULL,
  `modifDate` datetime DEFAULT NULL,
  `modifId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`noPenerimaanObat`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Pengeluaran data tidak dipilih.
-- membuang struktur untuk table apotikmedika.pengeluaran
CREATE TABLE IF NOT EXISTS `pengeluaran` (
  `IdPengeluaran` int(11) NOT NULL AUTO_INCREMENT,
  `tglPengeluaran` datetime DEFAULT NULL,
  `pengeluaran` float DEFAULT NULL,
  `keterangan` text,
  `createDate` datetime DEFAULT NULL,
  `createUserId` varchar(12) DEFAULT NULL,
  `modifDate` datetime DEFAULT NULL,
  `modifUserId` text,
  PRIMARY KEY (`IdPengeluaran`)
) ENGINE=MyISAM AUTO_INCREMENT=1117 DEFAULT CHARSET=latin1;

-- Pengeluaran data tidak dipilih.
-- membuang struktur untuk table apotikmedika.pengguna
CREATE TABLE IF NOT EXISTS `pengguna` (
  `idPengguna` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `level` varchar(30) DEFAULT NULL,
  `namaPengguna` varchar(100) DEFAULT NULL,
  `status` varchar(12) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `createId` varchar(12) DEFAULT NULL,
  `modifDate` datetime DEFAULT NULL,
  `modifId` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`idPengguna`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Pengeluaran data tidak dipilih.
-- membuang struktur untuk table apotikmedika.penjualan
CREATE TABLE IF NOT EXISTS `penjualan` (
  `noPenjualan` varchar(50) NOT NULL,
  `tglPenjualan` date DEFAULT NULL,
  `kdDokter` int(11) DEFAULT NULL,
  `namaDokter` varchar(50) DEFAULT NULL,
  `namaPasien` varchar(50) DEFAULT NULL,
  `umurPasien` varchar(50) DEFAULT NULL,
  `alamatPasien` text,
  `asalResepPasien` varchar(30) DEFAULT NULL,
  `totalPenjualan` float DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `createId` varchar(12) DEFAULT NULL,
  `modifDate` datetime DEFAULT NULL,
  `modifId` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`noPenjualan`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Pengeluaran data tidak dipilih.
-- membuang struktur untuk table apotikmedika.retursupplier
CREATE TABLE IF NOT EXISTS `retursupplier` (
  `noReturSupplier` varchar(50) NOT NULL,
  `tglReturSupplier` datetime DEFAULT NULL,
  `noPenerimaanObat` varchar(30) DEFAULT NULL,
  `tglPenerimaanObat` date DEFAULT NULL,
  `kdSupplier` varchar(30) DEFAULT NULL,
  `supplier` varchar(50) DEFAULT NULL,
  `totalHargBeli` float DEFAULT NULL,
  `totalRetur` float DEFAULT NULL,
  `kategoriPenerimaan` varchar(40) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `createId` varchar(50) DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `updateId` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`noReturSupplier`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Pengeluaran data tidak dipilih.
-- membuang struktur untuk table apotikmedika.satuan
CREATE TABLE IF NOT EXISTS `satuan` (
  `kdSatuan` int(11) NOT NULL AUTO_INCREMENT,
  `satuan` varchar(50) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `createId` varchar(12) DEFAULT NULL,
  `modifDate` datetime DEFAULT NULL,
  `modifId` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`kdSatuan`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

-- Pengeluaran data tidak dipilih.
-- membuang struktur untuk table apotikmedika.stokopname
CREATE TABLE IF NOT EXISTS `stokopname` (
  `idStokOpname` int(11) NOT NULL AUTO_INCREMENT,
  `tglStokOpname` datetime DEFAULT NULL,
  `kdObat` varchar(20) NOT NULL,
  `namaObat` varchar(150) DEFAULT NULL,
  `satuanObat` varchar(12) DEFAULT NULL,
  `jumlahStok` int(11) DEFAULT NULL,
  `jumlahStokReal` int(11) DEFAULT NULL,
  `keterangan` text,
  `createDate` datetime DEFAULT NULL,
  `createUserId` varchar(12) DEFAULT NULL,
  `modifDate` datetime DEFAULT NULL,
  `modifUserId` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`idStokOpname`)
) ENGINE=MyISAM AUTO_INCREMENT=14895 DEFAULT CHARSET=latin1;

-- Pengeluaran data tidak dipilih.
-- membuang struktur untuk table apotikmedika.storbank
CREATE TABLE IF NOT EXISTS `storbank` (
  `idStorBank` int(11) NOT NULL AUTO_INCREMENT,
  `tglStorBank` datetime DEFAULT NULL,
  `storBank` float DEFAULT NULL,
  `keterangan` text,
  `createDate` datetime DEFAULT NULL,
  `createUserId` varchar(12) DEFAULT NULL,
  `modifDate` datetime DEFAULT NULL,
  `modifUserId` text,
  PRIMARY KEY (`idStorBank`)
) ENGINE=MyISAM AUTO_INCREMENT=82 DEFAULT CHARSET=latin1;

-- Pengeluaran data tidak dipilih.
-- membuang struktur untuk table apotikmedika.supplier
CREATE TABLE IF NOT EXISTS `supplier` (
  `kdSupplier` varchar(20) NOT NULL,
  `namaSupplier` varchar(100) DEFAULT NULL,
  `alamat` text,
  `telpone` varchar(12) DEFAULT NULL,
  `status` char(11) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `createUserId` varchar(12) DEFAULT NULL,
  `modifDate` datetime DEFAULT NULL,
  `modifUserId` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`kdSupplier`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Pengeluaran data tidak dipilih.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
