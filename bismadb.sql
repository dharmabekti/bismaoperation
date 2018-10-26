/*
SQLyog Professional v12.4.3 (64 bit)
MySQL - 10.1.34-MariaDB : Database - bismadb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`bismadb` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `bismadb`;

/*Table structure for table `jurusan` */

DROP TABLE IF EXISTS `jurusan`;

CREATE TABLE `jurusan` (
  `id_jurusan` int(11) NOT NULL AUTO_INCREMENT,
  `nama_jurusan` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_jurusan`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `jurusan` */

insert  into `jurusan`(`id_jurusan`,`nama_jurusan`) values 
(1,'Umum'),
(2,'MIPA'),
(3,'IPS'),
(4,'Bahasa');

/*Table structure for table `kelas` */

DROP TABLE IF EXISTS `kelas`;

CREATE TABLE `kelas` (
  `id_kelas` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kelas` varchar(100) DEFAULT NULL,
  `ruangan_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_kelas`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `kelas` */

insert  into `kelas`(`id_kelas`,`nama_kelas`,`ruangan_id`) values 
(1,'X-1',NULL),
(2,'X-2',NULL),
(3,'X-3',NULL),
(4,'XI-IPA',NULL),
(5,'XI-IPS',NULL),
(6,'XI-Bahasa',NULL),
(7,'XII-IPA',NULL),
(8,'XII-IPS',NULL),
(9,'XII-Bahasa',NULL);

/*Table structure for table `mata_pelajaran` */

DROP TABLE IF EXISTS `mata_pelajaran`;

CREATE TABLE `mata_pelajaran` (
  `id_mapel` int(11) NOT NULL AUTO_INCREMENT,
  `nama_mapel` varchar(100) DEFAULT NULL,
  `jurusan_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_mapel`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `mata_pelajaran` */

/*Table structure for table `pegawai` */

DROP TABLE IF EXISTS `pegawai`;

CREATE TABLE `pegawai` (
  `id_pegawai` int(11) NOT NULL AUTO_INCREMENT,
  `npp` varchar(10) DEFAULT NULL,
  `nama_lengkap` varchar(100) DEFAULT NULL,
  `nama_panggilan` varchar(30) DEFAULT NULL,
  `jenis_kelamin` varchar(2) DEFAULT NULL,
  `tempat_lahir` varchar(50) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `kelurahan` varchar(50) DEFAULT NULL,
  `kecamatan` varchar(50) DEFAULT NULL,
  `kota` varchar(50) DEFAULT NULL,
  `provinsi` varchar(50) DEFAULT NULL,
  `kode_pos` varchar(5) DEFAULT NULL,
  `alamat_domisili` varchar(500) DEFAULT NULL,
  `nomor_telepon` varchar(15) DEFAULT NULL,
  `nomor_hp` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `email_institusi` varchar(100) DEFAULT NULL,
  `kewarganegaraan` varchar(3) DEFAULT NULL,
  `status_perkawinan` varchar(20) DEFAULT NULL,
  `golongan_darah` varchar(2) DEFAULT NULL,
  `jabatan_id` int(11) DEFAULT NULL,
  `foto` varchar(500) DEFAULT NULL,
  `no_kk` varchar(50) DEFAULT NULL,
  `no_ktp` varchar(50) DEFAULT NULL,
  `no_npwp` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `tanggal_masuk` date DEFAULT NULL,
  `tanggal_keluar` date DEFAULT NULL,
  `status_pegawai` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_pegawai`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `pegawai` */

insert  into `pegawai`(`id_pegawai`,`npp`,`nama_lengkap`,`nama_panggilan`,`jenis_kelamin`,`tempat_lahir`,`tanggal_lahir`,`alamat`,`kelurahan`,`kecamatan`,`kota`,`provinsi`,`kode_pos`,`alamat_domisili`,`nomor_telepon`,`nomor_hp`,`email`,`email_institusi`,`kewarganegaraan`,`status_perkawinan`,`golongan_darah`,`jabatan_id`,`foto`,`no_kk`,`no_ktp`,`no_npwp`,`username`,`password`,`tanggal_masuk`,`tanggal_keluar`,`status_pegawai`) values 
(1,'10.18.1','Dharma Bekti','Dharma','L','Purworejo','1996-06-16','Dusun II Rt.002 Rw.004','Jrakah','Bayan','Purworejo','Jawa Tengah','54152',NULL,NULL,'081728418120','dharmabekti@gmail.com',NULL,'WNI','Belum Menikah','O',7,NULL,NULL,NULL,NULL,'admin','21232f297a57a5a743894a0e4a801fc3','2018-10-16',NULL,'Aktif');

/*Table structure for table `profil_sekolah` */

DROP TABLE IF EXISTS `profil_sekolah`;

CREATE TABLE `profil_sekolah` (
  `nama_sekolah` varchar(100) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `kelurahan` varchar(30) DEFAULT NULL,
  `kecamatan` varchar(30) DEFAULT NULL,
  `kota` varchar(30) DEFAULT NULL,
  `provinsi` varchar(30) DEFAULT NULL,
  `kodepos` varchar(5) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telepon` varchar(15) DEFAULT NULL,
  `fax` varchar(15) DEFAULT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `kover_login` varchar(100) DEFAULT NULL,
  `motto` varchar(500) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `facebook` varchar(100) DEFAULT NULL,
  `instagram` varchar(100) DEFAULT NULL,
  `linkedin` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `profil_sekolah` */

insert  into `profil_sekolah`(`nama_sekolah`,`alamat`,`kelurahan`,`kecamatan`,`kota`,`provinsi`,`kodepos`,`email`,`telepon`,`fax`,`logo`,`kover_login`,`motto`,`website`,`facebook`,`instagram`,`linkedin`) values 
('SMA Ye Ran','Jalan Pallawa 23','Jrakah','Bayan','Purworejo','Jawa Tengah','54152','smayeran@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `ref_jabatan` */

DROP TABLE IF EXISTS `ref_jabatan`;

CREATE TABLE `ref_jabatan` (
  `id_jabatan` int(11) NOT NULL AUTO_INCREMENT,
  `nama_jabatan` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_jabatan`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `ref_jabatan` */

insert  into `ref_jabatan`(`id_jabatan`,`nama_jabatan`) values 
(1,'Kepala Sekolah'),
(2,'Wakil Kepala Sekolah Kesiswaan'),
(3,'Wakl Kepala Sekolah Kurikulum'),
(4,'Guru'),
(5,'Kepala Lab'),
(6,'Wali Kelas'),
(7,'Tata Usaha'),
(8,'Pustakawan');

/*Table structure for table `ref_roles` */

DROP TABLE IF EXISTS `ref_roles`;

CREATE TABLE `ref_roles` (
  `id_role` int(11) NOT NULL AUTO_INCREMENT,
  `nama_role` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_role`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `ref_roles` */

insert  into `ref_roles`(`id_role`,`nama_role`) values 
(1,'Admin'),
(2,'Kepala'),
(3,'Administrasi'),
(4,'Pustaka'),
(5,'Guru'),
(6,'Siswa');

/*Table structure for table `ruang` */

DROP TABLE IF EXISTS `ruang`;

CREATE TABLE `ruang` (
  `id_ruang` int(11) NOT NULL AUTO_INCREMENT,
  `nama_ruang` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_ruang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ruang` */

/*Table structure for table `siswa` */

DROP TABLE IF EXISTS `siswa`;

CREATE TABLE `siswa` (
  `id_siswa` int(11) NOT NULL AUTO_INCREMENT,
  `no_induk` varchar(10) DEFAULT NULL,
  `nama_lengkap` varchar(100) DEFAULT NULL,
  `nama_panggilan` varchar(30) DEFAULT NULL,
  `jenis_kelamin` varchar(2) DEFAULT NULL,
  `tempat_lahir` varchar(50) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `kelurahan` varchar(50) DEFAULT NULL,
  `kecamatan` varchar(50) DEFAULT NULL,
  `kota` varchar(50) DEFAULT NULL,
  `provinsi` varchar(50) DEFAULT NULL,
  `kode_pos` varchar(5) DEFAULT NULL,
  `alamat_domisili` varchar(500) DEFAULT NULL,
  `nomor_telepon` varchar(15) DEFAULT NULL,
  `nomor_hp` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `kewarganegaraan` varchar(3) DEFAULT NULL,
  `golongan_darah` varchar(2) DEFAULT NULL,
  `foto` varchar(500) DEFAULT NULL,
  `no_kk` varchar(50) DEFAULT NULL,
  `no_ktp` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `tanggal_masuk` date DEFAULT NULL,
  `tanggal_keluar` date DEFAULT NULL,
  `angkatan` int(4) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_siswa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `siswa` */

/*Table structure for table `tbl_pengajaran` */

DROP TABLE IF EXISTS `tbl_pengajaran`;

CREATE TABLE `tbl_pengajaran` (
  `id_pengajaran` int(11) NOT NULL AUTO_INCREMENT,
  `pegawai_id` int(11) DEFAULT NULL,
  `mapel_id` int(11) DEFAULT NULL,
  `kelas_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_pengajaran`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_pengajaran` */

/*Table structure for table `user_menu` */

DROP TABLE IF EXISTS `user_menu`;

CREATE TABLE `user_menu` (
  `id_menu` int(11) NOT NULL AUTO_INCREMENT,
  `nama_menu` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_menu`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `user_menu` */

insert  into `user_menu`(`id_menu`,`nama_menu`) values 
(1,'Beranda'),
(2,'Kepegawaian'),
(3,'Kesiswaan'),
(4,'Pengajaran'),
(5,'Kurikulum'),
(6,'Kepustakaan'),
(7,'Akademik');

/*Table structure for table `user_submenu` */

DROP TABLE IF EXISTS `user_submenu`;

CREATE TABLE `user_submenu` (
  `id_submenu` int(11) NOT NULL AUTO_INCREMENT,
  `nama_submenu` varchar(100) DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `link` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_submenu`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `user_submenu` */

insert  into `user_submenu`(`id_submenu`,`nama_submenu`,`menu_id`,`link`) values 
(1,'Profil',1,NULL),
(2,'Ubah Profil',1,NULL),
(3,'Data Pegawai',2,NULL),
(4,'Data Pendidik',2,NULL),
(5,'Data Siswa',3,NULL),
(6,'Data Alumni',3,NULL),
(7,'Daftar Mata Pelajaran',4,NULL),
(8,'Guru Mata Pelajaran',4,NULL),
(9,'Tahun Akademik',4,NULL),
(10,'Daftar Pustaka',6,NULL),
(11,'Peminjaman',6,NULL),
(12,'Pengadaan',6,NULL),
(13,'Bank Soal',6,NULL),
(14,'Akademik Siswa',7,NULL);

/*Table structure for table `users_roles` */

DROP TABLE IF EXISTS `users_roles`;

CREATE TABLE `users_roles` (
  `pegawai_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `users_roles` */

insert  into `users_roles`(`pegawai_id`,`role_id`,`menu_id`) values 
(1,1,1),
(1,1,2),
(1,1,3),
(1,1,4),
(1,1,5),
(1,1,6),
(1,1,7);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
