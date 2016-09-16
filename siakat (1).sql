-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2016 at 10:37 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `siakat`
--

-- --------------------------------------------------------

--
-- Table structure for table `bobotnilai`
--

CREATE TABLE `bobotnilai` (
  `bn_nilai` char(1) NOT NULL,
  `bn_bobot` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `dsn_nidn` int(11) NOT NULL,
  `dsn_nama` varchar(50) NOT NULL,
  `dsn_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`dsn_nidn`, `dsn_nama`, `dsn_password`) VALUES
(0, 'noname', 'e10adc3949ba59abbe56e057f20f883e'),
(1, 'Hamidillah Ajie, M.T  ', 'e10adc3949ba59abbe56e057f20f883e'),
(2, 'Drs. Bachren Zaini,MPd  ', 'e10adc3949ba59abbe56e057f20f883e'),
(3, 'Muchammad Ficky Duskarnaen, S.T,M.Sc.  ', 'e10adc3949ba59abbe56e057f20f883e'),
(4, 'Ir.Dra.Erda Kamaruddin,MPd  ', 'e10adc3949ba59abbe56e057f20f883e'),
(5, 'Dr.Yuliatri Sastra Wijaya,M.Pd', 'e10adc3949ba59abbe56e057f20f883e'),
(6, 'Fandy Septia Anggriawan, S.Pd, M.Pd.T  ', 'e10adc3949ba59abbe56e057f20f883e'),
(7, 'Drs. Ivan Hanafi, M.Pd.  ', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Table structure for table `fakultas`
--

CREATE TABLE `fakultas` (
  `fk_kode` int(11) NOT NULL,
  `fk_nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fakultas`
--

INSERT INTO `fakultas` (`fk_kode`, `fk_nama`) VALUES
(1, 'Fakultas Ekonomi'),
(2, 'Fakultas Teknik'),
(3, 'Fakultas Ilmu Pendidikan'),
(4, 'Fakultas Ilmu Sosial'),
(5, 'Fakultas Bahasa dan Seni'),
(6, 'Fakultas Matematika dan Ilmu Pengetahuan Alam'),
(7, 'Fakultas Ilmu Keolahragaan');

-- --------------------------------------------------------

--
-- Table structure for table `hari`
--

CREATE TABLE `hari` (
  `hr_kode` int(11) NOT NULL,
  `hr_nama` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hari`
--

INSERT INTO `hari` (`hr_kode`, `hr_nama`) VALUES
(1, 'Senin'),
(2, 'Selasa'),
(3, 'Rabu'),
(4, 'Kamis'),
(5, 'Jumat');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `jdw_kode` int(11) NOT NULL,
  `jdw_semester` int(11) NOT NULL,
  `jdw_matkul` int(11) NOT NULL,
  `jdw_dosen` int(11) NOT NULL,
  `jdw_hari` int(11) NOT NULL,
  `jdw_jam` int(11) NOT NULL,
  `jdw_peserta` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`jdw_kode`, `jdw_semester`, `jdw_matkul`, `jdw_dosen`, `jdw_hari`, `jdw_jam`, `jdw_peserta`) VALUES
(1, 1, 1, 1, 1, 1, 20),
(2, 1, 1, 2, 1, 2, 20),
(3, 1, 3, 5, 3, 3, 20),
(4, 1, 4, 2, 2, 2, 20),
(5, 1, 2, 6, 1, 4, 25);

-- --------------------------------------------------------

--
-- Table structure for table `jam`
--

CREATE TABLE `jam` (
  `jam_kode` int(11) NOT NULL,
  `jam_keterangan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jam`
--

INSERT INTO `jam` (`jam_kode`, `jam_keterangan`) VALUES
(1, '08:00 - 10:00'),
(2, '10:00 - 12:00'),
(3, '13:00 - 15:00'),
(4, '15:00 - 17:00'),
(5, '17:00 - 19:00');

-- --------------------------------------------------------

--
-- Table structure for table `jenismatkul`
--

CREATE TABLE `jenismatkul` (
  `jns_kode` int(11) NOT NULL,
  `jns_keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenismatkul`
--

INSERT INTO `jenismatkul` (`jns_kode`, `jns_keterangan`) VALUES
(1, 'Mata Kuliah Universitas'),
(2, 'Mata Kuliah Fakultas'),
(3, 'Mata Kuliah Program Studi');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `mhs_noreg` int(11) NOT NULL,
  `mhs_nama` varchar(50) NOT NULL,
  `mhs_password` varchar(100) NOT NULL,
  `mhs_prodi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`mhs_noreg`, `mhs_nama`, `mhs_password`, `mhs_prodi`) VALUES
(1, 'kamal firdaus', 'e10adc3949ba59abbe56e057f20f883e', 1),
(2, 'kakung jati pramono', 'e10adc3949ba59abbe56e057f20f883e', 1);

-- --------------------------------------------------------

--
-- Table structure for table `matkul`
--

CREATE TABLE `matkul` (
  `mtk_kode` int(11) NOT NULL,
  `mtk_nama` varchar(100) NOT NULL,
  `mtk_jenis` int(11) NOT NULL,
  `mtk_fakultas` int(11) NOT NULL,
  `mtk_prodi` int(11) NOT NULL,
  `mtk_sks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matkul`
--

INSERT INTO `matkul` (`mtk_kode`, `mtk_nama`, `mtk_jenis`, `mtk_fakultas`, `mtk_prodi`, `mtk_sks`) VALUES
(1, 'Struktur Data', 1, 0, 0, 3),
(2, 'Metode Numerik 	', 1, 0, 0, 2),
(3, 'Jaringan Komputer ', 1, 0, 0, 3),
(4, 'Desain Web', 1, 0, 0, 2),
(5, 'Perencanaan Pembelajaran', 1, 0, 0, 2),
(6, 'Industri Kecil dan Menengah TIK	', 1, 0, 0, 2),
(7, 'Bahasa Inggris ', 1, 0, 0, 2),
(8, 'Pemrograman Web ', 1, 0, 0, 3),
(9, 'E-Learning', 1, 0, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `nl_mahasiswa` int(11) NOT NULL,
  `nl_jadwal` int(11) NOT NULL,
  `nl_nilai` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `prodi`
--

CREATE TABLE `prodi` (
  `prd_kode` int(11) NOT NULL,
  `prd_nama` varchar(100) NOT NULL,
  `prd_fakultas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prodi`
--

INSERT INTO `prodi` (`prd_kode`, `prd_nama`, `prd_fakultas`) VALUES
(1, 'Pendidikan Teknik Informatika dan Komputer', 2),
(2, 'Pendidikan Teknik Elektro', 2);

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `semester` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`semester`) VALUES
(1),
(2),
(3),
(4),
(5),
(6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bobotnilai`
--
ALTER TABLE `bobotnilai`
  ADD PRIMARY KEY (`bn_nilai`);

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`dsn_nidn`);

--
-- Indexes for table `fakultas`
--
ALTER TABLE `fakultas`
  ADD PRIMARY KEY (`fk_kode`);

--
-- Indexes for table `hari`
--
ALTER TABLE `hari`
  ADD PRIMARY KEY (`hr_kode`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`jdw_kode`),
  ADD KEY `jdw_semester` (`jdw_semester`,`jdw_matkul`,`jdw_dosen`),
  ADD KEY `jdw_matkul` (`jdw_matkul`),
  ADD KEY `jdw_dosen` (`jdw_dosen`),
  ADD KEY `jdw_hari` (`jdw_hari`,`jdw_jam`),
  ADD KEY `jdw_jam` (`jdw_jam`),
  ADD KEY `jdw_semester_2` (`jdw_semester`);

--
-- Indexes for table `jam`
--
ALTER TABLE `jam`
  ADD PRIMARY KEY (`jam_kode`);

--
-- Indexes for table `jenismatkul`
--
ALTER TABLE `jenismatkul`
  ADD PRIMARY KEY (`jns_kode`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`mhs_noreg`),
  ADD KEY `mhs_prodi` (`mhs_prodi`);

--
-- Indexes for table `matkul`
--
ALTER TABLE `matkul`
  ADD PRIMARY KEY (`mtk_kode`),
  ADD KEY `mtk_jenis` (`mtk_jenis`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD KEY `nl_nilai` (`nl_nilai`);

--
-- Indexes for table `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`prd_kode`),
  ADD KEY `prd_fakultas` (`prd_fakultas`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`semester`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dosen`
--
ALTER TABLE `dosen`
  MODIFY `dsn_nidn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `fakultas`
--
ALTER TABLE `fakultas`
  MODIFY `fk_kode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `hari`
--
ALTER TABLE `hari`
  MODIFY `hr_kode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `jdw_kode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `jam`
--
ALTER TABLE `jam`
  MODIFY `jam_kode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `jenismatkul`
--
ALTER TABLE `jenismatkul`
  MODIFY `jns_kode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `mhs_noreg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `matkul`
--
ALTER TABLE `matkul`
  MODIFY `mtk_kode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `prodi`
--
ALTER TABLE `prodi`
  MODIFY `prd_kode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `semester`
--
ALTER TABLE `semester`
  MODIFY `semester` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD CONSTRAINT `jadwal_ibfk_1` FOREIGN KEY (`jdw_semester`) REFERENCES `semester` (`semester`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jadwal_ibfk_2` FOREIGN KEY (`jdw_matkul`) REFERENCES `matkul` (`mtk_kode`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jadwal_ibfk_3` FOREIGN KEY (`jdw_dosen`) REFERENCES `dosen` (`dsn_nidn`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jadwal_ibfk_4` FOREIGN KEY (`jdw_hari`) REFERENCES `hari` (`hr_kode`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jadwal_ibfk_5` FOREIGN KEY (`jdw_jam`) REFERENCES `jam` (`jam_kode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `mahasiswa_ibfk_1` FOREIGN KEY (`mhs_prodi`) REFERENCES `prodi` (`prd_kode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `matkul`
--
ALTER TABLE `matkul`
  ADD CONSTRAINT `matkul_ibfk_2` FOREIGN KEY (`mtk_jenis`) REFERENCES `jenismatkul` (`jns_kode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `nilai`
--
ALTER TABLE `nilai`
  ADD CONSTRAINT `nilai_ibfk_1` FOREIGN KEY (`nl_nilai`) REFERENCES `bobotnilai` (`bn_nilai`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `prodi`
--
ALTER TABLE `prodi`
  ADD CONSTRAINT `prodi_ibfk_1` FOREIGN KEY (`prd_fakultas`) REFERENCES `fakultas` (`fk_kode`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
