-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-04-2021 a las 16:18:34
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `blog`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `categoria` text DEFAULT NULL,
  `titulo` text DEFAULT NULL,
  `slug` text DEFAULT NULL,
  `texto_corto` text DEFAULT NULL,
  `texto_largo` text DEFAULT NULL,
  `imagen` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `blog`
--

INSERT INTO `blog` (`id`, `categoria`, `titulo`, `slug`, `texto_corto`, `texto_largo`, `imagen`, `created_at`, `updated_at`) VALUES
(1, '2', 'blog', '/postparacasados', 'blog para casados', 'Esta  blog es para los usuarios casados si quiere saber mas info', NULL, '2021-04-25 04:56:12', '2021-04-25 05:08:38'),
(2, '3', 'blog', '/postparasolteros', 'blog para solteros', 'Esta  blog es para los usuarios solteros', NULL, '2021-04-25 05:10:44', '2021-04-25 05:10:44'),
(3, 'solteros', 'blog', '/postparasolteros', 'blog para solteros', 'Esta  blog es para los usuarios solteros', NULL, '2021-04-25 09:49:25', '2021-04-25 09:49:25'),
(4, 'adultos', 'pruebita', '/pruebita', 'mis adultos', 'mis adultos mis adultos', NULL, '2021-04-26 12:54:13', '2021-04-26 12:54:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(5, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(6, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(7, '2016_06_01_000004_create_oauth_clients_table', 2),
(8, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('005f0deb7f20b8d74f35543dc1df2834b2ba5bf592908d432dc837f86c9c8bf2a53f66f9c86bffe3', 15, 3, 'blog', '[]', 0, '2021-04-26 06:04:38', '2021-04-26 06:04:38', '2022-04-26 01:04:38'),
('019ec850de66a137869eb6cab60787c7fd27d752900f138ccaa71f6d97f2f69f535dc347ea1fb1a0', 15, 3, 'blog', '[]', 0, '2021-04-26 07:50:29', '2021-04-26 07:50:29', '2022-04-26 02:50:29'),
('03c469f732648087f68bb36db1eb6c3579b6053e97ee9a1c1bc8c269641a19e82f3dacdbfb5c5d81', 15, 3, 'blog', '[]', 0, '2021-04-26 12:17:11', '2021-04-26 12:17:11', '2022-04-26 07:17:11'),
('044ce183beb3e40c256c4b4af6df9bac1fdebbb54b31a34a99f5a0c255c16a5a63ff67c4304ee382', 15, 3, 'blog', '[]', 0, '2021-04-26 05:23:44', '2021-04-26 05:23:44', '2022-04-26 00:23:44'),
('06831490068d95a16485c241ac0198a541a76148bbe3d7f27532f8f1d21cd215218259404a3b994d', 15, 3, 'blog', '[]', 0, '2021-04-26 07:50:46', '2021-04-26 07:50:46', '2022-04-26 02:50:46'),
('079eaf3bbc898e202c3f7ec3967a0908323bb8a23ceed124de8e3fdc3363d64c5f2743f1f49a6721', 15, 3, 'blog', '[]', 0, '2021-04-26 05:52:11', '2021-04-26 05:52:11', '2022-04-26 00:52:11'),
('0986e194c0269251e1b0c6403bae3c7c65c488a5b9dcf1048f28ef6260483d2a89a161f550716f44', 15, 3, 'blog', '[]', 0, '2021-04-26 06:02:05', '2021-04-26 06:02:05', '2022-04-26 01:02:05'),
('0d5d83a87270b3d53fcc01546f2fb4120a986df2e4e0b32070091fc136449b12a3c8e315dcec866b', 15, 3, 'blog', '[]', 0, '2021-04-26 05:41:11', '2021-04-26 05:41:11', '2022-04-26 00:41:11'),
('0db05495293d8888b1908bb0ba787025ed411066b8936ca98ca903e11848e5771cd274f1f9615e73', 15, 3, 'blog', '[]', 0, '2021-04-26 07:48:06', '2021-04-26 07:48:06', '2022-04-26 02:48:06'),
('0e44fbb947336fa2a60d17b13709d07bf158b338535fee1bb2d607907a2381d52b220d384218ea58', 15, 3, 'blog', '[]', 0, '2021-04-26 05:47:07', '2021-04-26 05:47:07', '2022-04-26 00:47:07'),
('0eb72c1be01e8ab6ad03cf2ca4849e3054de0c9fcba33bc26dc8f13e75a89e3a5009de77d24db39a', 15, 3, 'blog', '[]', 0, '2021-04-26 06:05:05', '2021-04-26 06:05:05', '2022-04-26 01:05:05'),
('11ae1a3339461df0f2d096173d0d7052a9a6e3d12753015a66092e34836d803949c535410d2da8c2', 15, 3, 'blog', '[]', 0, '2021-04-26 05:52:24', '2021-04-26 05:52:24', '2022-04-26 00:52:24'),
('17526f5a666cf23207d61b76fe46be61587149fab35d5cb21d5c30b3780220ea2ba9800a97278e86', 15, 3, 'blog', '[]', 0, '2021-04-26 10:23:12', '2021-04-26 10:23:12', '2022-04-26 05:23:12'),
('18a09ff4e25354638825fb244c3f7d9d76a2492cfa4951ffba0373ca7e30b0d2824c8466339f1308', 15, 3, 'blog', '[]', 0, '2021-04-26 05:52:31', '2021-04-26 05:52:31', '2022-04-26 00:52:31'),
('1a44feaf7182447eca2d977d58ba9c131011c630d74688559e06f9c9b95cd6889d78ecab1a269c96', 15, 3, 'blog', '[]', 0, '2021-04-26 06:05:13', '2021-04-26 06:05:13', '2022-04-26 01:05:13'),
('1ceacead0189dc85e8b7357d4aea3e3395529db29563e5be38759e1e9b1d863f0188e77e00cdcd57', 15, 3, 'blog', '[]', 0, '2021-04-26 06:13:55', '2021-04-26 06:13:55', '2022-04-26 01:13:55'),
('21cdbee5b2a73a0a7415769c816dd907d694118c55329aba17be47dfb721491df2442d2ac43ad3b8', 15, 3, 'blog', '[]', 0, '2021-04-26 05:56:12', '2021-04-26 05:56:12', '2022-04-26 00:56:12'),
('228996e99fda619e2bd1750cc465f99c9c9671046b0e156556cc7d25f9ba7feee220f0f1e3089f3d', 15, 3, 'blog', '[]', 0, '2021-04-26 05:48:26', '2021-04-26 05:48:26', '2022-04-26 00:48:26'),
('248d818bae225d722d9cc69a09575df094439fd4915b96ef0051495da6c6efc3477cda823f33dcb0', 15, 3, 'blog', '[]', 0, '2021-04-26 06:09:10', '2021-04-26 06:09:10', '2022-04-26 01:09:10'),
('25b7df2af9e23dd4b931a7486d449732228d4ccd0c932c8cc5425f5cde147501715ace5eb88384b9', 15, 3, 'blog', '[]', 0, '2021-04-26 05:27:19', '2021-04-26 05:27:19', '2022-04-26 00:27:19'),
('28677b1489b84dc604fc9fde41ec1bc62ccccd89f8e6ce2ddce9d7bc70521554451677d049cc6257', 15, 3, 'blog', '[]', 0, '2021-04-26 08:07:43', '2021-04-26 08:07:43', '2022-04-26 03:07:43'),
('2b2f8483cb4a1737d372d83f304ae42c4d91fb0bb3e3186594f162f13b1ad11c51509a23505e910d', 15, 3, 'blog', '[]', 0, '2021-04-26 05:57:59', '2021-04-26 05:57:59', '2022-04-26 00:57:59'),
('2b8a2766cab6b7c37702628d7578c13575fc406cd46d107407b878b406d1f272247403f43e4aabdb', 15, 3, 'blog', '[]', 0, '2021-04-26 05:45:24', '2021-04-26 05:45:24', '2022-04-26 00:45:24'),
('2e92b605c5abd512b3fdf3b7a9b798a6464bb4760e7d5dfbda1c82a17f3289003b8500f6f3db540e', 15, 3, 'blog', '[]', 0, '2021-04-26 05:22:02', '2021-04-26 05:22:02', '2022-04-26 00:22:02'),
('30ab171d7f652c94296aa4430791d01a216bb70c6c4f57620cebfe3942ced58793ea777e2b5d368d', 15, 3, 'blog', '[]', 0, '2021-04-26 05:56:12', '2021-04-26 05:56:12', '2022-04-26 00:56:12'),
('3128f9a7088e8e5591ed1060511ad84d610e71a869c1185fe539be416736efdc07df752ddc0f9b7a', 15, 3, 'blog', '[]', 0, '2021-04-26 07:51:06', '2021-04-26 07:51:06', '2022-04-26 02:51:06'),
('330abfca2771c44422912853b357012ee0698bbd27d4672cf29f1a90d7f99b5c0393ba00a692caff', 15, 3, 'blog', '[]', 0, '2021-04-26 08:11:01', '2021-04-26 08:11:01', '2022-04-26 03:11:01'),
('3870a56167a63910ec433972c567e07249c5f4fd174ee4249a6af45a3c10ce520393231e31a89889', 15, 3, 'blog', '[]', 0, '2021-04-26 09:57:28', '2021-04-26 09:57:28', '2022-04-26 04:57:28'),
('3a59561f9c4d21bf6dfa9636bf7db3808fc8aa49b7b332a5a35053498290bcbbb5d81b5dfa9418f7', 15, 3, 'blog', '[]', 0, '2021-04-26 08:09:30', '2021-04-26 08:09:30', '2022-04-26 03:09:30'),
('3b474645c6f84e033d50e1b2ee6cf2f95b66d94e3db7a2e207f22d4a345055b67ef28b4c2e6c7855', 15, 3, 'blog', '[]', 0, '2021-04-26 06:15:21', '2021-04-26 06:15:21', '2022-04-26 01:15:21'),
('3c58c390f27ca42971708f824b08b8c9d5e934cb8e9d36044f115f5595ca74d164f0fd15060a63d3', 15, 3, 'blog', '[]', 0, '2021-04-26 09:21:20', '2021-04-26 09:21:20', '2022-04-26 04:21:20'),
('3d5c1b9de8bb8ece66a76e1a55c614d6c59216574666014eefd87f877354529ca515c28aed39729d', 15, 3, 'blog', '[]', 0, '2021-04-26 06:02:05', '2021-04-26 06:02:05', '2022-04-26 01:02:05'),
('3e0420341ebea560045f7449a02c52affc26540ea7faa101ec7284d6a6e8ddbd712d5a64f11c380c', 15, 3, 'blog', '[]', 0, '2021-04-26 05:52:42', '2021-04-26 05:52:42', '2022-04-26 00:52:42'),
('3fb9a75f8ed36e2c861b0eb6f8ef0c0ff99770798f4241bf40e2ed3a44209cdea2e3509d675c5259', 15, 3, 'blog', '[]', 0, '2021-04-26 05:56:07', '2021-04-26 05:56:07', '2022-04-26 00:56:07'),
('40402a6823d1e56b5d9f22f2cf4739719c7df1003355d7187e979dc1c3321378caeb8c1291de0bc3', 15, 3, 'blog', '[]', 0, '2021-04-26 06:18:29', '2021-04-26 06:18:29', '2022-04-26 01:18:29'),
('4962064adbbbe590913a0fb1bc61299bfd353975d7e124a4d12aef1f460e6c7ce710489011ded2ad', 15, 3, 'blog', '[]', 0, '2021-04-26 05:54:13', '2021-04-26 05:54:13', '2022-04-26 00:54:13'),
('4ada8a988fb667796cea590494160aef67491e381184b6153548cbda779479fcb3a481bfb4b32764', 15, 3, 'blog', '[]', 0, '2021-04-26 06:23:06', '2021-04-26 06:23:06', '2022-04-26 01:23:06'),
('4cd4bf06b00dd5845ac72a01fd42b69da9d66e43a409b343b81605253ea59a0ce8ccfec37b1bb4f3', 15, 3, 'blog', '[]', 0, '2021-04-26 06:02:05', '2021-04-26 06:02:05', '2022-04-26 01:02:05'),
('5031cccd7bafdea5ffdffcb0ca7f723158dc55575f149075d51f0687766fc931599770c48bfa5887', 15, 3, 'blog', '[]', 0, '2021-04-26 05:36:11', '2021-04-26 05:36:11', '2022-04-26 00:36:11'),
('50e4cc63796fcddeb9d002b530256e1abcd68ffc1ff667380e2be5d2754d1b25a1d7eef0314895b8', 15, 3, 'blog', '[]', 0, '2021-04-26 05:28:21', '2021-04-26 05:28:21', '2022-04-26 00:28:21'),
('525d74c6281e642abb6592ac8f223b530c961d5178c9ffffc9809077c3563d0e52454c95b55928b1', 15, 3, 'blog', '[]', 0, '2021-04-26 05:28:25', '2021-04-26 05:28:25', '2022-04-26 00:28:25'),
('542c7e609b8286ae3a4bb26701793e3446e98971f84e26a2be18eee9f59b5f376636c7776a5042f7', 15, 3, 'blog', '[]', 0, '2021-04-26 06:51:40', '2021-04-26 06:51:40', '2022-04-26 01:51:40'),
('5491d53bda5d603b942bc03ace247cecc8aa43810a50e92726a4da1abb1fe16bc6750e1cb47eeda3', 15, 3, 'blog', '[]', 0, '2021-04-26 05:53:02', '2021-04-26 05:53:02', '2022-04-26 00:53:02'),
('5563fe20ddaac60c23ab82aeb12bedaf10faa755e3a12216a3ef6a0d06e9bc91c53117c3cbfce67f', 15, 3, 'blog', '[]', 0, '2021-04-26 05:51:15', '2021-04-26 05:51:15', '2022-04-26 00:51:15'),
('56e8c4a1e537c913d22c42ba5f3e9f08ec1f636e682fb8d61e62f542870243d53e30713198c2ff73', 15, 3, 'blog', '[]', 0, '2021-04-26 05:16:59', '2021-04-26 05:16:59', '2022-04-26 00:16:59'),
('5884bed7b15521044193aacaac3bd8b7a09fc09a60f12fe806cfb719f4da77fc1b8b700c977e7351', 15, 3, 'blog', '[]', 0, '2021-04-26 05:31:26', '2021-04-26 05:31:26', '2022-04-26 00:31:26'),
('5ac644b0ec56776b79c18eed48f980382f1d5c00e5d02ad6ab2820262ebb04e73c5378922f848e0e', 15, 3, 'blog', '[]', 0, '2021-04-26 05:36:14', '2021-04-26 05:36:14', '2022-04-26 00:36:14'),
('5b91e4e60a7e2932644bf2bf1003aed004b5d12005d189957cc53e6d15fb95ada6b01da371609a46', 15, 3, 'blog', '[]', 0, '2021-04-26 05:44:03', '2021-04-26 05:44:03', '2022-04-26 00:44:03'),
('66012dbc681dabbfd48f156f20e3119211ed9741b7f508ea5e07afda22503b794f6bad0cae02ba5e', 15, 3, 'blog', '[]', 0, '2021-04-26 05:28:18', '2021-04-26 05:28:18', '2022-04-26 00:28:18'),
('6947e2bcbd05bcd5681b2035ab3e438500227427fa3a5b1588485ff5ec2d21d8b47a772a3413d844', 15, 3, 'blog', '[]', 0, '2021-04-26 09:25:55', '2021-04-26 09:25:55', '2022-04-26 04:25:55'),
('6a7326d14ad9bdb87a26d3dbe309d51710d0ef77923acb87087e85078ab17eb7ecce5bb4ca147ba1', 15, 3, 'blog', '[]', 0, '2021-04-26 05:37:05', '2021-04-26 05:37:05', '2022-04-26 00:37:05'),
('6a7d8026c75f5dfed7ef2042446f696ab3339dcc388f2fc789667562fac9ef79bc7e8de44f0906c1', 15, 3, 'blog', '[]', 0, '2021-04-26 05:42:25', '2021-04-26 05:42:25', '2022-04-26 00:42:25'),
('6ac4f1268ab2272e427595009bcfdc8f9df682be2634653e1952baa6be1d78c3855e5e978222b964', 15, 3, 'blog', '[]', 0, '2021-04-26 06:16:55', '2021-04-26 06:16:55', '2022-04-26 01:16:55'),
('6dd732ee1f8c4b766ee3c5d00d33154a03f5673377eec7fd69b84499cf425aea59d87203a500ea75', 15, 3, 'blog', '[]', 0, '2021-04-26 05:28:22', '2021-04-26 05:28:22', '2022-04-26 00:28:22'),
('70c0c0db483119f70094511dee85de0d20dff926ec9c4e3041627ce44afb520bab162bdd1cf3e8e6', 15, 3, 'blog', '[]', 0, '2021-04-26 05:56:11', '2021-04-26 05:56:11', '2022-04-26 00:56:11'),
('7104b97feee98875166ed2262bc7b2b260b1f80bde6abb901af9e897ecb14f941fce9e80882795c4', 15, 3, 'blog', '[]', 0, '2021-04-26 06:02:04', '2021-04-26 06:02:04', '2022-04-26 01:02:04'),
('7340a8bc69a23e80c205fb3de0e8df4d1f98b1508eedf51c5c8d4c89d831179e71701b3932b99f0e', 15, 3, 'blog', '[]', 0, '2021-04-26 06:03:45', '2021-04-26 06:03:45', '2022-04-26 01:03:45'),
('74ee93526786978547b6615310068dc5aefbeaa3ddb59b1d8ef7a617ca799c5701eb297c33b325c4', 15, 3, 'blog', '[]', 0, '2021-04-26 05:33:13', '2021-04-26 05:33:13', '2022-04-26 00:33:13'),
('753d61ed3a286d2e3b890c5d6f7ec194ed6e39d4a5b69a445796240e2f1a9c318f3d8bf122547fae', 15, 3, 'blog', '[]', 0, '2021-04-26 12:33:06', '2021-04-26 12:33:06', '2022-04-26 07:33:06'),
('75db3e52b894c02e61665df16da5e468941085813cb349e2643fe2144e7ab4a3df2186dd27737f97', 15, 3, 'blog', '[]', 0, '2021-04-26 05:56:09', '2021-04-26 05:56:09', '2022-04-26 00:56:09'),
('77ff02b8ab971410e4c73bf8366c98b9459dca4d66c628aae97ce0069c1af62008adfe863638b289', 15, 3, 'blog', '[]', 0, '2021-04-26 06:52:20', '2021-04-26 06:52:20', '2022-04-26 01:52:20'),
('78d09c17d6b98723d880e386913531f15f5111730866b2174c0c7a359e01454cd856940e015d4e4e', 15, 3, 'blog', '[]', 0, '2021-04-25 09:24:08', '2021-04-25 09:24:08', '2022-04-25 04:24:08'),
('7acb93759571bc0ae060bbb4cf1cf29d321d7295b3da2e0be34b544e3beb1db2ad4b51a14b4dd255', 15, 3, 'blog', '[]', 0, '2021-04-26 05:35:04', '2021-04-26 05:35:04', '2022-04-26 00:35:04'),
('7bf30c60af6ef8cd262df4528b9e40ef0e4b96df71e15042b5e5e52f69d623cf956651dde3859f69', 15, 3, 'blog', '[]', 0, '2021-04-25 09:45:15', '2021-04-25 09:45:15', '2022-04-25 04:45:15'),
('7d30754981a1994f99172ccb78446652c8fb5d472257405b61a31a8e11f33b7516c00d07767d6216', 15, 3, 'blog', '[]', 0, '2021-04-26 06:23:28', '2021-04-26 06:23:28', '2022-04-26 01:23:28'),
('7ebd9100a17e13b057001f35d658e978ac1342d0b3fc8f6490e2218be85b0d937cb413f61d21440d', 15, 3, 'blog', '[]', 0, '2021-04-26 05:53:29', '2021-04-26 05:53:29', '2022-04-26 00:53:29'),
('81b0a1ac111011049ae8d915e0caa46ffc01b32c898f16644c0900f3d7caffad54735fd51e95c39e', 15, 3, 'blog', '[]', 0, '2021-04-26 05:56:13', '2021-04-26 05:56:13', '2022-04-26 00:56:13'),
('8705944fcaea6109dab66860b40e3e0381638a7829497b27e297520c804953ca4a190b5c25ef32d9', 37, 3, 'blog', '[]', 0, '2021-04-26 10:52:41', '2021-04-26 10:52:41', '2022-04-26 05:52:41'),
('8b98c86904a3e04ec5e2deb0703ccb91ee7cd30edde6583e2f51a207fdfd6c4c0ba75cc811f9e2c6', 15, 3, 'blog', '[]', 0, '2021-04-26 07:03:04', '2021-04-26 07:03:04', '2022-04-26 02:03:04'),
('8e28cd87602c1ac188c4bbd2d12aa3d74f5dc50b84d2fec70f4ebea4fc2585328d57e633b7ad0f00', 15, 3, 'blog', '[]', 0, '2021-04-26 05:48:00', '2021-04-26 05:48:00', '2022-04-26 00:48:00'),
('8f513e49ab6c50578cab45053def5f756dd556586e7c8865db0d9ab105b1e96992285f155e94ac3c', 15, 3, 'blog', '[]', 0, '2021-04-26 05:51:54', '2021-04-26 05:51:54', '2022-04-26 00:51:54'),
('909f9e614fc569df3c32945f816f4404bacdb6b669a0ee81f05c37279fd6e7830453a213ac5a65c7', 15, 3, 'blog', '[]', 0, '2021-04-26 06:03:22', '2021-04-26 06:03:22', '2022-04-26 01:03:22'),
('9284e5962de7fd4173025589e2df4bd3153bc523b956ed1e13fa877ed2d2db150565035f9ce3727a', 15, 3, 'blog', '[]', 0, '2021-04-26 06:19:19', '2021-04-26 06:19:19', '2022-04-26 01:19:19'),
('9291c3c1958c254a824fc375c105a93019f2bde905461ef5f910f7554c040e87e1fc94a770e9a60b', 15, 3, 'blog', '[]', 0, '2021-04-26 07:00:29', '2021-04-26 07:00:29', '2022-04-26 02:00:29'),
('9516f96b7af5f260ed9b82ab93f293104bfe42d35dde79ffe0951363fca584287c2fb8d1d504b21d', 15, 3, 'blog', '[]', 0, '2021-04-26 05:56:12', '2021-04-26 05:56:12', '2022-04-26 00:56:12'),
('9584e6c36738215b246b1219fc8483ab4001356d8c532449ef3115de207320e86f1c19e01b072f2c', 15, 3, 'blog', '[]', 0, '2021-04-26 05:34:24', '2021-04-26 05:34:24', '2022-04-26 00:34:24'),
('9708a274acb2c9681714e2b5e3e453a28642dffb8d191d63947f5b5ac8a67e59af1e6796a82c1638', 15, 3, 'blog', '[]', 0, '2021-04-26 05:38:06', '2021-04-26 05:38:06', '2022-04-26 00:38:06'),
('98a63d9912ee5bf91593864fc8678c359f70889963f6db6674049f4daca8b53d57f2ced3bf881776', 15, 3, 'blog', '[]', 0, '2021-04-26 05:51:52', '2021-04-26 05:51:52', '2022-04-26 00:51:52'),
('9f9f31ba2a21c12cdd1021cf2a6eba9b72d34a1b1e700e82fa42bc3331fac0ef3f1f1c10a7da63b9', 15, 3, 'blog', '[]', 0, '2021-04-25 09:23:38', '2021-04-25 09:23:38', '2022-04-25 04:23:38'),
('a11c923d4d1909b90ae842e3c34a3697170d2f791d5350daadd625309baefe22a7560c5bcdb807f1', 15, 3, 'blog', '[]', 0, '2021-04-26 05:15:22', '2021-04-26 05:15:22', '2022-04-26 00:15:22'),
('a454a700a381e7b229df91ccf70827e3c588f3ff4f6c7d821a1f651f7e6bbb584015f596bb83741f', 15, 3, 'blog', '[]', 0, '2021-04-26 06:58:53', '2021-04-26 06:58:53', '2022-04-26 01:58:53'),
('a4e6d335208070ac272b857b8eb1a4c204d6a147db83b70884caaa2bb24f8e64cd0a566c0dfe6cb0', 15, 3, 'blog', '[]', 0, '2021-04-26 05:44:59', '2021-04-26 05:44:59', '2022-04-26 00:44:59'),
('a5c8d0fd7b0ec53ec37deb6be5419f8acb1d2c98532463b149d291bfe46618c69951e5457286c42c', 15, 3, 'blog', '[]', 0, '2021-04-26 05:54:15', '2021-04-26 05:54:15', '2022-04-26 00:54:15'),
('abce8ed212219bd53c638cbe27b3a590793a2f1281433b029903b4e67b64d45c9abb5b7b2edaa95f', 15, 3, 'blog', '[]', 0, '2021-04-26 09:28:46', '2021-04-26 09:28:46', '2022-04-26 04:28:46'),
('ac1d54829809650a2d32817223fb2eb61d0ad8a11dbad4bd479f4001a90903369770ac75b973be87', 36, 3, 'blog', '[]', 0, '2021-04-26 10:46:29', '2021-04-26 10:46:29', '2022-04-26 05:46:29'),
('af56471a8136cea80e5189d479f353cebfb3fb69eef76495a7cb6f3437167a90e5f3f18f7150ac59', 15, 3, 'blog', '[]', 0, '2021-04-26 06:27:26', '2021-04-26 06:27:26', '2022-04-26 01:27:26'),
('b03f1249dc7541978c151b56f49cd53ccd13857945cb5e7496e2d26a392b3e7a4167045022d3d551', 15, 3, 'blog', '[]', 0, '2021-04-26 05:56:12', '2021-04-26 05:56:12', '2022-04-26 00:56:12'),
('b04b8d97dedebfc03e8fb463974d4713959af4ac251741330578a734f0dfe658668906fbd5b95e39', 15, 3, 'blog', '[]', 0, '2021-04-26 05:56:11', '2021-04-26 05:56:11', '2022-04-26 00:56:11'),
('b1333e6e998ae501bea7d2cb613b24ac5ed0e87c0549a3d02ac25529884c81bf5697cd71734f9909', 15, 3, 'blog', '[]', 0, '2021-04-26 06:24:33', '2021-04-26 06:24:33', '2022-04-26 01:24:33'),
('b3b2ae6661d10ab4474a1388c39494643ebb2ef48ae27c80bcdfe639a3eb0ab5b0ccfb8583496ef9', 15, 3, 'blog', '[]', 0, '2021-04-26 06:02:01', '2021-04-26 06:02:01', '2022-04-26 01:02:01'),
('b5ae92c7346782d4eec8fcca618fd6ea1fa2c8f8b9d4dfe1d869452095addc5cc607697d00249e29', 15, 3, 'blog', '[]', 0, '2021-04-26 06:05:17', '2021-04-26 06:05:17', '2022-04-26 01:05:17'),
('b7a2df72c6ad847131c6d6459a4055fe935071ef1a5a798c80b0b4a52d830956de98795f554fbe34', 37, 3, 'blog', '[]', 0, '2021-04-26 10:52:53', '2021-04-26 10:52:53', '2022-04-26 05:52:53'),
('b7cbb6ce60986172e5fc7b649eb09856846d1c146eaae54b3a36115e109fcd5426f3304c9a306431', 15, 3, 'blog', '[]', 0, '2021-04-26 05:45:24', '2021-04-26 05:45:24', '2022-04-26 00:45:24'),
('b7ffe1b4de88766259eedf32cd9d4830809aff27b9d63a9d0e42ae84aa03d1a4f178929dcc2b6184', 15, 3, 'blog', '[]', 0, '2021-04-26 06:02:05', '2021-04-26 06:02:05', '2022-04-26 01:02:05'),
('b9459cfe9e8b9f8734bf35f6ea8b737a02ac2c7ed9703d1c61bcfe75367c53078640f1d5e6720166', 15, 3, 'blog', '[]', 0, '2021-04-26 05:50:00', '2021-04-26 05:50:00', '2022-04-26 00:50:00'),
('ba767437af64a90f1d8b2bd3c9f64124a714e6709823911276d12117cd53115efd8ba5cf678ceb78', 15, 3, 'blog', '[]', 0, '2021-04-26 05:54:09', '2021-04-26 05:54:09', '2022-04-26 00:54:09'),
('bc9de3c84aa2b0c0977d79d1c0e13d39c89a4bdf61f5f8849d1454e03af29c80e4004871f1e2300e', 15, 3, 'blog', '[]', 0, '2021-04-26 05:54:12', '2021-04-26 05:54:12', '2022-04-26 00:54:12'),
('bd1a3c7baefcb8c4811aad3aa48bef5623643c8c7dd233fcc801f665e6b4c4c6dedce7c569c6ca1f', 15, 3, 'blog', '[]', 0, '2021-04-26 05:00:30', '2021-04-26 05:00:30', '2022-04-26 00:00:30'),
('bd31d6d360fb40b82bfbd0bde0e8bfa9269ecbbc2d5e5f7af5be485f3bb29b10973b9e0c340328bd', 15, 3, 'blog', '[]', 0, '2021-04-26 05:31:54', '2021-04-26 05:31:54', '2022-04-26 00:31:54'),
('bd3ce5d20bbe13454e361f5baa70aa25e73a2e1f68fed449cceab77c8a43bc00108187155da98c1d', 15, 3, 'blog', '[]', 0, '2021-04-26 05:14:23', '2021-04-26 05:14:23', '2022-04-26 00:14:23'),
('c32021ad60b7c47f7d6e33229f5f00ec40093dc74a159c3e4e47f0a89ba78d11fd84df22e68fc354', 15, 3, 'blog', '[]', 0, '2021-04-26 05:56:04', '2021-04-26 05:56:04', '2022-04-26 00:56:04'),
('c4c8f9659536303a736df67751722492a49f07c98b642c9379c7072a557acae1a302e8dac801a5e3', 15, 3, 'blog', '[]', 0, '2021-04-26 08:49:04', '2021-04-26 08:49:04', '2022-04-26 03:49:04'),
('c979bb09a46a4a17b8755d3d34c7f688659e01ad41276c3c4839ddb76ee9c22d7f454de82a5b184d', 15, 3, 'blog', '[]', 0, '2021-04-26 05:56:12', '2021-04-26 05:56:12', '2022-04-26 00:56:12'),
('c9e89c1e5e371980be37bd625d7527294203f3617cc1d5eff0a9a36c56f803dbe00648014de276f3', 15, 3, 'blog', '[]', 0, '2021-04-26 06:26:04', '2021-04-26 06:26:04', '2022-04-26 01:26:04'),
('cb56dbd0f702823bb5b1f2d3cc21616797b8e82824a6e995e7b198fa0e7496d7c6eb6bc4f48f0f77', 15, 3, 'blog', '[]', 0, '2021-04-26 05:50:27', '2021-04-26 05:50:27', '2022-04-26 00:50:27'),
('cb858d37f320ffe73f601313281147e5a69e61cdeebe984cb0228fd1cd9d7155654205bec653db14', 15, 3, 'blog', '[]', 0, '2021-04-26 06:22:45', '2021-04-26 06:22:45', '2022-04-26 01:22:45'),
('cca6065443173fc002fe5f5df5a0c6b78c7c545041c13c744e03c6cd8c3c52025fd77809cf1e251a', 15, 3, 'blog', '[]', 0, '2021-04-26 06:14:06', '2021-04-26 06:14:06', '2022-04-26 01:14:06'),
('ce83313a98169fcf9e11f6e7d912737ff6657868f2d1b909ffc4d702aeaf32f0e37698a484378930', 15, 3, 'blog', '[]', 0, '2021-04-26 08:09:46', '2021-04-26 08:09:46', '2022-04-26 03:09:46'),
('ce9cfbcc20da14c0a7e516e42c515e2b1b33a9da68de67ec0c5744bf06b57a8c4a61cc5ced62cb91', 15, 3, 'blog', '[]', 0, '2021-04-26 08:12:59', '2021-04-26 08:12:59', '2022-04-26 03:12:59'),
('d20230475a9b49a2b567f9f22f88e76c73284f417aad8582777ad08ed9ba81d47151d1f0f0421a12', 15, 3, 'blog', '[]', 0, '2021-04-26 05:56:11', '2021-04-26 05:56:11', '2022-04-26 00:56:11'),
('d2810d0e2aecafcdd2131a55e8f0a36786952e8cf4876e008121e68d9dbe2deb1e3a16e825147e9b', 15, 3, 'blog', '[]', 0, '2021-04-26 05:33:03', '2021-04-26 05:33:03', '2022-04-26 00:33:03'),
('d2fb2a0c6b27c176a5bcf7c5aa2cf822b49ca4008592a76826d3d96ec7cf2380932fdb8fdb6b8847', 15, 3, 'blog', '[]', 0, '2021-04-26 06:02:03', '2021-04-26 06:02:03', '2022-04-26 01:02:03'),
('d4427ae67a3fa9350abf9487241d570a3dc0907a3dab7317c1fff95761fb3f2ace995db372fee22b', 15, 3, 'blog', '[]', 0, '2021-04-26 06:18:12', '2021-04-26 06:18:12', '2022-04-26 01:18:12'),
('d46f5b42827a2a375fc156abf554843ab22c7776c06dd3efb8e0be0fd3ff47673586dd500530f5cb', 15, 3, 'blog', '[]', 0, '2021-04-26 09:26:31', '2021-04-26 09:26:31', '2022-04-26 04:26:31'),
('d594e8561c490c873f28eb87af27d56bc97a32da99bb6979e3a381e1631ffa93e19df54eeb3dc4fd', 15, 3, 'blog', '[]', 0, '2021-04-26 08:12:04', '2021-04-26 08:12:04', '2022-04-26 03:12:04'),
('d66d3deb6409025efe0a20254c294492831e5f6a35d1982510900bfe518e3b3c95f483e172b88026', 15, 3, 'blog', '[]', 0, '2021-04-26 05:56:10', '2021-04-26 05:56:10', '2022-04-26 00:56:10'),
('d97825351890f3577d0cced9aaa29d14618786a5453f59574402af706ca19d0dff145df85dafba31', 15, 3, 'blog', '[]', 0, '2021-04-26 06:15:51', '2021-04-26 06:15:51', '2022-04-26 01:15:51'),
('dc8fddc99f4caea403d38d3edd0fa2fc2da2e8f0dde87bb0be89e361e6c651da5a695a608ba2b95f', 15, 3, 'blog', '[]', 0, '2021-04-26 07:49:39', '2021-04-26 07:49:39', '2022-04-26 02:49:39'),
('dd2cf9746204aa1f36e6bce1605876b2922e270ecc7b3e251da6167f70bb70db4d98bde28632951c', 15, 3, 'blog', '[]', 0, '2021-04-26 09:48:22', '2021-04-26 09:48:22', '2022-04-26 04:48:22'),
('dde0772f409867131248a90911b8ff68fb06628473d1bdf97065ae6158112aa7229c9d526d4bd00c', 15, 3, 'blog', '[]', 0, '2021-04-26 06:04:51', '2021-04-26 06:04:51', '2022-04-26 01:04:51'),
('e589872cf9eb02cf50e26b46784969fa35ec43ed3b6f4d9955ea4805f5016c2aa08658f06639b850', 15, 3, 'blog', '[]', 0, '2021-04-26 06:22:12', '2021-04-26 06:22:12', '2022-04-26 01:22:12'),
('e79fbde96f111e098e1c992417a6527f30cda06fdbee88affea237a1315c958d2d52bae10134405b', 15, 3, 'blog', '[]', 0, '2021-04-26 05:52:47', '2021-04-26 05:52:47', '2022-04-26 00:52:47'),
('ea219e3af8f3178720209efefdda87af1090ef9258ed9089c97579dbe7e2857492a7870ccebc25cb', 15, 3, 'blog', '[]', 0, '2021-04-26 05:56:17', '2021-04-26 05:56:17', '2022-04-26 00:56:17'),
('ebd565964b82cdcc1860f9b0635c21a0f71b4abc50a5cd9bc1d5d3c55702527520d4364a3e82e4e4', 15, 3, 'blog', '[]', 0, '2021-04-26 05:29:26', '2021-04-26 05:29:26', '2022-04-26 00:29:26'),
('edf51ee8c6347c4c206f037ff1195362a7b488329ed9a4a565ccd61bb8e0f6be53e8cf794f870d39', 15, 3, 'blog', '[]', 0, '2021-04-26 05:56:10', '2021-04-26 05:56:10', '2022-04-26 00:56:10'),
('eef92b90d32d3e4bed19b62780fafc5d66b9c79fb49827a9e1ddd68e7855542bad4c9d239a8a656a', 15, 3, 'blog', '[]', 0, '2021-04-26 05:56:11', '2021-04-26 05:56:11', '2022-04-26 00:56:11'),
('efeca4d51bf6a09c59e8d1a12426d74a68e3540327719816c85988ce2723180ae5b73f1559380144', 15, 3, 'blog', '[]', 0, '2021-04-25 09:28:39', '2021-04-25 09:28:39', '2022-04-25 04:28:39'),
('f3fb170e31bc7514a8b577e58d2c944687f34a966de3b3abc1248381a1e14b0f8e4c9f597aa52f7a', 15, 3, 'blog', '[]', 0, '2021-04-26 06:03:17', '2021-04-26 06:03:17', '2022-04-26 01:03:17'),
('f5f35c01b464055c433cda0680d5d9b58af3e55394420b6ba1a884b6da5635ab4ce731dcead02591', 15, 3, 'blog', '[]', 0, '2021-04-26 06:17:50', '2021-04-26 06:17:50', '2022-04-26 01:17:50'),
('f9497ca8d4feaaf9a8de00c9c8bf17a3720c769a30ab70ff20626bca3fb6c92eaf654333e655efee', 15, 3, 'blog', '[]', 0, '2021-04-26 05:20:08', '2021-04-26 05:20:08', '2022-04-26 00:20:08'),
('fc1bc167789d7d22897c3ff6c6b6f1dc1a0d0f3a02a95003fd7c7edb239bb2afe9d66d8de46b4a54', 15, 3, 'blog', '[]', 0, '2021-04-26 10:51:22', '2021-04-26 10:51:22', '2022-04-26 05:51:22'),
('fce937412ba34b0321555192f8f7b127322ff18455407ef496a9ca7afb520c551a91926e6b341ef0', 15, 3, 'blog', '[]', 0, '2021-04-26 05:13:29', '2021-04-26 05:13:29', '2022-04-26 00:13:29'),
('fd236b35bb175aa302d632d1684e3604b21fcbcfcf5a6b801c5de372970075395f0238abeeb2a9fd', 15, 3, 'blog', '[]', 0, '2021-04-26 06:19:33', '2021-04-26 06:19:33', '2022-04-26 01:19:33'),
('fdb4313b4ff8a9edec2947bed15a6796e6e8420c6d849ba9f678ba3b360b6ea6bd267388cd8aaebe', 15, 3, 'blog', '[]', 0, '2021-04-26 08:40:33', '2021-04-26 08:40:33', '2022-04-26 03:40:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', '5AwCl2426b5QdcFFKfrXuPGx5Gm1P0BYU2VtLwDp', NULL, 'http://localhost', 1, 0, 0, '2021-04-24 23:16:03', '2021-04-24 23:16:03'),
(2, NULL, 'Laravel Password Grant Client', 'egj5ZcOy3DrUWP0KHG59EWGyssI8cf11tl178a3n', 'users', 'http://localhost', 0, 1, 0, '2021-04-24 23:16:03', '2021-04-24 23:16:03'),
(3, NULL, 'blog', 'y3JVlsvAzTu7A8vrQO7gXsauhZw3wFiLiZ1UbkAF', NULL, 'http://localhost', 1, 0, 0, '2021-04-24 23:24:59', '2021-04-24 23:24:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-04-24 23:16:03', '2021-04-24 23:16:03'),
(2, 3, '2021-04-24 23:24:59', '2021-04-24 23:24:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'administrador', '2021-04-25 02:24:55', '2021-04-25 02:24:55'),
(2, 'participante', '2021-04-25 02:24:55', '2021-04-25 02:24:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` text NOT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `tipo_usuario_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `rol_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `email`, `password`, `telefono`, `tipo_usuario_id`, `created_at`, `updated_at`, `rol_id`) VALUES
(15, 'lina', 'lina@grupokonecta.com', '$2y$10$yKdbBVvvD1dg/fwYmGGJbu/LhaFXsQGlkv8fo9GBB3rYok2/j.yBO', '31244444', 1, '2021-04-25 07:36:58', '2021-04-25 07:36:58', 2),
(16, 'lina', 'lina@grupokonecta.com', '$2y$10$3WJ8l5yWyHJhtZAgYez3y.276lJpAN9d6IMdJ/GGsVhcv1IfLvN86', '31244444', NULL, '2021-04-26 10:26:43', '2021-04-26 10:26:43', 2),
(17, 'carlos', 'carlos@grupokonecta.co', '$2y$10$bENYdPIGsb0sMGaAm/QOE.tFx2ygUP2n6Y1376j6iikUQppLnmiLa', '12312', NULL, '2021-04-26 10:33:01', '2021-04-26 10:33:01', 2),
(18, 'juan', 'juan@grupo.com', '$2y$10$MlxTW/uex5FClVxVwhybie1ZNz8I1Sh0rv9q1nvj5Rnuy3P/4V.62', '3444', NULL, '2021-04-26 10:34:41', '2021-04-26 10:34:41', 2),
(19, 'asd', 'asda@dd.com', '$2y$10$c9IOIpac.iBT64Bm3jg5SeEsTX5soYAtTNd4iw25VDoU95xlCIFXi', '1123', NULL, '2021-04-26 10:36:20', '2021-04-26 10:36:20', 2),
(20, 'asd', 'asda@dd.com', '$2y$10$oJwbF/ZcWXAcCHLbf9pm2urKQSaQ22a./A3MYUkAF2SNkvcZhZsg6', '1123', NULL, '2021-04-26 10:36:58', '2021-04-26 10:36:58', 2),
(21, 'asd', 'asda@dd.com', '$2y$10$bgmMrlysMNFiEwZctU/WyOUhl1H4pg2FZrLuRQNBG0frBFVNpRuxu', '1123', NULL, '2021-04-26 10:37:13', '2021-04-26 10:37:13', 2),
(22, 'asd', 'asda@dd.com', '$2y$10$Yw8eL4ajgPjuVSQc35T0s.NPsXuqY..tO1BAOmhLoogSIeoS2uNhy', '1123', NULL, '2021-04-26 10:37:40', '2021-04-26 10:37:40', 2),
(23, 'asd', 'asda@dd.com', '$2y$10$cj5JS8m6KhiwXCw4OZxHeu36wTR4Vw6a7EaXta9cFNmnCgng2SYum', '1123', NULL, '2021-04-26 10:38:16', '2021-04-26 10:38:16', 2),
(24, 'asd', 'asda@dd.com', '$2y$10$IbF7wGOq/JbPbhOvcVn3yOXGvwOC7hDj2ZCbhaKJOtQXHrFsy6e6C', '1123', NULL, '2021-04-26 10:38:51', '2021-04-26 10:38:51', 2),
(25, 'asd', 'asda@dd.com', '$2y$10$n6KTyUocQWVs0OJVlCkIYuY1bAAXDcd0uVTNlIxXVEdizBC07B8Y.', '1123', NULL, '2021-04-26 10:39:03', '2021-04-26 10:39:03', 2),
(26, 'asd', 'asda@dd.com', '$2y$10$4uRSfp9vg9I857yHti3dneALOnJffYLKz6f8t/QCVsVvpv1uRZkC6', '1123', NULL, '2021-04-26 10:39:13', '2021-04-26 10:39:13', 2),
(27, 'asd', 'asda@dd.com', '$2y$10$.MdiD17upbtFyDVte3jxL.E3fZ7.oGpHu2TxOUdGkZDmgs/6QKFIu', '1123', NULL, '2021-04-26 10:39:29', '2021-04-26 10:39:29', 2),
(28, 'asd', 'asda@dd.com', '$2y$10$59CUTEUfQRWuDXuMVIRWSermyDMNRt6Vij1rHM/k9IQ8X/L48Pbqq', '1123', NULL, '2021-04-26 10:39:50', '2021-04-26 10:39:50', 2),
(29, 'asd', 'asda@dd.com', '$2y$10$G44B.eMZ52nvCuH4Z2DvzembOObnhhxwLOQTauDOulZ2vAZTRLcKi', '1123', NULL, '2021-04-26 10:40:26', '2021-04-26 10:40:26', 2),
(30, 'asd', 'asda@dd.com', '$2y$10$ABmzlS5mNdK170TqLg4ACOfww0fi7339lqCjPAn7wD8kPoRSlC8xW', '1123', NULL, '2021-04-26 10:41:38', '2021-04-26 10:41:38', 2),
(31, 'asd', 'asda@dd.com', '$2y$10$E7a2zWCWH76wD9h4UbkL5OLClblJSl/Dn3ZNYag5.65Eqrh3w9cNy', '1123', NULL, '2021-04-26 10:42:01', '2021-04-26 10:42:01', 2),
(32, 'asd', 'asda@dd.com', '$2y$10$4mJP4LtNN5tGGHR7FDShhOW1cjqUlogUJJwuZcFosGrh12b.YPSHa', '1123', NULL, '2021-04-26 10:44:15', '2021-04-26 10:44:15', 2),
(33, 'asd', 'asda@dd.com', '$2y$10$gbrvYUvvbHM5sVqYTUrnc.mHhcmldtQz/QoD7b2TcnRV96/8HxBDS', '1123', NULL, '2021-04-26 10:45:01', '2021-04-26 10:45:01', 2),
(34, 'asd', 'asda@dd.com', '$2y$10$44VOs8cvvW1LdH/g9EvhfOUty6o.l1TjWBIXxukizAxgQzu606H86', '1123', NULL, '2021-04-26 10:45:44', '2021-04-26 10:45:44', 2),
(35, 'asd', 'asda@dd.com', '$2y$10$XIJDiygb/cHsNL56b5hvSemRUxfrtoGUGaLmM3bwxegtfZrk54fza', '1123', NULL, '2021-04-26 10:45:59', '2021-04-26 10:45:59', 2),
(36, 'pepito', 'pepito@dd.com', '$2y$10$RVv8kHzmLKEwvsS4brupdOVbi3V11IHWXcZCWSbnxhBQ9QWUr9jvK', '1123333', NULL, '2021-04-26 10:46:17', '2021-04-26 10:46:17', 2),
(37, 'jean', 'jean@gruokonecta.com', '$2y$10$4V.hZ6.uPyNHKkymUj2mfO2jyLIj4jrhE5Rjb8M2OZR0ds7Vp.oUK', '342423', NULL, '2021-04-26 10:52:32', '2021-04-26 10:52:32', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
