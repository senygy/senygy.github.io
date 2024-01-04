-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 01, 2024 at 12:40 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_warga`
--

-- --------------------------------------------------------

--
-- Table structure for table `galeri`
--

CREATE TABLE `galeri` (
  `id_galeri` int(11) NOT NULL,
  `path_galeri` varchar(100) NOT NULL,
  `caption_galeri` text NOT NULL,
  `tautan_galeri` varchar(100) NOT NULL,
  `id_user` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `galeri`
--

INSERT INTO `galeri` (`id_galeri`, `path_galeri`, `caption_galeri`, `tautan_galeri`, `id_user`, `created_at`, `updated_at`) VALUES
(6, '6db82818f231f75d4faa281e1a84d035.png', 'Autelia Shafia Alandi', 'test', 3, '2023-12-29 21:55:36', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `kartu_keluarga`
--

CREATE TABLE `kartu_keluarga` (
  `id_keluarga` int(11) NOT NULL,
  `nomor_keluarga` varchar(16) NOT NULL,
  `jumlah_anggota_keluarga` int(11) NOT NULL,
  `id_kepala_keluarga` int(11) NOT NULL,
  `alamat_keluarga` text NOT NULL,
  `desa_kelurahan_keluarga` varchar(30) NOT NULL,
  `kecamatan_keluarga` varchar(30) NOT NULL,
  `kabupaten_kota_keluarga` varchar(30) NOT NULL,
  `provinsi_keluarga` varchar(30) NOT NULL,
  `negara_keluarga` varchar(30) NOT NULL,
  `rt_keluarga` varchar(3) NOT NULL,
  `rw_keluarga` varchar(3) NOT NULL,
  `kode_pos_keluarga` varchar(5) NOT NULL,
  `pendidikan_keluarga` varchar(50) NOT NULL,
  `jenis_pekerjaan_keluarga` varchar(50) NOT NULL,
  `id_user` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kartu_keluarga`
--

INSERT INTO `kartu_keluarga` (`id_keluarga`, `nomor_keluarga`, `jumlah_anggota_keluarga`, `id_kepala_keluarga`, `alamat_keluarga`, `desa_kelurahan_keluarga`, `kecamatan_keluarga`, `kabupaten_kota_keluarga`, `provinsi_keluarga`, `negara_keluarga`, `rt_keluarga`, `rw_keluarga`, `kode_pos_keluarga`, `pendidikan_keluarga`, `jenis_pekerjaan_keluarga`, `id_user`, `created_at`, `updated_at`) VALUES
(6, '317214181241', 2, 5, 'jln flamboyan', 'alun alun', 'bekasi selatan', 'bekasi', 'jawa barat', 'indonesia', '020', '069', '17235', 'sma', 'ngodang', 3, '2023-12-28 18:36:15', '0000-00-00 00:00:00'),
(7, '3172141135513', 1, 6, 'jln rengasdengklok', 'desa apaaja', 'apa aja', 'kota klaten', 'jawa tengah', 'indonesia', '003', '015', '23515', 'sma', 'mahasiswa', 3, '2023-12-28 18:37:39', '0000-00-00 00:00:00'),
(8, '317214187111', 8, 5, 'Jl. rorotan', 'rorotan', 'bekasi selatan', 'bekasi', 'jawa barat', 'indonesia', '020', '069', '17235', 'S1', 'ngodang', 3, '2023-12-29 22:34:42', '0000-00-00 00:00:00'),
(10, '317214181241', 8, 5, 'Jl. rorotan', 'desa apaaja', 'bekasi selatan', 'bekasi', 'jawa barat', 'indonesia', '14', '069', '17235', 'S1', 'mahasiswa', 3, '2023-12-29 22:36:20', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `mutasi`
--

CREATE TABLE `mutasi` (
  `id_mutasi` int(11) NOT NULL,
  `nik_mutasi` varchar(16) NOT NULL,
  `nama_mutasi` varchar(45) NOT NULL,
  `tempat_lahir_mutasi` varchar(30) NOT NULL,
  `tanggal_lahir_mutasi` date NOT NULL,
  `jenis_kelamin_mutasi` enum('L','P') NOT NULL,
  `alamat_ktp_mutasi` text NOT NULL,
  `alamat_mutasi` text NOT NULL,
  `desa_kelurahan_mutasi` varchar(30) NOT NULL,
  `kecamatan_mutasi` varchar(30) NOT NULL,
  `kabupaten_kota_mutasi` varchar(30) NOT NULL,
  `provinsi_mutasi` varchar(30) NOT NULL,
  `negara_mutasi` varchar(30) NOT NULL,
  `rt_mutasi` varchar(3) NOT NULL,
  `rw_mutasi` varchar(3) NOT NULL,
  `agama_mutasi` enum('Islam','Kristen','Katholik','Hindu','Budha','Konghucu') NOT NULL,
  `pendidikan_terakhir_mutasi` varchar(20) NOT NULL,
  `pekerjaan_mutasi` varchar(20) NOT NULL,
  `status_perkawinan_mutasi` enum('Kawin','Tidak Kawin') NOT NULL,
  `status_mutasi` enum('Tetap','Kontrak') NOT NULL,
  `keperluan_mutasi` varchar(30) NOT NULL,
  `id_user` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mutasi`
--

INSERT INTO `mutasi` (`id_mutasi`, `nik_mutasi`, `nama_mutasi`, `tempat_lahir_mutasi`, `tanggal_lahir_mutasi`, `jenis_kelamin_mutasi`, `alamat_ktp_mutasi`, `alamat_mutasi`, `desa_kelurahan_mutasi`, `kecamatan_mutasi`, `kabupaten_kota_mutasi`, `provinsi_mutasi`, `negara_mutasi`, `rt_mutasi`, `rw_mutasi`, `agama_mutasi`, `pendidikan_terakhir_mutasi`, `pekerjaan_mutasi`, `status_perkawinan_mutasi`, `status_mutasi`, `keperluan_mutasi`, `id_user`, `created_at`, `updated_at`) VALUES
(1, '37201472627262', 'mustaan', 'Jakarta', '2023-12-28', 'P', 'Jl. rorotan', 'Jl. rorotan ix', 'rorotan', 'cilincing', 'jakarta', 'dki jakarta', 'indonesia', '02', '023', 'Islam', 'SD', 'kuli', 'Kawin', 'Tetap', 'husen', 3, '2024-01-01 10:35:48', '0000-00-00 00:00:00'),
(7, '12313131311', 'asdasda', 'jkrta', '2005-01-04', 'L', 'jl. rrtn', 'jl. rrtn', 'jayabaya', 'rawalumbu', 'jakarta', 'dki jakarta', 'indonesia', '02', '023', 'Islam', 'SMA', 'nyucri', 'Kawin', 'Tetap', 'usaha', 3, '2024-01-01 11:01:51', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(45) NOT NULL,
  `username_user` varchar(20) NOT NULL,
  `password_user` varchar(32) NOT NULL,
  `keterangan_user` text NOT NULL,
  `status_user` enum('Admin','RT','RW') NOT NULL,
  `desa_kelurahan_user` varchar(30) NOT NULL,
  `kecamatan_user` varchar(30) NOT NULL,
  `kabupaten_kota_user` varchar(30) NOT NULL,
  `provinsi_user` varchar(30) NOT NULL,
  `negara_user` varchar(30) NOT NULL,
  `rt_user` varchar(3) NOT NULL,
  `rw_user` varchar(3) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama_user`, `username_user`, `password_user`, `keterangan_user`, `status_user`, `desa_kelurahan_user`, `kecamatan_user`, `kabupaten_kota_user`, `provinsi_user`, `negara_user`, `rt_user`, `rw_user`, `created_at`, `updated_at`) VALUES
(1, 'codingwebgratis', 'admin', '0192023a7bbd73250516f069df18b500', 'admin di aplikasi pendataan warga', 'Admin', 'Senen', 'Salemba', 'Jakarta Pusat', 'DKI Jakarta', 'Indonesia', '001', '002', '2018-10-26 13:01:49', '2018-10-26 13:01:49'),
(3, 'husein', 'husein', 'husein', 'pasti bisa', 'Admin', 'jayabaya', 'rawalumbu', 'jakarta', 'dki jakarta', 'indonesia', '02', '023', '2023-12-26 15:35:01', '0000-00-00 00:00:00'),
(9, 'Alimudin', 'adminrt', '80a5aababc3324446fbfac54178a8c10', 'rt desa', 'RT', 'salemba', 'senen', 'Jakarta Pusat', 'DKI Jakarta', 'Indonesia', '003', '016', '2018-10-26 13:09:19', '2018-10-26 13:09:19'),
(10, 'Waljo', 'adminrw', '631575f257e72033d36c3861f22c29e9', 'rw desa', 'RW', 'Senen', 'Salemba', 'Jakarta Pusat', 'DKI Jakarta', 'Indonesia', '003', '016', '2018-10-26 13:09:06', '2018-10-26 13:09:06'),
(11, 'Bambang', 'adminrt2', '022d9d38a8866c546cf92d1ddc0959ab', 'adminrt 02', 'RT', 'salemba', 'senen', 'Jakarta Pusat', 'DKI Jakarta', 'Indonesia', '003', '016', '2018-10-26 13:11:55', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `warga`
--

CREATE TABLE `warga` (
  `id_warga` int(11) NOT NULL,
  `nik_warga` varchar(16) NOT NULL,
  `nama_warga` varchar(45) NOT NULL,
  `tempat_lahir_warga` varchar(30) NOT NULL,
  `tanggal_lahir_warga` date NOT NULL,
  `jenis_kelamin_warga` enum('L','P') NOT NULL,
  `alamat_ktp_warga` text NOT NULL,
  `alamat_warga` text NOT NULL,
  `desa_kelurahan_warga` varchar(30) NOT NULL,
  `kecamatan_warga` varchar(30) NOT NULL,
  `kabupaten_kota_warga` varchar(30) NOT NULL,
  `provinsi_warga` varchar(30) NOT NULL,
  `negara_warga` varchar(30) NOT NULL,
  `rt_warga` varchar(3) NOT NULL,
  `rw_warga` varchar(3) NOT NULL,
  `agama_warga` enum('Islam','Kristen','Katholik','Hindu','Budha','Konghucu') NOT NULL,
  `pendidikan_terakhir_warga` varchar(20) NOT NULL,
  `pekerjaan_warga` varchar(20) NOT NULL,
  `status_perkawinan_warga` enum('Kawin','Tidak Kawin') NOT NULL,
  `status_warga` enum('Tetap','Kontrak') NOT NULL,
  `keperluan_warga` varchar(30) NOT NULL,
  `id_user` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `warga`
--

INSERT INTO `warga` (`id_warga`, `nik_warga`, `nama_warga`, `tempat_lahir_warga`, `tanggal_lahir_warga`, `jenis_kelamin_warga`, `alamat_ktp_warga`, `alamat_warga`, `desa_kelurahan_warga`, `kecamatan_warga`, `kabupaten_kota_warga`, `provinsi_warga`, `negara_warga`, `rt_warga`, `rw_warga`, `agama_warga`, `pendidikan_terakhir_warga`, `pekerjaan_warga`, `status_perkawinan_warga`, `status_warga`, `keperluan_warga`, `id_user`, `created_at`, `updated_at`) VALUES
(5, '37201472627262', 'faiz', 'Jakarta', '1979-12-05', 'P', 'Jl. rorotan', 'Jl. rorotan ix', 'rorotan', 'cilincing', 'jakarta', 'dki jakarta', 'indonesia', '02', '023', 'Budha', 'Tidak Tamat SD', 'kuli', 'Tidak Kawin', 'Tetap', 'KIP', 3, '2023-12-28 15:01:22', '0000-00-00 00:00:00'),
(6, '37201472652341', 'aan', 'bekasi', '1999-12-08', 'L', 'jln rengasdengklok', 'jln rengasdengklok', 'jayabaya', 'rawalumbu', 'jakarta', 'dki jakarta', 'indonesia', '02', '023', 'Islam', 'SMA', 'mahasiswa', 'Kawin', 'Tetap', 'Usaha', 3, '2023-12-28 18:18:39', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `warga_has_kartu_keluarga`
--

CREATE TABLE `warga_has_kartu_keluarga` (
  `id_warga` int(11) NOT NULL,
  `id_keluarga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id_galeri`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `kartu_keluarga`
--
ALTER TABLE `kartu_keluarga`
  ADD PRIMARY KEY (`id_keluarga`),
  ADD KEY `id_kepala_keluarga` (`id_kepala_keluarga`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `mutasi`
--
ALTER TABLE `mutasi`
  ADD PRIMARY KEY (`id_mutasi`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `warga`
--
ALTER TABLE `warga`
  ADD PRIMARY KEY (`id_warga`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `warga_has_kartu_keluarga`
--
ALTER TABLE `warga_has_kartu_keluarga`
  ADD KEY `id_penduduk` (`id_warga`,`id_keluarga`),
  ADD KEY `warga_has_kartu_keluarga_ibfk_2` (`id_keluarga`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `kartu_keluarga`
--
ALTER TABLE `kartu_keluarga`
  MODIFY `id_keluarga` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `mutasi`
--
ALTER TABLE `mutasi`
  MODIFY `id_mutasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `warga`
--
ALTER TABLE `warga`
  MODIFY `id_warga` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `galeri`
--
ALTER TABLE `galeri`
  ADD CONSTRAINT `galeri_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Constraints for table `kartu_keluarga`
--
ALTER TABLE `kartu_keluarga`
  ADD CONSTRAINT `kartu_keluarga_ibfk_1` FOREIGN KEY (`id_kepala_keluarga`) REFERENCES `warga` (`id_warga`),
  ADD CONSTRAINT `kartu_keluarga_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Constraints for table `mutasi`
--
ALTER TABLE `mutasi`
  ADD CONSTRAINT `mutasi_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Constraints for table `warga`
--
ALTER TABLE `warga`
  ADD CONSTRAINT `warga_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Constraints for table `warga_has_kartu_keluarga`
--
ALTER TABLE `warga_has_kartu_keluarga`
  ADD CONSTRAINT `warga_has_kartu_keluarga_ibfk_1` FOREIGN KEY (`id_warga`) REFERENCES `warga` (`id_warga`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `warga_has_kartu_keluarga_ibfk_2` FOREIGN KEY (`id_keluarga`) REFERENCES `kartu_keluarga` (`id_keluarga`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
