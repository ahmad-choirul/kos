-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2018 at 06:23 AM
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
-- Database: `dbkos`
--

-- --------------------------------------------------------

--
-- Table structure for table `akun`
--

CREATE TABLE `akun` (
  `id_akun` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `NIK` varchar(16) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `no_wa` varchar(12) NOT NULL,
  `email` varchar(30) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `scan_ktp` varchar(100) NOT NULL DEFAULT 'assets\\gambar_upload\\scanktp\\id.png',
  `status` tinyint(4) NOT NULL,
  `level` varchar(10) NOT NULL DEFAULT 'owner',
  `foto_profil` varchar(100) NOT NULL DEFAULT 'assets\\gambar_upload\\profil\\no_profil.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `akun`
--

INSERT INTO `akun` (`id_akun`, `username`, `password`, `NIK`, `nama`, `no_wa`, `email`, `tempat_lahir`, `scan_ktp`, `status`, `level`, `foto_profil`) VALUES
(1, 'admin', 'admin', '123', 'admin', '123', 'a@a.com', 'jember', 'assets\\gambar_upload\\scanktp\\id.png', 4, 'admin', 'assets\\gambar_upload\\profil\\no_profil.jpg'),
(2, 'a@a.com', '123', '1231241241241241', 'owner1', '124124124124', 'a@a.com', '2018-11-26', 'assets/gambar_upload/scanktp/41_ktp.jpg', 1, 'owner', 'assets\\gambar_upload\\profil\\no_profil.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `datakos`
--

CREATE TABLE `datakos` (
  `id_kos` int(11) NOT NULL,
  `id_akun` int(11) NOT NULL,
  `nama_kos` varchar(30) NOT NULL,
  `alamat_kos` varchar(50) NOT NULL,
  `harga_bawah` varchar(30) NOT NULL,
  `harga_atas` varchar(30) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `foto_kos` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `datakos`
--

INSERT INTO `datakos` (`id_kos`, `id_akun`, `nama_kos`, `alamat_kos`, `harga_bawah`, `harga_atas`, `deskripsi`, `foto_kos`) VALUES
(1, 1, 'kosan ku', 'jember jalan apa gang apa', '100000', '400000', 'ini kosan ', 'a'),
(2, 2, 'asdas', 'jember', '123', '1234', 'deskripsi', 'assets/gambar_upload/fotokos/2_kos.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `t_registrasi`
--

CREATE TABLE `t_registrasi` (
  `id_registrasi` int(11) NOT NULL,
  `NIK` varchar(16) NOT NULL,
  `password` varchar(30) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `no_wa` varchar(12) NOT NULL,
  `email` varchar(30) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `scan_ktp` varchar(100) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_registrasi`
--

INSERT INTO `t_registrasi` (`id_registrasi`, `NIK`, `password`, `nama`, `no_wa`, `email`, `tempat_lahir`, `tgl_lahir`, `scan_ktp`, `status`) VALUES
(1, '1231241241241241', '123', 'sdgasdgdasg', '124124124124', 'a@a.com', '2018-11-26', '2018-11-26', 'assets/gambar_upload/scanktp/41_ktp.jpg', 2),
(2, '1241241231241241', '123', 'safaf', '124124124124', 'ahmadchasdoirul58@gmail.com', '2018-11-13', '2018-11-13', 'assets/gambar_upload/scanktp/2_ktp.jpg', 1),
(3, '1231241241511231', '123', 'as', '113513512412', 'nylachoirotunnisa@gmail.com', '2018-11-06', '2018-11-06', 'assets/gambar_upload/scanktp/3_ktp.jpg', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`id_akun`);

--
-- Indexes for table `datakos`
--
ALTER TABLE `datakos`
  ADD PRIMARY KEY (`id_kos`);

--
-- Indexes for table `t_registrasi`
--
ALTER TABLE `t_registrasi`
  ADD PRIMARY KEY (`id_registrasi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `akun`
--
ALTER TABLE `akun`
  MODIFY `id_akun` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `datakos`
--
ALTER TABLE `datakos`
  MODIFY `id_kos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `t_registrasi`
--
ALTER TABLE `t_registrasi`
  MODIFY `id_registrasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
