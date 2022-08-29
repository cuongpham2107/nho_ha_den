-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 29, 2022 at 04:51 PM
-- Server version: 10.3.27-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cathinh_cahinh`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `images`, `type`, `status`, `created_at`, `updated_at`, `description`, `link`) VALUES
(2, 'Sản phẩm cá thính là một trong những món ăn mặn dân dã', '[\"banners/Untitled-5-01.jpg\"]', 'home', 'ACTIVE', '2021-10-07 03:17:00', '2022-07-11 18:48:34', 'Chất thịt cá không khô như cá mắm biển, không nhão thịt như cá nướng tươi hoặc cá rán.. Khi ăn thấy vị thơm của thịt cá và mùi thơm của thính quyện vào nhau tạo nên một hương vị đặc biệt rất khó tả.', NULL),
(3, 'Chất lượng cá tốt nhất', '[\"banners/Untitled-5-01.jpg\"]', 'home_mid', 'ACTIVE', '2022-07-01 19:11:00', '2022-07-11 19:16:09', 'Hương vị mới lạ, không mặn, được làm từ cá tươi tự nhiên. Lên men tự nhiên, không sử dụng chất bảo quản', 'https://youtu.be/zXS-SfEEVgY'),
(4, 'Banner Number Count', '[\"banners/Untitled-5.jpg\"]', 'banner_number', 'ACTIVE', '2022-07-01 20:26:00', '2022-07-11 19:32:14', NULL, NULL),
(5, 'Về chúng tôi', '[\"banners/tea-ceremony-in-a-tea-house.jpg\"]', 'about', 'ACTIVE', '2022-07-02 00:43:00', '2022-07-05 23:52:09', 'Cá thính Đồng Nung. Hương vị mới lạ được làm từ cá tươi tự nhiên, không sử dụng chất bảo quản', NULL),
(6, 'Chất lượng tốt nhất', '[]', 'quality', 'ACTIVE', '2022-07-02 00:53:00', '2022-07-05 23:59:46', 'Hương vị mới lạ, không mặn, được làm từ cá tươi tự nhiên. Lên men tự nhiên, không sử dụng chất bảo quản', NULL),
(7, 'Liên hệ', '[\"banners/cafe-.jpg\",\"banners/tea-farm.jpg\"]', 'contact', 'ACTIVE', '2022-07-03 20:13:00', '2022-07-05 23:59:43', 'Hương vị mới lạ, không mặn, được làm từ cá tươi tự nhiên. Lên men tự nhiên, không sử dụng chất bảo quản', NULL),
(8, 'Tin tức', '[\"banners/Untitled-5-01.jpg\"]', 'news', 'ACTIVE', '2022-07-04 01:03:00', '2022-07-11 19:44:35', 'Tin tức mới nhất, nổi bật', NULL),
(9, 'Nếm thử cá chất lượng tốt nhất của chúng tôi', '[\"banners/Untitled-6.jpg\"]', 'news2', 'ACTIVE', '2022-07-04 01:17:00', '2022-07-11 19:59:16', 'Hương vị mới lạ, không mặn, được làm từ cá tươi tự nhiên. Lên men tự nhiên, không sử dụng chất bảo quản', NULL),
(10, 'Không tìm thấy trang', '[\"banners/cup-of-hot-tea-with-cinnamon-sticks-and-spices.jpg\"]', '404', 'ACTIVE', '2022-07-04 02:18:00', '2022-07-06 00:13:25', 'LIên kết hoặc trang bạn đang tìm kiếm không tồn tại, vui lòng thử truy cập đường dẫn khác.', NULL),
(11, 'Post Detail', '[\"banners/black-tea-leaves.jpg\"]', 'post', 'ACTIVE', '2022-07-04 02:53:17', '2022-07-04 02:53:17', NULL, NULL),
(12, 'Sản phẩm cá thính', '[\"banners/Untitled-6.jpg\"]', 'product', 'ACTIVE', '2022-07-04 20:30:00', '2022-07-11 19:43:39', 'Hương vị mới lạ, không mặn, được làm từ cá tươi tự nhiên. Lên men tự nhiên, không sử dụng chất bảo quản', NULL),
(13, 'Đặc sản cá thính Đồng Nung', '[\"banners/Untitled-6.jpg\"]', 'product2', 'ACTIVE', '2022-07-04 20:32:00', '2022-07-11 19:41:26', 'Hương vị mới lạ, không mặn, được làm từ cá tươi tự nhiên. Lên men tự nhiên, không sử dụng chất bảo quản', NULL),
(14, 'Post Detail', '[\"banners/black-tea-leaves.jpg\"]', 'page', 'ACTIVE', '2022-07-04 02:53:17', '2022-07-04 02:53:17', NULL, NULL),
(15, 'Hoạt động', '[\"banners/Untitled-5.jpg\"]', 'work', 'ACTIVE', '2022-07-04 01:03:00', '2022-07-11 20:35:51', 'Hoạt động mới nhất, nổi bật', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(2, NULL, 1, 'Tin tức - Sự kiện', 'tin-tuc-su-kien', '2021-10-05 20:45:13', '2021-11-26 21:14:27');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
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
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'voyager::seeders.data_rows.roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
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
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, '{}', 2),
(31, 5, 'category_id', 'text', 'Category', 0, 0, 1, 1, 1, 0, '{}', 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 0, 0, 1, 1, 1, 1, '{}', 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '{}', 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"upsize\":true,\"thumbnails\":[{\"name\":\"cropped\",\"crop\":{\"width\":\"1000\",\"height\":\"700\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 0, 0, 1, 1, 1, 1, '{}', 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 0, 0, 1, 1, 1, 1, '{}', 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, '{}', 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, '{}', 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, '{}', 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 0, 0, 1, 1, 1, 1, '{}', 5),
(48, 6, 'body', 'rich_text_box', 'Body', 0, 0, 1, 1, 1, 1, '{}', 6),
(49, 6, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 4),
(50, 6, 'meta_description', 'text', 'Meta Description', 0, 0, 1, 1, 1, 1, '{}', 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 0, 0, 1, 1, 1, 1, '{}', 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, '{}', 12),
(68, 8, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(69, 8, 'title', 'text', 'Tiêu đề', 1, 1, 1, 1, 1, 1, '{}', 2),
(70, 8, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:staticdatas,slug\"}}', 3),
(71, 8, 'description', 'text_area', 'Mô tả', 0, 0, 1, 1, 1, 1, '{}', 4),
(72, 8, 'body', 'rich_text_box', 'Nội dung', 0, 0, 1, 1, 1, 1, '{}', 5),
(73, 8, 'image', 'media_picker', 'Ảnh', 0, 0, 1, 1, 1, 1, '{}', 6),
(77, 8, 'status', 'checkbox', 'Trạng thái', 0, 1, 1, 1, 1, 1, '{\"on\":\"Xu\\u1ea5t b\\u1ea3n\",\"off\":\"Nh\\u00e1p\",\"checked\":true}', 10),
(78, 8, 'created_at', 'timestamp', 'Ngày tạo', 0, 1, 1, 1, 0, 1, '{}', 11),
(79, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 12),
(80, 9, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(83, 9, 'type', 'text', 'Loại', 0, 1, 1, 1, 1, 1, '{}', 5),
(84, 9, 'status', 'select_dropdown', 'Trạng thái', 0, 1, 1, 1, 1, 1, '{\"default\":\"ACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 6),
(85, 9, 'created_at', 'timestamp', 'Ngày tạo', 0, 0, 1, 1, 0, 1, '{}', 7),
(86, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(87, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(88, 10, 'name', 'text', 'Họ tên', 0, 1, 1, 1, 1, 1, '{}', 2),
(89, 10, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 3),
(90, 10, 'phone', 'text', 'Điện thoại', 0, 1, 1, 1, 1, 1, '{}', 4),
(91, 10, 'title', 'text', 'Tiêu đề', 0, 0, 1, 1, 1, 1, '{}', 5),
(92, 10, 'content', 'text_area', 'Nội dung', 0, 0, 0, 0, 0, 0, '{}', 6),
(93, 10, 'created_at', 'timestamp', 'Ngày nhận', 0, 1, 1, 1, 0, 1, '{}', 7),
(94, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(96, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(97, 11, 'name', 'text', 'Họ và tên', 1, 1, 1, 1, 1, 1, '{}', 2),
(98, 11, 'position', 'text', 'Chức vụ', 0, 1, 1, 1, 1, 1, '{}', 3),
(99, 11, 'experience', 'text', 'Kinh nghiệm', 0, 1, 1, 1, 1, 1, '{}', 4),
(100, 11, 'created_at', 'timestamp', 'Ngày tạo', 0, 0, 0, 0, 0, 0, '{}', 5),
(101, 11, 'updated_at', 'timestamp', 'Ngày cập  nhật', 0, 0, 0, 0, 0, 0, '{}', 6),
(102, 11, 'image', 'image', 'Ảnh', 0, 1, 1, 1, 1, 1, '{\"upsize\":true,\"thumbnails\":[{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"400\"}}]}', 7),
(103, 9, 'images', 'media_picker', 'Ảnh', 0, 1, 1, 1, 1, 1, '{\"max\":10,\"min\":0}', 4),
(104, 9, 'description', 'text_area', 'Mô tả', 0, 0, 1, 1, 1, 1, '{}', 3),
(105, 9, 'title', 'text', 'Tiêu đề', 0, 1, 1, 1, 1, 1, '{}', 2),
(106, 16, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(107, 16, 'title', 'text', 'Tiêu đề', 1, 1, 1, 1, 1, 1, '{}', 2),
(108, 16, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:services,slug\"}}', 3),
(109, 16, 'description', 'text_area', 'Mô tả', 0, 1, 1, 1, 1, 1, '{}', 4),
(110, 16, 'body', 'rich_text_box', 'Nội dung', 0, 1, 1, 1, 1, 1, '{}', 5),
(111, 16, 'image', 'media_picker', 'Ảnh', 0, 1, 1, 1, 1, 1, '{}', 6),
(112, 16, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(113, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(114, 16, 'active', 'checkbox', 'Trạng thái', 0, 1, 1, 1, 1, 1, '{\"on\":\"Xu\\u1ea5t b\\u1ea3n\",\"off\":\"Nh\\u00e1p\",\"checked\":true}', 9),
(115, 9, 'link', 'text', 'Link', 0, 0, 1, 1, 1, 1, '{}', 9),
(116, 17, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(118, 17, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:products,slug\"}}', 3),
(119, 17, 'description', 'text_area', 'Mô tả', 0, 0, 1, 1, 1, 1, '{}', 4),
(120, 17, 'body', 'rich_text_box', 'Nội dung', 0, 0, 1, 1, 1, 1, '{}', 6),
(121, 17, 'image', 'media_picker', 'Ảnh', 0, 1, 1, 1, 1, 1, '{}', 7),
(122, 17, 'meta_description', 'text', 'Meta Description', 0, 0, 1, 1, 1, 1, '{}', 8),
(123, 17, 'meta_keywords', 'text', 'Meta Keywords', 0, 0, 1, 1, 1, 1, '{}', 9),
(124, 17, 'status', 'select_dropdown', 'Trạng thái', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 10),
(125, 17, 'price', 'number', 'Giá', 0, 1, 1, 1, 1, 1, '{}', 11),
(126, 17, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 12),
(127, 17, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 13),
(128, 17, 'title', 'text', 'Tên', 1, 1, 1, 1, 1, 1, '{}', 2),
(129, 8, 'type', 'text', 'Loại', 0, 1, 1, 1, 1, 1, '{}', 10),
(130, 8, 'icon', 'text', 'Icon', 0, 0, 1, 1, 1, 1, '{}', 11),
(131, 17, 'description2', 'rich_text_box', 'Mô tả thêm', 0, 0, 1, 1, 1, 1, '{}', 5),
(132, 18, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(133, 18, 'title', 'text', 'Tiêu đề', 1, 1, 1, 1, 1, 1, '{}', 2),
(134, 18, 'description', 'text_area', 'Mô tả', 0, 1, 1, 1, 1, 1, '{}', 4),
(135, 18, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:works,slug\"}}', 3),
(136, 18, 'body', 'rich_text_box', 'Nội dung', 0, 0, 1, 1, 1, 1, '{}', 5),
(137, 18, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 6),
(138, 18, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(139, 18, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(140, 18, 'active', 'checkbox', 'Active', 0, 1, 1, 1, 1, 1, '{\"on\":\"C\\u00f4ng b\\u1ed1\",\"off\":\"Nh\\u00e1p\",\"checked\":true}', 9);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2021-10-05 20:45:12', '2021-10-05 20:45:12'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2021-10-05 20:45:12', '2021-10-05 20:45:12'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2021-10-05 20:45:12', '2021-10-05 20:45:12'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2021-10-05 20:45:13', '2021-10-05 20:45:13'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2021-10-05 20:45:14', '2022-01-03 02:29:51'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2021-10-05 20:45:14', '2022-07-01 18:42:24'),
(8, 'staticdatas', 'staticdatas', 'Static Data', 'Static Data', NULL, 'App\\Staticdata', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-10-07 00:56:09', '2022-07-01 20:24:18'),
(9, 'banners', 'banners', 'Banner', 'Banners', NULL, 'App\\Banner', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-10-07 02:58:44', '2022-07-11 19:31:41'),
(10, 'feedbacks', 'feedbacks', 'Phản hồi', 'Phản hồi', NULL, 'App\\Feedback', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-10-08 01:08:58', '2022-07-04 00:34:19'),
(11, 'personnels', 'personnels', 'Nhân sự', 'Nhân sự', NULL, 'App\\Personnel', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-01-03 19:44:37', '2022-01-04 07:32:38'),
(16, 'services', 'services', 'Dịch vụ', 'Dịch vụ', NULL, 'App\\Service', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-07-01 02:51:46', '2022-07-01 18:52:27'),
(17, 'products', 'products', 'Sản phẩm', 'Sản phẩm', NULL, 'App\\Product', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-07-01 19:40:43', '2022-07-11 19:19:17'),
(18, 'works', 'works', 'Hoạt động', 'Hoạt động', 'voyager-dashboard', 'App\\Work', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-07-06 00:53:30', '2022-07-06 00:57:14');

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
-- Table structure for table `feedbacks`
--

CREATE TABLE `feedbacks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feedbacks`
--

INSERT INTO `feedbacks` (`id`, `name`, `email`, `phone`, `title`, `content`, `created_at`, `updated_at`) VALUES
(30, NULL, 'admin@admin.com', NULL, NULL, NULL, '2022-07-07 02:10:02', '2022-07-07 02:10:02');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2021-10-05 20:45:13', '2021-10-05 20:45:13'),
(2, 'Home menu', '2022-01-02 20:29:49', '2022-01-02 20:29:49');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2021-10-05 20:45:13', '2021-10-05 20:45:13', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 12, '2021-10-05 20:45:13', '2022-07-05 01:08:44', 'voyager.media.index', NULL),
(3, 1, 'Tài khoản', '', '_self', 'voyager-person', '#000000', NULL, 11, '2021-10-05 20:45:13', '2022-07-05 01:08:44', 'voyager.users.index', 'null'),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 13, '2021-10-05 20:45:13', '2022-07-05 01:08:44', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 14, '2021-10-05 20:45:13', '2022-07-05 01:08:44', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2021-10-05 20:45:13', '2021-10-06 02:18:54', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2021-10-05 20:45:13', '2021-10-06 02:18:54', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2021-10-05 20:45:13', '2021-10-06 02:18:55', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2021-10-05 20:45:13', '2021-10-06 02:18:55', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 15, '2021-10-05 20:45:13', '2022-07-05 01:08:44', 'voyager.settings.index', NULL),
(12, 1, 'Bài viết', '', '_self', 'voyager-news', '#000000', NULL, 5, '2021-10-05 20:45:14', '2022-07-06 00:59:07', 'voyager.posts.index', 'null'),
(13, 1, 'Trang', '', '_self', 'voyager-file-text', '#000000', NULL, 3, '2021-10-05 20:45:14', '2021-10-07 03:00:07', 'voyager.pages.index', 'null'),
(15, 1, 'Static Data', '', '_self', 'voyager-thumb-tack', '#000000', NULL, 9, '2021-10-07 00:56:09', '2022-07-05 01:08:44', 'voyager.staticdatas.index', 'null'),
(16, 1, 'Banners', '', '_self', 'voyager-photos', '#000000', NULL, 2, '2021-10-07 02:58:44', '2021-10-07 03:00:07', 'voyager.banners.index', 'null'),
(17, 1, 'Phản hồi', '', '_self', 'voyager-paper-plane', '#000000', NULL, 10, '2021-10-08 01:08:58', '2022-07-05 01:08:44', 'voyager.feedbacks.index', 'null'),
(18, 2, 'Trang chủ', '/', '_self', NULL, '#000000', NULL, 1, '2022-01-02 20:30:26', '2022-01-02 20:32:23', NULL, ''),
(19, 2, 'Giới thiệu', '/gioi-thieu', '_self', NULL, '#000000', NULL, 2, '2022-01-02 20:32:13', '2022-01-03 06:09:12', NULL, ''),
(24, 2, 'Sản phẩm', '/products', '_self', NULL, '#000000', NULL, 4, '2022-01-02 20:33:23', '2022-07-02 01:39:24', NULL, ''),
(29, 2, 'Bài viết', '/news', '_self', NULL, '#000000', NULL, 5, '2022-01-04 20:48:18', '2022-07-04 01:04:00', NULL, ''),
(30, 1, 'Dịch vụ', '', '_self', 'voyager-campfire', '#000000', NULL, 8, '2022-07-01 02:51:47', '2022-07-05 01:10:04', 'voyager.services.index', 'null'),
(31, 1, 'Sản phẩm', '', '_self', 'voyager-archive', '#000000', NULL, 7, '2022-07-01 19:40:43', '2022-07-05 01:09:34', 'voyager.products.index', 'null'),
(33, 1, 'Hoạt động', '', '_self', 'voyager-dashboard', NULL, NULL, 6, '2022-07-06 00:53:30', '2022-07-06 00:59:07', 'voyager.works.index', NULL),
(34, 2, 'Hoạt động', '/works', '_self', NULL, '#000000', NULL, 16, '2022-07-06 01:00:08', '2022-07-06 01:00:08', NULL, '');

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
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(25, '2016_01_01_000000_create_pages_table', 2),
(26, '2016_01_01_000000_create_posts_table', 2),
(27, '2016_02_15_204651_create_categories_table', 2),
(28, '2017_04_11_000000_alter_post_nullable_fields_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(9, 4, 'Nguyên liệu', 'Nguyên liệu', NULL, 'pages/July2022/pHnxQXicKVerEvoteSi7.jpg', 'nguyen-lieu', 'Nguyên liệu', 'Nguyên liệu', 'ACTIVE', '2022-07-01 01:48:44', '2022-07-01 01:48:44'),
(10, 4, 'Thành phần', 'Thành phần', NULL, 'pages/July2022/i9tYymwiseZiReFPr3vn.jpg', 'thanh-phan', 'Thành phần', 'Thành phần', 'ACTIVE', '2022-07-01 01:49:44', '2022-07-01 01:49:44'),
(11, 4, 'Gia vị', 'Gia vị', NULL, 'pages/July2022/8fPvZaz86m002vwtdxE4.jpg', 'gia-vi', 'Gia vị', 'Gia vị', 'ACTIVE', '2022-07-01 01:50:07', '2022-07-01 01:50:07'),
(12, 4, 'Sản phẩm cá thính Đồng Nung', 'Cá thính Đồng Nung là món ăn truyền thống nổi tiếng của tỉnh Phú Thọ. Sản phẩm là sự kết hợp hoàn hảo giữa cá tươi được sơ chế kết hợp cùng thính rang, muối tinh và lên men tự nhiên. Sản phẩm được chế biến từ nguyên liệu tuyển chọn, cẩn trọng từng khâu để mang lại món cá thính thơm ngon, giàu dinh dưỡng.', NULL, 'pages/July2022/npwl6TYZy5zSRMywTIdf.jpg', 'about', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In enim justo, rhoncus ut, imperdiet a, venenatis.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In enim justo, rhoncus ut, imperdiet a, venenatis.', 'ACTIVE', '2022-07-01 02:04:51', '2022-07-11 18:57:25'),
(13, 4, 'Mùi vị đặc trưng', 'Mùi thơm béo ngậy của thính và thịt kết hợp vị đạm thanh của muối', NULL, 'pages/July2022/0dkd88gyUmN5NJNp4MX4.jpg', 'services', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.', 'ACTIVE', '2022-07-01 18:43:16', '2022-07-11 19:10:47'),
(14, 4, 'Đặc sản cá thính Phú Thọ', 'Cá thính là món ăn bắt nguồn từ cuộc sống bần hàn, vất vả của người dân xưa, là món ăn gắn với tuổi thơ của bao thế hệ. Thưởng thức miếng cá thính chua ngon,thơm giòn, ta như cảm nhận được hương vị quê nhà chân chất, thân thương.', '<p><span style=\"color: #ffffff; font-family: Roboto, sans-serif;\">C&aacute; th&iacute;nh Đồng Nung l&agrave; m&oacute;n ăn truyền thống nổi tiếng của tỉnh Ph&uacute; Thọ. Sản phẩm l&agrave; sự kết hợp ho&agrave;n hảo giữa c&aacute; tươi được sơ chế kết hợp c&ugrave;ng th&iacute;nh rang, muối tinh v&agrave; l&ecirc;n men tự nhi&ecirc;n.</span></p>', NULL, 'products', 'Duis dictum vestibulum ante vitae ullamcorper. Phasellus ullamcorper odio vitae eleifend ultricies lectus orci congue magna in egestas nulla libero non nisla.', 'Duis dictum vestibulum ante vitae ullamcorper. Phasellus ullamcorper odio vitae eleifend ultricies lectus orci congue magna in egestas nulla libero non nisla.', 'ACTIVE', '2022-07-01 19:38:05', '2022-07-11 19:28:52'),
(15, 4, 'Liên hệ', 'Đăng ký để nhận thông tin mới nhất từ chúng tôi. Chúng tôi sẽ liên lạc với bạn dựa trên thông tin  bạn để lại.', NULL, 'pages/July2022/0Iog0sGRcyMng4DOyHxA.jpg', 'contact', NULL, NULL, 'ACTIVE', '2022-07-03 21:16:10', '2022-07-11 19:30:46');

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2021-10-05 20:45:13', '2021-10-05 20:45:13'),
(2, 'browse_bread', NULL, '2021-10-05 20:45:13', '2021-10-05 20:45:13'),
(3, 'browse_database', NULL, '2021-10-05 20:45:13', '2021-10-05 20:45:13'),
(4, 'browse_media', NULL, '2021-10-05 20:45:13', '2021-10-05 20:45:13'),
(5, 'browse_compass', NULL, '2021-10-05 20:45:13', '2021-10-05 20:45:13'),
(6, 'browse_menus', 'menus', '2021-10-05 20:45:13', '2021-10-05 20:45:13'),
(7, 'read_menus', 'menus', '2021-10-05 20:45:13', '2021-10-05 20:45:13'),
(8, 'edit_menus', 'menus', '2021-10-05 20:45:13', '2021-10-05 20:45:13'),
(9, 'add_menus', 'menus', '2021-10-05 20:45:13', '2021-10-05 20:45:13'),
(10, 'delete_menus', 'menus', '2021-10-05 20:45:13', '2021-10-05 20:45:13'),
(11, 'browse_roles', 'roles', '2021-10-05 20:45:13', '2021-10-05 20:45:13'),
(12, 'read_roles', 'roles', '2021-10-05 20:45:13', '2021-10-05 20:45:13'),
(13, 'edit_roles', 'roles', '2021-10-05 20:45:13', '2021-10-05 20:45:13'),
(14, 'add_roles', 'roles', '2021-10-05 20:45:13', '2021-10-05 20:45:13'),
(15, 'delete_roles', 'roles', '2021-10-05 20:45:13', '2021-10-05 20:45:13'),
(16, 'browse_users', 'users', '2021-10-05 20:45:13', '2021-10-05 20:45:13'),
(17, 'read_users', 'users', '2021-10-05 20:45:13', '2021-10-05 20:45:13'),
(18, 'edit_users', 'users', '2021-10-05 20:45:13', '2021-10-05 20:45:13'),
(19, 'add_users', 'users', '2021-10-05 20:45:13', '2021-10-05 20:45:13'),
(20, 'delete_users', 'users', '2021-10-05 20:45:13', '2021-10-05 20:45:13'),
(21, 'browse_settings', 'settings', '2021-10-05 20:45:13', '2021-10-05 20:45:13'),
(22, 'read_settings', 'settings', '2021-10-05 20:45:13', '2021-10-05 20:45:13'),
(23, 'edit_settings', 'settings', '2021-10-05 20:45:13', '2021-10-05 20:45:13'),
(24, 'add_settings', 'settings', '2021-10-05 20:45:13', '2021-10-05 20:45:13'),
(25, 'delete_settings', 'settings', '2021-10-05 20:45:13', '2021-10-05 20:45:13'),
(26, 'browse_categories', 'categories', '2021-10-05 20:45:13', '2021-10-05 20:45:13'),
(27, 'read_categories', 'categories', '2021-10-05 20:45:13', '2021-10-05 20:45:13'),
(28, 'edit_categories', 'categories', '2021-10-05 20:45:13', '2021-10-05 20:45:13'),
(29, 'add_categories', 'categories', '2021-10-05 20:45:13', '2021-10-05 20:45:13'),
(30, 'delete_categories', 'categories', '2021-10-05 20:45:13', '2021-10-05 20:45:13'),
(31, 'browse_posts', 'posts', '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(32, 'read_posts', 'posts', '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(33, 'edit_posts', 'posts', '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(34, 'add_posts', 'posts', '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(35, 'delete_posts', 'posts', '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(36, 'browse_pages', 'pages', '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(37, 'read_pages', 'pages', '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(38, 'edit_pages', 'pages', '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(39, 'add_pages', 'pages', '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(40, 'delete_pages', 'pages', '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(46, 'browse_staticdatas', 'staticdatas', '2021-10-07 00:56:09', '2021-10-07 00:56:09'),
(47, 'read_staticdatas', 'staticdatas', '2021-10-07 00:56:09', '2021-10-07 00:56:09'),
(48, 'edit_staticdatas', 'staticdatas', '2021-10-07 00:56:09', '2021-10-07 00:56:09'),
(49, 'add_staticdatas', 'staticdatas', '2021-10-07 00:56:09', '2021-10-07 00:56:09'),
(50, 'delete_staticdatas', 'staticdatas', '2021-10-07 00:56:09', '2021-10-07 00:56:09'),
(51, 'browse_banners', 'banners', '2021-10-07 02:58:44', '2021-10-07 02:58:44'),
(52, 'read_banners', 'banners', '2021-10-07 02:58:44', '2021-10-07 02:58:44'),
(53, 'edit_banners', 'banners', '2021-10-07 02:58:44', '2021-10-07 02:58:44'),
(54, 'add_banners', 'banners', '2021-10-07 02:58:44', '2021-10-07 02:58:44'),
(55, 'delete_banners', 'banners', '2021-10-07 02:58:44', '2021-10-07 02:58:44'),
(56, 'browse_feedbacks', 'feedbacks', '2021-10-08 01:08:58', '2021-10-08 01:08:58'),
(57, 'read_feedbacks', 'feedbacks', '2021-10-08 01:08:58', '2021-10-08 01:08:58'),
(58, 'edit_feedbacks', 'feedbacks', '2021-10-08 01:08:58', '2021-10-08 01:08:58'),
(59, 'add_feedbacks', 'feedbacks', '2021-10-08 01:08:58', '2021-10-08 01:08:58'),
(60, 'delete_feedbacks', 'feedbacks', '2021-10-08 01:08:58', '2021-10-08 01:08:58'),
(61, 'browse_personnels', 'personnels', '2022-01-03 19:44:37', '2022-01-03 19:44:37'),
(62, 'read_personnels', 'personnels', '2022-01-03 19:44:37', '2022-01-03 19:44:37'),
(63, 'edit_personnels', 'personnels', '2022-01-03 19:44:37', '2022-01-03 19:44:37'),
(64, 'add_personnels', 'personnels', '2022-01-03 19:44:37', '2022-01-03 19:44:37'),
(65, 'delete_personnels', 'personnels', '2022-01-03 19:44:37', '2022-01-03 19:44:37'),
(66, 'browse_services', 'services', '2022-07-01 02:51:46', '2022-07-01 02:51:46'),
(67, 'read_services', 'services', '2022-07-01 02:51:46', '2022-07-01 02:51:46'),
(68, 'edit_services', 'services', '2022-07-01 02:51:46', '2022-07-01 02:51:46'),
(69, 'add_services', 'services', '2022-07-01 02:51:46', '2022-07-01 02:51:46'),
(70, 'delete_services', 'services', '2022-07-01 02:51:46', '2022-07-01 02:51:46'),
(71, 'browse_products', 'products', '2022-07-01 19:40:43', '2022-07-01 19:40:43'),
(72, 'read_products', 'products', '2022-07-01 19:40:43', '2022-07-01 19:40:43'),
(73, 'edit_products', 'products', '2022-07-01 19:40:43', '2022-07-01 19:40:43'),
(74, 'add_products', 'products', '2022-07-01 19:40:43', '2022-07-01 19:40:43'),
(75, 'delete_products', 'products', '2022-07-01 19:40:43', '2022-07-01 19:40:43'),
(76, 'browse_works', 'works', '2022-07-06 00:53:30', '2022-07-06 00:53:30'),
(77, 'read_works', 'works', '2022-07-06 00:53:30', '2022-07-06 00:53:30'),
(78, 'edit_works', 'works', '2022-07-06 00:53:30', '2022-07-06 00:53:30'),
(79, 'add_works', 'works', '2022-07-06 00:53:30', '2022-07-06 00:53:30'),
(80, 'delete_works', 'works', '2022-07-06 00:53:30', '2022-07-06 00:53:30');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(3, 1),
(4, 1),
(4, 2),
(5, 1),
(6, 1),
(6, 2),
(6, 3),
(7, 1),
(7, 2),
(7, 3),
(8, 1),
(8, 2),
(8, 3),
(9, 1),
(9, 2),
(9, 3),
(10, 1),
(10, 2),
(10, 3),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(16, 3),
(17, 1),
(17, 3),
(18, 1),
(18, 3),
(19, 1),
(19, 3),
(20, 1),
(20, 3),
(21, 1),
(21, 2),
(21, 3),
(22, 1),
(22, 2),
(22, 3),
(23, 1),
(23, 2),
(23, 3),
(24, 1),
(24, 2),
(24, 3),
(25, 1),
(25, 2),
(25, 3),
(26, 1),
(26, 2),
(26, 3),
(27, 1),
(27, 2),
(27, 3),
(28, 1),
(28, 2),
(28, 3),
(29, 1),
(29, 2),
(29, 3),
(30, 1),
(30, 2),
(30, 3),
(31, 1),
(31, 2),
(31, 3),
(32, 1),
(32, 2),
(32, 3),
(33, 1),
(33, 2),
(33, 3),
(34, 1),
(34, 2),
(34, 3),
(35, 1),
(35, 2),
(35, 3),
(36, 1),
(36, 2),
(36, 3),
(37, 1),
(37, 2),
(37, 3),
(38, 1),
(38, 2),
(38, 3),
(39, 1),
(39, 2),
(39, 3),
(40, 1),
(40, 2),
(40, 3),
(46, 1),
(46, 2),
(46, 3),
(47, 1),
(47, 2),
(47, 3),
(48, 1),
(48, 2),
(48, 3),
(49, 1),
(49, 2),
(49, 3),
(50, 1),
(50, 2),
(50, 3),
(51, 1),
(51, 2),
(51, 3),
(52, 1),
(52, 2),
(52, 3),
(53, 1),
(53, 2),
(53, 3),
(54, 1),
(54, 2),
(54, 3),
(55, 1),
(55, 2),
(55, 3),
(56, 1),
(56, 2),
(56, 3),
(57, 1),
(57, 2),
(57, 3),
(58, 1),
(58, 2),
(58, 3),
(59, 1),
(59, 2),
(59, 3),
(60, 1),
(60, 2),
(60, 3),
(61, 1),
(61, 2),
(61, 3),
(62, 1),
(62, 2),
(62, 3),
(63, 1),
(63, 2),
(63, 3),
(64, 1),
(64, 2),
(64, 3),
(65, 1),
(65, 2),
(65, 3),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1);

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
-- Table structure for table `personnels`
--

CREATE TABLE `personnels` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personnels`
--

INSERT INTO `personnels` (`id`, `name`, `position`, `experience`, `created_at`, `updated_at`, `image`) VALUES
(1, 'Trương Tuyết  Nhung', 'Nhân viên tạp vụ', '10 năm', '2022-01-03 19:50:00', '2022-01-04 08:09:52', 'personnels/January2022/NrNFiSmDLqXxG6DBIBdf.png'),
(2, 'Trương Thu Hương', 'Nhân viên vệ sinh', NULL, '2022-01-03 19:52:00', '2022-01-04 08:09:28', 'personnels/January2022/lmkDVBnwqQSJB7fD6Ayn.png'),
(3, 'Hoàng Kim Ngọc', 'Kỹ thuật viên vệ sinh công nghiệp', NULL, '2022-01-03 19:53:00', '2022-01-04 07:30:10', 'personnels/January2022/arkvZbNuucl4iTq8e3qO.png');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(12, 4, 2, 'Thay đổi tư duy Cá Thính Muối Chua là phải mặn', 'Thay đổi tư duy Cá Thính Muối Chua là phải mặn', 'Việc giảm lượng muối để phù hợp với số đông, và chất lượng cá phải tăng lên nhiều lần so với cách làm truyền thống bắt đầu được gia đình', '<h3 class=\"jkit-post-title\" style=\"box-sizing: border-box; overflow-wrap: break-word; margin: 0px 0px 13px; font-family: \'Playfair Display\', sans-serif; font-weight: 500; line-height: 1.3; color: #000000; font-size: 1rem;\"><span style=\"color: #000000; font-family: Playfair Display, sans-serif;\"><span style=\"font-size: 16px; font-weight: 500;\">Việc giảm lượng muối để ph&ugrave; hợp với số đ&ocirc;ng, v&agrave; chất lượng c&aacute; phải tăng l&ecirc;n nhiều lần so với c&aacute;ch l&agrave;m truyền thống bắt đầu được gia đ&igrave;nh thực hiện.</span></span></h3>\r\n<h3 class=\"jkit-post-title\" style=\"box-sizing: border-box; overflow-wrap: break-word; margin: 0px 0px 13px; font-family: \'Playfair Display\', sans-serif; font-weight: 500; line-height: 1.3; color: #000000; font-size: 1rem;\"><span style=\"color: #000000; font-family: Playfair Display, sans-serif;\"><span style=\"font-size: 16px; font-weight: 500;\">Bước 1. Chủ động x&acirc;y dựng nh&agrave; xưởng đạt chuẩn GMP v&agrave; tiến h&agrave;nh nghi&ecirc;n cứa c&ocirc;ng thức mới.</span></span></h3>\r\n<h3 class=\"jkit-post-title\" style=\"box-sizing: border-box; overflow-wrap: break-word; margin: 0px 0px 13px; font-family: \'Playfair Display\', sans-serif; font-weight: 500; line-height: 1.3; color: #000000; font-size: 1rem;\"><span style=\"color: #000000; font-family: Playfair Display, sans-serif;\"><span style=\"font-size: 16px; font-weight: 500;\">Bước 2. Nhờ tư vấn chuy&ecirc;n gia của Viện khoa học v&agrave; một số chuy&ecirc;n gia kh&aacute;c.</span></span></h3>\r\n<h3 class=\"jkit-post-title\" style=\"box-sizing: border-box; overflow-wrap: break-word; margin: 0px 0px 13px; font-family: \'Playfair Display\', sans-serif; font-weight: 500; line-height: 1.3; color: #000000; font-size: 1rem;\"><span style=\"color: #000000; font-family: Playfair Display, sans-serif;\"><span style=\"font-size: 16px; font-weight: 500;\">Bước 3. Cải tiến lại c&aacute;c quy tr&igrave;nh v&agrave; bắt đầu test sản phẩm.</span></span></h3>\r\n<p><span style=\"color: #000000; font-family: Playfair Display, sans-serif;\"><span style=\"font-size: 16px;\">Ưu điểm:</span></span></p>\r\n<ul>\r\n<li><span style=\"color: #000000; font-family: Playfair Display, sans-serif;\"><span style=\"font-size: 16px;\">C&ocirc;ng thức mới c&oacute; độ nhạt chỉ ngang với thịt kho t&agrave;u v&agrave; ăn v&atilde; được, đặc biệt với d&ograve;ng c&aacute; Tr&ocirc;i nh&acirc;n muối chua th&igrave; NHẮM BIA sẽ l&agrave; tuyệt hảo.</span></span></li>\r\n<li><span style=\"color: #000000; font-family: Playfair Display, sans-serif;\"><span style=\"font-size: 16px;\">C&aacute; c&ocirc;ng thức mới, Cứng hơn hẳn so với c&ocirc;ng thức cũ, Nhạt hơn 10 lần so với c&ocirc;ng thức cũ, Thịt hồng đỏ như c&aacute; c&ograve;n tươi mới cắt kh&uacute;c (điều m&agrave; chưa hộ gia đ&igrave;nh n&agrave;o c&oacute; thể l&agrave;m được từ xưa đến nay).</span></span></li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<li><span style=\"color: #000000; font-family: Playfair Display, sans-serif;\"><span style=\"font-size: 16px;\">C&aacute; th&iacute;nh muối chua C&ocirc;ng thức mới c&oacute; thể sẽ thay thế to&agrave;n bộ tư duy về c&aacute; th&iacute;nh của b&agrave; con v&agrave; mọi người từ xưa đến nay l&agrave; C&aacute; Th&iacute;nh phải mặn</span></span></li>\r\n</ul>\r\n<p><span style=\"color: #000000; font-family: Playfair Display, sans-serif;\"><span style=\"font-size: 16px;\">Tất cả những g&igrave; gia đ&igrave;nh c&oacute; được cũng l&agrave; nhờ sự g&oacute;p &yacute; ch&acirc;n th&agrave;nh từ qu&yacute; vị kh&aacute;ch h&agrave;ng đ&atilde; sử dụng sản phẩm v&agrave; gửi lại phản hồi cho gia đ&igrave;nh.</span></span></p>', 'posts/July2022/i8Xht1SeBYsjFJwqCUZA.jpg', 'thay-doi-tu-duy-ca-thinh-muoi-chua-la-phai-man', 'Thay đổi tư duy Cá Thính Muối Chua là phải mặn', 'Thay đổi tư duy Cá Thính Muối Chua là phải mặn', 'PUBLISHED', 0, '2022-07-01 20:35:15', '2022-07-11 19:56:24'),
(22, 4, 2, '3 bước tạo nên món đặc sản cá thính', 'Cá sau khi đã được làm sạch thì chúng ta hãy xếp những miếng cá trong trong chiếc vại', 'Cá sau khi đã được làm sạch thì chúng ta hãy xếp những miếng cá trong trong chiếc vại', '<p>Khi đ&atilde; chuẩn bị xong hết những nguy&ecirc;n liệu th&igrave; bạn sẽ tiến h&agrave;nh m&oacute;n c&aacute; th&iacute;nh Ph&uacute; Thọ theo từng giai đoạn dưới đ&acirc;y:</p>\r\n<p>+ Muối c&aacute;</p>\r\n<p>C&aacute; sau khi đ&atilde; được l&agrave;m sạch th&igrave; ch&uacute;ng ta h&atilde;y xếp những miếng c&aacute; trong trong chiếc vại. Cứ 1 lớp c&aacute; th&igrave; rắc một lớp muối đều l&ecirc;n tr&ecirc;n mặt c&aacute; cho đến khi hết c&aacute;. Sau đ&oacute; h&atilde;y d&ugrave;ng những nan tre n&egrave;n thật chặt v&agrave; đậy k&iacute;n trong tầm khoảng 2 ng&agrave;y. Sau đ&oacute; lấy c&aacute; trong vại ra rũ sạch muối. Sau đ&oacute; &eacute;p để c&aacute; chảy hết nước rồi phơi nắng 1 ng&agrave;y cho kh&ocirc; r&aacute;o.</p>\r\n<p>+ V&agrave;o th&iacute;nh.</p>\r\n<p>Khi miếng c&aacute; đ&atilde; săn lại v&agrave; kh&ocirc; lại th&igrave; cũng l&agrave; l&uacute;c ch&uacute;ng ta v&agrave;o th&iacute;nh. H&atilde;y x&aacute;t th&iacute;nh xung quanh đều cả mặt trước v&agrave; mặt sau của c&aacute; rồi xếp v&agrave;o chiếc vại. Mỗi một lớp c&aacute; được rắc đều bởi một lớp th&iacute;nh n&acirc;u v&agrave;ng. Tiếp đ&oacute; người ta sẽ xếp lớp th&iacute;nh tr&ecirc;n c&ugrave;ng d&agrave;y nhất v&agrave; bao quanh miệng hũ, l&oacute;t rơm d&agrave;y.</p>\r\n<p>+ Ủ chua</p>\r\n<p>Sau khi v&agrave;o th&iacute;nh cho c&aacute; xong l&uacute;c n&agrave;y người l&agrave;m sẽ xếp c&aacute; v&agrave;o trong vại hay một chiếc hộp k&iacute;n 1 lớp c&aacute;. V&agrave; sẽ rắc th&ecirc;m 1 lớp bột th&iacute;nh nữa. Sau đ&oacute; sẽ tiếp tục rải tiếp một lớp l&aacute; ổi l&ecirc;n tr&ecirc;n c&ugrave;ng. Rồi d&ugrave;ng nan tre n&egrave;n thật chắc c&aacute; xuống đ&aacute;y vại, hay đ&aacute;y hộp. Tiếp đ&oacute; sẽ bịt k&iacute;n vại c&aacute; v&agrave; &uacute;p ngược vại hay hộp c&aacute; vừa xếp v&agrave;o. Để tầm khoảng 30 &ndash; 40 ng&agrave;y t&ugrave;y theo thời tiết để c&aacute; muối chua được l&ecirc;n men thơm ngon. C&aacute; th&iacute;nh v&ugrave;ng đất Ph&uacute; Thọ để c&agrave;ng l&acirc;u c&agrave;ng ngon đẫy đ&agrave;.</p>', 'posts/July2022/z6KhnHBAb6G6sOSws1Pv.jpg', '3-buoc-tao-nen-mon-dac-san-ca-thinh', 'Cá sau khi đã được làm sạch thì chúng ta hãy xếp những miếng cá trong trong chiếc vại', 'Cá sau khi đã được làm sạch thì chúng ta hãy xếp những miếng cá trong trong chiếc vại', 'PUBLISHED', 0, '2022-07-11 19:48:51', '2022-07-11 19:48:51'),
(23, 4, 2, 'Thưởng thức cá thính như nào sẽ ngon nhất?', 'Thưởng thức cá thính như nào sẽ ngon nhất?', 'Đặc sản Cá thính Phú Thọ thường để chỉ nướng hoặc rán. Nhưng món cá nướng luôn được ưa chuộng hơn cả vì nó có mùi thơm đặc trưng của thính quyện vào mùi khói, mùi than', '<p>Đặc sản C&aacute; th&iacute;nh Ph&uacute; Thọ thường để chỉ nướng hoặc r&aacute;n. Nhưng m&oacute;n c&aacute; nướng lu&ocirc;n được ưa chuộng hơn cả v&igrave; n&oacute; c&oacute; m&ugrave;i thơm đặc trưng của th&iacute;nh quyện v&agrave;o m&ugrave;i kh&oacute;i, m&ugrave;i than. C&aacute;ch nướng c&aacute; cũng rất đặc biệt nghĩa l&agrave; người ta kh&ocirc;ng nướng c&aacute; trực tiếp ở tr&ecirc;n than hồng m&agrave; mỗi miếng c&aacute; sẽ được cặp v&agrave;o một thanh tre tươi để nướng.</p>\r\n<p>Từng cặp c&aacute; đem cắm xung quanh b&ecirc;n bếp lửa than h&agrave;ng. Lửa than tỏa đều ra, c&aacute; bắt đầu dần dần ch&iacute;n bằng hơi n&oacute;ng tỏa ngang v&agrave; đợi một v&agrave;i ph&uacute;t bạn lại đảo qua lại để 2 mặt c&aacute; được ch&iacute;n đều. Như thế m&oacute;n c&aacute; th&iacute;nh nướng sẽ kh&ocirc;ng bao giờ bị ch&aacute;y. M&ugrave;i thơm của th&iacute;nh đỗ tương, gạo nếp cộng m&ugrave;i c&aacute; ch&iacute;n v&agrave;ng bay ra ng&agrave;o ngạt.</p>\r\n<p>C&aacute; th&iacute;nh&nbsp; đạt chuẩn khi gỡ thịt ra c&oacute; m&agrave;u đỏ au hay m&agrave;u hổ ph&aacute;ch. Từng thớ thịt thấm đẫm vị chua ngọt, b&eacute;o ngậy v&agrave; đậm vị muối ho&agrave;n hảo.</p>\r\n<p>Hương vị c&aacute; th&iacute;nh&nbsp;</p>\r\n<p>Về hương vị của m&oacute;n ăn n&agrave;y cũng kh&aacute; đặc biệt khi thịt c&aacute; kh&ocirc;ng kh&ocirc; như c&aacute; mắm biển, nhưng kh&ocirc;ng n&atilde;o như c&aacute; nướng tươi hay c&aacute; r&aacute;n. M&agrave; khi gỡ c&aacute; ra c&oacute; m&agrave;u hồng sẫm. Khi thưởng thức thấy hương vị của thịt c&aacute; v&agrave; của th&iacute;nh h&ograve;a quyện v&agrave;o nhau mang đến sự đậm đ&agrave;, b&eacute;o b&ugrave;i rất ngon. Thưởng thức m&oacute;n c&aacute; th&iacute;nh với cơm n&oacute;ng trong những ng&agrave;y đ&ocirc;ng se lạnh th&igrave; bạn sẽ hiểu được l&yacute; do v&igrave; sao m&oacute;n ăn d&acirc;n d&atilde; n&agrave;y lại cảm mến biết bao nhi&ecirc;u du kh&aacute;ch khi đặt ch&acirc;n đến Ph&uacute; Thọ.</p>\r\n<p>V&agrave; nếu c&oacute; dịp về thăm Ph&uacute; Thọ&nbsp; th&igrave; bạn nhớ mua m&oacute;n đặc sản c&aacute; th&iacute;nh về l&agrave;m qu&agrave; tặng cho người th&acirc;n, bạn b&egrave; của m&igrave;nh nh&eacute;. Đ&acirc;y cũng l&agrave; m&oacute;n qu&agrave; qu&ecirc; &yacute; nghĩa, ch&acirc;n phương nồng thắm t&igrave;nh người m&agrave; v&ugrave;ng qu&ecirc; đất Tổ muốn gửi tặng đến thực kh&aacute;ch phương xa.</p>', 'posts/July2022/PL8FIFcRM3eWZhHBUhHI.jpg', 'thuong-thuc-ca-thinh-nhu-nao-se-ngon-nhat', 'Thưởng thức cá thính như nào sẽ ngon nhất?', 'Thưởng thức cá thính như nào sẽ ngon nhất?', 'PUBLISHED', 0, '2022-07-11 19:50:12', '2022-07-11 19:50:12'),
(24, 4, 2, 'Mua đặc sản cá Thính Phú Thọ ở đâu?', 'Mua đặc sản cá Thính Phú Thọ ở đâu?', 'à loại thực phẩm tiện dụng, phù hợp với các mẹ nội trợ có ít thời gian bếp núc. Đồng thời, cũng được phân phối rộng khắp trên khắp mọi miền Tổ quốc. Để những người con xa quê, hay những người có niềm yêu thích với món đặc sản cá thính Đất Tổ có thể dễ dàng tìm mua và thưởng thức.', '<p>Đ&aacute;p ứng nhu cầu x&atilde;&nbsp; hội hiện đại, m&oacute;n c&aacute; th&iacute;nh được cải tiến&nbsp; ph&ugrave; hợp với cuộc sống hối hả hơn. C&aacute; th&iacute;nh Đồng Nung l&agrave; một trong những thương hiệu được nhiều kh&aacute;ch h&agrave;ng tin d&ugrave;ng. Vẫn giữ nguy&ecirc;n phương thức chế biến cổ truyền xưa, nhưng cải tiến trong kh&acirc;u bao b&igrave; đ&oacute;ng g&oacute;i bảo quản. Đặc biệt nguy&ecirc;n liệu để chế biến l&agrave; c&aacute; tr&ocirc;i nh&acirc;n, rất thơm ngon, bổ dưỡng.</p>\r\n<p>L&agrave; loại thực phẩm tiện dụng, ph&ugrave; hợp với c&aacute;c mẹ nội trợ c&oacute; &iacute;t thời gian bếp n&uacute;c. Đồng thời, cũng được ph&acirc;n phối rộng khắp tr&ecirc;n khắp mọi miền Tổ quốc. Để những người con xa qu&ecirc;, hay những người c&oacute; niềm y&ecirc;u th&iacute;ch với m&oacute;n đặc sản c&aacute; th&iacute;nh Đất Tổ c&oacute; thể dễ d&agrave;ng t&igrave;m mua v&agrave; thưởng thức.</p>', 'posts/July2022/jQ9QOplkhTR6vIkIj1z4.jpg', 'mua-dac-san-ca-thinh-phu-tho-o-dau', 'Mua đặc sản cá Thính Phú Thọ ở đâu?', 'Mua đặc sản cá Thính Phú Thọ ở đâu?', 'PUBLISHED', 0, '2022-07-11 19:52:31', '2022-07-11 19:52:31');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `slug`, `description`, `body`, `image`, `meta_description`, `meta_keywords`, `status`, `price`, `created_at`, `updated_at`, `description2`) VALUES
(8, 'Cá thính Đồng Nung', 'tom-su', 'món ăn kết hợp giữa cá tươi được sơ chế kết hợp cùng thính rang và muối tinh lên men', '<p>&nbsp;</p>\r\n<div class=\"elementor-element elementor-element-d1abb73 elementor-widget elementor-widget-spacer\" style=\"box-sizing: border-box; --flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; -webkit-box-orient: vertical; -webkit-box-direction: normal; flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); -webkit-box-pack: var(--justify-content); justify-content: var(--justify-content); -webkit-box-align: var(--align-items); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); flex-basis: var(--flex-basis); -webkit-box-flex: var(--flex-grow); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); -webkit-box-ordinal-group: var(--order); order: var(--order); align-self: var(--align-self); position: relative; --widgets-spacing: 20px; width: 277.469px; margin-bottom: 20px; color: #7a7a7a; font-family: Heebo, sans-serif; font-size: 16px;\" data-id=\"d1abb73\" data-element_type=\"widget\" data-widget_type=\"spacer.default\">\r\n<div class=\"elementor-widget-container\" style=\"box-sizing: border-box; transition: background 0.3s ease 0s, border 0.3s ease 0s, border-radius 0.3s ease 0s, box-shadow 0.3s ease 0s, -webkit-box-shadow 0.3s ease 0s;\">\r\n<div class=\"elementor-spacer\" style=\"box-sizing: border-box;\">\r\n<div class=\"elementor-spacer-inner\" style=\"box-sizing: border-box; height: var(--spacer-size); --spacer-size: 115px;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"elementor-element elementor-element-88a1ba1 elementor-widget__width-auto elementor-widget elementor-widget-jkit_heading\" style=\"box-sizing: border-box; --flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; -webkit-box-orient: vertical; -webkit-box-direction: normal; flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); -webkit-box-pack: var(--justify-content); justify-content: var(--justify-content); -webkit-box-align: var(--align-items); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); flex-basis: var(--flex-basis); -webkit-box-flex: var(--flex-grow); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); -webkit-box-ordinal-group: var(--order); order: var(--order); align-self: var(--align-self); position: relative; --widgets-spacing: 20px; width: auto; max-width: 100%; color: #7a7a7a; font-family: Heebo, sans-serif; font-size: 16px;\" data-id=\"88a1ba1\" data-element_type=\"widget\" data-widget_type=\"jkit_heading.default\">\r\n<div class=\"elementor-widget-container\" style=\"box-sizing: border-box; transition: background 0.3s ease 0s, border 0.3s ease 0s, border-radius 0.3s ease 0s, box-shadow 0.3s ease 0s, -webkit-box-shadow 0.3s ease 0s; margin: 0px 0px -15px;\">\r\n<div class=\"jeg-elementor-kit jkit-heading  align-left align-tablet- align-mobile- jeg_module_7_10_62bbb2f6e6d9a\" style=\"box-sizing: border-box; position: relative;\">\r\n<div class=\"heading-section-title \" style=\"box-sizing: border-box; position: relative; margin: 0px 0px 5px;\">\r\n<h2 class=\"heading-title\" style=\"box-sizing: border-box; overflow-wrap: break-word; margin-top: 0.5rem; margin-bottom: 1rem; font-family: var(--e-global-typography-ada4cdd-font-family), Sans-serif; font-weight: var(--e-global-typography-ada4cdd-font-weight); line-height: var(--e-global-typography-ada4cdd-line-height); color: #ffffff; font-size: var(--e-global-typography-ada4cdd-font-size); -webkit-box-decoration-break: clone; display: inline; letter-spacing: var(--e-global-typography-ada4cdd-letter-spacing); word-spacing: var(--e-global-typography-ada4cdd-word-spacing);\">C&aacute; Th&iacute;nh &ndash; C&aacute; Tr&ocirc;i Nh&acirc;n</h2>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'products/Untitled-6.jpg', 'Cá Thính – Cá Trôi Nhân', 'Cá Thính – Cá Trôi Nhân', 'ACTIVE', 150000, '2021-10-31 19:52:00', '2022-07-11 19:23:30', NULL),
(9, 'Cá thính Đồng Nung', 'dau-phu', 'Không chỉ là món ăn ngon, tiện dụng, mà còn là món quà tặng, biếu sang trọng', '<p>Đặc sản C&aacute; th&iacute;nh l&agrave; một trong những m&oacute;n ngon đặc sắc nức tiếng của v&ugrave;ng qu&ecirc; đất Tổ. Để cho ra những mẻ c&aacute; th&iacute;nh thơm ngon với hương vị chua dịu. Đ&ograve;i hỏi người l&agrave;m cần c&oacute; kinh nghiệm cũng như phải c&oacute; sự kỳ c&ocirc;ng th&igrave; mới cho ra th&agrave;nh phẩm c&aacute; th&iacute;nh thơm ngon trứ danh. Khiến nhiều người phải đem l&ograve;ng thương mến khi đặt ch&acirc;n về đ&acirc;y.</p>\r\n<p>Giới thiệu đặc sản c&aacute; th&iacute;nh Đồng Nung</p>\r\n<p>C&aacute; th&iacute;nh được l&agrave;m từ những loại c&aacute; nước ngọt c&ograve;n tươi ngon. Đem đi sơ chế, ướp c&ugrave;ng th&iacute;nh v&agrave; muối tinh, rồi để l&ecirc;n men chua thơm một c&aacute;ch tự nhi&ecirc;n.&nbsp;M&ugrave;a l&agrave;m c&aacute; th&iacute;nh thường diễn ra v&agrave;o m&ugrave;a cấy l&uacute;a chi&ecirc;m. L&uacute;c n&agrave;y c&aacute;c ao đầm sẽ cạn kh&ocirc; nước v&agrave; người d&acirc;n sẽ đi bắt c&aacute; về l&agrave;m. C&aacute; bắt được nhiều sẽ mang đi chợ b&aacute;n một phần, một phần để&nbsp; l&agrave;m c&aacute; th&iacute;nh v&agrave; ăn dần. C&oacute; thể n&oacute;i, m&oacute;n c&aacute; th&iacute;nh l&agrave; một m&oacute;n ăn d&acirc;n d&atilde;, độc đ&aacute;o với đầy đủ nguy&ecirc;n liệu dễ kiếm. V&agrave; cho đến tận b&acirc;y giờ m&oacute;n c&aacute; th&iacute;nh vẫn l&agrave; một trong những đặc sản d&acirc;n d&atilde;. Mang đậm n&eacute;t văn h&oacute;a truyền thống của người d&acirc;n v&ugrave;ng đất Tổ.</p>\r\n<p>Quy tr&igrave;nh l&agrave;m m&oacute;n c&aacute; th&iacute;nh Đồng Nung ngon đ&uacute;ng điệu</p>\r\n<ul>\r\n<li>Để l&agrave;m một mẻ c&aacute; th&iacute;nh đạt chuẩn th&igrave; ngo&agrave;i yếu tố tỉ mỉ, kỳ c&ocirc;ng, kh&eacute;o l&eacute;o v&agrave; tinh tế của người l&agrave;m ra n&oacute;. M&oacute;n c&aacute; n&agrave;y c&ograve;n&nbsp; phải trải qua 3 c&ocirc;ng đoạn ch&iacute;nh l&agrave;: Ủ c&aacute;, v&agrave;o th&iacute;nh, ủ chua. V&agrave; nguy&ecirc;n liệu l&agrave;m m&oacute;n c&aacute; muối chua n&agrave;y th&igrave; bạn c&oacute; thể &aacute;p dụng đối với tất cả c&aacute;c loại c&aacute; c&oacute; vảy lẫn da trơn. Tuy nhi&ecirc;n loại c&aacute; thường hay l&agrave;m v&agrave; đạt độ ngon thấu đ&oacute; ch&iacute;nh l&agrave; c&aacute; m&egrave; hoặc c&aacute; trắm.</li>\r\n<li>Chuẩn bị nguy&ecirc;n liệu cho m&oacute;n c&aacute; th&iacute;nh</li>\r\n<li>Đầu ti&ecirc;n về c&aacute; th&igrave; bạn phải chọn loại c&aacute; tươi ngon c&oacute; thớ thịt chắc.&nbsp; Đối với những loại c&aacute; to th&igrave; bạn h&atilde;y mổ c&aacute;, bỏ ruột v&agrave; đ&aacute;nh vảy sau đ&oacute; rửa sạch v&agrave; cắt kh&uacute;c cho r&aacute;o nước.</li>\r\n<li>Muối để ướp c&aacute; sẽ gồm 5kg c&aacute; th&igrave; cần 1kg muối.</li>\r\n<li>Th&iacute;nh bột: Đ&acirc;y l&agrave; loại th&iacute;nh l&agrave;m từ hạt ng&ocirc;, đỗ tương hoặc gạo rang. Được rang ch&iacute;n thật thơm sau đ&oacute; đem đi nghiền th&agrave;nh bột mịn v&agrave; trộn đều lại với nhau. Th&iacute;nh nghiền c&agrave;ng mịn th&igrave; khi ướp c&aacute; c&agrave;ng ngon.</li>\r\n<li>L&aacute; ổi tươi khoảng 1 năm to rửa sạch cho r&aacute;o nước.</li>\r\n</ul>', 'products/Untitled-5-01.jpg', 'Cá thính Đồng Nung là món ăn truyền thống nổi tiếng của tỉnh Phú Thọ. Sản phẩm là sự kết hợp hoàn hảo giữa cá tươi được sơ chế kết hợp cùng thính rang,', 'Cá thính Đồng Nung là món ăn truyền thống nổi tiếng của tỉnh Phú Thọ. Sản phẩm là sự kết hợp hoàn hảo giữa cá tươi được sơ chế kết hợp cùng thính rang,', 'ACTIVE', 150000, '2021-10-31 19:54:00', '2022-07-11 19:37:33', '<ul>\r\n<li>Hương vị mới lạ, kh&ocirc;ng mặn</li>\r\n<li>Được l&agrave;m từ c&aacute; tươi tự nhi&ecirc;n</li>\r\n<li>L&ecirc;n men tự nhi&ecirc;n</li>\r\n<li>kh&ocirc;ng sử dụng chất bảo quản</li>\r\n</ul>');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2021-10-05 20:45:13', '2021-10-05 20:45:13'),
(2, 'content', 'Content', '2021-10-05 20:45:13', '2022-01-04 20:16:44'),
(3, 'manager', 'Manager', '2022-01-04 20:14:50', '2022-01-04 20:14:50');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `active` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `slug`, `description`, `body`, `image`, `created_at`, `updated_at`, `active`) VALUES
(1, 'Food & Drink', 'food-and-drink', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.', NULL, 'services/anh-2.jpg', '2022-07-01 18:45:00', '2022-07-01 18:52:19', 1),
(2, 'Delivery', 'delivery', 'Delivery', '<h2 class=\"profile-title\" style=\"box-sizing: border-box; overflow-wrap: break-word; margin: 0px 0px 10px; font-family: var(--e-global-typography-445c5d2-font-family), Sans-serif; font-weight: var(--e-global-typography-445c5d2-font-weight); line-height: var(--e-global-typography-445c5d2-line-height); color: var(--jkit-bg-color); font-size: var(--e-global-typography-445c5d2-font-size);\">Delivery</h2>', 'services/ca thinh6.jpg', '2022-07-01 18:45:00', '2022-07-01 18:52:07', 1),
(3, 'Meeting Room', 'meeting-room', 'Meeting Room', '<p>Meeting Room&nbsp;</p>', 'services/Untitled-6_1.jpg', '2022-07-01 18:46:00', '2022-07-11 19:06:45', 1),
(4, 'Tea Therapy', 'tea-therapy', 'Tea Therapy', '<h2 class=\"profile-title\" style=\"box-sizing: border-box; overflow-wrap: break-word; margin: 0px 0px 10px; font-family: var(--e-global-typography-445c5d2-font-family), Sans-serif; font-weight: var(--e-global-typography-445c5d2-font-weight); line-height: var(--e-global-typography-445c5d2-line-height); color: var(--jkit-bg-color); font-size: var(--e-global-typography-445c5d2-font-size);\">Tea Therapy</h2>', 'services/Untitled-4.jpg', '2022-07-01 18:46:00', '2022-07-07 00:28:41', 1);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Cá thính', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Hợp tác xã Nông nghiệp Thượng Nông', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings/July2022/CQWnco0urmPy2EQSuVU7.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Cá thính', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Cá thính', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(11, 'site.Image-breadcrumb', 'Image breadcrumb', 'settings\\October2021\\pVseo50SoMaojpH7M3x4.png', NULL, 'image', 6, 'Site'),
(12, 'site.map', 'Google map', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14874.021925828682!2d105.32787913835364!3d21.251449724049472!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31348c72b5603e7d%3A0x65793cf9e133d37e!2sKhu%204%2C%20V%C4%A9nh%20L%E1%BA%A1i%2C%20Viet%20Tri%2C%20Phu%20Tho%20Province%2C%20Vietnam!5e0!3m2!1sen!2s!4v1657188473776!5m2!1sen!2s\" width=\"100%\" height=\"250\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', NULL, 'text', 7, 'Site'),
(13, 'site.phone', 'Điện thoại', '0982897557', NULL, 'text', 8, 'Site'),
(14, 'site.email', 'Email', 'cathinh@gmail.com', NULL, 'text', 9, 'Site'),
(15, 'site.fax', 'Fax', NULL, NULL, 'text', 10, 'Site'),
(16, 'site.address', 'Address', 'Khu 4, xã Thượng Nông, huyện Tam Nông, tỉnh Phú Thọ.', NULL, 'text', 11, 'Site'),
(17, 'site.website', 'Website', NULL, NULL, 'text', 12, 'Site'),
(18, 'site.favicon', 'Favicon', 'settings/November2021/LMeVPrd49OUEuo36Vd0e.png', NULL, 'image', 13, 'Site'),
(19, 'social-network.facebook', 'Facebook', 'https://www.facebook.com', NULL, 'text', 14, 'social network'),
(20, 'social-network.gmail', 'Gmail', 'https://mail.google.com/', NULL, 'text', 15, 'social network'),
(21, 'social-network.youtube', 'Youtube', 'https://www.youtube.com/', NULL, 'text', 16, 'social network'),
(22, 'social-network.twitter', 'twitter', 'https://twitter.com/', NULL, 'text', 17, 'social network'),
(23, 'social-network.google-plus', 'Google Plus', NULL, NULL, 'text', 18, 'social network'),
(24, 'social-network.linkedin', 'Linkedin', NULL, NULL, 'text', 19, 'social network'),
(25, 'site.content', 'Site content', NULL, NULL, 'text', 20, 'Site'),
(26, 'site.phone2', 'Điện thoại 2', NULL, NULL, 'text', 21, 'Site'),
(27, 'site.facebook_page_id', 'Facebbok Page ID', NULL, NULL, 'text', 22, 'Site'),
(28, 'site.experience', 'Năm kinh nghiệm', '10', NULL, 'text', 23, 'Site'),
(29, 'site.quality', 'Chất lượng Cá Thính', '90', NULL, 'text', 24, 'Site'),
(30, 'site.skill', 'Kỹ năng nhân viên', '80', NULL, 'text', 25, 'Site');

-- --------------------------------------------------------

--
-- Table structure for table `staticdatas`
--

CREATE TABLE `staticdatas` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staticdatas`
--

INSERT INTO `staticdatas` (`id`, `title`, `slug`, `description`, `body`, `image`, `status`, `created_at`, `updated_at`, `type`, `icon`) VALUES
(29, 'Sản phẩm chất lượng tốt nhất', 'phan-hoi', 'Cá thính Đồng Nung là món ăn truyền thống nổi tiếng của tỉnh Phú Thọ. Sản phẩm là sự kết hợp hoàn hảo giữa cá tươi được sơ chế kết hợp cùng thính rang, muối tinh và lên men tự nhiên.', NULL, 'staticdatas/image_2022-07-07_164342494.png', 1, '2022-07-01 20:07:00', '2022-07-07 02:42:29', NULL, NULL),
(30, 'Nguyễn Việt Hùng', 'nguyen-viet-hung', 'Cá thính Đồng Nung là món ăn truyền thống nổi tiếng của tỉnh Phú Thọ. Sản phẩm là sự kết hợp hoàn hảo giữa cá tươi được sơ chế kết hợp cùng thính rang, muối tinh và lên men tự nhiên.', NULL, NULL, 1, '2022-07-01 20:13:00', '2022-07-07 02:39:10', 'report', NULL),
(31, 'Vương Văn Huy', 'vuong-van-huy', 'Cá thính Đồng Nung là món ăn truyền thống nổi tiếng của tỉnh Phú Thọ. Sản phẩm là sự kết hợp hoàn hảo giữa cá tươi được sơ chế kết hợp cùng thính rang, muối tinh và lên men tự nhiên.', NULL, NULL, 1, '2022-07-01 20:13:00', '2022-07-07 02:39:23', 'report', NULL),
(32, 'Phạm Mạnh Cường', 'pham-manh-cuong', 'Cá thính Đồng Nung là món ăn truyền thống nổi tiếng của tỉnh Phú Thọ. Sản phẩm là sự kết hợp hoàn hảo giữa cá tươi được sơ chế kết hợp cùng thính rang, muối tinh và lên men tự nhiên.', NULL, NULL, 1, '2022-07-01 20:14:00', '2022-07-07 02:38:59', 'report', NULL),
(33, 'Sản phẩm', 'san-pham', '35', '<p>&nbsp;</p>\r\n<div class=\"ddict_btn\" style=\"top: 30px; left: 126.766px;\"><img src=\"chrome-extension://cianljdimgjlpmjllcbahmpdnicglaap/logo/48.png\" /></div>', NULL, 1, '2022-07-01 20:20:00', '2022-07-01 20:24:48', 'number', 'jki jki-Leaf-light'),
(34, 'Khách hàng hài lòng', 'khach-hang-hai-long', '200', '<p>&nbsp;</p>\r\n<div class=\"ddict_btn\" style=\"top: 46px; left: 34.7031px;\"><img src=\"chrome-extension://cianljdimgjlpmjllcbahmpdnicglaap/logo/48.png\" /></div>', NULL, 1, '2022-07-01 20:20:00', '2022-07-01 20:24:35', 'number', 'jki jki-review-light'),
(35, 'Cửa hàng chi nhánh', 'cua-hang-chi-nhanh', '20', NULL, NULL, 1, '2022-07-01 20:20:00', '2022-07-01 20:24:05', 'number', 'jki jki-store1-light'),
(36, 'Thương hiệu đáng tin cậy', 'thuong-hieu-dang-tin-cay', '40', NULL, NULL, 1, '2022-07-01 20:20:00', '2022-07-01 20:25:04', 'number', 'jki jki-store1-light'),
(37, 'Nguyên liệu', 'nguyen-lieu', 'Nguồn nguyên liệu sạch', NULL, 'staticdatas/leaf-glass_1.png', 1, '2022-07-02 01:01:00', '2022-07-07 02:52:28', 'quality', NULL),
(38, 'Chế biến', 'che-bien', 'Quy trình sản xuất chế biến được đảm bảo vệ sinh nghiêm ngặt', NULL, 'staticdatas/tea-2.png', 1, '2022-07-02 01:02:00', '2022-07-07 02:55:56', 'quality', NULL),
(39, 'Vận chuyển', 'van-chuyen', 'Sản phẩm được vận chuyển nhanh nhất đến những điểm tiêu thụ để đảm bảo chất lượng', NULL, 'staticdatas/tea-3.png', 1, '2022-07-02 01:03:00', '2022-07-07 02:57:53', 'quality', NULL),
(40, 'Tiêu thụ', 'tieu-thu', 'Những đối tác có uy tín để đảm bảo giá trị thương hiệu sản phẩm', NULL, 'staticdatas/tea-4.png', 1, '2022-07-02 01:03:00', '2022-07-07 03:01:17', 'quality', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2021-10-05 20:45:14', '2021-10-05 20:45:14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(4, 1, 'Admin', 'admin@admin.com', 'users/July2022/lyIEEERhrB3LtPKSkF6j.png', NULL, '$2y$10$0UuGvB6CaBHWn80aLfbjOOGAzfMrMIi0DqfdaIW4U8XTvw.aaOAdm', 'PFrQRR9gOUjvQy2gIMKaYKpiFVfv8kKjzZS2UjAQNcnqKwGkQLgAvXN6X1jX', '{\"locale\":\"en\"}', '2022-06-30 20:14:40', '2022-06-30 20:15:27');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `works`
--

CREATE TABLE `works` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `active` tinyint(4) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `works`
--

INSERT INTO `works` (`id`, `title`, `description`, `slug`, `body`, `image`, `created_at`, `updated_at`, `active`) VALUES
(1, 'Tổng hợp các đặc sản Phú Thọ theo từng huyện vô cùng hấp dẫn', 'Bạn đến Phú Thọ tham quan du lịch và muốn thưởng thức những đặc sản thơm ngon, hấp dẫn?', 'tong-hop-cac-dac-san-phu-tho-theo-tung-huyen-vo-cung-hap-dan', '<p>B&uacute;p khoai kho &ndash; Đặc sản huyện Thanh Thủy</p>\r\n<p>N&oacute;i về c&aacute;c m&oacute;n đặc sản ở Ph&uacute; Thọ th&igrave; b&uacute;p khoai kho ch&iacute;nh l&agrave; m&oacute;n đặc sản đầu ti&ecirc;n m&agrave; ch&uacute;ng ta kh&ocirc;ng n&ecirc;n bỏ qua. M&oacute;n b&uacute;p khoa n&agrave;y được trồng ở nhiều nơi của Ph&uacute; Thọ, khi ăn n&oacute; kh&ocirc;ng chỉ mang đến hương vị đặc trưng m&agrave; c&ograve;n c&oacute; nhiều c&ocirc;ng dụng đối với sức khỏe của con người. Do đ&oacute; ch&uacute;ng ta đừng bỏ qua m&oacute;n n&agrave;y khi đặt ch&acirc;n đến Ph&uacute; Thọ bạn nh&eacute;.</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://cathinh.kennatech.vn/storage/works/July2022/dac-san-phu-tho-1.jpg\" alt=\"\" /></p>\r\n<p>dac-san-phu-tho</p>\r\n<p>Địa chỉ mua: C&aacute;c chợ ở x&atilde; T&acirc;n Phương, huyện Thanh Thủy.</p>\r\n<p>Ch&egrave; &ndash; Thanh Ba</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://cathinh.kennatech.vn/storage/works/July2022/dac-san-phu-tho-2.jpg\" alt=\"\" /></p>\r\n<p>Ch&egrave; cũng l&agrave; một đặc sản ở Ph&uacute; Thọ m&agrave; nhiều người y&ecirc;u th&iacute;ch. Đặc biệt ch&egrave; nơi đ&acirc;y rất đa dạng c&oacute; cả ch&egrave; xanh v&agrave; ch&egrave; đen hư ch&egrave; lipton, olong hoặc ch&egrave; hướng dương&hellip; Ch&uacute;ng ta thoải m&aacute;i chọn mua l&agrave;m qu&agrave; cho người th&acirc;n bạn b&egrave; của m&igrave;nh.</p>\r\n<p>Địa chỉ mua: C&aacute;c cửa h&agrave;ng ở x&atilde; Th&aacute;i Ninh, Hanh C&ugrave; thuộc huyện Thanh Ba.</p>\r\n<p>&nbsp;</p>\r\n<p>Cọ ỏm</p>\r\n<p>Nhắc đến đặc sản Ph&uacute; Thọ th&igrave; cọ ỏm cũng ch&iacute;nh l&agrave; một thức qu&agrave; m&agrave; nhiều người y&ecirc;u th&iacute;ch khi đến đ&acirc;y. Chỉ cần đun một nồi nước liu riu v&agrave; sau đ&oacute; thả v&agrave;o những quả cọ v&agrave;o b&ecirc;n trong n&ocirc;i rồi đun khoảng 10 ph&uacute;t l&agrave; đ&atilde; c&oacute; thể đổ ra thưởng thức.</p>\r\n<p>Đặc biệt giống cọ ngon nhất để ỏm l&agrave; cọ nếp với m&agrave;u v&agrave;ng đẹp mắt v&ocirc; c&ugrave;ng, khi ăn vừa mềm lại dẻo v&agrave; thơm.</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://cathinh.kennatech.vn/storage/works/July2022/dac-san-phu-tho-3.jpg\" alt=\"\" /></p>\r\n<p>Địa chỉ mua: Ở c&aacute;c h&agrave;ng qu&aacute;n hoặc chợ ở miền qu&ecirc; như Sơn Nga, Đ&ocirc;ng Ph&uacute;, Ph&ugrave;ng X&aacute; hoặc l&agrave; Thanh Nga đều c&oacute; b&aacute;n.</p>\r\n<p>Bưởi Đoan H&ugrave;ng &ndash; Đặc sản huyện Đoan H&ugrave;ng</p>\r\n<p>Đến với Ph&uacute; Thọ th&igrave; ch&uacute;ng ta cũng phải kể đến bưởi Đoan H&ugrave;ng m&agrave; đặc biệt l&agrave; x&atilde; Bằng Lu&acirc;n v&agrave; Ch&iacute; Đ&aacute;m. Bưởi ăn v&agrave;o thơm mềm, ngọt lịm v&agrave; mọng nước. Cũng ch&iacute;nh v&igrave; vậy thế n&ecirc;n ng&agrave;y nay mặc d&ugrave; c&oacute; rất nhiều loại bưởi nhưng bưởi Đoan H&ugrave;ng vẫn lu&ocirc;n được nhiều người chọn mua.</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://cathinh.kennatech.vn/storage/works/July2022/dac-san-phu-tho-4.jpg\" alt=\"\" /></p>\r\n<p>Địa chỉ mua: C&aacute;c hộ d&acirc;n hoặc h&agrave;ng qu&aacute;n ở x&atilde; Ch&iacute; Đ&aacute;m v&agrave; Bằng Lu&acirc;n, huyện Đoan H&ugrave;ng.</p>\r\n<p>B&aacute;nh tai &ndash; Thị x&atilde; Ph&uacute; Thọ</p>\r\n<p>Tiếp đến th&igrave; đến Ph&uacute; Thọ ch&uacute;ng ta cũng đừng n&ecirc;n bỏ qua m&oacute;n b&aacute;nh tai. Đ&acirc;y l&agrave; một m&oacute;n đặc sản m&agrave; hầu hết c&aacute;c l&agrave;ng qu&ecirc; ở Ph&uacute; Thọ đều c&oacute; b&aacute;n m&agrave; đặc biệt l&agrave; x&atilde; Ph&uacute; Thọ. B&aacute;nh tai được l&agrave;m với h&igrave;nh d&aacute;ng giống như chiếc tai.</p>\r\n<p>nguy&ecirc;n liệu để l&agrave;m m&oacute;n b&aacute;nh n&agrave;y cũng kh&aacute; đơn giản chỉ cần gạo tẻ, thịt lợn v&agrave; gia vị l&agrave; đ&atilde; c&oacute; thể l&agrave;m được.</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://cathinh.kennatech.vn/storage/works/July2022/dac-san-phu-tho-5.jpg\" alt=\"\" /></p>\r\n<p>Địa chỉ mua: 83 Bạch Đằng, &Acirc;u Cơ, thị x&atilde; Ph&uacute; Thọ.</p>\r\n<div class=\"ddict_btn\" style=\"top: 3503px; left: 1709px;\"><img src=\"chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png\" /></div>', 'works/July2022/jKX740k1J5Hd0kYbZ7wb.jpg', '2022-07-06 00:55:00', '2022-07-11 20:34:45', 1),
(2, 'Tinh hoa ẩm thực Đất Tổ', 'Phú Thọ là vùng Đất Tổ linh thiêng, nơi cội nguồn của dân tộc. Nơi đây không chỉ có nền văn hóa lâu đời mà còn nổi tiếng với ẩm thực vừa dân dã, vừa đậm đà, cuốn hút, khó có thể tìm kiếm ở bất kỳ nơi nào khác', 'tinh-hoa-am-thuc-dat-to', '<p>Nhắc tới Ph&uacute; Thọ kh&ocirc;ng thể kh&ocirc;ng nhắc tới những m&oacute;n ăn gắn với truyền thuyết như b&aacute;nh chưng, b&aacute;nh giầy&hellip; Hiện nay, ở hầu hết c&aacute;c địa phương trong tỉnh đều c&oacute; nghề nấu b&aacute;nh chưng, gi&atilde; b&aacute;nh giầy. Những m&oacute;n ăn n&agrave;y sử dụng nguy&ecirc;n liệu ch&iacute;nh từ gạo nếp, đặc biệt l&agrave; gạo nếp được trồng cấy tại ch&iacute;nh v&ugrave;ng đất khởi nguồn d&acirc;n tộc, v&igrave; thế sản phẩm được l&agrave;m ra l&agrave; sự hội tụ tinh hoa của đất - trời v&agrave; l&ograve;ng người Đất Tổ.</p>\r\n<p>Để tạo ra sự kh&aacute;c biệt, l&agrave;m n&ecirc;n thương hiệu b&aacute;nh chưng đất Tổ ch&iacute;nh l&agrave; ở kh&acirc;u chuẩn bị nguy&ecirc;n liệu v&agrave; c&aacute;ch g&oacute;i. Gạo nếp d&ugrave;ng để g&oacute;i b&aacute;nh chưng phải l&agrave; loại nếp ngon (nếp nương). Đỗ phải l&agrave; những hạt đều, c&oacute; m&agrave;u v&agrave;ng tươi sau khi s&aacute;t vỏ v&agrave; kh&ocirc;ng bị s&acirc;u, mọt. Thịt lợn l&agrave;m nh&acirc;n b&aacute;nh cũng phải chọn loại thịt ba chỉ tươi ngon, c&oacute; nguồn gốc r&otilde; r&agrave;ng, kh&ocirc;ng qu&aacute; nhiều mỡ. Đặc biệt, l&aacute; dong phải l&agrave; l&aacute; b&aacute;nh tẻ, kh&ocirc;ng được qu&aacute; non hoặc qu&aacute; gi&agrave; sẽ l&agrave;m ảnh hưởng tới m&agrave;u sắc của b&aacute;nh.</p>\r\n<p>B&aacute;nh giầy gi&atilde; tay l&agrave; thức b&aacute;nh độc đ&aacute;o của v&ugrave;ng Đất Tổ. Để l&agrave;m ra được một chiếc b&aacute;nh giầy, người l&agrave;m phải chuẩn bị kỹ lưỡng c&aacute;c c&ocirc;ng đoạn, từ c&aacute;ch chọn, ng&acirc;m gạo; c&aacute;ch chọn ch&agrave;y,&hellip; B&aacute;nh giầy thơm ngon phải được gi&atilde; từ gạo x&ocirc;i l&ecirc;n, chứ kh&ocirc;ng phải loại trộn bột. B&aacute;nh chỉ l&agrave;m v&agrave; thưởng thức ngay trong ng&agrave;y, kh&ocirc;ng thể d&ugrave;ng lại nguy&ecirc;n liệu cho ng&agrave;y h&ocirc;m sau</p>\r\n<p>B&ecirc;n cạnh đ&oacute; c&ograve;n c&oacute; c&aacute;c m&oacute;n chế biến từ c&aacute; s&ocirc;ng vốn đ&atilde; nổi tiếng l&agrave; m&oacute;n ăn tiến Vua trong truyền thuyết như c&aacute; Anh Vũ, c&aacute; Lăng&hellip; m&agrave; chỉ c&oacute; ở v&ugrave;ng s&ocirc;ng Ng&atilde; ba Bạch Hạc. Đặc biệt c&aacute; Anh Vũ sống theo bầy đ&agrave;n, chỉ ăn r&ecirc;u tảo nơi v&ugrave;ng nước trong v&agrave; c&oacute; nhiều hang đ&aacute;. V&igrave; vậy, việc bắt được một con c&aacute; Anh Vũ l&agrave; cả một kỳ c&ocirc;ng n&ecirc;n c&agrave;ng trở n&ecirc;n qu&yacute; gi&aacute;. Thịt c&aacute; Anh Vũ trắng, qu&aacute;nh v&agrave; thơm ngon hơn bất cứ lo&agrave;i c&aacute; n&agrave;o. Trong con c&aacute; Anh Vũ, phần khối sụn m&ocirc;i chẳng những rất gi&ograve;n, ngon m&agrave; c&ograve;n c&oacute; t&aacute;c dụng chữa được bệnh. C&aacute; Lăng Việt Tr&igrave; cũng nổi tiếng kh&ocirc;ng chỉ thơm, ngon m&agrave; c&ograve;n c&oacute; th&agrave;nh phần dinh dưỡng phong ph&uacute;, mang lại nhiều lợi &iacute;ch cho sức khỏe gi&uacute;p cơ thể thải độc, thanh lọc cơ thể.</p>\r\n<p>Thực kh&aacute;ch đến với nh&agrave; h&agrave;ng Qu&aacute;n c&aacute; lăng S&ocirc;ng Đ&agrave; (phường Gia Cẩm, Th&agrave;nh phố Việt Tr&igrave;); Qu&aacute;n C&aacute; Hạc Tr&igrave; (phường Ti&ecirc;n C&aacute;t, th&agrave;nh phố Việt Tr&igrave;); qu&aacute;n c&aacute; s&ocirc;ng Việt Tr&igrave; - Long Gia Qu&aacute;n (phường Ti&ecirc;n C&aacute;t, th&agrave;nh phố Việt Tr&igrave;)&hellip; để kh&aacute;m ph&aacute; v&agrave; thưởng thức v&ocirc; số m&oacute;n ngon đặc sắc như: C&aacute; lăng trộn h&agrave;nh t&iacute;m, c&aacute; lăng hấp x&igrave; dầu, c&aacute; rang muối, nem c&aacute; lăng, c&aacute; lăng nướng than hoa, Lẩu c&aacute; lăng, c&aacute; lăng nướng riềng mẻ, om chuối đậu, ch&aacute;o c&aacute; lăng, ruốc c&aacute; lăng&hellip;</p>\r\n<p>Ẩm thực Ph&uacute; Thọ kh&ocirc;ng chỉ hấp dẫn người thưởng thức bởi t&iacute;nh đa dạng, độc đ&aacute;o ở mỗi m&oacute;n ăn m&agrave; c&ograve;n bởi hệ thống dịch vụ nh&agrave; h&agrave;ng từ đặc sản đến b&igrave;nh d&acirc;n, chế biến c&aacute;c m&oacute;n ăn từ d&acirc;n tộc truyền thống tới hiện đại. Đến Ph&uacute; Thọ, thực kh&aacute;ch c&oacute; thể dễ d&agrave;ng t&igrave;m thấy những nh&agrave; h&agrave;ng chuy&ecirc;n m&oacute;n hoặc tổng hợp như G&agrave; cựa Xu&acirc;n Thuyết, A Thảo, c&aacute; Hạc Tr&igrave;, d&ecirc; Thanh Sơn, lợn mẹt, ngỗng 7 m&oacute;n, ngan mẹt 8 m&oacute;n&hellip;; c&aacute;c nh&agrave; h&agrave;ng chế biến m&oacute;n ăn d&acirc;n tộc như nh&agrave; h&agrave;ng Cội Nguồn, Long Gia qu&aacute;n; hays c&aacute;c nh&agrave; h&agrave;ng lớn chuy&ecirc;n tổ chức sự kiện, tiệc cưới như Sen V&agrave;ng, Phố Việt&hellip;</p>\r\n<p>Tại h&agrave;nh phố Việt Tr&igrave; c&ograve;n c&oacute; hai tuyến phố Ti&ecirc;n Dung v&agrave; Nguyễn Du được c&ocirc;ng nhận, gắn biển Phố Ẩm thực với h&agrave;ng trăm nh&agrave; h&agrave;ng lớn nhỏ, đa dạng c&aacute;c m&oacute;n ăn, c&aacute;c kiểu chế biến, phục vụ nhu cầu ăn uống giải tr&iacute; của cả người d&acirc;n th&agrave;nh phố v&agrave; kh&aacute;ch nơi xa về.</p>\r\n<p>Trong những năm gần đ&acirc;y, Ph&uacute; Thọ ch&uacute; trọng việc bảo tồn c&aacute;c gi&aacute; trị văn h&oacute;a ẩm thực gắn với ph&aacute;t triển du lịch về cội nguồn. Kh&aacute;ch phương xa về với Ph&uacute; Thọ trong dịp tổ chức c&aacute;c hoạt động SEA Games 31 &ldquo;nhất định phải thưởng thức&rdquo; hoặc mua về l&agrave;m qu&agrave; những m&oacute;n ngon n&agrave;y.</p>', 'works/July2022/22WmWwM1W77Sa3GGEXGV.jpg', '2022-07-11 20:16:34', '2022-07-11 20:16:34', 1),
(3, 'Hội Văn hoá Ẩm thực Phú Thọ sẽ lập hồ sơ cho \"món ăn cổ nhất Việt Nam\"', 'Tham dự Đại hội có 120 đại biểu và hội viên (82 hội viên). Đại hội đã bầu ra Ban chấp hành, Ban kiểm tra.', 'hoi-van-hoa-am-thuc-phu-tho-se-lap-ho-so-cho-mon-an-co-nhat-viet-nam', '<p>Tham dự Đại hội c&oacute; 120 đại biểu v&agrave; hội vi&ecirc;n (82 hội vi&ecirc;n). Đại hội đ&atilde; bầu ra Ban chấp h&agrave;nh, Ban kiểm tra. &Ocirc;ng L&ecirc; Lương Bằng -&nbsp; (nguy&ecirc;n l&agrave; C&aacute;n bộ l&atilde;nh đạo trong ng&agrave;nh VHTTDL v&agrave; AT tỉnh Ph&uacute; Thọ) được bầu l&agrave;m Chủ tịch Hội.</p>\r\n<p>Đại hội đ&atilde; biểu quyết th&ocirc;ng qua Nghị quyết nhiệm kỳ 2020-2025 ngo&agrave;i c&aacute;c nội dung ph&aacute;t triển hội vi&ecirc;n, tổ chức ổn định c&aacute;c ban chuy&ecirc;n m&ocirc;n v&agrave; hoat động khởi động. Nghị quyết t&acirc;p trung thực hiện cho bằng được c&aacute;c nội dung trọng điểm: Tham gia giới thiệu chuổi gi&aacute; trị&nbsp; văn ho&aacute; ẩm thực&nbsp; đất Tổ v&agrave; x&uacute;c tiến Du lịch tại Lễ hội Tết Việt , TP HCM do Hiệp hội Văn ho&aacute; Ẩm thực Việt Nam&nbsp; phối hợp với Sở Du lịch, Sở C&ocirc;ng Thương TP HCM tổ chức từ 21-24/01/2021; Th&agrave;nh lập C&ocirc;ng ty Cổ phần Văn h&oacute;a Ẩm thực Lang Li&ecirc;u tiến tới lập dự &aacute;n tr&igrave;nh địa phương xin ph&eacute;p tổ chức Kh&ocirc;ng gian Văn h&oacute;a Ẩm thực Lang Li&ecirc;u; Lập kế hoạch, hồ sơ, tổ chức sự kiện để x&aacute;c lập sản phẩm đặc th&ugrave; truyền thống&nbsp; b&aacute;nh chưng, b&aacute;nh d&agrave;y&nbsp; đạt kỷ lục m&oacute;n ăn cổ nhất Việt Nam.</p>\r\n<p>Với tầm nh&igrave;n, định hướng v&agrave; kế hoạch h&agrave;nh động chuy&ecirc;n s&acirc;u, với sự đo&agrave;n kết quyết t&acirc;m hoạt động của m&igrave;nh, Hội Văn ho&aacute; Ẩm thực Ph&uacute; thọ&nbsp; sẽ l&agrave; một điểm s&aacute;ng, một hiện tượng đột ph&aacute; trong đại gia đ&igrave;nh Văn ho&aacute; Ẩm thực Việt Nam.</p>', 'works/July2022/zspvESRHO8pEVNCAfwHa.jpg', '2022-07-11 20:22:22', '2022-07-11 20:22:22', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `personnels`
--
ALTER TABLE `personnels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `services_slug_unique` (`slug`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `staticdatas`
--
ALTER TABLE `staticdatas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `staticdatas_slug_unique` (`slug`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- Indexes for table `works`
--
ALTER TABLE `works`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `works_slug_unique` (`slug`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personnels`
--
ALTER TABLE `personnels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `staticdatas`
--
ALTER TABLE `staticdatas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `works`
--
ALTER TABLE `works`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
