-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Waktu pembuatan: 07 Jun 2026 pada 07.26
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
-- Database: `suwanti`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `kd_kat` varchar(5) NOT NULL,
  `category_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `kd_kat`, `category_name`) VALUES
(1, 'K001', 'Makanan'),
(2, 'K002', 'Minuman'),
(3, 'K003', 'Skincare'),
(4, 'K004', 'Pakaian'),
(5, 'K005', 'Alat Tulis Kantor');

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `product_code` varchar(50) DEFAULT NULL,
  `product_name` varchar(150) DEFAULT NULL,
  `stock` int(11) NOT NULL,
  `min_stock` int(5) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `gambar` varchar(225) NOT NULL,
  `created_at` int(11) NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `category_id`, `product_code`, `product_name`, `stock`, `min_stock`, `price`, `gambar`, `created_at`, `update_at`) VALUES
(1, 5, 'P001', 'Pensil', 0, 4, 5000, '56fb04da61abc6f3b125d0f5673da584.jpg', 2147483647, '2026-05-31 16:20:27'),
(2, 5, 'P002', 'pulpen', 15, 10, 7000, '1db9b3b676afd37398a3e1766bc621b6.jpg', 2147483647, '2026-05-31 04:17:58'),
(3, 5, 'P003', 'Penghapus', 20, 15, 5000, '2f35e5bf10b40985607bd27d3eee9bdf.jpg', 2147483647, '2026-05-31 04:19:28'),
(4, 5, 'P004', 'Penggaris', 10, 4, 8000, 'c27a5d871608b2e74972ab06ad1d0442.jpg', 2147483647, '2026-05-31 04:20:45'),
(5, 1, 'P005', 'Kue Nastar', 50, 18, 50000, 'e8cf8fdde6bd26e3cd06be8a0b95fdea.jpg', 2147483647, '2026-05-31 04:24:33'),
(6, 1, 'P006', 'Seblak', 50, 20, 30000, 'dd7907168004f1c5b4bb6efa054c3531.jpg', 2147483647, '2026-05-31 04:26:34'),
(7, 1, 'P007', 'Nasi Goreng', 35, 20, 15000, 'c505c8ab0f7dbd12f4bbe2275d75f1a9.jpg', 2147483647, '2026-05-31 16:18:01'),
(8, 1, 'P008', 'Ayam Geprek', 20, 10, 15000, 'f6aa922e4c9dc22124e780b9d4d5e897.jpeg', 2147483647, '2026-05-31 04:30:16'),
(9, 2, 'P009', 'Es Teler', 40, 15, 10000, '7b51d8833c03896053cf5233e3bc0764.jpg', 2147483647, '2026-05-31 04:32:03'),
(10, 2, 'P010', 'Es Buah', 55, 15, 15000, 'dca31bc35999fc10190977e0a8199897.webp', 2147483647, '2026-05-31 16:17:08'),
(11, 2, 'P011', 'Es Teh Manis', 30, 10, 4000, '3ac18d272608bfbea75723559fd013a1.png', 2147483647, '2026-05-31 04:37:44'),
(12, 2, 'P012', 'Cappucino Cincau', 50, 20, 8000, 'fd6c99b5b1c734823f0732de5bf34691.jpg', 2147483647, '2026-05-31 04:39:05'),
(13, 3, 'P013', 'Compact Powder Azzura', 30, 5, 30000, 'cecfb89aa33e0887119abdaffed9d085.jpg', 2147483647, '2026-05-31 04:42:22'),
(14, 3, 'P014', 'Sunscreen Wardah', 40, 10, 35000, 'ed91a8e7375eab00c876e3fcc749caad.jpg', 2147483647, '2026-05-31 04:44:50'),
(15, 3, 'P015', 'Cushion Glad2glow', 30, 8, 90000, '1902a894bd816bc67345e7317699e2d0.jpg', 2147483647, '2026-05-31 04:46:40'),
(16, 3, 'P016', 'Face Wash Garnier', 30, 7, 40000, '96f3efea0d76650b46399b1abc1dfa7d.jpeg', 2147483647, '2026-05-31 04:48:40'),
(17, 4, 'P017', 'Kemeja', 30, 12, 60000, '4dd75d91eab25b618e2958684e1e93db.jpg', 2147483647, '2026-05-31 04:50:58'),
(18, 4, 'P018', 'Jaket ', 30, 9, 150000, 'edd91ba432fb82577bb193a5c50beaac.jpg', 2147483647, '2026-05-31 04:52:56'),
(19, 4, 'P019', 'Hoddie', 50, 10, 200000, '819879536d49130a8f8cff37b90d0d87.webp', 2147483647, '2026-05-31 04:54:16'),
(20, 4, 'P020', 'Baju Batik', 15, 5, 80000, '114036c070a697b36134f2d6d962269c.jpg', 2147483647, '2026-05-31 04:56:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `stock_logs`
--

CREATE TABLE `stock_logs` (
  `id` int(11) NOT NULL,
  `Product_id` int(11) DEFAULT NULL,
  `change_type` enum('ADD','EDIT','REDUCE') DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `stock_before` int(11) DEFAULT NULL,
  `stock_after` int(11) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `stock_logs`
--

INSERT INTO `stock_logs` (`id`, `Product_id`, `change_type`, `qty`, `stock_before`, `stock_after`, `note`, `created_at`, `created_by`) VALUES
(1, 0, 'REDUCE', 15, 19, 4, 'terjual', '2026-05-25 16:10:32', 1),
(2, 0, 'ADD', 16, 4, 20, 'barang masuk', '2026-05-25 16:11:23', 1),
(3, 10, 'ADD', 15, 40, 55, 'habis terjual', '2026-05-31 16:17:08', 1),
(4, 7, 'REDUCE', 15, 50, 35, 'terjual', '2026-05-31 16:18:01', 1),
(5, 1, 'REDUCE', 10, 10, 0, 'terjual', '2026-05-31 16:20:27', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` enum('admin','staff') DEFAULT 'staff',
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `is_active`, `created_at`) VALUES
(1, 'wanti', 'suwantiwanti882@gmail.com', '$2y$10$lauyApVMravr1kUINCOjeOLOyDq0lYr7YlVhsuLnR3VTQsXBtOaAq', 'admin', 1, '2026-05-25 11:29:52');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `stock_logs`
--
ALTER TABLE `stock_logs`
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
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `stock_logs`
--
ALTER TABLE `stock_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
