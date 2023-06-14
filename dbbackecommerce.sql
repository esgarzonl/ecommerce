-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-06-2023 a las 04:51:06
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dbbackecommerce`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `in_shopping_carts`
--

CREATE TABLE `in_shopping_carts` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `shopping_cart_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `in_shopping_carts`
--

INSERT INTO `in_shopping_carts` (`id`, `product_id`, `shopping_cart_id`, `created_at`, `updated_at`) VALUES
(1, 1, 9, '2023-06-12 06:48:54', '2023-06-12 06:48:54'),
(2, 1, 9, '2023-06-12 06:48:55', '2023-06-12 06:48:55'),
(3, 1, 9, '2023-06-12 07:02:49', '2023-06-12 07:02:49'),
(4, 1, 9, '2023-06-12 07:03:39', '2023-06-12 07:03:39'),
(5, 1, 9, '2023-06-12 07:12:57', '2023-06-12 07:12:57'),
(6, 1, 9, '2023-06-12 09:24:36', '2023-06-12 09:24:36'),
(7, 1, 9, '2023-06-12 09:26:54', '2023-06-12 09:26:54'),
(8, 1, 9, '2023-06-12 09:27:46', '2023-06-12 09:27:46'),
(9, 1, 10, '2023-06-12 10:13:12', '2023-06-12 10:13:12'),
(10, 1, 9, '2023-06-12 11:16:07', '2023-06-12 11:16:07'),
(11, 1, 9, '2023-06-12 11:18:32', '2023-06-12 11:18:32'),
(12, 6, 9, '2023-06-12 11:31:10', '2023-06-12 11:31:10'),
(13, 4, 9, '2023-06-12 11:45:38', '2023-06-12 11:45:38'),
(14, 6, 12, '2023-06-12 20:42:42', '2023-06-12 20:42:42'),
(15, 6, 12, '2023-06-12 20:43:15', '2023-06-12 20:43:15'),
(16, 4, 27, '2023-06-13 00:14:53', '2023-06-13 00:14:53'),
(17, 1, 34, '2023-06-13 01:03:52', '2023-06-13 01:03:52'),
(18, 1, 35, '2023-06-13 01:22:20', '2023-06-13 01:22:20'),
(19, 2, 35, '2023-06-13 01:22:28', '2023-06-13 01:22:28'),
(20, 6, 34, '2023-06-13 01:25:43', '2023-06-13 01:25:43'),
(21, 1, 40, '2023-06-13 22:03:18', '2023-06-13 22:03:18'),
(22, 1, 40, '2023-06-13 22:03:54', '2023-06-13 22:03:54'),
(23, 6, 42, '2023-06-14 07:48:21', '2023-06-14 07:48:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2023_06_11_210049_create_products_table', 2),
(4, '2023_06_11_231901_create_shopping_carts_table', 3),
(5, '2023_06_12_011428_create_in_shopping_carts_table', 4),
(6, '2023_06_12_055509_create_orders_table', 5),
(7, '2023_06_12_152328_AddCustomIDColumnToShoppingCarts', 6),
(8, '2023_06_13_182700_add_column_extension_to_products', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `shopping_cart_id` int(10) UNSIGNED NOT NULL,
  `line1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `line2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `postal_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `recipient_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'creado',
  `guide_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`id`, `shopping_cart_id`, `line1`, `line2`, `city`, `postal_code`, `country_code`, `state`, `recipient_name`, `email`, `status`, `guide_number`, `total`, `created_at`, `updated_at`) VALUES
(1, 9, 'Free Trade Zone', NULL, 'Bogota', '110111', 'CO', 'Bogota', 'John Doe', 'sb-ot3jm26283406@personal.example.com', 'creado', NULL, 1621, '2023-06-12 11:32:45', '2023-06-12 11:32:45'),
(2, 9, 'Free Trade Zone', NULL, 'Bogota', '110111', 'CO', 'Bogota', 'John Doe', 'sb-ot3jm26283406@personal.example.com', 'creado', NULL, 1945, '2023-06-12 11:46:28', '2023-06-12 11:46:28'),
(3, 9, 'Free Trade Zone', NULL, 'Bogota', '110111', 'CO', 'Bogota', 'John Doe', 'sb-ot3jm26283406@personal.example.com', 'creado', NULL, 1945, '2023-06-12 11:47:51', '2023-06-12 11:47:51'),
(4, 9, 'Free Trade Zone', NULL, 'Bogota', '110111', 'CO', 'Bogota', 'John Doe', 'sb-ot3jm26283406@personal.example.com', 'creado', NULL, 1945, '2023-06-12 11:47:57', '2023-06-12 11:47:57'),
(5, 9, 'Free Trade Zone', NULL, 'Bogota', '110111', 'CO', 'Bogota', 'John Doe', 'sb-ot3jm26283406@personal.example.com', 'creado', NULL, 1945, '2023-06-12 11:49:04', '2023-06-12 11:49:04'),
(6, 9, 'Free Trade Zone', NULL, 'Bogota', '110111', 'CO', 'Bogota', 'John Doe', 'sb-ot3jm26283406@personal.example.com', 'creado', NULL, 1945, '2023-06-12 11:49:46', '2023-06-12 11:49:46'),
(7, 9, 'Free Trade Zone', NULL, 'Bogota', '110111', 'CO', 'Bogota', 'John Doe', 'sb-ot3jm26283406@personal.example.com', 'creado', NULL, 1945, '2023-06-12 11:50:21', '2023-06-12 11:50:21'),
(8, 9, 'Free Trade Zone', NULL, 'Bogota', '110111', 'CO', 'Bogota', 'John Doe', 'sb-ot3jm26283406@personal.example.com', 'creado', NULL, 1945, '2023-06-12 11:50:51', '2023-06-12 11:50:51'),
(9, 11, 'Free Trade Zone', NULL, 'Bogota', '110111', 'CO', 'Bogota', 'John Doe', 'sb-ot3jm26283406@personal.example.com', 'creado', NULL, 0, '2023-06-12 20:18:58', '2023-06-12 20:18:58'),
(10, 12, 'Free Trade Zone', NULL, 'Bogota', '110111', 'CO', 'Bogota', 'John Doe', 'sb-ot3jm26283406@personal.example.com', 'creado', NULL, 0, '2023-06-12 20:21:14', '2023-06-12 20:21:14'),
(11, 12, 'Free Trade Zone', NULL, 'Bogota', '110111', 'CO', 'Bogota', 'John Doe', 'sb-ot3jm26283406@personal.example.com', 'creado', NULL, 242, '2023-06-12 20:43:45', '2023-06-12 20:43:45'),
(12, 12, 'Free Trade Zone', NULL, 'Bogota', '110111', 'CO', 'Bogota', 'John Doe', 'sb-ot3jm26283406@personal.example.com', 'creado', NULL, 242, '2023-06-12 21:02:18', '2023-06-12 21:02:18'),
(13, 13, 'Free Trade Zone', NULL, 'Bogota', '110111', 'CO', 'Bogota', 'John Doe', 'sb-ot3jm26283406@personal.example.com', 'creado', NULL, 0, '2023-06-12 21:03:09', '2023-06-12 21:03:09'),
(14, 14, 'Free Trade Zone', NULL, 'Bogota', '110111', 'CO', 'Bogota', 'John Doe', 'sb-ot3jm26283406@personal.example.com', 'creado', NULL, 0, '2023-06-12 21:03:32', '2023-06-12 21:03:32'),
(15, 15, 'Free Trade Zone', NULL, 'Bogota', '110111', 'CO', 'Bogota', 'John Doe', 'sb-ot3jm26283406@personal.example.com', 'creado', NULL, 0, '2023-06-12 21:04:00', '2023-06-12 21:04:00'),
(16, 16, 'Free Trade Zone', NULL, 'Bogota', '110111', 'CO', 'Bogota', 'John Doe', 'sb-ot3jm26283406@personal.example.com', 'creado', NULL, 0, '2023-06-12 21:04:32', '2023-06-12 21:04:32'),
(17, 17, 'Free Trade Zone', NULL, 'Bogota', '110111', 'CO', 'Bogota', 'John Doe', 'sb-ot3jm26283406@personal.example.com', 'creado', NULL, 0, '2023-06-12 21:06:27', '2023-06-12 21:06:27'),
(18, 18, 'Free Trade Zone', NULL, 'Bogota', '110111', 'CO', 'Bogota', 'John Doe', 'sb-ot3jm26283406@personal.example.com', 'creado', NULL, 0, '2023-06-12 21:07:54', '2023-06-12 21:07:54'),
(19, 19, 'Free Trade Zone', NULL, 'Bogota', '110111', 'CO', 'Bogota', 'John Doe', 'sb-ot3jm26283406@personal.example.com', 'creado', NULL, 0, '2023-06-12 21:08:14', '2023-06-12 21:08:14'),
(20, 20, 'Free Trade Zone', NULL, 'Bogota', '110111', 'CO', 'Bogota', 'John Doe', 'sb-ot3jm26283406@personal.example.com', 'creado', NULL, 0, '2023-06-12 21:08:22', '2023-06-12 21:08:22'),
(21, 21, 'Free Trade Zone', NULL, 'Bogota', '110111', 'CO', 'Bogota', 'John Doe', 'sb-ot3jm26283406@personal.example.com', 'creado', NULL, 0, '2023-06-12 21:08:34', '2023-06-12 21:08:34'),
(22, 22, 'Free Trade Zone', NULL, 'Bogota', '110111', 'CO', 'Bogota', 'John Doe', 'sb-ot3jm26283406@personal.example.com', 'creado', NULL, 0, '2023-06-12 21:08:43', '2023-06-12 21:08:43'),
(23, 23, 'Free Trade Zone', NULL, 'Bogota', '110111', 'CO', 'Bogota', 'John Doe', 'sb-ot3jm26283406@personal.example.com', 'creado', NULL, 0, '2023-06-12 21:14:01', '2023-06-12 21:14:01'),
(24, 24, 'Free Trade Zone', NULL, 'Bogota', '110111', 'CO', 'Bogota', 'John Doe', 'sb-ot3jm26283406@personal.example.com', 'creado', NULL, 0, '2023-06-12 21:14:59', '2023-06-12 21:14:59'),
(25, 25, 'Free Trade Zone', NULL, 'Bogota', '110111', 'CO', 'Bogota', 'John Doe', 'sb-ot3jm26283406@personal.example.com', 'creado', NULL, 0, '2023-06-12 21:15:31', '2023-06-12 21:15:31'),
(26, 26, 'Free Trade Zone', NULL, 'Bogota', '110111', 'CO', 'Bogota', 'John Doe', 'sb-ot3jm26283406@personal.example.com', 'recibido', 'saddsa', 0, '2023-06-12 21:17:50', '2023-06-13 00:40:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `pricing` decimal(12,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `extension` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `user_id`, `title`, `description`, `pricing`, `created_at`, `updated_at`, `extension`) VALUES
(1, 1, 'Combo Maleta Personal y Maleta de mano', 'Combo de maleta personal de ruedas, con medidas 50x30x15 cm ideal para viajes, además de una pequeña maleta de mano para que lleves contigo siempre tus cosas importantes.', '250.00', NULL, '2023-06-14 07:36:28', 'jpg'),
(2, 1, 'Maleta grande rígida azul', 'Maleta Azul celeste rigida grande, ideal para 2 o 3 personas con capacidad de 30 kg y medidas de 70x40x25 cm.', '300.00', NULL, '2023-06-14 07:40:04', 'jpg'),
(3, 1, 'Combo familiar de maletas', 'Combo de 3 maletas rígidas, una extra larga, una tamaño estándar y una pequeña maleta de mano, todas color azul con capacidades de 30, 15 y 5 kg respectivamente.', '450.00', '2023-06-12 03:36:56', '2023-06-14 07:43:09', 'jpg'),
(4, 1, 'Maleta personal tipo piloto', 'Maleta negra personal tipo piloto con capacidad de 8Kg y medidas 30x30x10cm ideal para viajes cortos', '80.00', '2023-06-12 03:43:03', '2023-06-14 07:45:39', 'jpg'),
(6, 1, 'Morral personal tipo ochentero', 'Morral personal negro tipo ochentero unisex ideal para el uso diario, además posee adaptador para cargar tu celular.', '40.00', '2023-06-12 05:17:33', '2023-06-14 07:49:04', 'jpg'),
(15, 2, 'Maleta de viaje personal', 'Maleta de viaje personal, con capacidad de 20 Kg y medidas de 60x40x20 cm ideal para viajes con mucha carga.', '85.00', '2023-06-14 06:04:10', '2023-06-14 07:34:56', 'jpeg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `shopping_carts`
--

CREATE TABLE `shopping_carts` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `shopping_carts`
--

INSERT INTO `shopping_carts` (`id`, `status`, `created_at`, `updated_at`, `customid`) VALUES
(1, 'incompleted', '2023-06-12 05:01:13', '2023-06-12 05:01:13', NULL),
(2, 'incompleted', '2023-06-12 05:02:05', '2023-06-12 05:02:05', NULL),
(3, 'incompleted', '2023-06-12 05:02:06', '2023-06-12 05:02:06', NULL),
(4, 'incompleted', '2023-06-12 05:02:23', '2023-06-12 05:02:23', NULL),
(5, 'incompleted', '2023-06-12 05:02:39', '2023-06-12 05:02:39', NULL),
(6, 'incompleted', '2023-06-12 05:02:55', '2023-06-12 05:02:55', NULL),
(7, 'incompleted', '2023-06-12 05:03:05', '2023-06-12 05:03:05', NULL),
(8, 'incompleted', '2023-06-12 05:04:34', '2023-06-12 05:04:34', NULL),
(9, 'incompleted', '2023-06-12 05:07:11', '2023-06-12 05:07:11', NULL),
(10, 'incompleted', '2023-06-12 10:12:00', '2023-06-12 10:12:00', NULL),
(11, 'incompleted', '2023-06-12 20:18:54', '2023-06-12 20:18:54', NULL),
(12, 'approved', '2023-06-12 20:18:58', '2023-06-12 21:02:18', 'b46a4fcfc229b787d37c13e77aed1634'),
(13, 'approved', '2023-06-12 21:02:18', '2023-06-12 21:03:09', 'cb97a7a905bb37016edba9ab5213fed5'),
(14, 'approved', '2023-06-12 21:03:09', '2023-06-12 21:03:33', '7d5982d33c9123bda89a416c0b33f494'),
(15, 'approved', '2023-06-12 21:03:33', '2023-06-12 21:04:00', '602d1d05060621d1f979eceda2ee4ce2'),
(16, 'approved', '2023-06-12 21:04:00', '2023-06-12 21:04:32', 'c42dae8d18e94c127c1455a73b5ea76b'),
(17, 'approved', '2023-06-12 21:04:32', '2023-06-12 21:06:27', '2cf8d45ef7a49bae7fbff9218d35d848'),
(18, 'approved', '2023-06-12 21:06:27', '2023-06-12 21:07:54', 'f3ee9c82b0216f906ed991d52cb9dd66'),
(19, 'approved', '2023-06-12 21:07:54', '2023-06-12 21:08:14', 'c91272fdc53c621ddf368b8f0ebb84af'),
(20, 'approved', '2023-06-12 21:08:14', '2023-06-12 21:08:22', '5d59b0b99b97e41e22d2817b5aa61d49'),
(21, 'approved', '2023-06-12 21:08:22', '2023-06-12 21:08:34', '4acab40ee16dad8f6f9e00300e38dde4'),
(22, 'approved', '2023-06-12 21:08:34', '2023-06-12 21:08:43', '96fc352399924fb265c9a409b33a8b99'),
(23, 'approved', '2023-06-12 21:08:43', '2023-06-12 21:14:01', '9e542335e9e9de8589631cad909b2d15'),
(24, 'approved', '2023-06-12 21:14:01', '2023-06-12 21:14:59', '8b661464f6f753882e6d98ba7a72ad99'),
(25, 'approved', '2023-06-12 21:14:59', '2023-06-12 21:15:31', '156641675de234a5d5937c67cdf6422e'),
(26, 'approved', '2023-06-12 21:15:31', '2023-06-12 21:17:50', 'b120760ca401f0596ccca823d4d30f25'),
(27, 'incompleted', '2023-06-12 21:17:50', '2023-06-12 21:17:50', NULL),
(28, 'incompleted', '2023-06-12 21:47:42', '2023-06-12 21:47:42', NULL),
(29, 'incompleted', '2023-06-12 23:46:42', '2023-06-12 23:46:42', NULL),
(30, 'incompleted', '2023-06-12 23:46:42', '2023-06-12 23:46:42', NULL),
(31, 'incompleted', '2023-06-13 00:10:28', '2023-06-13 00:10:28', NULL),
(32, 'incompleted', '2023-06-13 00:57:35', '2023-06-13 00:57:35', NULL),
(33, 'incompleted', '2023-06-13 00:59:26', '2023-06-13 00:59:26', NULL),
(34, 'incompleted', '2023-06-13 01:02:18', '2023-06-13 01:02:18', NULL),
(35, 'incompleted', '2023-06-13 01:04:17', '2023-06-13 01:04:17', NULL),
(36, 'incompleted', '2023-06-13 01:46:39', '2023-06-13 01:46:39', NULL),
(37, 'incompleted', '2023-06-13 01:57:13', '2023-06-13 01:57:13', NULL),
(38, 'incompleted', '2023-06-13 02:36:56', '2023-06-13 02:36:56', NULL),
(39, 'incompleted', '2023-06-13 02:37:41', '2023-06-13 02:37:41', NULL),
(40, 'incompleted', '2023-06-13 21:58:34', '2023-06-13 21:58:34', NULL),
(41, 'incompleted', '2023-06-14 05:47:19', '2023-06-14 05:47:19', NULL),
(42, 'incompleted', '2023-06-14 05:47:20', '2023-06-14 05:47:20', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Edwin', 'steven.esgl@hotmail.com', '$2y$10$VMMC8jYx9YscHpZ5Zmsj.eVCyaADUzZY2CNEBfdV2Pgyznu/yLyJO', '9YJGyavMMUOKnhR7rJlEc7MYR8x3MXCCaey4AL7guT8D2qLjEgFFjsJMfjMV', '2023-06-13 01:55:49', '2023-06-13 02:37:41'),
(3, 'juan', 'juan@juan.c', '$2y$10$qGhCniCEu.0H8urA9Xj1TOO3f0.AFaovk8vKfkSnueLHUma.2/ZIy', '2sliuXssSa4t2nS1gmmlXgpHnlZMARhmamLkhg2uEMkdL9V1i0O0L0DzPLCN', '2023-06-13 01:56:37', '2023-06-13 01:57:13'),
(4, 'Digcompedu', 'sanxd211@gmail.com', '$2y$10$xaNyMhY.Il1VxkMPyfVdC.ZOylI3RCU3cvKxtVcm7peP3D7JdrEV6', NULL, '2023-06-13 01:58:44', '2023-06-13 01:58:44');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `in_shopping_carts`
--
ALTER TABLE `in_shopping_carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `in_shopping_carts_product_id_foreign` (`product_id`),
  ADD KEY `in_shopping_carts_shopping_cart_id_foreign` (`shopping_cart_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_shopping_cart_id_foreign` (`shopping_cart_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_user_id_index` (`user_id`);

--
-- Indices de la tabla `shopping_carts`
--
ALTER TABLE `shopping_carts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shopping_carts_customid_unique` (`customid`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `in_shopping_carts`
--
ALTER TABLE `in_shopping_carts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `shopping_carts`
--
ALTER TABLE `shopping_carts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `in_shopping_carts`
--
ALTER TABLE `in_shopping_carts`
  ADD CONSTRAINT `in_shopping_carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `in_shopping_carts_shopping_cart_id_foreign` FOREIGN KEY (`shopping_cart_id`) REFERENCES `shopping_carts` (`id`);

--
-- Filtros para la tabla `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_shopping_cart_id_foreign` FOREIGN KEY (`shopping_cart_id`) REFERENCES `shopping_carts` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
