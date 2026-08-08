-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost:8889
-- Üretim Zamanı: 08 Ağu 2026, 14:26:10
-- Sunucu sürümü: 8.0.44
-- PHP Sürümü: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `qr_menu_sepete_ekle`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `forms`
--

CREATE TABLE `forms` (
  `id` bigint UNSIGNED NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kasas`
--

CREATE TABLE `kasas` (
  `id` bigint UNSIGNED NOT NULL,
  `tarih` date NOT NULL,
  `nakit_toplam` decimal(12,2) NOT NULL DEFAULT '0.00',
  `kredi_karti_toplam` decimal(12,2) NOT NULL DEFAULT '0.00',
  `yemek_karti_toplam` decimal(10,2) NOT NULL DEFAULT '0.00',
  `veresiye_toplam` decimal(10,2) NOT NULL DEFAULT '0.00',
  `genel_toplam` decimal(12,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `kasas`
--

INSERT INTO `kasas` (`id`, `tarih`, `nakit_toplam`, `kredi_karti_toplam`, `yemek_karti_toplam`, `veresiye_toplam`, `genel_toplam`, `created_at`, `updated_at`) VALUES
(3, '2026-07-29', 1580.00, 390.00, 0.00, 0.00, 1970.00, '2026-07-29 18:53:39', '2026-07-29 18:56:47'),
(4, '2026-07-30', 0.00, 280.00, 0.00, 0.00, 280.00, '2026-07-30 05:44:22', '2026-07-30 05:44:22'),
(5, '2026-08-01', 1250.00, 2905.00, 0.00, 0.00, 4155.00, '2026-08-01 07:20:57', '2026-08-01 08:42:54'),
(6, '2026-08-03', 1560.00, 1785.00, 0.00, 0.00, 3345.00, '2026-08-03 13:55:06', '2026-08-03 14:21:20'),
(7, '2026-08-04', 450.00, 1450.00, 0.00, 0.00, 1900.00, '2026-08-04 08:25:58', '2026-08-04 08:39:06'),
(8, '2026-08-06', 100.00, 50.00, 0.00, 0.00, 150.00, '2026-08-06 16:08:54', '2026-08-06 16:08:54'),
(9, '2026-08-07', 460.00, 1400.00, 0.00, 0.00, 1860.00, '2026-08-07 13:03:07', '2026-08-07 14:04:09'),
(10, '2026-08-08', 5210.00, 0.00, 0.00, 0.00, 5210.00, '2026-08-08 08:32:16', '2026-08-08 08:32:16');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kasa_islems`
--

CREATE TABLE `kasa_islems` (
  `id` bigint UNSIGNED NOT NULL,
  `tarih` date NOT NULL,
  `islem_saati` datetime DEFAULT NULL,
  `turu` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tutar` decimal(10,2) NOT NULL DEFAULT '0.00',
  `aciklama` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `kasa_islems`
--

INSERT INTO `kasa_islems` (`id`, `tarih`, `islem_saati`, `turu`, `tutar`, `aciklama`, `created_at`, `updated_at`) VALUES
(1, '2026-07-23', '2026-07-23 10:15:00', 'Nakit', 150.00, 'Masa 3 Tahsilat', '2026-07-23 11:35:13', '2026-07-23 11:35:13'),
(2, '2026-07-29', '2026-07-29 21:53:39', 'Nakit', 1580.00, 'masa 1 hesabı kapatıldı', '2026-07-29 18:53:39', '2026-07-29 18:53:39'),
(3, '2026-07-29', '2026-07-29 21:56:47', 'Kredi Kartı', 390.00, 'masa 2 hesabı kapatıldı', '2026-07-29 18:56:47', '2026-07-29 18:56:47'),
(4, '2026-07-30', '2026-07-30 08:44:22', 'Kredi Kartı', 280.00, 'masa 1 hesabı kapatıldı', '2026-07-30 05:44:22', '2026-07-30 05:44:22'),
(5, '2026-08-01', '2026-08-01 10:46:10', 'Kredi Kartı', 980.00, 'masa 2 hesabı kapatıldı', '2026-08-01 07:46:10', '2026-08-01 07:46:10'),
(6, '2026-08-01', '2026-08-01 10:46:21', 'Kredi Kartı', 1465.00, 'masa 3 hesabı kapatıldı', '2026-08-01 07:46:21', '2026-08-01 07:46:21'),
(7, '2026-08-01', '2026-08-01 10:46:26', 'Nakit', 280.00, 'masa4 hesabı kapatıldı', '2026-08-01 07:46:26', '2026-08-01 07:46:26'),
(8, '2026-08-01', '2026-08-01 11:11:39', 'Nakit', 970.00, 'masa 2 hesabı kapatıldı', '2026-08-01 08:11:39', '2026-08-01 08:11:39'),
(9, '2026-08-01', '2026-08-01 11:12:00', 'Kredi Kartı', 460.00, 'masa 1 hesabı kapatıldı', '2026-08-01 08:12:00', '2026-08-01 08:12:00'),
(10, '2026-08-03', '2026-08-03 16:55:06', 'Nakit', 1560.00, 'masa 2 hesabı kapatıldı', '2026-08-03 13:55:06', '2026-08-03 13:55:06'),
(11, '2026-08-03', '2026-08-03 17:21:20', 'Kredi Kartı', 1785.00, 'masa 2 hesabı kapatıldı', '2026-08-03 14:21:20', '2026-08-03 14:21:20'),
(13, '2026-08-04', '2026-08-04 14:15:00', 'Kredi Kartı', 1450.00, 'VIP Balkon 1 - Hesabı Kapattı', '2026-08-04 08:39:06', '2026-08-04 08:39:06'),
(14, '2026-08-04', '2026-08-04 14:30:00', 'Nakit', 450.00, 'Masa 2 - Ön Ödeme Alındı', '2026-08-04 08:39:06', '2026-08-04 08:39:06'),
(15, '2026-08-06', '2026-08-06 14:30:00', 'Nakit', 100.00, 'Masa 10 Hesap Ödemesi', '2026-08-06 16:08:54', '2026-08-06 16:08:54'),
(16, '2026-08-07', '2026-08-07 16:03:07', 'Kredi Kartı', 1400.00, 'VIP Balkon 1 hesabı kapatıldı', '2026-08-07 13:03:07', '2026-08-07 13:03:07'),
(17, '2026-08-07', '2026-08-07 17:04:09', 'Nakit', 460.00, 'masa4 hesabı kapatıldı', '2026-08-07 14:04:09', '2026-08-07 14:04:09'),
(18, '2026-08-08', '2026-08-08 11:32:16', 'Nakit', 5210.00, 'masa4 hesabı kapatıldı', '2026-08-08 08:32:16', '2026-08-08 08:32:16');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `masas`
--

CREATE TABLE `masas` (
  `id` bigint UNSIGNED NOT NULL,
  `isim` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `durum` tinyint NOT NULL DEFAULT '0' COMMENT '0: Boş, 1: Dolu',
  `guncel_tutar` decimal(10,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `masas`
--

INSERT INTO `masas` (`id`, `isim`, `slug`, `durum`, `guncel_tutar`, `created_at`, `updated_at`) VALUES
(11, 'masa 1', 'masa-1-vkve', 1, 150.00, '2026-07-29 18:07:15', '2026-08-06 16:28:51'),
(12, 'masa 2', 'masa-2-dpkw', 1, 2290.00, '2026-07-29 18:09:42', '2026-08-08 08:29:31'),
(13, 'masa 3', 'masa-3-d68u', 1, 430.00, '2026-07-29 18:27:43', '2026-08-07 13:29:15'),
(14, 'masa4', 'masa4-fbgk', 0, 0.00, '2026-07-29 18:46:17', '2026-08-08 08:32:16'),
(15, 'VIP Balkon 1', 'vip-balkon-1-72df', 0, 0.00, '2026-08-04 08:12:39', '2026-08-07 13:03:07'),
(16, 'Bahçe 5', 'bahce-5-7k2j', 0, 0.00, '2026-08-04 08:12:39', '2026-08-06 11:57:05'),
(17, 'teras 1', 'teras-1-we8j', 0, 0.00, '2026-08-04 08:18:33', '2026-08-04 08:18:33'),
(18, 'masa 10', 'masa-10-n3nv', 1, 150.00, '2026-08-06 16:06:39', '2026-08-06 16:23:15');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `masa_siparis`
--

CREATE TABLE `masa_siparis` (
  `id` bigint UNSIGNED NOT NULL,
  `masa_isim` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `masa_id` bigint UNSIGNED DEFAULT NULL,
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `urun_adi` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `adet` int NOT NULL DEFAULT '1',
  `fiyat` decimal(10,2) NOT NULL DEFAULT '0.00',
  `ozellikler` text COLLATE utf8mb4_unicode_ci,
  `durum` tinyint NOT NULL DEFAULT '0' COMMENT '0: Bekliyor, 1: Onaylandı, 2: İptal',
  `siparis_saati` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `masa_siparis`
--

INSERT INTO `masa_siparis` (`id`, `masa_isim`, `masa_id`, `session_id`, `urun_adi`, `adet`, `fiyat`, `ozellikler`, `durum`, `siparis_saati`, `created_at`, `updated_at`) VALUES
(54, 'masa 10', NULL, NULL, 'Çay', 2, 75.00, NULL, 0, '2026-08-06 19:23:15', '2026-08-06 16:23:15', '2026-08-06 16:23:15'),
(57, 'masa 1', NULL, NULL, 'Çay', 2, 75.00, NULL, 0, '2026-08-06 19:28:51', '2026-08-06 16:28:51', '2026-08-06 16:28:51'),
(63, 'masa 3', 13, 'cGCSI65JfXFWNHRIPQVKilBydmGeB5gi0OP2SsTr', 'CHOCOLATE MILKSHAKE', 1, 280.00, '[]', 0, '2026-08-07 16:28:05', '2026-08-07 13:28:05', '2026-08-07 13:28:05'),
(65, 'masa 3', 13, 'nWgfA1ntV6pdRE9tmLQBggTIystwRkSAYZVQin68', 'ESPRESSO', 1, 150.00, '[]', 0, '2026-08-07 16:29:15', '2026-08-07 13:29:15', '2026-08-07 13:29:15'),
(67, 'masa 2', 12, '6aZHrXr4CyQxiY8RsovXhKviynk9A4PMl6q59mmC', 'PİLAV ÜSTÜ ET DÖNER', 1, 650.00, '[\"Soğansız\"]', 0, '2026-08-07 16:55:04', '2026-08-07 13:55:04', '2026-08-07 13:55:04'),
(68, 'masa 2', 12, 'B4V1iFcVpyaauZTOv2ADTIeI4be1PlRYxCNKC14D', 'HOT CHOCOLATE', 1, 240.00, '[]', 0, '2026-08-07 16:55:24', '2026-08-07 13:55:24', '2026-08-07 13:55:24'),
(83, 'masa 2', 12, 'ukFPFe8oV156WjFNypjdmW38NfypcleHjzCKktH8', 'CHOCOLATE MILKSHAKE', 5, 280.00, '[]', 0, '2026-08-08 11:29:31', '2026-08-08 08:29:31', '2026-08-08 08:29:31');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2021_07_06_095005_create_urun_karts_table', 1),
(2, '2021_07_07_072755_create_urun_grubus_table', 1),
(15, '2014_10_12_000000_create_users_table', 2),
(16, '2014_10_12_100000_create_password_resets_table', 2),
(17, '2019_08_19_000000_create_failed_jobs_table', 2),
(18, '2021_07_26_135652_create_ayars_table', 2),
(19, '2021_07_28_120402_create_qr_code_karts_table', 3),
(21, '2021_07_28_133230_create_qr_code_cagris_table', 4),
(22, '2023_12_14_175833_create_forms_table', 5),
(23, '2026_07_16_134726_add_settings_columns_to_t_ayar_table', 5),
(24, '2026_07_16_142134_add_calories_and_time_to_t_urunkart_table', 6),
(25, '2026_07_17_133913_add_one_cikan_to_t_urunkart_table', 7),
(26, '2026_07_17_143144_add_has_lactose_to_t_urunkart_table', 8),
(27, '2026_07_22_151003_create_masas_table', 9),
(28, '2026_07_22_151006_create_kasas_table', 9),
(29, '2026_07_23_141644_create_masa_siparis_table', 10),
(30, '2026_07_23_141646_create_kasa_islems_table', 10),
(31, '2026_07_25_111129_add_api_token_to_users_table', 11),
(32, '2026_07_28_211320_add_options_to_t_urunkart_table', 12),
(33, '2026_07_29_204954_add_fields_to_masas_and_siparis_tables', 13),
(34, '2026_07_29_213924_add_ozellikler_to_masa_siparis_table', 14),
(35, '2026_07_31_144742_add_google_review_url_to_t_ayar_table', 15),
(36, '2026_07_31_144447_make_baslik_nullable_in_t_ayar_table', 16),
(37, '2026_07_31_184513_add_yemek_karti_veresiye_to_kasas_table', 17),
(38, '2026_08_07_122624_add_gps_fields_to_t_ayar_table', 18),
(39, '2026_08_07_123738_add_session_timeout_to_t_ayar_table', 19);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `t_anagrup`
--

CREATE TABLE `t_anagrup` (
  `id` int NOT NULL,
  `anaGrup` varchar(100) NOT NULL,
  `siraNo` int NOT NULL,
  `anaGrupResimPath` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Tablo döküm verisi `t_anagrup`
--

INSERT INTO `t_anagrup` (`id`, `anaGrup`, `siraNo`, `anaGrupResimPath`) VALUES
(1, 'İçecekler', 1, 'categories/drinks.png'),
(2, 'Kahvaltılıklar', 2, 'categories/breakfast.png'),
(3, 'Yiyecekler', 3, 'categories/food.png'),
(4, 'Başlangıçlar', 4, 'categories/starters.png'),
(5, 'Tatlılar', 5, 'categories/desserts.png'),
(6, 'Alkollü İçecekler', 6, 'categories/alcohol.png');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `t_ayar`
--

CREATE TABLE `t_ayar` (
  `id` bigint UNSIGNED NOT NULL,
  `logo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `baslik` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slogan` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adres` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `google_map_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `instagram_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wifi_ssid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wifi_password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `karsilama_gorsel` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `para_birimi` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '₺',
  `kdv_orani` int NOT NULL DEFAULT '20',
  `menu_durumu` tinyint(1) NOT NULL DEFAULT '1',
  `coklu_dil_aktif` tinyint(1) NOT NULL DEFAULT '1',
  `google_review_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_gps_check_active` tinyint(1) NOT NULL DEFAULT '0',
  `session_timeout_minutes` int NOT NULL DEFAULT '120'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `t_ayar`
--

INSERT INTO `t_ayar` (`id`, `logo`, `url`, `baslik`, `slogan`, `favicon`, `telefon`, `adres`, `google_map_url`, `instagram_url`, `whatsapp_number`, `wifi_ssid`, `wifi_password`, `karsilama_gorsel`, `para_birimi`, `kdv_orani`, `menu_durumu`, `coklu_dil_aktif`, `google_review_url`, `latitude`, `longitude`, `is_gps_check_active`, `session_timeout_minutes`) VALUES
(1, 'settings/i18KfahyR0ENK7ktBdY60YO6oQNSVempEzFQHwj3.png', 'https://centercafe.mikaleyazilim.com', 'Center Cafe', 'Lezzetin yeni adresi', NULL, '0555 555 55 55', 'mikale yazılım', 'https://www.google.com/maps/place/Ayasofya+Camii/@41.008587,28.977986,17z', 'https://instagram.com/centercafe', '0555 555 55 55', 'centerkafe', 'centercafe', 'settings/MKBfxxQLzbtpELc1VhzJs2wQrtRqRw4DHs1xjHal.jpg', '₺', 20, 0, 0, 'https://g.page/r/CAbC123XYZ/review', '41.008587', '28.977986', 0, 2);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `t_qrcodecagri`
--

CREATE TABLE `t_qrcodecagri` (
  `id` bigint UNSIGNED NOT NULL,
  `Masa_id` int NOT NULL,
  `QRCode` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Masaismi` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Personel_id` int NOT NULL,
  `Cagri_zamani` datetime NOT NULL,
  `Status` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `t_qrcodecagri`
--

INSERT INTO `t_qrcodecagri` (`id`, `Masa_id`, `QRCode`, `Masaismi`, `Personel_id`, `Cagri_zamani`, `Status`) VALUES
(1, 1, '3213248946', 'MASA 33', 0, '2021-07-28 17:08:24', 1),
(3, 1, '3213248946', 'MASA 33', 0, '2021-07-28 17:09:31', 1),
(4, 1, '3213248946', 'MASA 33', 0, '2021-07-28 17:17:44', 1),
(5, 12, 'masa-2-dpkw', 'masa 2', 0, '2026-08-01 13:02:08', 1),
(6, 12, 'masa-2-dpkw', 'masa 2', 0, '2026-08-01 13:07:42', 1),
(7, 12, 'masa-2-dpkw', 'masa 2', 0, '2026-08-03 19:54:48', 1),
(8, 12, 'masa-2-dpkw', 'masa 2', 0, '2026-08-03 20:28:05', 1),
(9, 12, 'masa-2-dpkw', 'masa 2', 0, '2026-08-03 20:49:31', 1),
(10, 11, 'masa-1-vkve', 'masa 1', 0, '2026-08-04 14:28:22', 1),
(11, 12, 'masa-2-dpkw', 'masa 2', 0, '2026-08-04 14:29:11', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `t_qrcodekart`
--

CREATE TABLE `t_qrcodekart` (
  `id_QRCode` bigint UNSIGNED NOT NULL,
  `QRCode` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Cari_id` int NOT NULL,
  `QRTur` int NOT NULL,
  `KullaniciParola` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Masa_id` int NOT NULL,
  `Masaismi` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `MusteriAd` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `KullaniciAd` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Personel_id` int NOT NULL,
  `Status` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `t_qrcodekart`
--

INSERT INTO `t_qrcodekart` (`id_QRCode`, `QRCode`, `Cari_id`, `QRTur`, `KullaniciParola`, `Masa_id`, `Masaismi`, `MusteriAd`, `KullaniciAd`, `Personel_id`, `Status`) VALUES
(1, '3213248946', 1, 1, '', 1, 'MASA 33', '', '', 0, 1),
(2, 'masa-2-dpkw', 1, 1, '', 12, 'masa 2', '', '', 0, 1),
(3, 'masa-3-d68u', 1, 1, '', 13, 'masa 3', '', '', 0, 1),
(4, 'masa-1-vkve', 1, 1, '', 11, 'masa 1', '', '', 0, 1),
(5, 'teras-1-we8j', 1, 1, '', 17, 'teras 1', '', '', 0, 1),
(6, 'masa4-fbgk', 1, 1, '', 14, 'masa4', '', '', 0, 1),
(7, 'vip-balkon-1-72df', 1, 1, '', 15, 'VIP Balkon 1', '', '', 0, 1),
(8, 'bahce-5-7k2j', 1, 1, '', 16, 'Bahçe 5', '', '', 0, 1),
(9, 'masa-10-n3nv', 1, 1, '', 18, 'masa 10', '', '', 0, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `t_urungrubu`
--

CREATE TABLE `t_urungrubu` (
  `id` bigint UNSIGNED NOT NULL,
  `UrunGrubu_id` int NOT NULL,
  `Sirano` int NOT NULL,
  `Urungrubu` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Dil_id` int DEFAULT NULL,
  `UrunGrubuResimPath` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AnaGrup` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `t_urungrubu`
--

INSERT INTO `t_urungrubu` (`id`, `UrunGrubu_id`, `Sirano`, `Urungrubu`, `Dil_id`, `UrunGrubuResimPath`, `AnaGrup`) VALUES
(2, 49, 0, 'L', NULL, '', ''),
(3, 45, 43, 'İMPORT VE LOCAL', NULL, '', '6'),
(4, 1, 1, 'Sıcak İçecekler', 1, '', '1'),
(5, 7, 3, 'BEERS', NULL, '', '6'),
(6, 44, 4, 'HOT DRINKS', NULL, '', 'İçecekler'),
(7, 36, 5, 'WINES', NULL, '', '6'),
(8, 2, 6, 'ICED COFFES', NULL, '', 'İçecekler'),
(9, 5, 7, 'MILKSHAKES', NULL, '', 'İçecekler'),
(10, 3, 8, 'FROZEN DRINKS', NULL, '', 'İçecekler'),
(11, 6, 9, 'MOCTAILS', NULL, '', 'İçecekler'),
(12, 9, 10, 'ALL DAY BREAKFAST', NULL, '', '2'),
(13, 11, 11, 'OMELETTE', NULL, '', '2'),
(14, 10, 12, 'EGG MENU', NULL, '', '2'),
(15, 26, 13, 'HOT STARTERS', NULL, '', '4'),
(16, 24, 14, 'LIGHT LUNCH', NULL, '', '3'),
(17, 23, 15, 'BURGERS', NULL, '', '3'),
(18, 43, 16, 'DÜRÜMLER', NULL, '', '3'),
(19, 27, 17, 'COLD STARTERS', NULL, '', '4'),
(20, 18, 18, 'DONER KEBAP', NULL, '', '3'),
(21, 46, 19, 'IZGARALAR', NULL, '', '3'),
(22, 31, 20, 'CHICKEN MEALS', NULL, '', '3'),
(23, 29, 21, 'SPECIALS', NULL, '', ''),
(24, 30, 22, 'STEAKS', NULL, '', '3'),
(25, 20, 23, 'PİDE', NULL, '', '3'),
(26, 21, 24, 'PIZZAS', NULL, '', '3'),
(27, 22, 25, 'PASTAS', NULL, '', '3'),
(28, 33, 26, 'VEGETERIANS', NULL, '', '3'),
(29, 32, 27, 'SEA FOODS', NULL, '', '3'),
(30, 19, 28, 'KIDS MENU', NULL, '', '3'),
(31, 28, 29, 'SALADS', NULL, '', '4'),
(32, 25, 30, 'SIDE ORDERS', NULL, '', '4'),
(33, 34, 31, 'DESSERTS', NULL, '', '5'),
(34, 35, 32, 'ICE CREAM', NULL, '', '5'),
(35, 40, 33, 'EXTRA', NULL, '', 'İçecekler'),
(36, 12, 34, 'COOKTAILS', NULL, '', '6'),
(37, 13, 35, 'DAIQUIRI', NULL, '', '6'),
(38, 14, 36, 'FROZEN WITH ALCOHOL', NULL, '', '6'),
(39, 15, 37, 'MOJITOS', NULL, '', '6'),
(40, 16, 38, 'SHOTS', NULL, '', '6'),
(41, 17, 39, 'ALCOLIC COFFES', NULL, '', '6'),
(42, 8, 40, 'SPIRITS', NULL, '', ''),
(43, 50, 42, 'tatlılar', NULL, NULL, ''),
(45, 51, 41, 'tatlılar', NULL, NULL, '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `t_urunkart`
--

CREATE TABLE `t_urunkart` (
  `id` bigint UNSIGNED NOT NULL,
  `Urun_id` int DEFAULT NULL,
  `UrunTip` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `UrunKod` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `UrunAd` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `UrunAdKisa` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `UrunAciklama` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `alerjenler` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `UrunGrubu` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `UrunGrubu_id` int DEFAULT NULL,
  `FixFiyat` double DEFAULT NULL,
  `SiraNo` int NOT NULL DEFAULT '0',
  `P_Yarim` double DEFAULT NULL,
  `P_Birbucuk` double DEFAULT NULL,
  `P_Duble` double DEFAULT NULL,
  `Porsiyon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ExtraOzellik` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Barkod` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `UrunBirim` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FixFiyat2` double DEFAULT NULL,
  `FixFiyat3` double DEFAULT NULL,
  `Departman` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `UrunResimPath` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `one_cikan` tinyint(1) NOT NULL DEFAULT '0',
  `AltGrup` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Ch_Gram` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Upd_Tarih` datetime NOT NULL DEFAULT '2021-01-01 00:00:00',
  `CokSatan` int DEFAULT NULL,
  `textraozellik` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `P_Tanim` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `kalori` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hazirlanma_suresi` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `has_lactose` tinyint(1) NOT NULL DEFAULT '0',
  `malzemeler` json DEFAULT NULL,
  `ekstra_soslar` json DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `t_urunkart`
--

INSERT INTO `t_urunkart` (`id`, `Urun_id`, `UrunTip`, `UrunKod`, `UrunAd`, `UrunAdKisa`, `UrunAciklama`, `alerjenler`, `UrunGrubu`, `UrunGrubu_id`, `FixFiyat`, `SiraNo`, `P_Yarim`, `P_Birbucuk`, `P_Duble`, `Porsiyon`, `ExtraOzellik`, `Barkod`, `UrunBirim`, `FixFiyat2`, `FixFiyat3`, `Departman`, `UrunResimPath`, `one_cikan`, `AltGrup`, `Ch_Gram`, `Upd_Tarih`, `CokSatan`, `textraozellik`, `P_Tanim`, `kalori`, `hazirlanma_suresi`, `has_lactose`, `malzemeler`, `ekstra_soslar`) VALUES
(337, 1, NULL, '000303', 'COLA', NULL, 'Cola', NULL, 'COLD DRINKS', 1, 130, 5, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/337.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'Zero,Buzlu,Large,Light,limonlu dilimli,Kutu', '', '400', '15 dk', 0, NULL, NULL),
(338, 3, NULL, '000304', 'SPRITE', NULL, 'Sprite', NULL, 'COLD DRINKS', 1, 130, 16, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/338.jpg', 1, NULL, NULL, '2021-01-01 00:00:00', NULL, 'Large,Buzlu', '', NULL, NULL, 0, NULL, NULL),
(339, 4, NULL, '000305', 'FANTA', NULL, 'Fanta', NULL, 'COLD DRINKS', 1, 130, 6, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/339.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'Large,Buzlu', '', NULL, NULL, 0, NULL, NULL),
(340, 5, NULL, '000005', 'ICE TEA', NULL, 'Ice Tea', NULL, 'COLD DRINKS', 1, 130, 10, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/340.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'Large,Buzlu,Şeftali,Mango,Limon,Karpuz', '', NULL, NULL, 0, NULL, NULL),
(341, 6, NULL, '000006', 'TONIC WATER', NULL, 'Tonic Water', NULL, 'COLD DRINKS', 1, 130, 18, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/341.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, NULL, NULL),
(342, 7, NULL, '000007', 'MINERAL WATER', NULL, 'Mineral su', NULL, 'COLD DRINKS', 1, 60, 12, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/342.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'Elmalı,Limonlu,ÇÖRÇİL', '', NULL, NULL, 0, NULL, NULL),
(343, 10, NULL, '000010', 'RED BULL', NULL, 'Enerji içeceği', NULL, 'COLD DRINKS', 1, 180, 13, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/343.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, NULL, NULL),
(344, 11, NULL, '000011', 'LİMONATA', NULL, 'Limonata', NULL, 'COLD DRINKS', 1, 130, 11, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/344.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, NULL, NULL),
(345, 12, NULL, '000012', 'SOĞUK ELMA ÇAYI', NULL, 'Elma Çayı', NULL, 'COLD DRINKS', 1, 130, 15, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/345.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, NULL, NULL),
(346, 13, NULL, '000013', 'AYRAN', NULL, 'ayran', NULL, 'COLD DRINKS', 1, 60, 1, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/346.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'Duble', '', NULL, NULL, 0, NULL, NULL),
(347, 14, NULL, '000014', 'SU', NULL, 'Su', NULL, 'COLD DRINKS', 1, 50, 17, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/347.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'Large,Buzlu,Dışardan', '', NULL, NULL, 0, NULL, NULL),
(348, 16, NULL, '000016', 'FRESH ORENGE JUICES', NULL, 'Portakal suyu', NULL, 'COLD DRINKS', 1, 220, 7, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/348.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, NULL, NULL),
(349, 17, NULL, '000017', 'ICED COFFE LATTE', NULL, 'Kahve, süt, buz, şeker (isteğe bağlı)', NULL, 'ICED COFFES', 2, 250, 2, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/349.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 1, '[\"Kahve\", \"Süt\", \"Buz\", \"Şeker\"]', NULL),
(350, 18, NULL, '000018', 'ICED COFFEE CARAMEL LATTE', NULL, 'Kahve, süt, karamel şurubu, buz, şeker (isteğe bağlı)', NULL, 'ICED COFFES', 2, 280, 5, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/350.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 1, '[\"Kahve\", \"Süt\", \"Karamel Şurubu\", \"Buz\", \"Şeker\"]', NULL),
(351, 19, NULL, '000019', 'ICED COFFE MOCHA', NULL, 'Kahve, süt, çikolata şurubu, buz, şeker (isteğe bağlı)', 'süt', 'ICED COFFES', 2, 280, 3, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/351.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 1, '[\"Kahve\", \"Süt\", \"Çikolata Şurubu\", \"Buz\", \"Şeker\"]', NULL),
(352, 20, NULL, '000020', 'ICED COFFE AMERICANO', NULL, 'Kahve, Su, Buz', NULL, 'ICED COFFES', 2, 250, 1, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/352.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Kahve\", \"Su\", \"Buz\"]', NULL),
(353, 21, NULL, '000021', 'ICED COFFE WITH ICE CREAM', NULL, 'Kahve, süt, dondurma, buz, şeker (isteğe bağlı)', NULL, 'ICED COFFES', 2, 330, 4, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/353.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 1, '[\"Kahve\", \"Süt\", \"Dondurma\", \"Buz\", \"Şeker\"]', NULL),
(354, 22, NULL, '000022', 'FROZEN STRAWBERRY', NULL, 'Çilek', NULL, 'FROZEN DRINKS', 3, 290, 3, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/354.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, NULL, NULL),
(355, 23, NULL, '000023', 'FROZEN WATERMELON', NULL, 'Kavun, su', NULL, 'FROZEN DRINKS', 3, 290, 4, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/355.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Kavun\", \"Su\"]', NULL),
(356, 24, NULL, '000024', 'FROZEN BANANA', NULL, 'Muz', NULL, 'FROZEN DRINKS', 3, 290, 1, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/356.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, NULL, NULL),
(357, 25, NULL, '000025', 'FROZEN RASPBERRY', NULL, 'Buzlu ahududu', NULL, 'FROZEN DRINKS', 3, 290, 2, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/357.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, NULL, NULL),
(358, 26, NULL, '000026', 'TURKISH COFFEE', NULL, 'Kahve, su', NULL, 'HOT DRINKS', 44, 120, 15, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/358.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'Duble,SADE,ŞEKERLİ,ORTA', '', NULL, NULL, 0, '[\"Kahve\", \"Su\"]', NULL),
(359, 27, NULL, '000027', 'ESPRESSO', NULL, 'Kahve çekirdekleri', NULL, 'HOT DRINKS', 44, 150, 6, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/359.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'Double', '', NULL, NULL, 0, NULL, NULL),
(360, 29, NULL, '000029', 'AMERICANO', NULL, 'Kahve, Su', NULL, 'HOT DRINKS', 44, 210, 1, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/360.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'YANINDA SÜT,PAKET', '', NULL, NULL, 0, '[\"Kahve\", \"Su\"]', NULL),
(361, 30, NULL, '000030', 'CAPPUCCINO', NULL, 'Espresso, süt, süt köpüğü', NULL, 'HOT DRINKS', 44, 240, 4, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/361.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'EXTRA SHOT,VANİLYA,ÇİKOLATA,KARAMEL', '', NULL, NULL, 1, '[\"Espresso\", \"Süt\", \"Süt Köpüğü\"]', NULL),
(362, 31, NULL, '000031', 'LATTE', NULL, 'Espresso, süt, süt köpüğü', NULL, 'HOT DRINKS', 44, 250, 12, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/362.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, ',KARAMEL,ÇİKOLATA,EXTRA SHOT,VANİLYA,', '', NULL, NULL, 1, '[\"Espresso\", \"Süt\", \"Süt Köpüğü\"]', NULL),
(363, 32, NULL, '000032', 'HOT CHOCOLATE', NULL, 'Süt, kakao tozu, şeker, vanilya özütü, tuz, krema (laktoz)', NULL, 'HOT DRINKS', 44, 240, 10, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/363.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 1, '[\"Süt\", \"Kakao Tozu\", \"Şeker\", \"Vanilya Özütü\", \"Tuz\", \"Krema\"]', NULL),
(364, 33, NULL, '000033', 'NESCAFE', NULL, 'Kahve', NULL, 'HOT DRINKS', 44, 180, 14, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/364.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'Sade,Sütlü', '', NULL, NULL, 0, NULL, NULL),
(365, 34, NULL, '000034', 'TURKISH TEA', NULL, 'Çay', NULL, 'HOT DRINKS', 44, 80, 16, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/365.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'Double', '', NULL, NULL, 0, NULL, NULL),
(366, 35, NULL, '000035', 'LYNOS TEA', NULL, 'bitki özleri, şeker, doğal aroma, ', NULL, 'HOT DRINKS', 44, 140, 13, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/366.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'BARRYS', '', NULL, NULL, 0, '[\"Bitki Özleri\", \"Şeker\", \"Doğal Aroma\"]', NULL),
(367, 36, NULL, '000036', 'ENGLISH TEA', NULL, 'Siyah çay', NULL, 'HOT DRINKS', 44, 140, 5, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/367.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, NULL, NULL),
(368, 37, NULL, '000037', 'APPLE TEA', NULL, 'Elma, su, şeker, çay yaprağı.', NULL, 'HOT DRINKS', 44, 90, 2, 0, 0, 0, '1', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/368.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'Double,İKRAM', '0', NULL, NULL, 0, '[\"Elma\", \"Su\", \"Şeker\", \"Çay Yaprağı\"]', NULL),
(369, 38, NULL, '000038', 'HERBAL TEA', NULL, 'Kuruyemişler, bitki özleri, su', NULL, 'HOT DRINKS', 44, 90, 9, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/369.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'yeşil çay,nane limon,papatya,ıhlamur,ada çayı,kuşburnu', '', NULL, NULL, 0, '[\"Kuruyemişler\", \"Bitki Özleri\", \"Su\"]', NULL),
(370, 39, NULL, '000039', 'VANILLA MILKSHAKE', NULL, 'Süt, vanilya dondurma, şeker, vanilya özü, krema (laktoz)', NULL, 'MILKSHAKES', 5, 280, 4, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/370.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 1, '[\"Süt\", \"Vanilya Dondurma\", \"Şeker\", \"Vanilya Özü\", \"Krema\"]', NULL),
(371, 40, NULL, '000040', 'STRAWBERRY MILKSHAKE', NULL, 'Çilek, süt, dondurma, şeker, vanilya özü', NULL, 'MILKSHAKES', 5, 280, 3, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/371.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 1, '[\"Çilek\", \"Süt\", \"Dondurma\", \"Şeker\", \"Vanilya Özü\"]', NULL),
(372, 41, NULL, '000041', 'CHOCOLATE MILKSHAKE', NULL, 'Süt, kakao tozu, şeker, vanilya dondurma, çikolata sosu, krema (laktoz)', NULL, 'MILKSHAKES', 9, 280, 1, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/372.jpg', 1, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 1, '[\"Süt\", \"Kakao Tozu\", \"Şeker\", \"Vanilya Dondurma\", \"Çikolata Sosu\", \"Krema\"]', NULL),
(373, 42, NULL, '000042', 'BANANA MILKSHAKE', NULL, 'Muz, süt, şeker, vanilya dondurma, krema (laktoz)', NULL, 'MILKSHAKES', 5, 280, 1, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/373.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 1, '[\"Muz\", \"Süt\", \"Şeker\", \"Vanilya Dondurma\", \"Krema\"]', NULL),
(374, 43, NULL, '000043', 'OREOLOCO MILKSHAKE', NULL, 'Süt, dondurma, Oreo bisküvi, şeker, vanilya özütü, çikolata sosu, krema, tuz.', NULL, 'MILKSHAKES', 5, 280, 2, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/374.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 1, '[\"Süt\", \"Dondurma\", \"Oreo Bisküvi\", \"Şeker\", \"Vanilya Özütü\", \"Çikolata Sosu\", \"Krema\", \"Tuz\"]', NULL),
(375, 44, NULL, '000044', 'SHIRLEY TEMPLE', NULL, 'Zencefil gazozu, nar suyu, limon suyu, maraschino kirazı, buz', NULL, 'MOCTAILS', 6, 290, 3, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/375.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Zencefil Gazozu\", \"Nar Suyu\", \"Limon Suyu\", \"Maraschino Kirazı\", \"Buz\"]', NULL),
(376, 45, NULL, '000045', 'RAINBOW', NULL, 'Su, şeker, meyve suyu konsantresi (elma, portakal, üzüm), doğal aroma, asidite düzenleyici (sitrik asit), koruyucu (potasyum sorbat), renklendirici (doğal ve yapay).', NULL, 'MOCTAILS', 6, 290, 2, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/376.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Su\", \"Şeker\", \"Portakal\", \"Üzüm)\", \"Doğal Aroma\", \"Asidite Düzenleyici\", \"Koruyucu\", \"Renklendirici\"]', NULL),
(377, 46, NULL, '000046', 'CINDERELLA', NULL, 'Şeker, su, limon suyu, nar suyu, portakal suyu, elma suyu, taze nane, buz.', NULL, 'MOCTAILS', 6, 290, 1, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/377.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Şeker\", \"Su\", \"Limon Suyu\", \"Nar Suyu\", \"Portakal Suyu\", \"Elma Suyu\", \"Taze Nane\", \"Buz\"]', NULL),
(378, 47, NULL, '000047', 'TROPICAL', NULL, 'Su, şeker, ananas suyu, portakal suyu, mango püresi, limon suyu, asidite düzenleyici (sitrik asit), koruyucu (potasyum sorbat)', NULL, 'MOCTAILS', 6, 290, 4, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/378.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Su\", \"Şeker\", \"Ananas Suyu\", \"Portakal Suyu\", \"Mango Püresi\", \"Limon Suyu\", \"Asidite Düzenleyici\", \"Koruyucu\"]', NULL),
(379, 48, NULL, '000048', 'EFES SMALL', NULL, 'Su, malt, şerbetçiotu, maya', NULL, 'BEERS', 7, 210, 8, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/379.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Su\", \"Malt\", \"Şerbetçiotu\", \"Maya\"]', NULL),
(380, 49, NULL, '000049', 'EFES LARGE', NULL, 'Su, malt, şerbetçi otu, maya.', NULL, 'BEERS', 7, 230, 7, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/380.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'İKİ BARDAK', '', NULL, NULL, 0, '[\"Su\", \"Malt\", \"Şerbetçi Otu\", \"Maya\"]', NULL),
(381, 50, NULL, '000050', 'TUBORG', NULL, 'Su, arpa maltı, mısır, şerbetçiotu, maya', NULL, 'BEERS', 7, 240, 21, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/381.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'İKİ BARDAK', '', NULL, NULL, 0, '[\"Su\", \"Arpa Maltı\", \"Mısır\", \"Şerbetçiotu\", \"Maya\"]', NULL),
(382, 51, NULL, '000051', 'CARLSBERG', NULL, 'Su, arpa maltı, şerbetçi otu, maya', NULL, 'BEERS', 7, 270, 4, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/382.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'İKİ BARDAK', '', NULL, NULL, 0, '[\"Su\", \"Arpa Maltı\", \"Şerbetçi Otu\", \"Maya\"]', NULL),
(383, 52, NULL, '000052', 'MILLER', NULL, 'Su, malt, şerbetçi otu, maya', NULL, 'BEERS', 7, 270, 15, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/383.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Su\", \"Malt\", \"Şerbetçi Otu\", \"Maya\"]', NULL),
(384, 53, NULL, '000053', 'CORONA', NULL, 'Maya, su, mısır, arpa, şeker, limon ', NULL, 'BEERS', 7, 280, 6, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/384.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Maya\", \"Su\", \"Mısır\", \"Arpa\", \"Şeker\", \"Limon\"]', NULL),
(385, 54, NULL, '000054', 'HEINEKEN', NULL, 'Su, arpa maltı, şerbetçi otu, maya', NULL, 'BEERS', 7, 270, 13, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/385.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Su\", \"Arpa Maltı\", \"Şerbetçi Otu\", \"Maya\"]', NULL),
(386, 55, NULL, '000055', 'GUINNESS', NULL, 'Su, arpa, şeker, maya, azot, karbondioksit.', NULL, 'BEERS', 7, 350, 12, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/386.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Su\", \"Arpa\", \"Şeker\", \"Maya\", \"Azot\", \"Karbondioksit\"]', NULL),
(387, 56, NULL, '000056', 'CIDER', NULL, 'Elma suyu, şeker, maya, su', NULL, 'BEERS', 7, 330, 5, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/387.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'ELMALI,ÇİLEKLİ,BUZLU', '', NULL, NULL, 0, '[\"Elma Suyu\", \"Şeker\", \"Maya\", \"Su\"]', NULL),
(388, 57, NULL, '000057', 'STRAWBERRY CIDER', NULL, 'Çilek, elma suyu, şeker, karbonat, maya.', NULL, 'BEERS', 7, 330, 19, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/388.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'BUZLU', '', NULL, NULL, 0, '[\"Çilek\", \"Elma Suyu\", \"Şeker\", \"Karbonat\", \"Maya\"]', NULL),
(389, 58, NULL, '000058', 'STRONGBOW', NULL, 'Elma suyu, alkol, şeker', NULL, 'BEERS', 7, 400, 20, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/389.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Elma Suyu\", \"Alkol\", \"Şeker\"]', NULL),
(390, 59, NULL, '000059', 'MAGNERS', NULL, 'Elma suyu, alkol, şeker, karbonatlı su, asidite düzenleyici (sitrik asit), doğal aroma.', NULL, 'BEERS', 7, 400, 14, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/390.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'buzlu', '', NULL, NULL, 0, '[\"Elma Suyu\", \"Alkol\", \"Şeker\", \"Karbonatlı Su\", \"Asidite Düzenleyici\", \"Doğal Aroma\"]', NULL),
(391, 60, NULL, '000060', 'TURKISH RAKI', NULL, 'Anason, üzüm alkolü, su', NULL, 'İMPORT VE LOCAL', 45, 280, 24, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/391.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'Double,20 LİK,35 LİK,50 LİK,70 LİK', '', NULL, NULL, 0, '[\"Anason\", \"Üzüm Alkolü\", \"Su\"]', NULL),
(392, 61, NULL, '000061', 'LOCAL VODKA', NULL, 'Vodka', NULL, 'İMPORT VE LOCAL', 45, 280, 19, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/392.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'BUZLU,LİMONLU,DOUBLE', '', NULL, NULL, 0, NULL, NULL),
(393, 62, NULL, '000062', 'LOCAL GIN', NULL, 'Alkol, juniper berries, botanikler, su, şeker ', NULL, 'İMPORT VE LOCAL', 45, 280, 18, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/393.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'LİMONLU,BUZLU,DOUBLE', '', NULL, NULL, 0, '[\"Alkol\", \"Juniper Berries\", \"Botanikler\", \"Su\", \"Şeker\"]', NULL),
(394, 63, NULL, '000063', 'LOCAL COGNAC', NULL, 'Cognac', NULL, 'İMPORT VE LOCAL', 45, 300, 17, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/394.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'DOUBLE', '', NULL, NULL, 0, NULL, NULL),
(395, 64, NULL, '000064', 'BACARDI RUM', NULL, 'Bacardi rom', NULL, 'İMPORT VE LOCAL', 45, 330, 4, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/395.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'BUZLU,LİMONLU,DOUBLE', '', NULL, NULL, 0, NULL, NULL),
(396, 65, NULL, '000065', 'CAPTAIN MORGAN RUM', NULL, 'Rom', NULL, 'İMPORT VE LOCAL', 45, 330, 7, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/396.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'DOUBLE', '', NULL, NULL, 0, NULL, NULL),
(397, 66, NULL, '000066', 'SMIRNOFF WODKA', NULL, 'Alkol, su, glikoz, doğal aromalar.', NULL, 'İMPORT VE LOCAL', 45, 330, 22, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/397.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'DOUBLE', '', NULL, NULL, 0, '[\"Alkol\", \"Su\", \"Glikoz\", \"Doğal Aromalar\"]', NULL),
(398, 67, NULL, '000067', 'ABSOLUT WODKA', NULL, 'Vodka', NULL, 'İMPORT VE LOCAL', 45, 340, 1, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/398.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'DOUBLE', '', NULL, NULL, 0, NULL, NULL),
(399, 68, NULL, '000068', 'GORDON`S GIN', NULL, 'Alkol, juniper berries, botanikler, su, şeker.', NULL, 'İMPORT VE LOCAL', 45, 330, 10, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/399.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'DOUBLE', '', NULL, NULL, 0, '[\"Alkol\", \"Juniper Berries\", \"Botanikler\", \"Su\", \"Şeker\"]', NULL),
(400, 69, NULL, '000069', 'GORDON`S PINK GIN', NULL, 'Gordon\'s cin, frambuaz, çilek, botanik bileşenler, su, alkol.', NULL, 'İMPORT VE LOCAL', 45, 340, 11, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/400.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'DOUBLE', '', NULL, NULL, 0, '[\"Gordon\'s Cin\", \"Frambuaz\", \"Çilek\", \"Botanik Bileşenler\", \"Su\", \"Alkol\"]', NULL),
(401, 70, NULL, '000070', 'JACK DANIELS', NULL, 'Tennessee viskisi', NULL, 'İMPORT VE LOCAL', 45, 410, 14, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/401.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'DOUBLE', '', NULL, NULL, 0, NULL, NULL),
(402, 71, NULL, '000071', 'JIM BEAM', NULL, 'Bourbon viskisi', NULL, 'İMPORT VE LOCAL', 45, 410, 16, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/402.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'DOUBLE', '', NULL, NULL, 0, NULL, NULL),
(403, 72, NULL, '000072', 'JAMESON', NULL, 'İrlanda viskisi', NULL, 'İMPORT VE LOCAL', 45, 410, 15, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/403.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'DOUBLE', '', NULL, NULL, 0, NULL, NULL),
(404, 73, NULL, '000073', 'CHIVAS REGAL', NULL, 'İskocya viskisi', NULL, 'İMPORT VE LOCAL', 45, 450, 8, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/404.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'DOUBLE', '', NULL, NULL, 0, NULL, NULL),
(405, 74, NULL, '000074', 'J&B', NULL, 'İçki, malt viski, tahıl viskisi', NULL, 'İMPORT VE LOCAL', 45, 410, 13, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/405.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'DOUBLE', '', NULL, NULL, 0, '[\"İçki\", \"Malt Viski\", \"Tahıl Viskisi\"]', NULL),
(406, 75, NULL, '000075', 'J.W RED RABEL', NULL, 'İskoç Viskisi', NULL, 'İMPORT VE LOCAL', 45, 410, 12, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/406.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'DOUBLE', '', NULL, NULL, 0, NULL, NULL),
(407, 76, NULL, '000076', 'BAILEYS', NULL, 'İrlanda kreması, viski, şeker, süt, kakao, vanilya', NULL, 'İMPORT VE LOCAL', 45, 330, 5, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/407.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'DOUBLE', '', NULL, NULL, 1, '[\"İrlanda Kreması\", \"Viski\", \"Şeker\", \"Süt\", \"Kakao\", \"Vanilya\"]', NULL),
(408, 77, NULL, '000077', 'TIA MARIA', NULL, 'Kahve likörü, şeker, vanilya, alkol, su.', NULL, 'İMPORT VE LOCAL', 45, 330, 23, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/408.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'DOUBLE', '', NULL, NULL, 0, '[\"Kahve Likörü\", \"Şeker\", \"Vanilya\", \"Alkol\", \"Su\"]', NULL),
(409, 78, NULL, '000078', 'ARCHERS', NULL, 'Şeftali likörü, alkol, su, şeker, asidite düzenleyici ', NULL, 'İMPORT VE LOCAL', 45, 330, 3, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/409.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'DOUBLE', '', NULL, NULL, 0, '[\"Şeftali Likörü\", \"Alkol\", \"Su\", \"Şeker\", \"Asidite Düzenleyici\"]', NULL),
(410, 79, NULL, '000079', 'MALIBU', NULL, 'Rom, hindistancevizi aroması, şeker, su.', NULL, 'İMPORT VE LOCAL', 45, 330, 20, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/410.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'DOUBLE', '', NULL, NULL, 0, '[\"Rom\", \"Hindistancevizi Aroması\", \"Şeker\", \"Su\"]', NULL),
(411, 80, NULL, '000080', 'CAMPARI', NULL, 'Alkol, bitkisel özler, şeker, su, alkol (gluten içerebilir)', NULL, 'İMPORT VE LOCAL', 45, 330, 6, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/411.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'DOUBLE', '', NULL, NULL, 0, '[\"Alkol\", \"Bitkisel Özler\", \"Şeker\", \"Su\"]', NULL),
(412, 81, NULL, '000081', 'MARTINI', NULL, 'Martini, cin, vermut', NULL, 'İMPORT VE LOCAL', 45, 330, 21, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/412.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'DOUBLE', '', NULL, NULL, 0, '[\"Martini\", \"Cin\", \"Vermut\"]', NULL),
(413, 82, NULL, '000082', 'AMERETTO', NULL, 'Alkollü içecek, şeker, badem özü, su, alkol.', NULL, 'İMPORT VE LOCAL', 45, 390, 2, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/413.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'DOUBLE', '', NULL, NULL, 0, '[\"Alkollü Içecek\", \"Şeker\", \"Badem Özü\", \"Su\", \"Alkol\"]', NULL),
(414, 83, NULL, '000083', 'COINTREAU', NULL, 'Şeker, portakal kabuğu, alkol', NULL, 'İMPORT VE LOCAL', 45, 410, 9, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/414.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'DOUBLE', '', NULL, NULL, 0, '[\"Şeker\", \"Portakal Kabuğu\", \"Alkol\"]', NULL),
(415, 84, NULL, '000084', 'FULL ENGLISH BREAKFAST', NULL, 'Yumurta, sosis, pastırma, mantar, domates, fasulye, ekmek, tereyağı, çay veya kahve', NULL, 'ALL DAY BREAKFAST', 9, 590, 2, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/415.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'No.Mushrooms,No.Tomato,No.Chips,No.Beans,No.Egg,', '', NULL, NULL, 1, '[\"Yumurta\", \"Sosis\", \"Pastırma\", \"Mantar\", \"Domates\", \"Fasulye\", \"Ekmek\", \"Tereyağı\", \"Çay Veya Kahve\"]', NULL),
(416, 85, NULL, '000085', 'FULL IRISH BREAKFAST', NULL, 'Yumurta, sosis, pastırma, beyaz fasulye, domates, mantar, kızarmış ekmek, tereyağı, çay veya kahve', NULL, 'ALL DAY BREAKFAST', 9, 590, 3, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/416.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'No.Mushrooms,No.Tomato,No.Beans,No. Egg,No.Chips,FREE TEA', '', NULL, NULL, 1, '[\"Yumurta\", \"Sosis\", \"Pastırma\", \"Beyaz Fasulye\", \"Domates\", \"Mantar\", \"Kızarmış Ekmek\", \"Tereyağı\", \"Çay Veya Kahve\"]', NULL),
(417, 86, NULL, '000086', 'TURK KAHVALTISI', NULL, 'Zeytin, beyaz peynir, tulum peyniri, domates, salatalık, biber, bal, kaymak, tereyağı, sucuk, pastırma, börek, simit, ekmek, çay.', NULL, 'ALL DAY BREAKFAST', 9, 440, 4, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/417.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'YUMURTA HAŞLANMIŞ,SAHANDA YUMURTA', '', NULL, NULL, 1, '[\"Zeytin\", \"Beyaz Peynir\", \"Tulum Peyniri\", \"Domates\", \"Salatalık\", \"Biber\", \"Bal\", \"Kaymak\", \"Tereyağı\", \"Sucuk\", \"Pastırma\", \"Börek\", \"Simit\", \"Ekmek\", \"Çay\"]', NULL),
(418, 87, NULL, '000087', 'EGG & CHIPS', NULL, 'Yumurta, patates,karabiber', NULL, 'EGG MENU', 10, 340, 2, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/418.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Yumurta\", \"Patates\", \"Karabiber\"]', NULL),
(419, 88, NULL, '000088', 'EGG,BACON & CHIPS', NULL, 'Yumurta, Bacon (domuz eti), Patates kızartması', NULL, 'EGG MENU', 10, 440, 3, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/419.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Yumurta\", \"Bacon\", \"Patates Kızartması\"]', NULL),
(420, 89, NULL, '000089', 'EGG,SAUSAGE & CHIPS', NULL, 'Yumurta, sosis, patates kızartması', NULL, 'EGG MENU', 10, 440, 5, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/420.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Yumurta\", \"Sosis\", \"Patates Kızartması\"]', NULL),
(421, 90, NULL, '000090', 'EGG,BACON,SAUSAGE & CHIPS', NULL, 'Yumurta, Bacon (domuz eti), Sosis, Patates kızartması', NULL, 'EGG MENU', 10, 470, 4, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/421.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Yumurta\", \"Bacon\", \"Sosis\", \"Patates Kızartması\"]', NULL),
(422, 91, NULL, '000091', 'SCRAMBLED EGG ON TOAST', NULL, 'Yumurta, Ekmek ', NULL, 'EGG MENU', 10, 310, 7, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/422.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'Extıra bacon', '', NULL, NULL, 0, '[\"Yumurta\", \"Ekmek\"]', NULL),
(423, 92, NULL, '000092', 'EXTRAS', NULL, 'yumurta', NULL, 'EGG MENU', 10, 0, 6, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/423.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'SOUSAGE,YUMURTA,MANTAR,BACON', '', NULL, NULL, 0, NULL, NULL),
(424, 93, NULL, '000093', 'SADE OMELETTE', NULL, 'yumurta, tereyağı', NULL, 'OMELETTE', 11, 340, 6, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/424.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 1, '[\"Yumurta\", \"Tereyağı\"]', NULL),
(425, 94, NULL, '000094', 'PEYNİRLİ OMELETE', NULL, 'yumurta, beyaz peynir,  tereyağı', NULL, 'OMELETTE', 11, 410, 5, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/425.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 1, '[\"Yumurta\", \"Beyaz Peynir\", \"Tereyağı\"]', NULL),
(426, 95, NULL, '000095', 'MANTARLI OMELEETE', NULL, 'yumurta, mantar, tereyağı', NULL, 'OMELETTE', 11, 410, 3, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/426.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'PEYNİR', '', NULL, NULL, 1, '[\"Yumurta\", \"Mantar\", \"Tereyağı\"]', NULL),
(427, 96, NULL, '000096', 'SUCUKLU OMELETTE', NULL, 'Yumurta, sucuk, tereyağı', NULL, 'OMELETTE', 11, 410, 9, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/427.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 1, '[\"Yumurta\", \"Sucuk\", \"Tereyağı\"]', NULL),
(428, 97, NULL, '000097', 'SALAMLI OMELETTE', NULL, 'Yumurta, salam, tereyağı', NULL, 'OMELETTE', 11, 410, 7, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/428.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 1, '[\"Yumurta\", \"Salam\", \"Tereyağı\"]', NULL),
(429, 98, NULL, '000098', 'BACON OMELETTE', NULL, 'Yumurta, bacon, tereyağı, ', NULL, 'OMELETTE', 11, 440, 1, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/429.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'CHEESE,MANTAR', '', NULL, NULL, 1, '[\"Yumurta\", \"Bacon\", \"Tereyağı\"]', NULL),
(430, 99, NULL, '000099', 'KARIŞIK OMELETTE', NULL, 'yumurta, yeşil biber, domates, soğan, beyaz peynir, zeytin yağı', NULL, 'OMELETTE', 11, 440, 2, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/430.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 1, '[\"Yumurta\", \"Yeşil Biber\", \"Domates\", \"Soğan\", \"Beyaz Peynir\", \"Zeytin Yağı\"]', NULL),
(431, 100, NULL, '000100', 'SEBZELİ OMLET', NULL, 'yumurta, domates, biber, soğan, ıspanak, zeytinyağı', NULL, 'OMELETTE', 11, 390, 8, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/431.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Yumurta\", \"Domates\", \"Biber\", \"Soğan\", \"Ispanak\", \"Zeytinyağı\"]', NULL),
(432, 101, NULL, '000101', 'MENEMEN', NULL, 'domates, biber, yumurta, zeytinyağı', NULL, 'OMELETTE', 11, 390, 4, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/432.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Domates\", \"Biber\", \"Yumurta\", \"Zeytinyağı\"]', NULL),
(433, 102, NULL, '000102', 'CUBA LIBRE', NULL, 'Beyaz rom, kola, limon suyu, buz', NULL, 'COOKTAILS', 12, 580, 8, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/433.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Beyaz Rom\", \"Kola\", \"Limon Suyu\", \"Buz\"]', NULL),
(434, 103, NULL, '000103', 'MARGARITA', NULL, 'Tekila, lime suyu, portakal likörü, tuz', NULL, 'COOKTAILS', 12, 580, 19, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/434.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Tekila\", \"Lime Suyu\", \"Portakal Likörü\", \"Tuz\"]', NULL),
(435, 104, NULL, '000104', 'BLACK RUSSIAN', NULL, 'vodka, kahve likörü', NULL, 'COOKTAILS', 12, 580, 4, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/435.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Vodka\", \"Kahve Likörü\"]', NULL),
(436, 105, NULL, '000105', 'SEX ON THE BEACH', NULL, 'Votka, şeftali likörü, nar suyu, portakal suyu, buz', NULL, 'COOKTAILS', 12, 580, 26, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/436.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Votka\", \"Şeftali Likörü\", \"Nar Suyu\", \"Portakal Suyu\", \"Buz\"]', NULL),
(437, 106, NULL, '000106', 'ZOMBIE', NULL, 'Beyaz rom, koyu rom, portakal suyu, ananas suyu, grenadin, limon suyu, şeker şurubu, bitters, taze nane (alerjen: nane)', NULL, 'COOKTAILS', 12, 580, 28, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/437.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Beyaz Rom\", \"Koyu Rom\", \"Portakal Suyu\", \"Ananas Suyu\", \"Grenadin\", \"Limon Suyu\", \"Şeker Şurubu\", \"Bitters\", \"Taze Nane\"]', NULL),
(438, 107, NULL, '000107', 'GIN FIZZ', NULL, 'Cin, limon suyu, şeker, soda, yumurta beyazı (isteğe bağlı)', NULL, 'COOKTAILS', 12, 580, 12, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/438.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Cin\", \"Limon Suyu\", \"Şeker\", \"Soda\", \"Yumurta Beyazı\"]', NULL),
(439, 108, NULL, '000108', 'PINA COLADA', NULL, 'Beyaz rom, hindistancevizi kreması, ananas suyu, taze ananas, buz', NULL, 'COOKTAILS', 12, 580, 22, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/439.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Beyaz Rom\", \"Hindistancevizi Kreması\", \"Ananas Suyu\", \"Taze Ananas\", \"Buz\"]', NULL),
(440, 109, NULL, '000109', 'TEQUILA SUNRISE', NULL, 'Tequila, portakal suyu, grenadin şurubu', NULL, 'COOKTAILS', 12, 580, 27, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/440.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Tequila\", \"Portakal Suyu\", \"Grenadin Şurubu\"]', NULL),
(441, 110, NULL, '000110', 'LONG ISLAND ICE TEA', NULL, 'vodka, gin, rom, tekila, triple sec, limon suyu, şeker şurubu, cola, buz', NULL, 'COOKTAILS', 12, 610, 17, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/441.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Vodka\", \"Gin\", \"Rom\", \"Tekila\", \"Triple Sec\", \"Limon Suyu\", \"Şeker Şurubu\", \"Cola\", \"Buz\"]', NULL),
(442, 111, NULL, '000111', 'APEROL SPRITZ', NULL, 'Aperol, prosecco, soda, portakal dilimi', NULL, 'COOKTAILS', 12, 610, 1, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/442.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Aperol\", \"Prosecco\", \"Soda\", \"Portakal Dilimi\"]', NULL),
(443, 112, NULL, '000112', 'SANGRIA', NULL, 'Kırmızı şarap, portakal, limon, şeftali, elma, şeker, soda, tarçın, buz', NULL, 'COOKTAILS', 12, 580, 25, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/443.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Kırmızı Şarap\", \"Portakal\", \"Limon\", \"Şeftali\", \"Elma\", \"Şeker\", \"Soda\", \"Tarçın\", \"Buz\"]', NULL),
(444, 113, NULL, '000113', 'ORGASM', NULL, 'Su, şeker, doğal aroma, asitlik düzenleyici (limon asidi), koruyucu (potasyum sorbat), tatlandırıcı (steviol glikozitler), renk verici (karotenoidler).', NULL, 'COOKTAILS', 12, 580, 21, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/444.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Su\", \"Şeker\", \"Doğal Aroma\", \"Asitlik Düzenleyici\", \"Koruyucu\", \"Tatlandırıcı\", \"Renk Verici\"]', NULL),
(445, 114, NULL, '000114', 'MALIBU SUNSET', NULL, 'Malibu rom, portakal suyu, ananas suyu, grenadin şurubu', NULL, 'COOKTAILS', 12, 580, 18, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/445.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Malibu Rom\", \"Portakal Suyu\", \"Ananas Suyu\", \"Grenadin Şurubu\"]', NULL),
(446, 115, NULL, '000115', 'BLUE LAGOON', NULL, 'Votka, mavi curaçao, limon suyu, şeker şurubu, soda, buz', NULL, 'COOKTAILS', 12, 580, 5, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/446.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Votka\", \"Mavi Curaçao\", \"Limon Suyu\", \"Şeker Şurubu\", \"Soda\", \"Buz\"]', NULL),
(447, 116, NULL, '000116', 'COSMOPOLITIAN', NULL, 'Vodka, triple sec, limon suyu, kızılcık suyu', NULL, 'COOKTAILS', 12, 580, 7, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/447.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Vodka\", \"Triple Sec\", \"Limon Suyu\", \"Kızılcık Suyu\"]', NULL),
(448, 117, NULL, '000117', 'CUCUMBER TINI', NULL, 'Salatalık, su, limon suyu, şeker, nane, tuz', NULL, 'COOKTAILS', 12, 580, 9, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/448.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Salatalık\", \"Su\", \"Limon Suyu\", \"Şeker\", \"Nane\", \"Tuz\"]', NULL),
(449, 118, NULL, '000118', 'APPLE TINI', NULL, 'Elma suyu, votka, şeker şurubu, limon suyu, elma dilimleri ', NULL, 'COOKTAILS', 12, 580, 2, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/449.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Elma Suyu\", \"Votka\", \"Şeker Şurubu\", \"Limon Suyu\", \"Elma Dilimleri\"]', NULL),
(450, 119, NULL, '000119', 'GREEN APPLE SOUR', NULL, 'Elma, limon suyu, şeker, su, asidite düzenleyici , koruyucu ', NULL, 'COOKTAILS', 12, 580, 13, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/450.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Elma\", \"Limon Suyu\", \"Şeker\", \"Su\", \"Asidite Düzenleyici\", \"Koruyucu\"]', NULL),
(451, 120, NULL, '000120', 'MIMOSA', NULL, 'Şampanya, portakal suyu', NULL, 'COOKTAILS', 12, 580, 20, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/451.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Şampanya\", \"Portakal Suyu\"]', NULL),
(452, 121, NULL, '000121', 'CAMPARI SPRITZ', NULL, 'Campari, prosecco, soda, portakal dilimi', NULL, 'COOKTAILS', 12, 610, 6, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/452.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Campari\", \"Prosecco\", \"Soda\", \"Portakal Dilimi\"]', NULL),
(453, 122, NULL, '000122', 'HUGO SPRITZ', NULL, 'Prosecco, soda, limon, taze nane, şeker ', NULL, 'COOKTAILS', 12, 580, 14, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/453.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Prosecco\", \"Soda\", \"Limon\", \"Taze Nane\", \"Şeker\"]', NULL),
(454, 123, NULL, '000123', 'LEMONCELLO SPRITZ', NULL, 'Limoncello, soda, beyaz şarap, limon dilimleri, nane yaprakları', NULL, 'COOKTAILS', 12, 580, 16, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/454.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Limoncello\", \"Soda\", \"Beyaz Şarap\", \"Limon Dilimleri\", \"Nane Yaprakları\"]', NULL),
(455, 124, NULL, '000124', 'BAHAMA MAMA', NULL, 'Rom, hindistancevizi likörü, ananas suyu, portakal suyu, grenadin, limon suyu', NULL, 'COOKTAILS', 12, 580, 3, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/455.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Rom\", \"Hindistancevizi Likörü\", \"Ananas Suyu\", \"Portakal Suyu\", \"Grenadin\", \"Limon Suyu\"]', NULL),
(456, 125, NULL, '000125', 'LEMON DROP MARTINI', NULL, 'vodka, limon suyu, şeker, limon kabuğu, buz', NULL, 'COOKTAILS', 12, 580, 15, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/456.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Vodka\", \"Limon Suyu\", \"Şeker\", \"Limon Kabuğu\", \"Buz\"]', NULL),
(457, 126, NULL, '000126', 'ESPRESSO MARTINI', NULL, 'Espresso, vodka, kahve likörü, şeker şurubu, kahve çekirdekleri (isteğe bağlı)', NULL, 'COOKTAILS', 12, 580, 11, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/457.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Espresso\", \"Vodka\", \"Kahve Likörü\", \"Şeker Şurubu\", \"Kahve Çekirdekleri\"]', NULL),
(458, 127, NULL, '000127', 'PORNSTAR MARTINI', NULL, 'Votka, Passoa (tropikal meyve likörü), vanilya şurubu, limon suyu, şampanya ', NULL, 'COOKTAILS', 12, 610, 24, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/458.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '', '', NULL, NULL, 0, '[\"Votka\", \"Passoa\", \"Vanilya Şurubu\", \"Limon Suyu\", \"Şampanya\"]', NULL),
(459, 128, NULL, '000128', 'ENERGY MARTINI', NULL, 'Vodka, enerji içeceği, kahve likörü, şeker şurubu, limon suyu', NULL, 'COOKTAILS', 12, 610, 10, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/459.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Vodka\", \"Enerji Içeceği\", \"Kahve Likörü\", \"Şeker Şurubu\", \"Limon Suyu\"]', NULL),
(460, 129, NULL, '000129', 'STRAWBERRY DAIQUIRI', NULL, 'Çilek, rom, lime suyu, şeker, buz', NULL, 'DAIQUIRI', 13, 610, 3, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/460.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Çilek\", \"Rom\", \"Lime Suyu\", \"Şeker\", \"Buz\"]', NULL),
(461, 130, NULL, '000130', 'BANANA DAIQUIRI', NULL, 'Beyaz rom, muz, lime suyu, şeker, buz', NULL, 'DAIQUIRI', 13, 610, 1, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/461.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Beyaz Rom\", \"Muz\", \"Lime Suyu\", \"Şeker\", \"Buz\"]', NULL),
(462, 131, NULL, '000131', 'WATERMELON COOLER DAIQUIRI', NULL, 'Karpuz, rom, lime suyu, şeker, buz, nane ', NULL, 'DAIQUIRI', 13, 610, 4, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/462.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Karpuz\", \"Rom\", \"Lime Suyu\", \"Şeker\", \"Buz\", \"Nane\"]', NULL),
(463, 132, NULL, '000132', 'MELON DAIQUIRI', NULL, 'Kavun, rom, lime suyu, şeker, buz', NULL, 'DAIQUIRI', 13, 610, 2, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/463.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Kavun\", \"Rom\", \"Lime Suyu\", \"Şeker\", \"Buz\"]', NULL),
(464, 133, NULL, '000133', 'FROZEN MARGARITA', NULL, 'Tekila, lime suyu, portakal likörü, şeker, buz', NULL, 'FROZEN WITH ALCOHOL', 14, 610, 1, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/464.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Tekila\", \"Lime Suyu\", \"Portakal Likörü\", \"Şeker\", \"Buz\"]', NULL),
(465, 134, NULL, '000134', 'FROZEN STRAWBERRY MARGARITA', NULL, 'Buzlu çilek, tequila, lime suyu, triple sec, şeker, tuz (alerjen: narenciye)', NULL, 'FROZEN WITH ALCOHOL', 14, 610, 5, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/465.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Buzlu Çilek\", \"Tequila\", \"Lime Suyu\", \"Triple Sec\", \"Şeker\", \"Tuz\"]', NULL),
(466, 135, NULL, '000135', 'FROZEN PINA COLADA', NULL, 'Ananas suyu, hindistancevizi kreması, rom, şeker, su, limon suyu, glikoz, doğal aroma, koruyucu (potasyum sorbat)', NULL, 'FROZEN WITH ALCOHOL', 14, 610, 3, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/466.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Ananas Suyu\", \"Hindistancevizi Kreması\", \"Rom\", \"Şeker\", \"Su\", \"Limon Suyu\", \"Glikoz\", \"Doğal Aroma\", \"Koruyucu\"]', NULL),
(467, 136, NULL, '000136', 'CLASSIC MOJITO', NULL, 'Beyaz rom, taze nane yaprağı, limon suyu, şeker, soda, buz', NULL, 'MOJITOS', 15, 580, 1, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/467.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Beyaz Rom\", \"Taze Nane Yaprağı\", \"Limon Suyu\", \"Şeker\", \"Soda\", \"Buz\"]', NULL),
(468, 137, NULL, '000137', 'STRAWBERRY MOJITO', NULL, 'Çilek, nane, lime, şeker, soda, rom, buz', NULL, 'MOJITOS', 15, 580, 3, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/468.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Çilek\", \"Nane\", \"Lime\", \"Şeker\", \"Soda\", \"Rom\", \"Buz\"]', NULL),
(469, 138, NULL, '000138', 'RASPERBERRY MOJITO', NULL, 'Beyaz rom, taze frambuaz, taze nane, limon suyu, şeker, soda, buz', NULL, 'MOJITOS', 15, 580, 2, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/469.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Beyaz Rom\", \"Taze Frambuaz\", \"Taze Nane\", \"Limon Suyu\", \"Şeker\", \"Soda\", \"Buz\"]', NULL),
(470, 139, NULL, '000139', 'B-52', NULL, 'Kahve likörü, Kremalı likör, İrlanda viskisi, Kanyak', NULL, 'SHOTS', 16, 310, 1, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/470.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Kahve Likörü\", \"Kremalı Likör\", \"İrlanda Viskisi\", \"Kanyak\"]', NULL),
(471, 140, NULL, '000140', 'BABY GUINNESS', NULL, 'Kahve likörü, Bira, Krema', NULL, 'SHOTS', 16, 310, 2, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/471.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 1, '[\"Kahve Likörü\", \"Bira\", \"Krema\"]', NULL),
(472, 141, NULL, '000141', 'ZOMBIE BRAIN', NULL, 'Şeker, su, mısır şurubu, glikoz, jelatin, asidik asit, doğal ve yapay tatlandırıcılar, gıda boyası (E129, E133), aroma verici, koruyucu (E202)', NULL, 'SHOTS', 16, 310, 6, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/472.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Şeker\", \"Su\", \"Mısır Şurubu\", \"Glikoz\", \"Jelatin\", \"Asidik Asit\", \"Gıda Boyası (E129\", \"E133)\", \"Aroma Verici\", \"Koruyucu\"]', NULL),
(473, 142, NULL, '000142', 'JAGERBOMB', NULL, 'Jagermeister, enerji içeceği', NULL, 'SHOTS', 16, 310, 3, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/473.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Jagermeister\", \"Enerji Içeceği\"]', NULL),
(474, 143, NULL, '000143', 'TEQUILA', NULL, 'Agnave distilatörü, su', NULL, 'SHOTS', 16, 310, 5, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/474.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Agnave Distilatörü\", \"Su\"]', NULL),
(475, 144, NULL, '000144', 'SAMBUCA', NULL, 'Alkol, anason, şeker, su', NULL, 'SHOTS', 16, 310, 4, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/475.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Alkol\", \"Anason\", \"Şeker\", \"Su\"]', NULL),
(476, 145, NULL, '000145', 'IRISH COFFE', NULL, 'Kahve, İrlanda viskisi, şeker, krema', NULL, 'ALCOLIC COFFES', 17, 390, 3, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/476.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 1, '[\"Kahve\", \"İrlanda Viskisi\", \"Şeker\", \"Krema\"]', NULL),
(477, 146, NULL, '000146', 'BAILEYS COFFE', NULL, 'Baileys, kahve, şeker, süt, krema, alkol (süt, laktoz)', NULL, 'ALCOLIC COFFES', 17, 390, 2, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/477.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 1, '[\"Baileys\", \"Kahve\", \"Şeker\", \"Süt\", \"Krema\", \"Alkol (Süt\", \"Laktoz)\"]', NULL),
(478, 147, NULL, '000147', 'AMARETTO COFFEE', NULL, 'Kahve, Amaretto, Şeker, Süt (laktoz), Krema', NULL, 'ALCOLIC COFFES', 17, 390, 1, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/478.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 1, '[\"Kahve\", \"Amaretto\", \"Şeker\", \"Süt\", \"Krema\"]', NULL),
(479, 148, NULL, '000148', 'ET DÖNER MENU', NULL, 'Et döner, pide, domates, soğan, marul, turşu, yoğurt, baharatlar, zeytinyağı, ekmek.', NULL, 'DONER KEBAP', 18, 690, 4, 0, 0, 0, '1', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/479.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'Pİlavsız,Chİpsİz,Soğansız,Domatessİz', '0,1,2,3', NULL, NULL, 1, '[\"Et Döner\", \"Pide\", \"Domates\", \"Soğan\", \"Marul\", \"Turşu\", \"Yoğurt\", \"Baharatlar\", \"Zeytinyağı\", \"Ekmek\"]', NULL),
(480, 149, NULL, '000149', 'ET DÖNER CİPSLİ', NULL, 'Et döner, cips, tuz, baharatlar', NULL, 'DONER KEBAP', 18, 690, 3, 0, 0, 0, '1', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/480.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '', '0,1,2,3', NULL, NULL, 0, '[\"Et Döner\", \"Cips\", \"Tuz\", \"Baharatlar\"]', NULL),
(481, 150, NULL, '000150', 'PİLAV ÜSTÜ ET DÖNER', NULL, 'Pirinç, et döner, domates, soğan, yeşil biber, baharatlar', NULL, 'DONER KEBAP', 18, 650, 7, 0, 0, 0, '1', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/481.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '0,1,2,3', NULL, NULL, 0, '[\"Pirinç\", \"Et Döner\", \"Domates\", \"Soğan\", \"Yeşil Biber\", \"Baharatlar\"]', NULL),
(482, 151, NULL, '000151', 'ET DÖNER BEYTI', NULL, 'Kıyma et, lavaş ekmeği, yoğurt, domates sosu, tereyağı, baharatlar ', NULL, 'DONER KEBAP', 18, 740, 2, 0, 0, 0, '1', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/482.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'Tereyağsız,Sossuz,Pİlavsız', '0,2,3', NULL, NULL, 1, '[\"Kıyma Et\", \"Lavaş Ekmeği\", \"Yoğurt\", \"Domates Sosu\", \"Tereyağı\", \"Baharatlar\"]', NULL),
(483, 152, NULL, '000152', 'ISKENDER KEBAP', NULL, 'Dana eti, pide, yoğurt, domates sosu, tereyağı, baharatlar, sarımsak, su', NULL, 'DONER KEBAP', 18, 650, 5, 0, 0, 0, '1', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/483.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'Tereyağsız,Sossuz,Yoğurtsuz', '0,1,2,3', NULL, NULL, 1, '[\"Dana Eti\", \"Pide\", \"Yoğurt\", \"Domates Sosu\", \"Tereyağı\", \"Baharatlar\", \"Sarımsak\", \"Su\"]', NULL);
INSERT INTO `t_urunkart` (`id`, `Urun_id`, `UrunTip`, `UrunKod`, `UrunAd`, `UrunAdKisa`, `UrunAciklama`, `alerjenler`, `UrunGrubu`, `UrunGrubu_id`, `FixFiyat`, `SiraNo`, `P_Yarim`, `P_Birbucuk`, `P_Duble`, `Porsiyon`, `ExtraOzellik`, `Barkod`, `UrunBirim`, `FixFiyat2`, `FixFiyat3`, `Departman`, `UrunResimPath`, `one_cikan`, `AltGrup`, `Ch_Gram`, `Upd_Tarih`, `CokSatan`, `textraozellik`, `P_Tanim`, `kalori`, `hazirlanma_suresi`, `has_lactose`, `malzemeler`, `ekstra_soslar`) VALUES
(484, 154, NULL, '000154', 'ET DÖNER  CAPSALON', NULL, 'Et döner, patates kızartması, marul, domates, soğan, özel sos, cheddar peyniri ', NULL, 'DONER KEBAP', 18, 740, 1, 0, 0, 0, '1', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/484.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'Salatasız,Kaşarsız,SALATASI ÜZERİNDE,SALATASI YANINDA', '0,2,3', NULL, NULL, 1, '[\"Et Döner\", \"Patates Kızartması\", \"Marul\", \"Domates\", \"Soğan\", \"Özel Sos\", \"Cheddar Peyniri\"]', NULL),
(485, 155, NULL, '000155', 'TAVUK DÖNER MENU', NULL, 'Tavuk döner,  marul, domates, soğan, yoğurt sos, acı sos, patates kızartması, içecek ', NULL, 'DONER KEBAP', 18, 590, 11, 0, 0, 0, '1', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/485.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'Salatasız', '0,1,2,3', NULL, NULL, 1, '[\"Tavuk Döner\", \"Marul\", \"Domates\", \"Soğan\", \"Yoğurt Sos\", \"Acı Sos\", \"Patates Kızartması\", \"Içecek\"]', NULL),
(486, 156, NULL, '000156', 'TAVUK DÖNER CİPSLİ', NULL, 'Tavuk döner, cips, baharatlar', NULL, 'DONER KEBAP', 18, 590, 10, 0, 0, 0, '1', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/486.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '0,1,2,3', NULL, NULL, 0, '[\"Tavuk Döner\", \"Cips\", \"Baharatlar\"]', NULL),
(487, 157, NULL, '000157', 'TAVUK DÖNER PİLAV ÜSTÜ', NULL, 'Tavuk döner, pilav, domates, soğan, yeşil biber, maydanoz, baharatlar, zeytinyağı', NULL, 'DONER KEBAP', 18, 590, 12, 0, 0, 0, '1', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/487.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '0,1,2,3', NULL, NULL, 0, '[\"Tavuk Döner\", \"Pilav\", \"Domates\", \"Soğan\", \"Yeşil Biber\", \"Maydanoz\", \"Baharatlar\", \"Zeytinyağı\"]', NULL),
(488, 158, NULL, '000158', 'TAVUK DÖNER BEYTI', NULL, 'Tavuk döner, lavaş, yoğurt, domates sosu, biber, soğan, baharatlar, tereyağı, tuz, karabiber.', NULL, 'DONER KEBAP', 18, 670, 8, 0, 0, 0, '1', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/488.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'Pilavsız,Sossuz,Yağsız,Yoğurtsuz', '0,2,3', NULL, NULL, 1, '[\"Tavuk Döner\", \"Lavaş\", \"Yoğurt\", \"Domates Sosu\", \"Biber\", \"Soğan\", \"Baharatlar\", \"Tereyağı\", \"Tuz\", \"Karabiber\"]', NULL),
(489, 159, NULL, '000159', 'TAVUK ISKENDER KEBAP', NULL, 'Tavuk, pide, yoğurt, domates sosu, tereyağı, biber, tuz, baharatlar', NULL, 'DONER KEBAP', 18, 540, 13, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/489.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 1, '[\"Tavuk\", \"Pide\", \"Yoğurt\", \"Domates Sosu\", \"Tereyağı\", \"Biber\", \"Tuz\", \"Baharatlar\"]', NULL),
(490, 160, NULL, '000160', 'TAVUK DÖNER CAPSALON', NULL, 'Tavuk döner, patates kızartması, marul, domates, soğan, özel sos, cheddar peyniri (süt)', NULL, 'DONER KEBAP', 18, 670, 9, 0, 0, 0, '1', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/490.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'Salatasız,SALATASI YANINDA,SALATASI ÜZERİNDE,kaşarsız', '0,1,2,3', NULL, NULL, 1, '[\"Tavuk Döner\", \"Patates Kızartması\", \"Marul\", \"Domates\", \"Soğan\", \"Özel Sos\", \"Cheddar Peyniri\"]', NULL),
(491, 161, NULL, '000161', 'KARIŞIK DONER MENU', NULL, 'Döner eti, pide ekmeği, marul, domates, soğan, turşu, yoğurt, acı sos, ketçap, mayonez, patates kızartması', NULL, 'DONER KEBAP', 18, 690, 6, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/491.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 1, '[\"Döner Eti\", \"Pide Ekmeği\", \"Marul\", \"Domates\", \"Soğan\", \"Turşu\", \"Yoğurt\", \"Acı Sos\", \"Ketçap\", \"Mayonez\", \"Patates Kızartması\"]', NULL),
(492, 162, NULL, '000162', 'BEN 10', NULL, ' doğal aroma, renk verici ', NULL, 'KIDS MENU', 19, 490, 1, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'ELMA SUYU,ŞEFTALİ,VİŞNE,KARIŞIK MEYVESUYU,KOLA,FANTA,SPRİTE,İCE TEA LİMON,İCE TEA ŞEFTALİ,İCE TEA MANGO,PORTAKAL SUYU,KOLA ZERO,AYRAN', '', NULL, NULL, 0, '[\"Doğal Aroma\", \"Renk Verici\"]', NULL),
(493, 163, NULL, '000163', 'TOM & JERRY', NULL, 'Süt, şeker, kakao, vanilin, ', NULL, 'KIDS MENU', 19, 450, 6, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'VİŞNE,ŞEFTALİ,KARIŞIK MEYVESUYU,PORTAKAL SUYU,SU,İCE TEA LİMON,İCE TEA ŞEFTALİ,İCE TEA MANGO,KOLA,FANTA,SPRİTE,ELMA SUYU,KOLA ZERO,AYRAN', '', NULL, NULL, 1, '[\"Süt\", \"Şeker\", \"Kakao\", \"Vanilin\"]', NULL),
(494, 164, NULL, '000164', 'CASPER', NULL, 'doğal aroma, asidite düzenleyici (limon tuzu), koruyucu (potasyum sorbat)', NULL, 'KIDS MENU', 19, 450, 2, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'ŞEFTALİ,VİŞNE,KARIŞIK MEYVE SUYU,KOLA,FANTA,SPRİTE,İCE TEA ŞEFTALİ,İCE TEA LİMON,İCE TEA MANGO,SU,PORTAKAL SUYU,ELMA SUYU,KOLA ZERO,AYRAN', '', NULL, NULL, 0, '[\"Doğal Aroma\", \"Asidite Düzenleyici\", \"Koruyucu\"]', NULL),
(495, 165, NULL, '000165', 'HARRY POTTER', NULL, 'Ürün içeriği belirtilmemiş. Lütfen malzemeleri belirtin.', NULL, 'KIDS MENU', 19, 450, 3, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'ELMA SUYU,PORTAKAL SUYU,KOLA,FANTA,SPRİTE,İCE TEA ŞEFTALİ,İCETEA LİMON,İCE TEA MANGO,SU,ŞEFTALİ,VİŞNE,KARIŞIK MEYVE SUYU,KOLA ZERO,,AYRAN', '', NULL, NULL, 0, NULL, NULL),
(496, 166, NULL, '000166', 'LION KING', NULL, 'Süt, şeker, kakao, bitkisel yağ, un, yumurta, vanilin, tuz, gıda boyası (alergen: süt, yumurta)', NULL, 'KIDS MENU', 19, 450, 4, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'ELMA SUYU,PORTAKAL SUYU,SU,KARIŞIK MEYVE SUYU,ŞEFTALİ,VİŞNE,KOLA,FANTA,SPRİTE,İCE TEA ŞEFTALİ,İCE TEA LİMON,İCE TEA MANGO,ELMA SUYU,PORTAKAL SUYU,KOLA ZERO,AYRAN', '', NULL, NULL, 1, '[\"Süt\", \"Şeker\", \"Kakao\", \"Bitkisel Yağ\", \"Un\", \"Yumurta\", \"Vanilin\", \"Tuz\", \"Yumurta)\"]', NULL),
(497, 167, NULL, '000167', 'MASHED POTATO', NULL, 'Patates, süt, tereyağı, tuz, karabiber', NULL, 'KIDS MENU', 19, 450, 5, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 1, '[\"Patates\", \"Süt\", \"Tereyağı\", \"Tuz\", \"Karabiber\"]', NULL),
(498, 168, NULL, '000168', 'KIYMALI PİDE', NULL, 'kıyma, soğan, biber, domates, baharatlar ', NULL, 'PİDE', 20, 420, 6, 0, 0, 0, '1', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/498.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '0,2,3', NULL, NULL, 0, '[\"Kıyma\", \"Soğan\", \"Biber\", \"Domates\", \"Baharatlar\"]', NULL),
(499, 169, NULL, '000169', 'KIYMALI YUMURTALI PİDE', NULL, ' kıyma, yumurta, soğan, biber, domates, baharatlar ', NULL, 'PİDE', 20, 460, 7, 0, 0, 0, '1', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/499.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '0,2,3', NULL, NULL, 0, '[\"Kıyma\", \"Yumurta\", \"Soğan\", \"Biber\", \"Domates\", \"Baharatlar\"]', NULL),
(500, 170, NULL, '000170', 'KIYMALI KAŞARLI PİDE', NULL, ' kıyma, kaşar peyniri, soğan, biber, domates, baharatlar ', NULL, 'PİDE', 20, 460, 5, 0, 0, 0, '1', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/500.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '0,2,3', NULL, NULL, 1, '[\"Kıyma\", \"Kaşar Peyniri\", \"Soğan\", \"Biber\", \"Domates\", \"Baharatlar\"]', NULL),
(501, 171, NULL, '000171', 'KAŞARLI PİDE', NULL, 'kaşar peyniri, biber (isteğe bağlı), domates (isteğe bağlı)', NULL, 'PİDE', 20, 420, 3, 0, 0, 0, '1', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/501.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '0,2,3', NULL, NULL, 1, '[\"Kaşar Peyniri\", \"Biber\", \"Domates\"]', NULL),
(502, 172, NULL, '000172', 'KAŞARLI DOMATESLİ PİDE', NULL, 'domates, kaşar peyniri,  baharatlar ', NULL, 'PİDE', 20, 420, 2, 0, 0, 0, '1', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/502.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '0,2,3', NULL, NULL, 1, '[\"Domates\", \"Kaşar Peyniri\", \"Baharatlar\"]', NULL),
(503, 173, NULL, '000173', 'KAŞARLI YUMURTALI PİDE', NULL, ' yumurta, kaşar peyniri, tereyağı, karabiber', NULL, 'PİDE', 20, 460, 4, 0, 0, 0, '1', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/503.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '0,2,3', NULL, NULL, 1, '[\"Yumurta\", \"Kaşar Peyniri\", \"Tereyağı\", \"Karabiber\"]', NULL),
(504, 174, NULL, '000174', 'TAVUKLU PİDE', NULL, ' tavuk eti, domates, biber, soğan, zeytinyağı, baharatlar (karabiber, pul biber), yoğurt ', NULL, 'PİDE', 20, 420, 14, 0, 0, 0, '1', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/504.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '0,2,3', NULL, NULL, 1, '[\"Tavuk Eti\", \"Domates\", \"Biber\", \"Soğan\", \"Zeytinyağı\", \"Baharatlar (Karabiber\", \"Pul Biber)\", \"Yoğurt\"]', NULL),
(505, 175, NULL, '000175', 'TAVUKLU & KAŞARLI PIDE', NULL, 'tavuk eti, kaşar peyniri, domates, biber, soğan, baharatlar (karabiber, pul biber), ', NULL, 'PİDE', 20, 490, 13, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/505.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 1, '[\"Tavuk Eti\", \"Kaşar Peyniri\", \"Domates\", \"Biber\", \"Soğan\", \"Baharatlar (Karabiber\", \"Pul Biber)\"]', NULL),
(506, 176, NULL, '000176', 'KUŞBAŞILI PİDE', NULL, 'kuşbaşı et, soğan, biber, domates, baharatlar (karabiber, pul biber)', NULL, 'PİDE', 20, 470, 9, 0, 0, 0, '1', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/506.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '0,2,3', NULL, NULL, 0, '[\"Kuşbaşı Et\", \"Soğan\", \"Biber\", \"Domates\", \"Baharatlar (Karabiber\", \"Pul Biber)\"]', NULL),
(507, 177, NULL, '000177', 'KUŞBAŞILI KAŞARLI PİDE', NULL, ' kuşbaşı et, kaşar peyniri, biber, domates, baharatlar (karabiber, pul biber)', NULL, 'PİDE', 20, 540, 8, 0, 0, 0, '1', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/507.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '0,2,3', NULL, NULL, 1, '[\"Kuşbaşı Et\", \"Kaşar Peyniri\", \"Biber\", \"Domates\", \"Baharatlar (Karabiber\", \"Pul Biber)\"]', NULL),
(508, 178, NULL, '000178', 'SUCUKLU KAŞARLI PİDE', NULL, 'sucuk, kaşar peyniri, biber ', NULL, 'PİDE', 20, 540, 11, 0, 0, 0, '1', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/508.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '0,2,3', NULL, NULL, 1, '[\"Sucuk\", \"Kaşar Peyniri\", \"Biber\"]', NULL),
(509, 180, NULL, '000180', 'KARIŞIK PİDE', NULL, 'kıyma, sucuk, beyaz peynir, kaşar peyniri, domates, biber, soğan, baharatlar (karabiber, pul biber)', NULL, 'PİDE', 20, 540, 1, 0, 0, 0, '1', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/509.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '0,2,3', NULL, NULL, 1, '[\"Kıyma\", \"Sucuk\", \"Beyaz Peynir\", \"Kaşar Peyniri\", \"Domates\", \"Biber\", \"Soğan\", \"Baharatlar (Karabiber\", \"Pul Biber)\"]', NULL),
(510, 181, NULL, '000181', 'VEGETARIAN PİDE', NULL, 'domates, biber, soğan, mantar, beyaz peynir , maydanoz, baharatlar', NULL, 'PİDE', 20, 520, 15, 0, 0, 0, '1', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/510.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'Mantarsız,Soğansız,Domatessiz', '0,2,3', NULL, NULL, 1, '[\"Domates\", \"Biber\", \"Soğan\", \"Mantar\", \"Beyaz Peynir\", \"Maydanoz\", \"Baharatlar\"]', NULL),
(511, 182, NULL, '000182', 'LAHMACUN', NULL, 'kıyma , soğan, domates, biber, sarımsak, baharatlar (kararbiber, pul biber, kimyon), maydanoz, zeytinyağı, salça, biber salçası.', NULL, 'PİDE', 20, 280, 10, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/511.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'ACILI', '', NULL, NULL, 0, '[\"Kıyma\", \"Soğan\", \"Domates\", \"Biber\", \"Sarımsak\", \"Baharatlar (Kararbiber\", \"Pul Biber\", \"Kimyon)\", \"Maydanoz\", \"Zeytinyağı\", \"Salça\", \"Biber Salçası\"]', NULL),
(512, 184, NULL, '000184', 'MARGHERITA PİZZA', NULL, 'Pizza hamuru, domates, mozzarella peyniri, taze fesleğen,', NULL, 'PIZZAS', 21, 540, 7, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/512.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'DOMATASSİZ', '', NULL, NULL, 1, '[\"Pizza Hamuru\", \"Domates\", \"Mozzarella Peyniri\", \"Taze Fesleğen\"]', NULL),
(513, 185, NULL, '000185', 'KARIŞIK PİZZA', NULL, 'Pizza hamuru,domates sosu , mozzarella peyniri, sucuk, salam, mantar, biber, zeytin, soğan, baharatlar (karabiber, kekik)', NULL, 'PIZZAS', 21, 630, 5, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/513.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'ZEYTİNSİZ,DOMATESSİZ,BİBERSİZ,MANTARSIZ,SOSİSSİZ', '', NULL, NULL, 1, '[\"Pizza Hamuru\", \"Domates Sosu\", \"Mozzarella Peyniri\", \"Sucuk\", \"Salam\", \"Mantar\", \"Biber\", \"Zeytin\", \"Soğan\", \"Baharatlar (Karabiber\", \"Kekik)\"]', NULL),
(514, 186, NULL, '000186', 'SUCUKLU PİZZA', NULL, 'Pizza hamuru, domates sosu , sucuk, mozzarella peyniri, biber,  zeytin, baharatlar', NULL, 'PIZZAS', 21, 630, 8, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/514.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'DOMATESSİZ', '', NULL, NULL, 1, '[\"Pizza Hamuru\", \"Domates Sosu\", \"Sucuk\", \"Mozzarella Peyniri\", \"Biber\", \"Zeytin\", \"Baharatlar\"]', NULL),
(515, 187, NULL, '000187', 'TONNO PİZZA', NULL, 'Pizza hamuru, domates sosu, ton balığı, mozzarella peyniri, zeytin, soğan, baharatlar', NULL, 'PIZZAS', 21, 650, 10, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/515.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'DOMATESSİZ', '', NULL, NULL, 1, '[\"Pizza Hamuru\", \"Domates Sosu\", \"Ton Balığı\", \"Mozzarella Peyniri\", \"Zeytin\", \"Soğan\", \"Baharatlar\"]', NULL),
(516, 188, NULL, '000188', 'HAWAII PIZZA', NULL, 'Hamur, domates sosu, mozzarella peyniri, jambon, ananas, zeytin, baharatlar', NULL, 'PIZZAS', 21, 630, 4, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/516.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'DOMATESSİZ', '', NULL, NULL, 1, '[\"Hamur\", \"Domates Sosu\", \"Mozzarella Peyniri\", \"Jambon\", \"Ananas\", \"Zeytin\", \"Baharatlar\"]', NULL),
(517, 189, NULL, '000189', 'DENİZ MAHSULLÜ PIZZA', NULL, 'Pizza hamuru, domates sosu, mozzarella peyniri, karides, kalamar, midye, zeytinyağı, sarımsak, tuz, karabiber, maydanoz (aleljen: deniz ürünleri)', NULL, 'PIZZAS', 21, 690, 2, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/517.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 1, '[\"Pizza Hamuru\", \"Domates Sosu\", \"Mozzarella Peyniri\", \"Karides\", \"Kalamar\", \"Midye\", \"Zeytinyağı\", \"Sarımsak\", \"Tuz\", \"Karabiber\", \"Maydanoz\"]', NULL),
(518, 190, NULL, '000190', 'ET DONER PİZZA', NULL, 'Pizza hamuru, domates sosu, rendelenmiş mozzarella peyniri, et döner, yeşil biber, soğan, zeytinyağı, baharatlar', NULL, 'PIZZAS', 21, 690, 3, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/518.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 1, '[\"Pizza Hamuru\", \"Domates Sosu\", \"Et Döner\", \"Yeşil Biber\", \"Soğan\", \"Zeytinyağı\", \"Baharatlar\"]', NULL),
(519, 191, NULL, '000191', 'TAVUK DONER  PİZZA', NULL, 'Pizza hamuru, domates sosu, tavuk döner, mozzarella peyniri, yeşil biber, soğan, zeytin, baharatlar', NULL, 'PIZZAS', 21, 640, 9, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/519.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 1, '[\"Pizza Hamuru\", \"Domates Sosu\", \"Tavuk Döner\", \"Mozzarella Peyniri\", \"Yeşil Biber\", \"Soğan\", \"Zeytin\", \"Baharatlar\"]', NULL),
(520, 192, NULL, '000192', 'VEGETARIAN PİZZA', NULL, 'Pizza hamuru, domates sosu, mozzarella peyniri, biber, mantar, soğan, zeytin, baharatlar (örneğin, kekik, karabiber)', NULL, 'PIZZAS', 21, 630, 11, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/520.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'SOĞANSIZ,MANTARSIZ,MISIRSIZ', '', NULL, NULL, 1, '[\"Pizza Hamuru\", \"Domates Sosu\", \"Mozzarella Peyniri\", \"Biber\", \"Mantar\", \"Soğan\", \"Zeytin\", \"Baharatlar (Örneğin\", \"Kekik\", \"Karabiber)\"]', NULL),
(521, 193, NULL, '000193', 'MANTARLI PİZZA', NULL, 'Hamur, domates sosu, mozzarella peyniri, mantar, zeytinyağı, tuz, karabiber, kekik', NULL, 'PIZZAS', 21, 630, 6, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/521.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 1, '[\"Hamur\", \"Domates Sosu\", \"Mozzarella Peyniri\", \"Mantar\", \"Zeytinyağı\", \"Tuz\", \"Karabiber\", \"Kekik\"]', NULL),
(522, 194, NULL, '000194', 'SPAGHETTI BOLOGNESE', NULL, 'Spagetti, kıyma (sığır), domates, soğan, sarımsak, havuç, kereviz, karabiber, kekik, parmesan peyniri ', NULL, 'PASTAS', 22, 480, 4, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/522.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Spagetti\", \"Kıyma\", \"Domates\", \"Soğan\", \"Sarımsak\", \"Havuç\", \"Kereviz\", \"Karabiber\", \"Kekik\", \"Parmesan Peyniri\"]', NULL),
(523, 195, NULL, '000195', 'SPAGHETTI NAPOLITANA', NULL, 'Spagetti, domates, soğan, sarımsak, karabiber, fesleğen ', NULL, 'PASTAS', 22, 450, 6, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/523.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Spagetti\", \"Domates\", \"Soğan\", \"Sarımsak\", \"Karabiber\", \"Fesleğen\"]', NULL),
(524, 196, NULL, '000196', 'SPAGHETTI CARBONARA', NULL, 'Spaghetti, yumurta, parmesan peyniri, pancetta, karabiber,  zeytinyağı', NULL, 'PASTAS', 22, 610, 5, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/524.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Spaghetti\", \"Yumurta\", \"Parmesan Peyniri\", \"Pancetta\", \"Karabiber\", \"Zeytinyağı\"]', NULL),
(525, 197, NULL, '000197', 'PENNE ARABIATTA', NULL, 'Penne makarna, zeytinyağı, sarımsak, domates, kırmızı biber,  karabiber, fesleğen, parmesan peyniri', NULL, 'PASTAS', 22, 450, 1, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/525.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'Zeytinsiz,Acısız', '', NULL, NULL, 0, '[\"Penne Makarna\", \"Zeytinyağı\", \"Sarımsak\", \"Domates\", \"Kırmızı Biber\", \"Karabiber\", \"Fesleğen\", \"Parmesan Peyniri\"]', NULL),
(526, 198, NULL, '000198', 'PENNE CENTER', NULL, 'Penne makarna, domates sosu, zeytinyağı, sarımsak,  karabiber, parmesan peyniri , fesleğen.', NULL, 'PASTAS', 22, 540, 2, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/526.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'Mantarsız', '', NULL, NULL, 0, '[\"Penne Makarna\", \"Domates Sosu\", \"Zeytinyağı\", \"Sarımsak\", \"Karabiber\", \"Parmesan Peyniri\", \"Fesleğen\"]', NULL),
(527, 199, NULL, '000199', 'PENNE DENİZ MAHSULLÜ', NULL, 'Penne makarna, karides, kalamar, midye, zeytinyağı, sarımsak, domates, beyaz şarap, tuz, karabiber, maydanoz', NULL, 'PASTAS', 22, 690, 3, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/527.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Penne Makarna\", \"Karides\", \"Kalamar\", \"Midye\", \"Zeytinyağı\", \"Sarımsak\", \"Domates\", \"Beyaz Şarap\", \"Tuz\", \"Karabiber\", \"Maydanoz\"]', NULL),
(528, 200, NULL, '000200', 'HAMBURGER', NULL, 'Köfte, hamburger ekmeği, marul, domates, soğan, turşu, ketçap, mayonez, hardal, tuz, karabiber.', NULL, 'BURGERS', 23, 450, 8, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/528.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Köfte\", \"Hamburger Ekmeği\", \"Marul\", \"Domates\", \"Soğan\", \"Turşu\", \"Ketçap\", \"Mayonez\", \"Hardal\", \"Tuz\", \"Karabiber\"]', NULL),
(529, 201, NULL, '000201', 'DOUBLE BURGER', NULL, 'Dana kıyma, cheddar peyniri, marul, domates, turşu, soğan, hamburger ekmeği, mayonez, ketçap, tuz, karabiber', NULL, 'BURGERS', 23, 540, 6, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/529.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 1, '[\"Dana Kıyma\", \"Cheddar Peyniri\", \"Marul\", \"Domates\", \"Turşu\", \"Soğan\", \"Hamburger Ekmeği\", \"Mayonez\", \"Ketçap\", \"Tuz\", \"Karabiber\"]', NULL),
(530, 202, NULL, '000202', 'CHEESEBURGER', NULL, 'Kıyma, cheddar peyniri, hamburger ekmeği, marul, domates, turşu, soğan, ketçap, hardal, tuz, karabiber', NULL, 'BURGERS', 23, 520, 3, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/530.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 1, '[\"Kıyma\", \"Cheddar Peyniri\", \"Hamburger Ekmeği\", \"Marul\", \"Domates\", \"Turşu\", \"Soğan\", \"Ketçap\", \"Hardal\", \"Tuz\", \"Karabiber\"]', NULL),
(531, 203, NULL, '000203', 'DOUBLE CHEESEBURGER', NULL, 'Dana kıyma, cheddar peyniri, hamburger ekmeği, marul, domates, soğan, turşu, ketçap, hardal, tuz, karabiber', NULL, 'BURGERS', 23, 670, 7, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/531.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 1, '[\"Dana Kıyma\", \"Cheddar Peyniri\", \"Hamburger Ekmeği\", \"Marul\", \"Domates\", \"Soğan\", \"Turşu\", \"Ketçap\", \"Hardal\", \"Tuz\", \"Karabiber\"]', NULL),
(532, 204, NULL, '000204', 'CHICKEN BURGER', NULL, 'Tavuk köftesi, hamburger ekmeği, marul, domates, soğan, turşu, mayonez, ketçap, tuz, karabiber', NULL, 'BURGERS', 23, 410, 4, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/532.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'No.Chips', '', NULL, NULL, 0, '[\"Tavuk Köftesi\", \"Hamburger Ekmeği\", \"Marul\", \"Domates\", \"Soğan\", \"Turşu\", \"Mayonez\", \"Ketçap\", \"Tuz\", \"Karabiber\"]', NULL),
(533, 205, NULL, '000205', 'CHİCKEN CHEESE BURGER', NULL, 'Tavuk köftesi, cheddar peyniri, hamburger ekmeği, marul, domates, turşu, mayonez, ketçap, tuz, karabiber', NULL, 'BURGERS', 23, 480, 5, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/533.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 1, '[\"Tavuk Köftesi\", \"Cheddar Peyniri\", \"Hamburger Ekmeği\", \"Marul\", \"Domates\", \"Turşu\", \"Mayonez\", \"Ketçap\", \"Tuz\", \"Karabiber\"]', NULL),
(534, 206, NULL, '000206', 'BROODJE KROKET', NULL, 'Kroket, ekmek, mayonez, marul, domates, soğan, tuz, karabiber', NULL, 'BURGERS', 23, 440, 2, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/534.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Kroket\", \"Ekmek\", \"Mayonez\", \"Marul\", \"Domates\", \"Soğan\", \"Tuz\", \"Karabiber\"]', NULL),
(535, 207, NULL, '000207', 'BROODJE FRIKANDEL', NULL, 'Frikandel, ekmek, soğan, mayonez, ketçap, hardal, tuz, biber.', NULL, 'BURGERS', 23, 440, 1, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/535.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Frikandel\", \"Ekmek\", \"Soğan\", \"Mayonez\", \"Ketçap\", \"Hardal\", \"Tuz\", \"Biber\"]', NULL),
(536, 208, NULL, '000208', 'PEYNİRLİ DOMATESLİ TOST', NULL, 'Ekmek, peynir, domates, tereyağı, tuz, karabiber', NULL, 'LIGHT LUNCH', 24, 350, 6, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/536.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 1, '[\"Ekmek\", \"Peynir\", \"Domates\", \"Tereyağı\", \"Tuz\", \"Karabiber\"]', NULL),
(537, 209, NULL, '000209', 'BACON & CHEESE TOASTIE', NULL, 'Ekmek, bacon (domuz eti), cheddar peyniri, tereyağı, tuz, karabiber', NULL, 'LIGHT LUNCH', 24, 450, 1, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/537.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 1, '[\"Ekmek\", \"Bacon\", \"Cheddar Peyniri\", \"Tereyağı\", \"Tuz\", \"Karabiber\"]', NULL),
(538, 210, NULL, '000210', 'BACON & EGG ROLLS', NULL, 'Bacon, yumurta, ', NULL, 'LIGHT LUNCH', 24, 450, 2, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/538.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Bacon\", \"Yumurta\"]', NULL),
(539, 211, NULL, '000211', 'CHIP BUTTY', NULL, 'Patates, ekmek, ', NULL, 'LIGHT LUNCH', 24, 340, 3, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/539.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Patates\", \"Ekmek\"]', NULL),
(540, 212, NULL, '000212', 'TUNA  MAYO SANDWICH (COLD)', NULL, 'Tuna balığı, mayonez, ekmek, marul, domates, tuz, karabiber', NULL, 'LIGHT LUNCH', 24, 410, 8, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/540.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Tuna Balığı\", \"Mayonez\", \"Ekmek\", \"Marul\", \"Domates\", \"Tuz\", \"Karabiber\"]', NULL),
(541, 213, NULL, '000213', 'TAVUK  DÜRÜM CHİPS', NULL, 'Tavuk, lavaş ekmek, marul, domates, soğan, mayonez, ketçap, baharatlar, patates cipsi', NULL, 'LIGHT LUNCH', 24, 400, 7, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/541.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'Soğansız,Domatesiz,Marulsuz,Paket', '', NULL, NULL, 0, '[\"Tavuk\", \"Lavaş Ekmek\", \"Marul\", \"Domates\", \"Soğan\", \"Mayonez\", \"Ketçap\", \"Baharatlar\", \"Patates Cipsi\"]', NULL),
(542, 214, NULL, '000214', 'ET DÜRÜM CHİPS', NULL, 'Et, lavaş ekmeği, domates, soğan, yeşil biber, mayonez, ketçap, baharatlar, tuz, patates (kızartılmış)', NULL, 'LIGHT LUNCH', 24, 460, 4, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/542.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'Soğansız,Domatessiz,PAKET,Marulsuz', '', NULL, NULL, 0, '[\"Et\", \"Lavaş Ekmeği\", \"Domates\", \"Soğan\", \"Yeşil Biber\", \"Mayonez\", \"Ketçap\", \"Baharatlar\", \"Tuz\", \"Patates\"]', NULL),
(543, 215, NULL, '000215', 'MINI SALAD', NULL, 'Marul, domates, salatalık, havuç, zeytinyağı, limon suyu, tuz, karabiber', NULL, 'SIDE ORDERS', 25, 170, 3, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/543.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Marul\", \"Domates\", \"Salatalık\", \"Havuç\", \"Zeytinyağı\", \"Limon Suyu\", \"Tuz\", \"Karabiber\"]', NULL),
(544, 216, NULL, '000216', 'PİLAV', NULL, 'Pirinç, tereyağı, baharatlar', NULL, 'SIDE ORDERS', 25, 180, 6, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/544.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 1, '[\"Pirinç\", \"Tereyağı\", \"Baharatlar\"]', NULL),
(545, 217, NULL, '000217', 'MUSHROOM  SAUCE', NULL, 'Mantar, soya sosu,baharatlar, sarımsak, soğan, ', NULL, 'SIDE ORDERS', 25, 180, 4, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/545.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Mantar\", \"Soya Sosu\", \"Baharatlar\", \"Sarımsak\", \"Soğan\"]', NULL),
(546, 218, NULL, '000218', 'PEPPER SAUCE', NULL, 'Biber, sirke, tuz, şeker, baharatlar', NULL, 'SIDE ORDERS', 25, 150, 5, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/546.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Biber\", \"Sirke\", \"Tuz\", \"Şeker\", \"Baharatlar\"]', NULL),
(547, 219, NULL, '000219', 'CURRY  SAUCE', NULL, 'Domates püresi, soğan, sarımsak, zencefil, zerdeçal, kimyon, kişniş, acı biber, tuz, şeker, yağ, krema (süt), baharatlar', NULL, 'SIDE ORDERS', 25, 150, 1, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/547.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 1, '[\"Domates Püresi\", \"Soğan\", \"Sarımsak\", \"Zencefil\", \"Zerdeçal\", \"Kimyon\", \"Kişniş\", \"Acı Biber\", \"Tuz\", \"Şeker\", \"Yağ\", \"Krema\", \"Baharatlar\"]', NULL),
(548, 220, NULL, '000220', 'DOMATES ÇORBASI', NULL, 'Domates, soğan, sarımsak, zeytinyağı, tuz, karabiber, sebze suyu, krema (laktoz), taze fesleğen', NULL, 'HOT STARTERS', 26, 220, 2, 150, 0, 0, '1', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/548.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'STARTER,', '0,1', NULL, NULL, 1, '[\"Domates\", \"Soğan\", \"Sarımsak\", \"Zeytinyağı\", \"Tuz\", \"Karabiber\", \"Sebze Suyu\", \"Krema\", \"Taze Fesleğen\"]', NULL),
(549, 221, NULL, '000221', 'MERCİMEK ÇORBASI', NULL, 'Mercimek, soğan, havuç, patates, sarımsak, zeytinyağı, tuz, karabiber, su, limon suyu ', NULL, 'HOT STARTERS', 26, 220, 7, 150, 0, 0, '1', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/549.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'STARTER,', '0,1', NULL, NULL, 0, '[\"Mercimek\", \"Soğan\", \"Havuç\", \"Patates\", \"Sarımsak\", \"Zeytinyağı\", \"Tuz\", \"Karabiber\", \"Su\", \"Limon Suyu\"]', NULL),
(550, 222, NULL, '000222', 'SİGARA BÖREĞİ', NULL, 'Yufka, beyaz peynir, maydanoz, yumurta, sıvı yağ, tuz, karabiber', NULL, 'HOT STARTERS', 26, 310, 12, 0, 0, 0, '1', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/550.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'STARTER', '0,1,3', NULL, NULL, 1, '[\"Yufka\", \"Beyaz Peynir\", \"Maydanoz\", \"Yumurta\", \"Sıvı Yağ\", \"Tuz\", \"Karabiber\"]', NULL),
(551, 223, NULL, '000223', 'SPRING ROLLS', NULL, 'Un, su, sebzeler (havuç, lahana, soğan), tofu, baharatlar, yağ, sos (soya sosu, acı sos)', NULL, 'HOT STARTERS', 26, 340, 14, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/551.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'STARTER', '', NULL, NULL, 0, '[\"Un\", \"Su\", \"Sebzeler (Havuç\", \"Lahana\", \"Soğan)\", \"Tofu\", \"Baharatlar\", \"Yağ\", \"Sos (Soya Sosu\", \"Acı Sos)\"]', NULL),
(552, 224, NULL, '000224', 'ET SAMOSA', NULL, 'Un, kıyma (sığır eti), soğan, baharatlar, tuz, yağ, su, sarımsak, zencefil, biber (alerjen: gluten)', NULL, 'HOT STARTERS', 26, 360, 3, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/552.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'STARTER', '', NULL, NULL, 0, '[\"Un\", \"Kıyma\", \"Soğan\", \"Baharatlar\", \"Tuz\", \"Yağ\", \"Su\", \"Sarımsak\", \"Zencefil\", \"Biber\"]', NULL),
(553, 225, NULL, '000225', 'SOĞAN HALKASI', NULL, 'Soğan, un, mısır nişastası, tuz, karabiber, yağ (ayçiçek yağı veya sıvı yağ)', NULL, 'HOT STARTERS', 26, 300, 13, 0, 0, 0, '1', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/553.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'STARTER', '0,1,3', NULL, NULL, 0, '[\"Soğan\", \"Un\", \"Mısır Nişastası\", \"Tuz\", \"Karabiber\", \"Yağ\"]', NULL),
(554, 226, NULL, '000226', 'FALAFEL', NULL, 'Nohut, soğan, sarımsak, maydanoz, kimyon, kişniş, tuz, karabiber, un, yağ (kızartmak için)', NULL, 'HOT STARTERS', 26, 440, 4, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/554.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'CİPSLİ', '', NULL, NULL, 0, '[\"Nohut\", \"Soğan\", \"Sarımsak\", \"Maydanoz\", \"Kimyon\", \"Kişniş\", \"Tuz\", \"Karabiber\", \"Un\", \"Yağ\"]', NULL),
(555, 227, NULL, '000227', 'SARIMSAKLI EKMEK PEYNİRLİ', NULL, 'Ekmek, sarımsak, tereyağı, rendelenmiş peynir, tuz, karabiber, maydanoz (alerjen: süt)', NULL, 'HOT STARTERS', 26, 350, 11, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/555.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'NO GARLIC,STARTER', '', NULL, NULL, 1, '[\"Ekmek\", \"Sarımsak\", \"Tereyağı\", \"Rendelenmiş Peynir\", \"Tuz\", \"Karabiber\", \"Maydanoz\"]', NULL),
(556, 228, NULL, '000228', 'SARIMSAKLI EKMEK', NULL, 'Ekmek, sarımsak, tereyağı, tuz, maydanoz (alerjen: gluten)', NULL, 'HOT STARTERS', 26, 280, 10, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/556.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'No.Cheese', '', NULL, NULL, 1, '[\"Ekmek\", \"Sarımsak\", \"Tereyağı\", \"Tuz\", \"Maydanoz\"]', NULL),
(557, 229, NULL, '000229', 'CHİPS', NULL, 'Patates, bitkisel yağ, tuz, baharatlar ', NULL, 'HOT STARTERS', 26, 230, 1, 0, 0, 0, '1', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/557.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'STARTER', '0,1,2,3', NULL, NULL, 0, '[\"Patates\", \"Bitkisel Yağ\", \"Tuz\", \"Baharatlar\"]', NULL),
(558, 230, NULL, '000230', 'PİLAV', NULL, 'Pirinç, tereyağı ', NULL, 'HOT STARTERS', 26, 190, 9, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/558.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'STARTER', '', NULL, NULL, 1, '[\"Pirinç\", \"Tereyağı\"]', NULL),
(559, 231, NULL, '000231', 'KALAMAR TAVA', NULL, 'Kalamar, karabiber', NULL, 'HOT STARTERS', 26, 650, 5, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/559.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'STARTER', '', NULL, NULL, 0, '[\"Kalamar\", \"Karabiber\"]', NULL),
(560, 232, NULL, '000232', 'TEREYAĞLI KARİDES', NULL, 'Karides, tereyağı, sarımsak, tuz, karabiber, limon suyu, maydanoz ', NULL, 'HOT STARTERS', 26, 650, 15, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/560.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'STARTER', '', NULL, NULL, 1, '[\"Karides\", \"Tereyağı\", \"Sarımsak\", \"Tuz\", \"Karabiber\", \"Limon Suyu\", \"Maydanoz\"]', NULL),
(561, 233, NULL, '000233', 'NACHOS', NULL, 'Mısır cipsi, cheddar peyniri, jalapeño biberi, guacamole, salsa sosu, ekşi krema', NULL, 'HOT STARTERS', 26, 310, 8, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/561.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'STARTER', '', NULL, NULL, 1, '[\"Mısır Cipsi\", \"Cheddar Peyniri\", \"Jalapeño Biberi\", \"Guacamole\", \"Salsa Sosu\", \"Ekşi Krema\"]', NULL),
(562, 234, NULL, '000234', 'HAYDARI', NULL, 'Yoğurt, süzme yoğurt, sarımsak, zeytinyağı, tuz, nane (isteğe bağlı)', NULL, 'COLD STARTERS', 27, 220, 2, 0, 0, 0, '1', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/562.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'STARTER', '0,1', NULL, NULL, 1, '[\"Yoğurt\", \"Süzme Yoğurt\", \"Sarımsak\", \"Zeytinyağı\", \"Tuz\", \"Nane\"]', NULL),
(563, 235, NULL, '000235', 'ANTEP EZME', NULL, 'Antepfıstığı, zeytinyağı, tuz, limon suyu, sarımsak, kimyon, biber salçası, nar ekşisi, baharatlar', NULL, 'COLD STARTERS', 27, 220, 1, 0, 0, 0, '1', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/563.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'STARTER', '0,1', NULL, NULL, 0, '[\"Antepfıstığı\", \"Zeytinyağı\", \"Tuz\", \"Limon Suyu\", \"Sarımsak\", \"Kimyon\", \"Biber Salçası\", \"Nar Ekşisi\", \"Baharatlar\"]', NULL),
(564, 236, NULL, '000236', 'HUMUS', NULL, 'Nohut, tahin, zeytinyağı, limon suyu, sarımsak, tuz, kimyon, su', NULL, 'COLD STARTERS', 27, 260, 3, 0, 0, 0, '1', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/564.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'STARTER', '0,1', NULL, NULL, 0, '[\"Nohut\", \"Tahin\", \"Zeytinyağı\", \"Limon Suyu\", \"Sarımsak\", \"Tuz\", \"Kimyon\", \"Su\"]', NULL),
(565, 237, NULL, '000237', 'TAVUKLU CEASAR SALATA', NULL, 'Tavuk, marul, kruton, parmesan peyniri, ceasar sos, limon suyu, sarımsak, zeytinyağı, tuz, karabiber', NULL, 'SALADS', 28, 480, 3, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/565.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Tavuk\", \"Marul\", \"Kruton\", \"Parmesan Peyniri\", \"Ceasar Sos\", \"Limon Suyu\", \"Sarımsak\", \"Zeytinyağı\", \"Tuz\", \"Karabiber\"]', NULL),
(566, 238, NULL, '000238', 'TUNA SALAD', NULL, 'Tuna, marul, domates, salatalık, zeytinyağı, limon suyu, tuz, karabiber, soğan (alerjen: balık)', NULL, 'SALADS', 28, 420, 4, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/566.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Tuna\", \"Marul\", \"Domates\", \"Salatalık\", \"Zeytinyağı\", \"Limon Suyu\", \"Tuz\", \"Karabiber\", \"Soğan\"]', NULL),
(567, 239, NULL, '000239', 'GREEK SALAD', NULL, 'Domates, salatalık, kırmızı soğan, yeşil biber, siyah zeytin, beyaz peynir, zeytinyağı, limon suyu, tuz, karabiber', NULL, 'SALADS', 28, 420, 2, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/567.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 1, '[\"Domates\", \"Salatalık\", \"Kırmızı Soğan\", \"Yeşil Biber\", \"Siyah Zeytin\", \"Beyaz Peynir\", \"Zeytinyağı\", \"Limon Suyu\", \"Tuz\", \"Karabiber\"]', NULL),
(568, 240, NULL, '000240', 'ÇOBAN SALATA', NULL, 'domates, salatalık, yeşil biber, soğan, maydanoz, limon suyu, zeytinyağı, tuz, karabiber', NULL, 'SALADS', 28, 280, 1, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/568.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Domates\", \"Salatalık\", \"Yeşil Biber\", \"Soğan\", \"Maydanoz\", \"Limon Suyu\", \"Zeytinyağı\", \"Tuz\", \"Karabiber\"]', NULL),
(569, 241, NULL, '000241', 'CENTER MIXED SPECİAL', NULL, NULL, NULL, 'IZGARALAR', 46, 890, 2, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/569.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, NULL, NULL),
(570, 242, NULL, '000242', 'CENTER MEAT SPECİAL', NULL, 'Dana eti, baharatlar, soğan, sarımsak, zeytinyağı', NULL, 'IZGARALAR', 21, 890, 1, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/570.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'Soğansız,Bİbersİz,Sarımsaksız', '', NULL, NULL, 0, '[\"Dana Eti\", \"Baharatlar\", \"Soğan\", \"Sarımsak\", \"Zeytinyağı\"]', NULL),
(571, 243, NULL, '000243', 'ET GÜVEÇ', NULL, 'Et, soğan, sarımsak, domates, biber, havuç, patates, bezelye, baharatlar (tuz, karabiber, kimyon), sıvı yağ, su.', NULL, 'IZGARALAR', 46, 890, 4, 0, 0, 0, '1', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/571.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'Soğansız,Bibersiz,Domatessiz,Kaşarsız', '0,1,2,3', NULL, NULL, 0, '[\"Et\", \"Soğan\", \"Sarımsak\", \"Domates\", \"Biber\", \"Havuç\", \"Patates\", \"Bezelye\", \"Baharatlar (Tuz\", \"Karabiber\", \"Kimyon)\", \"Sıvı Yağ\", \"Su\"]', NULL),
(572, 244, NULL, '000244', 'KÖFTE', NULL, 'Kıyma, soğan, ekmek içi, yumurta, tuz, karabiber, kimyon, maydanoz, sıvı yağ', NULL, 'IZGARALAR', 46, 620, 7, 0, 0, 0, '1', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/572.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'Soğansız,Bİbersİz,Domatessİz,Pİlavsız', '0,1,2', NULL, NULL, 0, '[\"Kıyma\", \"Soğan\", \"Ekmek Içi\", \"Yumurta\", \"Tuz\", \"Karabiber\", \"Kimyon\", \"Maydanoz\", \"Sıvı Yağ\"]', NULL),
(573, 245, NULL, '000245', 'MUSAKKA', NULL, 'Patlıcan, kıyma (sığır veya kuzu), soğan, sarımsak, domates, biber, zeytinyağı, tuz, karabiber, tarçın, beşamel sos (un, süt, tereyağı, tuz, muskat), peynir (isteğe bağlı)', NULL, 'IZGARALAR', 46, 670, 10, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/573.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'Soğansız,Sarımsaksız,Domatesİz,Peynİrsİz', '', NULL, NULL, 1, '[\"Patlıcan\", \"Kıyma\", \"Soğan\", \"Sarımsak\", \"Domates\", \"Biber\", \"Zeytinyağı\", \"Tuz\", \"Karabiber\", \"Tarçın\", \"Beşamel Sos (Un\", \"Süt\", \"Tereyağı\", \"Muskat)\", \"Peynir\"]', NULL),
(574, 246, NULL, '000246', 'ADANA KEBAB', NULL, 'Kıyma (kuzu, dana), soğan, sarımsak, biber salçası, pul biber, tuz, karabiber, kimyon, maydanoz, şiş, lavaş, domates, yeşil biber.', NULL, 'IZGARALAR', 46, 670, 1, 0, 0, 0, '1', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/574.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'Soğansız,Domatessİz,Bİbersİz,Pİlavsız', '0,2,3', NULL, NULL, 0, '[\"Kıyma (Kuzu\", \"Dana)\", \"Soğan\", \"Sarımsak\", \"Biber Salçası\", \"Pul Biber\", \"Tuz\", \"Karabiber\", \"Kimyon\", \"Maydanoz\", \"Şiş\", \"Lavaş\", \"Domates\", \"Yeşil Biber\"]', NULL),
(575, 247, NULL, '000247', 'URFA KEBAB', NULL, 'Kıyma (sığır eti, kuzu eti), soğan, sarımsak, biber salçası, tuz, karabiber, kimyon, pul biber, maydanoz, lavaş, domates, yeşil biber, sumak, nar ekşisi.', NULL, 'IZGARALAR', 46, 670, 12, 0, 0, 0, '1', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/575.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'Soğansız,bİbersİz,Domatesİz,Pİkavsız', '0,2,3', NULL, NULL, 0, '[\"Kıyma (Sığır Eti\", \"Kuzu Eti)\", \"Soğan\", \"Sarımsak\", \"Biber Salçası\", \"Tuz\", \"Karabiber\", \"Kimyon\", \"Pul Biber\", \"Maydanoz\", \"Lavaş\", \"Domates\", \"Yeşil Biber\", \"Sumak\", \"Nar Ekşisi\"]', NULL),
(576, 248, NULL, '000248', 'KUZU ŞİŞ', NULL, 'Kuzu eti, soğan, biber, domates, zeytinyağı, tuz, karabiber, kekik, sarımsak, şiş.', NULL, 'IZGARALAR', 46, 1400, 9, 0, 0, 0, '1', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/576.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'Soğansız,Domatessİz,Bİbersİz,Pİlavsız', '0,1,2,3', NULL, NULL, 0, '[\"Kuzu Eti\", \"Soğan\", \"Biber\", \"Domates\", \"Zeytinyağı\", \"Tuz\", \"Karabiber\", \"Kekik\", \"Sarımsak\", \"Şiş\"]', NULL),
(577, 249, NULL, '000249', 'KUZU PİRZOLA', NULL, 'Kuzu pirzola, tuz, karabiber, zeytinyağı, sarımsak, kekik, limon suyu', NULL, 'IZGARALAR', 46, 1600, 8, 0, 0, 0, '1', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/577.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'Soğansız,Domatessİz,Bİbersİz,Pİlavsız', '0,2,3', NULL, NULL, 0, '[\"Kuzu Pirzola\", \"Tuz\", \"Karabiber\", \"Zeytinyağı\", \"Sarımsak\", \"Kekik\", \"Limon Suyu\"]', NULL),
(578, 250, NULL, '000250', 'ET FAJITA', NULL, 'Dana eti, soğan, biber (yeşil, kırmızı), sarımsak, zeytinyağı, tuz, karabiber, fajita baharatı, tortilla ekmeği, limon suyu', NULL, 'IZGARALAR', 46, 1400, 3, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/578.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Dana Eti\", \"Soğan\", \"Biber (Yeşil\", \"Kırmızı)\", \"Sarımsak\", \"Zeytinyağı\", \"Tuz\", \"Karabiber\", \"Fajita Baharatı\", \"Tortilla Ekmeği\", \"Limon Suyu\"]', NULL),
(579, 251, NULL, '000251', 'KARIŞIK IZGARA', NULL, 'Tavuk, dana eti, kuzu eti, sucuk, biber, domates, soğan, zeytinyağı, tuz, karabiber, kekik.', NULL, 'IZGARALAR', 46, 1800, 5, 0, 0, 0, '1', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/579.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'Soğansız,Domatesİz,Bİbersİz,Pİlavsız', '0,2,3', NULL, NULL, 0, '[\"Tavuk\", \"Dana Eti\", \"Kuzu Eti\", \"Sucuk\", \"Biber\", \"Domates\", \"Soğan\", \"Zeytinyağı\", \"Tuz\", \"Karabiber\", \"Kekik\"]', NULL),
(580, 252, NULL, '000252', 'SUPER KARIŞIK IZGARA (FOR2)', NULL, 'Tavuk, dana eti, kuzu eti, sucuk, biber, domates, soğan, baharatlar, zeytinyağı, tuz, karabiber.', NULL, 'IZGARALAR', 46, 3200, 11, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/580.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '3.Kişilik,Bİbersİz,Soğansız,Donatessİz,Pİlavsız', '', NULL, NULL, 0, '[\"Tavuk\", \"Dana Eti\", \"Kuzu Eti\", \"Sucuk\", \"Biber\", \"Domates\", \"Soğan\", \"Baharatlar\", \"Zeytinyağı\", \"Tuz\", \"Karabiber\"]', NULL),
(581, 253, NULL, '000253', 'FILLET STEAK', NULL, 'Dana bonfile, tuz, karabiber, zeytinyağı', NULL, 'STEAKS', 30, 1600, 2, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/581.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'Az.Pişmiş,Orta Pişmiş,Az.orta.Pişmiş,İyi.Pişmiş,Soğansız,Bİbersİz,Pİlavsız,Domatesİz,orta iyi pişmiş', '', NULL, NULL, 0, '[\"Dana Bonfile\", \"Tuz\", \"Karabiber\", \"Zeytinyağı\"]', NULL),
(582, 254, NULL, '000254', 'PEPPER STEAK', NULL, 'Dana eti, karabiber, tuz, zeytinyağı, sarımsak, soğan, biber, krema, mantar, maydanoz', NULL, 'STEAKS', 30, 1800, 5, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/582.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'İyi.pişmiş,Orta.Pişmiş,Az.Pişmiş,Az.Orta.Pişmş,Soğansız,Domatessİz,orta iyi pişmiş', '', NULL, NULL, 1, '[\"Dana Eti\", \"Karabiber\", \"Tuz\", \"Zeytinyağı\", \"Sarımsak\", \"Soğan\", \"Biber\", \"Krema\", \"Mantar\", \"Maydanoz\"]', NULL),
(583, 255, NULL, '000255', 'DIANA STEAK', NULL, 'Dana eti, tuz, karabiber, zeytinyağı, sarımsak, kekik, biberiye', NULL, 'STEAKS', 30, 1800, 1, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/583.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'İyi.Pişmiş,Az.pişmiş,Orta.Pişmiş,Az.Orta Pişmiş,Domatessİz,Pİlavsız,bİbersİz,Chİpsİz,orta iyi pişmiş', '', NULL, NULL, 0, '[\"Dana Eti\", \"Tuz\", \"Karabiber\", \"Zeytinyağı\", \"Sarımsak\", \"Kekik\", \"Biberiye\"]', NULL),
(584, 256, NULL, '000256', 'MEXICAN STEAK', NULL, 'Dana eti, zeytinyağı, sarımsak, kimyon, kırmızı biber, tuz, karabiber, limon suyu, soğan, taze kişniş (alergeni: soğan)', NULL, 'STEAKS', 30, 1800, 3, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/584.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'Az.Pişmiş,İyi.Pişmiş,Orta.Pişmiş,Az.Orta.Pişmiş,orta iyi pişmiş,pilavsız', '', NULL, NULL, 0, '[\"Dana Eti\", \"Zeytinyağı\", \"Sarımsak\", \"Kimyon\", \"Kırmızı Biber\", \"Tuz\", \"Karabiber\", \"Limon Suyu\", \"Soğan\", \"Taze Kişniş\"]', NULL),
(585, 257, NULL, '000257', 'MUSHROOM STEAK', NULL, 'Mantar, zeytinyağı, tuz, karabiber, sarımsak, taze kekik, limon suyu', NULL, 'STEAKS', 30, 1800, 4, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/585.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'Az.Pişmiş,İyi.Pişmiş,Orta.Pişmiş,Az.Orta Pişmiş,orta iyi pişmiş,pilavsız', '', NULL, NULL, 0, '[\"Mantar\", \"Zeytinyağı\", \"Tuz\", \"Karabiber\", \"Sarımsak\", \"Taze Kekik\", \"Limon Suyu\"]', NULL),
(586, 258, NULL, '000258', 'T-BONE STEAK (500 GR)', NULL, 'Sığır eti (T-bone steak)', NULL, 'STEAKS', 30, 1900, 6, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/586.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'İyi.Pişmiş,Az.Pişmiş,Orta.Pişmiş,Az.Orta Pişmiş', '', NULL, NULL, 0, NULL, NULL),
(587, 259, NULL, '000259', 'TAVUK ŞİŞ', NULL, 'Tavuk, zeytinyağı, sarımsak, yoğurt, limon suyu, tuz, karabiber, kekik, biber (alerjen: süt)', NULL, 'CHICKEN MEALS', 31, 570, 11, 0, 0, 0, '1', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/587.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'Soğansız,Domatessİz,Bİbersİz,Pİllavsız', '0,1,2,3', NULL, NULL, 1, '[\"Tavuk\", \"Zeytinyağı\", \"Sarımsak\", \"Yoğurt\", \"Limon Suyu\", \"Tuz\", \"Karabiber\", \"Kekik\", \"Biber\"]', NULL),
(588, 260, NULL, '000260', 'TAVUK GÖĞSÜ IZGARA', NULL, 'Tavuk göğsü, zeytinyağı, tuz, karabiber, limon suyu, sarımsak (isteğe bağlı)', NULL, 'CHICKEN MEALS', 31, 670, 9, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/588.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Tavuk Göğsü\", \"Zeytinyağı\", \"Tuz\", \"Karabiber\", \"Limon Suyu\", \"Sarımsak\"]', NULL),
(589, 261, NULL, '000261', 'CHICKEN CURRY', NULL, 'Tavuk, soğan, sarımsak, zencefil, domates, hindistan cevizi sütü, zerdeçal, kimyon, kişniş, kırmızı biber, tuz, karabiber, yağ, taze kişniş (isteğe bağlı)', NULL, 'CHICKEN MEALS', 31, 670, 3, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/589.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Tavuk\", \"Soğan\", \"Sarımsak\", \"Zencefil\", \"Domates\", \"Hindistan Cevizi Sütü\", \"Zerdeçal\", \"Kimyon\", \"Kişniş\", \"Kırmızı Biber\", \"Tuz\", \"Karabiber\", \"Yağ\", \"Taze Kişniş\"]', NULL),
(590, 262, NULL, '000262', 'TAVUK FAJITA', NULL, 'Tavuk, biber (kırmızı, yeşil), soğan, sarımsak, zeytinyağı, kimyon, kırmızı biber tozu, tuz, karabiber, tortilla ekmeği, limon suyu, avokado (alerjen: avokado), taze kişniş.', NULL, 'CHICKEN MEALS', 31, 720, 8, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/590.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Tavuk\", \"Biber (Kırmızı\", \"Yeşil)\", \"Soğan\", \"Sarımsak\", \"Zeytinyağı\", \"Kimyon\", \"Kırmızı Biber Tozu\", \"Tuz\", \"Karabiber\", \"Tortilla Ekmeği\", \"Limon Suyu\", \"Avokado\", \"Taze Kişniş\"]', NULL),
(591, 263, NULL, '000263', 'TAVUK SCHNITZEL', NULL, 'Tavuk göğsü, un, yumurta, galeta unu, tuz, karabiber, sıvı yağ', NULL, 'CHICKEN MEALS', 31, 670, 10, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/591.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Tavuk Göğsü\", \"Un\", \"Yumurta\", \"Galeta Unu\", \"Tuz\", \"Karabiber\", \"Sıvı Yağ\"]', NULL),
(592, 264, NULL, '000264', 'MANTAR SOSLU TAVUK', NULL, 'Tavuk, mantar, soğan, sarımsak, zeytinyağı, tuz, karabiber, krema, maydanoz', NULL, 'CHICKEN MEALS', 31, 670, 6, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/592.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'No Galic', '', NULL, NULL, 1, '[\"Tavuk\", \"Mantar\", \"Soğan\", \"Sarımsak\", \"Zeytinyağı\", \"Tuz\", \"Karabiber\", \"Krema\", \"Maydanoz\"]', NULL),
(593, 265, NULL, '000265', 'CHICKEN SATAY', NULL, 'Tavuk, yer fıstığı ezmesi, soya sosu, sarımsak, zencefil, limon suyu, şeker, tuz, biber, şiş.', NULL, 'CHICKEN MEALS', 31, 670, 5, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/593.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Tavuk\", \"Yer Fıstığı Ezmesi\", \"Soya Sosu\", \"Sarımsak\", \"Zencefil\", \"Limon Suyu\", \"Şeker\", \"Tuz\", \"Biber\", \"Şiş\"]', NULL),
(594, 266, NULL, '000266', 'SWEET & SOUR TAVUK', NULL, 'Tavuk, soya sosu, sirke, şeker, zencefil, sarımsak, biber, ananas, mısır nişastası, su, tuz, karabiber, yeşil soğan (aleljen: soya)', NULL, 'CHICKEN MEALS', 31, 670, 7, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/594.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Tavuk\", \"Soya Sosu\", \"Sirke\", \"Şeker\", \"Zencefil\", \"Sarımsak\", \"Biber\", \"Ananas\", \"Mısır Nişastası\", \"Su\", \"Tuz\", \"Karabiber\", \"Yeşil Soğan\"]', NULL);
INSERT INTO `t_urunkart` (`id`, `Urun_id`, `UrunTip`, `UrunKod`, `UrunAd`, `UrunAdKisa`, `UrunAciklama`, `alerjenler`, `UrunGrubu`, `UrunGrubu_id`, `FixFiyat`, `SiraNo`, `P_Yarim`, `P_Birbucuk`, `P_Duble`, `Porsiyon`, `ExtraOzellik`, `Barkod`, `UrunBirim`, `FixFiyat2`, `FixFiyat3`, `Departman`, `UrunResimPath`, `one_cikan`, `AltGrup`, `Ch_Gram`, `Upd_Tarih`, `CokSatan`, `textraozellik`, `P_Tanim`, `kalori`, `hazirlanma_suresi`, `has_lactose`, `malzemeler`, `ekstra_soslar`) VALUES
(595, 267, NULL, '000267', 'CHICKEN CASSEROLE', NULL, 'Tavuk, patates, havuç, soğan, sarımsak, tavuk suyu, zeytinyağı, tuz, karabiber, kekik, bezelye, krema, rendelenmiş peynir (süt).', NULL, 'CHICKEN MEALS', 31, 670, 2, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/595.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 1, '[\"Tavuk\", \"Patates\", \"Havuç\", \"Soğan\", \"Sarımsak\", \"Tavuk Suyu\", \"Zeytinyağı\", \"Tuz\", \"Karabiber\", \"Kekik\", \"Bezelye\", \"Krema\", \"Rendelenmiş Peynir\"]', NULL),
(596, 268, NULL, '000268', 'CENTER CHİCKEN SPECİAL', NULL, 'Tavuk, baharatlar, zeytinyağı, tuz, karabiber, sarımsak, soğan, limon suyu, biber, domates, maydanoz.', NULL, 'CHICKEN MEALS', 31, 670, 1, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/596.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'Soğansız,Biberbersiz,Domatessiz', '', NULL, NULL, 0, '[\"Tavuk\", \"Baharatlar\", \"Zeytinyağı\", \"Tuz\", \"Karabiber\", \"Sarımsak\", \"Soğan\", \"Limon Suyu\", \"Biber\", \"Domates\", \"Maydanoz\"]', NULL),
(597, 269, NULL, '000269', 'FISH & CHIPS', NULL, 'Beyaz balık, patates, mısır nişastası, tuz, karabiber', NULL, 'SEA FOODS', 32, 740, 1, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/597.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Beyaz Balık\", \"Patates\", \"Mısır Nişastası\", \"Tuz\", \"Karabiber\"]', NULL),
(598, 270, NULL, '000270', 'GRILLED SEA BREAM', NULL, 'Levrek, zeytinyağı, tuz, karabiber, limon, sarımsak, taze kekik, taze maydanoz', NULL, 'SEA FOODS', 32, 960, 3, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/598.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Levrek\", \"Zeytinyağı\", \"Tuz\", \"Karabiber\", \"Limon\", \"Sarımsak\", \"Taze Kekik\", \"Taze Maydanoz\"]', NULL),
(599, 271, NULL, '000271', 'GRILLED SEA BASS', NULL, 'Levrek, zeytinyağı, tuz, karabiber, limon, sarımsak, taze otlar (maydanoz, kekik)', NULL, 'SEA FOODS', 32, 960, 2, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/599.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Levrek\", \"Zeytinyağı\", \"Tuz\", \"Karabiber\", \"Limon\", \"Sarımsak\", \"Taze Otlar (Maydanoz\", \"Kekik)\"]', NULL),
(600, 272, NULL, '000272', 'KALAMAR TAVA', NULL, 'Kalamar,  karabiber, sıvı yağ', NULL, 'SEA FOODS', 32, 650, 4, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/600.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Kalamar\", \"Karabiber\", \"Sıvı Yağ\"]', NULL),
(601, 273, NULL, '000273', 'KİNG KARİDES', NULL, 'Karides, tuz, su', NULL, 'SEA FOODS', 32, 900, 5, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/601.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Karides\", \"Tuz\", \"Su\"]', NULL),
(602, 274, NULL, '000274', 'VEGETARIAN GÜVEÇ PEYNİRLİ', NULL, 'Sebzeler, peynir, zeytinyağı, tuz, karabiber, baharatlar, su, un, sarımsak, soğan, biber, mantar, havuç, bezelye, patates.', NULL, 'VEGETERIANS', 33, 520, 2, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/602.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 1, '[\"Sebzeler\", \"Peynir\", \"Zeytinyağı\", \"Tuz\", \"Karabiber\", \"Baharatlar\", \"Su\", \"Un\", \"Sarımsak\", \"Soğan\", \"Biber\", \"Mantar\", \"Havuç\", \"Bezelye\", \"Patates\"]', NULL),
(603, 275, NULL, '000275', 'VEGETARIAN CURRY', NULL, 'Nohut, patates, havuç, bezelye, domates, soğan, sarımsak, zencefil, hindistancevizi sütü, zerdeçal, kimyon, kişniş, tuz, karabiber, zeytinyağı, yeşil biber, taze kişniş (aleljen: nohut)', NULL, 'VEGETERIANS', 33, 520, 1, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/603.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Nohut\", \"Patates\", \"Havuç\", \"Bezelye\", \"Domates\", \"Soğan\", \"Sarımsak\", \"Zencefil\", \"Hindistancevizi Sütü\", \"Zerdeçal\", \"Kimyon\", \"Kişniş\", \"Tuz\", \"Karabiber\", \"Zeytinyağı\", \"Yeşil Biber\", \"Taze Kişniş\"]', NULL),
(604, 276, NULL, '000276', 'VEGETARIAN MUSAKKA PEYNİRLİ', NULL, 'patlıcan, kabak, patates, soğan, sarımsak, domates, biber, zeytinyağı, tuz, karabiber, beyaz peynir, un, süt, yumurta, maydanoz', NULL, 'VEGETERIANS', 33, 520, 3, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/604.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 1, '[\"Patlıcan\", \"Kabak\", \"Patates\", \"Soğan\", \"Sarımsak\", \"Domates\", \"Biber\", \"Zeytinyağı\", \"Tuz\", \"Karabiber\", \"Beyaz Peynir\", \"Un\", \"Süt\", \"Yumurta\", \"Maydanoz\"]', NULL),
(605, 277, NULL, '000277', 'VEGETARIAN PIZZA', NULL, 'Pizza hamuru, domates sosu, mozzarella peyniri, biber, mantar, soğan, zeytin, baharatlar ', NULL, 'VEGETERIANS', 33, 520, 5, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/605.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 1, '[\"Pizza Hamuru\", \"Domates Sosu\", \"Mozzarella Peyniri\", \"Biber\", \"Mantar\", \"Soğan\", \"Zeytin\", \"Baharatlar\"]', NULL),
(606, 278, NULL, '000278', 'VEGETARIAN OMELETTE', NULL, 'yumurta, süt, tuz, karabiber, yeşil biber, domates, soğan, mantar, maydanoz', NULL, 'VEGETERIANS', 33, 520, 4, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/606.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 1, '[\"Yumurta\", \"Süt\", \"Tuz\", \"Karabiber\", \"Yeşil Biber\", \"Domates\", \"Soğan\", \"Mantar\", \"Maydanoz\"]', NULL),
(607, 279, NULL, '000279', 'KUNEFE', NULL, 'Kadayıf, tereyağı, peynir, şeker, su, limon suyu, antep fıstığı (alerjen: fındık)', NULL, 'DESSERTS', 34, 320, 5, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/607.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'Dondurmalı', '', NULL, NULL, 1, '[\"Kadayıf\", \"Tereyağı\", \"Peynir\", \"Şeker\", \"Su\", \"Limon Suyu\", \"Antep Fıstığı\"]', NULL),
(608, 280, NULL, '000280', 'KUNEFE DONDURMALI', NULL, 'Kadayıf, tereyağı, ceviz, şeker, su, limon suyu, dondurma (süt, şeker, krema, stabilizatör)', NULL, 'DESSERTS', 34, 420, 6, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/608.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 1, '[\"Kadayıf\", \"Tereyağı\", \"Ceviz\", \"Şeker\", \"Su\", \"Limon Suyu\", \"Dondurma (Süt\", \"Krema\", \"Stabilizatör)\"]', NULL),
(609, 281, NULL, '000281', 'BAKLAVA', NULL, 'ceviz, fıstık, tereyağı, şeker, su, limon suyu, gül suyu ', NULL, 'DESSERTS', 34, 350, 1, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/609.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'Dondurmalı', '', NULL, NULL, 1, '[\"Ceviz\", \"Fıstık\", \"Tereyağı\", \"Şeker\", \"Su\", \"Limon Suyu\", \"Gül Suyu\"]', NULL),
(610, 282, NULL, '000282', 'BAKLAVA DONDURMALI', NULL, 'Baklava, dondurma, antep fıstığı, ceviz, tarçın, limon suyu.', NULL, 'DESSERTS', 34, 450, 2, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/610.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, '[\"Baklava\", \"Dondurma\", \"Antep Fıstığı\", \"Ceviz\", \"Tarçın\", \"Limon Suyu\"]', NULL),
(611, 283, NULL, '000283', 'PANCAKE', NULL, 'Un, süt, yumurta, şeker, kabartma tozu, tuz, tereyağı , vanilya özütü', NULL, 'DESSERTS', 34, 320, 7, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/611.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'Dondurmalı,Muzlu,Çikolatalı,honey,limon,şeker', '', NULL, NULL, 1, '[\"Un\", \"Süt\", \"Yumurta\", \"Şeker\", \"Kabartma Tozu\", \"Tuz\", \"Tereyağı\", \"Vanilya Özütü\"]', NULL),
(612, 284, NULL, '000284', 'BANANA BOAT', NULL, 'Muz, çikolata, marshmallow, fındık, dondurma, şeker, vanilya özütü.', NULL, 'DESSERTS', 34, 450, 3, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/612.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'No.Cream', '', NULL, NULL, 0, '[\"Muz\", \"Çikolata\", \"Marshmallow\", \"Fındık\", \"Dondurma\", \"Şeker\", \"Vanilya Özütü\"]', NULL),
(613, 285, NULL, '000285', 'VANILLA DONDURMA', NULL, 'Süt, şeker, krema, vanilya, yumurta sarısı, tuz', NULL, 'ICE CREAM', 35, 330, 7, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/613.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 1, '[\"Süt\", \"Şeker\", \"Krema\", \"Vanilya\", \"Yumurta Sarısı\", \"Tuz\"]', NULL),
(614, 286, NULL, '000286', 'CHOCOLATE DONDURMA', NULL, 'Süt, şeker, kakao tozu, krema, yumurta sarısı, vanilya, tuz.', NULL, 'ICE CREAM', 35, 330, 2, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/614.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 1, '[\"Süt\", \"Şeker\", \"Kakao Tozu\", \"Krema\", \"Yumurta Sarısı\", \"Vanilya\", \"Tuz\"]', NULL),
(615, 287, NULL, '000287', 'STRAWBERRY DONDURMA', NULL, 'Çilek, süt, krema, şeker, yumurta sarısı, vanilya, limon suyu, stabilizatör.', NULL, 'ICE CREAM', 35, 330, 5, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/615.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 1, '[\"Çilek\", \"Süt\", \"Krema\", \"Şeker\", \"Yumurta Sarısı\", \"Vanilya\", \"Limon Suyu\", \"Stabilizatör\"]', NULL),
(616, 288, NULL, '000288', 'BANANA DONDURMA', NULL, 'Muz, süt, şeker, krema, vanilya özü, tuz', NULL, 'ICE CREAM', 35, 330, 1, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/616.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 1, '[\"Muz\", \"Süt\", \"Şeker\", \"Krema\", \"Vanilya Özü\", \"Tuz\"]', NULL),
(617, 289, NULL, '000289', 'FISTIKLI DONDURMA', NULL, 'Süt, şeker, fıstık, krema, yumurta sarısı, vanilya, tuz.', NULL, 'ICE CREAM', 35, 330, 3, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/617.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 1, '[\"Süt\", \"Şeker\", \"Fıstık\", \"Krema\", \"Yumurta Sarısı\", \"Vanilya\", \"Tuz\"]', NULL),
(618, 290, NULL, '000290', 'MIXED', NULL, NULL, NULL, 'ICE CREAM', 35, 330, 4, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/618.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '0', '', NULL, NULL, 0, NULL, NULL),
(619, 292, NULL, '000291', 'GLASS DRY WINE', NULL, 'Şarap', NULL, 'WINES', 36, 250, 3, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/619.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'WHITE,RED,ROSE,DOUBLE', '', NULL, NULL, 0, NULL, NULL),
(620, 293, NULL, '000292', 'GLASS OF SWEET WINES', NULL, 'Tatlı şarap', NULL, 'WINES', 36, 290, 5, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/620.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'DOUBLE', '', NULL, NULL, 0, NULL, NULL),
(621, 294, NULL, '000293', 'GLASS OF ANGORA WINE', NULL, 'Angora şarabı', NULL, 'WINES', 36, 310, 4, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/621.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'WHITE,RED,ROSE,DOUBLE', '', NULL, NULL, 0, NULL, NULL),
(622, 295, NULL, '000294', '75CL BOATLE OF HOUSE WINE', NULL, 'Şarap', NULL, 'WINES', 36, 1000, 2, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/622.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'WHITE,RED,ROSE,DOUBLE', '', NULL, NULL, 0, NULL, NULL),
(623, 296, NULL, '000295', '75CL BOATLE OF ANGORA WINE', NULL, 'Angora şarabı', NULL, 'WINES', 36, 1200, 1, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/623.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'WHITE,RED,ROSE,', '', NULL, NULL, 0, NULL, NULL),
(624, 297, NULL, '000296', 'FRUIT JUICES', NULL, 'Meyve suyu', NULL, 'COLD DRINKS', 1, 130, 8, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/624.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'Orange,Cherry,Peach,Apple,Pineapple,Mixed', '', NULL, NULL, 0, NULL, NULL),
(625, 300, NULL, '000352', 'FROZEN MUDSLIDE', NULL, 'vodka, kahve likörü, kremalı likör, dondurulmuş vanilyalı dondurma, süt, buz', NULL, 'FROZEN WITH ALCOHOL', 14, 610, 2, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/625.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '', '', NULL, NULL, 1, '[\"Vodka\", \"Kahve Likörü\", \"Kremalı Likör\", \"Süt\", \"Buz\"]', NULL),
(626, 1300, NULL, '000302', 'BARRYS TEA', NULL, 'Siyah çay.', NULL, 'HOT DRINKS', 44, 90, 3, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/626.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '', '', NULL, NULL, 0, NULL, NULL),
(627, 1301, NULL, '000307', 'BUDWEİSER', NULL, 'arpa maltı, mısır, şerbetçi otu, maya', NULL, 'BEERS', 7, 280, 3, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/627.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '', '', NULL, NULL, 0, '[\"Arpa Maltı\", \"Mısır\", \"Şerbetçi Otu\", \"Maya\"]', NULL),
(628, 1302, NULL, '000308', 'CHEESE CAKE', NULL, 'Krema peyniri, şeker, yumurta, bisküvi, tereyağı, vanilya özütü, limon suyu, tuz', NULL, 'DESSERTS', 34, 380, 4, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/628.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'Lemon,Frambuaz,Strawberry', '', NULL, NULL, 1, '[\"Krema Peyniri\", \"Şeker\", \"Yumurta\", \"Bisküvi\", \"Tereyağı\", \"Vanilya Özütü\", \"Limon Suyu\", \"Tuz\"]', NULL),
(629, 1304, NULL, '000299', 'PROSECCO', NULL, 'Prosecco', NULL, 'WINES', 36, 410, 6, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/629.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '', '', NULL, NULL, 0, NULL, NULL),
(630, 1305, NULL, '000309', 'BOMONTİ', NULL, 'Su, malt, şerbetçi otu, maya, (gluten)', NULL, 'BEERS', 7, 250, 2, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/630.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '', '', NULL, NULL, 0, '[\"Su\", \"Malt\", \"Şerbetçi Otu\", \"Maya\"]', NULL),
(631, 1306, NULL, '000310', 'BACON', NULL, 'Domuz pastırması', NULL, 'EXTRA', 40, 140, 2, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/631.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'Beans,Chİps', '', NULL, NULL, 0, NULL, NULL),
(632, 1307, NULL, '000311', 'SAUSAGE', NULL, 'Domuz eti, tuz, baharatlar, koruyucu maddeler, su, şeker, nitrat (alerjen: domuz eti)', NULL, 'EXTRA', 40, 100, 9, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/632.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'Extra Sausage', '', NULL, NULL, 0, '[\"Domuz Eti\", \"Tuz\", \"Baharatlar\", \"Koruyucu Maddeler\", \"Su\", \"Şeker\", \"Nitrat\"]', NULL),
(633, 1308, NULL, '000312', 'EGG', NULL, 'Yumurta', NULL, 'EXTRA', 40, 50, 4, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/633.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'Extra Egg', '', NULL, NULL, 0, NULL, NULL),
(634, 1309, NULL, '000313', 'MUSHROOM', NULL, 'Mantar', NULL, 'EXTRA', 40, 100, 8, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/634.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '', '', NULL, NULL, 0, NULL, NULL),
(635, 1310, NULL, '000315', 'BUTTER', NULL, NULL, NULL, 'EGG MENU', 10, 40, 1, 0, 0, 0, '1', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/635.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '', '0', NULL, NULL, 0, NULL, NULL),
(636, 1311, NULL, '000314', 'KAŞAR PEYNİRİ', NULL, NULL, NULL, 'EXTRA', 40, 70, 6, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/636.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '', '', NULL, NULL, 0, NULL, NULL),
(637, 1312, NULL, '000316', 'TOP DONDURMA', NULL, NULL, NULL, 'ICE CREAM', 35, 110, 6, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/637.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'Vanılla,Chocolate,Babana,Strawberry,Pıstachıo', '', NULL, NULL, 0, NULL, NULL),
(638, 1313, NULL, '000317', 'KİREMİTTE KAŞARLI KÖFTE', NULL, 'Kıyma, soğan, sarımsak, ekmek içi, yumurta, tuz, karabiber, kaşar peyniri, domates, biber, zeytinyağı', NULL, 'IZGARALAR', 46, 750, 6, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/638.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '', '', NULL, NULL, 1, '[\"Kıyma\", \"Soğan\", \"Sarımsak\", \"Ekmek Içi\", \"Yumurta\", \"Tuz\", \"Karabiber\", \"Kaşar Peyniri\", \"Domates\", \"Biber\", \"Zeytinyağı\"]', NULL),
(639, 1314, NULL, '000318', 'ET DÜRÜM', NULL, 'Dürüm ekmeği, döner eti, marul, domates, soğan, biber, yoğurt, baharatlar (tuz, karabiber, pul biber)', NULL, 'DÜRÜMLER', 43, 360, 2, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/639.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'Soğansız,Chipsli,CEDAR,Ddomatessiz,Paket,Marulsuz,Garlic soslu', '', NULL, NULL, 1, '[\"Dürüm Ekmeği\", \"Döner Eti\", \"Marul\", \"Domates\", \"Soğan\", \"Biber\", \"Yoğurt\", \"Baharatlar (Tuz\", \"Karabiber\", \"Pul Biber)\"]', NULL),
(640, 1315, NULL, '000319', 'TAVUK DÜRÜM', NULL, 'Tavuk, lavaş ekmeği, marul, domates, soğan, biber, yoğurt, baharatlar (kimyon, kararbiber, pul biber)', NULL, 'DÜRÜMLER', 43, 300, 5, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/640.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'Soğansız,Domatessiz,Marulsuz,Paket,Chipsli,Cedarlı,Garlic soslu', '', NULL, NULL, 1, '[\"Tavuk\", \"Lavaş Ekmeği\", \"Marul\", \"Domates\", \"Soğan\", \"Biber\", \"Yoğurt\", \"Baharatlar (Kimyon\", \"Kararbiber\", \"Pul Biber)\"]', NULL),
(641, 1316, NULL, '000320', 'TAVUK ŞİŞ DÜRÜM', NULL, 'Tavuk, pita ekmeği, marul, domates, soğan, yoğurt, zeytinyağı, limon suyu, baharatlar (karabiber, pul biber, kimyon)', NULL, 'DÜRÜMLER', 43, 420, 6, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/641.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'Chipsli,Soğansız,Domatessiz,Marulsuz,Paket,Garlic soslu', '', NULL, NULL, 1, '[\"Tavuk\", \"Pita Ekmeği\", \"Marul\", \"Domates\", \"Soğan\", \"Yoğurt\", \"Zeytinyağı\", \"Limon Suyu\", \"Baharatlar (Karabiber\", \"Pul Biber\", \"Kimyon)\"]', NULL),
(642, 1317, NULL, '000321', 'ADANA DÜRÜM', NULL, 'Döner kebap eti, lavaş ekmeği, domates, soğan, yeşil biber, maydanoz, acı sos, tuz, baharatlar', NULL, 'DÜRÜMLER', 43, 490, 1, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/642.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'Soğansız,Domatessiz,Marulsuz,Garlic soslu,', '', NULL, NULL, 0, '[\"Döner Kebap Eti\", \"Lavaş Ekmeği\", \"Domates\", \"Soğan\", \"Yeşil Biber\", \"Maydanoz\", \"Acı Sos\", \"Tuz\", \"Baharatlar\"]', NULL),
(643, 1318, NULL, '000322', 'FALAFEL DÜRÜM', NULL, 'Falafel, pita ekmeği, marul, domates, soğan, turşu, tahin sosu, baharatlar.', NULL, 'DÜRÜMLER', 43, 440, 3, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/643.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'Soğansız,Marulsuz,Domatesiz,Chipsli,Garlic soslu', '', NULL, NULL, 0, '[\"Falafel\", \"Pita Ekmeği\", \"Marul\", \"Domates\", \"Soğan\", \"Turşu\", \"Tahin Sosu\", \"Baharatlar\"]', NULL),
(644, 1319, NULL, '000323', 'FROZEN PORNSTAR MARTİNİ', NULL, 'vodka, şeftali likörü, vanilya şurubu, limon suyu, ananas suyu, dondurulmuş meyveler (alerjen: meyve)', NULL, 'FROZEN WITH ALCOHOL', 14, 610, 4, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/644.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '', '', NULL, NULL, 0, '[\"Vodka\", \"Şeftali Likörü\", \"Vanilya Şurubu\", \"Limon Suyu\", \"Ananas Suyu\", \"Dondurulmuş Meyveler\"]', NULL),
(645, 1320, NULL, '000324', 'TEREYAĞI', NULL, NULL, NULL, 'EXTRA', 40, 30, 10, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/645.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '', '', NULL, NULL, 0, NULL, NULL),
(646, 1321, NULL, '000325', 'TOAST BUTTER JAM', NULL, 'Ekmek, tereyağı, reçel', NULL, 'EXTRA', 40, 200, 11, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/646.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '', '', NULL, NULL, 1, '[\"Ekmek\", \"Tereyağı\", \"Reçel\"]', NULL),
(647, 1322, NULL, '000326', '1 ADET TOAST', NULL, 'Ekmek, peynir, sucuk, tereyağı, domates, salatalık, karabiber, tuz', NULL, 'EXTRA', 40, 10, 1, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/647.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '', '', NULL, NULL, 1, '[\"Ekmek\", \"Peynir\", \"Sucuk\", \"Tereyağı\", \"Domates\", \"Salatalık\", \"Karabiber\", \"Tuz\"]', NULL),
(648, 1323, NULL, '000327', 'FREE ENGLISH TEA', NULL, 'Siyah çay, su', NULL, 'HOT DRINKS', 44, 0, 7, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/648.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '', '', NULL, NULL, 0, '[\"Siyah Çay\", \"Su\"]', NULL),
(649, 1324, NULL, '000328', 'FREE IRISH TEA', NULL, 'Siyah çay, su', NULL, 'HOT DRINKS', 44, 0, 8, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/649.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '', '', NULL, NULL, 0, '[\"Siyah Çay\", \"Su\"]', NULL),
(650, 1325, NULL, '000329', 'İKRAM TURK ÇAYI', NULL, 'Türk çayı', NULL, 'HOT DRINKS', 44, 0, 11, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/650.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '', '', NULL, NULL, 0, NULL, NULL),
(651, 1326, NULL, '000331', 'ŞALGAM', NULL, 'Şalgam ', NULL, 'COLD DRINKS', 1, 130, 14, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/651.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'ACILI,ACISIZ', '', NULL, NULL, 0, NULL, NULL),
(652, 1327, NULL, '000330', 'SUCUKLU YUMURTALI', NULL, 'Sucuk, yumurta, baharatlar', NULL, 'PİDE', 20, 540, 12, 0, 730, 980, '1', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/652.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '', '0,2,3', NULL, NULL, 0, '[\"Sucuk\", \"Yumurta\", \"Baharatlar\"]', NULL),
(653, 1328, NULL, '000332', 'KARIŞIK DÜRÜM', NULL, 'Tortilla ekmeği, tavuk, marul, domates, soğan, biber, yoğurt, baharatlar, tuz, karabiber, zeytinyağı', NULL, 'DÜRÜMLER', 43, 360, 4, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/653.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'soğansız,domatessiz,salatasız,acılı,CİPSLİ,CEDAR,PAKET', '', NULL, NULL, 1, '[\"Tortilla Ekmeği\", \"Tavuk\", \"Marul\", \"Domates\", \"Soğan\", \"Biber\", \"Yoğurt\", \"Baharatlar\", \"Tuz\", \"Karabiber\", \"Zeytinyağı\"]', NULL),
(654, 1330, NULL, '000333', 'ALKOLSÜZ BİRA', NULL, 'Su, malt, şerbetçiotu, maya, glikoz, karbonat, asidite düzenleyici (sitrik asit)', NULL, 'BEERS', 7, 190, 1, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/654.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '', '', NULL, NULL, 0, '[\"Su\", \"Malt\", \"Şerbetçiotu\", \"Maya\", \"Glikoz\", \"Karbonat\", \"Asidite Düzenleyici\"]', NULL),
(655, 1331, NULL, '000334', 'EXTRA ORDER', NULL, NULL, NULL, 'EXTRA', 40, 0, 5, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'EXTRA,EXTRA,EXTRA,EXTRA,EXTRA,EXTRA,EXTRA,EXTRA,EXTRA,EXTRA', '', NULL, NULL, 0, NULL, NULL),
(656, 1332, NULL, '000336', 'GRAVY SAUCE', NULL, ' karabiber, soğan tozu, sarımsak tozu, et suyu veya sebze suyu.', NULL, 'SIDE ORDERS', 25, 180, 2, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/656.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '', '', NULL, NULL, 0, '[\"Karabiber\", \"Soğan Tozu\", \"Sarımsak Tozu\", \"Et Suyu Veya Sebze Suyu\"]', NULL),
(657, 1333, NULL, '000337', 'GAZOZ', NULL, 'Gazoz', NULL, 'COLD DRINKS', 1, 130, 9, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/657.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '', '', NULL, NULL, 0, NULL, NULL),
(658, 1334, NULL, '000338', 'STORNGBOW', NULL, 'Elma suyu, alkol, karbonatlı su, şeker, asidite düzenleyici (sitrik asit), doğal aroma.', NULL, 'BEERS', 7, 400, 18, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/658.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '', '', NULL, NULL, 0, '[\"Elma Suyu\", \"Alkol\", \"Karbonatlı Su\", \"Şeker\", \"Asidite Düzenleyici\", \"Doğal Aroma\"]', NULL),
(659, 1335, NULL, '000339', 'EXTRA ŞURUP', NULL, NULL, NULL, 'BEERS', 7, 0, 9, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'LİME,RASBERRY', '', NULL, NULL, 0, NULL, NULL),
(660, 1336, NULL, '000340', 'KAŞARLI SUCUKLU TOST', NULL, 'Ekmek, kaşar peyniri, sucuk, tereyağı, tuz, karabiber', NULL, 'LIGHT LUNCH', 49, 420, 1, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/660.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'Domatessiz', '', NULL, NULL, 1, '[\"Ekmek\", \"Kaşar Peyniri\", \"Sucuk\", \"Tereyağı\", \"Tuz\", \"Karabiber\"]', NULL),
(661, 1337, NULL, '000341', 'FIÇI BİRA KÜÇÜK', NULL, 'Su, malt, şerbetçiotu, maya', NULL, 'BEERS', 7, 210, 11, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/661.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '', '', NULL, NULL, 0, '[\"Su\", \"Malt\", \"Şerbetçiotu\", \"Maya\"]', NULL),
(662, 1338, NULL, '000342', 'FIÇI BİRA BÜYÜK', NULL, 'Bira', NULL, 'BEERS', 7, 230, 10, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/662.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '', '', NULL, NULL, 0, NULL, NULL),
(663, 1339, NULL, '000343', 'URFA DÜRÜM', NULL, 'Dürüm ekmeği, döner eti, domates, soğan, yeşil biber, maydanoz, sumak, tuz, biber salçası, nar ekşisi, acı sos (alerjen: gluten)', NULL, 'DÜRÜMLER', 43, 490, 7, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/663.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'soğansz,domatessiz,salatasız', '', NULL, NULL, 0, '[\"Dürüm Ekmeği\", \"Döner Eti\", \"Domates\", \"Soğan\", \"Yeşil Biber\", \"Maydanoz\", \"Sumak\", \"Tuz\", \"Biber Salçası\", \"Nar Ekşisi\", \"Acı Sos\"]', NULL),
(664, 1340, NULL, '000349', 'YARIM KİLO ELMA ÇAYI', NULL, 'Elma, su, şeker (isteğe bağlı)', NULL, 'EXTRA', 40, 200, 12, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '1 KİLO', '', NULL, NULL, 0, '[\"Elma\", \"Su\", \"Şeker\"]', NULL),
(665, 1341, NULL, '000350', 'VEGETERİAN DÜRÜM', NULL, 'Tortilla ekmeği, marul, domates, salatalık, havuç, biber, avokado, humus, zeytinyağı, limon suyu, tuz, karabiber', NULL, 'DÜRÜMLER', 43, 440, 8, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/665.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, 'PAKET,CİPSİZ', '', NULL, NULL, 0, '[\"Tortilla Ekmeği\", \"Marul\", \"Domates\", \"Salatalık\", \"Havuç\", \"Biber\", \"Avokado\", \"Humus\", \"Zeytinyağı\", \"Limon Suyu\", \"Tuz\", \"Karabiber\"]', NULL),
(666, 1343, NULL, '000351', 'KAŞARLI TOST', NULL, 'Ekmek, kaşar peyniri, tereyağı, tuz, karabiber', NULL, 'LIGHT LUNCH', 24, 350, 5, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/666.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '', '', NULL, NULL, 1, '[\"Ekmek\", \"Kaşar Peyniri\", \"Tereyağı\", \"Tuz\", \"Karabiber\"]', NULL),
(667, 1344, NULL, '000353', 'KAŞARLI MANTAR', NULL, 'Mantar, kaşar peyniri, zeytinyağı, tuz, karabiber, sarımsak (alerjen: süt)', NULL, 'HOT STARTERS', 26, 350, 6, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/667.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '', '', NULL, NULL, 1, '[\"Mantar\", \"Kaşar Peyniri\", \"Zeytinyağı\", \"Tuz\", \"Karabiber\", \"Sarımsak\"]', NULL),
(668, 1345, NULL, '000354', 'PİNK GİN COOLER', NULL, 'Pembe cin, tonik su, limon suyu, nane yaprağı, buz', NULL, 'COOKTAILS', 12, 580, 23, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/668.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '', '', NULL, NULL, 0, '[\"Pembe Cin\", \"Tonik Su\", \"Limon Suyu\", \"Nane Yaprağı\", \"Buz\"]', NULL),
(669, 1346, NULL, '000355', 'BEANS', NULL, 'Fasulye', NULL, 'EXTRA', 40, 100, 3, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/669.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '', '', NULL, NULL, 0, NULL, NULL),
(670, 1347, NULL, '000356', 'MEYVE TABAĞI', NULL, 'Elma, muz, portakal, kivi, üzüm, çilek, ananas, armut, limon, nar', NULL, 'EXTRA', 40, 350, 7, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/670.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '', '', NULL, NULL, 0, '[\"Elma\", \"Muz\", \"Portakal\", \"Kivi\", \"Üzüm\", \"Çilek\", \"Ananas\", \"Armut\", \"Limon\", \"Nar\"]', NULL),
(671, 1348, NULL, '000358', 'ŞENDİ KÜÇÜK', NULL, NULL, NULL, 'BEERS', 7, 210, 17, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/671.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '', '', NULL, NULL, 0, NULL, NULL),
(672, 1349, NULL, '000357', 'ŞENDİ BÜYÜK', NULL, NULL, NULL, 'BEERS', 7, 230, 16, 0, 0, 0, '0', NULL, NULL, 'Adet', NULL, NULL, NULL, 'products/672.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '', '', NULL, NULL, 0, NULL, NULL),
(673, 2348, NULL, '000348', 'CHICKEN NUGET', NULL, 'Tavuk eti, baharatlar,', NULL, 'CHICKEN MEALS', 31, 550, 4, 0, 0, 0, '0', NULL, NULL, 'Porsiyon', NULL, NULL, NULL, 'products/673.jpg', 0, NULL, NULL, '2021-01-01 00:00:00', NULL, '', '', NULL, NULL, 0, '[\"Tavuk Eti\", \"Baharatlar\"]', NULL),
(675, NULL, NULL, NULL, 'su', NULL, 'su', NULL, NULL, 4, 10, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(676, NULL, '1', 'BAK-01', 'Antep Fıstıklı Özel Baklava', 'Baklava', NULL, NULL, NULL, NULL, 280, 1, 0, 0, 0, '0', NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, '0', '2026-08-04 11:30:51', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(677, NULL, NULL, NULL, 'yeşil çay', NULL, NULL, NULL, NULL, 6, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(678, NULL, '0', '', 'Çay', '', NULL, NULL, NULL, 1, 45, 2, 0, 0, 0, '0', NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, '0', '2026-08-06 19:31:45', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(679, NULL, '0', '', 'Çay', '', NULL, NULL, NULL, 1, 45, 3, 0, 0, 0, '0', NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, '0', '2026-08-06 19:31:49', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(680, NULL, '0', '', 'Çay', '', NULL, NULL, NULL, 1, 45, 4, 0, 0, 0, '0', NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, '0', '2026-08-06 20:03:09', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `id_kullanici` int NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `yetki` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kullanicitipi` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subeyetki` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `id_kullanici`, `name`, `email`, `yetki`, `kullanicitipi`, `subeyetki`, `email_verified_at`, `password`, `api_token`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin center', 'admin@centercafe.com', 'tahsilat|odeme|satisrapor', '0', '1|2|3', '2021-07-26 11:45:18', '$2y$10$wxSLzYh1hff4YH6jCcpdQOR.eatY7EoV8yu5SkY/nK6M2CJZPb1Ze', 'nGB9xGYs91OkzriIePQ1hpetpbGQrbMrEM5O7dQJ8Rklw5RGbLUWacrXC3dM', 'e4gBfHbXFd', NULL, '2026-08-06 16:03:30'),
(4, 2, 'Garson', 'garson@centercafe.com', 'tahsilat', '1', '1', NULL, '$2y$10$M.aLdAI.WER6kWHHi.gaB.5gB/6rT4VA/frOAgdoRr3x1bD/t0AAC', NULL, NULL, '2026-07-21 11:17:15', '2026-07-21 11:25:36');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Tablo için indeksler `forms`
--
ALTER TABLE `forms`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `kasas`
--
ALTER TABLE `kasas`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `kasa_islems`
--
ALTER TABLE `kasa_islems`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `masas`
--
ALTER TABLE `masas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `masas_slug_unique` (`slug`);

--
-- Tablo için indeksler `masa_siparis`
--
ALTER TABLE `masa_siparis`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Tablo için indeksler `t_anagrup`
--
ALTER TABLE `t_anagrup`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `t_ayar`
--
ALTER TABLE `t_ayar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `t_qrcodecagri`
--
ALTER TABLE `t_qrcodecagri`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `t_qrcodekart`
--
ALTER TABLE `t_qrcodekart`
  ADD PRIMARY KEY (`id_QRCode`),
  ADD KEY `t_qrcodekart_cari_id_index` (`Cari_id`);

--
-- Tablo için indeksler `t_urungrubu`
--
ALTER TABLE `t_urungrubu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `t_urungrubu_urungrubu_id_unique` (`UrunGrubu_id`);

--
-- Tablo için indeksler `t_urunkart`
--
ALTER TABLE `t_urunkart`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `t_urunkart_urun_id_unique` (`Urun_id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_id_kullanici_unique` (`id_kullanici`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_api_token_unique` (`api_token`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `forms`
--
ALTER TABLE `forms`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `kasas`
--
ALTER TABLE `kasas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `kasa_islems`
--
ALTER TABLE `kasa_islems`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Tablo için AUTO_INCREMENT değeri `masas`
--
ALTER TABLE `masas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Tablo için AUTO_INCREMENT değeri `masa_siparis`
--
ALTER TABLE `masa_siparis`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- Tablo için AUTO_INCREMENT değeri `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- Tablo için AUTO_INCREMENT değeri `t_anagrup`
--
ALTER TABLE `t_anagrup`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `t_ayar`
--
ALTER TABLE `t_ayar`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `t_qrcodecagri`
--
ALTER TABLE `t_qrcodecagri`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `t_qrcodekart`
--
ALTER TABLE `t_qrcodekart`
  MODIFY `id_QRCode` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Tablo için AUTO_INCREMENT değeri `t_urungrubu`
--
ALTER TABLE `t_urungrubu`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- Tablo için AUTO_INCREMENT değeri `t_urunkart`
--
ALTER TABLE `t_urunkart`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=681;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
