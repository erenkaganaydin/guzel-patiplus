-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 04 Kas 2024, 15:08:46
-- Sunucu sürümü: 10.4.28-MariaDB
-- PHP Sürümü: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `pati_plus_laravel`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `about_sections`
--

CREATE TABLE `about_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_content` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `button_text` varchar(255) NOT NULL,
  `button_link` varchar(255) NOT NULL,
  `large_image` varchar(255) NOT NULL,
  `dot_image` varchar(255) NOT NULL,
  `small_image` varchar(255) NOT NULL,
  `features` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`features`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `about_sections`
--

INSERT INTO `about_sections` (`id`, `title_content`, `title`, `description`, `button_text`, `button_link`, `large_image`, `dot_image`, `small_image`, `features`, `created_at`, `updated_at`) VALUES
(1, 'Hakkımızda', 'Evcil hayvanlarınıza özenle bakmaktan mutluluk duyuyoruz', 'Sonuçta, evcil hayvan bakımı ve veterinerlik hizmetleri, tüylü, tüylü olmayan veya pullu dostlarımızın mutlu ve sağlıklı bir yaşam sürmeleri için çok önemlidir.', 'Daha Fazla Bilgi', '/hakkimizda', 'about-sections\\November2024\\j0GtVLstzpk0LgT39O0j.png', 'about-sections\\November2024\\Gzr8I6iZjHdHh8bY1OiL.png', 'about-sections\\November2024\\S7xZTKnFNSrWgtdhzsWa.png', '[\n    \"En İyi Veterinerler\",\n    \"Bakım Hizmetleri\",\n    \"7/24 Saat Hizmet\",\n    \"En Kaliteli Mamalar\"\n]', '2024-11-02 20:21:03', '2024-11-02 20:21:03');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('admin|127.0.0.1', 'i:3;', 1730725099),
('admin|127.0.0.1:timer', 'i:1730725099;', 1730725099),
('voyager_menu_admin', 'O:23:\"TCG\\Voyager\\Models\\Menu\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"menus\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:4:{s:2:\"id\";i:1;s:4:\"name\";s:5:\"admin\";s:10:\"created_at\";s:19:\"2024-11-02 21:21:54\";s:10:\"updated_at\";s:19:\"2024-11-02 21:21:54\";}s:11:\"\0*\0original\";a:4:{s:2:\"id\";i:1;s:4:\"name\";s:5:\"admin\";s:10:\"created_at\";s:19:\"2024-11-02 21:21:54\";s:10:\"updated_at\";s:19:\"2024-11-02 21:21:54\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:12:\"parent_items\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:15:{i:0;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:1;s:7:\"menu_id\";i:1;s:5:\"title\";s:9:\"Dashboard\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:12:\"voyager-boat\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:1;s:10:\"created_at\";s:19:\"2024-11-02 21:21:54\";s:10:\"updated_at\";s:19:\"2024-11-02 21:21:54\";s:5:\"route\";s:17:\"voyager.dashboard\";s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:1;s:7:\"menu_id\";i:1;s:5:\"title\";s:9:\"Dashboard\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:12:\"voyager-boat\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:1;s:10:\"created_at\";s:19:\"2024-11-02 21:21:54\";s:10:\"updated_at\";s:19:\"2024-11-02 21:21:54\";s:5:\"route\";s:17:\"voyager.dashboard\";s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:1;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:2;s:7:\"menu_id\";i:1;s:5:\"title\";s:5:\"Media\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:14:\"voyager-images\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:4;s:10:\"created_at\";s:19:\"2024-11-02 21:21:54\";s:10:\"updated_at\";s:19:\"2024-11-02 22:24:39\";s:5:\"route\";s:19:\"voyager.media.index\";s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:2;s:7:\"menu_id\";i:1;s:5:\"title\";s:5:\"Media\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:14:\"voyager-images\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:4;s:10:\"created_at\";s:19:\"2024-11-02 21:21:54\";s:10:\"updated_at\";s:19:\"2024-11-02 22:24:39\";s:5:\"route\";s:19:\"voyager.media.index\";s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:2;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:3;s:7:\"menu_id\";i:1;s:5:\"title\";s:5:\"Users\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:14:\"voyager-person\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:2;s:10:\"created_at\";s:19:\"2024-11-02 21:21:54\";s:10:\"updated_at\";s:19:\"2024-11-04 13:17:40\";s:5:\"route\";s:19:\"voyager.users.index\";s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:3;s:7:\"menu_id\";i:1;s:5:\"title\";s:5:\"Users\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:14:\"voyager-person\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:2;s:10:\"created_at\";s:19:\"2024-11-02 21:21:54\";s:10:\"updated_at\";s:19:\"2024-11-04 13:17:40\";s:5:\"route\";s:19:\"voyager.users.index\";s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:3;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:4;s:7:\"menu_id\";i:1;s:5:\"title\";s:5:\"Roles\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:12:\"voyager-lock\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:3;s:10:\"created_at\";s:19:\"2024-11-02 21:21:54\";s:10:\"updated_at\";s:19:\"2024-11-04 13:17:40\";s:5:\"route\";s:19:\"voyager.roles.index\";s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:4;s:7:\"menu_id\";i:1;s:5:\"title\";s:5:\"Roles\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:12:\"voyager-lock\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:3;s:10:\"created_at\";s:19:\"2024-11-02 21:21:54\";s:10:\"updated_at\";s:19:\"2024-11-04 13:17:40\";s:5:\"route\";s:19:\"voyager.roles.index\";s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:4;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:5;s:7:\"menu_id\";i:1;s:5:\"title\";s:5:\"Tools\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:13:\"voyager-tools\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:8;s:10:\"created_at\";s:19:\"2024-11-02 21:21:54\";s:10:\"updated_at\";s:19:\"2024-11-02 22:24:39\";s:5:\"route\";N;s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:5;s:7:\"menu_id\";i:1;s:5:\"title\";s:5:\"Tools\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:13:\"voyager-tools\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:8;s:10:\"created_at\";s:19:\"2024-11-02 21:21:54\";s:10:\"updated_at\";s:19:\"2024-11-02 22:24:39\";s:5:\"route\";N;s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:4:{i:0;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:6;s:7:\"menu_id\";i:1;s:5:\"title\";s:12:\"Menu Builder\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:12:\"voyager-list\";s:5:\"color\";N;s:9:\"parent_id\";i:5;s:5:\"order\";i:1;s:10:\"created_at\";s:19:\"2024-11-02 21:21:54\";s:10:\"updated_at\";s:19:\"2024-11-02 22:24:39\";s:5:\"route\";s:19:\"voyager.menus.index\";s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:6;s:7:\"menu_id\";i:1;s:5:\"title\";s:12:\"Menu Builder\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:12:\"voyager-list\";s:5:\"color\";N;s:9:\"parent_id\";i:5;s:5:\"order\";i:1;s:10:\"created_at\";s:19:\"2024-11-02 21:21:54\";s:10:\"updated_at\";s:19:\"2024-11-02 22:24:39\";s:5:\"route\";s:19:\"voyager.menus.index\";s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:1;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:7;s:7:\"menu_id\";i:1;s:5:\"title\";s:8:\"Database\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:12:\"voyager-data\";s:5:\"color\";N;s:9:\"parent_id\";i:5;s:5:\"order\";i:2;s:10:\"created_at\";s:19:\"2024-11-02 21:21:54\";s:10:\"updated_at\";s:19:\"2024-11-02 22:24:39\";s:5:\"route\";s:22:\"voyager.database.index\";s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:7;s:7:\"menu_id\";i:1;s:5:\"title\";s:8:\"Database\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:12:\"voyager-data\";s:5:\"color\";N;s:9:\"parent_id\";i:5;s:5:\"order\";i:2;s:10:\"created_at\";s:19:\"2024-11-02 21:21:54\";s:10:\"updated_at\";s:19:\"2024-11-02 22:24:39\";s:5:\"route\";s:22:\"voyager.database.index\";s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:2;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:8;s:7:\"menu_id\";i:1;s:5:\"title\";s:7:\"Compass\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:15:\"voyager-compass\";s:5:\"color\";N;s:9:\"parent_id\";i:5;s:5:\"order\";i:3;s:10:\"created_at\";s:19:\"2024-11-02 21:21:54\";s:10:\"updated_at\";s:19:\"2024-11-02 22:24:39\";s:5:\"route\";s:21:\"voyager.compass.index\";s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:8;s:7:\"menu_id\";i:1;s:5:\"title\";s:7:\"Compass\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:15:\"voyager-compass\";s:5:\"color\";N;s:9:\"parent_id\";i:5;s:5:\"order\";i:3;s:10:\"created_at\";s:19:\"2024-11-02 21:21:54\";s:10:\"updated_at\";s:19:\"2024-11-02 22:24:39\";s:5:\"route\";s:21:\"voyager.compass.index\";s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:3;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:9;s:7:\"menu_id\";i:1;s:5:\"title\";s:5:\"BREAD\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:13:\"voyager-bread\";s:5:\"color\";N;s:9:\"parent_id\";i:5;s:5:\"order\";i:4;s:10:\"created_at\";s:19:\"2024-11-02 21:21:54\";s:10:\"updated_at\";s:19:\"2024-11-02 22:24:39\";s:5:\"route\";s:19:\"voyager.bread.index\";s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:9;s:7:\"menu_id\";i:1;s:5:\"title\";s:5:\"BREAD\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:13:\"voyager-bread\";s:5:\"color\";N;s:9:\"parent_id\";i:5;s:5:\"order\";i:4;s:10:\"created_at\";s:19:\"2024-11-02 21:21:54\";s:10:\"updated_at\";s:19:\"2024-11-02 22:24:39\";s:5:\"route\";s:19:\"voyager.bread.index\";s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:5;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:10;s:7:\"menu_id\";i:1;s:5:\"title\";s:8:\"Settings\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:16:\"voyager-settings\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:9;s:10:\"created_at\";s:19:\"2024-11-02 21:21:54\";s:10:\"updated_at\";s:19:\"2024-11-02 22:24:39\";s:5:\"route\";s:22:\"voyager.settings.index\";s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:10;s:7:\"menu_id\";i:1;s:5:\"title\";s:8:\"Settings\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:16:\"voyager-settings\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:9;s:10:\"created_at\";s:19:\"2024-11-02 21:21:54\";s:10:\"updated_at\";s:19:\"2024-11-02 22:24:39\";s:5:\"route\";s:22:\"voyager.settings.index\";s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:6;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:11;s:7:\"menu_id\";i:1;s:5:\"title\";s:10:\"Categories\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:18:\"voyager-categories\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:7;s:10:\"created_at\";s:19:\"2024-11-02 21:21:55\";s:10:\"updated_at\";s:19:\"2024-11-02 22:24:39\";s:5:\"route\";s:24:\"voyager.categories.index\";s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:11;s:7:\"menu_id\";i:1;s:5:\"title\";s:10:\"Categories\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:18:\"voyager-categories\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:7;s:10:\"created_at\";s:19:\"2024-11-02 21:21:55\";s:10:\"updated_at\";s:19:\"2024-11-02 22:24:39\";s:5:\"route\";s:24:\"voyager.categories.index\";s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:7;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:12;s:7:\"menu_id\";i:1;s:5:\"title\";s:5:\"Posts\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:12:\"voyager-news\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:5;s:10:\"created_at\";s:19:\"2024-11-02 21:21:55\";s:10:\"updated_at\";s:19:\"2024-11-02 22:24:39\";s:5:\"route\";s:19:\"voyager.posts.index\";s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:12;s:7:\"menu_id\";i:1;s:5:\"title\";s:5:\"Posts\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:12:\"voyager-news\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:5;s:10:\"created_at\";s:19:\"2024-11-02 21:21:55\";s:10:\"updated_at\";s:19:\"2024-11-02 22:24:39\";s:5:\"route\";s:19:\"voyager.posts.index\";s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:8;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:13;s:7:\"menu_id\";i:1;s:5:\"title\";s:5:\"Pages\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:17:\"voyager-file-text\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:6;s:10:\"created_at\";s:19:\"2024-11-02 21:21:55\";s:10:\"updated_at\";s:19:\"2024-11-02 22:24:39\";s:5:\"route\";s:19:\"voyager.pages.index\";s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:13;s:7:\"menu_id\";i:1;s:5:\"title\";s:5:\"Pages\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:17:\"voyager-file-text\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:6;s:10:\"created_at\";s:19:\"2024-11-02 21:21:55\";s:10:\"updated_at\";s:19:\"2024-11-02 22:24:39\";s:5:\"route\";s:19:\"voyager.pages.index\";s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:9;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:14;s:7:\"menu_id\";i:1;s:5:\"title\";s:13:\"Hero Sections\";s:3:\"url\";s:26:\"admin/hero-sections/1/edit\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:11:\"voyager-paw\";s:5:\"color\";s:7:\"#000000\";s:9:\"parent_id\";N;s:5:\"order\";i:10;s:10:\"created_at\";s:19:\"2024-11-02 22:14:02\";s:10:\"updated_at\";s:19:\"2024-11-02 22:26:50\";s:5:\"route\";N;s:10:\"parameters\";s:0:\"\";}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:14;s:7:\"menu_id\";i:1;s:5:\"title\";s:13:\"Hero Sections\";s:3:\"url\";s:26:\"admin/hero-sections/1/edit\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:11:\"voyager-paw\";s:5:\"color\";s:7:\"#000000\";s:9:\"parent_id\";N;s:5:\"order\";i:10;s:10:\"created_at\";s:19:\"2024-11-02 22:14:02\";s:10:\"updated_at\";s:19:\"2024-11-02 22:26:50\";s:5:\"route\";N;s:10:\"parameters\";s:0:\"\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:10;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:15;s:7:\"menu_id\";i:1;s:5:\"title\";s:14:\"About Sections\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:20:\"voyager-info-circled\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:11;s:10:\"created_at\";s:19:\"2024-11-02 23:19:16\";s:10:\"updated_at\";s:19:\"2024-11-02 23:19:16\";s:5:\"route\";s:28:\"voyager.about-sections.index\";s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:15;s:7:\"menu_id\";i:1;s:5:\"title\";s:14:\"About Sections\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:20:\"voyager-info-circled\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:11;s:10:\"created_at\";s:19:\"2024-11-02 23:19:16\";s:10:\"updated_at\";s:19:\"2024-11-02 23:19:16\";s:5:\"route\";s:28:\"voyager.about-sections.index\";s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:11;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:16;s:7:\"menu_id\";i:1;s:5:\"title\";s:8:\"Services\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:12:\"voyager-wand\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:12;s:10:\"created_at\";s:19:\"2024-11-03 00:14:17\";s:10:\"updated_at\";s:19:\"2024-11-03 00:14:17\";s:5:\"route\";s:22:\"voyager.services.index\";s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:16;s:7:\"menu_id\";i:1;s:5:\"title\";s:8:\"Services\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:12:\"voyager-wand\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:12;s:10:\"created_at\";s:19:\"2024-11-03 00:14:17\";s:10:\"updated_at\";s:19:\"2024-11-03 00:14:17\";s:5:\"route\";s:22:\"voyager.services.index\";s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:12;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:17;s:7:\"menu_id\";i:1;s:5:\"title\";s:15:\"Özelliklerimiz\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:17:\"voyager-lightbulb\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:13;s:10:\"created_at\";s:19:\"2024-11-03 00:38:09\";s:10:\"updated_at\";s:19:\"2024-11-03 00:38:09\";s:5:\"route\";s:22:\"voyager.features.index\";s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:17;s:7:\"menu_id\";i:1;s:5:\"title\";s:15:\"Özelliklerimiz\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:17:\"voyager-lightbulb\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:13;s:10:\"created_at\";s:19:\"2024-11-03 00:38:09\";s:10:\"updated_at\";s:19:\"2024-11-03 00:38:09\";s:5:\"route\";s:22:\"voyager.features.index\";s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:13;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:18;s:7:\"menu_id\";i:1;s:5:\"title\";s:17:\"Mutlu Müsteriler\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:17:\"voyager-thumbs-up\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:14;s:10:\"created_at\";s:19:\"2024-11-04 12:59:52\";s:10:\"updated_at\";s:19:\"2024-11-04 12:59:52\";s:5:\"route\";s:29:\"voyager.happy-customers.index\";s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:18;s:7:\"menu_id\";i:1;s:5:\"title\";s:17:\"Mutlu Müsteriler\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:17:\"voyager-thumbs-up\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:14;s:10:\"created_at\";s:19:\"2024-11-04 12:59:52\";s:10:\"updated_at\";s:19:\"2024-11-04 12:59:52\";s:5:\"route\";s:29:\"voyager.happy-customers.index\";s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:14;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:20;s:7:\"menu_id\";i:1;s:5:\"title\";s:8:\"Ekibimiz\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:14:\"voyager-people\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:16;s:10:\"created_at\";s:19:\"2024-11-04 13:17:28\";s:10:\"updated_at\";s:19:\"2024-11-04 13:17:28\";s:5:\"route\";s:26:\"voyager.team-members.index\";s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:20;s:7:\"menu_id\";i:1;s:5:\"title\";s:8:\"Ekibimiz\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:14:\"voyager-people\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:16;s:10:\"created_at\";s:19:\"2024-11-04 13:17:28\";s:10:\"updated_at\";s:19:\"2024-11-04 13:17:28\";s:5:\"route\";s:26:\"voyager.team-members.index\";s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}', 1733318263);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2024-11-02 18:21:55', '2024-11-02 18:21:55'),
(2, NULL, 1, 'Category 2', 'category-2', '2024-11-02 18:21:55', '2024-11-02 18:21:55');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(56, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 7, 'title', 'text', 'Baslik', 1, 1, 1, 1, 1, 1, '{}', 2),
(58, 7, 'description', 'text', 'Aciklama', 1, 1, 1, 1, 1, 1, '{}', 3),
(59, 7, 'button_text', 'text', 'Buton Metni', 1, 1, 1, 1, 1, 1, '{}', 4),
(60, 7, 'button_link', 'text', 'Buton Linki', 1, 1, 1, 1, 1, 1, '{}', 5),
(61, 7, 'happy_clients', 'text', 'Mutlu Müsteri Sayı', 1, 1, 1, 1, 1, 1, '{}', 6),
(62, 7, 'happy_clients_text', 'text', 'Mutlu Müsteri Sayı Sonrası', 1, 1, 1, 1, 1, 1, '{}', 7),
(63, 7, 'happy_clients_text_desc', 'text', 'Mutlu Müsteri Metni', 1, 1, 1, 1, 1, 1, '{}', 8),
(64, 7, 'client_image_1', 'image', 'Müsteri Resim 1', 1, 1, 1, 1, 1, 1, '{}', 9),
(65, 7, 'client_image_2', 'image', 'Müsteri Resim 2', 1, 1, 1, 1, 1, 1, '{}', 10),
(66, 7, 'client_image_3', 'image', 'Müsteri Resim 3', 1, 1, 1, 1, 1, 1, '{}', 11),
(67, 7, 'created_at', 'timestamp', 'Oluşturma Zamanı', 0, 1, 1, 1, 0, 1, '{}', 12),
(68, 7, 'updated_at', 'timestamp', 'Güncelleme Zamanı', 0, 1, 1, 0, 0, 0, '{}', 13),
(69, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(70, 9, 'title_content', 'text', 'Bölüm Başlığı', 1, 1, 1, 1, 1, 1, '{}', 2),
(71, 9, 'title', 'text', 'Başlık', 1, 1, 1, 1, 1, 1, '{}', 3),
(72, 9, 'description', 'text_area', 'Açıklama', 1, 1, 1, 1, 1, 1, '{}', 4),
(73, 9, 'button_text', 'text', 'Buton Metni', 1, 1, 1, 1, 1, 1, '{}', 5),
(74, 9, 'button_link', 'text', 'Buton Linki', 1, 1, 1, 1, 1, 1, '{}', 6),
(75, 9, 'large_image', 'image', 'Büyük Görsel', 1, 1, 1, 1, 1, 1, '{}', 7),
(76, 9, 'dot_image', 'image', 'Arkaplan Görsel', 1, 1, 1, 1, 1, 1, '{}', 8),
(77, 9, 'small_image', 'image', 'Küçük Görsel', 1, 1, 1, 1, 1, 1, '{}', 9),
(78, 9, 'features', 'code_editor', 'Özellikler', 1, 0, 0, 1, 1, 1, '{}', 10),
(79, 9, 'created_at', 'timestamp', 'Oluşturma Zamanı', 0, 1, 1, 1, 0, 1, '{}', 11),
(80, 9, 'updated_at', 'timestamp', 'Güncelleme Zamanı', 0, 1, 0, 0, 0, 0, '{}', 12),
(81, 7, 'client_image_4', 'image', 'Büyük Görsel', 1, 1, 1, 1, 1, 1, '{}', 12),
(82, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(83, 10, 'title', 'text', 'Başlık', 1, 1, 1, 1, 1, 1, '{}', 2),
(84, 10, 'description', 'text_area', 'Açıklama', 1, 1, 1, 1, 1, 1, '{}', 3),
(85, 10, 'image', 'image', 'Görsel', 0, 1, 1, 1, 1, 1, '{}', 4),
(86, 10, 'button_text', 'text', 'Buton Metni', 0, 1, 1, 1, 1, 1, '{}', 5),
(87, 10, 'button_link', 'text', 'Buton Linki', 0, 1, 1, 1, 1, 1, '{}', 6),
(88, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(89, 10, 'updated_at', 'timestamp', 'Updated At', 0, 1, 1, 0, 0, 0, '{}', 8),
(90, 12, 'id', 'text', 'Id', 1, 1, 1, 0, 0, 0, '{}', 1),
(91, 12, 'main_image', 'image', 'Büyük Görsel', 0, 1, 1, 1, 1, 1, '{}', 2),
(92, 12, 'dot_image', 'image', 'Arkaplan Görsel', 0, 1, 1, 1, 1, 1, '{}', 3),
(93, 12, 'safe_icon', 'image', 'Büyük Görsel Icon', 0, 1, 1, 1, 1, 1, '{}', 4),
(94, 12, 'safe_title', 'text', 'Büyük Görsel Başlık', 0, 1, 1, 1, 1, 1, '{}', 5),
(95, 12, 'safe_text', 'text', 'Büyük Görsel Metin', 0, 1, 1, 1, 1, 1, '{}', 6),
(96, 12, 'section_title', 'text', 'Küçük Başlık', 0, 1, 1, 1, 1, 1, '{}', 7),
(97, 12, 'main_title', 'text', 'Başlık', 0, 1, 1, 1, 1, 1, '{}', 8),
(98, 12, 'description', 'text_area', 'Açıklama', 0, 1, 1, 1, 1, 1, '{}', 9),
(99, 12, 'feature_1_icon', 'image', 'Özellik 1 Görsel', 0, 1, 1, 1, 1, 1, '{}', 10),
(100, 12, 'feature_1_title', 'text', 'Özellik 1 Başlık', 0, 1, 1, 1, 1, 1, '{}', 11),
(101, 12, 'feature_1_text', 'text_area', 'Özellik 1 Açıklama', 0, 1, 1, 1, 1, 1, '{}', 12),
(102, 12, 'feature_2_icon', 'image', 'Özellik 2 Görsel', 0, 1, 1, 1, 1, 1, '{}', 13),
(103, 12, 'feature_2_title', 'text', 'Özellik 2 Başlık', 0, 1, 1, 1, 1, 1, '{}', 14),
(104, 12, 'feature_2_text', 'text_area', 'Özellik 2 Açıklama', 0, 1, 1, 1, 1, 1, '{}', 15),
(105, 12, 'feature_3_icon', 'image', 'Özellik 3 Görsel', 0, 1, 1, 1, 1, 1, '{}', 16),
(106, 12, 'feature_3_title', 'text', 'Özellik 3 Başlık', 0, 1, 1, 1, 1, 1, '{}', 17),
(107, 12, 'feature_3_text', 'text_area', 'Özellik 3 Açıklama', 0, 1, 1, 1, 1, 1, '{}', 18),
(108, 12, 'feature_4_icon', 'image', 'Özellik 4 Görsel', 0, 1, 1, 1, 1, 1, '{}', 19),
(109, 12, 'feature_4_title', 'text', 'Özellik 4 Başlık', 0, 1, 1, 1, 1, 1, '{}', 20),
(110, 12, 'feature_4_text', 'text_area', 'Özellik 4 Açıklama', 0, 1, 1, 1, 1, 1, '{}', 21),
(111, 12, 'created_at', 'timestamp', 'Oluşturma Zamanı', 0, 1, 1, 1, 0, 1, '{}', 22),
(112, 12, 'updated_at', 'timestamp', 'Güncelleme Zamanı', 0, 1, 1, 0, 0, 0, '{}', 23),
(113, 13, 'id', 'number', 'Id', 1, 1, 1, 1, 0, 1, '{}', 1),
(114, 13, 'number', 'text', 'Sayı', 1, 1, 1, 1, 1, 1, '{}', 2),
(115, 13, 'category', 'text', 'İçerik', 1, 1, 1, 1, 1, 1, '{}', 4),
(116, 13, 'created_at', 'timestamp', 'Oluşturma Zamanı', 0, 1, 1, 1, 0, 1, '{}', 5),
(117, 13, 'updated_at', 'timestamp', 'Güncelleme Zamanı', 0, 0, 0, 0, 0, 0, '{}', 6),
(118, 13, 'addtext', 'text', 'Sayı Metni (Bitişik)', 1, 1, 1, 1, 1, 1, '{}', 3),
(119, 15, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(120, 15, 'name', 'text', 'Ad Soyad', 1, 1, 1, 1, 1, 1, '{}', 2),
(121, 15, 'designation', 'text', 'Görev Tanımı', 1, 1, 1, 1, 1, 1, '{}', 3),
(122, 15, 'image', 'image', 'Görsel', 0, 1, 1, 1, 1, 1, '{}', 4),
(123, 15, 'facebook_link', 'text', 'Facebook Link', 0, 1, 1, 1, 1, 1, '{}', 5),
(124, 15, 'twitter_link', 'text', 'Twitter Link', 0, 1, 1, 1, 1, 1, '{}', 6),
(125, 15, 'instagram_link', 'text', 'Instagram Link', 0, 1, 1, 1, 1, 1, '{}', 7),
(126, 15, 'created_at', 'timestamp', 'Oluşturma Zamanı', 0, 1, 1, 1, 0, 1, '{}', 8),
(127, 15, 'updated_at', 'timestamp', 'Güncelleme Zamanı', 0, 1, 1, 0, 0, 0, '{}', 9);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `display_name_singular` varchar(255) NOT NULL,
  `display_name_plural` varchar(255) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `model_name` varchar(255) DEFAULT NULL,
  `policy_name` varchar(255) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2024-11-02 18:21:54', '2024-11-02 18:21:54'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2024-11-02 18:21:54', '2024-11-02 18:21:54'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2024-11-02 18:21:54', '2024-11-02 18:21:54'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2024-11-02 18:21:55', '2024-11-02 18:21:55'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2024-11-02 18:21:55', '2024-11-02 18:21:55'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2024-11-02 18:21:55', '2024-11-02 18:21:55'),
(7, 'hero_sections', 'hero-sections', 'Hero Section', 'Hero Sections', 'voyager-paw', 'App\\Models\\HeroSection', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-11-02 19:14:02', '2024-11-02 20:42:42'),
(9, 'about_sections', 'about-sections', 'About Section', 'About Sections', 'voyager-info-circled', 'App\\Models\\AboutSection', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-11-02 20:19:16', '2024-11-02 20:56:15'),
(10, 'services', 'services', 'Service', 'Services', 'voyager-wand', 'App\\Models\\Service', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-11-02 21:14:17', '2024-11-02 21:14:17'),
(12, 'features', 'features', 'Özellikler', 'Özelliklerimiz', 'voyager-lightbulb', 'App\\Models\\Feature', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-11-02 21:38:09', '2024-11-02 21:38:09'),
(13, 'happy_customers', 'happy-customers', 'Mutlu Müsteriler', 'Mutlu Müsteriler', 'voyager-thumbs-up', 'App\\Models\\HappyCustomer', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-11-04 09:59:52', '2024-11-04 10:07:56'),
(14, 'teams', 'teams', 'Ekibimiz', 'Ekibimiz', 'voyager-people', 'App\\Models\\TeamMember', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-11-04 10:15:04', '2024-11-04 10:15:04'),
(15, 'team_members', 'team-members', 'Ekibimiz', 'Ekibimiz', 'voyager-people', 'App\\Models\\TeamMember', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-11-04 10:17:28', '2024-11-04 10:18:31');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `failed_jobs`
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
-- Tablo için tablo yapısı `features`
--

CREATE TABLE `features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `main_image` varchar(255) DEFAULT NULL,
  `dot_image` varchar(255) DEFAULT NULL,
  `safe_icon` varchar(255) DEFAULT NULL,
  `safe_title` varchar(255) DEFAULT NULL,
  `safe_text` varchar(255) DEFAULT NULL,
  `section_title` varchar(255) DEFAULT NULL,
  `main_title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `feature_1_icon` varchar(255) DEFAULT NULL,
  `feature_1_title` varchar(255) DEFAULT NULL,
  `feature_1_text` text DEFAULT NULL,
  `feature_2_icon` varchar(255) DEFAULT NULL,
  `feature_2_title` varchar(255) DEFAULT NULL,
  `feature_2_text` text DEFAULT NULL,
  `feature_3_icon` varchar(255) DEFAULT NULL,
  `feature_3_title` varchar(255) DEFAULT NULL,
  `feature_3_text` text DEFAULT NULL,
  `feature_4_icon` varchar(255) DEFAULT NULL,
  `feature_4_title` varchar(255) DEFAULT NULL,
  `feature_4_text` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `features`
--

INSERT INTO `features` (`id`, `main_image`, `dot_image`, `safe_icon`, `safe_title`, `safe_text`, `section_title`, `main_title`, `description`, `feature_1_icon`, `feature_1_title`, `feature_1_text`, `feature_2_icon`, `feature_2_title`, `feature_2_text`, `feature_3_icon`, `feature_3_title`, `feature_3_text`, `feature_4_icon`, `feature_4_title`, `feature_4_text`, `created_at`, `updated_at`) VALUES
(1, 'features\\November2024\\gbF0El4pMV3X7Tad7V1V.png', 'features\\November2024\\gKmWPcbjC7kliCf6irOA.png', 'features\\November2024\\RVOgfRB00BiXqGlWnk34.png', '100%', 'Güvenli Hizmet', 'Özelliklerimiz', 'En iyi personelimiz evcil hayvanlarınıza bakar', 'Pati Plus ekibi, köpeğiniz için en yüksek kalitede bakım sağlama konusunda kararlıdır. Kamplarımızdaki her evcil hayvan bireysel ilgi ve sevgi dolu bakım alır.', 'features\\November2024\\zKu5KDVU2ZbBcyhLrCrV.png', 'Aşılar', 'Evcil hayvanınızı yaygın ve potansiyel olarak tehlikeli hastalıklara karşı koruyan aşılar.', 'features\\November2024\\tQL5P5vWiC2x5Q4HV1PU.png', 'Beslenme Danışmanlığı', 'Evcil hayvanınızın ihtiyaçlarına uygun doğru besin ve takviyelerin seçimi konusunda tavsiye.', 'features\\November2024\\BsOIaDXCxLjEwLAfAZr2.png', 'Evcil Hayvan Destek', 'Veteriner bakımı ve tedavi işlemleri sırasında ve sonrasında, patili dostunuz için en doğru bakımı sağlamanız için destek hizmetimiz.', 'features\\November2024\\r4mdvw2Xyc7sQDTrZc0m.png', 'Diş Bakımı', 'Evcil hayvanınızın ağız sağlığını korumak için rutin temizlikler ve diş kontrolleri.', '2024-11-02 21:50:11', '2024-11-02 21:50:11');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `happy_customers`
--

CREATE TABLE `happy_customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `number` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `addtext` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `happy_customers`
--

INSERT INTO `happy_customers` (`id`, `number`, `category`, `addtext`, `created_at`, `updated_at`) VALUES
(1, '3', 'Mutlu Müşteri', 'k+', '2024-11-04 10:08:14', '2024-11-04 10:08:14'),
(2, '300', 'Başarılı Operasyon', '+', '2024-11-04 10:08:29', '2024-11-04 10:08:29'),
(4, '7', 'Yıllık Deneyim', '+', '2024-11-04 10:08:48', '2024-11-04 10:08:48'),
(5, '500', 'Patili Dost', '+', '2024-11-04 10:09:05', '2024-11-04 10:09:05');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hero_sections`
--

CREATE TABLE `hero_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `button_text` varchar(255) NOT NULL,
  `button_link` varchar(255) NOT NULL,
  `happy_clients` int(11) NOT NULL,
  `happy_clients_text` text NOT NULL,
  `happy_clients_text_desc` text NOT NULL,
  `client_image_1` varchar(255) NOT NULL,
  `client_image_2` varchar(255) NOT NULL,
  `client_image_3` varchar(255) NOT NULL,
  `client_image_4` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `hero_sections`
--

INSERT INTO `hero_sections` (`id`, `title`, `description`, `button_text`, `button_link`, `happy_clients`, `happy_clients_text`, `happy_clients_text_desc`, `client_image_1`, `client_image_2`, `client_image_3`, `client_image_4`, `created_at`, `updated_at`) VALUES
(1, 'Bizim için en önemli şey, evcil hayvanınızın sağlığıdır', 'Evcil hayvanlar, bize tüm canlılara karşı sorumluluk ve bakım yükümlülüğümüz olduğunu hatırlatır.', 'Randevu Alın', '/iletisim', 10, 'k+', 'Memnun Müşteriler', 'hero-sections\\November2024\\f4GXHmMNuLMmdUMuY6e5.png', 'hero-sections\\November2024\\cyfi9CXMG78R2NVPWhC9.png', 'hero-sections\\November2024\\dNIJt0sOaJbwLNOVTTYa.png', 'hero-sections\\November2024\\kwXxdBdiA1bRu0I8wgO4.png', '2024-11-02 19:17:00', '2024-11-02 20:42:53');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2024-11-02 18:21:54', '2024-11-02 18:21:54');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `parameters` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2024-11-02 18:21:54', '2024-11-02 18:21:54', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 4, '2024-11-02 18:21:54', '2024-11-02 19:24:39', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 2, '2024-11-02 18:21:54', '2024-11-04 10:17:40', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 3, '2024-11-02 18:21:54', '2024-11-04 10:17:40', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 8, '2024-11-02 18:21:54', '2024-11-02 19:24:39', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2024-11-02 18:21:54', '2024-11-02 19:24:39', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2024-11-02 18:21:54', '2024-11-02 19:24:39', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2024-11-02 18:21:54', '2024-11-02 19:24:39', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2024-11-02 18:21:54', '2024-11-02 19:24:39', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 9, '2024-11-02 18:21:54', '2024-11-02 19:24:39', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 7, '2024-11-02 18:21:55', '2024-11-02 19:24:39', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 5, '2024-11-02 18:21:55', '2024-11-02 19:24:39', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 6, '2024-11-02 18:21:55', '2024-11-02 19:24:39', 'voyager.pages.index', NULL),
(14, 1, 'Hero Sections', 'admin/hero-sections/1/edit', '_self', 'voyager-paw', '#000000', NULL, 10, '2024-11-02 19:14:02', '2024-11-02 19:26:50', NULL, ''),
(15, 1, 'About Sections', '', '_self', 'voyager-info-circled', NULL, NULL, 11, '2024-11-02 20:19:16', '2024-11-02 20:19:16', 'voyager.about-sections.index', NULL),
(16, 1, 'Services', '', '_self', 'voyager-wand', NULL, NULL, 12, '2024-11-02 21:14:17', '2024-11-02 21:14:17', 'voyager.services.index', NULL),
(17, 1, 'Özelliklerimiz', '', '_self', 'voyager-lightbulb', NULL, NULL, 13, '2024-11-02 21:38:09', '2024-11-02 21:38:09', 'voyager.features.index', NULL),
(18, 1, 'Mutlu Müsteriler', '', '_self', 'voyager-thumbs-up', NULL, NULL, 14, '2024-11-04 09:59:52', '2024-11-04 09:59:52', 'voyager.happy-customers.index', NULL),
(20, 1, 'Ekibimiz', '', '_self', 'voyager-people', NULL, NULL, 16, '2024-11-04 10:17:28', '2024-11-04 10:17:28', 'voyager.team-members.index', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2016_01_01_000000_add_voyager_user_fields', 1),
(5, '2016_01_01_000000_create_data_types_table', 1),
(6, '2016_05_19_173453_create_menu_table', 1),
(7, '2016_10_21_190000_create_roles_table', 1),
(8, '2016_10_21_190000_create_settings_table', 1),
(9, '2016_11_30_135954_create_permission_table', 1),
(10, '2016_11_30_141208_create_permission_role_table', 1),
(11, '2016_12_26_201236_data_types__add__server_side', 1),
(12, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(13, '2017_01_14_005015_create_translations_table', 1),
(14, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(15, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(16, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(17, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(18, '2017_08_05_000000_add_group_to_settings_table', 1),
(19, '2017_11_26_013050_add_user_role_relationship', 1),
(20, '2017_11_26_015000_create_user_roles_table', 1),
(21, '2018_03_11_000000_add_user_settings', 1),
(22, '2018_03_14_000000_add_details_to_data_types_table', 1),
(23, '2018_03_16_000000_make_settings_value_nullable', 1),
(24, '2016_01_01_000000_create_pages_table', 2),
(25, '2016_01_01_000000_create_posts_table', 2),
(26, '2016_02_15_204651_create_categories_table', 2),
(27, '2017_04_11_000000_alter_post_nullable_fields_table', 2),
(28, '2024_11_02_215156_create_hero_sections_table', 3),
(29, '2024_11_02_215219_create_about_sections_table', 3),
(30, '2024_11_02_215220_create_about_sections_table', 4),
(31, '2024_11_02_215221_create_about_sections_table', 5),
(32, '2024_11_03_000142_create_services_table', 6),
(33, '2024_11_03_001101_create_services_table', 7),
(34, '2024_11_03_002747_create_features_table', 8),
(35, '2024_11_04_125650_create_happy_customers_table', 9),
(36, '2024_11_04_125651_create_happy_customers_table', 10),
(37, '2024_11_04_131225_create_team_members_table', 11),
(38, '2024_11_04_131226_create_team_members_table', 12);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `excerpt` text DEFAULT NULL,
  `body` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2024-11-02 18:21:55', '2024-11-02 18:21:55');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2024-11-02 18:21:54', '2024-11-02 18:21:54'),
(2, 'browse_bread', NULL, '2024-11-02 18:21:54', '2024-11-02 18:21:54'),
(3, 'browse_database', NULL, '2024-11-02 18:21:54', '2024-11-02 18:21:54'),
(4, 'browse_media', NULL, '2024-11-02 18:21:54', '2024-11-02 18:21:54'),
(5, 'browse_compass', NULL, '2024-11-02 18:21:54', '2024-11-02 18:21:54'),
(6, 'browse_menus', 'menus', '2024-11-02 18:21:54', '2024-11-02 18:21:54'),
(7, 'read_menus', 'menus', '2024-11-02 18:21:54', '2024-11-02 18:21:54'),
(8, 'edit_menus', 'menus', '2024-11-02 18:21:54', '2024-11-02 18:21:54'),
(9, 'add_menus', 'menus', '2024-11-02 18:21:54', '2024-11-02 18:21:54'),
(10, 'delete_menus', 'menus', '2024-11-02 18:21:54', '2024-11-02 18:21:54'),
(11, 'browse_roles', 'roles', '2024-11-02 18:21:54', '2024-11-02 18:21:54'),
(12, 'read_roles', 'roles', '2024-11-02 18:21:54', '2024-11-02 18:21:54'),
(13, 'edit_roles', 'roles', '2024-11-02 18:21:54', '2024-11-02 18:21:54'),
(14, 'add_roles', 'roles', '2024-11-02 18:21:54', '2024-11-02 18:21:54'),
(15, 'delete_roles', 'roles', '2024-11-02 18:21:54', '2024-11-02 18:21:54'),
(16, 'browse_users', 'users', '2024-11-02 18:21:54', '2024-11-02 18:21:54'),
(17, 'read_users', 'users', '2024-11-02 18:21:54', '2024-11-02 18:21:54'),
(18, 'edit_users', 'users', '2024-11-02 18:21:54', '2024-11-02 18:21:54'),
(19, 'add_users', 'users', '2024-11-02 18:21:54', '2024-11-02 18:21:54'),
(20, 'delete_users', 'users', '2024-11-02 18:21:54', '2024-11-02 18:21:54'),
(21, 'browse_settings', 'settings', '2024-11-02 18:21:54', '2024-11-02 18:21:54'),
(22, 'read_settings', 'settings', '2024-11-02 18:21:54', '2024-11-02 18:21:54'),
(23, 'edit_settings', 'settings', '2024-11-02 18:21:54', '2024-11-02 18:21:54'),
(24, 'add_settings', 'settings', '2024-11-02 18:21:54', '2024-11-02 18:21:54'),
(25, 'delete_settings', 'settings', '2024-11-02 18:21:54', '2024-11-02 18:21:54'),
(26, 'browse_categories', 'categories', '2024-11-02 18:21:55', '2024-11-02 18:21:55'),
(27, 'read_categories', 'categories', '2024-11-02 18:21:55', '2024-11-02 18:21:55'),
(28, 'edit_categories', 'categories', '2024-11-02 18:21:55', '2024-11-02 18:21:55'),
(29, 'add_categories', 'categories', '2024-11-02 18:21:55', '2024-11-02 18:21:55'),
(30, 'delete_categories', 'categories', '2024-11-02 18:21:55', '2024-11-02 18:21:55'),
(31, 'browse_posts', 'posts', '2024-11-02 18:21:55', '2024-11-02 18:21:55'),
(32, 'read_posts', 'posts', '2024-11-02 18:21:55', '2024-11-02 18:21:55'),
(33, 'edit_posts', 'posts', '2024-11-02 18:21:55', '2024-11-02 18:21:55'),
(34, 'add_posts', 'posts', '2024-11-02 18:21:55', '2024-11-02 18:21:55'),
(35, 'delete_posts', 'posts', '2024-11-02 18:21:55', '2024-11-02 18:21:55'),
(36, 'browse_pages', 'pages', '2024-11-02 18:21:55', '2024-11-02 18:21:55'),
(37, 'read_pages', 'pages', '2024-11-02 18:21:55', '2024-11-02 18:21:55'),
(38, 'edit_pages', 'pages', '2024-11-02 18:21:55', '2024-11-02 18:21:55'),
(39, 'add_pages', 'pages', '2024-11-02 18:21:55', '2024-11-02 18:21:55'),
(40, 'delete_pages', 'pages', '2024-11-02 18:21:55', '2024-11-02 18:21:55'),
(41, 'browse_hero_sections', 'hero_sections', '2024-11-02 19:14:02', '2024-11-02 19:14:02'),
(42, 'read_hero_sections', 'hero_sections', '2024-11-02 19:14:02', '2024-11-02 19:14:02'),
(43, 'edit_hero_sections', 'hero_sections', '2024-11-02 19:14:02', '2024-11-02 19:14:02'),
(44, 'add_hero_sections', 'hero_sections', '2024-11-02 19:14:02', '2024-11-02 19:14:02'),
(45, 'delete_hero_sections', 'hero_sections', '2024-11-02 19:14:02', '2024-11-02 19:14:02'),
(46, 'browse_about_sections', 'about_sections', '2024-11-02 20:19:16', '2024-11-02 20:19:16'),
(47, 'read_about_sections', 'about_sections', '2024-11-02 20:19:16', '2024-11-02 20:19:16'),
(48, 'edit_about_sections', 'about_sections', '2024-11-02 20:19:16', '2024-11-02 20:19:16'),
(49, 'add_about_sections', 'about_sections', '2024-11-02 20:19:16', '2024-11-02 20:19:16'),
(50, 'delete_about_sections', 'about_sections', '2024-11-02 20:19:16', '2024-11-02 20:19:16'),
(51, 'browse_services', 'services', '2024-11-02 21:14:17', '2024-11-02 21:14:17'),
(52, 'read_services', 'services', '2024-11-02 21:14:17', '2024-11-02 21:14:17'),
(53, 'edit_services', 'services', '2024-11-02 21:14:17', '2024-11-02 21:14:17'),
(54, 'add_services', 'services', '2024-11-02 21:14:17', '2024-11-02 21:14:17'),
(55, 'delete_services', 'services', '2024-11-02 21:14:17', '2024-11-02 21:14:17'),
(56, 'browse_features', 'features', '2024-11-02 21:38:09', '2024-11-02 21:38:09'),
(57, 'read_features', 'features', '2024-11-02 21:38:09', '2024-11-02 21:38:09'),
(58, 'edit_features', 'features', '2024-11-02 21:38:09', '2024-11-02 21:38:09'),
(59, 'add_features', 'features', '2024-11-02 21:38:09', '2024-11-02 21:38:09'),
(60, 'delete_features', 'features', '2024-11-02 21:38:09', '2024-11-02 21:38:09'),
(61, 'browse_happy_customers', 'happy_customers', '2024-11-04 09:59:52', '2024-11-04 09:59:52'),
(62, 'read_happy_customers', 'happy_customers', '2024-11-04 09:59:52', '2024-11-04 09:59:52'),
(63, 'edit_happy_customers', 'happy_customers', '2024-11-04 09:59:52', '2024-11-04 09:59:52'),
(64, 'add_happy_customers', 'happy_customers', '2024-11-04 09:59:52', '2024-11-04 09:59:52'),
(65, 'delete_happy_customers', 'happy_customers', '2024-11-04 09:59:52', '2024-11-04 09:59:52'),
(66, 'browse_teams', 'teams', '2024-11-04 10:15:04', '2024-11-04 10:15:04'),
(67, 'read_teams', 'teams', '2024-11-04 10:15:04', '2024-11-04 10:15:04'),
(68, 'edit_teams', 'teams', '2024-11-04 10:15:04', '2024-11-04 10:15:04'),
(69, 'add_teams', 'teams', '2024-11-04 10:15:04', '2024-11-04 10:15:04'),
(70, 'delete_teams', 'teams', '2024-11-04 10:15:04', '2024-11-04 10:15:04'),
(71, 'browse_team_members', 'team_members', '2024-11-04 10:17:28', '2024-11-04 10:17:28'),
(72, 'read_team_members', 'team_members', '2024-11-04 10:17:28', '2024-11-04 10:17:28'),
(73, 'edit_team_members', 'team_members', '2024-11-04 10:17:28', '2024-11-04 10:17:28'),
(74, 'add_team_members', 'team_members', '2024-11-04 10:17:28', '2024-11-04 10:17:28'),
(75, 'delete_team_members', 'team_members', '2024-11-04 10:17:28', '2024-11-04 10:17:28');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `seo_title` varchar(255) DEFAULT NULL,
  `excerpt` text DEFAULT NULL,
  `body` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2024-11-02 18:21:55', '2024-11-02 18:21:55'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2024-11-02 18:21:55', '2024-11-02 18:21:55'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2024-11-02 18:21:55', '2024-11-02 18:21:55'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2024-11-02 18:21:55', '2024-11-02 18:21:55');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2024-11-02 18:21:54', '2024-11-02 18:21:54'),
(2, 'user', 'Normal User', '2024-11-02 18:21:54', '2024-11-02 18:21:54');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `button_text` varchar(255) DEFAULT NULL,
  `button_link` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `services`
--

INSERT INTO `services` (`id`, `title`, `description`, `image`, `button_text`, `button_link`, `created_at`, `updated_at`) VALUES
(1, 'Bakım Hizmetleri', 'Evcil hayvanınızın hijyen ve görünümünü koruma hizmetidir.', 'services\\November2024\\NCXRGtuNbzNBGSLoCyWe.png', 'Detayları Gör', '/hizmetler', '2024-11-02 21:17:06', '2024-11-02 21:17:06'),
(2, 'Pansiyon', 'Evcil hayvanınızın hijyen ve görünümünü koruma hizmetidir.', 'services\\November2024\\Qu744JskvfafAtRKcMnW.png', 'Detayları Gör', '/hizmetler', '2024-11-02 21:17:39', '2024-11-02 21:17:39'),
(3, 'Gündüz Bakımı', 'Evcil hayvanınızın hijyen ve görünümünü koruma hizmetidir.', 'services\\November2024\\8vxNVv9zPmcNTDylaVPv.png', 'Detayları Gör', '/hizmetler', '2024-11-02 21:19:02', '2024-11-02 21:19:02'),
(4, 'Veterinerlik', 'Evcil hayvanınızın hijyen ve görünümünü koruma hizmetidir.', 'services\\November2024\\ZHhKtpeHFG7jX97kwhtu.png', 'Detayları Gör', '/hizmetler', '2024-11-02 21:19:53', '2024-11-02 21:19:53');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('Ou4D4i782KwIjHoRbRYQsUlpnQt3J2j8eaONLhqF', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiTXh4SVRxRGVBMndDMkxKQms3T3hGNTRkTzVPbDB0ZnlSSG1ESU1GRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjA6e31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1730729281);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `details` text DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(15, 'site.hizmetler_leader', 'Site', 'Hizmetlerimiz', NULL, 'text', 7, 'Site'),
(16, 'site.hizmetler_title', 'Site', 'Sunduğumuz Hizmetler', NULL, 'text', 8, 'Site');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `team_members`
--

CREATE TABLE `team_members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `facebook_link` varchar(255) DEFAULT NULL,
  `twitter_link` varchar(255) DEFAULT NULL,
  `instagram_link` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `team_members`
--

INSERT INTO `team_members` (`id`, `name`, `designation`, `image`, `facebook_link`, `twitter_link`, `instagram_link`, `created_at`, `updated_at`) VALUES
(1, 'Dr. Zeynep Kaya', 'Veteriner Hekim', 'team-members\\November2024\\JYRVMdAUzDQqOKP00s4F.jpg', 'https://facebook.com/', 'https://x.com/home?lang=tr', 'https://www.instagram.com/patiplusveteriner/', '2024-11-04 10:20:02', '2024-11-04 10:20:02');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) NOT NULL,
  `column_name` varchar(255) NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2024-11-02 18:21:55', '2024-11-02 18:21:55'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2024-11-02 18:21:55', '2024-11-02 18:21:55'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2024-11-02 18:21:55', '2024-11-02 18:21:55'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2024-11-02 18:21:55', '2024-11-02 18:21:55'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2024-11-02 18:21:55', '2024-11-02 18:21:55'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2024-11-02 18:21:55', '2024-11-02 18:21:55'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2024-11-02 18:21:55', '2024-11-02 18:21:55'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2024-11-02 18:21:55', '2024-11-02 18:21:55'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2024-11-02 18:21:55', '2024-11-02 18:21:55'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2024-11-02 18:21:55', '2024-11-02 18:21:55'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2024-11-02 18:21:55', '2024-11-02 18:21:55'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2024-11-02 18:21:55', '2024-11-02 18:21:55'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2024-11-02 18:21:55', '2024-11-02 18:21:55'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2024-11-02 18:21:55', '2024-11-02 18:21:55'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2024-11-02 18:21:55', '2024-11-02 18:21:55'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2024-11-02 18:21:55', '2024-11-02 18:21:55'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2024-11-02 18:21:55', '2024-11-02 18:21:55'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2024-11-02 18:21:55', '2024-11-02 18:21:55'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2024-11-02 18:21:55', '2024-11-02 18:21:55'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2024-11-02 18:21:55', '2024-11-02 18:21:55'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2024-11-02 18:21:55', '2024-11-02 18:21:55'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2024-11-02 18:21:55', '2024-11-02 18:21:55'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2024-11-02 18:21:55', '2024-11-02 18:21:55'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2024-11-02 18:21:55', '2024-11-02 18:21:55'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2024-11-02 18:21:55', '2024-11-02 18:21:55'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2024-11-02 18:21:55', '2024-11-02 18:21:55'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2024-11-02 18:21:55', '2024-11-02 18:21:55'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2024-11-02 18:21:55', '2024-11-02 18:21:55'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2024-11-02 18:21:55', '2024-11-02 18:21:55'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2024-11-02 18:21:55', '2024-11-02 18:21:55');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `settings` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$12$cz7viCvl1Iaow3xLdRDkYew6O5hOn8I..XXA8OoceQzth3nX/DyYq', 'pXlftjfl4JNQJCf1zUsL5zlbAMwDO0pn8GRyX6tuao8x7kGSmgHXkdaaT3Sx', NULL, '2024-11-02 18:21:55', '2024-11-02 18:21:55');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `about_sections`
--
ALTER TABLE `about_sections`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Tablo için indeksler `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Tablo için indeksler `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Tablo için indeksler `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Tablo için indeksler `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Tablo için indeksler `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Tablo için indeksler `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `happy_customers`
--
ALTER TABLE `happy_customers`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `hero_sections`
--
ALTER TABLE `hero_sections`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Tablo için indeksler `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Tablo için indeksler `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Tablo için indeksler `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Tablo için indeksler `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Tablo için indeksler `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Tablo için indeksler `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Tablo için indeksler `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Tablo için indeksler `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Tablo için indeksler `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Tablo için indeksler `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Tablo için indeksler `team_members`
--
ALTER TABLE `team_members`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Tablo için indeksler `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `about_sections`
--
ALTER TABLE `about_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- Tablo için AUTO_INCREMENT değeri `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Tablo için AUTO_INCREMENT değeri `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `features`
--
ALTER TABLE `features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `happy_customers`
--
ALTER TABLE `happy_customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `hero_sections`
--
ALTER TABLE `hero_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Tablo için AUTO_INCREMENT değeri `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- Tablo için AUTO_INCREMENT değeri `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- Tablo için AUTO_INCREMENT değeri `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Tablo için AUTO_INCREMENT değeri `team_members`
--
ALTER TABLE `team_members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Tablo kısıtlamaları `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
