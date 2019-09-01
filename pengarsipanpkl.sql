-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2018 at 05:30 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pengarsipanpkl`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `kategori` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`kategori`) VALUES
('Instalasi Listrik'),
('Proposal'),
('Porklift'),
('P3K'),
('Sio Forklift 2017'),
(''),
(''),
('Instalasi Windows');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id_login` varchar(11) NOT NULL,
  `username` varchar(150) NOT NULL,
  `password` varchar(15) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `gmail` varchar(150) NOT NULL,
  `hak` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id_login`, `username`, `password`, `nama`, `gmail`, `hak`) VALUES
('IL1018001', 'hilman', '111', 'Hilman Fahrudin', 'hilmanf@gmail.com', 'admin'),
('IL1018002', 'SG06b329', 'SG06b329', 'Jeni Citra Dewi', 'jenny_citra_dewi@barry_callebaut.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `reminder1_bulan`
--

CREATE TABLE `reminder1_bulan` (
  `nama_file` varchar(150) NOT NULL,
  `tanggal_expired` date NOT NULL,
  `tgl_p1` date NOT NULL,
  `kategori` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reminder1_bulan`
--

INSERT INTO `reminder1_bulan` (`nama_file`, `tanggal_expired`, `tgl_p1`, `kategori`) VALUES
('Pengajuan Dana Proposal 17 Agustus', '2018-09-12', '2018-08-12', 'Proposal'),
('contoh reminder', '2018-12-02', '2018-11-02', 'Instalasi Listrik');

-- --------------------------------------------------------

--
-- Table structure for table `reminder2_bulan`
--

CREATE TABLE `reminder2_bulan` (
  `nama_file` varchar(150) NOT NULL,
  `tanggal_expired` date NOT NULL,
  `tgl_p2` date NOT NULL,
  `kategori` varchar(155) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `upload_bk`
--

CREATE TABLE `upload_bk` (
  `id` varchar(25) NOT NULL,
  `nama_surat` varchar(100) NOT NULL,
  `perihal_surat` varchar(100) NOT NULL,
  `tipe_file` varchar(10) NOT NULL,
  `ukuran_file` varchar(20) NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `upload_bk`
--

INSERT INTO `upload_bk` (`id`, `nama_surat`, `perihal_surat`, `tipe_file`, `ukuran_file`, `file`) VALUES
('001/EX/HR-PCI/X/2018', 'contoh', 'contoh', 'pdf', '471039', 'files/barang keluar/contoh.pdf'),
('002/EX/HR-PCI/X/2018', 'contoh 1', 'contoh lagi', 'pdf', '471039', 'files/barang keluar/contoh 1.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `upload_bm`
--

CREATE TABLE `upload_bm` (
  `id` varchar(11) NOT NULL,
  `nama_surat` varchar(100) NOT NULL,
  `sumber_surat` varchar(100) NOT NULL,
  `perihal_surat` varchar(150) NOT NULL,
  `no_surat_sumber` varchar(100) NOT NULL,
  `tipe_file` varchar(10) NOT NULL,
  `ukuran_file` varchar(20) NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `upload_bm`
--

INSERT INTO `upload_bm` (`id`, `nama_surat`, `sumber_surat`, `perihal_surat`, `no_surat_sumber`, `tipe_file`, `ukuran_file`, `file`) VALUES
('SM0918001', 'pengajuan dana', 'desa', '17 agustusan karang taruna', '001', 'pdf', '471039', 'files/barang masuk/pengajuan dana.pdf'),
('SM0918002', 'pengajuan dana 2019', 'desa', '17 agustusan karang taruna', '002', 'pdf', '471039', 'files/barang masuk/pengajuan dana 2019.pdf'),
('SM1018003', 'contoh', 'contoh', 'contoh', '00123', 'pdf', '471039', 'files/barang masuk/contoh.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `upload_sp`
--

CREATE TABLE `upload_sp` (
  `id` varchar(11) NOT NULL,
  `tanggal_upload` date NOT NULL,
  `nama_file` varchar(100) NOT NULL,
  `tanggal_expired` date NOT NULL,
  `biaya` double NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `tgl_p2` date DEFAULT NULL,
  `tgl_p1` date DEFAULT NULL,
  `tipe_file` varchar(10) NOT NULL,
  `ukuran_file` varchar(20) NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `upload_sp`
--

INSERT INTO `upload_sp` (`id`, `tanggal_upload`, `nama_file`, `tanggal_expired`, `biaya`, `kategori`, `tgl_p2`, `tgl_p1`, `tipe_file`, `ukuran_file`, `file`) VALUES
('SP0918002', '2018-09-27', 'Instalasi Listrik Warehouse', '2018-09-21', 500000, 'Instalasi Listrik', '0000-00-00', '0000-00-00', 'pdf', '471039', 'files/surat perizinan/Instalasi Listrik Warehouse.pdf'),
('SP0918001', '2018-09-27', 'Pengajuan Dana Proposal 17 Agustus', '2018-09-12', 10000000, 'Proposal', '0000-00-00', '0000-00-00', 'pdf', '471039', 'files/surat perizinan/Pengajuan Dana Proposal 17 Agustus.pdf'),
('SP0918003', '2018-09-27', 'Pembelian Porklift', '2018-09-27', 300000000, 'Porklift', '0000-00-00', '0000-00-00', 'pdf', '471039', 'files/surat perizinan/Pembelian Porklift.pdf'),
('SP0918004', '2018-09-27', 'Peminjaman Porklift', '2018-09-21', 10000000, 'Porklift', '0000-00-00', '0000-00-00', 'pdf', '471039', 'files/surat perizinan/Peminjaman Porklift.pdf'),
('SP0918005', '2018-09-28', 'Izin Forklift Ujang', '2018-09-11', 4000000, 'Porklift', '0000-00-00', '0000-00-00', 'pdf', '471039', 'files/surat perizinan/Izin Forklift Ujang.pdf'),
('SP1018006', '2018-10-01', 'Instalasi Listrik Gudang', '2018-10-31', 1000000, 'Instalasi Listrik', NULL, NULL, 'pdf', '471039', 'files/surat perizinan/Instalasi Listrik Gudang.pdf'),
('SP1018007', '2018-10-02', 'contoh reminder', '2018-12-02', 3000000, 'Instalasi Listrik', NULL, NULL, 'pdf', '471039', 'files/surat perizinan/contoh reminder.pdf'),
('SP1018008', '2018-10-08', 'Keselamatan kerja', '2018-12-26', 1000000, 'P3K', NULL, NULL, 'pdf', '471039', 'files/surat perizinan/Keselamatan kerja.pdf'),
('SP1018009', '2018-10-08', 'Sio Enjang', '2018-09-18', 1000000, 'Sio Forklift 2017', NULL, NULL, 'pdf', '1089242', 'files/surat perizinan/Sio Enjang.pdf'),
('SP1018010', '2018-10-11', 'pop up', '2018-12-11', 20000, 'Sio Forklift 2017', NULL, NULL, 'pdf', '471039', 'files/surat perizinan/pop up.pdf'),
('SP1018011', '2018-10-11', 'bags', '2018-10-25', 10000000, 'Instalasi Listrik', '2018-08-25', NULL, 'pdf', '471039', 'files/surat perizinan/bags.pdf'),
('SP1018012', '2018-10-12', 'contoh', '2018-12-12', 2000000, 'Instalasi Listrik', '2018-10-12', '2018-11-12', 'pdf', '471039', 'files/surat perizinan/contoh.pdf'),
('SP1018013', '2018-10-16', 'contoh reminder 2', '2018-12-16', 1000000, 'P3K', '2018-10-16', '2018-11-16', 'pdf', '1089242', 'files/surat perizinan/contoh reminder 2.pdf'),
('SP1018014', '2018-10-16', 'ss', '2018-10-16', 10000000, 'Instalasi Listrik', '2018-08-16', '2018-09-16', 'rar', '0', 'files/surat perizinan/ss.rar');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_login`);

--
-- Indexes for table `reminder1_bulan`
--
ALTER TABLE `reminder1_bulan`
  ADD PRIMARY KEY (`tgl_p1`);

--
-- Indexes for table `reminder2_bulan`
--
ALTER TABLE `reminder2_bulan`
  ADD PRIMARY KEY (`tgl_p2`);

--
-- Indexes for table `upload_bk`
--
ALTER TABLE `upload_bk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upload_bm`
--
ALTER TABLE `upload_bm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upload_sp`
--
ALTER TABLE `upload_sp`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
