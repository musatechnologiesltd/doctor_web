-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2023 at 12:40 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doctor_web`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `staff_id` int(20) DEFAULT NULL,
  `therapist_id` int(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `staff_id`, `therapist_id`, `name`, `position`, `email`, `phone`, `username`, `email_verified_at`, `password`, `image`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'superadmin', NULL, 'superadmin@gmail.com', NULL, 'superadmin', NULL, '$2y$10$grm3z53L5a25UmMn2IN3k.rCggUR1xCXYKE6eO6yg6M6fN4RAQC8C', 'user-photo/1665758734.png', '1', NULL, '2021-03-24 05:29:53', '2023-03-05 00:11:11'),
(2, NULL, NULL, 'admin', NULL, 'admin@gmail.com', '666', 'admin', NULL, '$2y$10$E.AdnAg2QNhGUkTxEGNlSOpiczjg9s4PhCd/zKR/PKLTY.rPbo4g2', NULL, '1', NULL, '2021-03-24 06:14:00', '2022-10-28 05:15:49'),
(3, NULL, NULL, 'waiter', NULL, 'w@gmail.com', '12123', 'waiter', NULL, '$2y$10$f/vpvB5T88oGrPsrylXk2.khVIDr.P3K2BYCchZRVRrMWUupClstm', NULL, '1', NULL, '2023-01-06 23:51:06', '2023-01-06 23:51:06'),
(4, NULL, NULL, 'Kamruzzaman kajol', NULL, 'kk@gmail.com', '01646735100', 'kamruzzaman-kajol', NULL, '$2y$10$/uUyrXAyK6IRT31zs5ybzOpzRHvmuBj0RacLR3C54EdADtJS4z2lm', NULL, '1', NULL, '2023-03-04 23:53:56', '2023-03-04 23:53:56');

-- --------------------------------------------------------

--
-- Table structure for table `diet_charts`
--

CREATE TABLE `diet_charts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `diet_charts`
--

INSERT INTO `diet_charts` (`id`, `name`, `file`, `created_at`, `updated_at`) VALUES
(2, 'hhr', 'public/uploads/banner2.png', '2023-03-21 01:50:28', '2023-03-21 02:01:24');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_or_mobile_number` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nid_number` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `years_of_experience` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doctor_certificate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `admin_id`, `name`, `address`, `gender`, `email_address`, `phone_or_mobile_number`, `nid_number`, `nationality`, `years_of_experience`, `doctor_certificate`, `created_at`, `updated_at`) VALUES
(4, 1, 'Kamruzzaman kajol', 'Rajshahi', 'Male', 'kkajol428@gmail.com', '01646735100', '5555555555', 'bd', '5', 'public/uploads/banner1.png', '2023-03-20 05:17:23', '2023-03-20 05:17:23'),
(5, 1, 'Kamruzzaman kajol', 'Rajshahi', 'Male', 'kkajol428@gmail.com', '01646735100', '5555555555', 'bd', '5', 'public/uploads/banner1.png', '2023-03-21 00:20:47', '2023-03-21 00:20:47');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_appointments`
--

CREATE TABLE `doctor_appointments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doctor_id` bigint(20) UNSIGNED NOT NULL,
  `appointment_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doctor_consult_dates`
--

CREATE TABLE `doctor_consult_dates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `doctor_id` bigint(20) UNSIGNED NOT NULL,
  `day` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctor_consult_dates`
--

INSERT INTO `doctor_consult_dates` (`id`, `doctor_id`, `day`, `start_time`, `end_time`, `created_at`, `updated_at`) VALUES
(3, 5, 'Saturday', '18:15', '17:18', '2023-03-21 00:20:47', '2023-03-21 00:20:47'),
(4, 5, 'Sunday', '19:19', '09:21', '2023-03-21 00:20:47', '2023-03-21 00:20:47'),
(5, 4, 'Saturday', '18:15', '17:18', '2023-03-21 00:21:36', '2023-03-21 00:21:36'),
(6, 4, 'Sunday', '19:19', '09:21', '2023-03-21 00:21:36', '2023-03-21 00:21:36');

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
-- Table structure for table `health_supplements`
--

CREATE TABLE `health_supplements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `health_supplements`
--

INSERT INTO `health_supplements` (`id`, `name`, `amount`, `created_at`, `updated_at`) VALUES
(2, 'Bosun', '1080', '2023-03-21 03:00:24', '2023-03-21 03:00:24');

-- --------------------------------------------------------

--
-- Table structure for table `medicines`
--

CREATE TABLE `medicines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `medicines`
--

INSERT INTO `medicines` (`id`, `name`, `amount`, `created_at`, `updated_at`) VALUES
(2, 'ADMINISTRATION', '400', '2023-03-21 02:47:27', '2023-03-21 02:47:27');

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
(9, '2014_10_12_000000_create_users_table', 1),
(10, '2014_10_12_100000_create_password_resets_table', 1),
(11, '2019_08_19_000000_create_failed_jobs_table', 1),
(12, '2021_03_18_095906_create_permission_tables', 1),
(13, '2021_03_24_112406_create_admins_table', 2),
(14, '2022_02_07_091424_create_system_information_table', 2),
(15, '2019_12_14_000001_create_personal_access_tokens_table', 3),
(16, '2022_02_19_095110_create_permission_tables', 4),
(17, '2022_02_19_102354_create_admins_table', 5),
(18, '2022_10_15_105118_create_taxes_table', 5),
(19, '2022_10_15_105149_create_currencies_table', 5),
(20, '2022_10_15_105224_create_generals_table', 5),
(21, '2022_10_15_105308_create_invoicesettings_table', 5),
(22, '2022_10_15_105347_create_creditnotes_table', 5),
(23, '2022_10_15_105413_create_estimates_table', 5),
(24, '2022_10_17_141537_create_vendors_table', 6),
(25, '2022_10_17_141604_create_clients_table', 6),
(26, '2022_10_23_175519_create_brands_table', 7),
(27, '2022_10_23_175538_create_categories_table', 7),
(28, '2022_10_23_175612_create_subcategories_table', 7),
(29, '2022_10_23_175634_create_units_table', 7),
(30, '2022_10_23_175835_create_warehouses_table', 7),
(31, '2022_10_23_175948_create_products_table', 7),
(32, '2022_10_26_183747_create_sells_table', 8),
(33, '2022_10_26_184642_create_selldetails_table', 8),
(34, '2022_10_27_180531_create_purchases_table', 9),
(35, '2022_10_27_180549_create_purchasedetails_table', 9),
(36, '2022_10_27_223251_create_requisitions_table', 9),
(37, '2022_10_27_231141_create_rproducts_table', 10),
(38, '2023_01_05_105440_create_items_table', 11),
(39, '2023_01_05_105632_create_ingredients_table', 11),
(40, '2023_01_05_105723_create_tablelists_table', 11),
(41, '2023_01_05_105838_create_orders_table', 11),
(42, '2023_01_05_110254_create_menulists_table', 11),
(43, '2023_01_05_110315_create_menudetails_table', 11),
(44, '2023_01_10_045836_create_qrcodelists_table', 12),
(45, '2023_01_10_075200_create_orderdetails_table', 13),
(46, '2023_01_17_045638_create_pbanners_table', 14),
(47, '2023_01_25_052115_create_companybanners_table', 15),
(48, '2023_03_19_090028_create_walk_by_patients_table', 16),
(49, '2023_03_19_090121_create_patients_table', 17),
(50, '2023_03_19_090224_create_patient_admits_table', 17),
(51, '2023_03_19_090405_create_walk_by_patient_services_table', 17),
(52, '2023_03_19_090503_create_patient_files_table', 17),
(53, '2023_03_19_090620_create_doctors_table', 18),
(54, '2023_03_19_090833_create_doctor_appointments_table', 18),
(55, '2023_03_19_091020_create_therapy_appointments_table', 19),
(56, '2023_03_19_091344_create_therapy_appointment_details_table', 19),
(57, '2023_03_19_091427_create_therapy_appointment_date_and_times_table', 19),
(58, '2023_03_19_091648_create_doctor_consult_dates_table', 19),
(59, '2023_03_19_091805_create_diet_charts_table', 19),
(60, '2023_03_19_091946_create_medicines_table', 19),
(61, '2023_03_19_092045_create_health_supplements_table', 19),
(62, '2023_03_19_092651_create_therapy_ingredients_table', 19),
(63, '2023_03_19_093241_create_therapy_lists_table', 19),
(64, '2023_03_19_093345_create_staff_table', 19),
(65, '2023_03_19_093434_create_rewards_table', 19),
(66, '2023_03_19_093542_create_therapists_table', 19),
(67, '2023_03_19_112836_create_therapy_details_table', 19);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\Admin', 1),
(1, 'App\\User', 1),
(3, 'App\\Models\\Admin', 2),
(3, 'App\\Models\\Admin', 3),
(3, 'App\\Models\\Admin', 4);

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
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `refer_from` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_or_mobile_number` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nid_number` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `how_did_you_come_to_know_about_this_center` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `do_you_have_earlier_experience_of_ayurveda_please_give_details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `do_you_have_symptoms_in_past_one_weak` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `covid_test_result` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patient_admits`
--

CREATE TABLE `patient_admits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) UNSIGNED NOT NULL,
  `patient_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doctor_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_or_mobile_number` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nid_number` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_of_accommodation` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `recommended_doctor_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `treatment_package_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `routine` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patient_files`
--

CREATE TABLE `patient_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_url` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `group_name`, `app_url`, `created_at`, `updated_at`) VALUES
(1, 'dashboard.view', 'admin', 'dashboard', NULL, '2021-03-24 02:04:15', '2021-03-24 02:04:15'),
(2, 'dashboard.edit', 'admin', 'dashboard', NULL, '2021-03-24 02:04:15', '2021-03-24 02:04:15'),
(8, 'admin.create', 'admin', 'admin', NULL, '2021-03-24 02:04:16', '2021-03-24 02:04:16'),
(9, 'admin.view', 'admin', 'admin', NULL, '2021-03-24 02:04:16', '2021-03-24 02:04:16'),
(10, 'admin.edit', 'admin', 'admin', NULL, '2021-03-24 02:04:16', '2021-03-24 02:04:16'),
(11, 'admin.delete', 'admin', 'admin', NULL, '2021-03-24 02:04:16', '2021-03-24 02:04:16'),
(12, 'admin.approve', 'admin', 'admin', NULL, '2021-03-24 02:04:16', '2021-03-24 02:04:16'),
(13, 'role.create', 'admin', 'role', NULL, '2021-03-24 02:04:16', '2021-03-24 02:04:16'),
(14, 'role.view', 'admin', 'role', NULL, '2021-03-24 02:04:16', '2021-03-24 02:04:16'),
(15, 'role.edit', 'admin', 'role', NULL, '2021-03-24 02:04:17', '2021-03-24 02:04:17'),
(16, 'role.delete', 'admin', 'role', NULL, '2021-03-24 02:04:17', '2021-03-24 02:04:17'),
(17, 'role.approve', 'admin', 'role', NULL, '2021-03-24 02:04:17', '2021-03-24 02:04:17'),
(18, 'profile.view', 'admin', 'profile', NULL, '2021-03-24 02:04:17', '2021-03-24 02:04:17'),
(19, 'profile.edit', 'admin', 'profile', NULL, '2021-03-24 02:04:17', '2021-03-24 02:04:17'),
(20, 'permission.create', 'admin', 'permission', NULL, NULL, NULL),
(21, 'permission.view', 'admin', 'permission', NULL, NULL, NULL),
(22, 'permission.edit', 'admin', 'permission', NULL, NULL, NULL),
(23, 'permission.delete', 'admin', 'permission', NULL, NULL, NULL),
(25, 'system_information_add', 'admin', 'system_information', 'admin/system_information_add', NULL, NULL),
(26, 'system_information_view', 'admin', 'system_information', 'admin/system_information_view', NULL, NULL),
(27, 'system_information_delete', 'admin', 'system_information', 'admin/system_information_delete', NULL, NULL),
(28, 'system_information_update', 'admin', 'system_information', 'admin/system_information_update', NULL, NULL),
(164, 'WalkByPatientAdd', 'admin', 'WalkByPatient', 'admin/WalkByPatientAdd', NULL, NULL),
(165, 'WalkByPatientView', 'admin', 'WalkByPatient', 'admin/WalkByPatientView', NULL, NULL),
(166, 'WalkByPatientDelete', 'admin', 'WalkByPatient', 'admin/WalkByPatientDelete', NULL, NULL),
(167, 'WalkByPatientUpdate', 'admin', 'WalkByPatient', 'admin/WalkByPatientUpdate', NULL, NULL),
(168, 'PatientAdd', 'admin', 'Patient', 'admin/PatientAdd', NULL, NULL),
(169, 'PatientView', 'admin', 'Patient', 'admin/PatientView', NULL, NULL),
(170, 'PatientDelete', 'admin', 'Patient', 'admin/PatientDelete', NULL, NULL),
(171, 'PatientUpdate', 'admin', 'Patient', 'admin/PatientUpdate', NULL, NULL),
(172, 'PatientAdmitAdd', 'admin', 'PatientAdmit', 'admin/PatientAdmitAdd', NULL, NULL),
(173, 'PatientAdmitView', 'admin', 'PatientAdmit', 'admin/PatientAdmitView', NULL, NULL),
(174, 'PatientAdmitDelete', 'admin', 'PatientAdmit', 'admin/PatientAdmitDelete', NULL, NULL),
(175, 'PatientAdmitUpdate', 'admin', 'PatientAdmit', 'admin/PatientAdmitUpdate', NULL, NULL),
(176, 'doctorAdd', 'admin', 'doctor', 'admin/doctorAdd', NULL, NULL),
(177, 'doctorView', 'admin', 'doctor', 'admin/doctorView', NULL, NULL),
(178, 'doctorDelete', 'admin', 'doctor', 'admin/doctorDelete', NULL, NULL),
(179, 'doctorUpdate', 'admin', 'doctor', 'admin/doctorUpdate', NULL, NULL),
(180, 'dietChartsAdd', 'admin', 'dietCharts', 'admin/dietChartsAdd', NULL, NULL),
(181, 'dietChartsView', 'admin', 'dietCharts', 'admin/dietChartsView', NULL, NULL),
(182, 'dietChartsUpdate', 'admin', 'dietCharts', 'admin/dietChartsUpdate', NULL, NULL),
(183, 'dietChartsDelete', 'admin', 'dietCharts', 'admin/dietChartsDelete', NULL, NULL),
(184, 'medicineListsAdd', 'admin', 'medicineLists', 'admin/medicineListsAdd', NULL, NULL),
(185, 'medicineListsView', 'admin', 'medicineLists', 'admin/medicineListsView', NULL, NULL),
(186, 'medicineListsDelete', 'admin', 'medicineLists', 'admin/medicineListsDelete', NULL, NULL),
(187, 'medicineListsUpdate', 'admin', 'medicineLists', 'admin/medicineListsUpdate', NULL, NULL),
(188, 'healthSupplementsAdd', 'admin', 'healthSupplements', 'admin/healthSupplementsAdd', NULL, NULL),
(189, 'healthSupplementsView', 'admin', 'healthSupplements', 'admin/healthSupplementsView', NULL, NULL),
(190, 'healthSupplementsDelete', 'admin', 'healthSupplements', 'admin/healthSupplementsDelete', NULL, NULL),
(191, 'healthSupplementsUpdate', 'admin', 'healthSupplements', 'admin/healthSupplementsUpdate', NULL, NULL),
(192, 'therapyListsAdd', 'admin', 'therapyLists', 'admin/therapyListsAdd', NULL, NULL),
(193, 'therapyListsView', 'admin', 'therapyLists', 'admin/therapyListsView', NULL, NULL),
(194, 'therapyListsDelete', 'admin', 'therapyLists', 'admin/therapyListsDelete', NULL, NULL),
(195, 'therapyListsUpdate', 'admin', 'therapyLists', 'admin/therapyListsUpdate', NULL, NULL),
(196, 'therapyIngredientsAdd', 'admin', 'therapyIngredients', 'admin/therapyIngredientsAdd', NULL, NULL),
(197, 'therapyIngredientsView', 'admin', 'therapyIngredients', 'admin/therapyIngredientsView', NULL, NULL),
(198, 'therapyIngredientsDelete', 'admin', 'therapyIngredients', 'admin/therapyIngredientsDelete', NULL, NULL),
(199, 'therapyIngredientsUpdate', 'admin', 'therapyIngredients', 'admin/therapyIngredientsUpdate', NULL, NULL),
(200, 'staffAdd', 'admin', 'staff', 'admin/staffAdd', NULL, NULL),
(201, 'staffView', 'admin', 'staff', 'admin/staffView', NULL, NULL),
(202, 'staffUpdate', 'admin', 'staff', 'admin/staffUpdate', NULL, NULL),
(203, 'staffDelete', 'admin', 'staff', 'admin/staffDelete', NULL, NULL),
(204, 'rewardAdd', 'admin', 'reward', 'admin/rewardAdd', NULL, NULL),
(205, 'rewardView', 'admin', 'reward', 'admin/rewardView', NULL, NULL),
(206, 'rewardUpdate', 'admin', 'reward', 'admin/rewardUpdate', NULL, NULL),
(207, 'rewardDelete', 'admin', 'reward', 'admin/rewardDelete', NULL, NULL),
(208, 'therapistAdd', 'admin', 'therapist', 'admin/therapistAdd', NULL, NULL),
(209, 'therapistView', 'admin', 'therapist', 'admin/therapistView', NULL, NULL),
(210, 'therapistUpdate', 'admin', 'therapist', 'admin/therapistUpdate', NULL, NULL),
(211, 'therapistDelete', 'admin', 'therapist', 'admin/therapistDelete', NULL, NULL);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rewards`
--

CREATE TABLE `rewards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reward_for` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `point` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `in_exchange` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', 'admin', '2021-03-24 02:04:14', '2021-03-24 02:04:14'),
(2, 'therapist', 'admin', '2021-03-24 02:04:14', '2023-03-21 05:11:13'),
(3, 'staff', 'admin', '2021-03-24 02:04:14', '2023-03-21 05:10:06');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(2, 3),
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
(18, 2),
(18, 3),
(19, 1),
(19, 2),
(19, 3),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(164, 1),
(165, 1),
(166, 1),
(167, 1),
(168, 1),
(169, 1),
(170, 1),
(171, 1),
(172, 1),
(173, 1),
(174, 1),
(175, 1),
(176, 1),
(177, 1),
(178, 1),
(179, 1),
(180, 1),
(181, 1),
(182, 1),
(183, 1),
(184, 1),
(185, 1),
(186, 1),
(187, 1),
(188, 1),
(189, 1),
(190, 1),
(191, 1),
(192, 1),
(193, 1),
(194, 1),
(195, 1),
(196, 1),
(197, 1),
(198, 1),
(199, 1),
(200, 1),
(201, 1),
(202, 1),
(203, 1),
(204, 1),
(205, 1),
(206, 1),
(207, 1),
(208, 1),
(209, 1),
(210, 1),
(211, 1);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_or_mobile_number` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `nid_number` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `years_of_experience` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_information`
--

CREATE TABLE `system_information` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `System_Name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_information`
--

INSERT INTO `system_information` (`id`, `logo`, `icon`, `System_Name`, `Phone`, `Email`, `Address`, `created_at`, `updated_at`) VALUES
(1, 'public/uploads/1679294912.png', 'public/uploads/1679294912.ico', 'Ayurveda', '777', 'a@gmail.com', 'Dhaka', '2022-02-07 04:03:26', '2023-03-20 00:48:32');

-- --------------------------------------------------------

--
-- Table structure for table `therapists`
--

CREATE TABLE `therapists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_or_mobile_number` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `nid_number` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `years_of_experience` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `therapy_appointments`
--

CREATE TABLE `therapy_appointments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `therapy_appointment_date_and_times`
--

CREATE TABLE `therapy_appointment_date_and_times` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `therapy_appointment_id` bigint(20) UNSIGNED NOT NULL,
  `therapist` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `therapy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `therapy_appointment_details`
--

CREATE TABLE `therapy_appointment_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `therapy_appointment_id` bigint(20) UNSIGNED NOT NULL,
  `therapy_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `therapy_details`
--

CREATE TABLE `therapy_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `therapy_list_id` bigint(20) UNSIGNED NOT NULL,
  `therapy_ingredient_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `therapy_details`
--

INSERT INTO `therapy_details` (`id`, `therapy_list_id`, `therapy_ingredient_id`, `quantity`, `unit`, `created_at`, `updated_at`) VALUES
(3, 1, 2, '3', 'gram', '2023-03-21 04:26:33', '2023-03-21 04:26:33'),
(4, 1, 1, '65', 'liter', '2023-03-21 04:26:33', '2023-03-21 04:26:33');

-- --------------------------------------------------------

--
-- Table structure for table `therapy_ingredients`
--

CREATE TABLE `therapy_ingredients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `therapy_ingredients`
--

INSERT INTO `therapy_ingredients` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'trtt', '2023-03-21 03:26:44', '2023-03-21 03:26:44'),
(2, 'Bosun', '2023-03-21 03:26:52', '2023-03-21 03:26:52');

-- --------------------------------------------------------

--
-- Table structure for table `therapy_lists`
--

CREATE TABLE `therapy_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `therapy_lists`
--

INSERT INTO `therapy_lists` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'kajol', '2023-03-21 03:58:27', '2023-03-21 03:58:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_email_verified` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `address`, `image`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_email_verified`) VALUES
(13, 'k_new', '01646735100', NULL, NULL, 'kajolkamruzzaman.cse@gmail.com', NULL, '$2y$10$EoUB6e9kq92ktYkkE2eTLu5qv4mkNhHcj42a97zQdoWB/pJuidspm', NULL, '2023-03-04 02:15:40', '2023-03-04 02:16:11', 1),
(23, 'Nir Rony Hossain', '017383990888', NULL, NULL, 'ronyhossain1920@gmail.com', NULL, '$2y$10$HS4JUlz3hFCUtkmzdwxPFOtyoJgwDBu9VMZOvablGYXRQ2qE2LM36', NULL, '2023-03-12 05:16:52', '2023-03-12 05:56:37', 1),
(24, 'Kamruzzaman kajol', '01646735100', NULL, NULL, 'kkajol428@gmail.com', NULL, '$2y$10$PnnoE9frIbaFD6TR4a.zGeR/d8OOSpSsQZFi2NsyM8npyP3x6xC7C', NULL, '2023-03-12 10:36:04', '2023-03-12 10:36:37', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users_verify`
--

CREATE TABLE `users_verify` (
  `user_id` int(11) NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_verify`
--

INSERT INTO `users_verify` (`user_id`, `token`, `created_at`, `updated_at`) VALUES
(1, 'EfqG6pUFQU', '2023-02-19 09:52:33', '2023-02-19 09:52:33'),
(2, 'hqfSIEDXjF', '2023-02-19 09:55:39', '2023-02-19 09:55:39'),
(3, 'glGVZiQPG0', '2023-02-19 10:00:03', '2023-02-19 10:00:03'),
(4, '16wutrzjPW', '2023-02-19 10:05:42', '2023-02-19 10:05:42'),
(5, 'BuSvDx6R0G', '2023-02-19 10:30:11', '2023-02-19 10:30:11'),
(6, 'TEg9L2WqxS', '2023-02-19 10:37:25', '2023-02-19 10:37:25'),
(7, 'uxCSsk54mA', '2023-02-19 23:04:28', '2023-02-19 23:04:28'),
(8, 'VOI21l1rfl', '2023-02-19 23:09:19', '2023-02-19 23:09:19'),
(9, 'jXy9A1kBPB', '2023-02-19 23:13:50', '2023-02-19 23:13:50'),
(10, 'B9rzkd5T1t', '2023-02-19 23:17:38', '2023-02-19 23:17:38'),
(11, 'YEtBDtIIWZ', '2023-02-19 23:26:27', '2023-02-19 23:26:27'),
(12, '89aOc5xOY2', '2023-02-26 02:56:58', '2023-02-26 02:56:58'),
(13, 'w2uc4Wx2ZL', '2023-03-04 02:15:40', '2023-03-04 02:15:40'),
(16, 'uWAA5VGzfI', '2023-03-11 00:25:08', '2023-03-11 00:25:08'),
(17, 'oDBVOqBw5K', '2023-03-11 03:01:37', '2023-03-11 03:01:37'),
(18, 'iImHP5nul6', '2023-03-11 03:36:10', '2023-03-11 03:36:10'),
(19, 'e1RHKHD0z2', '2023-03-11 03:39:16', '2023-03-11 03:39:16'),
(20, 'bi8vThyQ32', '2023-03-11 04:30:26', '2023-03-11 04:30:26'),
(21, 'qW0nl4m8N8', '2023-03-11 10:09:09', '2023-03-11 10:09:09'),
(22, 'dqunRpfn7c', '2023-03-11 10:11:00', '2023-03-11 10:11:00'),
(23, '5LmkhAJM9D', '2023-03-12 05:16:52', '2023-03-12 05:16:52'),
(24, 'UoR7ukUxqn', '2023-03-12 10:36:04', '2023-03-12 10:36:04');

-- --------------------------------------------------------

--
-- Table structure for table `walk_by_patients`
--

CREATE TABLE `walk_by_patients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` bigint(20) UNSIGNED NOT NULL,
  `patient_reg_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `refer_from` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_or_mobile_number` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nid_number` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `how_did_you_come_to_know_about_this_center` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `do_you_have_earlier_experience_of_ayurveda_please_give_details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `do_you_have_symptoms_in_past_one_weak` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `covid_test_result` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `walk_by_patient_services`
--

CREATE TABLE `walk_by_patient_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `walk_by_patient_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_username_unique` (`username`);

--
-- Indexes for table `diet_charts`
--
ALTER TABLE `diet_charts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctors_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `doctor_appointments`
--
ALTER TABLE `doctor_appointments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctor_appointments_admin_id_foreign` (`admin_id`),
  ADD KEY `doctor_appointments_doctor_id_foreign` (`doctor_id`);

--
-- Indexes for table `doctor_consult_dates`
--
ALTER TABLE `doctor_consult_dates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctor_consult_dates_doctor_id_foreign` (`doctor_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `health_supplements`
--
ALTER TABLE `health_supplements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicines`
--
ALTER TABLE `medicines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `patients_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `patient_admits`
--
ALTER TABLE `patient_admits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `patient_admits_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `patient_files`
--
ALTER TABLE `patient_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `patient_files_patient_id_foreign` (`patient_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `rewards`
--
ALTER TABLE `rewards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staff_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `system_information`
--
ALTER TABLE `system_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `therapists`
--
ALTER TABLE `therapists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `therapists_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `therapy_appointments`
--
ALTER TABLE `therapy_appointments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `therapy_appointments_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `therapy_appointment_date_and_times`
--
ALTER TABLE `therapy_appointment_date_and_times`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `therapy_appointment_details`
--
ALTER TABLE `therapy_appointment_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `therapy_appointment_details_therapy_appointment_id_foreign` (`therapy_appointment_id`);

--
-- Indexes for table `therapy_details`
--
ALTER TABLE `therapy_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `therapy_details_therapy_list_id_foreign` (`therapy_list_id`),
  ADD KEY `therapy_details_therapy_ingredient_id_foreign` (`therapy_ingredient_id`);

--
-- Indexes for table `therapy_ingredients`
--
ALTER TABLE `therapy_ingredients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `therapy_lists`
--
ALTER TABLE `therapy_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `walk_by_patients`
--
ALTER TABLE `walk_by_patients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `walk_by_patients_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `walk_by_patient_services`
--
ALTER TABLE `walk_by_patient_services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `walk_by_patient_services_walk_by_patient_id_foreign` (`walk_by_patient_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `diet_charts`
--
ALTER TABLE `diet_charts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `doctor_appointments`
--
ALTER TABLE `doctor_appointments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `doctor_consult_dates`
--
ALTER TABLE `doctor_consult_dates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `health_supplements`
--
ALTER TABLE `health_supplements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `medicines`
--
ALTER TABLE `medicines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `patient_admits`
--
ALTER TABLE `patient_admits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `patient_files`
--
ALTER TABLE `patient_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rewards`
--
ALTER TABLE `rewards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `therapists`
--
ALTER TABLE `therapists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `therapy_appointments`
--
ALTER TABLE `therapy_appointments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `therapy_appointment_date_and_times`
--
ALTER TABLE `therapy_appointment_date_and_times`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `therapy_appointment_details`
--
ALTER TABLE `therapy_appointment_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `therapy_details`
--
ALTER TABLE `therapy_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `therapy_ingredients`
--
ALTER TABLE `therapy_ingredients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `therapy_lists`
--
ALTER TABLE `therapy_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `walk_by_patients`
--
ALTER TABLE `walk_by_patients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `walk_by_patient_services`
--
ALTER TABLE `walk_by_patient_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `doctors`
--
ALTER TABLE `doctors`
  ADD CONSTRAINT `doctors_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `doctor_appointments`
--
ALTER TABLE `doctor_appointments`
  ADD CONSTRAINT `doctor_appointments_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `doctor_appointments_doctor_id_foreign` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`);

--
-- Constraints for table `doctor_consult_dates`
--
ALTER TABLE `doctor_consult_dates`
  ADD CONSTRAINT `doctor_consult_dates_doctor_id_foreign` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`);

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `patients`
--
ALTER TABLE `patients`
  ADD CONSTRAINT `patients_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `patient_admits`
--
ALTER TABLE `patient_admits`
  ADD CONSTRAINT `patient_admits_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `patient_files`
--
ALTER TABLE `patient_files`
  ADD CONSTRAINT `patient_files_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`);

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `therapists`
--
ALTER TABLE `therapists`
  ADD CONSTRAINT `therapists_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `therapy_appointments`
--
ALTER TABLE `therapy_appointments`
  ADD CONSTRAINT `therapy_appointments_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `therapy_appointment_details`
--
ALTER TABLE `therapy_appointment_details`
  ADD CONSTRAINT `therapy_appointment_details_therapy_appointment_id_foreign` FOREIGN KEY (`therapy_appointment_id`) REFERENCES `therapy_appointments` (`id`);

--
-- Constraints for table `therapy_details`
--
ALTER TABLE `therapy_details`
  ADD CONSTRAINT `therapy_details_therapy_ingredient_id_foreign` FOREIGN KEY (`therapy_ingredient_id`) REFERENCES `therapy_ingredients` (`id`),
  ADD CONSTRAINT `therapy_details_therapy_list_id_foreign` FOREIGN KEY (`therapy_list_id`) REFERENCES `therapy_lists` (`id`);

--
-- Constraints for table `walk_by_patients`
--
ALTER TABLE `walk_by_patients`
  ADD CONSTRAINT `walk_by_patients_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `walk_by_patient_services`
--
ALTER TABLE `walk_by_patient_services`
  ADD CONSTRAINT `walk_by_patient_services_walk_by_patient_id_foreign` FOREIGN KEY (`walk_by_patient_id`) REFERENCES `walk_by_patients` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;