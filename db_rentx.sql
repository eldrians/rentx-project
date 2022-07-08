-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2022 at 10:11 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_rentx`
--

-- --------------------------------------------------------

--
-- Table structure for table `buyers`
--

CREATE TABLE `buyers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_profile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `buyers`
--

INSERT INTO `buyers` (`id`, `user_id`, `phone`, `photo_profile`, `created_at`, `updated_at`) VALUES
(1, 1, '08412461247', NULL, '2022-06-02 15:29:51', '2022-06-02 15:29:51'),
(2, 2, '084124622427', NULL, '2022-06-02 15:29:51', '2022-06-02 15:29:51'),
(3, 3, '08153461247', NULL, '2022-06-02 15:29:51', '2022-06-02 15:29:51'),
(4, 7, '089638959321', 'buyers-photo-profile/iAFKXQ2CurAuyH3JCSECWz75uR1kgr0hlg1FCMOt.jpg', '2022-06-05 01:39:30', '2022-06-05 02:11:14'),
(6, 10, '154875262636', 'buyers-photo-profile/iBr6b4SdDP64hkmK2Sm4yi9rEWhJyFF2z3XEN3Xf.jpg', '2022-06-05 18:47:38', '2022-06-05 19:12:25');

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_05_20_133106_create_buyers_table', 1),
(6, '2022_05_20_140117_create_sellers_table', 1),
(7, '2022_05_20_141643_create_properties_table', 1),
(8, '2022_05_23_072208_create_orders_table', 1),
(9, '2022_05_23_072306_create_reviews_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seller_id` bigint(20) UNSIGNED NOT NULL,
  `buyer_id` bigint(20) UNSIGNED NOT NULL,
  `property_id` bigint(20) UNSIGNED NOT NULL,
  `date_order` date NOT NULL,
  `check_in` date NOT NULL,
  `check_out` date NOT NULL,
  `duration` int(11) NOT NULL,
  `total_payment` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `seller_id`, `buyer_id`, `property_id`, `date_order`, `check_in`, `check_out`, `duration`, `total_payment`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 1, '2022-05-15', '2022-05-26', '2022-06-03', 10, 392577, 'paid', '2022-06-02 15:29:52', '2022-06-02 15:29:52'),
(2, 3, 1, 1, '2022-05-16', '2022-05-23', '2022-06-13', 9, 866591, 'rejected', '2022-06-02 15:29:52', '2022-06-02 15:29:52'),
(3, 2, 3, 2, '2022-05-18', '2022-05-23', '2022-06-01', 38, 638446, 'paid', '2022-06-02 15:29:52', '2022-06-02 15:29:52'),
(4, 2, 2, 2, '2022-05-13', '2022-05-25', '2022-06-11', 24, 379979, 'accepted', '2022-06-02 15:29:52', '2022-06-02 15:29:52'),
(5, 2, 2, 3, '2022-05-14', '2022-05-19', '2022-06-09', 92, 522922, 'accepted', '2022-06-02 15:29:52', '2022-06-02 15:29:52'),
(6, 2, 1, 3, '2022-05-14', '2022-05-21', '2022-06-08', 21, 154883, 'reviewed', '2022-06-02 15:29:52', '2022-06-02 17:12:35'),
(7, 3, 2, 4, '2022-05-16', '2022-05-23', '2022-06-01', 93, 265279, 'paid', '2022-06-02 15:29:52', '2022-06-02 15:29:52'),
(8, 3, 3, 4, '2022-05-16', '2022-05-24', '2022-06-16', 157, 609768, 'rejected', '2022-06-02 15:29:52', '2022-06-02 15:29:52'),
(9, 1, 2, 5, '2022-05-19', '2022-05-24', '2022-06-11', 8, 660898, 'rejected', '2022-06-02 15:29:52', '2022-06-02 15:29:52'),
(10, 1, 1, 5, '2022-05-19', '2022-05-22', '2022-06-08', 214, 418584, 'accepted', '2022-06-02 15:29:52', '2022-06-02 15:29:52'),
(11, 1, 1, 6, '2022-05-15', '2022-05-22', '2022-05-31', 93, 603240, 'paid', '2022-06-02 15:29:52', '2022-06-02 15:29:52'),
(12, 1, 2, 6, '2022-05-14', '2022-05-26', '2022-06-14', 128, 977815, 'pending', '2022-06-02 15:29:52', '2022-06-02 15:29:52'),
(13, 3, 3, 7, '2022-05-14', '2022-05-25', '2022-06-12', 311, 748374, 'reviewed', '2022-06-02 15:29:52', '2022-06-02 15:50:18'),
(14, 3, 2, 7, '2022-05-17', '2022-05-26', '2022-06-13', 346, 692333, 'rejected', '2022-06-02 15:29:52', '2022-06-02 15:29:52'),
(15, 2, 2, 8, '2022-05-18', '2022-05-23', '2022-05-29', 253, 545849, 'paid', '2022-06-02 15:29:52', '2022-06-02 15:29:52'),
(16, 2, 2, 8, '2022-05-19', '2022-05-22', '2022-06-05', 101, 175182, 'pending', '2022-06-02 15:29:52', '2022-06-02 15:29:52'),
(17, 1, 1, 9, '2022-05-14', '2022-05-20', '2022-06-02', 235, 515784, 'paid', '2022-06-02 15:29:52', '2022-06-02 15:29:52'),
(18, 1, 2, 9, '2022-05-15', '2022-05-26', '2022-06-07', 110, 485284, 'rejected', '2022-06-02 15:29:52', '2022-06-02 15:29:52'),
(19, 3, 1, 10, '2022-05-18', '2022-05-25', '2022-06-11', 54, 842483, 'pending', '2022-06-02 15:29:52', '2022-06-02 15:29:52'),
(20, 3, 1, 10, '2022-05-19', '2022-05-21', '2022-06-10', 115, 586322, 'rejected', '2022-06-02 15:29:52', '2022-06-02 15:29:52'),
(21, 3, 3, 7, '2022-06-08', '2022-06-08', '2022-09-08', 3, 428145, 'accepted', '2022-06-02 16:36:10', '2022-06-02 16:49:08'),
(22, 3, 4, 7, '2022-06-05', '2022-06-05', '2022-12-05', 6, 856290, 'reviewed', '2022-06-05 01:43:42', '2022-06-05 01:50:09'),
(23, 3, 6, 7, '2022-06-06', '2022-06-06', '2022-09-06', 3, 428145, 'rejected', '2022-06-05 18:53:06', '2022-06-05 18:53:46'),
(24, 3, 6, 7, '2022-06-06', '2022-06-06', '2022-12-06', 6, 856290, 'rejected', '2022-06-05 18:54:54', '2022-06-05 18:55:43'),
(25, 3, 6, 7, '2022-06-06', '2022-06-06', '2022-12-06', 6, 856290, 'rejected', '2022-06-05 18:58:08', '2022-06-05 18:58:54'),
(26, 3, 6, 7, '2022-06-06', '2022-06-06', '2022-12-06', 6, 856290, 'reviewed', '2022-06-05 18:59:54', '2022-06-05 19:01:20');

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
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seller_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `property_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rent_for` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_room` int(11) NOT NULL,
  `available_room` int(11) NOT NULL,
  `room_length` int(11) NOT NULL,
  `room_width` int(11) NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `rating` double(8,2) NOT NULL,
  `total_reviewer` int(11) NOT NULL,
  `photo_1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_4` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_5` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `seller_id`, `title`, `slug`, `property_type`, `rent_for`, `total_room`, `available_room`, `room_length`, `room_width`, `address`, `link_location`, `province`, `city`, `district`, `price`, `rating`, `total_reviewer`, `photo_1`, `photo_2`, `photo_3`, `photo_4`, `photo_5`, `description`, `created_at`, `updated_at`) VALUES
(1, 3, 'kontrakan biru', 'dolor-unde-dolorem-quibusdam-odit-nisi', 'Kontrakan', 'Campur', 3, 5, 3, 3, 'Cum quibusdam nihil qui corporis omnis voluptate perspiciatis vel qui quis.', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15844.982658340905!2d107.5943499!3d-6.8611339!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xee36226510a79e76!2sUniversitas%20Pendidikan%20Indonesia!5e0!3m2!1sen!2sid!4v1653257032700!5m2!1sen!2sid', 'Jawa Timur', 'Bandung', 'Cilandak', 370585, 4.59, 55, 'property-images/kosan-1.jpg', 'property-images/kosan-1.jpg', 'property-images/kosan-1.jpg', 'property-images/kosan-1.jpg', 'property-images/kosan-1.jpg', '<p>Earum aliquam deserunt dolores rerum. Facilis aut ut soluta error. Veniam autem est quia repellendus.</p><p>Atque aut voluptatem temporibus sint. Impedit mollitia optio repellat magni. Omnis sed aut aspernatur ullam est molestiae aut. Assumenda minus quis accusantium consequatur.</p><p>Explicabo itaque veritatis inventore qui. Sequi occaecati in voluptatem exercitationem id neque molestias. Libero quia eaque at totam dolor qui impedit.</p><p>Natus autem quia animi et. Ut atque in quam sequi nemo quia ipsa. Qui earum est commodi facere libero fugit laboriosam sit.</p><p>Aut ut sed id blanditiis assumenda est enim. Omnis dolores corrupti repellendus ducimus quia voluptatem. Fugiat qui beatae nisi error commodi hic. Atque est odio voluptatem.</p><p>Rerum officiis et numquam consequuntur enim veritatis. Qui eligendi quas voluptatem a nobis magnam voluptates. Ratione non sit aut est. Voluptas sit est in et reprehenderit perferendis aut.</p><p>Sit veritatis harum ad occaecati omnis. Reiciendis officia ut quisquam.</p>', '2022-06-02 15:29:52', '2022-06-02 15:29:52'),
(2, 2, 'kosan manja', 'sed-temporibus-cupiditate-fugiat-molestiae-laudantium-quia', 'Kosan', 'Campur', 4, 2, 4, 3, 'Quis voluptatem eum quasi soluta aut earum.', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15844.982658340905!2d107.5943499!3d-6.8611339!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xee36226510a79e76!2sUniversitas%20Pendidikan%20Indonesia!5e0!3m2!1sen!2sid!4v1653257032700!5m2!1sen!2sid', 'Jawa Timur', 'surabaya', 'Cilincing', 377802, 2.67, 90, 'property-images/kosan-2.jpg', 'property-images/kosan-2.jpg', 'property-images/kosan-2.jpg', 'property-images/kosan-2.jpg', 'property-images/kosan-2.jpg', '<p>Et ab perferendis repellendus pariatur possimus autem. Et nulla iusto ratione labore occaecati reiciendis voluptatem. Sit officiis quos exercitationem vel nihil. Illo quo et officia ad veniam dolores ex.</p><p>Hic animi voluptas quasi minima eius dicta et. Explicabo nam numquam velit corporis voluptatem vel. Enim fuga velit possimus aliquid omnis tempore. Et ut veritatis rerum magni vitae eos nihil.</p><p>Ad error et qui ea nihil voluptas maxime. Impedit esse labore fuga quidem molestiae suscipit aperiam aut. Earum ut minima facilis accusamus voluptas et iure repellat.</p><p>Quaerat labore hic fugit earum culpa. Ut sunt maxime velit aut dolores quas fugit. Explicabo voluptatibus dolore unde aut. Quia doloribus voluptate nemo ab illum ab.</p><p>Dolorem voluptatem omnis quaerat voluptatem quia ad eveniet hic. Modi est id id velit. Fuga soluta corporis sunt qui id.</p><p>Quibusdam consequuntur tenetur voluptates modi et. Est assumenda voluptas et eveniet ut. Repudiandae beatae nihil sunt omnis. Eos aut qui at possimus assumenda in.</p><p>Eveniet odio illum aut velit neque accusantium fugit blanditiis. Rerum eum quasi quasi aliquid eligendi iste rerum.</p><p>Dolorem error excepturi veniam rerum dolor. Cumque vel ut velit dolorem at. Sed autem molestiae sint qui maiores velit asperiores veniam. Esse qui dicta voluptatem est molestiae numquam laudantium.</p><p>Mollitia autem maiores dolores et ullam. Ab adipisci nostrum accusantium assumenda magnam delectus. Nihil exercitationem facere quae sequi voluptas. Maiores dolorem voluptas enim veniam vero voluptatem. Quia sed commodi quaerat ullam.</p><p>Beatae minima qui voluptatum architecto cupiditate facere tempore. Sequi quaerat voluptas accusamus debitis. Quam et vitae sint hic perferendis.</p>', '2022-06-02 15:29:52', '2022-06-02 15:29:52'),
(3, 2, 'kosan pemuda', 'expedita-blanditiis-quis-enim-a-enim', 'Kosan', 'Pria', 2, 5, 3, 3, 'Culpa rem reprehenderit autem voluptatem nihil necessitatibus.', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15844.982658340905!2d107.5943499!3d-6.8611339!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xee36226510a79e76!2sUniversitas%20Pendidikan%20Indonesia!5e0!3m2!1sen!2sid!4v1653257032700!5m2!1sen!2sid', 'Jawa Timur', 'surabaya', 'cipali', 196974, 4.24, 30, 'property-images/kosan-3.webp', 'property-images/kosan-3.webp', 'property-images/kosan-3.webp', 'property-images/kosan-3.webp', 'property-images/kosan-3.webp', '<p>Doloremque fugiat pariatur ut. Rem adipisci qui quaerat id totam. Dolorem iusto aut earum.</p><p>Reiciendis et sit velit ut odio quis est. Enim sapiente est illum eveniet maiores nemo. Nulla odio ducimus voluptatum architecto eveniet.</p><p>Aut reprehenderit vero eaque vero id ipsam. Ut velit eum repellat voluptatibus voluptate eligendi. Dolorum corrupti quis qui amet voluptatibus ut. Qui cum atque accusamus libero recusandae quia.</p><p>Dolorem quos illo nisi quae. Sit pariatur asperiores voluptatum dicta esse molestias necessitatibus. Aut quaerat ullam rerum quis voluptas omnis maiores. Velit et ducimus temporibus recusandae enim consequuntur.</p><p>Excepturi voluptatem nisi culpa repudiandae vel sapiente. Molestiae est dolorem qui esse ut et ipsa. Harum vero molestiae a non. Et doloribus doloremque sed harum fugit et architecto.</p><p>Enim aliquam nemo consequatur temporibus vel. Quia sequi sed qui ea quia eum commodi. Ut voluptatem magni tenetur dolor voluptate. Inventore facere et nobis eveniet incidunt sint.</p>', '2022-06-02 15:29:52', '2022-06-02 17:12:35'),
(4, 3, 'kontrakan boomer', 'quia-optio-quibusdam-et-impedit', 'Kontrakan', 'Pria', 4, 5, 3, 3, 'Ullam dolorem aut voluptates non sapiente nisi tempore.', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15844.982658340905!2d107.5943499!3d-6.8611339!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xee36226510a79e76!2sUniversitas%20Pendidikan%20Indonesia!5e0!3m2!1sen!2sid!4v1653257032700!5m2!1sen!2sid', 'Jawa Tengah', 'surabaya', 'Cengkareng', 674751, 3.72, 8, 'property-images/kosan-4.jfif', 'property-images/kosan-4.jfif', 'property-images/kosan-4.jfif', 'property-images/kosan-4.jfif', 'property-images/kosan-4.jfif', '<p>Accusamus architecto quae non eos ullam ut. Ut aut consequuntur magni veritatis. Sit sequi ipsum neque est ratione eligendi alias.</p><p>Ducimus sit voluptatem perspiciatis est nihil. Laboriosam reiciendis aut minima et. Sunt iure qui ratione itaque ratione repudiandae qui. Praesentium ea sint officia minima soluta nesciunt. Consequuntur pariatur quis similique ab tenetur quod.</p><p>Dicta aliquid provident temporibus ut aperiam illum. Autem fuga quo sunt ut eum est voluptates ut. Voluptatibus vero vel et earum est. Reprehenderit corporis aut ut sed qui.</p><p>Eos ut unde ut id. Rerum architecto voluptatibus qui quia commodi qui. Laboriosam animi molestias soluta omnis. Reprehenderit sunt sint consectetur voluptas et ut.</p><p>Nam reprehenderit tenetur aut consequatur placeat mollitia dolorem debitis. Aut eligendi unde porro commodi rerum. Voluptas cumque ipsam dolor voluptas veritatis aut. Voluptatem doloremque ipsam tempore consequatur. Sed omnis in eos.</p><p>Vitae eveniet optio odio rerum quasi. Expedita quia ducimus molestiae perspiciatis officia. Distinctio aut molestiae dicta qui corporis ut. Et illo dolores accusantium quasi. Quas corrupti est totam ut.</p><p>Aliquid officia dolorum voluptas adipisci ut quia assumenda. Dolor veniam fugit fugiat autem omnis quae eum. Animi aut quidem quis. Deserunt esse molestias fugiat.</p><p>Earum quidem sed corrupti possimus nisi. Aut pariatur perferendis impedit quam.</p><p>Delectus voluptatum dolorem dolores autem minima quasi. Doloribus veritatis laudantium suscipit. Qui sit pariatur aut dignissimos facere aliquam explicabo.</p><p>Exercitationem et rerum corporis. Quo illum exercitationem officia fugiat eos ullam explicabo. Vel adipisci animi amet.</p>', '2022-06-02 15:29:52', '2022-06-02 15:29:52'),
(5, 1, 'kontrakan upi', 'facere-tempora-sit-nisi-vero-quasi-repellendus-ducimus-iste', 'Kosan', 'Wanita', 3, 1, 5, 3, 'Eius non perspiciatis modi odit velit qui enim.', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15844.982658340905!2d107.5943499!3d-6.8611339!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xee36226510a79e76!2sUniversitas%20Pendidikan%20Indonesia!5e0!3m2!1sen!2sid!4v1653257032700!5m2!1sen!2sid', 'kalimantan selatan', 'surabaya', 'Pancoran', 689267, 2.43, 22, 'property-images/kosan-5.png', 'property-images/kosan-5.png', 'property-images/kosan-5.png', 'property-images/kosan-5.png', 'property-images/kosan-5.png', '<p>Ullam reiciendis sint tempore rerum unde. Explicabo consequatur tenetur quas dignissimos alias. Doloremque a natus sapiente officiis alias vel.</p><p>Est dolorem ea dolore. Ipsum dignissimos omnis quis amet maiores est numquam. Qui tenetur earum nostrum ut quos accusamus est. Ratione alias eveniet provident.</p><p>Ut nam aut ratione aut placeat. Ipsa excepturi dolorum corrupti quibusdam eligendi corrupti fuga necessitatibus.</p><p>Ut occaecati laborum et illum accusantium provident enim. Magnam magnam voluptas nihil dolores. Illo id omnis et sint.</p><p>Unde sit est fugiat aliquam vero ab. Voluptas et ut rem maxime fugiat officia. Est fugit est voluptate voluptatem. Aut molestias deleniti maiores voluptas neque magni eligendi aliquid.</p>', '2022-06-02 15:29:52', '2022-06-02 15:29:52'),
(6, 1, 'kosan mamah muda', 'quas-numquam-nihil-rerum-non', 'Kosan', 'Campur', 1, 1, 3, 4, 'Alias quo ratione perspiciatis earum possimus.', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15844.982658340905!2d107.5943499!3d-6.8611339!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xee36226510a79e76!2sUniversitas%20Pendidikan%20Indonesia!5e0!3m2!1sen!2sid!4v1653257032700!5m2!1sen!2sid', 'Jawa Tengah', 'semarang', 'Cilincing', 556710, 2.13, 74, 'property-images/kosan-6.jpg', 'property-images/kosan-6.jpg', 'property-images/kosan-6.jpg', 'property-images/kosan-6.jpg', 'property-images/kosan-6.jpg', '<p>Sequi laboriosam nesciunt et optio hic aliquid. Aliquid amet culpa deleniti. Consequuntur non ab repudiandae alias. Aut est quo omnis iure sint culpa aperiam. Accusantium quasi ut sint explicabo quos.</p><p>Quo est quasi voluptas sit. Reprehenderit et nostrum voluptatem qui impedit ea nemo. Qui quae ut sed nostrum quo. Nostrum quo autem rerum dignissimos dolore. Consectetur necessitatibus adipisci suscipit laudantium ratione explicabo molestiae.</p><p>Ut sed earum et est odio sunt nulla. A eos ipsa in animi maiores. Ipsa occaecati facere hic omnis.</p><p>Sit mollitia consequuntur mollitia temporibus libero occaecati eligendi. Et modi minus dolores autem ut harum. Aspernatur aliquam et veniam. Nihil occaecati doloremque aperiam reprehenderit illo quaerat inventore.</p><p>Voluptatem reprehenderit a similique. Enim ex eveniet occaecati voluptatem non. Qui doloremque deserunt dolores quis animi.</p><p>Voluptatibus in sint enim dolores et. Adipisci ratione asperiores ut culpa quibusdam unde voluptatibus quo. Quidem quasi magnam unde voluptas dolor aut. Maxime eius rerum cum hic dignissimos eligendi.</p><p>Et veritatis blanditiis eius eius eaque non. Eos quasi inventore illum aut ut voluptas eaque maxime. Libero nemo natus expedita dolore quia adipisci quas ut.</p><p>Quam officiis omnis temporibus dolorum. Sequi molestias dolorem qui aperiam quos ex consectetur est. Neque nostrum ut asperiores aut. Vel et fuga possimus accusantium aliquam ea rerum.</p>', '2022-06-02 15:29:52', '2022-06-02 15:29:52'),
(7, 3, 'kosan Hj.', 'expedita-dolores-enim-id', 'Kosan', 'Wanita', 2, 1, 4, 5, 'Corporis voluptas ullam quisquam accusantium omnis.', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15844.982658340905!2d107.5943499!3d-6.8611339!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xee36226510a79e76!2sUniversitas%20Pendidikan%20Indonesia!5e0!3m2!1sen!2sid!4v1653257032700!5m2!1sen!2sid', 'kalimantan barat', 'semarang', 'Palmerah', 142715, 4.78, 10, 'property-images/kosan-7.jpg', 'property-images/kosan-8.jpg', 'property-images/kosan-7.jpg', 'property-images/kosan-7.jpg', 'property-images/kosan-7.jpg', '<p>Est neque dolor omnis dignissimos. Quis voluptatem eum ut molestias sit libero. Sed illo dolores vel laudantium. Eaque voluptatibus voluptatibus nesciunt.</p><p>Fugit delectus maxime maxime laborum maiores. Optio similique nulla qui. Nulla aut quae sint dolorum natus. Molestiae quae eius molestias ad. Odio repudiandae sunt impedit unde qui.</p><p>Adipisci aut ea quas soluta nobis quod. Fugit accusantium recusandae dolorum minus alias perspiciatis. Facilis omnis minus quidem enim veritatis. Rerum ut quia qui sapiente atque nulla laboriosam.</p><p>Animi iste repudiandae inventore qui aut mollitia. Molestias ea rerum aliquam. Velit sunt dolores quibusdam et et voluptas. Illo natus quo iste rerum.</p><p>Harum quo sed voluptatem corporis harum ut. Rerum officia culpa nihil quod velit. Ut quo voluptates doloremque qui est qui ut. Consequatur pariatur aut possimus architecto.</p>', '2022-06-02 15:29:52', '2022-06-05 19:01:20'),
(8, 2, 'kontrakan Ir.', 'quam-mollitia-consequatur-autem', 'Kontrakan', 'Campur', 4, 5, 5, 4, 'Dolorem nostrum quis quia.', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15844.982658340905!2d107.5943499!3d-6.8611339!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xee36226510a79e76!2sUniversitas%20Pendidikan%20Indonesia!5e0!3m2!1sen!2sid!4v1653257032700!5m2!1sen!2sid', 'kalimantan selatan', 'semarang', 'kidul', 527736, 1.56, 43, 'property-images/kosan-8.jpg', 'property-images/kosan-8.jpg', 'property-images/kosan-8.jpg', 'property-images/kosan-8.jpg', 'property-images/kosan-8.jpg', '<p>Molestias illo cum expedita reprehenderit magni. Deleniti eos omnis aut aliquid. Rerum consequatur nihil sit nisi officia et. Maxime ullam dignissimos nesciunt error ut in.</p><p>Ipsa est error deleniti enim nisi omnis voluptas laudantium. Eveniet quo reprehenderit commodi. Laboriosam omnis eveniet numquam molestiae.</p><p>Doloribus dolores cum eveniet rerum iure. Enim aut tempore est est. Amet quod et deleniti numquam voluptas. Modi voluptatem dignissimos in aut porro.</p><p>Repellat quia atque quos neque quis accusamus. Occaecati facilis eligendi quam rem eaque. Aperiam rerum accusantium voluptatem sed alias. Et blanditiis aliquid sapiente labore iure molestias saepe.</p><p>Optio enim odio animi quis sint. Et voluptatibus saepe laborum at voluptate. Quia dolor aut sint aut. Rerum unde id voluptas a quo cum enim.</p>', '2022-06-02 15:29:52', '2022-06-02 15:29:52'),
(9, 1, 'kontrakan drg.', 'et-ut-iste-enim-saepe-accusamus-iure', 'Kontrakan', 'Pria', 2, 1, 3, 5, 'Veniam possimus quidem sed.', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15844.982658340905!2d107.5943499!3d-6.8611339!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xee36226510a79e76!2sUniversitas%20Pendidikan%20Indonesia!5e0!3m2!1sen!2sid!4v1653257032700!5m2!1sen!2sid', 'kalimantan barat', 'semarang', 'kidul', 856546, 2.95, 13, 'property-images/kosan-9.jpg', 'property-images/kosan-9.jpg', 'property-images/kosan-9.jpg', 'property-images/kosan-9.jpg', 'property-images/kosan-9.jpg', '<p>Ratione enim et aspernatur expedita. Atque accusamus et commodi ullam voluptatem qui veritatis earum. Quia in iste et est. Beatae voluptas est sunt odit tempora sapiente. Tempore suscipit sequi eius fuga.</p><p>Deleniti asperiores expedita inventore unde quibusdam. Quibusdam illo saepe rerum et. Amet eveniet voluptatem cupiditate rerum occaecati dolores. Ut laborum eveniet saepe.</p><p>Deserunt numquam dignissimos rerum ullam qui ut ut quisquam. Nisi excepturi perferendis est quae. Autem quis rerum consequuntur deserunt cupiditate.</p><p>Facilis atque aut placeat. Dolore dolorum similique et quia. Eius dolor quis possimus dolorem vel quia.</p><p>Consequuntur sunt nihil exercitationem tempore praesentium. At similique excepturi praesentium qui ut doloremque cupiditate quos. Odit fugit illum quisquam.</p><p>Ullam quae adipisci est sequi recusandae voluptates voluptates. Voluptatem repellat adipisci aperiam in. Voluptas ab ipsum repellat. Aut quaerat culpa ea voluptate quasi.</p><p>Perspiciatis debitis velit impedit pariatur ab consequatur quam. Voluptatibus officia quia occaecati doloribus qui aperiam. Deserunt aperiam sint sit.</p>', '2022-06-02 15:29:52', '2022-06-02 15:29:52'),
(10, 3, 'kosan Hajijuanda.', 'et-eligendi-dolorem-possimus-ex-sed-quos', 'Kosan', 'Campur', 1, 2, 4, 5, 'Eum culpa animi soluta deserunt aut.', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15844.982658340905!2d107.5943499!3d-6.8611339!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xee36226510a79e76!2sUniversitas%20Pendidikan%20Indonesia!5e0!3m2!1sen!2sid!4v1653257032700!5m2!1sen!2sid', 'Jawa Timur', 'surabaya', 'Cilincing', 588969, 1.47, 47, 'property-images/kosan-10.jpg', 'property-images/kosan-10.jpg', 'property-images/kosan-10.jpg', 'property-images/kosan-10.jpg', 'property-images/kosan-10.jpg', '<p>Modi quasi doloribus non ipsa. Fuga laborum veniam odio provident aliquid ducimus ut. Tempore itaque possimus et enim. Dolores ea quas ex.</p><p>Soluta ea et dolores cupiditate corporis aut. Voluptatibus eos dolorem ut autem ut qui voluptas. Voluptate rerum laborum fugit ipsam et sed delectus. Natus optio porro quasi voluptatem.</p><p>Unde repudiandae in totam repudiandae iusto est. Magni qui est odio et quis totam minima sunt. Deserunt consectetur quidem dolorem est earum cumque.</p><p>Pariatur vel sed sapiente cumque aut quos odio. Deserunt inventore odit praesentium repudiandae iure. Eligendi quo esse architecto non quia quibusdam.</p><p>Aut est quia a incidunt omnis labore tempore. Alias dolores sed ullam est ut voluptatem. Consequatur exercitationem quod rerum quia aliquam voluptatem nostrum voluptate. Voluptatem in nulla aliquam magni doloremque tenetur. Rerum qui vitae autem ad occaecati.</p>', '2022-06-02 15:29:52', '2022-06-02 15:29:52'),
(11, 3, 'kosan asik', 'kosan-asik', 'Kosan', 'Campur', 12, 10, 5, 5, 'bandung', 'https://www.google.com/search?q=alamat%20mall&ei=wGedYpG9NtuRseMPg7-lYA&ved=2ahUKEwjwnOyJ5Zf4AhU1R2wGHbGCCX8QvS56BAgEEAE&uact=5&oq=alamat+mall&gs_lcp=Cgdnd3Mtd2l6EAMyBQgAEIAEMgUIABCABDIFCAAQgAQyBQgAEIAEMgUIABCABDIFCAAQgAQyBQgAEIAEMgUIABCABDIFCAAQgAQyBQgAEIAEOgUIABCRAjoLCC4QxwEQ0QMQkQI6CwgAEIAEELEDEIMBOggIABCxAxCDAToLCC4QgAQQsQMQgwE6BAgAEAM6CAguELEDEIMBOggILhDUAhCRAjoECC4QQzoKCC4QxwEQ0QMQQzoFCC4QgAQ6DgguEIAEELEDEMcBENEDOgQIABBDOggIABCABBCxAzoLCC4QgAQQxwEQrwE6CwguEIAEELEDENQCOggILhCABBCxAzoLCC4QsQMQ1AIQkQI6CAguEIAEENQCOhEILhCABBCxAxCDARDHARCvAToFCC4QkQI6DgguELEDEIMBEMcBEK8BSgQIQRgASgQIRhgAUABYzlFg_lJoBnAAeACAAW-IAbsKkgEEMTUuMpgBAKABAcABAQ&sclient=gws-wiz&tbs=lf:1,lf_ui:10&tbm=lcl&rflfq=1&num=10&rldimm=3456459463468889291&lqi=CgthbGFtYXQgbWFsbCICSAFI3rbD-LOPgIAIWhAQABgAIgRtYWxsKgQIAxAAkgEPc2hvcHBpbmdfY2VudGVyqgEMEAEqCCIEbWFsbCgA&phdesc=g3ddoaW3wvg&sa=X&rlst=f#rlfi=hd:;si:3456459463468889291,l,CgthbGFtYXQgbWFsbCICSAFI3rbD-LOPgIAIWhAQABgAIgRtYWxsKgQIAxAAkgEPc2hvcHBpbmdfY2VudGVyqgEMEAEqCCIEbWFsbCgA,y,g3ddoaW3wvg;mv:[[-6.9287567999999995,107.70271679999999],[-6.9941872,107.61746049999999]];tbs:lrf:!1m4!1u3!2m2!3m1!1e1!2m1!1e3,lf:1', 'jabar', 'kota bandung', 'bojonggede', 100000, 0.00, 0, 'property-images/eDDw2tTFKA6UHyAo1x40ohDeewzUDv7OhEM3vnEE.jpg', 'property-images/qOIMounQatV9GTOZqvJglDIS6YmvrkrlGwoSIffG.jpg', 'property-images/kki3Sh9QlNsmNjRtBHxlmNSulxIH4UcvFsOpDgcd.jpg', 'property-images/evvHEidmwSPDv62BJ15kh9lhjuSejW2SMifxBOPT.jpg', 'property-images/obYmNTDuU8kgAUq2eS56MQRZ0xXm177PqaClb4ZG.jpg', 'kosan nyaman', '2022-06-05 19:35:04', '2022-06-05 19:35:04'),
(12, 5, 'kosan axel', 'kosan-axel', 'Kosan', 'Campur', 12, 10, 4, 3, 'komplek baik', 'https://goo.gl/maps/MHXwiij7RYdTbHh67', 'jawa barat', 'kota bandung', 'bojongsoang', 400000, 0.00, 0, 'property-images/ugJTPUYFiy9uXaoTVCCLXMG1UAYLHsVrVSx6w8o4.jpg', 'property-images/Cci11qLVPyljFyjAwsUpa1VRIaDzpJVXYnkR6PXy.jpg', 'property-images/jrrVM6rY6gXoz22K33CpTKaMQbYz7dXryE49ufun.jpg', 'property-images/KpBocsjER2b96MBtfm9PaN3kHrQiNiPShFvPCBZX.jpg', 'property-images/qdMEXQIevi2vhR7LvVUuYCFzmAApi4K1Kr5eDnDB.jpg', 'kosan terbaik di indonesia', '2022-06-05 20:21:14', '2022-06-05 20:21:14');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `buyer_id` bigint(20) UNSIGNED NOT NULL,
  `property_id` bigint(20) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `order_id`, `buyer_id`, `property_id`, `comment`, `rating`, `created_at`, `updated_at`) VALUES
(1, 13, 3, 7, 'utk order id 13 komen dari giga', 5, '2022-06-02 15:50:18', '2022-06-02 15:50:18'),
(2, 6, 1, 3, 'kosan nya jelek', 1, '2022-06-02 17:12:35', '2022-06-02 17:12:35'),
(3, 22, 4, 7, 'Bagus Banget', 5, '2022-06-05 01:50:09', '2022-06-05 01:50:09'),
(4, 26, 6, 7, 'bagus banget ka', 5, '2022-06-05 19:01:20', '2022-06-05 19:01:20');

-- --------------------------------------------------------

--
-- Table structure for table `sellers`
--

CREATE TABLE `sellers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `nik` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_profile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_ktp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_selfie` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sellers`
--

INSERT INTO `sellers` (`id`, `user_id`, `nik`, `address`, `photo_profile`, `photo_ktp`, `photo_selfie`, `status`, `phone`, `created_at`, `updated_at`) VALUES
(1, 4, '1287461241246', 'jl eka jumpa', NULL, NULL, NULL, 'accepted', '082564167241', '2022-06-02 15:29:52', '2022-06-05 01:56:47'),
(2, 5, '128746121417266', 'jl eka ss', NULL, NULL, NULL, 'pending', '0825644124241', '2022-06-02 15:29:52', '2022-06-02 15:29:52'),
(3, 6, '127458612784618', 'jl eka kk', NULL, NULL, NULL, 'accepted', '0825644214178', '2022-06-02 15:29:52', '2022-06-05 01:56:56'),
(4, 7, '9876543219876543', 'komplek rumah', NULL, 'ktps/iVEAKB8KRP6xqJuFXuS6AXs8JwirRKza6F2YGAuj.jpg', 'selfies/QW2RCj53yknotSNCqU7WuglEoIAKTucCNUSFEOsJ.jpg', 'accepted', '089638959321', '2022-06-05 19:20:03', '2022-06-05 19:21:30'),
(5, 10, '4567891234789456', 'komplek bagus', NULL, 'ktps/daUmd5EqR5A4gF1G2LtsOcCDE9QNofTjqzl1GYNG.jpg', 'selfies/kpGeCe6OHZMdr3QTE33ETUqs2dqcLz9HEQgxwtYs.jpg', 'accepted', '154875262636', '2022-06-05 19:25:42', '2022-06-05 19:27:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'buyer',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `email`, `account_type`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Joni', 'jonikul', '$2y$10$AzmsO.G1xuuefXxIc0gLUer7mSM8Tvhlklo7iWHrWNgqSZp083d2q', 'joni@gmail.com', 'buyer', NULL, '2022-06-02 15:29:51', '2022-06-02 15:29:51'),
(2, 'Chad', 'chadsm', '$2y$10$RCsWCNT59lXBaXq8E.4Kwe/N6ghbV3UM4JJ.OpzeyR2PS8ma4SPay', 'chad@gmail.com', 'buyer', NULL, '2022-06-02 15:29:51', '2022-06-02 15:29:51'),
(3, 'Giga', 'gigansm', '$2y$10$D7yI4CDiZTuGpUMsS6fHheSRKKbSbqVRuW/94YH07EbWxO6gJVzxu', 'giga@gmail.com', 'buyer', NULL, '2022-06-02 15:29:51', '2022-06-02 15:29:51'),
(4, 'Sins', 'sinsful', '$2y$10$vZyLkbmR4V8JHp4HasxSvuFkH16H2mtoG1HpLDRRGJj6DZZpOwLuG', 'sins@gmail.com', 'seller', NULL, '2022-06-02 15:29:51', '2022-06-02 15:29:51'),
(5, 'Eimi', 'eimin', '$2y$10$90l.vXF7t0kM0JHHliNTvOXzp6kgwttT28R5WGSDEOdqPSSymOypy', 'eimi@gmail.com', 'seller', NULL, '2022-06-02 15:29:52', '2022-06-02 15:29:52'),
(6, 'Fukada', 'fukadan', '$2y$10$kp2x46Wi0OIit2mEJfqaFuwa6YYHwAHvBDG8K8qOYylHYGGBtrIwG', 'fukada@gmail.com', 'seller', NULL, '2022-06-02 15:29:52', '2022-06-02 15:29:52'),
(7, 'axel', 'axel', '$2y$10$uHtjL4jXQySiyBkwBABGZuv.Pydlv0gfjfrc8wr8tzMFimFmymxMW', 'axel@gmail.com', 'seller', NULL, '2022-06-05 01:39:30', '2022-06-05 19:21:30'),
(8, 'admin', 'admin', '$2y$10$WhQQvDWyelVMee3lQPuhIOtSh.51XuSPl7VCwRG83iTKtWLs1kot6', 'admin@upi.edu', 'admin', NULL, '2022-06-05 01:53:14', '2022-06-05 01:53:14'),
(10, 'coba', 'coba', '$2y$10$Tv9QjwiUh/9eUDznY27UxOIHhqO0ebRWjPvh85FayzkcXANd9dbIq', 'coba@gmail.com', 'seller', NULL, '2022-06-05 18:47:38', '2022-06-05 19:27:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buyers`
--
ALTER TABLE `buyers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `buyers_phone_unique` (`phone`),
  ADD KEY `buyers_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_seller_id_foreign` (`seller_id`),
  ADD KEY `orders_buyer_id_foreign` (`buyer_id`),
  ADD KEY `orders_property_id_foreign` (`property_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `properties_slug_unique` (`slug`),
  ADD KEY `properties_seller_id_foreign` (`seller_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_order_id_foreign` (`order_id`),
  ADD KEY `reviews_buyer_id_foreign` (`buyer_id`),
  ADD KEY `reviews_property_id_foreign` (`property_id`);

--
-- Indexes for table `sellers`
--
ALTER TABLE `sellers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sellers_nik_unique` (`nik`),
  ADD UNIQUE KEY `sellers_phone_unique` (`phone`),
  ADD KEY `sellers_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buyers`
--
ALTER TABLE `buyers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sellers`
--
ALTER TABLE `sellers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buyers`
--
ALTER TABLE `buyers`
  ADD CONSTRAINT `buyers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_buyer_id_foreign` FOREIGN KEY (`buyer_id`) REFERENCES `buyers` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_property_id_foreign` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_seller_id_foreign` FOREIGN KEY (`seller_id`) REFERENCES `sellers` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `properties`
--
ALTER TABLE `properties`
  ADD CONSTRAINT `properties_seller_id_foreign` FOREIGN KEY (`seller_id`) REFERENCES `sellers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_buyer_id_foreign` FOREIGN KEY (`buyer_id`) REFERENCES `buyers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reviews_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reviews_property_id_foreign` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sellers`
--
ALTER TABLE `sellers`
  ADD CONSTRAINT `sellers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
