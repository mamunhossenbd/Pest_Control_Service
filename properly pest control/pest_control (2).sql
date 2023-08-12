-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2023 at 07:34 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pest_control`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `blpoint` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `title`, `description`, `photo`, `year`, `blpoint`, `created_at`, `updated_at`) VALUES
(5, 'We Provide Best Pest Control Services', 'Properly Pest Control is one of the most secured and specialized companies for pest control services in Dhaka, Bangladesh. We started the Journey in 2012 and almost we have provided our pest control services to more than 5000 customers. All of our clients are very happy with our services. We assure satisfaction guaranteed service. We have skilled staff and they are trained weekly by our company. This is the reason, why we can provide the best services. Always, we try to follow the modern scientific method. Customer Satisfaction is our main goal. Properly Pest Control is Govt. an approved Pest Control company. We offer Cockroach Control service, Termite control service, Bed bug control service, Rodent Control Service, Mosquito control service, Factory pest control service, Commercial pest control service Residential pest control service & General pest control service.  You will always get professional pest control services from us.', '1690140129_01.jpg', '13', 'Well executed services.', '2023-07-23 13:22:10', '2023-07-23 13:22:10');

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `name`, `email`, `phone`, `service`, `created_at`, `updated_at`) VALUES
(2, 'Mamun', 'mamun@gmail.com', '01756182843', 'Residential Pest Control', '2023-07-18 10:14:04', '2023-07-18 10:14:04'),
(3, 'Alamin', 'alamin@gmail.com', '01790384330', 'Mosquito Control Services', '2023-07-21 14:32:45', '2023-07-21 14:32:45'),
(4, 'Apu', 'apu@gmail.com', '01624990933', 'Cockroach Control Services', '2023-07-26 09:59:43', '2023-07-26 09:59:43'),
(6, 'a', 'a@gmail.com', '41564', 'Cockroach Control Services', '2023-08-08 08:40:24', '2023-08-08 08:40:24'),
(7, 'b', 'b@gmail.com', '45646', 'Rodent Control Services', '2023-08-08 08:40:43', '2023-08-08 08:40:43'),
(8, 'c', 'c@gmail.com', '565', 'Termite Control Services', '2023-08-08 08:41:09', '2023-08-08 08:41:09'),
(9, 'd', 'd@gmail.con', '564562', 'Bedbugs Control Services', '2023-08-08 08:41:37', '2023-08-08 08:41:37'),
(10, 'e', 'e@gmail.com', '1646', 'Mosquito Control Services', '2023-08-08 08:42:05', '2023-08-08 08:42:05'),
(11, 'f', 'f@gmail.com', '32164', 'Ant Control Services', '2023-08-08 08:42:27', '2023-08-08 08:42:27'),
(12, 'g', 'g@gmail.com', '4566', 'Flies Control Services', '2023-08-08 08:42:55', '2023-08-08 08:42:55'),
(13, 'h', 'h@gmail.com', '5141', 'Lizard Control Services', '2023-08-08 08:43:28', '2023-08-08 08:43:28'),
(14, 'i', 'i@gmail.com', '269646', 'Spider Control Services', '2023-08-08 08:43:54', '2023-08-08 08:43:54'),
(15, 'j', 'j@gmail.com', '1315663', 'Residential Pest Control', '2023-08-08 08:44:24', '2023-08-08 08:44:24'),
(16, 'k', 'k@gmail.com', '4546', 'Commercial Pest Control', '2023-08-08 08:44:55', '2023-08-08 08:44:55');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `headline` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `headline`, `description`, `photo`, `created_at`, `updated_at`) VALUES
(2, 'Protect Your Home Today', 'We Care About Your Pest Infestation', 'Low risk, non-toxic pesticides that is safe for kids and pets! We care about you, your family and also the environment.', '1690139003_slider-1.jpg', '2023-07-23 13:03:23', '2023-07-24 12:17:35');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `headline` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `name`, `date`, `headline`, `description`, `photo`, `created_at`, `updated_at`) VALUES
(4, 'admin', '2023-07-24', 'Residential Pest Control', 'Our residential pest control services are designed to safeguard your home and ensure the well-being of your family. We address a wide range of pests commonly found in residential areas, including ants, cockroaches, termites, rodents, bed bugs, and mosquitoes. With our tailored treatments and preventive measures, we eliminate pests, protect your property, and bring you peace of mind.', '1690206383_01.jpg', '2023-07-24 07:46:27', '2023-07-24 07:49:01'),
(5, 'admin', '2023-07-24', 'Commercial Pest Control', 'Properly Pest Control Services offers reliable and effective pest control solutions for commercial establishments in Dhaka. Whether you run a restaurant, hotel, hospital, garments factory, or any other business, we understand the unique challenges you face. Our commercial pest control services focus on preventing and managing pests to maintain a hygienic and pest-free environment for your employees, customers, and visitors.', '1690206633_02.jpg', '2023-07-24 07:50:33', '2023-07-24 07:50:33'),
(6, 'admin', '2023-07-24', 'Bed Bug Treatment', 'Bed bugs can be a nightmare, disrupting your sleep and causing discomfort. Our bed bug treatment services utilize specialized techniques to eliminate these stubborn pests. We conduct thorough inspections, treat affected areas with safe and effective methods, and provide guidance on preventive measures to ensure a bed bug-free environment.', '1690206740_03.jpg', '2023-07-24 07:52:20', '2023-07-24 07:52:20');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `name`, `designation`, `address`, `photo`, `created_at`, `updated_at`) VALUES
(2, 'gbf', 'fcbfx', 'bnfcb', '1690148915_client-1.png', '2023-07-23 15:48:35', '2023-07-23 15:48:35'),
(3, 'uhgvj', 'yhfh', 'hynfgh', '1690148973_client-2.png', '2023-07-23 15:49:33', '2023-07-23 15:49:33'),
(4, 'thfd', 'fdgthbfghb', 'fgfdgb', '1690148999_client-3.png', '2023-07-23 15:49:59', '2023-07-23 15:49:59'),
(5, 'rthydr', 'fhfgh', 'hfbgb', '1690149016_client-4.png', '2023-07-23 15:50:16', '2023-07-23 15:50:16'),
(6, 'fhcncfg', 'hcnfc', 'cncf', '1690149038_client-5.png', '2023-07-23 15:50:38', '2023-07-23 15:50:38'),
(7, 'fgbf', 'fhbnfg', 'fgbfcxb', '1690149056_client-6.png', '2023-07-23 15:50:56', '2023-07-23 15:50:56'),
(8, 'hgncg', 'hgngch', 'gchvncgvhn', '1690149078_client-7.png', '2023-07-23 15:51:18', '2023-07-23 15:51:18'),
(9, 'dgdg', 'fgbhf', 'gfbnfdbhg', '1690149100_client-8.png', '2023-07-23 15:51:40', '2023-07-23 15:51:40'),
(10, 'hfnyc', 'hgbncf', 'hg ncv', '1690149117_client-9.png', '2023-07-23 15:51:57', '2023-07-23 15:51:57'),
(11, 'vhgbncv', 'ghcngch', 'hgvcncg', '1690149133_client-10.png', '2023-07-23 15:52:13', '2023-07-23 15:52:13'),
(12, 'fdghbfd', 'fgbhfg', 'fghbff', '1690149153_client-11.png', '2023-07-23 15:52:33', '2023-07-23 15:52:33'),
(13, 'fdghbf', 'fgbdxf', 'fdxgbfdx', '1690149169_client-12.png', '2023-07-23 15:52:49', '2023-07-23 15:52:49');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(2, 'Alamin', 'alamin@gmail.com', 'service', 'i need a pest control service', '2023-07-21 14:31:23', '2023-07-21 14:31:23'),
(3, 'MD Nabi', 'nabi@gmail.com', 'pest service', 'i need pest control service.', '2023-07-26 10:01:29', '2023-07-26 10:01:29'),
(4, 'Nasim', 'nasim@gmail.com', 'pest control', 'i need pest control service.', '2023-08-04 16:51:07', '2023-08-04 16:51:07'),
(5, 'a', 'mamun@gmail.com', 'english', 'yuikyj', '2023-08-08 08:45:43', '2023-08-08 08:45:43'),
(6, 'Nesar Uddin', 'admin@gmail.com', 'bangla', 'kmjythm', '2023-08-08 08:45:52', '2023-08-08 08:45:52'),
(7, 'Tarequl Islam', 'rajamamun210@gmail.com', 'hgmtgm', 'mtnmthm', '2023-08-08 08:45:59', '2023-08-08 08:45:59'),
(8, 'aggs', 'bijoy@gmail.com', 'dsfvdsfvs', 'mgjhnm', '2023-08-08 08:46:08', '2023-08-08 08:46:08'),
(9, 'aggs', 'mamunbd@gmail.com', 'bangla', ',mhgmn', '2023-08-08 08:46:19', '2023-08-08 08:46:19'),
(25, 'Nesar Uddins', 'mamun210@gmail.com', 'gbnn', 'gmjhn', '2023-08-08 08:46:57', '2023-08-08 08:46:57'),
(32, 'Nesar', 'un@gmail.com', 'cvbdfg', 'vbnfvcf bxcf', '2023-08-08 08:47:36', '2023-08-08 08:47:36'),
(33, 'aggs', 'dmin@gmail.com', 'bangla', 'vgjmv', '2023-08-08 08:47:48', '2023-08-08 08:47:48');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `generals`
--

CREATE TABLE `generals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `map` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `generals`
--

INSERT INTO `generals` (`id`, `address`, `phone`, `email`, `map`, `photo`, `created_at`, `updated_at`) VALUES
(3, 'k-16/4 South Badda,gulshan Dhaka 1212', '01712129322', 'properlybd@gmail.com', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d14605.23561983525!2d90.41990250578043!3d23.77201190167905!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sbd!4v1690221168362!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', '1690194972_Properly Pest Control.png', '2023-07-24 02:29:10', '2023-08-02 06:20:11');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_07_16_064025_create_contacts_table', 2),
(7, '2023_07_16_123627_create_abouts_tablel', 3),
(8, '2023_07_16_131048_create_abouts_table', 4),
(9, '2023_07_16_195128_create_blogs_table', 5),
(10, '2023_07_18_125901_create_pests_table', 6),
(11, '2023_07_18_144804_create_appointments_table', 7),
(12, '2023_07_19_032103_create_services_table', 8),
(13, '2023_07_19_042053_create_projects_table', 8),
(14, '2023_07_19_051636_crate_teams_table', 8),
(15, '2023_07_19_071506_create_clients_table', 8),
(16, '2023_07_19_182348_create_testimonials_table', 9),
(17, '2023_07_19_193437_create_generals_table', 10),
(18, '2023_07_22_142619_create_banners_table', 11),
(19, '2023_08_02_150532_create_socials_table', 12);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pests`
--

CREATE TABLE `pests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pests`
--

INSERT INTO `pests` (`id`, `name`, `description`, `photo`, `created_at`, `updated_at`) VALUES
(4, 'COCKROACH', 'Effective cockroach control services: Say goodbye to roach infestations. We eliminate them swiftly and ensure a pest-free home. Contact us now!', '1690145285_pest-1.jpg', '2023-07-23 14:48:06', '2023-07-23 14:48:06'),
(5, 'FLY', 'Efficient fly control services: Get rid of flies and enjoy a fly-free environment. Call us now for quick and reliable solutions.', '1690145664_pest-2.jpg', '2023-07-23 14:54:24', '2023-07-23 14:54:24'),
(6, 'YELLOW JACKET', 'Efficient yellow jacket control services: Get rid of flies and enjoy a yellow jacket-free environment. Call us now for quick and reliable solutions.', '1690145926_pest-3.jpg', '2023-07-23 14:58:47', '2023-07-23 14:58:47'),
(7, 'CARPENTER BEES', 'Expert bee control services: Safely remove bees from your property. Trust our professionals for effective and humane bee control solutions. Call us today!', '1690146084_pest-4.jpg', '2023-07-23 15:01:24', '2023-07-23 15:01:24'),
(8, 'MOSQUITO', 'Effective mosquito control services: Get rid of mosquitoes and enjoy a mosquito-free environment. Call us now for quick and reliable solutions.', '1690146154_pest-5.jpg', '2023-07-23 15:02:34', '2023-07-23 15:02:34'),
(9, 'TERMITE', 'Professional termite control services: Eliminate termites and protect your property. Trust our expertise for effective and long-lasting solutions. Call now!', '1690146227_pest-6.jpg', '2023-07-23 15:03:47', '2023-07-23 15:03:47'),
(10, 'ANT', 'Reliable ant control services: Say goodbye to ant invasions. We eliminate them effectively and keep your home ant-free. Call us now!', '1690146294_pest-7.jpg', '2023-07-23 15:04:54', '2023-07-23 15:04:54'),
(11, 'RODENT', 'Effective rodent control services: Say goodbye to rodents. We eliminate them swiftly and ensure a pest-free home. Call us now for reliable solutions!', '1690146354_pest-8.jpg', '2023-07-23 15:05:54', '2023-07-23 15:05:54'),
(12, 'BED BUG', 'Efficient bed bug control services: Say goodbye to bed bugs. We eliminate them thoroughly for a peaceful and comfortable sleep. Call us now!', '1690146604_pest-10.jpg', '2023-07-23 15:10:04', '2023-07-23 15:10:04');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `headline` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `headline`, `description`, `photo`, `created_at`, `updated_at`) VALUES
(2, 'Pest Control', 'Regular Pest Control', '1690149630_01.jpg', '2023-07-23 16:00:30', '2023-07-23 16:00:30'),
(3, 'Pest Control', 'Regular Pest Control', '1690149730_02.jpg', '2023-07-23 16:02:10', '2023-07-23 16:02:10'),
(4, 'Pest Control', 'Regular Pest Control', '1690149777_03.jpg', '2023-07-23 16:02:57', '2023-07-23 16:02:57'),
(5, 'Pest Control', 'Regular Pest Control', '1690149814_04.jpg', '2023-07-23 16:03:35', '2023-07-23 16:03:35'),
(6, 'Pest Control', 'Regular Pest Control', '1690149878_06.jpg', '2023-07-23 16:04:40', '2023-07-23 16:04:40'),
(7, 'Pest Control', 'Regular Pest Control', '1690150025_05.jpg', '2023-07-23 16:07:07', '2023-07-23 16:07:07');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `headline` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `headline`, `description`, `photo`, `created_at`, `updated_at`) VALUES
(2, 'Residential Pest Control', 'Our residential pest control services are designed to safeguard your home and ensure the well-being of your family. We address a wide range of pests commonly found in residential areas, including ants, cockroaches, termites, rodents, bed bugs, and mosquitoes. With our tailored treatments and preventive measures, we eliminate pests, protect your property, and bring you peace of mind.', '1690196394_01.jpg', '2023-07-24 04:59:54', '2023-07-24 04:59:54'),
(3, 'Commercial Pest Control', 'Properly Pest Control Services offers reliable and effective pest control solutions for commercial establishments in Dhaka. Whether you run a restaurant, hotel, hospital, garments factory, or any other business, we understand the unique challenges you face. Our commercial pest control services focus on preventing and managing pests to maintain a hygienic and pest-free environment for your employees, customers, and visitors.', '1690196626_02.jpg', '2023-07-24 05:03:47', '2023-07-24 05:03:47'),
(4, 'Industrial Pest Control', 'Industrial pest control services are essential for businesses in a variety of industries, including food processing and storage, manufacturing, and healthcare. These industries are particularly susceptible to pest problems, and a single infestation can cause significant damage to equipment, inventory, and property, as well as pose health risks to employees and customers.', '1690197029_03.jpg', '2023-07-24 05:10:30', '2023-07-24 05:10:30'),
(5, 'Exclusive Pest Control', 'Develop a tailored pest management plan specifically designed for the company\'s needs. This plan should take into account the type of pests commonly found in the facility, the layout of the building, and any specific requirements or concerns of the company.', '1690197516_04.jpg', '2023-07-24 05:18:36', '2023-07-24 05:18:36'),
(6, 'Pest Prevention', 'Conduct thorough inspections of the property to identify potential entry points, sources of food and water, and conditions that may attract pests. This helps in developing a targeted prevention plan.', '1690197825_05.jpg', '2023-07-24 05:23:45', '2023-07-24 05:23:45'),
(7, 'Regular Pest Control', 'Establish a regular schedule for pest control visits based on the specific needs of the property and the pest pressures in the area. This ensures that treatments are conducted at appropriate intervals to prevent infestations.', '1690198009_06.jpg', '2023-07-24 05:26:49', '2023-07-24 05:26:49');

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `facebook` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `linkedin` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `whatsapp` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socials`
--

INSERT INTO `socials` (`id`, `facebook`, `twitter`, `instagram`, `linkedin`, `whatsapp`, `youtube`, `created_at`, `updated_at`) VALUES
(2, 'https://www.facebook.com', 'https://www.twitter.com', 'https://www.instagram.com', 'https://www.linkedin.com', 'https://www.whatsapp.com', 'https://www.youtube.com', '2023-08-02 10:42:44', '2023-08-02 15:48:36');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`, `designation`, `photo`, `created_at`, `updated_at`) VALUES
(2, 'Malissa Fierro', 'Senior Staff', '1690149300_01.jpg', '2023-07-23 15:55:00', '2023-07-23 15:55:00'),
(3, 'Arron Rodri', 'Senior Staff', '1690149345_02.jpg', '2023-07-23 15:55:45', '2023-07-23 15:55:45'),
(4, 'Chad Smith', 'Senior Staff', '1690149379_03.jpg', '2023-07-23 15:56:19', '2023-07-23 15:56:19'),
(5, 'Tony Pinto', 'Senior Staff', '1690149409_04.jpg', '2023-07-23 15:56:49', '2023-07-23 15:56:49');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `designation`, `comment`, `photo`, `created_at`, `updated_at`) VALUES
(5, 'Mamun Hossen', 'Founder & CEO', 'There are many variations of passages available but the majority have suffered                                 alteration in some form by injected.', '1690222893_02.jpg', '2023-07-24 12:21:34', '2023-07-24 12:21:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$WIO3zx/7IDUtA7T5DgODEurCN0ojg9FbogF44QfJLERMBhPjGqEQi', NULL, '2023-07-10 06:32:44', '2023-07-10 06:32:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contacts_email_unique` (`email`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `generals`
--
ALTER TABLE `generals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `pests`
--
ALTER TABLE `pests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `generals`
--
ALTER TABLE `generals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pests`
--
ALTER TABLE `pests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `socials`
--
ALTER TABLE `socials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
