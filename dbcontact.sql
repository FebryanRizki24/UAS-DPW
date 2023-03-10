-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Des 2022 pada 05.26
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbcontact`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `stok` varchar(100) NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id`, `nama`, `stok`, `gambar`) VALUES
(1, 'pomade', '10', 'shop1.png'),
(2, 'kaos', '10', 'shop2.png'),
(3, 'bedak rambut', '11', '63a6ddc9a3a73.jfif'),
(9, 'minyak', '30', '63a7cd52831dd.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `booking`
--

CREATE TABLE `booking` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `model` varchar(100) NOT NULL,
  `deskripsi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `booking`
--

INSERT INTO `booking` (`id`, `name`, `date`, `time`, `model`, `deskripsi`) VALUES
(21, 'dilan', '2022-12-23', '11:08:00', 'cepmek', 'asasa'),
(23, 'hasan', '2022-12-28', '00:00:00', 'mulet', 'mulet ya bang'),
(25, 'rizki', '2022-12-31', '19:00:00', 'botak', 'botak dengan samping gradasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `keluhan`
--

CREATE TABLE `keluhan` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `deskripsi` varchar(500) NOT NULL,
  `submit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `keluhan`
--

INSERT INTO `keluhan` (`id`, `email`, `subject`, `deskripsi`, `submit`) VALUES
(16, 'rizki@gmail.com', 'desain web', 'desain web anda sudah bagus', '25-12-2022');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `level`) VALUES
(7, 'febryan', 'oi@gmail.com', '$2y$10$XITlp.F1g4g8yZ.mD6zTT./3ELRhGsITEmeQt01h/pDWdLO7y3p6m', 'user'),
(8, 'user', 'oi@gmail.com', '$2y$10$1NrKQx.Ww/QV1zSCporFieQ8Oxtse0SH6TV6aQP2D5VYwGGSNQ5ky', 'user'),
(10, '111', 'namaku@mail.com', '$2y$10$lexp0vyMEOC64pkBS70EI.hjAtNAS7I7XV69OlMwRLBoyj3n1QrGG', 'user'),
(11, 'hai', 'hai', '$2y$10$OCGxn/KlE677NQaybkFE5.XQuqLZIH.m3DimpdyqQW.WD2bHDgqN2', 'user'),
(12, 'admin', 'admin@gmail.com', '$2y$10$YUZ3vAVLRhY6uFJUq7oWw.CDAMsrHQeUTOniGR88soYE2NgOLcqnK', 'admin'),
(13, 'siapa', 'siapa@gmail.com', '$2y$10$h2ijLTO7/CGtWarKvWQB6uN/qz2Mg6irH6SYn30OXjIidbnYLfQVq', 'user'),
(14, 'rizki', 'rizki@gmail.com', '$2y$10$OlevJzL5PPyYJFXGKzyeuuLWd5D5wOXrl1fTDF88/8qO4LOg5yGBy', 'user');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `keluhan`
--
ALTER TABLE `keluhan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `keluhan`
--
ALTER TABLE `keluhan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
