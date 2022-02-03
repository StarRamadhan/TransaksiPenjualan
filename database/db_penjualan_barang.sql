/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 10.4.18-MariaDB : Database - db_penjualan_barang
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_penjualan_barang` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `db_penjualan_barang`;

/*Table structure for table `barang` */

DROP TABLE IF EXISTS `barang`;

CREATE TABLE `barang` (
  `kodeBarang` varchar(10) NOT NULL,
  `namaBarang` varchar(100) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  PRIMARY KEY (`kodeBarang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `barang` */

insert  into `barang`(`kodeBarang`,`namaBarang`,`stok`) values 
('B0001','Kain Batik',41),
('B0002','Kain Sutra',10),
('B0003','Kain Kulit',22),
('B0004','Kain Tenun',9),
('B0005','Kain Katun',5);

/*Table structure for table `perusahaan` */

DROP TABLE IF EXISTS `perusahaan`;

CREATE TABLE `perusahaan` (
  `idPerusahaan` varchar(10) NOT NULL,
  `NamaPerusahaan` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idPerusahaan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `perusahaan` */

insert  into `perusahaan`(`idPerusahaan`,`NamaPerusahaan`) values 
('P001','PT. ABC'),
('P003','PT. GHI'),
('P004','PT. JKL'),
('P005','PT. MNO');

/*Table structure for table `transaksi` */

DROP TABLE IF EXISTS `transaksi`;

CREATE TABLE `transaksi` (
  `idTransaksi` varchar(10) NOT NULL,
  `idPerusahaan` varchar(10) DEFAULT NULL,
  `kodeBarang` varchar(10) DEFAULT NULL,
  `jumlahBarang` int(11) DEFAULT NULL,
  `tanggalTransaksi` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`idTransaksi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `transaksi` */

insert  into `transaksi`(`idTransaksi`,`idPerusahaan`,`kodeBarang`,`jumlahBarang`,`tanggalTransaksi`) values 
('T001','P001','B002',4,'2022-02-07');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `idUser` int(11) NOT NULL AUTO_INCREMENT,
  `nmUser` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idUser`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `user` */

insert  into `user`(`idUser`,`nmUser`,`password`) values 
(1,'Star','12345'),
(2,'Bintang','asdasd');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
