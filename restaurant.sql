-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Bulan Mei 2024 pada 13.27
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurant`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_menu`
--

CREATE TABLE `kategori_menu` (
  `id_kategori` int(1) NOT NULL,
  `kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kategori_menu`
--

INSERT INTO `kategori_menu` (`id_kategori`, `kategori`) VALUES
(1, 'BestSeller'),
(2, 'Standard'),
(3, 'New');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `harga` int(25) NOT NULL,
  `ukuran` varchar(20) NOT NULL,
  `kategori` varchar(1) NOT NULL,
  `gambar` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`id`, `nama`, `harga`, `ukuran`, `kategori`, `gambar`) VALUES
(13, 'Es Teh Manis', 5000, 'Small', '2', '2bd453ed944bb9829799931394d4f891.png'),
(14, 'Ayam Paha Bawah', 12000, 'Small', '2', '6dfa9b23b7b92e84a04358b25e9c6995.png'),
(15, 'Ayam Paha Atas', 14000, 'Medium', '2', 'efb99acf4fd35ad59cf3b0ac89ff977e.png'),
(16, 'Ayam Dada', 14000, 'Medium', '2', '4daf05f01448cbf91505969ce96c362c.png'),
(17, 'Classic Burger', 14000, 'Small', '1', 'dbef498d18968ad36272394595c7e589.png'),
(18, 'Classic Cheeseburger', 14000, 'Small', '1', '7f1d41211c84e1b7745f42ecd0cfead6.png'),
(19, 'Paket Burgerin', 24000, 'Large', '3', 'a61f2f055977a52344bdaa7fd972ec4d.png'),
(20, 'French Fries', 8000, 'Small', '1', '5a123dff098c6093accc0176ba2dbe0d.png'),
(21, 'Mineral Water', 5000, 'Small', '2', '97837e4022a995c99128b86b1c87716f.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `riwayat_penjualan`
--

CREATE TABLE `riwayat_penjualan` (
  `id` int(11) NOT NULL,
  `tanggal_beli` varchar(11) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `total_harga` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `riwayat_penjualan`
--

INSERT INTO `riwayat_penjualan` (`id`, `tanggal_beli`, `Username`, `total_harga`) VALUES
(4, '2024-05-09', 'Teuku Vaickal Ri', 29000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(16) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(6) NOT NULL,
  `saldo` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `role`, `saldo`) VALUES
(14, 'customer', 'customer@mail.com', '$2y$10$c2eUW9oW0kkvu4Jxf2ZMtuLd7V7hiqXKkrBJOMyF6XLEZy/N6r1xK', 'user', 30000),
(15, 'admin', 'admin@mail.com', '$2y$10$I2tszpwpzhHk41tjsiCI1OK6LQyao6ceafL/zJwiFP3ESbG.Bzucq', 'admin', 0),
(20, 'Teuku Vaickal Ri', '15220658@bsi.ac.id', '$2y$10$ZKPspEPzaMmr3oEIcs7zBe/Eg5CSy/ihqQGZ6D7Qv4Xx86E.XiQvm', 'admin', 21000),
(21, 'Customer 2', '15220695@bsi.ac.id', '$2y$10$2VPXtZDBeUUMIoj6piWfa.ehifsjkoBlGCSQpI4cC1ePiv3uTHkm.', 'user', 50000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kategori_menu`
--
ALTER TABLE `kategori_menu`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `riwayat_penjualan`
--
ALTER TABLE `riwayat_penjualan`
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
-- AUTO_INCREMENT untuk tabel `kategori_menu`
--
ALTER TABLE `kategori_menu`
  MODIFY `id_kategori` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `riwayat_penjualan`
--
ALTER TABLE `riwayat_penjualan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
