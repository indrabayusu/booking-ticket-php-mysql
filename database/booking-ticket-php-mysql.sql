-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Okt 2023 pada 14.45
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `booking-ticket-php-mysql`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `daftar_bus`
--

CREATE TABLE `daftar_bus` (
  `Id` int(100) NOT NULL,
  `Nama Bus` char(100) NOT NULL,
  `Kelas Bus` char(100) NOT NULL,
  `Harga Tiket` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `daftar_bus`
--

INSERT INTO `daftar_bus` (`Id`, `Nama Bus`, `Kelas Bus`, `Harga Tiket`) VALUES
(1, 'Karunia Bakti', 'Ekonomi', 135000),
(2, 'Harapan Jaya', 'Bisnis', 215000),
(3, 'Arimbi', 'Eksekutif', 370000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `penumpang_bus`
--

CREATE TABLE `penumpang_bus` (
  `Id` int(100) NOT NULL,
  `Nama Pemesan` char(100) NOT NULL,
  `Nomor Identitas` char(16) NOT NULL,
  `No. HP` char(20) NOT NULL,
  `Kelas Penumpang` char(100) NOT NULL,
  `Tanggal Keberangkatan` char(100) NOT NULL,
  `Jumlah Penumpang` int(100) NOT NULL,
  `Jumlah Penumpang Lansia` int(100) NOT NULL,
  `Harga Tiket` char(100) NOT NULL,
  `Total Bayar` char(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `penumpang_bus`
--

INSERT INTO `penumpang_bus` (`Id`, `Nama Pemesan`, `Nomor Identitas`, `No. HP`, `Kelas Penumpang`, `Tanggal Keberangkatan`, `Jumlah Penumpang`, `Jumlah Penumpang Lansia`, `Harga Tiket`, `Total Bayar`) VALUES
(69, 'Fajar', '3201232332128373', '085156497401', 'Bisnis', '2022-09-26', 2, 1, 'Rp. 300.000', 'Rp. 870.000'),
(70, 'Rizal', '3201232323332333', '0898727362363', 'Ekonomi', '2022-09-26', 1, 4, 'Rp. 200.000', 'Rp. 920.000'),
(71, 'asdasd', '2342342342342344', '34223423423', 'Eksekutif', '2023-09-28', 1, 0, 'Rp. 400.000', 'Rp. 400.000'),
(72, 'asdasd', '2342342342342344', '3214234234235', 'Ekonomi', '2023-09-30', 2, 1, 'Rp. 200.000', 'Rp. 580.000'),
(73, 'Faisal', '3XXXXXXXXXXXXXXX', '081234567899', 'Eksekutif', '2023-09-30', 1, 0, 'Rp. 400.000', 'Rp. 400.000');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `daftar_bus`
--
ALTER TABLE `daftar_bus`
  ADD PRIMARY KEY (`Id`);

--
-- Indeks untuk tabel `penumpang_bus`
--
ALTER TABLE `penumpang_bus`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `daftar_bus`
--
ALTER TABLE `daftar_bus`
  MODIFY `Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `penumpang_bus`
--
ALTER TABLE `penumpang_bus`
  MODIFY `Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
