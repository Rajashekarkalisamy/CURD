-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.10-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             10.3.0.5771
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for db_curd
CREATE DATABASE IF NOT EXISTS `db_curd` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `db_curd`;

-- Dumping structure for table db_curd.curd
CREATE TABLE IF NOT EXISTS `curd` (
  `curd_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(8,2) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`curd_id`),
  UNIQUE KEY `curd_sku_unique` (`sku`) USING HASH
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_curd.curd: 4 rows
DELETE FROM `curd`;
/*!40000 ALTER TABLE `curd` DISABLE KEYS */;
INSERT INTO `curd` (`curd_id`, `name`, `sku`, `short_description`, `description`, `price`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Raja', '123456', 'Test', '123', 1000.00, 0, NULL, '2021-07-26 09:22:55', '2021-07-26 09:22:55'),
	(3, 'Raja', '1234567', 'Test', NULL, 100.00, 0, NULL, '2021-07-26 09:44:41', '2021-07-26 09:44:41'),
	(4, 'Test', '12345678', 'Test', '12', 123.00, 1, NULL, '2021-07-26 10:33:29', '2021-07-26 10:33:29'),
	(5, 'Raja', '123', 'Test', NULL, 100.00, 0, NULL, '2021-07-26 10:42:58', '2021-07-26 10:42:58');
/*!40000 ALTER TABLE `curd` ENABLE KEYS */;

-- Dumping structure for table db_curd.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_curd.migrations: 1 rows
DELETE FROM `migrations`;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2021_07_26_082628_create_curd_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
