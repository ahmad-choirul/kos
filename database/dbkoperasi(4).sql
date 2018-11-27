-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2018 at 06:13 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbkoperasi`
--

-- --------------------------------------------------------

--
-- Table structure for table `akun`
--

CREATE TABLE `akun` (
  `id_akun` int(11) NOT NULL,
  `id_pendaftaran` int(11) DEFAULT NULL,
  `kta` varchar(30) NOT NULL,
  `NIP` varchar(18) DEFAULT NULL,
  `nama` varchar(40) DEFAULT NULL,
  `no_hp` varchar(12) DEFAULT NULL,
  `no_wa` varchar(12) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `pilkpa` varchar(30) NOT NULL,
  `pilstatuspegawai` varchar(30) NOT NULL,
  `tempat_tugas` varchar(30) NOT NULL,
  `tempat_lahir` varchar(30) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `pilpensiun` int(5) DEFAULT NULL,
  `tgl_pendaftaran` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `scan_ktp` varchar(200) DEFAULT NULL,
  `gambar_profil` varchar(200) NOT NULL DEFAULT 'assets/gambar_upload/profil/no_profil_pic.jpg',
  `status` tinyint(1) NOT NULL,
  `password` varchar(30) NOT NULL,
  `ID_pengurus` int(11) DEFAULT NULL,
  `level` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `akun`
--

INSERT INTO `akun` (`id_akun`, `id_pendaftaran`, `kta`, `NIP`, `nama`, `no_hp`, `no_wa`, `email`, `pilkpa`, `pilstatuspegawai`, `tempat_tugas`, `tempat_lahir`, `tgl_lahir`, `pilpensiun`, `tgl_pendaftaran`, `scan_ktp`, `gambar_profil`, `status`, `password`, `ID_pengurus`, `level`) VALUES
(1, 10, 'admi.n', '', 'admin', '087857423338', '087857423338', 'bedhugmpc@gmail.com', 'MTsN Arjasa', 'PNS', 'Jember', '', '1950-12-13', 58, '2018-10-19 02:08:04', 'assets/gambar_upload/scanktp/admi_n_ktp.jpg', 'assets/gambar_upload/profil/admi_n_profil.jpg', 0, 'admin', 1, 'admin'),
(2, 11, 'user.', '', 'au', '087857423338', '087857423338', 'riosudrajatps@gmail.com', 'MTsN Arjasa', 'PNS', 'Jember', '', '1960-12-12', 58, '2018-10-19 02:08:04', 'assets/gambar_upload/scanktp/user__ktp.jpg', 'assets/gambar_upload/profil/user__profil.jpg', 0, 'user', 1, 'user'),
(3, 15, '15', NULL, NULL, NULL, NULL, NULL, '153', '1', '1', NULL, NULL, NULL, '2018-10-19 06:08:40', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, '1', NULL, '1'),
(4, NULL, '1332.11.0001', '195801261986032002', 'Suhartatik Ismail, S.Pd.I', '081283910294', '081283910294', 'a@lkdkhgs.com', 'MTsN Arjasa', 'PNS', 'MTsN Arjasa', 'jember', '2018-10-02', 58, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'mg1up3', 1, 'user'),
(5, NULL, '1332.11.0002', '195806101985031005', 'Hasan, S.Pd.I', '', '', '', 'Kec. Puger', 'PNS', 'Kan. Kemenag Kab. Jember', '', '0000-00-00', NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'rlhdxo', 1, 'user'),
(6, NULL, '1332.11.0003', '195807161985031002', 'H. Mahmud, BA.', NULL, NULL, NULL, 'MTsN Jember 3', 'PNS', 'MTsN Jember 3', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(7, NULL, '1332.11.0004', '195906051985041002', 'Drs. M. Ismail Marzuqi', NULL, NULL, NULL, 'Kec. Jombang', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(8, NULL, '1332.11.0005', '195908071998031003', 'Mundir, S.Pd.I', NULL, NULL, NULL, 'MIN Tanggul Wetan', 'PNS', 'MIN Tanggul Wetan', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(9, NULL, '1332.11.0006', '195912151993032001', 'Alfiyah, S.Pd.I', NULL, NULL, NULL, 'Kec. Rambipuji', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(10, NULL, '1332.11.0007', '196007051992031001', 'Drs. Iskhaq', NULL, NULL, NULL, 'MTsN Bangsalsari', 'PNS', 'MTsN Bangsalsari', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(11, NULL, '1332.11.0008', '196007061982031009', 'Sonhaji', NULL, NULL, NULL, 'Kec. Ambulu', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(12, NULL, '1332.11.0009', '196008081987111001', 'Hadi Purnomo, S.Ag.', '235223453246', '235623423523', 'a@a.com', 'Kec. Gumukmas', 'PNS', 'Kan. Kemenag Kab. Jember', 'jember', '1993-11-17', 60, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/1332_11_0009_ktp.jpg', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(13, NULL, '1332.11.0010', '196008251994021001', 'Sumadi, S.Pd.I', NULL, NULL, NULL, 'Kec. Sukorambi', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(14, NULL, '1332.11.0011', '196011062000031001', 'Subadi, S.Pd., M.Pd.I', NULL, NULL, NULL, 'Kec. Ambulu', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(15, NULL, '1332.11.0012', '196012011992032001', 'Su`ud Alkaf, A.Ma.', NULL, NULL, NULL, 'Kec. Patrang', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(16, NULL, '1332.11.0013', '196102161982032001', 'Ra. Rufiatus Nur Insiyah, S.Pd.I', NULL, NULL, NULL, 'Kec. Sumbersari', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(17, NULL, '1332.11.0014', '196103102006041006', 'Murtamat A.Ma.', NULL, NULL, NULL, 'MTsN Umbulsari', 'PNS', 'MTsN Umbulsari', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(18, NULL, '1332.11.0015', '196103171987032002', 'Farida Hs. BA', NULL, NULL, NULL, 'MTsN Jember 1', 'PNS', 'MTsN Jember 1', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(19, NULL, '1332.11.0016', '196105011991032002', 'Dra. Sri Ratna Widyastuti', NULL, NULL, NULL, 'Kan. Kemenag Kab. Jember', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(20, NULL, '1332.11.0017', '196107051990031003', 'Nasokah, SH', NULL, NULL, NULL, 'Kec. Bangsalsari', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(21, NULL, '1332.11.0018', '196107212006041002', 'Ratno Mihardjo', NULL, NULL, NULL, 'Kan. Kemenag Kab. Jember', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(22, NULL, '1332.11.0019', '196110042014111001', 'Ridwan Hafidz', NULL, NULL, NULL, 'Kec. Tanggul', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(23, NULL, '1332.11.0020', '196112111990012001', 'Farida Brilyantina', NULL, NULL, NULL, 'Kec. Sumbersari', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(24, NULL, '1332.11.0021', '196112211998031001', 'Sukardi, SH', NULL, NULL, NULL, 'MTsN Sumberbaru', 'PNS', 'MTsN Sumberbaru', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(25, NULL, '1332.11.0022', '196112271993031001', 'Drs. Abdullah, M.HI.', NULL, NULL, NULL, 'Kan. Kemenag Kab. Jember', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(26, NULL, '1332.11.0023', '196201122006041005', 'Drs. Mohammad Amenan', NULL, NULL, NULL, 'MTsN Umbulsari', 'PNS', 'MTsN Umbulsari', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(27, NULL, '1332.11.0024', '196202212000031002', 'Drs. M. Hamid Aqil, M.Pd.I', NULL, NULL, NULL, 'Kec. Sumbersari', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(28, NULL, '1332.11.0025', '196204091990031002', 'Muhammad Erfan , SH', NULL, NULL, NULL, 'Kec. Ajung', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(29, NULL, '1332.11.0026', '196205042014111002', 'Samsul Arifin', NULL, NULL, NULL, 'Kec. Kalisat', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(30, NULL, '1332.11.0027', '196205161987032003', 'Dra. Titik Fauziyah', NULL, NULL, NULL, 'MTsN Jember 2', 'PNS', 'MTsN Jember 2', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(31, NULL, '1332.11.0028', '196206071998031001', 'Drs. Eko Hadi Sunarjoko, M.HI.', NULL, NULL, NULL, 'Kec. Jenggawah', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(32, NULL, '1332.11.0029', '196208042007011015', 'Ismail, S.Pd.I', NULL, NULL, NULL, 'MAN 3 Jember', 'PNS', 'MAN 3 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(33, NULL, '1332.11.0030', '196209082014111001', 'M.C. Saiful', NULL, NULL, NULL, 'Kec. Pakusari', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(34, NULL, '1332.11.0031', '196209151994031001', 'DR. Machfudz, M.Pd.I', NULL, NULL, NULL, 'Kan. Kemenag Kab. Jember', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(35, NULL, '1332.11.0032', '196210112000121001', 'Samin, S.Pd.I', NULL, NULL, NULL, 'Kec. Sumbersari', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(36, NULL, '1332.11.0033', '196210242000032001', 'Dra. Siti Fatimah', NULL, NULL, NULL, 'Kec. Kaliwates', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(37, NULL, '1332.11.0034', '196211131994031001', 'Indra Rudianto, SH', NULL, NULL, NULL, 'MAN 1 Jember', 'PNS', 'MAN 1 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(38, NULL, '1332.11.0035', '196211201989031004', 'Drs. Tohiruddin', NULL, NULL, NULL, 'Kan. Kemenag Kab. Jember', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(39, NULL, '1332.11.0036', '196212081987032003', 'Siti Sulikah, M.Pd.I', NULL, NULL, NULL, 'Kec. Puger', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(40, NULL, '1332.11.0037', '196212291998031002', 'Saefullah, S.Pd.I', NULL, NULL, NULL, 'MIN Sumbersari', 'PNS', 'MIN Sumbersari', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(41, NULL, '1332.11.0038', '196212302014111001', 'Drs. Gatot Soewandiono', NULL, NULL, NULL, 'MAN 2 Jember', 'PNS', 'MAN 2 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(42, NULL, '1332.11.0039', '196304091996031001', 'Drs. Dardiri', NULL, NULL, NULL, 'MAN 1 Jember', 'PNS', 'MAN 1 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(43, NULL, '1332.11.0040', '196304151992032001', 'Dra. Sri Nurhayati', NULL, NULL, NULL, 'MAN 3 Jember', 'PNS', 'MAN 3 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(44, NULL, '1332.11.0041', '196306271989031006', 'Salamon, SH, M.HI', NULL, NULL, NULL, 'Kec. Umbulsari', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(45, NULL, '1332.11.0042', '196307161994032001', 'Dra. Nurul Faridha', NULL, NULL, NULL, 'MTsN Jember 2', 'PNS', 'MTsN Jember 2', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(46, NULL, '1332.11.0043', '196308231985031003', 'Sumaryono, S.Sos.', NULL, NULL, NULL, 'MTsN Arjasa', 'PNS', 'MTsN Arjasa', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(47, NULL, '1332.11.0044', '196308312006042001', 'Dra. Masfiyati', NULL, NULL, NULL, 'MTsN Kencong', 'PNS', 'MTsN Kencong', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(48, NULL, '1332.11.0045', '196401011997031008', 'Drs. Muhammad Lutfi', NULL, NULL, NULL, 'Kec. Silo', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(49, NULL, '1332.11.0046', '196401012014112002', 'Siti Wasilah', NULL, NULL, NULL, 'MTsN Jember 1', 'PNS', 'MTsN Jember 1', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(50, NULL, '1332.11.0047', '196401061991032002', 'Dra. ST. Rohmatun', NULL, NULL, NULL, 'MTsN Jember 1', 'PNS', 'MTsN Jember 1', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(51, NULL, '1332.11.0048', '196401291989031002', 'Sudibyo, SE.', NULL, NULL, NULL, 'MTsN Kencong', 'PNS', 'MTsN Kencong', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(52, NULL, '1332.11.0049', '196402052003121001', 'Yatiman, S.Pd., M.Pd.', NULL, NULL, NULL, 'MTsN Umbulsari', 'PNS', 'MTsN Umbulsari', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(53, NULL, '1332.11.0050', '196402131994032004', 'Dra. Susila', NULL, NULL, NULL, 'MTsN Jember 2', 'PNS', 'MTsN Jember 2', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(54, NULL, '1332.11.0051', '196403181990032002', 'Satini, S.Pd.I', NULL, NULL, NULL, 'MIN Gerahan', 'PNS', 'MIN Gerahan', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(55, NULL, '1332.11.0052', '196403291993031001', 'Asyhari, SE', NULL, NULL, NULL, 'MTsN Umbulsari', 'PNS', 'MTsN Umbulsari', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(56, NULL, '1332.11.0053', '196405051986031003', 'Sukadi', NULL, NULL, NULL, 'Kan. Kemenag Kab. Jember', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(57, NULL, '1332.11.0054', '196405182000031001', 'Drs. Moh. Saiful Amin, M.HI.', NULL, NULL, NULL, 'Kec. Gumukmas', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(58, NULL, '1332.11.0055', '196406012000031001', 'Drs. Asik', NULL, NULL, NULL, 'Kec. Tanggul', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(59, NULL, '1332.11.0056', '196406171987032001', 'Juniar Sjafarinda', NULL, NULL, NULL, 'Kan. Kemenag Kab. Jember', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(60, NULL, '1332.11.0057', '196407041994031001', 'Mohammad Solikhin, S.Pd.', NULL, NULL, NULL, 'MTsN Jember 3', 'PNS', 'MTsN Jember 3', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(61, NULL, '1332.11.0058', '196407061994031001', 'Heri Sufyandi', NULL, NULL, NULL, 'Kec. Jombang', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(62, NULL, '1332.11.0059', '196407142007012019', 'Dra. Siti Munasikah', NULL, NULL, NULL, 'MAN 3 Jember', 'PNS', 'MAN 3 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(63, NULL, '1332.11.0060', '196407241992031003', 'Drs. Suparyitno, M.Pd.', NULL, NULL, NULL, 'MTsN Umbulsari', 'PNS', 'MTsN Umbulsari', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(64, NULL, '1332.11.0061', '196408011993032001', 'Poniyem, S.Ag.', NULL, NULL, NULL, 'Kec. Wuluhan', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(65, NULL, '1332.11.0062', '196408031994032001', 'Dra. ST. Nurhayati, M.Pd.', NULL, NULL, NULL, 'MTsN Jember 1', 'PNS', 'MTsN Jember 1', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(66, NULL, '1332.11.0063', '196409011992031001', 'Moh. Nuriadi, S.Ag.', NULL, NULL, NULL, 'Kec. Jombang', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(67, NULL, '1332.11.0064', '196409052014111001', 'Mudhar', NULL, NULL, NULL, 'Kec. Kencong', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(68, NULL, '1332.11.0065', '196409201993031001', 'Drs. Misbakul Munir, M.HI.', NULL, NULL, NULL, 'Kan. Kemenag Kab. Jember', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(69, NULL, '1332.11.0066', '196410121992031003', 'Drs. Syaiful Anwar, M.Pd.', NULL, NULL, NULL, 'MTsN Bangsalsari', 'PNS', 'MTsN Bangsalsari', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(70, NULL, '1332.11.0067', '196412172000122003', 'Dwi Atmini, S.Pd., S.Th.', NULL, NULL, NULL, 'Kec. Sumbersari', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(71, NULL, '1332.11.0068', '196412262007011010', 'Sumarto', NULL, NULL, NULL, 'Kec. Ledokombo', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(72, NULL, '1332.11.0069', '196501011993032002', 'Infaridah, S.Ag.', NULL, NULL, NULL, 'Kec. Ledokombo', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(73, NULL, '1332.11.0070', '196501011999031003', 'Drs. Marjuki', NULL, NULL, NULL, 'Kan. Kemenag Kab. Jember', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(74, NULL, '1332.11.0071', '196501102014111002', 'Ahmad', NULL, NULL, NULL, 'Kan. Kemenag Kab. Jember', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(75, NULL, '1332.11.0072', '196501122000032003', 'Sulistiyani, S.Ag.', NULL, NULL, NULL, 'Kec. Pakusari', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(76, NULL, '1332.11.0073', '196502021992031005', 'Drs. Ahmad Hariadi Sugiharto', NULL, NULL, NULL, 'Kan. Kemenag Kab. Jember', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(77, NULL, '1332.11.0074', '196502192005011001', 'Drs. Muhammad Khalil', NULL, NULL, NULL, 'Kec. Sumberjambe', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(78, NULL, '1332.11.0075', '196503082014111001', 'Nadim', NULL, NULL, NULL, 'MTsN Jember 1', 'PNS', 'MTsN Jember 1', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(79, NULL, '1332.11.0076', '196503281992032001', 'Faekotul Jannah, S.Pd.', NULL, NULL, NULL, 'MTsN Jember 2', 'PNS', 'MTsN Jember 2', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(80, NULL, '1332.11.0077', '196504112005011001', 'Drs. Moh. Irpak, M.Pd.', NULL, NULL, NULL, 'Kec. Balung', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(81, NULL, '1332.11.0078', '196505032007012028', 'Musrifah', NULL, NULL, NULL, 'MTsN Arjasa', 'PNS', 'MTsN Arjasa', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(82, NULL, '1332.11.0079', '196505071985031005', 'Samuri', NULL, NULL, NULL, 'MTsN Sumberbaru', 'PNS', 'MTsN Sumberbaru', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(83, NULL, '1332.11.0080', '196505161993032004', 'Dra. Siti Kuriatul Jannah', NULL, NULL, NULL, 'MTsN Kencong', 'PNS', 'MTsN Kencong', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(84, NULL, '1332.11.0081', '196505162005011002', 'Suprapto, S.Pd.', NULL, NULL, NULL, 'Kec. Jenggawah', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(85, NULL, '1332.11.0082', '196507012005011003', 'Nurul Hasan, S.Pd.I', NULL, NULL, NULL, 'Kec. Sumbersari', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(86, NULL, '1332.11.0083', '196507032014111002', 'Sudiyono', NULL, NULL, NULL, 'Kec. Gumukmas', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(87, NULL, '1332.11.0084', '196507171989031003', 'Abdul Azis, SH', NULL, NULL, NULL, 'Kec. Gumukmas', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(88, NULL, '1332.11.0085', '196507251993032003', 'Rohmiyati, S.Pd', NULL, NULL, NULL, 'MTsN Jember 1', 'PNS', 'MTsN Jember 1', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(89, NULL, '1332.11.0086', '196507282005011001', 'Drs. Djunaidi, M.Pd.I', NULL, NULL, NULL, 'Kec. Jelbuk', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(90, NULL, '1332.11.0087', '196508051994031003', 'Drs. Agus Suyatno', NULL, NULL, NULL, 'MAN 1 Jember', 'PNS', 'MAN 1 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(91, NULL, '1332.11.0088', '196508211991032003', 'Lilik Khobibah, S.Pd.', NULL, NULL, NULL, 'MAN 3 Jember', 'PNS', 'MAN 3 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(92, NULL, '1332.11.0089', '196508272007011022', 'Samsul', NULL, NULL, NULL, 'Kec. Jelbuk', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(93, NULL, '1332.11.0090', '196509112003122001', 'Lutfiatul Choiriyah, S.Pd.I', NULL, NULL, NULL, 'Kec. Kaliwates', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(94, NULL, '1332.11.0091', '196509302005011001', 'Ah. Subairi, S.Pd.I', NULL, NULL, NULL, 'Kec. Tanggul', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(95, NULL, '1332.11.0092', '196509302007012026', 'Dra. Budiarti', NULL, NULL, NULL, 'MTsN Jember 1', 'PNS', 'MTsN Jember 1', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(96, NULL, '1332.11.0093', '196510052005011005', 'Drs. Darmadji', NULL, NULL, NULL, 'MTsN Bangsalsari', 'PNS', 'MTsN Bangsalsari', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(97, NULL, '1332.11.0094', '196510101998031002', 'Abdur Rohim Al Amin, S.Pd.I, M.Pd.I', NULL, NULL, NULL, 'Kan. Kemenag Kab. Jember', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(98, NULL, '1332.11.0095', '196510141994032002', 'Tutik Susiyana, S.Pd.', NULL, NULL, NULL, 'MTsN Jember 1', 'PNS', 'MTsN Jember 1', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(99, NULL, '1332.11.0096', '196510162005011003', 'Muhammad Fadil, S.Pd.I', NULL, NULL, NULL, 'Kec. Puger', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(100, NULL, '1332.11.0097', '196511042014112003', 'Esti Sri Rejeki', NULL, NULL, NULL, 'MAN 2 Jember', 'PNS', 'MAN 2 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(101, NULL, '1332.11.0098', '196511072014111005', 'Taufiqurohman', NULL, NULL, NULL, 'Kec. Gumukmas', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(102, NULL, '1332.11.0099', '196511081991031001', 'Subari, SH', NULL, NULL, NULL, 'Kec. Sumberjambe', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(103, NULL, '1332.11.0100', '196601011998032002', 'Dyah Ariani, S.Pd.', NULL, NULL, NULL, 'MTsN Arjasa', 'PNS', 'MTsN Arjasa', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(104, NULL, '1332.11.0101', '196601012014111002', 'Supandi', NULL, NULL, NULL, 'Kec. Pakusari', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(105, NULL, '1332.11.0102', '196601042005012001', 'Dra. Amyanah', NULL, NULL, NULL, 'MTsN Jember 1', 'PNS', 'MTsN Jember 1', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(106, NULL, '1332.11.0103', '196601082007012020', 'Dra. Miftahul Djannah', NULL, NULL, NULL, 'MTsN Kencong', 'PNS', 'MTsN Kencong', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(107, NULL, '1332.11.0104', '196601082014112002', 'Rufiah', NULL, NULL, NULL, 'Kec. Sumbersari', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(108, NULL, '1332.11.0105', '196601311994031001', 'Drs. Yusron Barid', NULL, NULL, NULL, 'Kec. Kalisat', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(109, NULL, '1332.11.0106', '196602032014111001', 'Purwadi', NULL, NULL, NULL, 'Kec. Tempurejo', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(110, NULL, '1332.11.0107', '196602042007102001', 'Ika Andriati', NULL, NULL, NULL, 'MTsN Jember 2', 'PNS', 'MTsN Jember 2', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(111, NULL, '1332.11.0108', '196602152000031002', 'Katimin, S.Ag.', NULL, NULL, NULL, 'Kec. Gumukmas', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(112, NULL, '1332.11.0109', '196602152005011002', 'Drs. Junaedi, M.Pd.I', NULL, NULL, NULL, 'MTsN Kencong', 'PNS', 'MTsN Kencong', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(113, NULL, '1332.11.0110', '196602172005011003', 'Wahman Sumanjaya, S.Pd.', NULL, NULL, NULL, 'MTsN Jember 1', 'PNS', 'MTsN Jember 1', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(114, NULL, '1332.11.0111', '196603062007011018', 'Purnomo Sidiq', NULL, NULL, NULL, 'MTsN Kencong', 'PNS', 'MTsN Kencong', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(115, NULL, '1332.11.0112', '196603101992032003', 'Hariningsih,S.Pd.', NULL, NULL, NULL, 'MTsN Jember 1', 'PNS', 'MTsN Jember 1', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(116, NULL, '1332.11.0113', '196604031998031002', 'Drs. Isnan Hm, M.EI.', NULL, NULL, NULL, 'Kec. Rambipuji', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(117, NULL, '1332.11.0114', '196604082000031002', 'Drs. Sultonuddin, M.HI.', NULL, NULL, NULL, 'Kec. Balung', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(118, NULL, '1332.11.0115', '196604152006042002', 'Luluk, S.Pd.', NULL, NULL, NULL, 'MIN Sumbersari', 'PNS', 'MIN Sumbersari', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(119, NULL, '1332.11.0116', '196604251990031002', 'Moh. Zuhal Khumaidi, SH', NULL, NULL, NULL, 'Kec. Umbulsari', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(120, NULL, '1332.11.0117', '196604272005011001', 'Kholik, S.Pd.I', NULL, NULL, NULL, 'Kec. Tempurejo', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(121, NULL, '1332.11.0118', '196605032002121002', 'Abd. Hamid, S.Pd.I', NULL, NULL, NULL, 'Kec. Arjasa', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(122, NULL, '1332.11.0119', '196606011995032001', 'Dra. Juni Hermawati', NULL, NULL, NULL, 'MAN 2 Jember', 'PNS', 'MAN 2 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(123, NULL, '1332.11.0120', '196606061987031001', 'Syarif Hidayat, Sh, M.HI.', NULL, NULL, NULL, 'Kec. Sumbersari', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(124, NULL, '1332.11.0121', '196606081998031001', 'Purwadi, S.Pd.I', NULL, NULL, NULL, 'Kec. Arjasa', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(125, NULL, '1332.11.0122', '196606192006042002', 'Tuniyem, S.Pd.I', NULL, NULL, NULL, 'Kec. Puger', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(126, NULL, '1332.11.0123', '196606272014111003', 'Supardi', NULL, NULL, NULL, 'MTsN Bangsalsari', 'PNS', 'MTsN Bangsalsari', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(127, NULL, '1332.11.0124', '196607281994032001', 'Nur Wahidah, S.Pd.', NULL, NULL, NULL, 'MTsN Jember 2', 'PNS', 'MTsN Jember 2', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(128, NULL, '1332.11.0125', '196608242005011001', 'Suprapto, S.Pd.', NULL, NULL, NULL, 'Kec. Wuluhan', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(129, NULL, '1332.11.0126', '196608252005012002', 'Dra. Indayati', NULL, NULL, NULL, 'MTsN Kencong', 'PNS', 'MTsN Kencong', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(130, NULL, '1332.11.0127', '196608281994031001', 'Drs. Agus Eko Setiawan,M.SI', NULL, NULL, NULL, 'MTsN Jember 1', 'PNS', 'MTsN Jember 1', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(131, NULL, '1332.11.0128', '196609172007012016', 'Wasiatun', NULL, NULL, NULL, 'MTsN Sumberbaru', 'PNS', 'MTsN Sumberbaru', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(132, NULL, '1332.11.0129', '196610152005041001', 'Drs. Saiful Faozi, M.Pd.I', NULL, NULL, NULL, 'MTsN Bangsalsari', 'PNS', 'MTsN Bangsalsari', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(133, NULL, '1332.11.0130', '196610182000032001', 'Musriyatun, S.Ag.', NULL, NULL, NULL, 'Kec. Umbulsari', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(134, NULL, '1332.11.0131', '196610192006042002', 'Dra. Mahmudah', NULL, NULL, NULL, 'MTsN Sumberbaru', 'PNS', 'MTsN Sumberbaru', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(135, NULL, '1332.11.0132', '196610202000031004', 'Muhali, A.Ma.', NULL, NULL, NULL, 'Kec. Ledokombo', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(136, NULL, '1332.11.0133', '196610251988031004', 'Wildan , SE, M.Si.', NULL, NULL, NULL, 'MTsN Jember 3', 'PNS', 'MTsN Jember 3', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(137, NULL, '1332.11.0134', '196610252007011030', 'Abd. Rahman', NULL, NULL, NULL, 'MTsN Sukowono', 'PNS', 'MTsN Sukowono', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(138, NULL, '1332.11.0135', '196611251989031004', 'Drs. Aksen Nurul Haq, M.HI.', NULL, NULL, NULL, 'Kec. Mumbulsari', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(139, NULL, '1332.11.0136', '196612132005011003', 'Akhmad Slametriadi, S.Pd.', NULL, NULL, NULL, 'Kec. Jenggawah', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(140, NULL, '1332.11.0137', '196612172005011002', 'Ariman Siswantoro, S.Pd.I', NULL, NULL, NULL, 'Kec. Panti', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(141, NULL, '1332.11.0138', '196612252007011035', 'Hariyanto, SH', NULL, NULL, NULL, 'MAN 2 Jember', 'PNS', 'MAN 2 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(142, NULL, '1332.11.0139', '196612311994031027', 'Drs. Zurni', NULL, NULL, NULL, 'Pengawas', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(143, NULL, '1332.11.0140', '196701102005012001', 'Siti Mujari`Ah, S.Pd.I', NULL, NULL, NULL, 'Kec. Puger', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(144, NULL, '1332.11.0141', '196702042005012002', 'Berlianti, S.Pd., MM.Pd.', NULL, NULL, NULL, 'Kec. Kencong', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(145, NULL, '1332.11.0142', '196702122000031003', 'Badrus Sholeh, S.Ag.', NULL, NULL, NULL, 'Kec. Sumbersari', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(146, NULL, '1332.11.0143', '196703082014111002', 'Nurul Huda', NULL, NULL, NULL, 'Kec. Jenggawah', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(147, NULL, '1332.11.0144', '196703132005011003', 'Fakruroji, S.Pd.I.', NULL, NULL, NULL, 'Kec. Jenggawah', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(148, NULL, '1332.11.0145', '196704011998032003', 'Dra. Hindanah', NULL, NULL, NULL, 'MIN Tutul', 'PNS', 'MIN Tutul', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(149, NULL, '1332.11.0146', '196704152005012001', 'Susiati, S.Pd.I', NULL, NULL, NULL, 'Kec. Sumberbaru', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(150, NULL, '1332.11.0147', '196704241997031003', 'Drs. Asyhar', NULL, NULL, NULL, 'MAN 3 Jember', 'PNS', 'MAN 3 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(151, NULL, '1332.11.0148', '196704252000032001', 'Ning Wahiba Maghfuroh, S.Pd.I', NULL, NULL, NULL, 'Kec. Sumbersari', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(152, NULL, '1332.11.0149', '196705151992032004', 'Siti Isnaini Nurdiningrum, S.Pd.', NULL, NULL, NULL, 'MTsN Umbulsari', 'PNS', 'MTsN Umbulsari', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(153, NULL, '1332.11.0150', '196705231994031003', 'Drs. Tjutjuk Jusnearto', NULL, NULL, NULL, 'MTsN Jember 2', 'PNS', 'MTsN Jember 2', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(154, NULL, '1332.11.0151', '196705272005011002', 'Drs. Hasit, M.Pd.I', NULL, NULL, NULL, 'MTsN Umbulsari', 'PNS', 'MTsN Umbulsari', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(155, NULL, '1332.11.0152', '196706042005012001', 'Dra. Titik Nurhayati, M.Pd.I', NULL, NULL, NULL, 'Kec. Ambulu', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(156, NULL, '1332.11.0153', '196706052007011075', 'Suyanto', NULL, NULL, NULL, 'MTsN Jember 3', 'PNS', 'MTsN Jember 3', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(157, NULL, '1332.11.0154', '196706082007011045', 'Misbah', NULL, NULL, NULL, 'Kec. Sumberjambe', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(158, NULL, '1332.11.0155', '196706082007012024', 'Dra. Sri Suharwati', NULL, NULL, NULL, 'MAN 3 Jember', 'PNS', 'MAN 3 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(159, NULL, '1332.11.0156', '196706301993031002', 'Mursyid ,SH, M.HI.', NULL, NULL, NULL, 'Kec. Tempurejo', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(160, NULL, '1332.11.0157', '196707141998031002', 'Buari, S.Pd.', NULL, NULL, NULL, 'MAN 1 Jember', 'PNS', 'MAN 1 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(161, NULL, '1332.11.0158', '196707171995031001', 'Drs. Mahmudi, M.Pd.', NULL, NULL, NULL, 'MAN 1 Jember', 'PNS', 'MAN 1 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(162, NULL, '1332.11.0159', '196707272000032001', 'Siti Khusnul Khotimah, S.Pd. I.', NULL, NULL, NULL, 'MIN Tutul', 'PNS', 'MIN Tutul', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(163, NULL, '1332.11.0160', '196708021993032001', 'Ribut Setianingsih, S.Pd.I', NULL, NULL, NULL, 'MIN Tanggul Wetan', 'PNS', 'MIN Tanggul Wetan', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(164, NULL, '1332.11.0161', '196708092005011002', 'Mudaris, S.Pd.I', NULL, NULL, NULL, 'Kan. Kemenag Kab. Jember', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(165, NULL, '1332.11.0162', '196708191994031002', 'Amru Fajar Agus, S.Pd.', NULL, NULL, NULL, 'Kan. Kemenag Kab. Jember', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(166, NULL, '1332.11.0163', '196708272005012001', 'Muslikah, S.Pd.I', NULL, NULL, NULL, 'Kec. Sumberjambe', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(167, NULL, '1332.11.0164', '196709141987032001', 'Nur Hakima', NULL, NULL, NULL, 'MTsN Jember 1', 'PNS', 'MTsN Jember 1', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(168, NULL, '1332.11.0165', '196709281993031003', 'Abdullah, SH, M.HI.', NULL, NULL, NULL, 'Kec. Silo', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(169, NULL, '1332.11.0166', '196710042007012021', 'Oktorika Suwarni, S.Pd.', NULL, NULL, NULL, 'MTsN Sukowono', 'PNS', 'MTsN Sukowono', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(170, NULL, '1332.11.0167', '196710191998031001', 'Didik Mardianto, S.Pd, M.Pd', NULL, NULL, NULL, 'MIN Sumbersari', 'PNS', 'MIN Sumbersari', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(171, NULL, '1332.11.0168', '196711141994032003', 'Luluk Indrawati, S.Pd', NULL, NULL, NULL, 'MTsN Jember 3', 'PNS', 'MTsN Jember 3', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(172, NULL, '1332.11.0169', '196711192005011003', 'Abdullah, S.Pd', NULL, NULL, NULL, 'MTsN Bangsalsari', 'PNS', 'MTsN Bangsalsari', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(173, NULL, '1332.11.0170', '196711212005011002', 'Lasiyo, S.Pd.', NULL, NULL, NULL, 'MTsN Kencong', 'PNS', 'MTsN Kencong', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user');
INSERT INTO `akun` (`id_akun`, `id_pendaftaran`, `kta`, `NIP`, `nama`, `no_hp`, `no_wa`, `email`, `pilkpa`, `pilstatuspegawai`, `tempat_tugas`, `tempat_lahir`, `tgl_lahir`, `pilpensiun`, `tgl_pendaftaran`, `scan_ktp`, `gambar_profil`, `status`, `password`, `ID_pengurus`, `level`) VALUES
(174, NULL, '1332.11.0171', '196712032014111001', 'Amin', NULL, NULL, NULL, 'Kec. Sumbersari', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(175, NULL, '1332.11.0172', '196712251992031001', 'M. Jamal Lutfi', NULL, NULL, NULL, 'Kec. Balung', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(176, NULL, '1332.11.0173', '196712282005011002', 'Syahid, S.Pd.', NULL, NULL, NULL, 'MTsN Kencong', 'PNS', 'MTsN Kencong', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(177, NULL, '1332.11.0174', '196712312005011039', 'A. Jufri Hasyim, S.Ag.', NULL, NULL, NULL, 'MTsN Sukowono', 'PNS', 'MTsN Sukowono', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(178, NULL, '1332.11.0175', '196801011996031001', 'Sunarto, S.Pd.I', NULL, NULL, NULL, 'Kec. Mayang', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(179, NULL, '1332.11.0176', '196801012000031013', 'Drs. Hozaini', NULL, NULL, NULL, 'Kec. Sumberbaru', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(180, NULL, '1332.11.0177', '196801111994031002', 'Muhammad Slamet, S.Pd.I', NULL, NULL, NULL, 'Kec. Kaliwates', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(181, NULL, '1332.11.0178', '196801222007012026', 'Rusmini', NULL, NULL, NULL, 'Kan. Kemenag Kab. Jember', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(182, NULL, '1332.11.0179', '196802032005011004', 'Hariyono, S.Pd.', NULL, NULL, NULL, 'Kec. Kencong', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(183, NULL, '1332.11.0180', '196802242007011031', 'Pathor Rasi, S.Pd.', NULL, NULL, NULL, 'MTsN Sukowono', 'PNS', 'MTsN Sukowono', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(184, NULL, '1332.11.0181', '196803022000031002', 'Drs. Mohammad Rozim, M.Pd.I', NULL, NULL, NULL, 'Kec. Patrang', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(185, NULL, '1332.11.0182', '196803111994031003', 'Muhammad Saiful Hadi, SH', NULL, NULL, NULL, 'Kec. Pakusari', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(186, NULL, '1332.11.0183', '196803251998032003', 'Luluk Arinie M, S.Pd.', NULL, NULL, NULL, 'MTsN Bangsalsari', 'PNS', 'MTsN Bangsalsari', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(187, NULL, '1332.11.0184', '196804081996031004', 'Drs. Suharno, M.Pd.I.', NULL, NULL, NULL, 'MAN 2 Jember', 'PNS', 'MAN 2 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(188, NULL, '1332.11.0185', '196804111991031004', 'Akhmad Soleh, S.Pd.I', NULL, NULL, NULL, 'Kec. Sumberbaru', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(189, NULL, '1332.11.0186', '196804152005012002', 'Dra. Umi Nurjanah', NULL, NULL, NULL, 'Kec. Ambulu', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(190, NULL, '1332.11.0187', '196804171990011001', 'Rudi Bawono, SE', NULL, NULL, NULL, 'Kec. Mayang', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(191, NULL, '1332.11.0188', '196804181998031002', 'Nawawi, S.Pd.', NULL, NULL, NULL, 'MIN Tanggul Wetan', 'PNS', 'MIN Tanggul Wetan', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(192, NULL, '1332.11.0189', '196804201993031004', 'Arif Hariyono', NULL, NULL, NULL, 'Kec. Umbulsari', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(193, NULL, '1332.11.0190', '196804222005012002', 'Endiwijayati, S.Pd.', NULL, NULL, NULL, 'MIN Sumbersari', 'PNS', 'MIN Sumbersari', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(194, NULL, '1332.11.0191', '196804232005011004', 'Suroso, S.Pd.I', NULL, NULL, NULL, 'Kec. Balung', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(195, NULL, '1332.11.0192', '196805042000032006', 'Acik Mundai, S.Pd.', NULL, NULL, NULL, 'Kec. Kencong', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(196, NULL, '1332.11.0193', '196805072005012004', 'Siti Holifah, S.Pd.', NULL, NULL, NULL, 'MTsN Sukowono', 'PNS', 'MTsN Sukowono', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(197, NULL, '1332.11.0194', '196805122000031002', 'A. Hasyim, S.Pd.I', NULL, NULL, NULL, 'Kec. Umbulsari', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(198, NULL, '1332.11.0195', '196805162005011001', 'Imam Hanafi, S.Pd.', NULL, NULL, NULL, 'MAN 3 Jember', 'PNS', 'MAN 3 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(199, NULL, '1332.11.0196', '196805292007011013', 'Syaifur Rohim, S.Ag.', NULL, NULL, NULL, 'MTsN Jember 3', 'PNS', 'MTsN Jember 3', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(200, NULL, '1332.11.0197', '196805311999032001', 'Dra. Nur Indah Rakhmawati', NULL, NULL, NULL, 'MTsN Jember 2', 'PNS', 'MTsN Jember 2', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(201, NULL, '1332.11.0198', '196806071990021001', 'Rudi Winarto, SE', NULL, NULL, NULL, 'Kan. Kemenag Kab. Jember', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(202, NULL, '1332.11.0199', '196806071998032002', 'Dra. Sarifah Indiana', NULL, NULL, NULL, 'MAN 2 Jember', 'PNS', 'MAN 2 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(203, NULL, '1332.11.0200', '196806102014111003', 'Aziz Poerdijanto', NULL, NULL, NULL, 'MTsN Arjasa', 'PNS', 'MTsN Arjasa', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(204, NULL, '1332.11.0201', '196806132005012001', 'Hosnati, S.Pd.I', NULL, NULL, NULL, 'Kec. Rambipuji', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(205, NULL, '1332.11.0202', '196806142000032001', 'Ida Khoridah Hauriyah, M.Pd.I', NULL, NULL, NULL, 'Kec. Sukorambi', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(206, NULL, '1332.11.0203', '196806142005011002', 'Nur Hasyim, S.Pd.I', NULL, NULL, NULL, 'Kec. Gumukmas', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(207, NULL, '1332.11.0204', '196806152005011001', 'Mochammad Tohawi, S.Pd.I', NULL, NULL, NULL, 'Kec. Ledokombo', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(208, NULL, '1332.11.0205', '196806152005012002', 'Isti Musifah, S.Pd.I', NULL, NULL, NULL, 'Kec. Mumbulsari', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(209, NULL, '1332.11.0206', '196806232014111003', 'Achmat Saekoni', NULL, NULL, NULL, 'Kec. Ambulu', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(210, NULL, '1332.11.0207', '196807042005011006', 'Drs. Kholik', NULL, NULL, NULL, 'Kec. Kencong', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(211, NULL, '1332.11.0208', '196807102000032009', 'Siti Khasanah, S.Pd.I', NULL, NULL, NULL, 'Kec. Wuluhan', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(212, NULL, '1332.11.0209', '196807102005012003', 'Arie Furwati S.Pd.I', NULL, NULL, NULL, 'MIN Arjasa', 'PNS', 'MIN Arjasa', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(213, NULL, '1332.11.0210', '196807122014111005', 'Su`id', NULL, NULL, NULL, 'MTsN Sumberbaru', 'PNS', 'MTsN Sumberbaru', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(214, NULL, '1332.11.0211', '196807212005011002', 'Drs. Muadib, M.Pd.', NULL, NULL, NULL, 'Kec. Umbulsari', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(215, NULL, '1332.11.0212', '196808032000031001', 'Saiful Bahri, S.Pd,I, M.Pd.I', NULL, NULL, NULL, 'Kec. Panti', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(216, NULL, '1332.11.0213', '196808061997031003', 'Amari, A.Ma', NULL, NULL, NULL, 'Kec. Rambipuji', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(217, NULL, '1332.11.0214', '196808062007011047', 'Tebi Siswanto', NULL, NULL, NULL, 'MTsN Jember 3', 'PNS', 'MTsN Jember 3', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(218, NULL, '1332.11.0215', '196808082000032005', 'Nur Kholifah, S.Pd.I', NULL, NULL, NULL, 'Kec. Sukorambi', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(219, NULL, '1332.11.0216', '196808082005012002', 'Mukmina, S.Pd.', NULL, NULL, NULL, 'MTsN Jember 1', 'PNS', 'MTsN Jember 1', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(220, NULL, '1332.11.0217', '196808162009011005', 'Mokhamad Khotib', NULL, NULL, NULL, 'MTsN Jember 3', 'PNS', 'MTsN Jember 3', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(221, NULL, '1332.11.0218', '196808172005011004', 'Slamet, S.Pd.', NULL, NULL, NULL, 'Kec. Ambulu', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(222, NULL, '1332.11.0219', '196808222014112002', 'Nurul Hayati, SE', NULL, NULL, NULL, 'MTsN Jember 3', 'PNS', 'MTsN Jember 3', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(223, NULL, '1332.11.0220', '196809022007011033', 'Holili', NULL, NULL, NULL, 'MIN Sumbersari', 'PNS', 'MIN Sumbersari', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(224, NULL, '1332.11.0221', '196809232014111001', 'Budi Harsono', NULL, NULL, NULL, 'Kec. Wuluhan', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(225, NULL, '1332.11.0222', '196809242014121001', 'Supangat', NULL, NULL, NULL, 'MIN Tanggul Wetan', 'PNS', 'MIN Tanggul Wetan', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(226, NULL, '1332.11.0223', '196810071998031001', 'Nanang Wahyu Edy, S.Pd, M.Pd.I', NULL, NULL, NULL, 'Pengawas', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(227, NULL, '1332.11.0224', '196810102005011004', 'Drs. Sarto Prawoto', NULL, NULL, NULL, 'MTsN Kencong', 'PNS', 'MTsN Kencong', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(228, NULL, '1332.11.0225', '196810162014111003', 'Ubaidullah', NULL, NULL, NULL, 'MTsN Jember 1', 'PNS', 'MTsN Jember 1', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(229, NULL, '1332.11.0226', '196810201993031001', 'Madra`I, S.Pd.I', NULL, NULL, NULL, 'Kec. Tempurejo', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(230, NULL, '1332.11.0227', '196811112005011001', 'Mukhtarikin S.Pd.', NULL, NULL, NULL, 'MIN Tutul', 'PNS', 'MIN Tutul', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(231, NULL, '1332.11.0228', '196811191994032002', 'Dra. Kodariyah Mardiana', NULL, NULL, NULL, 'MAN 2 Jember', 'PNS', 'MAN 2 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(232, NULL, '1332.11.0229', '196811262005011001', 'Zaenal Muttaqin, S.Ag.', NULL, NULL, NULL, 'Kec. Mumbulsari', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(233, NULL, '1332.11.0230', '196812032009102001', 'Sri Rahayuningsih, S.Pd.', NULL, NULL, NULL, 'MTsN Jember 2', 'PNS', 'MTsN Jember 2', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(234, NULL, '1332.11.0231', '196812152005011001', 'Saman, S.Pd.', NULL, NULL, NULL, 'Kec. Mumbulsari', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(235, NULL, '1332.11.0232', '196812172005011001', 'Moch. Subandi, S.Pd.', NULL, NULL, NULL, 'MIN Sumbersari', 'PNS', 'MIN Sumbersari', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(236, NULL, '1332.11.0233', '196812252000031001', 'Sutarno, S.Ag.', NULL, NULL, NULL, 'Kec. Kaliwates', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(237, NULL, '1332.11.0234', '196901042005011005', 'Munip Hadi Sonna, A.Ma', NULL, NULL, NULL, 'Kec. Kalisat', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(238, NULL, '1332.11.0235', '196901132005012002', 'Fatmawati, S.Pd.I', NULL, NULL, NULL, 'Kec. Sumberbaru', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(239, NULL, '1332.11.0236', '196901172005011003', 'Mustofa, S.Pd.', NULL, NULL, NULL, 'Kec. Jenggawah', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(240, NULL, '1332.11.0237', '196902122007011037', 'Giman, S.Pd.', NULL, NULL, NULL, 'MAN 2 Jember', 'PNS', 'MAN 2 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(241, NULL, '1332.11.0238', '196902172005012008', 'Cikratiarini, S.Pd.', NULL, NULL, NULL, 'Kec. Kaliwates', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(242, NULL, '1332.11.0239', '196903022005012001', 'Maridhotul Hasanah, S.Pd.I', NULL, NULL, NULL, 'Kec. Ajung', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(243, NULL, '1332.11.0240', '196903062000031002', 'M. Miskun, S.Ag, M.HI', NULL, NULL, NULL, 'Kan. Kemenag Kab. Jember', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(244, NULL, '1332.11.0241', '196903162006041002', 'M. Ridwan Muslih, S.Pd., M.Pd.', NULL, NULL, NULL, 'MTsN Kencong', 'PNS', 'MTsN Kencong', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(245, NULL, '1332.11.0242', '196903241991031001', 'Kusnan Winardi, SH. S.Sos., M.Si', NULL, NULL, NULL, 'Kec. Panti', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(246, NULL, '1332.11.0243', '196903302003121001', 'Drs. Muh. Muhrizin, M.Pd.I', NULL, NULL, NULL, 'MAN 3 Jember', 'PNS', 'MAN 3 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(247, NULL, '1332.11.0244', '196904022005012011', 'Indah Iswati, S.Pd.', NULL, NULL, NULL, 'MIN Sumbersari', 'PNS', 'MIN Sumbersari', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(248, NULL, '1332.11.0245', '196904042005011002', 'Muslim, S.Pd.I', NULL, NULL, NULL, 'Kec. Gumukmas', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(249, NULL, '1332.11.0246', '196904112005011002', 'Surhaeri, S.Pd.I', NULL, NULL, NULL, 'Kec. Sumberjambe', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(250, NULL, '1332.11.0247', '196904132007012033', 'Ida Ariani, S.Pd.', NULL, NULL, NULL, 'MAN 2 Jember', 'PNS', 'MAN 2 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(251, NULL, '1332.11.0248', '196904182005012003', 'Dra. Elis Bariroh', NULL, NULL, NULL, 'MAN 2 Jember', 'PNS', 'MAN 2 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(252, NULL, '1332.11.0249', '196904182014112003', 'Siti Fatimah, S. Pd.', NULL, NULL, NULL, 'MTsN Jember 2', 'PNS', 'MTsN Jember 2', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(253, NULL, '1332.11.0250', '196904202005012002', 'Lilik Supriyani, S.Pd.I', NULL, NULL, NULL, 'Kec. Ajung', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(254, NULL, '1332.11.0251', '196904221998031003', 'Moch. Rofiq Rohmatullah, S.Ag.', NULL, NULL, NULL, 'Kec. Mayang', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(255, NULL, '1332.11.0252', '196904251997032002', 'Siti Asrofah, S.Pd.I', NULL, NULL, NULL, 'MIN Tanggul Wetan', 'PNS', 'MIN Tanggul Wetan', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(256, NULL, '1332.11.0253', '196905112007012034', 'Siti Asiya, S.Pd', NULL, NULL, NULL, 'MTsN Sumberbaru', 'PNS', 'MTsN Sumberbaru', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(257, NULL, '1332.11.0254', '196905262000031009', 'Marsudi, S.Pd.I', NULL, NULL, NULL, 'Kec. Kaliwates', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(258, NULL, '1332.11.0255', '196905282005011001', 'Sukris Rahmat, S.Pd.', NULL, NULL, NULL, 'Kec. Jenggawah', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(259, NULL, '1332.11.0256', '196906012005012002', 'Istinwaroh, S.Pd.I', NULL, NULL, NULL, 'Kec. Umbulsari', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(260, NULL, '1332.11.0257', '196906112005011005', 'Abdul Latif Anwar, S.Ag', NULL, NULL, NULL, 'Kec. Gumukmas', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(261, NULL, '1332.11.0258', '196906112007011029', 'Syaiful Hanan, S.Pd', NULL, NULL, NULL, 'MTsN Sumberbaru', 'PNS', 'MTsN Sumberbaru', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(262, NULL, '1332.11.0259', '196906122006041001', 'Moh Khoiri, S.Pd.I', NULL, NULL, NULL, 'Kec. Puger', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(263, NULL, '1332.11.0260', '196906132005011009', 'Agung Saputro, S.Pd', NULL, NULL, NULL, 'Kec. Tanggul', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(264, NULL, '1332.11.0261', '196907021997031002', 'Drs. Mohammad Iskak', NULL, NULL, NULL, 'MTsN Jember 1', 'PNS', 'MTsN Jember 1', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(265, NULL, '1332.11.0262', '196907032001121001', 'Drs. Abdul Mudjib, M.HI.', NULL, NULL, NULL, 'Kec. Jombang', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(266, NULL, '1332.11.0263', '196907042005011003', 'Nur Sholeh, S.Pd, M.Pd.I', NULL, NULL, NULL, 'Kec. Semboro', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(267, NULL, '1332.11.0264', '196907072005012003', 'Nurlaila, S.Pd.I', NULL, NULL, NULL, 'Kec. Pakusari', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(268, NULL, '1332.11.0265', '196907101997031002', 'Drs. Muhammad Natsir Al Firdaus', NULL, NULL, NULL, 'MAN 1 Jember', 'PNS', 'MAN 1 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(269, NULL, '1332.11.0266', '196907122005012008', 'Uswatun Hasanah S.Pd.I', NULL, NULL, NULL, 'MTsN Jember 3', 'PNS', 'MTsN Jember 3', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(270, NULL, '1332.11.0267', '196907172001121001', 'Heri Widodo, S.Pd., MM', NULL, NULL, NULL, 'MAN 2 Jember', 'PNS', 'MAN 2 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(271, NULL, '1332.11.0268', '196907181989032002', 'Agustin Farida, S.Pd.', NULL, NULL, NULL, 'Kec. Pakusari', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(272, NULL, '1332.11.0269', '196908032007011024', 'M. Nurul Huda', NULL, NULL, NULL, 'MTsN Kencong', 'PNS', 'MTsN Kencong', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(273, NULL, '1332.11.0270', '196908052000032005', 'Dra. Uswatun Hasanah', NULL, NULL, NULL, 'MTsN Umbulsari', 'PNS', 'MTsN Umbulsari', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(274, NULL, '1332.11.0271', '196908072005012002', 'Linda Aguswati, S.Pd.', NULL, NULL, NULL, 'MTsN Jember 3', 'PNS', 'MTsN Jember 3', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(275, NULL, '1332.11.0272', '196908082000032001', 'Siti Heriyah, S.Pd.I', NULL, NULL, NULL, 'Kec. Rambipuji', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(276, NULL, '1332.11.0273', '196908102005012005', 'Nurhayati, S.Pd.', NULL, NULL, NULL, 'Kec. Sumberbaru', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(277, NULL, '1332.11.0274', '196908172014111007', 'Mukri', NULL, NULL, NULL, 'MTsN Jember 3', 'PNS', 'MTsN Jember 3', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(278, NULL, '1332.11.0275', '196908182014112002', 'Eni Agustinah', NULL, NULL, NULL, 'MTsN Jember 1', 'PNS', 'MTsN Jember 1', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(279, NULL, '1332.11.0276', '196909012005012003', 'Dra. Anik Sudarwati', NULL, NULL, NULL, 'MTsN Jember 3', 'PNS', 'MTsN Jember 3', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(280, NULL, '1332.11.0277', '196909162005012004', 'Hafsah Hasan, S.Pd.', NULL, NULL, NULL, 'MTsN Jember 1', 'PNS', 'MTsN Jember 1', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(281, NULL, '1332.11.0278', '196909172007102001', 'Dra. Sholihah', NULL, NULL, NULL, 'MAN 3 Jember', 'PNS', 'MAN 3 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(282, NULL, '1332.11.0279', '196909242005012002', 'Khusnaliyah, S.Pd.I.', NULL, NULL, NULL, 'MIN Tutul', 'PNS', 'MIN Tutul', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(283, NULL, '1332.11.0280', '196909291991032001', 'Wardatuzzubaidah, S.Pd.I', NULL, NULL, NULL, 'Kec. Ajung', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(284, NULL, '1332.11.0281', '196910052014111003', 'Mashuri', NULL, NULL, NULL, 'MAN 3 Jember', 'PNS', 'MAN 3 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(285, NULL, '1332.11.0282', '196910102005011003', 'Eko Iswanto, S.Pd', NULL, NULL, NULL, 'MIN Tutul', 'PNS', 'MIN Tutul', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(286, NULL, '1332.11.0283', '196911021995031002', 'Drs. Ahmad Tholabi, M.HI.', NULL, NULL, NULL, 'Kan. Kemenag Kab. Jember', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(287, NULL, '1332.11.0284', '196911071998031001', 'Abdul Mu`In, S.Pd.', NULL, NULL, NULL, 'MTsN Arjasa', 'PNS', 'MTsN Arjasa', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(288, NULL, '1332.11.0285', '196911102006041001', 'Soim, S.Pd.I', NULL, NULL, NULL, 'MTsN Umbulsari', 'PNS', 'MTsN Umbulsari', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(289, NULL, '1332.11.0286', '196911201999031002', 'Moh. Tarom, S.Pd.', NULL, NULL, NULL, 'MAN 1 Jember', 'PNS', 'MAN 1 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(290, NULL, '1332.11.0287', '196911222006041008', 'Asmuni, S.Ag.', NULL, NULL, NULL, 'Kan. Kemenag Kab. Jember', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(291, NULL, '1332.11.0288', '196912102000032002', 'Sutijah, S.Ag.', NULL, NULL, NULL, 'Kec. Patrang', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(292, NULL, '1332.11.0289', '196912131992031001', 'Muhammad Farich Makmur, S.Sos., M.Sy.', NULL, NULL, NULL, 'Kec. Sumbersari', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(293, NULL, '1332.11.0290', '197001012005011005', 'Moh. Muhtadi, S.Pd.', NULL, NULL, NULL, 'MAN 3 Jember', 'PNS', 'MAN 3 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(294, NULL, '1332.11.0291', '197001012005011006', 'Andi Widodo, S.Pd.', NULL, NULL, NULL, 'MTsN Bangsalsari', 'PNS', 'MTsN Bangsalsari', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(295, NULL, '1332.11.0292', '197001032005012003', 'Hurin`In, S.Pd.I', NULL, NULL, NULL, 'Kec. Rambipuji', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(296, NULL, '1332.11.0293', '197001052000031003', 'Abdul Khamid, S.Ag.', NULL, NULL, NULL, 'Kec. Kencong', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(297, NULL, '1332.11.0294', '197001052005011002', 'Hatib, S.Pd.I', NULL, NULL, NULL, 'Kec. Kalisat', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(298, NULL, '1332.11.0295', '197001082005012001', 'Siti Sofiyah, S.Pd', NULL, NULL, NULL, 'Kec. Kencong', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(299, NULL, '1332.11.0296', '197001112014111002', 'Anshori, A. Ma.', NULL, NULL, NULL, 'MIN Sumbersari', 'PNS', 'MIN Sumbersari', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(300, NULL, '1332.11.0297', '197001122000031001', 'M.Jazimul Fadhil, S.Ag.', NULL, NULL, NULL, 'MTsN Sumberbaru', 'PNS', 'MTsN Sumberbaru', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(301, NULL, '1332.11.0298', '197001202014111002', 'Ahmad Hotib', NULL, NULL, NULL, 'Kan. Kemenag Kab. Jember', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(302, NULL, '1332.11.0299', '197002082006042001', 'Dra. Indah Ariyani', NULL, NULL, NULL, 'MTsN Sumberbaru', 'PNS', 'MTsN Sumberbaru', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(303, NULL, '1332.11.0300', '197002122005011004', 'Subariyanto, S.Pd., M.Pd.I', NULL, NULL, NULL, 'Kec. Sumberjambe', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(304, NULL, '1332.11.0301', '197002232005012001', 'Lisbinantin, S.Pd.', NULL, NULL, NULL, 'Kec. Kaliwates', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(305, NULL, '1332.11.0302', '197002272005011003', 'Zaelani, S.Ag.', NULL, NULL, NULL, 'Kec. Rambipuji', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(306, NULL, '1332.11.0303', '197003121994031001', 'Mohammad Holil, S.Ag., M.Pd.I', NULL, NULL, NULL, 'Pengawas', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(307, NULL, '1332.11.0304', '197003162000121003', 'Syaikhudin Zuhri, S.Pd.', NULL, NULL, NULL, 'MTsN Kencong', 'PNS', 'MTsN Kencong', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(308, NULL, '1332.11.0305', '197003212005011001', 'Maftuhirridlo, S.Pd.I', NULL, NULL, NULL, 'Kec. Umbulsari', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(309, NULL, '1332.11.0306', '197003221997032001', 'Dra. Dwi Asih Heni Astuti', NULL, NULL, NULL, 'MAN 2 Jember', 'PNS', 'MAN 2 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(310, NULL, '1332.11.0307', '197004072005012004', 'Ani Kuntariani, S. Pd.', NULL, NULL, NULL, 'MTsN Jember 2', 'PNS', 'MTsN Jember 2', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(311, NULL, '1332.11.0308', '197004092005011007', 'Mohamad Ilham Pribadi, S.Pd., M.Pd.I', NULL, NULL, NULL, 'Kec. Ledokombo', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(312, NULL, '1332.11.0309', '197004142007011050', 'Abdullah', NULL, NULL, NULL, 'MTsN Jember 2', 'PNS', 'MTsN Jember 2', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(313, NULL, '1332.11.0310', '197004192005011004', 'Sugiarno, S.Pd.I', NULL, NULL, NULL, 'Kec. Ambulu', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(314, NULL, '1332.11.0311', '197005042007011036', 'Muhammad Isrok, S.Pd.', NULL, NULL, NULL, 'MTsN Bangsalsari', 'PNS', 'MTsN Bangsalsari', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(315, NULL, '1332.11.0312', '197005122005012003', 'Nuraini, S.Pd.I', NULL, NULL, NULL, 'MIN Sempolan', 'PNS', 'MIN Sempolan', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(316, NULL, '1332.11.0313', '197005152005011004', 'Saroji, S.Pd.I', NULL, NULL, NULL, 'Kec. Ajung', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(317, NULL, '1332.11.0314', '197005222005012003', 'Nuriana Triastuti, S.Pd.', NULL, NULL, NULL, 'Kec. Jelbuk', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(318, NULL, '1332.11.0315', '197005272006041009', 'La Gani Siompo, S.Ag.', NULL, NULL, NULL, 'Kec. Pakusari', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(319, NULL, '1332.11.0316', '197006042007012038', 'Fatimatuz Zuhro, S.Pd.', NULL, NULL, NULL, 'MTsN Arjasa', 'PNS', 'MTsN Arjasa', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(320, NULL, '1332.11.0317', '197006102005011004', 'Heri Suryanto, S.Pd.', NULL, NULL, NULL, 'Kec. Semboro', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(321, NULL, '1332.11.0318', '197006172005011004', 'Saiful Ulum, SE', NULL, NULL, NULL, 'Kan. Kemenag Kab. Jember', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(322, NULL, '1332.11.0319', '197006191999031002', 'Zaenol Hasan, S.Pd.', NULL, NULL, NULL, 'MTsN Jember 1', 'PNS', 'MTsN Jember 1', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(323, NULL, '1332.11.0320', '197006272005011002', 'Moch. Zoedianto M, S.Pd.', NULL, NULL, NULL, 'MTsN Sumberbaru', 'PNS', 'MTsN Sumberbaru', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(324, NULL, '1332.11.0321', '197007012007012026', 'Sujarwati S.Pd.', NULL, NULL, NULL, 'MTsN Umbulsari', 'PNS', 'MTsN Umbulsari', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(325, NULL, '1332.11.0322', '197007051998032001', 'Yuli Astutik, S.Pd.', NULL, NULL, NULL, 'MTsN Jember 1', 'PNS', 'MTsN Jember 1', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(326, NULL, '1332.11.0323', '197007062005011004', 'Abd. Rohim, S.Pd.I', NULL, NULL, NULL, 'Kec. Gumukmas', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(327, NULL, '1332.11.0324', '197007092000031001', 'Tyas Suka Trisuwita, S.Pak.', NULL, NULL, NULL, 'Kan. Kemenag Kab. Jember', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(328, NULL, '1332.11.0325', '197007112014111002', 'Yazirul Aziz', NULL, NULL, NULL, 'MTsN Jember 1', 'PNS', 'MTsN Jember 1', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(329, NULL, '1332.11.0326', '197007152005011001', 'Lutfi', NULL, NULL, NULL, 'Kec. Mumbulsari', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(330, NULL, '1332.11.0327', '197007202014111002', 'Moh. Hazin', NULL, NULL, NULL, 'Kec. Kalisat', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(331, NULL, '1332.11.0328', '197008142009011007', 'Agus Supaniadi, S.Pd.', NULL, NULL, NULL, 'MTsN Umbulsari', 'PNS', 'MTsN Umbulsari', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(332, NULL, '1332.11.0329', '197008191997032002', 'Husnul Hotimah, S.Pd.I.', NULL, NULL, NULL, 'MIN Tutul', 'PNS', 'MIN Tutul', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(333, NULL, '1332.11.0330', '197008202005011003', 'Qosim Mulyadi, S.Pd.', NULL, NULL, NULL, 'MTsN Jember 2', 'PNS', 'MTsN Jember 2', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(334, NULL, '1332.11.0331', '197008272005012001', 'Endang Aristu Handayani, A.Ma.', NULL, NULL, NULL, 'Kec. Panti', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(335, NULL, '1332.11.0332', '197008312005012004', 'G. Aris Sulistiyorini, S.Pd.', NULL, NULL, NULL, 'MAN 3 Jember', 'PNS', 'MAN 3 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(336, NULL, '1332.11.0333', '197009132007102003', 'Alfiah, S.Pd.', NULL, NULL, NULL, 'MIN Sumbersari', 'PNS', 'MIN Sumbersari', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(337, NULL, '1332.11.0334', '197009172005012001', 'Elya Nurul Hasanah, S.Ag.', NULL, NULL, NULL, 'Kec. Ambulu', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(338, NULL, '1332.11.0335', '197009242002122002', 'Sri Lestari, S.Pd.', NULL, NULL, NULL, 'MIN Arjasa', 'PNS', 'MIN Arjasa', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(339, NULL, '1332.11.0336', '197009282005011005', 'Nur Wahyudi, S.Pd.', NULL, NULL, NULL, 'Kec. Mumbulsari', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(340, NULL, '1332.11.0337', '197010112003122001', 'Istiqomah, S.Pd.I', NULL, NULL, NULL, 'Kec. Kencong', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(341, NULL, '1332.11.0338', '197010122005012002', 'Ririn Sulistyowati, S.Pd.', NULL, NULL, NULL, 'MTsN Sumberbaru', 'PNS', 'MTsN Sumberbaru', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(342, NULL, '1332.11.0339', '197010252005011002', 'Moh. Mudakir, S.Pd.I', NULL, NULL, NULL, 'Kec. Jenggawah', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(343, NULL, '1332.11.0340', '197010282005011002', 'Saiful Asyari, S.Ag., M.Pd.I', NULL, NULL, NULL, 'Kec. Wuluhan', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(344, NULL, '1332.11.0341', '197011141999032002', 'Rheny Indahari, S.Pd.', NULL, NULL, NULL, 'MTsN Kencong', 'PNS', 'MTsN Kencong', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(345, NULL, '1332.11.0342', '197011152005012002', 'Sumining, S.Pd.', NULL, NULL, NULL, 'MIN Tutul', 'PNS', 'MIN Tutul', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user');
INSERT INTO `akun` (`id_akun`, `id_pendaftaran`, `kta`, `NIP`, `nama`, `no_hp`, `no_wa`, `email`, `pilkpa`, `pilstatuspegawai`, `tempat_tugas`, `tempat_lahir`, `tgl_lahir`, `pilpensiun`, `tgl_pendaftaran`, `scan_ktp`, `gambar_profil`, `status`, `password`, `ID_pengurus`, `level`) VALUES
(346, NULL, '1332.11.0343', '197011152007012015', 'Nur Farida, S.Pd.I', NULL, NULL, NULL, 'MIN Sempolan', 'PNS', 'MIN Sempolan', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(347, NULL, '1332.11.0344', '197011202014112005', 'Menok Naniek Herowati', NULL, NULL, NULL, 'MTsN Jember 2', 'PNS', 'MTsN Jember 2', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(348, NULL, '1332.11.0345', '197011302005012002', 'Ninik Ernawati, S.Pd.', NULL, NULL, NULL, 'MIN Sempolan', 'PNS', 'MIN Sempolan', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(349, NULL, '1332.11.0346', '197012161998032002', 'Dyah Mu`miroh, S.Pd.', NULL, NULL, NULL, 'MTsN Bangsalsari', 'PNS', 'MTsN Bangsalsari', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(350, NULL, '1332.11.0347', '197012232005012002', 'Yuliani S.Pd', NULL, NULL, NULL, 'MIN Arjasa', 'PNS', 'MIN Arjasa', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(351, NULL, '1332.11.0348', '197012262007012023', 'S.Anik Andriyani S.Ag', NULL, NULL, NULL, 'MIN Tutul', 'PNS', 'MIN Tutul', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(352, NULL, '1332.11.0349', '197012282005012003', 'Susilowati, S.Pd.I', NULL, NULL, NULL, 'Kec. Sumbersari', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(353, NULL, '1332.11.0350', '197101012014111006', 'Muhammad Basori, S.Ag.', NULL, NULL, NULL, 'Kec. Jenggawah', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(354, NULL, '1332.11.0351', '197101021997031002', 'Khoiri, M.Pd.I', NULL, NULL, NULL, 'Pengawas', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(355, NULL, '1332.11.0352', '197101032000031001', 'Sukaryo, S.Ag.', NULL, NULL, NULL, 'MTsN Sukowono', 'PNS', 'MTsN Sukowono', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(356, NULL, '1332.11.0353', '197101132007101001', 'Ony Hermawan, S.Pd.', NULL, NULL, NULL, 'MTsN Sukowono', 'PNS', 'MTsN Sukowono', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(357, NULL, '1332.11.0354', '197102021997031002', 'M. Zuhdi Alfian, S.Pd.', NULL, NULL, NULL, 'Kan. Kemenag Kab. Jember', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(358, NULL, '1332.11.0355', '197102041991031001', 'Mochammad Taufiequrrahman', NULL, NULL, NULL, 'Kec. Kaliwates', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(359, NULL, '1332.11.0356', '197102122006042005', 'Khotimatul Barriyah, S.Ag.', NULL, NULL, NULL, 'MIN Sumbersari', 'PNS', 'MIN Sumbersari', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(360, NULL, '1332.11.0357', '197102132006042003', 'Junaidah, S.Pd.', NULL, NULL, NULL, 'MTsN Sumberbaru', 'PNS', 'MTsN Sumberbaru', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(361, NULL, '1332.11.0358', '197102142005011004', 'Akhmad Makhin, S.Pd', NULL, NULL, NULL, 'MTsN Jember 2', 'PNS', 'MTsN Jember 2', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(362, NULL, '1332.11.0359', '197102222007011021', 'Joko Purnomo, S.Pd', NULL, NULL, NULL, 'MAN 2 Jember', 'PNS', 'MAN 2 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(363, NULL, '1332.11.0360', '197103041996032001', 'Sri Chikmawati, S.Ag., M.Pd.I', NULL, NULL, NULL, 'MTsN Arjasa', 'PNS', 'MTsN Arjasa', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(364, NULL, '1332.11.0361', '197103052005012002', 'Lilik Widayati, S.Pd.', NULL, NULL, NULL, 'Kec. Puger', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(365, NULL, '1332.11.0362', '197103152000122001', 'Sri Hidayati, S.Pd.,MM.Pd.', NULL, NULL, NULL, 'MAN 3 Jember', 'PNS', 'MAN 3 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(366, NULL, '1332.11.0363', '197103152007011020', 'Rudy Hartono, A.Md', NULL, NULL, NULL, 'MTsN Jember 3', 'PNS', 'MTsN Jember 3', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(367, NULL, '1332.11.0364', '197103271998031004', 'Muh. Hasim, S.Pd.I', NULL, NULL, NULL, 'Kec. Patrang', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(368, NULL, '1332.11.0365', '197103272005012003', 'Siti Fatimah, S.Pd.', NULL, NULL, NULL, 'Kec. Gumukmas', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(369, NULL, '1332.11.0366', '197104052005011005', 'M. Nur Rofiq, S.Ag.', NULL, NULL, NULL, 'Kec. Sukowono', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(370, NULL, '1332.11.0367', '197104122005012005', 'Umi Sholihati, S.Ag.', NULL, NULL, NULL, 'Kec. Gumukmas', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(371, NULL, '1332.11.0368', '197104152007101002', 'Widodo, S.Pd.', NULL, NULL, NULL, 'MTsN Kencong', 'PNS', 'MTsN Kencong', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(372, NULL, '1332.11.0369', '197104161998031002', 'Achmad Mas Udi, SE', NULL, NULL, NULL, 'MTsN Sukowono', 'PNS', 'MTsN Sukowono', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(373, NULL, '1332.11.0370', '197104222014111002', 'Achmad Ridwan', NULL, NULL, NULL, 'Kec. Bangsalsari', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(374, NULL, '1332.11.0371', '197104292000032001', 'Ratna Hidayah Sugiarti, S.Pd.I', NULL, NULL, NULL, 'MTsN Jember 2', 'PNS', 'MTsN Jember 2', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(375, NULL, '1332.11.0372', '197104302011011001', 'Hariyanto, S.Pd.', NULL, NULL, NULL, 'Kec. Kencong', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(376, NULL, '1332.11.0373', '197105042005011005', 'Nurhadi Irawan, S.Pd.I', NULL, NULL, NULL, 'Kec. Gumukmas', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(377, NULL, '1332.11.0374', '197105042005012004', 'Hartini', NULL, NULL, NULL, 'MTsN Jember 3', 'PNS', 'MTsN Jember 3', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(378, NULL, '1332.11.0375', '197105101998031006', 'Zaenal Arifin, S.Ag.', NULL, NULL, NULL, 'Kec. Ledokombo', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(379, NULL, '1332.11.0376', '197105152005011003', 'Eko Mujiono, S.Pd.', NULL, NULL, NULL, 'Kec. Jombang', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(380, NULL, '1332.11.0377', '197105222007101001', 'Lukman Hakim, S.Pd.', NULL, NULL, NULL, 'MTsN Kencong', 'PNS', 'MTsN Kencong', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(381, NULL, '1332.11.0378', '197105261997031003', 'Suwahid, S.Pd.', NULL, NULL, NULL, 'MTsN Jember 3', 'PNS', 'MTsN Jember 3', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(382, NULL, '1332.11.0379', '197106132007102002', 'Siti Rukiyani, S.Pd.', NULL, NULL, NULL, 'MTsN Sumberbaru', 'PNS', 'MTsN Sumberbaru', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(383, NULL, '1332.11.0380', '197106211997032001', 'Siti Fathunnurrohmiyati, S.Ag.', NULL, NULL, NULL, 'MIN Arjasa', 'PNS', 'MIN Arjasa', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(384, NULL, '1332.11.0381', '197106232005012001', 'Nur Hamidah Yusuf, S.Pd.I', NULL, NULL, NULL, 'MIN Sempolan', 'PNS', 'MIN Sempolan', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(385, NULL, '1332.11.0382', '197106251999032002', 'Iis Suryadewi, S.Pd', NULL, NULL, NULL, 'MTsN Jember 2', 'PNS', 'MTsN Jember 2', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(386, NULL, '1332.11.0383', '197107032005012002', 'Siti Nur Chasanah, S.Pd.I', NULL, NULL, NULL, 'Kec. Umbulsari', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(387, NULL, '1332.11.0384', '197107032006042046', 'Endang Rohmawati, S.Ag.', NULL, NULL, NULL, 'MTsN Jember 3', 'PNS', 'MTsN Jember 3', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(388, NULL, '1332.11.0385', '197107152000032001', 'Katmiarsih, S.Ag.', NULL, NULL, NULL, 'Kec. Umbulsari', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(389, NULL, '1332.11.0386', '197107202003121001', 'Akhmad Kusnan, S.Pd', NULL, NULL, NULL, 'MTsN Kencong', 'PNS', 'MTsN Kencong', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(390, NULL, '1332.11.0387', '197107262006042019', 'Erma Fatmawati, S.Ag, M.Pd.I', NULL, NULL, NULL, 'Kan. Kemenag Kab. Jember', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(391, NULL, '1332.11.0388', '197107301992031003', 'Muhammad Subchan Zaen, SH', NULL, NULL, NULL, 'Kec. Sukorambi', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(392, NULL, '1332.11.0389', '197108012005012001', 'Lilik Sholehati, S.Ag.', NULL, NULL, NULL, 'Kec. Tanggul', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(393, NULL, '1332.11.0390', '197108031997031002', 'Edy Sucipto, S.Pd.', NULL, NULL, NULL, 'Pengawas', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(394, NULL, '1332.11.0391', '197108072005011002', 'Sugiyanto, S.Pd.I', NULL, NULL, NULL, 'Kec. Bangsalsari', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(395, NULL, '1332.11.0392', '197108081999031004', 'Ihsanudin,S.Pd', NULL, NULL, NULL, 'MTsN Kencong', 'PNS', 'MTsN Kencong', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(396, NULL, '1332.11.0393', '197108112005011002', 'Suwandi S.Pd., M.Si.', NULL, NULL, NULL, 'MAN 2 Jember', 'PNS', 'MAN 2 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(397, NULL, '1332.11.0394', '197108182005012002', 'Kusmiati, S.Pd', NULL, NULL, NULL, 'Kec. Umbulsari', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(398, NULL, '1332.11.0395', '197108201998032001', 'Sofia Candrawati, S.Pd', NULL, NULL, NULL, 'MTsN Sumberbaru', 'PNS', 'MTsN Sumberbaru', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(399, NULL, '1332.11.0396', '197108202006041001', 'Erwyn Sulthony, Se', NULL, NULL, NULL, 'Kan. Kemenag Kab. Jember', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(400, NULL, '1332.11.0397', '197109172005011003', 'Mohammad Zaenuri, S.Ag.', NULL, NULL, NULL, 'Kan. Kemenag Kab. Jember', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(401, NULL, '1332.11.0398', '197109202005012001', 'Mamik Isgiyanti, S.Pd.', NULL, NULL, NULL, 'MAN 1 Jember', 'PNS', 'MAN 1 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(402, NULL, '1332.11.0399', '197109212007101003', 'Moh. Khoirul Anam', NULL, NULL, NULL, 'MAN 2 Jember', 'PNS', 'MAN 2 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(403, NULL, '1332.11.0400', '197110132000031001', 'Fx. Yiddi Purwa Mardianta, S.Pd.', NULL, NULL, NULL, 'Kan. Kemenag Kab. Jember', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(404, NULL, '1332.11.0401', '197110202005011005', 'Dwi Raharjo, S.Sn', NULL, NULL, NULL, 'MTsN Jember 2', 'PNS', 'MTsN Jember 2', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(405, NULL, '1332.11.0402', '197110252005011002', 'Abdullah, S.Pd.I', NULL, NULL, NULL, 'MAN 3 Jember', 'PNS', 'MAN 3 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(406, NULL, '1332.11.0403', '197110262006041001', 'Didik Kurniawan, S.Ag.', NULL, NULL, NULL, 'Kec. Arjasa', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(407, NULL, '1332.11.0404', '197110292000032002', 'Siti Nurfadilah, S.Ag.', NULL, NULL, NULL, 'MAN 3 Jember', 'PNS', 'MAN 3 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(408, NULL, '1332.11.0405', '197111022005012001', 'Iin Indrawati, S.Pd.', NULL, NULL, NULL, 'Kec. Umbulsari', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(409, NULL, '1332.11.0406', '197111042005012003', 'Wiwin Eko Sri Winarti, S.Pd.', NULL, NULL, NULL, 'Kec. Puger', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(410, NULL, '1332.11.0407', '197111142005012003', 'Ulil Farhah, S.Ag.', NULL, NULL, NULL, 'MTsN Jember 2', 'PNS', 'MTsN Jember 2', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(411, NULL, '1332.11.0408', '197111151996032001', 'Endang Yuana, S.Pd., M.Pd.', NULL, NULL, NULL, 'MTsN Jember 1', 'PNS', 'MTsN Jember 1', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(412, NULL, '1332.11.0409', '197112161997031009', 'Heri Susanto, S.Ag, M.HI.', NULL, NULL, NULL, 'Kec. Umbulsari', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(413, NULL, '1332.11.0410', '197112172000031002', 'Wahyu Widodo, S.Pd', NULL, NULL, NULL, 'Kec. Umbulsari', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(414, NULL, '1332.11.0411', '197112192007012010', 'Maisaroh, S.Pd.I', NULL, NULL, NULL, 'MTsN Sumberbaru', 'PNS', 'MTsN Sumberbaru', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(415, NULL, '1332.11.0412', '197112312005012007', 'Sri Wahyuni, S.Pd.', NULL, NULL, NULL, 'Kec. Tempurejo', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(416, NULL, '1332.11.0413', '197201012002121006', 'Musthofa Zuhri, S.Ag.', NULL, NULL, NULL, 'MAN 3 Jember', 'PNS', 'MAN 3 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(417, NULL, '1332.11.0414', '197201252000082001', 'U`Ul Rofiqoh, A.Md.', NULL, NULL, NULL, 'Kan. Kemenag Kab. Jember', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(418, NULL, '1332.11.0415', '197202192007012010', 'Dwi Utami Dewi', NULL, NULL, NULL, 'MTsN Kencong', 'PNS', 'MTsN Kencong', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(419, NULL, '1332.11.0416', '197202232005012002', 'Utami Dewi, S.Pd.', NULL, NULL, NULL, 'MTsN Bangsalsari', 'PNS', 'MTsN Bangsalsari', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(420, NULL, '1332.11.0417', '197203032005012002', 'Tri Martini, S.Pd.', NULL, NULL, NULL, 'Kec. Patrang', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(421, NULL, '1332.11.0418', '197203092007101003', 'Supriyadi, S.Pd.', NULL, NULL, NULL, 'MAN 3 Jember', 'PNS', 'MAN 3 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(422, NULL, '1332.11.0419', '197203102005012001', 'Ade Sa`diyah, S.Pd.', NULL, NULL, NULL, 'MAN 1 Jember', 'PNS', 'MAN 1 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(423, NULL, '1332.11.0420', '197203192005012002', 'Siti Munfarida, S.Pd', NULL, NULL, NULL, 'MTsN Bangsalsari', 'PNS', 'MTsN Bangsalsari', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(424, NULL, '1332.11.0421', '197203242005011001', 'Edy Purwanto, S.Pd.I', NULL, NULL, NULL, 'Kec. Balung', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(425, NULL, '1332.11.0422', '197203292009011003', 'Misbah Al Ayyuby, SS', NULL, NULL, NULL, 'MTsN Sukowono', 'PNS', 'MTsN Sukowono', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(426, NULL, '1332.11.0423', '197204012005011004', 'Akhmad Junaidi, S.Pd.', NULL, NULL, NULL, 'MTsN Umbulsari', 'PNS', 'MTsN Umbulsari', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(427, NULL, '1332.11.0424', '197204082000031002', 'Moch. Ridawi, S.Ag., M.HI.', NULL, NULL, NULL, 'Kec. Sukowono', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(428, NULL, '1332.11.0425', '197204082001121002', 'Akhmad Hariri, S.Pd.', NULL, NULL, NULL, 'MTsN Bangsalsari', 'PNS', 'MTsN Bangsalsari', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(429, NULL, '1332.11.0426', '197204082009012002', 'Tutik Hidayati, S.Ag.', NULL, NULL, NULL, 'Kec. Balung', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(430, NULL, '1332.11.0427', '197204102005011004', 'Robiq Fauji, S.Pd., M.Pd.', NULL, NULL, NULL, 'Kec. Wuluhan', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(431, NULL, '1332.11.0428', '197204142000121001', 'Arif Zainullah Sahroni, S.Pd.', NULL, NULL, NULL, 'Kec. Kaliwates', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(432, NULL, '1332.11.0429', '197204142005012001', 'Lilik Umu Hanik, S.Ag.', NULL, NULL, NULL, 'Kec. Rambipuji', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(433, NULL, '1332.11.0430', '197204162006041008', 'Kasworo, S.Pd.', NULL, NULL, NULL, 'MAN 3 Jember', 'PNS', 'MAN 3 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(434, NULL, '1332.11.0431', '197204191998032001', 'Nur Aliyah, S.Pd.', NULL, NULL, NULL, 'MTsN Kencong', 'PNS', 'MTsN Kencong', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(435, NULL, '1332.11.0432', '197204212005011002', 'Argo Priyono, A.Ma', NULL, NULL, NULL, 'Kec. Kencong', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(436, NULL, '1332.11.0433', '197204262005011005', 'Adi Sucipto, S.Pd.', NULL, NULL, NULL, 'MTsN Arjasa', 'PNS', 'MTsN Arjasa', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(437, NULL, '1332.11.0434', '197205071998032001', 'Irnawati, S.Pd.', NULL, NULL, NULL, 'MTsN Arjasa', 'PNS', 'MTsN Arjasa', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(438, NULL, '1332.11.0435', '197205181998031002', 'Abdul Kohar, S.Ag', NULL, NULL, NULL, 'MIN Sempolan', 'PNS', 'MIN Sempolan', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(439, NULL, '1332.11.0436', '197205182005011001', 'Budi Santoso, S.Pd.I', NULL, NULL, NULL, 'Kec. Puger', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(440, NULL, '1332.11.0437', '197205262014111001', 'Muhammad Aliyuridho', NULL, NULL, NULL, 'Kec. Kaliwates', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(441, NULL, '1332.11.0438', '197206012000122002', 'Siti Farida, S.Pd.I.', NULL, NULL, NULL, 'Kec. Umbulsari', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(442, NULL, '1332.11.0439', '197206042007102003', 'Sofwana, S.Ag., MM.Pd.', NULL, NULL, NULL, 'MIN Tanggul Wetan', 'PNS', 'MIN Tanggul Wetan', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(443, NULL, '1332.11.0440', '197206052005011019', 'Moh. Ridwan, S.Pd., M.Pd.I', NULL, NULL, NULL, 'Kec. Ambulu', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(444, NULL, '1332.11.0441', '197206102005011004', 'Moh. Khoiri, S.Pd.I', NULL, NULL, NULL, 'Kec. Balung', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(445, NULL, '1332.11.0442', '197206201997032001', 'Enike Kusumawati, S.Pd.', NULL, NULL, NULL, 'MAN 2 Jember', 'PNS', 'MAN 2 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(446, NULL, '1332.11.0443', '197206212005012002', 'Masfufah, S.Pd.', NULL, NULL, NULL, 'Kec. Umbulsari', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(447, NULL, '1332.11.0444', '197206232014111001', 'Mariyadi, SE', NULL, NULL, NULL, 'Kec. Wuluhan', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(448, NULL, '1332.11.0445', '197207021993031003', 'Kusno, S.Ag., M.Pd.I', NULL, NULL, NULL, 'Kec. Kaliwates', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(449, NULL, '1332.11.0446', '197207052005011004', 'Pitono, S.Pd, M.Pd.I', NULL, NULL, NULL, 'Kan. Kemenag Kab. Jember', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(450, NULL, '1332.11.0447', '197207202005011002', 'Ahmad Fauzi, S.Pd.I', NULL, NULL, NULL, 'Kec. Pakusari', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(451, NULL, '1332.11.0448', '197208032003122003', 'Luluk Khotimah, A.Ma.', NULL, NULL, NULL, 'Kec. Sumbersari', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(452, NULL, '1332.11.0449', '197208032006042004', 'Nadiratul Laily, S.Pd.', NULL, NULL, NULL, 'Kec. Sumbersari', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(453, NULL, '1332.11.0450', '197208042005012003', 'Khusnul Khotimah, S.Pd.I', NULL, NULL, NULL, 'Kec. Umbulsari', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(454, NULL, '1332.11.0451', '197208081998032002', 'Nurul Laili, S.Pd.', NULL, NULL, NULL, 'MTsN Umbulsari', 'PNS', 'MTsN Umbulsari', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(455, NULL, '1332.11.0452', '197208082005011004', 'Hadi Prajitno, S.Pd', NULL, NULL, NULL, 'MAN 1 Jember', 'PNS', 'MAN 1 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(456, NULL, '1332.11.0453', '197208102005011003', 'Suprayitno, M.Pd.I', NULL, NULL, NULL, 'Kec. Mumbulsari', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(457, NULL, '1332.11.0454', '197208232007011026', 'A.Fauzi hasan', NULL, NULL, NULL, 'MIN Gerahan', 'PNS', 'MIN Gerahan', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(458, NULL, '1332.11.0455', '197208282005011005', 'Anang Widayat, Se', NULL, NULL, NULL, 'Kan. Kemenag Kab. Jember', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(459, NULL, '1332.11.0456', '197209171998032002', 'Ririn Indrayati, S.Pd.', NULL, NULL, NULL, 'MAN 3 Jember', 'PNS', 'MAN 3 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(460, NULL, '1332.11.0457', '197209172005011004', 'Haryono, S.Pd.I', NULL, NULL, NULL, 'Kec. Sukorambi', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(461, NULL, '1332.11.0458', '197209212003121002', 'Supriyadi, S.Pd.', NULL, NULL, NULL, 'MAN 3 Jember', 'PNS', 'MAN 3 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(462, NULL, '1332.11.0459', '197210042009011008', 'Khairul Anam', NULL, NULL, NULL, 'Kec. Gumukmas', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(463, NULL, '1332.11.0460', '197210102005011005', 'Budi Santosa, S.Pd.', NULL, NULL, NULL, 'MAN 3 Jember', 'PNS', 'MAN 3 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(464, NULL, '1332.11.0461', '197210102006041006', 'Luqmanul Hakim, SAg', NULL, NULL, NULL, 'MAN 2 Jember', 'PNS', 'MAN 2 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(465, NULL, '1332.11.0462', '197211072014112001', 'Nurul Laila Hasanah', NULL, NULL, NULL, 'Kan. Kemenag Kab. Jember', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(466, NULL, '1332.11.0463', '197211102005012004', 'Widi Hariyati, S.Pd.I', NULL, NULL, NULL, 'Kec. Tanggul', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(467, NULL, '1332.11.0464', '197211142005012003', 'Siti Tri Sutarti, S.Pd.', NULL, NULL, NULL, 'MAN 3 Jember', 'PNS', 'MAN 3 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(468, NULL, '1332.11.0465', '197211142005012002', 'Dwi Rahayu, S.Pd.', NULL, NULL, NULL, 'Kec. Bangsalsari', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(469, NULL, '1332.11.0466', '197212092007102002', 'Sri Hidayati S.Pd', NULL, NULL, NULL, 'MTsN Umbulsari', 'PNS', 'MTsN Umbulsari', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(470, NULL, '1332.11.0467', '197212102005011005', 'Darmani, S.Pd', NULL, NULL, NULL, 'MTsN Umbulsari', 'PNS', 'MTsN Umbulsari', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(471, NULL, '1332.11.0468', '197212262005011002', 'Mohammad Syafi`I, S.Ag, M.Pd.I', NULL, NULL, NULL, 'Kec. Ledokombo', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(472, NULL, '1332.11.0469', '197212281997032001', 'Azizah wahyuni,S.Pd', NULL, NULL, NULL, 'MTsN Jember 1', 'PNS', 'MTsN Jember 1', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(473, NULL, '1332.11.0470', '197301062005012003', 'Rofi`Ati, S.Pd.I', NULL, NULL, NULL, 'Kec. Ambulu', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(474, NULL, '1332.11.0471', '197301162005011002', 'Putut Aribowo, S.Ag', NULL, NULL, NULL, 'MIN Gerahan', 'PNS', 'MIN Gerahan', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(475, NULL, '1332.11.0472', '197302202007101001', 'Moh. Munawir, S.Pd', NULL, NULL, NULL, 'MTsN Sumberbaru', 'PNS', 'MTsN Sumberbaru', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(476, NULL, '1332.11.0473', '197302251998032002', 'Nikmatul Masykuroh, S.Ag', NULL, NULL, NULL, 'MTsN Jember 2', 'PNS', 'MTsN Jember 2', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(477, NULL, '1332.11.0474', '197302282005011003', 'Holid Hikmatullah, S.Pd.I', NULL, NULL, NULL, 'Kan. Kemenag Kab. Jember', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(478, NULL, '1332.11.0475', '197303062005012009', 'Badriyah, S.Pd.I', NULL, NULL, NULL, 'Kec. Ajung', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(479, NULL, '1332.11.0476', '197303092007011032', 'Saiful, S.Ag', NULL, NULL, NULL, 'MIN Arjasa', 'PNS', 'MIN Arjasa', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(480, NULL, '1332.11.0477', '197303112003121004', 'Adnan Widodo, S.Ag., M.HI.', NULL, NULL, NULL, 'Kec. Jombang', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(481, NULL, '1332.11.0478', '197303172005012003', 'Wiwik Suryani, S. Pd', NULL, NULL, NULL, 'Kec. Kencong', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(482, NULL, '1332.11.0479', '197303312005011002', 'Rosid Harun, M.Pd.I', NULL, NULL, NULL, 'Kec. Ambulu', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(483, NULL, '1332.11.0480', '197304012007011032', 'Kartono, S.Pd.I', NULL, NULL, NULL, 'MTsN Arjasa', 'PNS', 'MTsN Arjasa', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(484, NULL, '1332.11.0481', '197304092009012003', 'Siti Munawaroh', NULL, NULL, NULL, 'MAN 2 Jember', 'PNS', 'MAN 2 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(485, NULL, '1332.11.0482', '197304122003121002', 'Khoiri Soleh, S.Pd.', NULL, NULL, NULL, 'Kan. Kemenag Kab. Jember', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(486, NULL, '1332.11.0483', '197304132000031006', 'Maijoso, S.Ag. M.Pd.I', NULL, NULL, NULL, 'MTsN Sukowono', 'PNS', 'MTsN Sukowono', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(487, NULL, '1332.11.0484', '197304172005011007', 'Eko Budi Setiyadi, S.Pd.', NULL, NULL, NULL, 'MTsN Umbulsari', 'PNS', 'MTsN Umbulsari', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(488, NULL, '1332.11.0485', '197305062005011007', 'Sutali, S.Pd.I', NULL, NULL, NULL, 'MIN Sempolan', 'PNS', 'MIN Sempolan', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(489, NULL, '1332.11.0486', '197305102005011003', 'Widodo, S.Ag.', NULL, NULL, NULL, 'Kec. Jenggawah', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(490, NULL, '1332.11.0487', '197305271998032002', 'Dewi Asri Insyria, S.Pd.', NULL, NULL, NULL, 'MTsN Bangsalsari', 'PNS', 'MTsN Bangsalsari', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(491, NULL, '1332.11.0488', '197306042000031003', 'Muhammad Hariyadi, S.Ag.', NULL, NULL, NULL, 'Kec. Jombang', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(492, NULL, '1332.11.0489', '197306102005012003', 'Siti Nuripah, S.Pd.I', NULL, NULL, NULL, 'Kec. Tanggul', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(493, NULL, '1332.11.0490', '197306202005011004', 'Wahyu Wiyono, S.Pd.', NULL, NULL, NULL, 'MIN Sempolan', 'PNS', 'MIN Sempolan', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(494, NULL, '1332.11.0491', '197306222005011004', 'Shony Kholiqin Rofiq, S.Pd.I', NULL, NULL, NULL, 'Kec. Wuluhan', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(495, NULL, '1332.11.0492', '197306232005011002', 'Saiful Huda, S.Pd.', NULL, NULL, NULL, 'MTsN Jember 3', 'PNS', 'MTsN Jember 3', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(496, NULL, '1332.11.0493', '197307082006042008', 'Tri Nur Umi Purwaning Ari, S.Pd., M.Pd.I', NULL, NULL, NULL, 'Kan. Kemenag Kab. Jember', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(497, NULL, '1332.11.0494', '197307112005011001', 'Syaifulloh, S.Pd, M.Pd.I', NULL, NULL, NULL, 'Kec. Sukorambi', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(498, NULL, '1332.11.0495', '197307242005011002', 'Sya`Roni, S.Pd.I, M.Pd.I', NULL, NULL, NULL, 'Kec. Rambipuji', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(499, NULL, '1332.11.0496', '197307292000031001', 'Petrus Amat Sutadi, S.Pd.', NULL, NULL, NULL, 'Kan. Kemenag Kab. Jember', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(500, NULL, '1332.11.0497', '197308022014111001', 'Zainul Abidin', NULL, NULL, NULL, 'Kec. Umbulsari', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(501, NULL, '1332.11.0498', '197308061998032003', 'Nur Azizah Rahman, S.Pd.', NULL, NULL, NULL, 'MTsN Jember 1', 'PNS', 'MTsN Jember 1', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(502, NULL, '1332.11.0499', '197308062005012002', 'Eko Sulistyningsih, S.Pd.', NULL, NULL, NULL, 'MAN 1 Jember', 'PNS', 'MAN 1 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(503, NULL, '1332.11.0500', '197308102005011003', 'Ahmad Laili, S.Pd.I', NULL, NULL, NULL, 'Kec. Kencong', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(504, NULL, '1332.11.0501', '197309032007012012', 'Tien Lutfia, SPd. M.Pd', NULL, NULL, NULL, 'MAN 2 Jember', 'PNS', 'MAN 2 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(505, NULL, '1332.11.0502', '197310012005011003', 'Choiril Huda, SE', NULL, NULL, NULL, 'Kan. Kemenag Kab. Jember', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(506, NULL, '1332.11.0503', '197310102007011043', 'Muhammad Soleh', NULL, NULL, NULL, 'Kec. Kalisat', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(507, NULL, '1332.11.0504', '197310132005012001', 'Atik Dwi Irawati, S.Pd.', NULL, NULL, NULL, 'Kec. Ambulu', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(508, NULL, '1332.11.0505', '197310282005012002', 'Sri Kustatik S. Pd.', NULL, NULL, NULL, 'MIN Tutul', 'PNS', 'MIN Tutul', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(509, NULL, '1332.11.0506', '197311212009011005', 'Muslim Al Huda, S.Pd.I', NULL, NULL, NULL, 'MIN Tutul', 'PNS', 'MIN Tutul', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(510, NULL, '1332.11.0507', '197312072005011005', 'Nanang Setiawan, S.Pd.', NULL, NULL, NULL, 'MIN Sumbersari', 'PNS', 'MIN Sumbersari', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(511, NULL, '1332.11.0508', '197312112005012001', 'Nurhasanah, S.Pd. Ina.', NULL, NULL, NULL, 'MTsN Arjasa', 'PNS', 'MTsN Arjasa', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(512, NULL, '1332.11.0509', '197312252006042017', 'Maria Ulva, S.Ag.', NULL, NULL, NULL, 'Kec. Sumbersari', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(513, NULL, '1332.11.0510', '197401012014111003', 'Mashur', NULL, NULL, NULL, 'MAN 2 Jember', 'PNS', 'MAN 2 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(514, NULL, '1332.11.0511', '197401222005011003', 'Eko Molyadi, S.Pd.I', NULL, NULL, NULL, 'Kec. Patrang', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(515, NULL, '1332.11.0512', '197401232006041008', 'Mokhamad Junaidi, S.Pd.', NULL, NULL, NULL, 'MAN 3 Jember', 'PNS', 'MAN 3 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(516, NULL, '1332.11.0513', '197402082005011009', 'Akh. Sobri Fauzan, S.Pd.I, M.Pd.I', NULL, NULL, NULL, 'Kec. Jombang', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user');
INSERT INTO `akun` (`id_akun`, `id_pendaftaran`, `kta`, `NIP`, `nama`, `no_hp`, `no_wa`, `email`, `pilkpa`, `pilstatuspegawai`, `tempat_tugas`, `tempat_lahir`, `tgl_lahir`, `pilpensiun`, `tgl_pendaftaran`, `scan_ktp`, `gambar_profil`, `status`, `password`, `ID_pengurus`, `level`) VALUES
(517, NULL, '1332.11.0514', '197402102006042007', 'Munadiroh, S.Pd.', NULL, NULL, NULL, 'MAN 2 Jember', 'PNS', 'MAN 2 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(518, NULL, '1332.11.0515', '197403012007102001', 'Emi Masruroh, S.Ag.', NULL, NULL, NULL, 'MTsN Umbulsari', 'PNS', 'MTsN Umbulsari', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(519, NULL, '1332.11.0516', '197403212007011022', 'Ach. Ramli, S.Ag.', NULL, NULL, NULL, 'MTsN Jember 1', 'PNS', 'MTsN Jember 1', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(520, NULL, '1332.11.0517', '197404062007102005', 'Mumfaridah, S.Ag.', NULL, NULL, NULL, 'MTsN Sumberbaru', 'PNS', 'MTsN Sumberbaru', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(521, NULL, '1332.11.0518', '197404082007011028', 'Dedi Ependi, S. Ag., MM.Pd.', NULL, NULL, NULL, 'MIN Tanggul Wetan', 'PNS', 'MIN Tanggul Wetan', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(522, NULL, '1332.11.0519', '197404152005012004', 'Supiyati, S.Pd.I', NULL, NULL, NULL, 'Kec. Wuluhan', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(523, NULL, '1332.11.0520', '197404232005011003', 'Nurul Huda, S.Pd.I', NULL, NULL, NULL, 'Kan. Kemenag Kab. Jember', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(524, NULL, '1332.11.0521', '197405102005012002', 'Enik Rusdiani, S.Pd.I', NULL, NULL, NULL, 'Kec. Jenggawah', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(525, NULL, '1332.11.0522', '197405122005012005', 'Titarini, S.Pd.', NULL, NULL, NULL, 'Kec. Tempurejo', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(526, NULL, '1332.11.0523', '197405242005012005', 'Ida Suhartini Sinta Dewi, S.Pd.', NULL, NULL, NULL, 'Kec. Puger', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(527, NULL, '1332.11.0524', '197406012007101005', 'A.Mahdi, S.Pd.I', NULL, NULL, NULL, 'MAN 2 Jember', 'PNS', 'MAN 2 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(528, NULL, '1332.11.0525', '197406132005012011', 'Atik Historini Dwi Lestari, S.Pd.', NULL, NULL, NULL, 'MTsN Jember 3', 'PNS', 'MTsN Jember 3', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(529, NULL, '1332.11.0526', '197406241998031004', 'Nur Wahid, S.Pd.I, M.Pd.I', NULL, NULL, NULL, 'MTsN Arjasa', 'PNS', 'MTsN Arjasa', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(530, NULL, '1332.11.0527', '197407122005011003', 'Moh. Zainuri, S.Ag, M.Pd.I', NULL, NULL, NULL, 'Kec. Wuluhan', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(531, NULL, '1332.11.0528', '197407221998032002', 'Najmul Laili, S.Pd.I., M.Pd.I', NULL, NULL, NULL, 'Kan. Kemenag Kab. Jember', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(532, NULL, '1332.11.0529', '197407222005012005', 'Izza Nur Laila, S.Ag', NULL, NULL, NULL, 'MTsN Umbulsari', 'PNS', 'MTsN Umbulsari', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(533, NULL, '1332.11.0530', '197408052005011002', 'Anang Ismanto', NULL, NULL, NULL, 'Kan. Kemenag Kab. Jember', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(534, NULL, '1332.11.0531', '197408171998031003', 'Solihin, S.Pd.I', NULL, NULL, NULL, 'MIN Tutul', 'PNS', 'MIN Tutul', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(535, NULL, '1332.11.0532', '197408182005012002', 'Wiwin Agustini, S.Pd', NULL, NULL, NULL, 'MTsN Arjasa', 'PNS', 'MTsN Arjasa', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(536, NULL, '1332.11.0533', '197408212005012002', 'Lilis Indarwati, S.Ag., M.Pd.I', NULL, NULL, NULL, 'Kec. Umbulsari', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(537, NULL, '1332.11.0534', '197408222007102001', 'Erny Sriwidiawati, SE', NULL, NULL, NULL, 'MAN 2 Jember', 'PNS', 'MAN 2 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(538, NULL, '1332.11.0535', '197408242007102005', 'Wiwin Supartinah, SE', NULL, NULL, NULL, 'MIN Sumbersari', 'PNS', 'MIN Sumbersari', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(539, NULL, '1332.11.0536', '197408282005012006', 'Sriyatiningsih, S.Pd.I', NULL, NULL, NULL, 'Kec. Tanggul', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(540, NULL, '1332.11.0537', '197409072007102002', 'Sri Hartatik, S.Pd.', NULL, NULL, NULL, 'MTsN Arjasa', 'PNS', 'MTsN Arjasa', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(541, NULL, '1332.11.0538', '197409182007101001', 'Santono, S.Pd.I', NULL, NULL, NULL, 'MTsN Jember 1', 'PNS', 'MTsN Jember 1', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(542, NULL, '1332.11.0539', '197410012009012007', 'Fauziah Inwinarni', NULL, NULL, NULL, 'Kan. Kemenag Kab. Jember', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(543, NULL, '1332.11.0540', '197410122005011003', 'Alex Mahrus Anwar, M.Pd.I', NULL, NULL, NULL, 'MTsN Jember 2', 'PNS', 'MTsN Jember 2', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(544, NULL, '1332.11.0541', '197410252000121002', 'Mohammad Jumhari, S.Pd.I', NULL, NULL, NULL, 'Kec. Bangsalsari', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(545, NULL, '1332.11.0542', '197411062007012023', 'Nur Fatimah, S.Ag.', NULL, NULL, NULL, 'MTsN Sukowono', 'PNS', 'MTsN Sukowono', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(546, NULL, '1332.11.0543', '197411112007012024', 'Hosniyah, S.Pd.', NULL, NULL, NULL, 'MIN Sempolan', 'PNS', 'MIN Sempolan', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(547, NULL, '1332.11.0544', '197411152005012003', 'Nur Fadhilah, S.Pd.', NULL, NULL, NULL, 'Kec. Kaliwates', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(548, NULL, '1332.11.0545', '197412042005011002', 'Edy Santoso, S.Pd., M.Pd.I', NULL, NULL, NULL, 'Kec. Mumbulsari', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(549, NULL, '1332.11.0546', '197501062005012001', 'Nurchasanah, S.Pd., M.Pd.', NULL, NULL, NULL, 'Kec. Umbulsari', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(550, NULL, '1332.11.0547', '197501221998032001', 'Mukarromah, SE', NULL, NULL, NULL, 'Kan. Kemenag Kab. Jember', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(551, NULL, '1332.11.0548', '197501292005012003', 'Izzatul Millah, M.Pd.I', NULL, NULL, NULL, 'MTsN Bangsalsari', 'PNS', 'MTsN Bangsalsari', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(552, NULL, '1332.11.0549', '197502142005012003', 'Yani Sri Wahyuni, S.Pd.', NULL, NULL, NULL, 'Kec. Sumberbaru', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(553, NULL, '1332.11.0550', '197502252005011003', 'Aman Bachtiar, S.Pd., M.Pd.I', NULL, NULL, NULL, 'Pengawas', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(554, NULL, '1332.11.0551', '197503012006042009', 'Siti Hotijah, S.Pd.', NULL, NULL, NULL, 'MIN Tutul', 'PNS', 'MIN Tutul', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(555, NULL, '1332.11.0552', '197503082014111002', 'Abdullah', NULL, NULL, NULL, 'Kec. Gumukmas', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(556, NULL, '1332.11.0553', '197503152005012003', 'Siti Rofi`ah, S.Pd.', NULL, NULL, NULL, 'MAN 1 Jember', 'PNS', 'MAN 1 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(557, NULL, '1332.11.0554', '197503152007011032', 'Rahmad Karsum', NULL, NULL, NULL, 'MTsN Jember 3', 'PNS', 'MTsN Jember 3', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(558, NULL, '1332.11.0555', '197503262005012001', 'Uyunul Chusniah, S.Pd.I', NULL, NULL, NULL, 'Kec. Ajung', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(559, NULL, '1332.11.0556', '197504082005011004', 'Ahmad Syaikhuna Siddiq, S.Pd.', NULL, NULL, NULL, 'MIN Tutul', 'PNS', 'MIN Tutul', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(560, NULL, '1332.11.0557', '197504162005012003', 'Sofia Ratnaningsih, S.Pd.', NULL, NULL, NULL, 'MAN 1 Jember', 'PNS', 'MAN 1 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(561, NULL, '1332.11.0558', '197504292005011001', 'Fadlil Latif, S.Pd.I., M.Pd.I', NULL, NULL, NULL, 'Kec. Jenggawah', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(562, NULL, '1332.11.0559', '197504292007102001', 'Dyana Sumiyanto', NULL, NULL, NULL, 'MAN 2 Jember', 'PNS', 'MAN 2 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(563, NULL, '1332.11.0560', '197505212005011002', 'Faisol Abrari, S.Pd.I, M.Pd.I', NULL, NULL, NULL, 'Kec. Sumbersari', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(564, NULL, '1332.11.0561', '197505222005011004', 'Rahmad Widodo, A. Ma', NULL, NULL, NULL, 'Kec. Sumbersari', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(565, NULL, '1332.11.0562', '197505252005011003', 'Agus Suprayitno, S.Pd.', NULL, NULL, NULL, 'MTsN Jember 2', 'PNS', 'MTsN Jember 2', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(566, NULL, '1332.11.0563', '197505302005012002', 'Heru Widiyastuti, S.Pd.', NULL, NULL, NULL, 'MTsN Jember 2', 'PNS', 'MTsN Jember 2', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(567, NULL, '1332.11.0564', '197506082006041009', 'Abdul Bari, S.Pd.', NULL, NULL, NULL, 'MTsN Jember 1', 'PNS', 'MTsN Jember 1', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(568, NULL, '1332.11.0565', '197506172005012006', 'Dyah Wijayanti, S.Pd.', NULL, NULL, NULL, 'MTsN Jember 3', 'PNS', 'MTsN Jember 3', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(569, NULL, '1332.11.0566', '197506252007102003', 'Chusnul Chotimah, S.Pd.', NULL, NULL, NULL, 'MTsN Umbulsari', 'PNS', 'MTsN Umbulsari', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(570, NULL, '1332.11.0567', '197507241999032003', 'Arfiyanti Fadilah, S.Pd.', NULL, NULL, NULL, 'MTsN Bangsalsari', 'PNS', 'MTsN Bangsalsari', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(571, NULL, '1332.11.0568', '197508152007102003', 'Sriamah, S.Pd.', NULL, NULL, NULL, 'MTsN Jember 1', 'PNS', 'MTsN Jember 1', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(572, NULL, '1332.11.0569', '197509021998032001', 'Dwi Indah Sulistiyani, S.Pd.', NULL, NULL, NULL, 'Kan. Kemenag Kab. Jember', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(573, NULL, '1332.11.0570', '197509032007102006', 'Mamik Nurhakim, S.Pd.', NULL, NULL, NULL, 'MIN Tanggul Wetan', 'PNS', 'MIN Tanggul Wetan', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(574, NULL, '1332.11.0571', '197509302009012002', 'Laily Mazidatur Rohmah', NULL, NULL, NULL, 'MIN Tanggul Wetan', 'PNS', 'MIN Tanggul Wetan', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(575, NULL, '1332.11.0572', '197510022007101002', 'Suhairi, S.Ag.', NULL, NULL, NULL, 'MTsN Umbulsari', 'PNS', 'MTsN Umbulsari', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(576, NULL, '1332.11.0573', '197510032005011006', 'Muhammad Sodiq, S.Ag.', NULL, NULL, NULL, 'MTsN Jember 1', 'PNS', 'MTsN Jember 1', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(577, NULL, '1332.11.0574', '197510052014111006', 'Muhammad Aminudin Hariana', NULL, NULL, NULL, 'Kec. Semboro', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(578, NULL, '1332.11.0575', '197510172007012021', 'Anis Sa`Adah, S.Pd.', NULL, NULL, NULL, 'MTsN Umbulsari', 'PNS', 'MTsN Umbulsari', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(579, NULL, '1332.11.0576', '197510222000032001', 'Lilis Lailatul Fithrotin, S.Ag.', NULL, NULL, NULL, 'Kec. Semboro', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(580, NULL, '1332.11.0577', '197510282007011021', 'Ahmad Baihaki, S.Ag.', NULL, NULL, NULL, 'MTsN Sukowono', 'PNS', 'MTsN Sukowono', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(581, NULL, '1332.11.0578', '197511022009101001', 'Muhammad Muslim, S.Ag., M.Sy.', NULL, NULL, NULL, 'Kec. Patrang', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(582, NULL, '1332.11.0579', '197511162005011003', 'Ali Imron, S.Pd., M.Pd.I', NULL, NULL, NULL, 'Kan. Kemenag Kab. Jember', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(583, NULL, '1332.11.0580', '197512011999032002', 'Eny Siti Nurhayati, S.Pd.', NULL, NULL, NULL, 'MTsN Kencong', 'PNS', 'MTsN Kencong', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(584, NULL, '1332.11.0581', '197601192007011017', 'Cecep Hendrik Adiatna, S.Ag.', NULL, NULL, NULL, 'Kec. Mayang', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(585, NULL, '1332.11.0582', '197601272005011007', 'Ahmad Rofik', NULL, NULL, NULL, 'MTsN Sukowono', 'PNS', 'MTsN Sukowono', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(586, NULL, '1332.11.0583', '197601272005012004', 'Raras Indriyani, S.Pd.', NULL, NULL, NULL, 'MAN 1 Jember', 'PNS', 'MAN 1 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(587, NULL, '1332.11.0584', '197601292005012001', 'Yayuk Hasanah, S.Pd.I', NULL, NULL, NULL, 'Kec. Puger', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(588, NULL, '1332.11.0585', '197602182009102001', 'Nurul Hidayati', NULL, NULL, NULL, 'MTsN Jember 3', 'PNS', 'MTsN Jember 3', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(589, NULL, '1332.11.0586', '197602192005011005', 'Akhmad Nurul Hidayat, S.Pd.', NULL, NULL, NULL, 'MIN Gerahan', 'PNS', 'MIN Gerahan', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(590, NULL, '1332.11.0587', '197603232007011034', 'Aksan Hudori, S.Pd.', NULL, NULL, NULL, 'MTsN Sumberbaru', 'PNS', 'MTsN Sumberbaru', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(591, NULL, '1332.11.0588', '197603272005012005', 'Holifah, S.Pd.I', NULL, NULL, NULL, 'MIN Arjasa', 'PNS', 'MIN Arjasa', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(592, NULL, '1332.11.0589', '197604052007102007', 'Siti Fathimah S.Pd.', NULL, NULL, NULL, 'MTsN Umbulsari', 'PNS', 'MTsN Umbulsari', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(593, NULL, '1332.11.0590', '197604162005011005', 'Imam Baehaqi, S.Pd.', NULL, NULL, NULL, 'Kec. Wuluhan', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(594, NULL, '1332.11.0591', '197604302007102002', 'Ika Indriyati Rahayu, S.Pd.', NULL, NULL, NULL, 'MTsN Jember 1', 'PNS', 'MTsN Jember 1', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(595, NULL, '1332.11.0592', '197605012005011003', 'Darmanto, S.Pd.I', NULL, NULL, NULL, 'Kec. Umbulsari', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(596, NULL, '1332.11.0593', '197605032005011003', 'Muhammad Mujibul Iman, S.Pd.', NULL, NULL, NULL, 'MTsN Jember 3', 'PNS', 'MTsN Jember 3', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(597, NULL, '1332.11.0594', '197605042009011006', 'Ahmad Sya`Roni, S.Ag.', NULL, NULL, NULL, 'Kec. Panti', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(598, NULL, '1332.11.0595', '197605052014111003', 'Yosi Indarto', NULL, NULL, NULL, 'Kan. Kemenag Kab. Jember', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(599, NULL, '1332.11.0596', '197605122005012003', 'Khalifah SL, S.Pd.', NULL, NULL, NULL, 'MTsN Sukowono', 'PNS', 'MTsN Sukowono', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(600, NULL, '1332.11.0597', '197606192005012004', 'Yuni Herawati, S.Pd.', NULL, NULL, NULL, 'MTsN Umbulsari', 'PNS', 'MTsN Umbulsari', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(601, NULL, '1332.11.0598', '197606252007102007', 'Yudi Yunidian, S.Pd.', NULL, NULL, NULL, 'MTsN Jember 3', 'PNS', 'MTsN Jember 3', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(602, NULL, '1332.11.0599', '197607032005012003', 'Elin Ida Sabti, S.Pd.I', NULL, NULL, NULL, 'Kec. Silo', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(603, NULL, '1332.11.0600', '197607062007011030', 'Agus Salim, S.Pd., MM.Pd.', NULL, NULL, NULL, 'MIN Tutul', 'PNS', 'MIN Tutul', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(604, NULL, '1332.11.0601', '197607142005011003', 'Jamanhuri, S.Ag.', NULL, NULL, NULL, 'MAN 1 Jember', 'PNS', 'MAN 1 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(605, NULL, '1332.11.0602', '197607192005011004', 'Samhadi, S.Pd.I', NULL, NULL, NULL, 'Kec. Pakusari', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(606, NULL, '1332.11.0603', '197608202007102001', 'Sri Ratnaningsih, S.Pd.', NULL, NULL, NULL, 'MTsN Sukowono', 'PNS', 'MTsN Sukowono', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(607, NULL, '1332.11.0604', '197609092005011003', 'Burhanuddin', NULL, NULL, NULL, 'MTsN Jember 1', 'PNS', 'MTsN Jember 1', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(608, NULL, '1332.11.0605', '197609272005012003', 'Malihatus Subhiyah, S.Pd.I', NULL, NULL, NULL, 'Kec. Puger', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(609, NULL, '1332.11.0606', '197610032005011004', 'Aris Cahyono, A.Ma', NULL, NULL, NULL, 'Kec. Tempurejo', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(610, NULL, '1332.11.0607', '197610072006041003', 'Dara Quthni, S.Ag., M.HI.', NULL, NULL, NULL, 'Kec. Kaliwates', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(611, NULL, '1332.11.0608', '197610252005011004', 'Zainul Arifin, S.Ag.', NULL, NULL, NULL, 'Kec. Tanggul', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(612, NULL, '1332.11.0609', '197611062007101001', 'Anshori, S.Pd.I', NULL, NULL, NULL, 'MIN Tanggul Wetan', 'PNS', 'MIN Tanggul Wetan', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(613, NULL, '1332.11.0610', '197611132005011004', 'Kunrozazi, S.Pd.', NULL, NULL, NULL, 'MTsN Sukowono', 'PNS', 'MTsN Sukowono', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(614, NULL, '1332.11.0611', '197611142005012003', 'Rita Zahara, S.Pd.', NULL, NULL, NULL, 'MAN 2 Jember', 'PNS', 'MAN 2 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(615, NULL, '1332.11.0612', '197611222005012002', 'Ita Novitarini, S.Pd.', NULL, NULL, NULL, 'Kec. Wuluhan', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(616, NULL, '1332.11.0613', '197612012007101003', 'Irohan, S. ThI', NULL, NULL, NULL, 'MTsN Bangsalsari', 'PNS', 'MTsN Bangsalsari', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(617, NULL, '1332.11.0614', '197612302005012001', 'Hanik Murdlorini, S.Pd.I', NULL, NULL, NULL, 'Kec. Wuluhan', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(618, NULL, '1332.11.0615', '197701012005011006', 'Moh. Hosen, S.Pd.I', NULL, NULL, NULL, 'MAN 2 Jember', 'PNS', 'MAN 2 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(619, NULL, '1332.11.0616', '197701082005011003', 'Burhanuddin, S.Pd.I', NULL, NULL, NULL, 'Kec. Arjasa', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(620, NULL, '1332.11.0617', '197701202007102003', 'Zidni Ilma, S.Ag.', NULL, NULL, NULL, 'MAN 3 Jember', 'PNS', 'MAN 3 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(621, NULL, '1332.11.0618', '197701242001122010', 'Niyati, S E', NULL, NULL, NULL, 'MTsN Bangsalsari', 'PNS', 'MTsN Bangsalsari', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(622, NULL, '1332.11.0619', '197701272005012002', 'Quratul Aini, S.Pd.', NULL, NULL, NULL, 'MTsN Jember 2', 'PNS', 'MTsN Jember 2', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(623, NULL, '1332.11.0620', '197701282005012003', 'Zuraida Ardiyanti, S.Pd.', NULL, NULL, NULL, 'Kec. Rambipuji', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(624, NULL, '1332.11.0621', '197702052005011006', 'Akh. Zaini, S.Pd.I, M.Pd.I', NULL, NULL, NULL, 'Kec. Mayang', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(625, NULL, '1332.11.0622', '197702102005012004', 'Sugiartik, S.Pd', NULL, NULL, NULL, 'MTsN Jember 1', 'PNS', 'MTsN Jember 1', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(626, NULL, '1332.11.0623', '197702111999032001', 'Khafidhoh, S.Pd.I', NULL, NULL, NULL, 'MIN Tutul', 'PNS', 'MIN Tutul', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(627, NULL, '1332.11.0624', '197702202005011004', 'Nur Moh. Khoiruddin, S.Pd.I', NULL, NULL, NULL, 'Kec. Kencong', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(628, NULL, '1332.11.0625', '197702282005011002', 'Moh. Nurhuda, S.Ag., M.Pd.I', NULL, NULL, NULL, 'Kec. Ajung', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(629, NULL, '1332.11.0626', '197703162005012003', 'Nur Fadlilah, S.Pd.', NULL, NULL, NULL, 'Kec. Bangsalsari', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(630, NULL, '1332.11.0627', '197703172005011008', 'Moh. Nasir, S.Pd, M.Pd.I', NULL, NULL, NULL, 'Kec. Ambulu', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(631, NULL, '1332.11.0628', '197704102005011005', 'Hadi Na`im, S.Pd.', NULL, NULL, NULL, 'MAN 2 Jember', 'PNS', 'MAN 2 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(632, NULL, '1332.11.0629', '197704142005012002', 'Defi Masruroh, S.Ag.', NULL, NULL, NULL, 'MTsN Umbulsari', 'PNS', 'MTsN Umbulsari', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(633, NULL, '1332.11.0630', '197704222007101002', 'Suyono, S.Pd.', NULL, NULL, NULL, 'MTsN Sumberbaru', 'PNS', 'MTsN Sumberbaru', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(634, NULL, '1332.11.0631', '197704232007102001', 'Mutamimah, S.Pd.', NULL, NULL, NULL, 'MTsN Jember 1', 'PNS', 'MTsN Jember 1', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(635, NULL, '1332.11.0632', '197704292009101002', 'Farid Rosyidi', NULL, NULL, NULL, 'MIN Gerahan', 'PNS', 'MIN Gerahan', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(636, NULL, '1332.11.0633', '197706022011011005', 'Muhamad Fauzi, S.Kom.', NULL, NULL, NULL, 'Kan. Kemenag Kab. Jember', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(637, NULL, '1332.11.0634', '197706142005012002', 'Siti Aisyah, S.Pd.I', NULL, NULL, NULL, 'Kec. Sumberbaru', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(638, NULL, '1332.11.0635', '197706202006042001', 'Sugiman, S.Pd', NULL, NULL, NULL, 'MTsN Sumberbaru', 'PNS', 'MTsN Sumberbaru', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(639, NULL, '1332.11.0636', '197707072007101005', 'Ach Syaiful Bachri, S.Ag.', NULL, NULL, NULL, 'MTsN Jember 3', 'PNS', 'MTsN Jember 3', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(640, NULL, '1332.11.0637', '197707152007012020', 'Rita Rudiyani Sulfiyah, SE', NULL, NULL, NULL, 'Kec. Kaliwates', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(641, NULL, '1332.11.0638', '197708102007011026', 'Heri Purnomo Sidi, SE', NULL, NULL, NULL, 'Kan. Kemenag Kab. Jember', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(642, NULL, '1332.11.0639', '197708142005012008', 'Hanifah, S.Pd.', NULL, NULL, NULL, 'Kec. Jombang', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(643, NULL, '1332.11.0640', '197708152007102005', 'Maratun Hasanah, S.Ag.', NULL, NULL, NULL, 'MTsN Sumberbaru', 'PNS', 'MTsN Sumberbaru', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(644, NULL, '1332.11.0641', '197708222005012008', 'Luthfi Mawaddah, S.Pd.', NULL, NULL, NULL, 'MAN 3 Jember', 'PNS', 'MAN 3 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(645, NULL, '1332.11.0642', '197709152005011003', 'Fitra Mamong Setiyo Raharjo, S.Pd.', NULL, NULL, NULL, 'MIN Arjasa', 'PNS', 'MIN Arjasa', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(646, NULL, '1332.11.0643', '197709172007102002', 'Elief Fitriana, S.Ag.', NULL, NULL, NULL, 'MTsN Jember 2', 'PNS', 'MTsN Jember 2', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(647, NULL, '1332.11.0644', '197709192014111002', 'Mafud Efendi', NULL, NULL, NULL, 'Kec. Ambulu', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(648, NULL, '1332.11.0645', '197710092007102005', 'Mutiatus Sakdiyah, S.Pd.I.', NULL, NULL, NULL, 'MTsN Jember 3', 'PNS', 'MTsN Jember 3', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(649, NULL, '1332.11.0646', '197710152009102001', 'Emy Muti`Ah', NULL, NULL, NULL, 'MIN Tutul', 'PNS', 'MIN Tutul', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(650, NULL, '1332.11.0647', '197710312005012002', 'Ika Iffah Ilmiah, S.Pd.', NULL, NULL, NULL, 'MAN 2 Jember', 'PNS', 'MAN 2 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(651, NULL, '1332.11.0648', '197711132005012005', 'Lutfi Handayani, S.Pd.', NULL, NULL, NULL, 'Kec. Sumberbaru', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(652, NULL, '1332.11.0649', '197712042003121002', 'Atmam Laili, S.Ag.', NULL, NULL, NULL, 'MAN 2 Jember', 'PNS', 'MAN 2 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(653, NULL, '1332.11.0650', '197801022014111003', 'Subhan Aidy', NULL, NULL, NULL, 'Kec. Umbulsari', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(654, NULL, '1332.11.0651', '197801041998031003', 'Nur Wahid', NULL, NULL, NULL, 'Kan. Kemenag Kab. Jember', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(655, NULL, '1332.11.0652', '197801272005012004', 'Ani Hidayati, S.Pd.', NULL, NULL, NULL, 'MTsN Arjasa', 'PNS', 'MTsN Arjasa', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(656, NULL, '1332.11.0653', '197802182005011004', 'Masyhudi, S.Pd.', NULL, NULL, NULL, 'MTsN Bangsalsari', 'PNS', 'MTsN Bangsalsari', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(657, NULL, '1332.11.0654', '197802202005011005', 'Muhammad Izudin, S.Ag., M.Pd.I', NULL, NULL, NULL, 'Kec. Silo', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(658, NULL, '1332.11.0655', '197802232000031002', 'Subhan, S. Ag', NULL, NULL, NULL, 'Kec. Sumberbaru', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(659, NULL, '1332.11.0656', '197802242005011001', 'Hindar Wahyudi, S.Pd.', NULL, NULL, NULL, 'MIN Gerahan', 'PNS', 'MIN Gerahan', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(660, NULL, '1332.11.0657', '197803132007102005', 'Ratna Kusumawati, S.Si', NULL, NULL, NULL, 'MTsN Arjasa', 'PNS', 'MTsN Arjasa', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(661, NULL, '1332.11.0658', '197803152007102005', 'Iva Aminatuz Zuhriyah, S.Pd', NULL, NULL, NULL, 'MTsN Umbulsari', 'PNS', 'MTsN Umbulsari', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(662, NULL, '1332.11.0659', '197803162005012002', 'Faikatul Warda, S.Ag', NULL, NULL, NULL, 'Kec. Sukorambi', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(663, NULL, '1332.11.0660', '197803302005012002', 'Marti, M.Pd', NULL, NULL, NULL, 'MTsN Jember 2', 'PNS', 'MTsN Jember 2', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(664, NULL, '1332.11.0661', '197804042005012006', 'Ni`Matur Rohmah, S.Pd.', NULL, NULL, NULL, 'Kec. Umbulsari', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(665, NULL, '1332.11.0662', '197804082007102001', 'Khoirul Anjarwati, S.Th.I, S.Pd.', NULL, NULL, NULL, 'MAN 2 Jember', 'PNS', 'MAN 2 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(666, NULL, '1332.11.0663', '197804262005012005', 'Arisatun Nasuhah, S.Pd', NULL, NULL, NULL, 'MTsN Sumberbaru', 'PNS', 'MTsN Sumberbaru', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(667, NULL, '1332.11.0664', '197805052007102002', 'Siti Maisaroh, S.Pd.I.', NULL, NULL, NULL, 'MTsN Sukowono', 'PNS', 'MTsN Sukowono', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(668, NULL, '1332.11.0665', '197807142005011004', 'Awang Cahyo Dahono S,Pd', NULL, NULL, NULL, 'MTsN Jember 3', 'PNS', 'MTsN Jember 3', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(669, NULL, '1332.11.0666', '197807262014112003', 'Yaumil Hikmah Sy', NULL, NULL, NULL, 'Kec. Sumberbaru', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(670, NULL, '1332.11.0667', '197807292005012003', 'Restuti Yulistyorini, S.Pd', NULL, NULL, NULL, 'MTsN Jember 2', 'PNS', 'MTsN Jember 2', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(671, NULL, '1332.11.0668', '197808032007102004', 'Nidaul Huriyah, S.Pd.I', NULL, NULL, NULL, 'MIN Tutul', 'PNS', 'MIN Tutul', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(672, NULL, '1332.11.0669', '197808252000121004', 'Abdul Ghofur, S.Ag.', NULL, NULL, NULL, 'Kec. Jelbuk', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(673, NULL, '1332.11.0670', '197808282005012004', 'Wahyu Nur Indah, S.Pd.I', NULL, NULL, NULL, 'Kan. Kemenag Kab. Jember', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(674, NULL, '1332.11.0671', '197809122005012005', 'Fitri Ekasari Kurniawati, S.Pd.', NULL, NULL, NULL, 'MTsN Sukowono', 'PNS', 'MTsN Sukowono', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(675, NULL, '1332.11.0672', '197809192007011018', 'Budi Setiawan', NULL, NULL, NULL, 'Kan. Kemenag Kab. Jember', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(676, NULL, '1332.11.0673', '197810052006042019', 'Asri Purwaningsih, S.Pd.', NULL, NULL, NULL, 'MAN 3 Jember', 'PNS', 'MAN 3 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(677, NULL, '1332.11.0674', '197810182001121001', 'M. Abi Sholeh, S.Pd.I', NULL, NULL, NULL, 'MTsN Jember 2', 'PNS', 'MTsN Jember 2', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(678, NULL, '1332.11.0675', '197811052005011004', 'Ahmad Taufiq, S.Pd.I', NULL, NULL, NULL, 'Kec. Bangsalsari', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(679, NULL, '1332.11.0676', '197811062005012001', 'Wiwik Sumiyati, S.Pd,I', NULL, NULL, NULL, 'MIN Gerahan', 'PNS', 'MIN Gerahan', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(680, NULL, '1332.11.0677', '197811072005011002', 'Irvan Irdhian Syah, S.Pd.', NULL, NULL, NULL, 'Kan. Kemenag Kab. Jember', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(681, NULL, '1332.11.0678', '197811222002122003', 'Ririn Athifatul Umam, S.Ag.', NULL, NULL, NULL, 'Kec. Sumbersari', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(682, NULL, '1332.11.0679', '197812112005011004', 'Subhan, S.Ag.', NULL, NULL, NULL, 'MTsN Kencong', 'PNS', 'MTsN Kencong', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(683, NULL, '1332.11.0680', '197812212005012004', 'Ika Puspita Wulandari, S.Pd.I', NULL, NULL, NULL, 'MIN Sempolan', 'PNS', 'MIN Sempolan', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(684, NULL, '1332.11.0681', '197901012005011008', 'Muhammad Yasin Yusuf G., S.P', NULL, NULL, NULL, 'Kec. Semboro', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(685, NULL, '1332.11.0682', '197901132005012004', 'Ainul Ilmi Utiyad Darojah, S.Pd.', NULL, NULL, NULL, 'MAN 2 Jember', 'PNS', 'MAN 2 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(686, NULL, '1332.11.0683', '197901312009102001', 'Irhamni, S.Ag.', NULL, NULL, NULL, 'Kec. Kencong', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(687, NULL, '1332.11.0684', '197902232005012005', 'Ika Zulik Nurhayati, S.Pd.I', NULL, NULL, NULL, 'Kec. Wuluhan', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user');
INSERT INTO `akun` (`id_akun`, `id_pendaftaran`, `kta`, `NIP`, `nama`, `no_hp`, `no_wa`, `email`, `pilkpa`, `pilstatuspegawai`, `tempat_tugas`, `tempat_lahir`, `tgl_lahir`, `pilpensiun`, `tgl_pendaftaran`, `scan_ktp`, `gambar_profil`, `status`, `password`, `ID_pengurus`, `level`) VALUES
(688, NULL, '1332.11.0685', '197903242005011002', 'Junaidi Rahman, S.Pd.', NULL, NULL, NULL, 'MTsN Jember 2', 'PNS', 'MTsN Jember 2', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(689, NULL, '1332.11.0686', '197903292009012003', 'Mujiati, S.S', NULL, NULL, NULL, 'MTsN Arjasa', 'PNS', 'MTsN Arjasa', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(690, NULL, '1332.11.0687', '197904082007102002', 'Heni Hidayati, S.Pd.', NULL, NULL, NULL, 'MAN 3 Jember', 'PNS', 'MAN 3 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(691, NULL, '1332.11.0688', '197904172005012008', 'Afifatus Sholeha, S.Pd.', NULL, NULL, NULL, 'Kec. Patrang', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(692, NULL, '1332.11.0689', '197904182005012005', 'Sri Taqwiyati, S.Pd.I.', NULL, NULL, NULL, 'MTsN Jember 3', 'PNS', 'MTsN Jember 3', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(693, NULL, '1332.11.0690', '197904262005011003', 'Muh. Fahru Rosyid, S.Pd, M.Pd.I', NULL, NULL, NULL, 'Kec. Balung', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(694, NULL, '1332.11.0691', '197906262007102002', 'Sofi Nurdiana, S.Pd.', NULL, NULL, NULL, 'MTsN Arjasa', 'PNS', 'MTsN Arjasa', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(695, NULL, '1332.11.0692', '197907062005012006', 'Dewi Masita, S.Pd.I', NULL, NULL, NULL, 'Kec. Umbulsari', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(696, NULL, '1332.11.0693', '197907072003122003', 'Sita Delilah Susanti, S.Sos.I', NULL, NULL, NULL, 'Kec. Sumbersari', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(697, NULL, '1332.11.0694', '197908142005012001', 'Anik Rumpiati, S.Pd.', NULL, NULL, NULL, 'MTsN Jember 2', 'PNS', 'MTsN Jember 2', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(698, NULL, '1332.11.0695', '197908222005012007', 'Ani Purwatiningsih, S.Pd.', NULL, NULL, NULL, 'MIN Tutul', 'PNS', 'MIN Tutul', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(699, NULL, '1332.11.0696', '197910042005012004', 'Istiqomah, S.Pd.I', NULL, NULL, NULL, 'Kec. Ambulu', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(700, NULL, '1332.11.0697', '197910172007102002', 'Iik Sukmasari, S.Pd.', NULL, NULL, NULL, 'MTsN Jember 2', 'PNS', 'MTsN Jember 2', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(701, NULL, '1332.11.0698', '197911072005012006', 'Nur Hasanah Kurniasari, S.Pd.', NULL, NULL, NULL, 'MTsN Jember 1', 'PNS', 'MTsN Jember 1', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(702, NULL, '1332.11.0699', '197911272005012004', 'Maria Ulfa, S.Pd.', NULL, NULL, NULL, 'MTsN Kencong', 'PNS', 'MTsN Kencong', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(703, NULL, '1332.11.0700', '197911292005011004', 'Erva`Ul Ulum, S.Pd.I', NULL, NULL, NULL, 'Kec. Kencong', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(704, NULL, '1332.11.0701', '198001022005012004', 'Luluk Masluchah, S.Pd.I', NULL, NULL, NULL, 'Kec. Gumukmas', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(705, NULL, '1332.11.0702', '198001232006041001', 'Kiki Sunarjat Basuki, S.HI., M.HI.', NULL, NULL, NULL, 'Kec. Sukowono', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(706, NULL, '1332.11.0703', '198002012006041001', 'Bambang Adi Sucipto, S.Si.', NULL, NULL, NULL, 'MAN 1 Jember', 'PNS', 'MAN 1 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(707, NULL, '1332.11.0704', '198002032014111001', 'Abdul Muis Mulahod', NULL, NULL, NULL, 'Kec. Rambipuji', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(708, NULL, '1332.11.0705', '198002122005012003', 'Siti Sulaika, S.Pd.', NULL, NULL, NULL, 'Kec. Bangsalsari', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(709, NULL, '1332.11.0706', '198002222005012012', 'Neneng Diah Puspitsari, S.Pd.', NULL, NULL, NULL, 'Kec. Kalisat', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(710, NULL, '1332.11.0707', '198003072009101002', 'Multazam', NULL, NULL, NULL, 'Kec. Tempurejo', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(711, NULL, '1332.11.0708', '198003142009011004', 'FA. Hatta Adi Mas Prihandono, SS', NULL, NULL, NULL, 'Kan. Kemenag Kab. Jember', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(712, NULL, '1332.11.0709', '198004022005012004', 'Husnul Hotimah, S.Pd.', NULL, NULL, NULL, 'MTsN Jember 3', 'PNS', 'MTsN Jember 3', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(713, NULL, '1332.11.0710', '198004172005011007', 'Mulyadi, S.HI, M.Ag.', NULL, NULL, NULL, 'Kec. Sumbersari', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(714, NULL, '1332.11.0711', '198004172009011009', 'Moh. Badrus Sholeh, S.Pd.I', NULL, NULL, NULL, 'MTsN Jember 1', 'PNS', 'MTsN Jember 1', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(715, NULL, '1332.11.0712', '198004182009011008', 'Ikmal Muntadhor, S.HI.', NULL, NULL, NULL, 'Kec. Semboro', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(716, NULL, '1332.11.0713', '198005012005012008', 'Ruhana Qudus N, S.Pd.', NULL, NULL, NULL, 'MTsN Kencong', 'PNS', 'MTsN Kencong', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(717, NULL, '1332.11.0714', '198005022007101007', 'Joko Sugiarto, S.Pd.I', NULL, NULL, NULL, 'MIN Gerahan', 'PNS', 'MIN Gerahan', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(718, NULL, '1332.11.0715', '198006052005012009', 'Bibit Wahyuningsih, S.Pd.', NULL, NULL, NULL, 'MAN 3 Jember', 'PNS', 'MAN 3 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(719, NULL, '1332.11.0716', '198006142007102002', 'Nurjanah, S.Pd.I', NULL, NULL, NULL, 'MIN Gerahan', 'PNS', 'MIN Gerahan', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(720, NULL, '1332.11.0717', '198006212005012003', 'Yuni Adriani, S.Pd.', NULL, NULL, NULL, 'Kec. Semboro', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(721, NULL, '1332.11.0718', '198007062011012002', 'Asri Yulianti, S.Kom., M.T.', NULL, NULL, NULL, 'Kan. Kemenag Kab. Jember', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(722, NULL, '1332.11.0719', '198007172007012025', 'Asri Qurniawati', NULL, NULL, NULL, 'MAN 3 Jember', 'PNS', 'MAN 3 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(723, NULL, '1332.11.0720', '198008172005012007', 'Ida Fitria, S.Pd.', NULL, NULL, NULL, 'Kec. Kaliwates', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(724, NULL, '1332.11.0721', '198009042005012002', 'Palupi Medya A, S.Pd.', NULL, NULL, NULL, 'MTsN Arjasa', 'PNS', 'MTsN Arjasa', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(725, NULL, '1332.11.0722', '198010152007102002', 'Siti Khansya, S.Pd.', NULL, NULL, NULL, 'MTsN Arjasa', 'PNS', 'MTsN Arjasa', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(726, NULL, '1332.11.0723', '198010252009011013', 'Irfan Khoiri', NULL, NULL, NULL, 'MTsN Sumberbaru', 'PNS', 'MTsN Sumberbaru', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(727, NULL, '1332.11.0724', '198011022009012007', 'Titik Murniyatim, S.Si.', NULL, NULL, NULL, 'MAN 2 Jember', 'PNS', 'MAN 2 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(728, NULL, '1332.11.0725', '198011072005011002', 'M. Ibnu Hajar Maki, S.EI, M.HI.', NULL, NULL, NULL, 'Kec. Tanggul', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(729, NULL, '1332.11.0726', '198011092007012017', 'Sri Mujayati', NULL, NULL, NULL, 'MAN 3 Jember', 'PNS', 'MAN 3 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(730, NULL, '1332.11.0727', '198011202005012003', 'Laili Suryanah, S.Pd', NULL, NULL, NULL, 'MTsN Jember 2', 'PNS', 'MTsN Jember 2', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(731, NULL, '1332.11.0728', '198011252005011007', 'Muhammad Nurul Huda, S.Pd.I', NULL, NULL, NULL, 'Kec. Mumbulsari', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(732, NULL, '1332.11.0729', '198012142005012002', 'Inaristiyani, S.Pd.I', NULL, NULL, NULL, 'MIN Arjasa', 'PNS', 'MIN Arjasa', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(733, NULL, '1332.11.0730', '198101012007102004', 'Umi Azizah, S.Pd.', NULL, NULL, NULL, 'MTsN Kencong', 'PNS', 'MTsN Kencong', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(734, NULL, '1332.11.0731', '198101102014111002', 'Agus Hariyanto', NULL, NULL, NULL, 'MTsN Umbulsari', 'PNS', 'MTsN Umbulsari', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(735, NULL, '1332.11.0732', '198101152005012006', 'Ririn Sulistyowati, S.Pd.', NULL, NULL, NULL, 'MTsN Jember 2', 'PNS', 'MTsN Jember 2', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(736, NULL, '1332.11.0733', '198102102005011001', 'Nasirudin.F,S.Pd.I', NULL, NULL, NULL, 'MIN Gerahan', 'PNS', 'MIN Gerahan', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(737, NULL, '1332.11.0734', '198102122005011003', 'M. Choirul Anwar, M.HI.', NULL, NULL, NULL, 'Kec. Ambulu', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(738, NULL, '1332.11.0735', '198103032007101001', 'Abd. Hamid', NULL, NULL, NULL, 'Kec. Mumbulsari', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(739, NULL, '1332.11.0736', '198103042005012002', 'Dina Sofia, S.Pd.', NULL, NULL, NULL, 'MAN 3 Jember', 'PNS', 'MAN 3 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(740, NULL, '1332.11.0737', '198103132007102001', 'Ari Prasetyaningtias, S.Pd.I', NULL, NULL, NULL, 'MIN Tanggul Wetan', 'PNS', 'MIN Tanggul Wetan', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(741, NULL, '1332.11.0738', '198103172005012004', 'Mulik siswandani, S.Pd.', NULL, NULL, NULL, 'MTsN Jember 1', 'PNS', 'MTsN Jember 1', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(742, NULL, '1332.11.0739', '198104062009102001', 'Hessy Susanti, S.Pd.', NULL, NULL, NULL, 'MTsN Sumberbaru', 'PNS', 'MTsN Sumberbaru', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(743, NULL, '1332.11.0740', '198104182005011001', 'Hairul Fausi, S.Pd.I', NULL, NULL, NULL, 'Kec. Bangsalsari', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(744, NULL, '1332.11.0741', '198104192011011003', 'Ferdinand Zulkarnain, SE', NULL, NULL, NULL, 'Kan. Kemenag Kab. Jember', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(745, NULL, '1332.11.0742', '198104252005011003', 'Arif Setyo Purnomo, S.Pd.', NULL, NULL, NULL, 'MTsN Jember 2', 'PNS', 'MTsN Jember 2', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(746, NULL, '1332.11.0743', '198105012007011010', 'Suyono', NULL, NULL, NULL, 'Kan. Kemenag Kab. Jember', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(747, NULL, '1332.11.0744', '198105062005012006', 'Faridatul Khusnah, S.Pd.', NULL, NULL, NULL, 'Kec. Tanggul', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(748, NULL, '1332.11.0745', '198105182007102004', 'Nikmatul Umi', NULL, NULL, NULL, 'MTsN Umbulsari', 'PNS', 'MTsN Umbulsari', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(749, NULL, '1332.11.0746', '198106052006041002', 'Agus Eko Junianto', NULL, NULL, NULL, 'MIN Sumbersari', 'PNS', 'MIN Sumbersari', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(750, NULL, '1332.11.0747', '198108222005011008', 'Muhammad Ismail, S.Pd.I, M.Pd.I', NULL, NULL, NULL, 'Kec. Tempurejo', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(751, NULL, '1332.11.0748', '198108242005011002', 'Nurul Huda, S.Kom.', NULL, NULL, NULL, 'Kan. Kemenag Kab. Jember', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(752, NULL, '1332.11.0749', '198108292005012005', 'Siti Alfiah, S.Pd.', NULL, NULL, NULL, 'MTsN Jember 1', 'PNS', 'MTsN Jember 1', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(753, NULL, '1332.11.0750', '198108302007101002', 'Wiwin Sugihartatik, S.Pd.', NULL, NULL, NULL, 'MTsN Sumberbaru', 'PNS', 'MTsN Sumberbaru', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(754, NULL, '1332.11.0751', '198109112005011001', 'Abdul Basid, S.Pd.I, M.Pd.I', NULL, NULL, NULL, 'Kec. Kalisat', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(755, NULL, '1332.11.0752', '198110232007102004', 'Khusnul Khotimah', NULL, NULL, NULL, 'MTsN Arjasa', 'PNS', 'MTsN Arjasa', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(756, NULL, '1332.11.0753', '198111112009101002', 'Mohammad Fauzan Fardian', NULL, NULL, NULL, 'MTsN Jember 1', 'PNS', 'MTsN Jember 1', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(757, NULL, '1332.11.0754', '198111252005012013', 'Erni Novianita, S.Pd.I', NULL, NULL, NULL, 'MIN Sumbersari', 'PNS', 'MIN Sumbersari', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(758, NULL, '1332.11.0755', '198111252006042002', 'Linda Novaliana Sari, SE.I', NULL, NULL, NULL, 'Kan. Kemenag Kab. Jember', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(759, NULL, '1332.11.0756', '198112022005011003', 'M. Rijal Teja Kusuma, SE', NULL, NULL, NULL, 'MTsN Jember 2', 'PNS', 'MTsN Jember 2', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(760, NULL, '1332.11.0757', '198112232009012006', 'Dwi Isti Mu`Allimah, S.Pd', NULL, NULL, NULL, 'MTsN Sukowono', 'PNS', 'MTsN Sukowono', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(761, NULL, '1332.11.0758', '198112242005011005', 'Robby Sadha Siregar, S.Pd.I', NULL, NULL, NULL, 'Kec. Silo', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(762, NULL, '1332.11.0759', '198203102007101001', 'Hermawan Supriyadi, S.Pd.', NULL, NULL, NULL, 'MTsN Umbulsari', 'PNS', 'MTsN Umbulsari', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(763, NULL, '1332.11.0760', '198203302007101002', 'Moh. Muhajir Alfatawi', NULL, NULL, NULL, 'MTsN Sukowono', 'PNS', 'MTsN Sukowono', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(764, NULL, '1332.11.0761', '198204092005012004', 'Santi Budi Mirahati, S.Pd.', NULL, NULL, NULL, 'Kec. Ambulu', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(765, NULL, '1332.11.0762', '198207272007102006', 'Riska Damayanti Fitriana. S.Pd.', NULL, NULL, NULL, 'MAN 2 Jember', 'PNS', 'MAN 2 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(766, NULL, '1332.11.0763', '198207292011012010', 'Ria Kupatiyah Pirwanti, S.S', NULL, NULL, NULL, 'MTsN Jember 2', 'PNS', 'MTsN Jember 2', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(767, NULL, '1332.11.0764', '198208122005012003', 'Yuyun Isnawati, S.Pd.I, M.Pd.I', NULL, NULL, NULL, 'Kec. Sumberbaru', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(768, NULL, '1332.11.0765', '198209082007102002', 'Rika Nurul Barokah, S.Si.', NULL, NULL, NULL, 'MTsN Jember 2', 'PNS', 'MTsN Jember 2', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(769, NULL, '1332.11.0766', '198209152009011008', 'Hasinuddin, S.Fil.I', NULL, NULL, NULL, 'Kec. Ajung', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(770, NULL, '1332.11.0767', '198210272009011013', 'Fathur Rosi, S.Pd.', NULL, NULL, NULL, 'MTsN Jember 2', 'PNS', 'MTsN Jember 2', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(771, NULL, '1332.11.0768', '198210302005012003', 'Kholifah, S.Pd.I', NULL, NULL, NULL, 'MIN Tanggul Wetan', 'PNS', 'MIN Tanggul Wetan', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(772, NULL, '1332.11.0769', '198211082006042011', 'Fifin Andriyani, S.Pd.I', NULL, NULL, NULL, 'MIN Sumbersari', 'PNS', 'MIN Sumbersari', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(773, NULL, '1332.11.0770', '198301012005011013', 'Mohamad Nur Rohman, S.Pd, MM. Pd.', NULL, NULL, NULL, 'MTsN Kencong', 'PNS', 'MTsN Kencong', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(774, NULL, '1332.11.0771', '198301022005012002', 'Khusnul Kholilah, S.Pd.I', NULL, NULL, NULL, 'Kec. Gumukmas', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(775, NULL, '1332.11.0772', '198301032005012004', 'Elok Faiqotus Soliha, S.Pd.I', NULL, NULL, NULL, 'Kec. Sumbersari', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(776, NULL, '1332.11.0773', '198301112005012001', 'Nurul Hidayah, S.Pd.', NULL, NULL, NULL, 'Kec. Puger', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(777, NULL, '1332.11.0774', '198301142005012002', 'Erwin Trisnawati, S.Pd.I', NULL, NULL, NULL, 'Kec. Mumbulsari', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(778, NULL, '1332.11.0775', '198301172007011004', 'Edy Supriyanto, A.Ma.', NULL, NULL, NULL, 'MTsN Arjasa', 'PNS', 'MTsN Arjasa', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(779, NULL, '1332.11.0776', '198305062009122003', 'Sri Rahayu Ar, S.Pd.', NULL, NULL, NULL, 'MTsN Arjasa', 'PNS', 'MTsN Arjasa', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(780, NULL, '1332.11.0777', '198305102014111003', 'Herik Hartono', NULL, NULL, NULL, 'Kec. Puger', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(781, NULL, '1332.11.0778', '198305212011011002', 'Hosnan, S.Pd.', NULL, NULL, NULL, 'MTsN Jember 2', 'PNS', 'MTsN Jember 2', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(782, NULL, '1332.11.0779', '198306252005011002', 'Ahmad Junaedi Efendi, S.Pd.I, M.Pd.I', NULL, NULL, NULL, 'Kec. Kencong', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(783, NULL, '1332.11.0780', '198307052005011003', 'Ludy Fitriandila, S.Pd.I', NULL, NULL, NULL, 'Kec. Ajung', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(784, NULL, '1332.11.0781', '198309202009011007', 'Imam Syahroni, S.Pd.', NULL, NULL, NULL, 'MAN 3 Jember', 'PNS', 'MAN 3 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(785, NULL, '1332.11.0782', '198310252005012002', 'Eli Rachmawati, S.Pd', NULL, NULL, NULL, 'MAN 3 Jember', 'PNS', 'MAN 3 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(786, NULL, '1332.11.0783', '198310302005011001', 'M. Fatkhis Suud S.Pd.I', NULL, NULL, NULL, 'MTsN Umbulsari', 'PNS', 'MTsN Umbulsari', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(787, NULL, '1332.11.0784', '198402162005012001', 'Aris Ana Fiqiyah Rahman, S.Pd.I', NULL, NULL, NULL, 'Kec. Gumukmas', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(788, NULL, '1332.11.0785', '198403052007102001', 'Fitriyani Purwanti, S.Pd.I', NULL, NULL, NULL, 'MIN Tanggul Wetan', 'PNS', 'MIN Tanggul Wetan', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(789, NULL, '1332.11.0786', '198403172005012001', 'Mashatin Roziqoh, S.Pd.', NULL, NULL, NULL, 'Kec. Gumukmas', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(790, NULL, '1332.11.0787', '198403312005011001', 'M. Ridho Satrio Wibowo, SE', NULL, NULL, NULL, 'Kan. Kemenag Kab. Jember', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(791, NULL, '1332.11.0788', '198404012006041009', 'Muhammad Hadi Susilo, S.Pd.', NULL, NULL, NULL, 'MIN Tutul', 'PNS', 'MIN Tutul', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(792, NULL, '1332.11.0789', '198406032006042003', 'Yuni Mayasari, SE', NULL, NULL, NULL, 'Kan. Kemenag Kab. Jember', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(793, NULL, '1332.11.0790', '198406132005012001', 'Riza Ningrum, S.Pd.', NULL, NULL, NULL, 'Kec. Ambulu', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(794, NULL, '1332.11.0791', '198407042009012006', 'Fitria Candra, S.Pd.', NULL, NULL, NULL, 'MAN 1 Jember', 'PNS', 'MAN 1 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(795, NULL, '1332.11.0792', '198407192005011001', 'Cholil, S.Pd.I', NULL, NULL, NULL, 'Kec. Umbulsari', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(796, NULL, '1332.11.0793', '198407272005012001', 'Eni Rosidatul Lailin, S.Pd.I', NULL, NULL, NULL, 'Kec. Kaliwates', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(797, NULL, '1332.11.0794', '198408062005012001', 'Laili Masruroh, S.Pd.I', NULL, NULL, NULL, 'Kec. Tanggul', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(798, NULL, '1332.11.0795', '198408092005012001', 'Dwi Rahayu Agustini, S.Pd.I', NULL, NULL, NULL, 'Kec. Kalisat', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(799, NULL, '1332.11.0796', '198408202014111002', 'Qudsyi, SE', NULL, NULL, NULL, 'Kan. Kemenag Kab. Jember', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(800, NULL, '1332.11.0797', '198409212006041003', 'Ishaq Kholilur Rohman, S.Pd., MM.Pd.', NULL, NULL, NULL, 'MIN Tanggul Wetan', 'PNS', 'MIN Tanggul Wetan', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(801, NULL, '1332.11.0798', '198410052009101001', 'Indra Noormansyah, A.Ma.', NULL, NULL, NULL, 'MIN Tutul', 'PNS', 'MIN Tutul', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(802, NULL, '1332.11.0799', '198412052009011006', 'M Najmur Rosyid', NULL, NULL, NULL, 'MAN 2 Jember', 'PNS', 'MAN 2 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(803, NULL, '1332.11.0800', '198501102009101003', 'Erlidianto', NULL, NULL, NULL, 'MTsN Kencong', 'PNS', 'MTsN Kencong', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(804, NULL, '1332.11.0801', '198501282009011003', 'Hijrah Isnaini, S.Pd.', NULL, NULL, NULL, 'MTsN Jember 3', 'PNS', 'MTsN Jember 3', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(805, NULL, '1332.11.0802', '198507272009102002', 'Yulia Yusnita', NULL, NULL, NULL, 'MTsN Umbulsari', 'PNS', 'MTsN Umbulsari', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(806, NULL, '1332.11.0803', '198508202009102002', 'Wiji Iswanti', NULL, NULL, NULL, 'MIN Tanggul Wetan', 'PNS', 'MIN Tanggul Wetan', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(807, NULL, '1332.11.0804', '198508292009102002', 'Elik Setiyaningsih', NULL, NULL, NULL, 'MTsN Umbulsari', 'PNS', 'MTsN Umbulsari', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(808, NULL, '1332.11.0805', '198508292009102001', 'Luluk Nur Farida A.Ma.', NULL, NULL, NULL, 'MIN Tutul', 'PNS', 'MIN Tutul', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(809, NULL, '1332.11.0806', '198512192009011005', 'Syaifudin Zuhri, S.Pd.I', NULL, NULL, NULL, 'MIN Tanggul Wetan', 'PNS', 'MIN Tanggul Wetan', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(810, NULL, '1332.11.0807', '198602142014111001', 'Ismari', NULL, NULL, NULL, 'MTsN Arjasa', 'PNS', 'MTsN Arjasa', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(811, NULL, '1332.11.0808', '198606192011011005', 'Efrizal Farizkha, SE', NULL, NULL, NULL, 'Kan. Kemenag Kab. Jember', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(812, NULL, '1332.11.0809', '198607242005011002', 'Triastono Rokhman, SE', NULL, NULL, NULL, 'Kan. Kemenag Kab. Jember', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(813, NULL, '1332.11.0810', '198608192011011012', 'Muhammad Atmus Syahriz Za`im, SE', NULL, NULL, NULL, 'Kan. Kemenag Kab. Jember', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(814, NULL, '1332.11.0811', '198608302014111003', 'M. Mu`min Kamil', NULL, NULL, NULL, 'Kec. Gumukmas', 'PNS', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(815, NULL, '1332.22.0012', '', 'Zubaidah', NULL, NULL, NULL, 'MTsN 2 Jember', 'Honorer', 'MTsN 2 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(816, NULL, '1332.22.0011', '', 'Aktif Lamin', NULL, NULL, NULL, 'MTsN Arjasa', 'Honorer', 'MTsN Arjasa', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(817, NULL, '1332.22.0005', '', 'Nanang Husen', NULL, NULL, NULL, 'Kan. Kemenag Kab. Jember', 'Honorer', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(818, NULL, '1332.22.0002', '', 'Alif Fathony', NULL, NULL, NULL, 'Kan. Kemenag Kab. Jember', 'Honorer', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(819, NULL, '1332.22.0003', '', 'Masyhuri', NULL, NULL, NULL, 'Kan. Kemenag Kab. Jember', 'Honorer', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(820, NULL, '1332.22.0004', '', 'Muhbib Latifi', NULL, NULL, NULL, 'Kan. Kemenag Kab. Jember', 'Honorer', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(821, NULL, '1332.22.0006', '', 'Yanti Nurhayanti, S.Kom.', NULL, NULL, NULL, 'Kan. Kemenag Kab. Jember', 'Honorer', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(822, NULL, '1332.22.0001', '', 'Abd. Wahib', NULL, NULL, NULL, 'Kan. Kemenag Kab. Jember', 'Honorer', 'Kan. Kemenag Kab. Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(823, NULL, '1332.22.0007', '', 'Nike Kusumawardani', NULL, NULL, NULL, 'MAN 2 Jember', 'Honorer', 'MAN 2 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(824, NULL, '1332.22.0008', '', 'Aditya Prihardini', NULL, NULL, NULL, 'MAN 2 Jember', 'Honorer', 'MAN 2 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(825, NULL, '1332.22.0009', '', 'Rizka Fitria Ulva', NULL, NULL, NULL, 'MAN 2 Jember', 'Honorer', 'MAN 2 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(826, NULL, '1332.22.0010', '', 'Hikmah Islamiah', NULL, NULL, NULL, 'MAN 2 Jember', 'Honorer', 'MAN 2 Jember', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(827, NULL, '1332.23.0010', '', 'H. Sugiono, S.Ag.', NULL, NULL, NULL, 'Pensiunan', 'Pensiunan', 'Pensiunan', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(828, NULL, '1332.23.0008', '', 'H. Sjahri Tojjib', NULL, NULL, NULL, 'Pensiunan', 'Pensiunan', 'Pensiunan', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(829, NULL, '1332.23.0007', '', 'H. Sartono, S.Ag.', NULL, NULL, NULL, 'Pensiunan', 'Pensiunan', 'Pensiunan', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(830, NULL, '1332.23.0003', '', 'Drs. H. Madhfur ', NULL, NULL, NULL, 'Pensiunan', 'Pensiunan', 'Pensiunan', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(831, NULL, '1332.23.0014', '', 'Hj. Mardlijah, M.Pd. ', NULL, NULL, NULL, 'Pensiunan', 'Pensiunan', 'Pensiunan', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(832, NULL, '1332.23.0015', '', 'Hj. Zubaidah, M.Pd .', NULL, NULL, NULL, 'Pensiunan', 'Pensiunan', 'Pensiunan', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(833, NULL, '1332.23.0012', '', 'Hj. Sulastri, A.Ma.', NULL, NULL, NULL, 'Pensiunan', 'Pensiunan', 'Pensiunan', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(834, NULL, '1332.23.0018', '', 'Dra. Siti Isrowiyah', NULL, NULL, NULL, 'Pensiunan', 'Pensiunan', 'Pensiunan', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(835, NULL, '1332.23.0002', '', 'Badriyah ', NULL, NULL, NULL, 'Pensiunan', 'Pensiunan', 'Pensiunan', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(836, NULL, '1332.23.0017', '', 'Sahro', NULL, NULL, NULL, 'Pensiunan', 'Pensiunan', 'Pensiunan', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(837, NULL, '1332.23.0005', '', 'H. Machfudz R, S.Pd.', NULL, NULL, NULL, 'Pensiunan', 'Pensiunan', 'Pensiunan', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(838, NULL, '1332.23.0016', '', 'S. Rumaniyah, S.Ag. ', NULL, NULL, NULL, 'Pensiunan', 'Pensiunan', 'Pensiunan', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(839, NULL, '1332.23.0011', '', 'H. Suparyadi,SH', NULL, NULL, NULL, 'Pensiunan', 'Pensiunan', 'Pensiunan', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(840, NULL, '1332.23.0006', '', 'H. Moh. Sumari', NULL, NULL, NULL, 'Pensiunan', 'Pensiunan', 'Pensiunan', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(841, NULL, '1332.23.0019', '', 'H.M. Ali Hasan, S.Ag., M.M', NULL, NULL, NULL, 'Pensiunan', 'Pensiunan', 'Pensiunan', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(842, NULL, '1332.23.0004', '', 'H. Azhar', NULL, NULL, NULL, 'Pensiunan', 'Pensiunan', 'Pensiunan', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(843, NULL, '1332.23.0001', '', 'Nur Aini', NULL, NULL, NULL, 'Pensiunan', 'Pensiunan', 'Pensiunan', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(844, NULL, '1332.23.0009', '', 'H. Nachrawi Rais', NULL, NULL, NULL, 'Pensiunan', 'Pensiunan', 'Pensiunan', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(845, NULL, '1332.23.0013', '', 'Hj. Atikah', NULL, NULL, NULL, 'Pensiunan', 'Pensiunan', 'Pensiunan', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(846, NULL, '1332.24.0001', '', 'Subhan', NULL, NULL, NULL, 'Karyawan', 'Karyawan Kontrak', 'Karyawan', NULL, NULL, NULL, '2018-10-19 06:30:55', 'assets/gambar_upload/scanktp/id.png', 'assets/gambar_upload/profil/no_profil_pic.jpg', 1, 'dummy', 1, 'user'),
(849, 34, '1332.24.0002', NULL, 'sdfsdf', '124124324124', '124134234124', 'ahmadchoirul58@gmail.com', 'MTsN Arjasa', 'Karyawan', 'jember', '2018-10-09', '2018-10-09', 60, '2018-10-28 00:19:40', './assets/gambar_upload/scanktp/1332.24.0002_ktp.jpg', 'assets/gambar_upload/profil/no_profil_pic.jpg', 2, 'y2hmmp', 1, 'user'),
(850, 40, '1332.23.0020', NULL, 'ASFASF', '124124124124', '124124124124', 'ahmadchoirul58@gmail.com', 'MTsN Arjasa', 'Pensiunan', 'FDS', '2018-10-24', '2018-10-24', 60, '2018-10-28 03:35:34', './assets/gambar_upload/scanktp/1332.23.0020_ktp.jpg', 'assets/gambar_upload/profil/no_profil_pic.jpg', 2, 'jhhhcl', 1, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `angsuran`
--

CREATE TABLE `angsuran` (
  `id_angsuran` int(11) NOT NULL,
  `id_pinjaman` int(11) NOT NULL,
  `angsuran_ke` int(11) NOT NULL,
  `tanggal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `kd_barang` varchar(25) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `harga_beli` varchar(30) NOT NULL,
  `harga_jual` varchar(30) NOT NULL,
  `grosir` double NOT NULL,
  `stok` varchar(30) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jenis_simpanan`
--

CREATE TABLE `jenis_simpanan` (
  `id_jenis` tinyint(4) NOT NULL,
  `jenis_simpanan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis_simpanan`
--

INSERT INTO `jenis_simpanan` (`id_jenis`, `jenis_simpanan`) VALUES
(1, 'simpanan wajib'),
(2, 'simpanan pokok'),
(3, 'simpanan sukarela'),
(4, 'simpanan hari raya');

-- --------------------------------------------------------

--
-- Table structure for table `notulen`
--

CREATE TABLE `notulen` (
  `ID_notulen` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `tempat` varchar(50) NOT NULL,
  `isi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `ID_pengurus` int(11) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `no_telp` int(11) NOT NULL,
  `tgl_lahir` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pendaftaran`
--

CREATE TABLE `pendaftaran` (
  `ID_pendaftaran` int(11) NOT NULL,
  `NIP` varchar(18) DEFAULT NULL,
  `nama` varchar(40) NOT NULL,
  `no_hp` varchar(12) NOT NULL,
  `no_wa` varchar(12) NOT NULL,
  `email` varchar(30) NOT NULL,
  `pilkpa` varchar(30) NOT NULL,
  `pilstatuspegawai` varchar(30) NOT NULL,
  `tempat_tugas` varchar(30) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `pilpensiun` int(5) NOT NULL,
  `tgl_pendaftaran` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `scan_ktp` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pendaftaran`
--

INSERT INTO `pendaftaran` (`ID_pendaftaran`, `NIP`, `nama`, `no_hp`, `no_wa`, `email`, `pilkpa`, `pilstatuspegawai`, `tempat_tugas`, `tempat_lahir`, `tgl_lahir`, `pilpensiun`, `tgl_pendaftaran`, `scan_ktp`, `status`) VALUES
(39, NULL, 'asd', '124124124124', '151351351351', 'nylachoirotun@gmail.com', 'MTsN Arjasa', 'Karyawan', 'asd', '2018-10-26', '2018-10-26', 58, '2018-10-28 03:34:40', 'assets/gambar_upload/scanktp/39_ktp.jpg', 0),
(40, NULL, 'ASFASF', '124124124124', '124124124124', 'ahmadchoirul58@gmail.com', 'MTsN Arjasa', 'Pensiunan', 'FDS', '2018-10-24', '2018-10-24', 60, '2018-10-28 03:35:34', 'assets/gambar_upload/scanktp/40_ktp.jpg', 2);

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `no_transaksi` int(11) NOT NULL,
  `tgl_transaksi` date NOT NULL,
  `kd_barang` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `totalharga` int(11) NOT NULL,
  `ID_admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `penjualan_total`
--

CREATE TABLE `penjualan_total` (
  `id_penjualan_total` int(11) NOT NULL,
  `no_transaksi` int(11) NOT NULL,
  `potongan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pinjaman`
--

CREATE TABLE `pinjaman` (
  `id_pinjaman` int(11) NOT NULL,
  `id_unit` smallint(6) NOT NULL,
  `ID_pengurus` int(11) DEFAULT NULL,
  `kta` varchar(30) NOT NULL,
  `jumlah_pinjaman` int(11) NOT NULL,
  `angsuran` smallint(6) NOT NULL,
  `scan_slipgaji` varchar(100) NOT NULL,
  `metode_pencairan` varchar(15) NOT NULL,
  `nama_bank` varchar(15) DEFAULT NULL,
  `nama_dibank` varchar(100) DEFAULT NULL,
  `no_rekening` varchar(30) DEFAULT NULL,
  `tanggal_pinjaman` date NOT NULL,
  `angsuran_terbayar` int(11) NOT NULL DEFAULT '0',
  `unit` varchar(10) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pinjaman`
--

INSERT INTO `pinjaman` (`id_pinjaman`, `id_unit`, `ID_pengurus`, `kta`, `jumlah_pinjaman`, `angsuran`, `scan_slipgaji`, `metode_pencairan`, `nama_bank`, `nama_dibank`, `no_rekening`, `tanggal_pinjaman`, `angsuran_terbayar`, `unit`, `status`) VALUES
(8, 3, NULL, '1332.11.0001', 20000000, 10, 'assets/gambar_upload/scanslipgaji/8_gaji.jpg', 'tunai', NULL, NULL, NULL, '2018-10-31', 0, 'sp3', 1),
(10, 4, NULL, 'user.', 1000000, 10, 'assets/gambar_upload/scanslipgaji/10_gaji.jpg', 'transfer', 'BNI', 'assets/gambar_upload/scanbukutabungan/10_tabungan.jpg', '081', '2018-11-13', 0, 'sp', 4);

-- --------------------------------------------------------

--
-- Table structure for table `ref_kpa`
--

CREATE TABLE `ref_kpa` (
  `idkpa` int(11) NOT NULL,
  `nama_kpa` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_kpa`
--

INSERT INTO `ref_kpa` (`idkpa`, `nama_kpa`) VALUES
(1, 'MTsN Arjasa'),
(2, 'Kec. Puger'),
(3, 'MTsN Jember 3'),
(4, 'Kec. Jombang'),
(5, 'MIN Tanggul Wetan'),
(6, 'Kec. Rambipuji'),
(7, 'MTsN Bangsalsari'),
(8, 'Kec. Ambulu'),
(9, 'Kec. Gumukmas'),
(10, 'Kec. Sukorambi'),
(11, 'Kec. Patrang'),
(12, 'Kec. Sumbersari'),
(13, 'MTsN Umbulsari'),
(14, 'MTsN Jember 1'),
(15, 'Kan. Kemenag Kab. Jember'),
(16, 'Kec. Bangsalsari'),
(17, 'Kec. Tanggul'),
(18, 'MTsN Sumberbaru'),
(19, 'Kec. Ajung'),
(20, 'Kec. Kalisat'),
(21, 'MTsN Jember 2'),
(22, 'Kec. Jenggawah'),
(23, 'MAN 3 Jember'),
(24, 'Kec. Pakusari'),
(25, 'Kec. Kaliwates'),
(26, 'MAN 1 Jember'),
(27, 'MIN Sumbersari'),
(28, 'MAN 2 Jember'),
(29, 'Kec. Umbulsari'),
(30, 'MTsN Kencong'),
(31, 'Kec. Silo'),
(32, 'MIN Gerahan'),
(33, 'Kec. Wuluhan'),
(34, 'Kec. Kencong'),
(35, 'Kec. Ledokombo'),
(36, 'Kec. Sumberjambe'),
(37, 'Kec. Balung'),
(38, 'Kec. Jelbuk'),
(39, 'Kec. Tempurejo'),
(40, 'Kec. Arjasa'),
(41, 'MTsN Sukowono'),
(42, 'Kec. Mumbulsari'),
(43, 'Kec. Panti'),
(44, 'Pengawas'),
(45, 'MIN Tutul'),
(46, 'Kec. Sumberbaru'),
(47, 'Kec. Mayang'),
(48, 'MIN Arjasa'),
(49, 'Kec. Semboro'),
(50, 'MIN Sempolan'),
(51, 'Kec. Sukowono'),
(52, 'MTsN 2 Jember'),
(53, 'Pensiunan'),
(54, 'Karyawan');

-- --------------------------------------------------------

--
-- Table structure for table `ref_satker`
--

CREATE TABLE `ref_satker` (
  `id_satker` int(11) NOT NULL,
  `satker` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_satker`
--

INSERT INTO `ref_satker` (`id_satker`, `satker`) VALUES
(1, 'MTsN Arjasa'),
(2, 'Kan. Kemenag Kab. Jember'),
(3, 'MTsN Jember 3'),
(4, 'MIN Tanggul Wetan'),
(5, 'MTsN Bangsalsari'),
(6, 'MTsN Umbulsari'),
(7, 'MTsN Jember 1'),
(8, 'MTsN Sumberbaru'),
(9, 'MTsN Jember 2'),
(10, 'MAN 3 Jember'),
(11, 'MAN 1 Jember'),
(12, 'MIN Sumbersari'),
(13, 'MAN 2 Jember'),
(14, 'MTsN Kencong'),
(15, 'MIN Gerahan'),
(16, 'MTsN Sukowono'),
(17, 'MIN Tutul'),
(18, 'MIN Arjasa'),
(19, 'MIN Sempolan'),
(20, 'MTsN 2 Jember'),
(21, 'Pensiunan'),
(22, 'Karyawan');

-- --------------------------------------------------------

--
-- Table structure for table `simpanan`
--

CREATE TABLE `simpanan` (
  `id_simpan` int(11) NOT NULL,
  `ID_pengurus` int(11) DEFAULT NULL,
  `KTA` varchar(18) DEFAULT NULL,
  `id_jenis` tinyint(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `simpanan`
--

INSERT INTO `simpanan` (`id_simpan`, `ID_pengurus`, `KTA`, `id_jenis`, `jumlah`, `tanggal`) VALUES
(1, 1, '1111111', 1, 200000, '2018-10-26'),
(2, 1, '1111111', 2, 2000000, '2018-10-25'),
(3, 2, '22222', 1, 100000, '2018-10-09'),
(4, 1, '22222', 2, 150000, '2018-10-24');

-- --------------------------------------------------------

--
-- Table structure for table `stat_pinjaman`
--

CREATE TABLE `stat_pinjaman` (
  `id_stat_pinjaman` int(11) NOT NULL,
  `kta` varchar(30) NOT NULL,
  `sp` tinyint(4) NOT NULL DEFAULT '0',
  `sp1` tinyint(4) NOT NULL DEFAULT '0',
  `sp2` tinyint(4) NOT NULL DEFAULT '0',
  `sp3` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stat_pinjaman`
--

INSERT INTO `stat_pinjaman` (`id_stat_pinjaman`, `kta`, `sp`, `sp1`, `sp2`, `sp3`) VALUES
(11, '1332.11.0001', 0, 0, 0, 1),
(12, 'user.', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `surat_keluar`
--

CREATE TABLE `surat_keluar` (
  `id_surat_keluar` int(11) NOT NULL,
  `kode_surat` varchar(100) NOT NULL,
  `penerima` varchar(50) NOT NULL,
  `perihal` varchar(20) NOT NULL,
  `isi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `surat_masuk`
--

CREATE TABLE `surat_masuk` (
  `id_surat` int(11) NOT NULL,
  `kode_surat` varchar(100) NOT NULL,
  `pengirim` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `isi` varchar(100) NOT NULL,
  `disposisi` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `unit_pinjaman`
--

CREATE TABLE `unit_pinjaman` (
  `id_unit` smallint(6) NOT NULL,
  `nama` varchar(10) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `unit_pinjaman`
--

INSERT INTO `unit_pinjaman` (`id_unit`, `nama`, `jumlah`) VALUES
(1, 'SP1', 40000000),
(2, 'SP2', 40000000),
(3, 'SP3', 20000000),
(4, 'SP', 10000000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`id_akun`),
  ADD KEY `ID_pengurus` (`ID_pengurus`);

--
-- Indexes for table `angsuran`
--
ALTER TABLE `angsuran`
  ADD PRIMARY KEY (`id_angsuran`),
  ADD KEY `id_pinjaman` (`id_pinjaman`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kd_barang`);

--
-- Indexes for table `jenis_simpanan`
--
ALTER TABLE `jenis_simpanan`
  ADD PRIMARY KEY (`id_jenis`);

--
-- Indexes for table `notulen`
--
ALTER TABLE `notulen`
  ADD PRIMARY KEY (`ID_notulen`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`ID_pengurus`);

--
-- Indexes for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD PRIMARY KEY (`ID_pendaftaran`),
  ADD UNIQUE KEY `NIP` (`NIP`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`no_transaksi`),
  ADD KEY `ID_admin` (`ID_admin`);

--
-- Indexes for table `penjualan_total`
--
ALTER TABLE `penjualan_total`
  ADD PRIMARY KEY (`id_penjualan_total`),
  ADD KEY `no_transaksi` (`no_transaksi`);

--
-- Indexes for table `pinjaman`
--
ALTER TABLE `pinjaman`
  ADD PRIMARY KEY (`id_pinjaman`),
  ADD KEY `id_pengurus` (`ID_pengurus`),
  ADD KEY `unit_pinjaman` (`id_unit`);

--
-- Indexes for table `ref_kpa`
--
ALTER TABLE `ref_kpa`
  ADD PRIMARY KEY (`idkpa`);

--
-- Indexes for table `ref_satker`
--
ALTER TABLE `ref_satker`
  ADD PRIMARY KEY (`id_satker`);

--
-- Indexes for table `simpanan`
--
ALTER TABLE `simpanan`
  ADD PRIMARY KEY (`id_simpan`),
  ADD KEY `ID_pengurus` (`ID_pengurus`),
  ADD KEY `NIP` (`KTA`);

--
-- Indexes for table `stat_pinjaman`
--
ALTER TABLE `stat_pinjaman`
  ADD PRIMARY KEY (`id_stat_pinjaman`);

--
-- Indexes for table `surat_keluar`
--
ALTER TABLE `surat_keluar`
  ADD PRIMARY KEY (`id_surat_keluar`);

--
-- Indexes for table `surat_masuk`
--
ALTER TABLE `surat_masuk`
  ADD PRIMARY KEY (`id_surat`);

--
-- Indexes for table `unit_pinjaman`
--
ALTER TABLE `unit_pinjaman`
  ADD PRIMARY KEY (`id_unit`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `akun`
--
ALTER TABLE `akun`
  MODIFY `id_akun` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=851;

--
-- AUTO_INCREMENT for table `angsuran`
--
ALTER TABLE `angsuran`
  MODIFY `id_angsuran` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jenis_simpanan`
--
ALTER TABLE `jenis_simpanan`
  MODIFY `id_jenis` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `notulen`
--
ALTER TABLE `notulen`
  MODIFY `ID_notulen` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `ID_pengurus` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  MODIFY `ID_pendaftaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `no_transaksi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pinjaman`
--
ALTER TABLE `pinjaman`
  MODIFY `id_pinjaman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ref_kpa`
--
ALTER TABLE `ref_kpa`
  MODIFY `idkpa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `ref_satker`
--
ALTER TABLE `ref_satker`
  MODIFY `id_satker` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `simpanan`
--
ALTER TABLE `simpanan`
  MODIFY `id_simpan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `stat_pinjaman`
--
ALTER TABLE `stat_pinjaman`
  MODIFY `id_stat_pinjaman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `surat_keluar`
--
ALTER TABLE `surat_keluar`
  MODIFY `id_surat_keluar` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `surat_masuk`
--
ALTER TABLE `surat_masuk`
  MODIFY `id_surat` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `unit_pinjaman`
--
ALTER TABLE `unit_pinjaman`
  MODIFY `id_unit` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
