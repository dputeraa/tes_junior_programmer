-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Des 2023 pada 05.12
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fastprint`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` bigint(20) UNSIGNED NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `created_at`, `updated_at`) VALUES
(1, 'L QUEENLY', '2023-12-10 09:22:44', NULL),
(2, 'L MTH AKSESORIS (IM)', '2023-12-10 09:22:44', NULL),
(3, 'L MTH TABUNG (LK)', '2023-12-10 09:24:36', NULL),
(4, 'SP MTH SPAREPART (LK)', '2023-12-10 09:24:36', NULL),
(5, 'CI MTH TINTA LAIN (IM)', '2023-12-10 09:24:57', NULL),
(6, 'L MTH AKSESORIS (LK)', '2023-12-10 09:24:57', NULL),
(7, 'S MTH STEMPEL (IM)', '2023-12-10 09:25:15', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_12_09_054825_create_kategori_table', 1),
(6, '2023_12_09_054924_create_status_table', 1),
(7, '2023_12_09_061349_create_produk_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_produk` bigint(20) UNSIGNED NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `harga` int(11) NOT NULL,
  `kategori_id` bigint(20) UNSIGNED NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `harga`, `kategori_id`, `status_id`, `created_at`, `updated_at`) VALUES
(7, 'ALCOHOL GEL POLISH CLEANSER GP-CLN01', 12500, 1, 1, '2023-12-11 19:45:20', '2023-12-11 19:45:20'),
(8, 'ALUMUNIUM FOIL ALL IN ONE BULAT 23mm IM', 1000, 2, 1, '2023-12-11 19:45:56', '2023-12-11 19:45:56'),
(9, 'ALUMUNIUM FOIL ALL IN ONE BULAT 30mm IM', 1000, 2, 1, '2023-12-11 19:46:47', '2023-12-11 19:46:47'),
(10, 'ALUMUNIUM FOIL ALL IN ONE SHEET 250mm IM', 12500, 2, 2, '2023-12-11 19:47:49', '2023-12-11 19:47:49'),
(11, 'ALUMUNIUM FOIL HDPE/PE BULAT 23mm IM', 12500, 2, 1, '2023-12-11 19:48:35', '2023-12-11 19:48:35'),
(12, 'ALUMUNIUM FOIL HDPE/PE BULAT 30mm IM', 1000, 2, 1, '2023-12-11 19:49:00', '2023-12-11 19:49:00'),
(13, 'ALUMUNIUM FOIL HDPE/PE SHEET 250mm IM', 13000, 2, 2, '2023-12-11 19:49:22', '2023-12-11 19:49:22'),
(14, 'ALUMUNIUM FOIL PET SHEET 250mm IM', 1000, 2, 2, '2023-12-11 19:49:55', '2023-12-11 19:49:55'),
(15, 'ARM PENDEK MODEL U', 13000, 2, 1, '2023-12-11 19:50:24', '2023-12-11 19:50:24'),
(16, 'ARM SUPPORT KECIL', 13000, 3, 2, '2023-12-11 19:50:54', '2023-12-11 19:50:54'),
(17, 'ARM SUPPORT KOTAK PUTIH', 13000, 2, 2, '2023-12-11 19:51:22', '2023-12-11 19:51:22'),
(18, 'ARM SUPPORT PENDEK POLOS', 13000, 3, 1, '2023-12-11 19:51:51', '2023-12-11 19:51:51'),
(19, 'ARM SUPPORT S IM', 1000, 2, 2, '2023-12-11 19:53:06', '2023-12-11 19:53:06'),
(20, 'ARM SUPPORT T (IMPORT)', 13000, 2, 1, '2023-12-11 19:53:41', '2023-12-11 19:53:41'),
(21, 'ARM SUPPORT T - MODEL 1 ( LOKAL )', 10000, 3, 1, '2023-12-11 19:54:08', '2023-12-11 19:54:08'),
(22, 'BLACK LASER TONER FP-T3 (100gr)', 13000, 2, 2, '2023-12-11 19:54:41', '2023-12-11 19:54:41'),
(23, 'BODY PRINTER CANON IP2770', 500, 4, 1, '2023-12-11 19:55:06', '2023-12-11 19:55:06'),
(24, 'BODY PRINTER T13X', 15000, 4, 1, '2023-12-11 19:55:38', '2023-12-11 19:55:38'),
(25, 'BOTOL 1000ML BLUE KHUSUS UNTUK EPSON R1800/R800 - 4180 IM (T054920)', 10000, 5, 1, '2023-12-11 19:56:13', '2023-12-11 19:56:13'),
(26, 'BOTOL 1000ML CYAN KHUSUS UNTUK EPSON R1800/R800/R1900/R2000 - 4120 IM (T054220)', 10000, 5, 2, '2023-12-11 19:56:41', '2023-12-11 19:56:41'),
(27, 'BOTOL 1000ML GLOSS OPTIMIZER KHUSUS UNTUK EPSON R1800/R800/R1900/R2000/IX7000/MG6170 - 4100 IM (T054020)', 1500, 5, 1, '2023-12-11 19:57:05', '2023-12-11 19:57:05'),
(28, 'BOTOL 1000ML L.LIGHT BLACK KHUSUS UNTUK EPSON 2400 - 0599 IM', 1500, 5, 2, '2023-12-11 19:57:29', '2023-12-11 19:57:29'),
(29, 'BOTOL 1000ML LIGHT BLACK KHUSUS UNTUK EPSON 2400 - 0597 IM', 1500, 5, 2, '2023-12-11 19:57:54', '2023-12-11 19:57:54'),
(30, 'BOTOL 1000ML MAGENTA KHUSUS UNTUK EPSON R1800/R800/R1900/R2000 - 4140 IM (T054320)', 1000, 5, 1, '2023-12-11 19:58:18', '2023-12-11 19:58:18'),
(31, 'BOTOL 1000ML MATTE BLACK KHUSUS UNTUK EPSON R1800/R800/R1900/R2000 - 3503 IM (T054820)', 1500, 5, 2, '2023-12-11 19:58:40', '2023-12-11 19:58:40'),
(32, 'BOTOL 1000ML ORANGE KHUSUS UNTUK EPSON R1900/R2000 IM - 4190 (T087920)', 1500, 5, 1, '2023-12-11 19:59:00', '2023-12-11 19:59:00'),
(33, 'BOTOL 1000ML RED KHUSUS UNTUK EPSON R1800/R800/R1900/R2000 - 4170 IM (T054720)', 1000, 5, 2, '2023-12-11 19:59:22', '2023-12-11 19:59:22'),
(34, 'BOTOL 1000ML YELLOW KHUSUS UNTUK EPSON R1800/R800/R1900/R2000 - 4160 IM (T054420)', 1500, 5, 2, '2023-12-11 19:59:49', '2023-12-11 19:59:49'),
(35, 'BOTOL KOTAK 100ML LK', 1000, 6, 1, '2023-12-11 20:00:08', '2023-12-11 20:00:08'),
(36, 'BOTOL 10ML IM', 1000, 7, 2, '2023-12-11 20:00:29', '2023-12-11 20:00:29'),
(37, 'Quaerat quos laudantium.', 559, 1, 2, '2023-12-11 20:57:11', '2023-12-11 20:58:12'),
(38, 'Adipisci saepe sapiente.', 205, 7, 2, '2023-12-11 20:57:39', '2023-12-11 20:57:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `status`
--

CREATE TABLE `status` (
  `id_status` bigint(20) UNSIGNED NOT NULL,
  `nama_status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `status`
--

INSERT INTO `status` (`id_status`, `nama_status`, `created_at`, `updated_at`) VALUES
(1, 'Bisa Dijual', '2023-12-10 11:05:35', NULL),
(2, 'Tidak Bisa Dijual', '2023-12-10 11:05:35', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`),
  ADD KEY `produk_kategori_id_foreign` (`kategori_id`),
  ADD KEY `produk_status_id_foreign` (`status_id`);

--
-- Indeks untuk tabel `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id_status`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT untuk tabel `status`
--
ALTER TABLE `status`
  MODIFY `id_status` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `produk_kategori_id_foreign` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`id_kategori`),
  ADD CONSTRAINT `produk_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `status` (`id_status`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
