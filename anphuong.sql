-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th1 08, 2022 lúc 04:59 PM
-- Phiên bản máy phục vụ: 10.5.13-MariaDB-log-cll-lve
-- Phiên bản PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `cssajhnthosting_75`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banners`
--

CREATE TABLE `banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `banners`
--

INSERT INTO `banners` (`id`, `name`, `image`, `type`, `status`, `created_at`, `updated_at`) VALUES
(1, 'banner-2', 'banners/January2022/WVd0ms3M28zIbxvR11y8.jpg', 'banner', 'ACTIVE', '2021-10-07 03:16:00', '2022-01-05 03:25:33'),
(2, 'Banner-1', 'banners/January2022/McwZd3EFpNb7H4bPSclF.jpg', 'banner', 'ACTIVE', '2021-10-07 03:17:00', '2022-01-05 03:32:57');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
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
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Bài viết', 'bai-viet', '2021-10-05 20:45:13', '2021-11-26 21:14:09'),
(2, NULL, 1, 'Tin tức - Sự kiện', 'tin-tuc-su-kien', '2021-10-05 20:45:13', '2021-11-26 21:14:27'),
(3, NULL, 1, 'Tuyển dụng', 'tuyen-dung', '2022-01-03 01:30:45', '2022-01-07 01:40:31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `data_rows`
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
-- Đang đổ dữ liệu cho bảng `data_rows`
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
(56, 7, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 7, 'name', 'text', 'Tên sản phẩm', 1, 1, 1, 1, 1, 1, '{}', 2),
(58, 7, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:products,slug\"}}', 3),
(59, 7, 'excerpt', 'text_area', 'Mô tả', 0, 0, 1, 1, 1, 1, '{}', 4),
(60, 7, 'body', 'rich_text_box', 'Nội dung', 0, 0, 1, 1, 1, 1, '{}', 5),
(61, 7, 'image', 'image', 'Ảnh', 0, 0, 1, 1, 1, 1, '{}', 6),
(62, 7, 'meta_description', 'text', 'Meta Description', 0, 0, 1, 1, 1, 1, '{}', 7),
(63, 7, 'meta_keywords', 'text', 'Meta Keywords', 0, 0, 1, 1, 1, 1, '{}', 8),
(64, 7, 'status', 'select_dropdown', 'Trạng thái', 1, 1, 1, 1, 1, 1, '{\"default\":\"ACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(65, 7, 'price', 'number', 'Giá', 0, 1, 1, 1, 1, 1, '{}', 10),
(66, 7, 'created_at', 'timestamp', 'Ngày tạo', 0, 1, 1, 1, 0, 1, '{}', 11),
(67, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 12),
(68, 8, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(69, 8, 'title', 'text', 'Tiêu đề', 1, 1, 1, 1, 1, 1, '{}', 2),
(70, 8, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:staticdatas,slug\"}}', 3),
(71, 8, 'description', 'rich_text_box', 'Mô tả', 0, 0, 1, 1, 1, 1, '{}', 4),
(72, 8, 'body', 'rich_text_box', 'Nội dung', 0, 0, 1, 1, 1, 1, '{}', 5),
(73, 8, 'image', 'image', 'Ảnh', 0, 0, 1, 1, 1, 1, '{}', 6),
(74, 8, 'meta_description', 'text', 'Meta Description', 0, 0, 1, 1, 1, 1, '{}', 7),
(75, 8, 'meta_keywords', 'text', 'Meta Keywords', 0, 0, 1, 1, 1, 1, '{}', 8),
(76, 8, 'type', 'select_dropdown', 'Loại', 0, 1, 1, 1, 1, 1, '{\"default\":\"linh-vuc-hoat-dong\",\"options\":{\"linh-vuc\":\"CH\\u00daNG T\\u00d4I CHUY\\u00caN V\\u1ec0\",\"quy-trinh\":\"QUY TR\\u00ccNH D\\u1ecaCH V\\u1ee4\",\"doi-tac\":\"KH\\u00c1CH H\\u00c0NG V\\u00c0 \\u0110\\u1ed0I T\\u00c1C\",\"vi-sao\":\"V\\u00cc SAO TIN T\\u01af\\u1edeNG AN PH\\u01af\\u01a0NG\"}}', 9),
(77, 8, 'status', 'select_dropdown', 'Trạng thái', 0, 1, 1, 1, 1, 1, '{\"default\":\"ACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 10),
(78, 8, 'created_at', 'timestamp', 'Ngày tạo', 0, 1, 1, 1, 0, 1, '{}', 11),
(79, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 12),
(80, 9, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(81, 9, 'name', 'text', 'Tiêu đề', 0, 1, 1, 1, 1, 1, '{}', 2),
(82, 9, 'image', 'image', 'Ảnh', 0, 0, 1, 1, 1, 1, '{}', 3),
(83, 9, 'type', 'select_dropdown', 'Loại', 0, 1, 1, 1, 1, 1, '{\"default\":\"banner\",\"options\":{\"banner\":\"Banner\"}}', 4),
(84, 9, 'status', 'select_dropdown', 'Trạng thái', 0, 1, 1, 1, 1, 1, '{\"default\":\"ACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 5),
(85, 9, 'created_at', 'timestamp', 'Ngày tạo', 0, 1, 1, 1, 0, 1, '{}', 6),
(86, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(87, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(88, 10, 'name', 'text', 'Họ tên', 0, 1, 1, 1, 1, 1, '{}', 2),
(89, 10, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 3),
(90, 10, 'phone', 'text', 'Điện thoại', 0, 1, 1, 1, 1, 1, '{}', 4),
(91, 10, 'title', 'text', 'Tiêu đề', 0, 1, 1, 1, 1, 1, '{}', 5),
(92, 10, 'content', 'text_area', 'Nội dung', 0, 0, 1, 1, 1, 1, '{}', 6),
(93, 10, 'created_at', 'timestamp', 'Ngày nhận', 0, 1, 1, 1, 0, 1, '{}', 7),
(94, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(95, 8, 'url', 'text', 'Url', 0, 1, 1, 1, 1, 1, '{}', 13),
(96, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(97, 11, 'name', 'text', 'Họ và tên', 1, 1, 1, 1, 1, 1, '{}', 2),
(98, 11, 'position', 'text', 'Chức vụ', 0, 1, 1, 1, 1, 1, '{}', 3),
(99, 11, 'experience', 'text', 'Kinh nghiệm', 0, 1, 1, 1, 1, 1, '{}', 4),
(100, 11, 'created_at', 'timestamp', 'Ngày tạo', 0, 0, 0, 0, 0, 0, '{}', 5),
(101, 11, 'updated_at', 'timestamp', 'Ngày cập  nhật', 0, 0, 0, 0, 0, 0, '{}', 6),
(102, 11, 'image', 'image', 'Ảnh', 0, 1, 1, 1, 1, 1, '{\"upsize\":true,\"thumbnails\":[{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"400\"}}]}', 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `data_types`
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
-- Đang đổ dữ liệu cho bảng `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2021-10-05 20:45:12', '2021-10-05 20:45:12'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2021-10-05 20:45:12', '2021-10-05 20:45:12'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2021-10-05 20:45:12', '2021-10-05 20:45:12'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2021-10-05 20:45:13', '2021-10-05 20:45:13'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2021-10-05 20:45:14', '2022-01-03 02:29:51'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2021-10-05 20:45:14', '2021-10-05 20:45:14'),
(7, 'products', 'products', 'Sản phẩm', 'Danh sách sản phẩm', NULL, 'App\\Product', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-10-07 00:35:58', '2021-10-07 00:35:58'),
(8, 'staticdatas', 'staticdatas', 'Static Data', 'Static Data', NULL, 'App\\Staticdata', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-10-07 00:56:09', '2022-01-03 03:39:13'),
(9, 'banners', 'banners', 'Banner', 'Banners', NULL, 'App\\Banner', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-10-07 02:58:44', '2021-10-07 02:58:44'),
(10, 'feedbacks', 'feedbacks', 'Phản hồi', 'Phản hồi', NULL, 'App\\Feedback', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-10-08 01:08:58', '2021-10-08 01:14:20'),
(11, 'personnels', 'personnels', 'Nhân sự', 'Nhân sự', NULL, 'App\\Personnel', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-01-03 19:44:37', '2022-01-04 07:32:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
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
-- Cấu trúc bảng cho bảng `feedbacks`
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
-- Đang đổ dữ liệu cho bảng `feedbacks`
--

INSERT INTO `feedbacks` (`id`, `name`, `email`, `phone`, `title`, `content`, `created_at`, `updated_at`) VALUES
(10, 'Phạm Mạnh Cường', 'cuongpham2107@gmail.com', '0984559557', 'contact', NULL, '2022-01-04 06:51:43', '2022-01-04 06:51:43'),
(11, 'anonymous', 'cuongpham2107@gmail.com', 'anonymous', 'contact', NULL, '2022-01-04 06:52:44', '2022-01-04 06:52:44'),
(12, 'anonymous', 'dtc18h4801020003@ictu.edu.vn', 'anonymous', 'contact', NULL, '2022-01-04 06:52:58', '2022-01-04 06:52:58'),
(13, 'Phạm Mạnh Cường', 'cuongpham2107@gmail.com', '0984559557', 'contact', NULL, '2022-01-04 07:05:42', '2022-01-04 07:05:42'),
(14, 'Phạm Mạnh Cường', 'cuongpham2107@gmail.com', '0984559557', 'contact', NULL, '2022-01-04 07:21:37', '2022-01-04 07:21:37'),
(15, 'Phạm Mạnh Cường', 'cuongpham2107@gmail.com', '0984559557', 'contact', NULL, '2022-01-04 07:25:04', '2022-01-04 07:25:04'),
(16, 'Phạm Mạnh Cường', 'cuongpham2107@gmail.com', '0984559557', 'contact', NULL, '2022-01-04 07:25:50', '2022-01-04 07:25:50'),
(17, 'Phạm Mạnh Cường', 'cuongpham2107@gmail.com', '0984559557', 'contact', NULL, '2022-01-04 07:26:24', '2022-01-04 07:26:24'),
(18, 'anonymous', 'admin@admin.com', 'anonymous', 'contact', NULL, '2022-01-04 07:26:30', '2022-01-04 07:26:30'),
(19, 'anonymous', 'dtc18h4801020003@gmail.com', 'anonymous', 'contact', NULL, '2022-01-04 07:26:37', '2022-01-04 07:26:37'),
(20, 'anonymous', 'dtc18h4801020003@ictu.edu.vn', 'anonymous', 'contact', NULL, '2022-01-04 07:26:45', '2022-01-04 07:26:45'),
(21, 'anonymous', 'admin@admin.com', 'anonymous', 'contact', NULL, '2022-01-04 07:38:44', '2022-01-04 07:38:44'),
(22, 'anonymous', 'cuongpham2107@gmail.com', 'anonymous', 'contact', NULL, '2022-01-04 07:42:25', '2022-01-04 07:42:25'),
(23, 'anonymous', 'mikhail213@96dc.asia', 'anonymous', 'contact', NULL, '2022-01-04 07:44:17', '2022-01-04 07:44:17'),
(24, 'anonymous', 'cuongpham2107@gmail.com', 'anonymous', 'contact', NULL, '2022-01-04 07:44:30', '2022-01-04 07:44:30'),
(25, 'Phạm Mạnh Cường', 'cuongpham2107@gmail.com', '0984559557', 'contact', NULL, '2022-01-04 07:44:39', '2022-01-04 07:44:39'),
(26, 'anonymous', 'acb@gmail.com', 'anonymous', 'contact', NULL, '2022-01-04 08:06:26', '2022-01-04 08:06:26'),
(27, 'anonymous', 'viet.hung.2898@gmail.com', 'anonymous', 'contact', NULL, '2022-01-04 18:50:33', '2022-01-04 18:50:33');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2021-10-05 20:45:13', '2021-10-05 20:45:13'),
(2, 'Home menu', '2022-01-02 20:29:49', '2022-01-02 20:29:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_items`
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
-- Đang đổ dữ liệu cho bảng `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2021-10-05 20:45:13', '2021-10-05 20:45:13', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 11, '2021-10-05 20:45:13', '2022-01-03 21:16:11', 'voyager.media.index', NULL),
(3, 1, 'Tài khoản', '', '_self', 'voyager-person', '#000000', NULL, 10, '2021-10-05 20:45:13', '2022-01-03 21:16:11', 'voyager.users.index', 'null'),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 12, '2021-10-05 20:45:13', '2022-01-03 21:16:11', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 13, '2021-10-05 20:45:13', '2022-01-03 21:16:11', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2021-10-05 20:45:13', '2021-10-06 02:18:54', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2021-10-05 20:45:13', '2021-10-06 02:18:54', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2021-10-05 20:45:13', '2021-10-06 02:18:55', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2021-10-05 20:45:13', '2021-10-06 02:18:55', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2021-10-05 20:45:13', '2022-01-03 21:16:11', 'voyager.settings.index', NULL),
(11, 1, 'Danh mục bài viết', '', '_self', 'voyager-categories', '#000000', NULL, 4, '2021-10-05 20:45:13', '2021-10-07 03:00:07', 'voyager.categories.index', 'null'),
(12, 1, 'Bài viết', '', '_self', 'voyager-news', '#000000', NULL, 5, '2021-10-05 20:45:14', '2021-10-07 03:00:07', 'voyager.posts.index', 'null'),
(13, 1, 'Trang', '', '_self', 'voyager-file-text', '#000000', NULL, 3, '2021-10-05 20:45:14', '2021-10-07 03:00:07', 'voyager.pages.index', 'null'),
(15, 1, 'Static Data', '', '_self', 'voyager-thumb-tack', '#000000', NULL, 8, '2021-10-07 00:56:09', '2022-01-03 21:16:11', 'voyager.staticdatas.index', 'null'),
(16, 1, 'Banners', '', '_self', 'voyager-photos', '#000000', NULL, 2, '2021-10-07 02:58:44', '2021-10-07 03:00:07', 'voyager.banners.index', 'null'),
(17, 1, 'Phản hồi', '', '_self', 'voyager-paper-plane', '#000000', NULL, 9, '2021-10-08 01:08:58', '2022-01-03 21:16:11', 'voyager.feedbacks.index', 'null'),
(18, 2, 'Trang chủ', '/', '_self', NULL, '#000000', NULL, 1, '2022-01-02 20:30:26', '2022-01-02 20:32:23', NULL, ''),
(19, 2, 'Giới thiệu', '/gioi-thieu', '_self', NULL, '#000000', NULL, 2, '2022-01-02 20:32:13', '2022-01-03 06:09:12', NULL, ''),
(21, 2, 'Dịch vụ', '', '_self', NULL, '#000000', NULL, 3, '2022-01-02 20:32:48', '2022-01-04 21:46:19', NULL, ''),
(22, 2, 'GIÚP VIỆC GIA ĐÌNH', '/services/giup-viec-gia-dinh', '_self', NULL, '#000000', 21, 1, '2022-01-02 20:32:56', '2022-01-03 03:25:08', NULL, ''),
(23, 2, 'VỆ SINH CÔNG NGHIỆP', '/services/ve-sinh-cong-nghiep', '_self', NULL, '#000000', 21, 2, '2022-01-02 20:33:01', '2022-01-03 03:25:28', NULL, ''),
(24, 2, 'Bài viết', '/blogs', '_self', NULL, '#000000', NULL, 4, '2022-01-02 20:33:23', '2022-01-04 21:46:19', NULL, ''),
(25, 2, 'Liên hệ', 'lien-he', '_self', NULL, '#000000', NULL, 7, '2022-01-02 20:33:36', '2022-01-04 21:46:16', NULL, ''),
(26, 2, 'Tuyển dụng', 'category/tuyen-dung', '_self', NULL, '#000000', NULL, 6, '2022-01-02 20:33:43', '2022-01-07 01:55:51', NULL, ''),
(27, 2, 'HỢP TÁC DOANH NGHIỆP VIỆC LÀM CHO NGƯỜI KHUYẾT TẬT', '/services/hop-tac-doanh-nghiep', '_self', NULL, '#000000', 21, 3, '2022-01-03 00:23:25', '2022-01-03 22:13:36', NULL, ''),
(28, 1, 'Nhân sự', '', '_self', 'voyager-people', '#000000', NULL, 6, '2022-01-03 19:44:37', '2022-01-04 07:31:01', 'voyager.personnels.index', 'null'),
(29, 2, 'Hợp tác doanh nghiệp', '/pages/hop-tac-doanh-nghiep', '_self', NULL, '#000000', NULL, 5, '2022-01-04 20:48:18', '2022-01-04 21:46:16', NULL, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
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
-- Cấu trúc bảng cho bảng `pages`
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
-- Đang đổ dữ liệu cho bảng `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(3, 1, 'Liên hệ', 'Liên hệ', '<p>Li&ecirc;n hệ</p>', NULL, 'contact', 'liên hệ', 'liên hệ', 'ACTIVE', '2021-10-06 21:45:42', '2021-10-06 21:45:42'),
(4, 1, 'Giới thiệu ở trang chủ', 'VÌ SAO BẠN CHỌN GIÚP VIỆC AN PHƯƠNG THÁI NGUYÊN ?', '<h1 id=\"symbol-title\" class=\"symbol__title symbol__title--main\" style=\"box-sizing: inherit; font-size: 18px; margin: 0px; font-weight: normal; line-height: 1.3; color: #111111; font-family: Roboto, \'Noto Sans\', sans-serif;\"><span style=\"box-sizing: border-box; font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\"><strong>Mang trong m&igrave;nh sứ mệnh l&agrave;m cầu nối giữa gia đ&igrave;nh c&oacute; nhu cầu v&agrave; những người gi&uacute;p việc. Đ&acirc;y cũng ch&iacute;nh l&agrave; một trong những mục ti&ecirc;u hoạt động của c&ocirc;ng ty ch&uacute;ng t&ocirc;i.</strong> </span><span id=\"docs-internal-guid-c9795e57-7fff-b7c4-f14e-2b8f5459956f\" style=\"box-sizing: border-box;\"></span></h1>\r\n<h1 class=\"symbol__title symbol__title--main\" style=\"box-sizing: inherit; font-size: 18px; margin: 0px; font-weight: normal; line-height: 1.3; color: #111111; font-family: Roboto, \'Noto Sans\', sans-serif;\"><span style=\"box-sizing: border-box; font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">👉 Đối với c&aacute;c gia đ&igrave;nh, Gi&uacute;p việc An Phương Th&aacute;i Nguy&ecirc;n sẽ lu&ocirc;n đồng h&agrave;nh trong qu&aacute; tr&igrave;nh duy tr&igrave; v&agrave; x&acirc;y dựng tổ ấm. Ch&uacute;ng t&ocirc;i cung cấp nh&acirc;n sự gi&uacute;p việc tuỳ v&agrave;o mong muốn của gia đ&igrave;nh. Đ&oacute; l&agrave;: Chăm s&oacute;c người gi&agrave;, trẻ em, gi&uacute;p việc nh&agrave; cửa, gi&uacute;p việc h&agrave;nh ch&iacute;nh cho c&aacute;c doanh nghiệp, đơn vị. <br /></span></h1>\r\n<h1 class=\"symbol__title symbol__title--main\" style=\"box-sizing: inherit; font-size: 18px; margin: 0px; font-weight: normal; line-height: 1.3; color: #111111; font-family: Roboto, \'Noto Sans\', sans-serif;\"><span style=\"box-sizing: border-box; font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">👉 Gi&uacute;p việc An Phương đ&atilde; v&agrave; đang được nhiều kh&aacute;ch h&agrave;ng tin tưởng bởi những người gi&uacute;p việc m&agrave; ch&uacute;ng t&ocirc;i cung cấp cho kh&aacute;ch h&agrave;ng đều c&oacute; giấy tờ chứng minh nh&acirc;n th&acirc;n r&otilde; r&agrave;ng v&agrave; đ&atilde; qua kiểm tra, s&agrave;ng lọc chặt chẽ về tư c&aacute;ch, sức khoẻ v&agrave; c&aacute;c kỹ năng l&agrave;m việc. <br /></span></h1>\r\n<h1 class=\"symbol__title symbol__title--main\" style=\"box-sizing: inherit; font-size: 18px; margin: 0px; font-weight: normal; line-height: 1.3; color: #111111; font-family: Roboto, \'Noto Sans\', sans-serif;\"><span style=\"box-sizing: border-box; font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">👉 Đối với người lao động, An Phương coi như l&agrave; người th&acirc;n của m&igrave;nh, bởi ch&uacute;ng t&ocirc;i mong muốn gi&uacute;p đỡ những người lao động n&ocirc;ng th&ocirc;n đang thất nghiệp trong t&igrave;nh h&igrave;nh dịch bệnh kh&oacute; khăn.Từ đ&oacute; họ c&oacute; được việc l&agrave;m ổn định ph&ugrave; hợp với độ tuổi, sức khoẻ. V&igrave; vậy người lao động ho&agrave;n to&agrave;n tin tưởng Gi&uacute;p Việc An Phương!</span></h1>\r\n<p><a class=\"btn btn-primary\" href=\"/gioi-thieu\">XEM TH&Ecirc;M</a></p>', 'pages/January2022/0KGqPq4xFgQR7comKsbP.png', 'about-home', 'About home', 'About home', 'ACTIVE', '2021-10-07 03:30:42', '2022-01-06 20:21:10'),
(5, 1, 'Thành tựu', 'Thành tựu', '<div class=\"row\">\r\n<div class=\"col-lg-3 col-md-3 col-sm-3 col-xs-6\">\r\n<div class=\"coutdown text-center\" style=\"border-left: 1px dashed #fff;\">\r\n<div id=\"shiva\"><span class=\"count\">1000</span> <span class=\"dv\">+</span></div>\r\n<div class=\"namecount\">KH&Aacute;CH H&Agrave;NG</div>\r\n</div>\r\n</div>\r\n<div class=\"col-lg-3 col-md-3 col-sm-3 col-xs-6\">\r\n<div class=\"coutdown text-center\">\r\n<div id=\"shiva\"><span class=\"count\">95</span> <span class=\"dv\">% +</span></div>\r\n<div class=\"namecount\">MỨC ĐỘ H&Agrave;I L&Ograve;NG</div>\r\n</div>\r\n</div>\r\n<div class=\"col-lg-3 col-md-3 col-sm-3 col-xs-6\">\r\n<div class=\"coutdown text-center\">\r\n<div id=\"shiva\"><span class=\"count\">5</span> <span class=\"dv\">+</span></div>\r\n<div class=\"namecount\">NĂM KINH NGHIỆM</div>\r\n</div>\r\n</div>\r\n<div class=\"col-lg-3 col-md-3 col-sm-3 col-xs-6\">\r\n<div class=\"coutdown text-center\">\r\n<div id=\"shiva\"><span class=\"count\">10</span> <span class=\"dv\">+</span></div>\r\n<div class=\"namecount\">CHUY&Ecirc;N GIA</div>\r\n</div>\r\n</div>\r\n</div>', 'pages/January2022/wzQRjiPUmOBMq00lAoeS.webp', 'thanh-tuu', 'Thành tựu', 'Thành tựu', 'ACTIVE', '2022-01-02 22:14:21', '2022-01-04 21:21:08'),
(6, 1, 'Tuyển dụng', 'Tuyển dụng', '<h1 style=\"text-align: center;\"><span style=\"color: #3498db;\"><strong><span style=\"font-size: 18px;\">C&Ocirc;NG TY TNHHH DỊCH VỤ THƯƠNG MẠI V&Agrave; PH&Aacute;T TRIỂN VIỆC L&Agrave;M NGƯỜI KHUYẾT TẬT AP TUYỂN DỤNG</span></strong></span></h1>\r\n<p dir=\"ltr\" style=\"line-height: 1.7999999999999998; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 14pt; font-family: \'Times New Roman\'; color: #001a33; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">Gi&uacute;p việc gia đ&igrave;nh:</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.7999999999999998; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 14pt; font-family: \'Times New Roman\'; color: #001a33; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">- Số lượng: 100 người</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.7999999999999998; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 14pt; font-family: \'Times New Roman\'; color: #001a33; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">- Giới t&iacute;nh: Nam /Nữ</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.7999999999999998; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 14pt; font-family: \'Times New Roman\'; color: #001a33; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">- Độ tuổi: 18 - 55 Tuổi.</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.7999999999999998; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 14pt; font-family: \'Times New Roman\'; color: #001a33; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">Y&ecirc;u cầu:&nbsp;</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.7999999999999998; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 14pt; font-family: \'Times New Roman\'; color: #001a33; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">- Kh&ocirc;ng mắc bệnh truyền nhiễm, đ&atilde; ti&ecirc;m tối thiểu 1 mũi vaccine,&nbsp;</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.7999999999999998; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 14pt; font-family: \'Times New Roman\'; color: #001a33; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">- C&oacute; l&yacute; lịch r&otilde; r&agrave;ng.</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.7999999999999998; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 14pt; font-family: \'Times New Roman\'; color: #001a33; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">- Thật th&agrave;, nhanh nhẹn, c&oacute; tr&aacute;ch nhiệm trong c&ocirc;ng việc.</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.7999999999999998; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 14pt; font-family: \'Times New Roman\'; color: #001a33; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">M&ocirc; tả c&ocirc;ng việc:</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.7999999999999998; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 14pt; font-family: \'Times New Roman\'; color: #001a33; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">- Chăm s&oacute;c người gi&agrave;.</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.7999999999999998; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 14pt; font-family: \'Times New Roman\'; color: #001a33; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">- Chăm s&oacute;c bệnh nh&acirc;n.</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.7999999999999998; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 14pt; font-family: \'Times New Roman\'; color: #001a33; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">- Chăm s&oacute;c trẻ em. </span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.7999999999999998; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 14pt; font-family: \'Times New Roman\'; color: #001a33; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">- Gi&uacute;p việc nh&agrave;.</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.7999999999999998; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 14pt; font-family: \'Times New Roman\'; color: #001a33; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">Quyền lợi được hưởng:</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.7999999999999998; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 14pt; font-family: \'Times New Roman\'; color: #001a33; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">- Mức lương: 5.000.000đ (Năm triệu đồng) trở l&ecirc;n/ th&aacute;ng&nbsp;</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.7999999999999998; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 14pt; font-family: \'Times New Roman\'; color: #001a33; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">- Đối với gi&uacute;p việc theo giờ được hưởng mức lương theo giờ, t&iacute;nh theo từng thời gian v&agrave; c&ocirc;ng việc cụ thể.</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.7999999999999998; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 14pt; font-family: \'Times New Roman\'; color: #001a33; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">- Được ph&aacute;t &aacute;o đồng phục của c&ocirc;ng ty.</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.7999999999999998; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 14pt; font-family: \'Times New Roman\'; color: #001a33; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">- Được đ&oacute;ng bảo hiểm theo quy định luật lao động người gi&uacute;p việc (Nếu gắn b&oacute; l&acirc;u d&agrave;i).</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.7999999999999998; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 14pt; font-family: \'Times New Roman\'; color: #001a33; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">Chi tiết li&ecirc;n hệ: Văn ph&ograve;ng c&ocirc;ng ty TNHH dịch vụ thương mại &amp; Ph&aacute;t triển việc l&agrave;m người khuyết tật AP.</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.7999999999999998; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 14pt; font-family: \'Times New Roman\'; color: #001a33; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">Địa chỉ: Số nh&agrave; 23, tổ 1, phường Đồng Quang, th&agrave;nh phố Th&aacute;i Nguy&ecirc;n, tỉnh Th&aacute;i Nguy&ecirc;n.</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.7999999999999998; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 14pt; font-family: \'Times New Roman\'; color: #001a33; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">Hotline: 0354041140 - 0967992688</span></p>', NULL, 'tuyen-dung', 'Tuyển dụng', 'Tuyển dụng', 'ACTIVE', '2022-01-03 01:13:38', '2022-01-05 04:49:30'),
(7, 1, 'Giới thiệu', 'Công ty TNHH Dịch Vụ Thương Mại Và Phát Triển Việc Làm Người Khuyết Tật AP', '<p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"color: #000000;\"><span style=\"font-size: 11pt; font-family: Arial; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Mang trong m&igrave;nh sứ mệnh l&agrave;m cầu nối giữa gia đ&igrave;nh c&oacute; nhu cầu v&agrave; những người gi&uacute;p việc, đ&acirc;y cũng ch&iacute;nh l&agrave; một trong những mục ti&ecirc;u hoạt động của c&ocirc;ng ty An Phương ch&uacute;ng t&ocirc;i. </span><span id=\"docs-internal-guid-c9795e57-7fff-b7c4-f14e-2b8f5459956f\"></span></span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Đối với c&aacute;c gia đ&igrave;nh, Gi&uacute;p việc An Phương Th&aacute;i Nguy&ecirc;n sẽ lu&ocirc;n đồng h&agrave;nh trong qu&aacute; tr&igrave;nh duy tr&igrave; v&agrave; x&acirc;y dựng tổ ấm. Ch&uacute;ng t&ocirc;i cung cấp nh&acirc;n sự gi&uacute;p việc tuỳ v&agrave;o mong muốn của gia đ&igrave;nh. Đ&oacute; l&agrave;: Chăm s&oacute;c người gi&agrave;, trẻ em, gi&uacute;p việc nh&agrave; cửa, gi&uacute;p việc h&agrave;nh ch&iacute;nh cho c&aacute;c doanh nghiệp v&agrave; đơn vị. </span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Gi&uacute;p việc An Phương đ&atilde; v&agrave; đang được nhiều kh&aacute;ch h&agrave;ng tin tưởng bởi những người gi&uacute;p việc m&agrave; ch&uacute;ng t&ocirc;i cung cấp cho kh&aacute;ch h&agrave;ng đều c&oacute; giấy tờ chứng minh nh&acirc;n th&acirc;n r&otilde; r&agrave;ng v&agrave; đ&atilde; qua kiểm tra, s&agrave;ng lọc chặt chẽ về tư c&aacute;ch, sức khoẻ v&agrave; c&aacute;c kỹ năng l&agrave;m việc.&nbsp;</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Đối với người lao động, An Phương coi như l&agrave; người th&acirc;n của m&igrave;nh, bởi ch&uacute;ng t&ocirc;i mong muốn gi&uacute;p đỡ những người lao động n&ocirc;ng th&ocirc;n đang thất nghiệp trong t&igrave;nh h&igrave;nh dịch bệnh kh&oacute; khăn. Từ đ&oacute; họ c&oacute; được việc l&agrave;m ổn định ph&ugrave; hợp với độ tuổi, sức khoẻ. V&igrave; vậy người lao động ho&agrave;n to&agrave;n tin tưởng Gi&uacute;p Việc An Phương. Người gi&uacute;p việc được hưởng c&aacute;c quyền lợi tốt nhất như:</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">- Kh&ocirc;ng bị giữ chứng minh thư</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">- Kh&ocirc;ng bị giữ một phần lương</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">- Kh&ocirc;ng bị thu ph&iacute; dịch vụ</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">- Kh&ocirc;ng bị &eacute;p buộc phải l&agrave;m việc ở nơi m&agrave; m&igrave;nh kh&ocirc;ng th&iacute;ch.</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">- Kh&ocirc;ng bị thu bất kỳ chi ph&iacute; n&agrave;o, mọi quyền lợi người gi&uacute;p việc sẽ được trung t&acirc;m đảm bảo. </span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">- L&agrave;m một ng&agrave;y vẫn được trả c&ocirc;ng đầy đủ</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">- Được tặng qu&agrave; sinh nhật h&agrave;ng năm</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">- Được ph&aacute;t &aacute;o đồng phục theo định kỳ</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">- Trả lương ph&ugrave; hợp v&agrave; đ&uacute;ng kỳ hạn</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">- Người gi&uacute;p việc sẽ được đ&agrave;o tạo nghề gi&uacute;p việc qua chương tr&igrave;nh &ldquo;Đ&agrave;o tạo người gi&uacute;p việc cấp tốc&rdquo; của c&ocirc;ng ty&nbsp; An Phương, v&igrave; vậy c&aacute;c chị em lần đầu ti&ecirc;n đi l&agrave;m gi&uacute;p việc kh&ocirc;ng cần phải lo lắng.</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">- C&ocirc;ng ty An Phương hỗ trợ tiền xe đi lại l&agrave; 100.000đ, do vậy chị em c&oacute; thể gọi xe &ocirc;m phục vụ cho việc đi lại. </span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; text-align: justify; margin-top: 0pt; margin-bottom: 0pt;\" role=\"presentation\"><span style=\"font-size: 11.5pt; font-family: Roboto, sans-serif; color: #000000; background-color: #ffffff; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">- Được gi&uacute;p đỡ khi ốm đau v&agrave; đột xuất c&oacute; việc cần thiết. </span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\" role=\"presentation\"><span style=\"font-size: 11.5pt; font-family: Roboto, sans-serif; color: #000000; background-color: #ffffff; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">- Được đ&oacute;ng bảo hiểm đầy đủ theo luật lao động nếu gắn b&oacute; l&acirc;u d&agrave;i </span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 11.5pt; font-family: Roboto, sans-serif; color: #000000; background-color: #ffffff; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Tự h&agrave;o khi l&agrave; một trong những đơn vị uy t&iacute;n tại Th&aacute;i Nguy&ecirc;n về dịch vụ gi&uacute;p việc, vệ sinh c&ocirc;ng nghiệp,... C&ocirc;ng ty An Phương sẽ cố gắng v&agrave; x&acirc;y dựng v&agrave; ph&aacute;t triển. Nhằm đ&aacute;p ứng kh&aacute;ch h&agrave;ng v&agrave; người lao động tốt hơn nữa. </span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 11.5pt; font-family: Roboto, sans-serif; color: #000000; background-color: #ffffff; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Sự h&agrave;i l&ograve;ng của kh&aacute;ch h&agrave;ng v&agrave; lựa chọn của người lao động đ&atilde; minh chứng cho điều đ&oacute;. Ch&uacute;ng t&ocirc;i v&ocirc; c&ugrave;ng cảm ơn v&agrave; tr&acirc;n qu&yacute;! </span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 11.5pt; font-family: Roboto, sans-serif; color: #000000; background-color: #ffffff; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">C&ocirc;ng ty An Phươn lu&ocirc;n đồng h&agrave;nh v&agrave; phục vụ nhanh nhất c&oacute; thể. </span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 11.5pt; font-family: Roboto, sans-serif; color: #000000; background-color: #ffffff; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Ch&acirc;n th&agrave;nh cảm ơn!&nbsp;</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\">&nbsp;</p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\">&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', 'pages/January2022/HuFk6RuxZCccIcxlAp52.jpg', 'about', 'Mang trong mình sứ mệnh là cầu nối giữa gia đình có nhu cầu và những người giúp việc, đây cũng là một trong những mục tiêu hoạt động của công ty An Phương chúng tôi.', 'thuê người giúp việc, giúp việc tại Thái Nguyên', 'INACTIVE', '2022-01-03 06:23:21', '2022-01-06 19:29:25'),
(8, 1, 'Hợp tác doanh nghiệp', 'Công ty TNHH Dịch Vụ Thương Mại và Phát triển việc làm người khuyết tật AP cần hợp tác với các doanh nghiệp trong và ngoài nước phù hợp với việc làm cho người khuyết tật', '<h1 dir=\"ltr\" style=\"line-height: 1.7999999999999998; text-align: center; background-color: #ffffff; margin-top: 15pt; margin-bottom: 0pt; padding: 0pt 0pt 8pt 0pt;\"><span style=\"font-size: 13.999999999999998pt; font-family: \'Times New Roman\'; color: #3498db; background-color: transparent; font-weight: bold; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">C&Ocirc;NG TY TNHH DỊCH VỤ THƯƠNG MẠI V&Agrave; PH&Aacute;T TRIỂN VIỆC L&Agrave;M NGƯỜI KHUYẾT TẬT AP</span></h1>\r\n<p dir=\"ltr\" style=\"line-height: 1.7999999999999998; text-align: center; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 13.999999999999998pt; font-family: \'Times New Roman\'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">CH&Uacute;NG T&Ocirc;I CẦN HỢP T&Aacute;C C&Aacute;C DOANH NGHIỆP TRONG V&Agrave; NGO&Agrave;I NƯỚC PH&Ugrave; HỢP VỚI VIỆC L&Agrave;M CHO NGƯỜI KHUYẾT TẬT</span><strong id=\"docs-internal-guid-5c0110d3-7fff-d200-aa53-df859ec9f577\" style=\"font-weight: normal;\"></strong></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.8; text-align: justify; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 13.999999999999998pt; font-family: \'Times New Roman\'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Với mong muốn l&agrave; cầu nối việc l&agrave;m nh&acirc;n sự cho c&aacute;c đơn vị c&ocirc;ng ty, doanh nghiệp, tạo điều kiện gi&uacute;p đỡ những ho&agrave;n cảnh kh&oacute; khăn n&oacute;i chung v&agrave; người khuyết tật n&oacute;i ri&ecirc;ng. </span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.7999999999999998; text-align: justify; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 13.999999999999998pt; font-family: \'Times New Roman\'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">C&ocirc;ng ty TNHH Dịch vụ Thương Mại v&agrave; Ph&aacute;t triển việc l&agrave;m người khuyết tật AP h&acirc;n hạnh mong muốn được hợp t&aacute;c c&ugrave;ng c&aacute;c qu&yacute; doanh nghiệp, đơn vị trong v&agrave; ngo&agrave;i nước bằng việc cung cấp nh&acirc;n lực l&agrave; người khuyết tật trong c&aacute;c lĩnh vực:</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.7999999999999998; text-align: justify; margin-top: 0pt; margin-bottom: 0pt;\" role=\"presentation\"><span style=\"font-size: 13.999999999999998pt; font-family: \'Times New Roman\'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">- Điện tử</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.7999999999999998; text-align: justify; margin-top: 0pt; margin-bottom: 0pt;\" role=\"presentation\"><span style=\"font-size: 13.999999999999998pt; font-family: \'Times New Roman\'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">- May mặc</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.7999999999999998; text-align: justify; margin-top: 0pt; margin-bottom: 0pt;\" role=\"presentation\"><span style=\"font-size: 13.999999999999998pt; font-family: \'Times New Roman\'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">- M&acirc;y tre đan</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.8; text-align: justify; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 13.999999999999998pt; font-family: \'Times New Roman\'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Sự hợp t&aacute;c v&agrave; ủng hộ của qu&yacute; doanh nghiệp l&agrave; yếu tố gi&uacute;p ch&uacute;ng t&ocirc;i thực hiện được mục ti&ecirc;u v&agrave; &yacute; nghĩa gi&aacute; trị doanh nghiệp của m&igrave;nh n&oacute;i ri&ecirc;ng v&agrave; l&agrave; sự hợp t&aacute;c c&ugrave;ng ph&aacute;t triển của cả hai b&ecirc;n n&oacute;i chung.&nbsp;</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.8; text-align: justify; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 13.999999999999998pt; font-family: \'Times New Roman\'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Do vậy những doanh nghiệp trong lĩnh vực m&agrave; ch&uacute;ng t&ocirc;i kể tr&ecirc;n c&oacute; nhu cầu về mặt nh&acirc;n sự với chi ph&iacute; hợp l&yacute; c&oacute; thể li&ecirc;n hệ với ch&uacute;ng t&ocirc;i. C&ocirc;ng ty TNHH Dịch vụ Thương Mại v&agrave; Ph&aacute;t triển Việc l&agrave;m Người khuyết tật AP lu&ocirc;n sẵn s&agrave;ng cung cấp đầy đủ về số lượng v&agrave; đảm bảo về chất lượng. </span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.7999999999999998; text-align: justify; margin-top: 0pt; margin-bottom: 0pt;\">&nbsp;</p>\r\n<p dir=\"ltr\" style=\"line-height: 1.7999999999999998; text-align: justify; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 13.999999999999998pt; font-family: \'Times New Roman\'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Mọi chi tiết xin được li&ecirc;n hệ:&nbsp;</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.7999999999999998; text-align: justify; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 13.999999999999998pt; font-family: \'Times New Roman\'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Hotline: 0867814815</span></p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-size: 13.999999999999998pt; font-family: \'Times New Roman\'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">&nbsp;</span></p>', NULL, 'hop-tac-doanh-nghiep', 'Hợp tác doanh nghiệp', 'Hợp tác doanh nghiệp', 'ACTIVE', '2022-01-04 20:47:24', '2022-01-06 20:00:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permissions`
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
(41, 'browse_products', 'products', '2021-10-07 00:35:58', '2021-10-07 00:35:58'),
(42, 'read_products', 'products', '2021-10-07 00:35:58', '2021-10-07 00:35:58'),
(43, 'edit_products', 'products', '2021-10-07 00:35:58', '2021-10-07 00:35:58'),
(44, 'add_products', 'products', '2021-10-07 00:35:58', '2021-10-07 00:35:58'),
(45, 'delete_products', 'products', '2021-10-07 00:35:58', '2021-10-07 00:35:58'),
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
(65, 'delete_personnels', 'personnels', '2022-01-03 19:44:37', '2022-01-03 19:44:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permission_role`
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
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
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
(65, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
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
-- Cấu trúc bảng cho bảng `personnels`
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
-- Đang đổ dữ liệu cho bảng `personnels`
--

INSERT INTO `personnels` (`id`, `name`, `position`, `experience`, `created_at`, `updated_at`, `image`) VALUES
(1, 'Trương Tuyết  Nhung', 'Nhân viên tạp vụ', '10 năm', '2022-01-03 19:50:00', '2022-01-04 08:09:52', 'personnels/January2022/NrNFiSmDLqXxG6DBIBdf.png'),
(2, 'Trương Thu Hương', 'Nhân viên vệ sinh', NULL, '2022-01-03 19:52:00', '2022-01-04 08:09:28', 'personnels/January2022/lmkDVBnwqQSJB7fD6Ayn.png'),
(3, 'Hoàng Kim Ngọc', 'Kỹ thuật viên vệ sinh công nghiệp', NULL, '2022-01-03 19:53:00', '2022-01-04 07:30:10', 'personnels/January2022/arkvZbNuucl4iTq8e3qO.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
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
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(5, 1, 1, 'Có nên thuê người giúp việc hay không ?', 'Có cần thuê người giúp việc hay không', 'Cùng An Phương để hiểu rõ hơn và có cái nhìn toàn diện về người giúp việc và giúp chị em đưa ra được những quyết định cho gia đình của mình nhé.', '<p dir=\"ltr\" style=\"line-height: 1.38; text-align: justify; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 11.5pt; font-family: Roboto,sans-serif; color: #001a33; background-color: #ffffff; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Quan niệm ng&agrave;y xưa &ocirc;ng b&agrave; ta c&oacute; để lại cho con ch&aacute;u l&agrave; phụ nữ lấy chồng theo chồng, cung phụng chồng, dạy con, lo lắng việc nh&agrave;, bếp n&uacute;c c&oacute; khi l&agrave; cả đời chỉ giam m&igrave;nh trong nh&agrave; hay l&agrave; căn bếp nhỏ. Nhưng x&atilde; hội ng&agrave;y c&agrave;ng hiện đại hơn, phụ nữ ng&agrave;y c&agrave;ng chứng minh bản th&acirc;n m&igrave;nh c&oacute; thể l&agrave;m những việc m&agrave; con trai l&agrave;m. C&oacute; thể tự ra ngo&agrave;i kiếm tiền, lo lắng qu&aacute;n xuyến c&ocirc;ng việc nh&agrave;, dạy con l&ecirc;n người v&agrave; đ&ocirc;i khi phụ nữ cũng c&oacute; thể l&agrave;m trụ cột gia đ&igrave;nh. </span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; text-align: justify; margin-top: 0pt; margin-bottom: 0pt;\">&nbsp;</p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; text-align: justify; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 11.5pt; font-family: Roboto,sans-serif; color: #001a33; background-color: #ffffff; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Nhưng c&aacute;i g&igrave; cũng c&oacute; ưu v&agrave; nhược điểm của n&oacute;, phụ nữ c&oacute; thể g&aacute;nh v&aacute;c hết tất thảy mọi việc nhưng l&acirc;u ng&agrave;y cũng sẽ dẫn đến mỏi mệt. Ng&agrave;y lo c&ocirc;ng việc chốn c&ocirc;ng sở mệt mỏi khi về nh&agrave; chỉ muốn được nghỉ ngơi v&agrave; kh&ocirc;ng c&ograve;n muốn dọn dẹp nh&agrave; cửa nữa. C&ocirc;ng việc th&igrave; bận rộn như thế, c&oacute; hay kh&ocirc;ng n&ecirc;n thu&ecirc; người gi&uacute;p bạn - chị em phụ nữ l&agrave;m những c&ocirc;ng việc nh&agrave; để chị em chuy&ecirc;n t&acirc;m l&agrave;m việc tạo dựng những mối quan hệ v&agrave; c&oacute; th&ecirc;m nhiều thời gian để &ldquo;y&ecirc;u&rdquo; m&igrave;nh hơn. C&ugrave;ng An Phương để hiểu r&otilde; hơn v&agrave; c&oacute; c&aacute;i nh&igrave;n to&agrave;n diện về người gi&uacute;p việc v&agrave; gi&uacute;p chị em đưa ra được những quyết định cho gia đ&igrave;nh của m&igrave;nh nh&eacute;.</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; text-align: justify; margin-top: 0pt; margin-bottom: 0pt;\">&nbsp;</p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; text-align: justify; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 11.5pt; font-family: Roboto,sans-serif; color: #001a33; background-color: #ffffff; font-weight: bold; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Gi&uacute;p chị em c&oacute; th&ecirc;m nhiều thời gian l&agrave;m việc hơn</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; text-align: justify; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 11.5pt; font-family: Roboto,sans-serif; color: #001a33; background-color: #ffffff; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Cả một ng&agrave;y d&agrave;i l&agrave;m việc ở ngo&agrave;i sau bao mệt mỏi chỉ muốn trở về ngồi nh&agrave; th&acirc;n y&ecirc;u để nghỉ ngơi nhưng nghĩ đến cảnh về nh&agrave; m&agrave; vẫn phải tất bật l&agrave;m việc nh&agrave; khiến cho nhiều chị em cảm thấy ch&aacute;n nản v&agrave; ng&agrave;y c&agrave;ng mỏi mệt hơn. Kh&ocirc;ng c&ograve;n thời gian để tận hưởng, vui chơi c&ugrave;ng con c&aacute;i. Thay v&igrave; tốn thời gian v&agrave;o những việc vụn vặt th&igrave; họ d&agrave;nh để đầu tư cho những việc m&igrave;nh th&iacute;ch v&agrave; tạo ra năng suất lao động cao hơn. Bởi vậy, bạn cần thu&ecirc; một dịch vụ thu&ecirc; người gi&uacute;p việc để gi&uacute;p bạn c&oacute; th&ecirc;m thời gian để thư gi&atilde;n, tận hưởng cuộc sống v&agrave; đầu tư thời gian cho bản th&acirc;n nhiều hơn.</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; text-align: justify; margin-top: 0pt; margin-bottom: 0pt;\">&nbsp;</p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; text-align: justify; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 11.5pt; font-family: Roboto,sans-serif; color: #001a33; background-color: #ffffff; font-weight: bold; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Tiết kiệm thời gian</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; text-align: justify; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 11.5pt; font-family: Roboto,sans-serif; color: #001a33; background-color: #ffffff; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Thay v&igrave; phải d&agrave;nh tới 3-4 tiếng mỗi ng&agrave;y l&agrave;m việc nh&agrave; th&igrave; bạn ho&agrave;n to&agrave;n c&oacute; thể tiết kiệm được thời gian đ&oacute; để giải tr&iacute;, gặp gỡ bạn b&egrave; v&agrave; ở b&ecirc;n người th&acirc;n. Người gi&uacute;p việc sẽ gi&uacute;p bạn ho&agrave;n th&agrave;nh c&aacute;c c&ocirc;ng việc nh&agrave; nhanh ch&oacute;ng, chất lượng nhất. Với những người gi&uacute;p việc được đ&agrave;o tạo chuy&ecirc;n nghiệp, họ sẽ biết những dụng cụ, thiết bị hiệu quả để đẩy nhanh tiến độ c&ocirc;ng việc m&agrave; kh&ocirc;ng tốn nhiều thời gian.</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; text-align: justify; margin-top: 0pt; margin-bottom: 0pt;\">&nbsp;</p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; text-align: justify; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 11.5pt; font-family: Roboto,sans-serif; color: #001a33; background-color: #ffffff; font-weight: bold; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Tiết kiệm chi ph&iacute;</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; text-align: justify; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 11.5pt; font-family: Roboto,sans-serif; color: #001a33; background-color: #ffffff; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Nhiều người nghĩ rằng kh&ocirc;ng n&ecirc;n thu&ecirc; người gi&uacute;p việc v&igrave; khoản tiền bỏ ra rất lớn, chỉ cần tranh thủ ch&uacute;t thời gian l&agrave; c&oacute; thể tiết kiệm lại khoản tiền đ&oacute;. Thế nhưng nếu t&iacute;nh to&aacute;n khối lượng c&ocirc;ng việc v&agrave; những t&aacute;c dụng m&agrave; người gi&uacute;p việc mang lại th&igrave; bạn sẽ thấy khoản tiền n&agrave;y kh&ocirc;ng hề tốn k&eacute;m v&igrave; n&oacute; tạo ra gi&aacute; trị cao. Chỉ cần bớt một ch&uacute;t chi ti&ecirc;u v&agrave; bạn đ&atilde; c&oacute; thể tận hưởng cuộc sống vui vẻ, thảnh thơi mỗi ng&agrave;y th&igrave; quả l&agrave; đ&aacute;ng gi&aacute; phải kh&ocirc;ng.</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; text-align: justify; margin-top: 0pt; margin-bottom: 0pt;\">&nbsp;</p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; text-align: justify; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 11.5pt; font-family: Roboto,sans-serif; color: #001a33; background-color: #ffffff; font-weight: bold; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">C&oacute; nhiều thời gian cho bản th&acirc;n</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; text-align: justify; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 11.5pt; font-family: Roboto,sans-serif; color: #001a33; background-color: #ffffff; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Phụ nữ hiện đại tuy th&agrave;nh c&ocirc;ng nhưng lu&ocirc;n bị giằng co giữa c&ocirc;ng việc v&agrave; tr&aacute;ch nhiệm với gia đ&igrave;nh. Kể cả khi bạn th&agrave;nh c&ocirc;ng với h&igrave;nh ảnh người phụ nữ th&agrave;nh đạt th&igrave; bạn vẫn cần phải chăm s&oacute;c gia đ&igrave;nh cẩn thận v&agrave; thường xuy&ecirc;n.</span><strong id=\"docs-internal-guid-7b479b10-7fff-8c1a-85c4-f684d09293b0\" style=\"font-weight: normal;\"></strong></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; text-align: justify; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 11.5pt; font-family: Roboto,sans-serif; color: #001a33; background-color: #ffffff; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Nếu c&oacute; người gi&uacute;p việc hỗ trợ, bạn sẽ kh&ocirc;ng cần lo lắng việc vội v&agrave;ng về nh&agrave; thu dọn quần &aacute;o khi trời mưa, r&aacute;c v&agrave;i h&ocirc;m chưa đổ hay đồ đạc bị xếp lung tung. Cũng sẽ kh&ocirc;ng c&ograve;n cảnh bạn phải xin về sớm cho kịp giờ đ&oacute;n con đi học về, tất bật đi chợ nấu cơm chuẩn bị cho gia đ&igrave;nh. Tất cả những điều đ&oacute; sẽ c&oacute; người thay bạn vun v&eacute;n v&agrave; lo lắng.</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; text-align: justify; margin-top: 0pt; margin-bottom: 0pt;\">&nbsp;</p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; text-align: justify; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 11.5pt; font-family: Roboto,sans-serif; color: #001a33; background-color: #ffffff; font-weight: bold; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Mở rộng mối quan hệ x&atilde; hội</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; text-align: justify; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 11.5pt; font-family: Roboto,sans-serif; color: #001a33; background-color: #ffffff; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">X&atilde; hội c&oacute; sự ph&acirc;n chia lao động r&otilde; r&agrave;ng cho từng c&aacute; nh&acirc;n v&agrave; kh&ocirc;ng ai c&oacute; thể l&agrave;m tốt mọi việc khi phải g&aacute;nh v&aacute;c qu&aacute; nhiều vai tr&ograve;. V&iacute; dụ như nếu bạn phải d&agrave;nh thời gian để giữ cho kh&ocirc;ng gian căn nh&agrave; sạch sẽ, hay phải chăm s&oacute;c mọi người trong gia đ&igrave;nh 24/24 th&igrave; bạn sẽ kh&ocirc;ng c&oacute; thời gian l&agrave;m việc g&igrave; hay gặp gỡ th&ecirc;m ai nữa.</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; text-align: justify; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 11.5pt; font-family: Roboto,sans-serif; color: #001a33; background-color: #ffffff; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Nếu thu&ecirc; người gi&uacute;p việc nh&agrave;, bạn sẽ c&oacute; th&ecirc;m thời gian rảnh để gặp gỡ bạn b&egrave;, đối t&aacute;c, từ đ&oacute; bạn c&oacute; thể ph&aacute;t triển c&ocirc;ng việc v&agrave; mở rộng c&aacute;c mối quan hệ x&atilde; hội xung quanh. Đ&ocirc;i khi ch&iacute;nh những mối quan hệ n&agrave;y lại gi&uacute;p bạn chạm tay tới nhiều cơ hội mới, để bạn c&oacute; thể c&oacute; những bước tiến lớn trong c&ocirc;ng việc v&agrave; chất lượng cuộc sống.</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; text-align: justify; margin-top: 0pt; margin-bottom: 0pt;\">&nbsp;</p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 11.5pt; font-family: Roboto,sans-serif; color: #001a33; background-color: #ffffff; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Hy vọng với những chia sẻ vừa rồi m&agrave; An Phương chia sẻ c&ugrave;ng bạn gi&uacute;p cho bạn c&oacute; cho m&igrave;nh những sự lựa chọn tốt nhất. </span><span style=\"font-size: 11pt; font-family: Arial; color: #001a33; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">An Phương ở đ&acirc;y gi&uacute;p bạn giải đ&aacute;p mọi thắc mắc v&agrave; giải đ&aacute;p những c&acirc;u hỏi của bạn về người gi&uacute;p việc. Ch&uacute;c bạn sẽ c&oacute; cho m&igrave;nh được những quyết định n&ecirc;n hay kh&ocirc;ng n&ecirc;n thu&ecirc; gi&uacute;p việc theo giờ. Ch&uacute;c bạn c&oacute; th&ecirc;m nhiều thời gian vui chơi v&agrave; thư gi&atilde;n b&ecirc;n gia đ&igrave;nh bạn b&egrave; v&agrave; người th&acirc;n sau giờ l&agrave;m việc mỏi mệt. Việc nh&agrave; h&atilde;y cứ để ch&uacute;ng t&ocirc;i gi&uacute;p bạn l&agrave;m điều ấy.</span></p>', 'posts/January2022/PAEMh11RnHBsYgIBdu3u.jpg', 'co-nen-thue-nguoi-giup-viec-hay-khong', 'Có nên thuê người giúp việc hay không, hãy cùng An Phương tìm hiểu trong bài viết này', 'giúp việc, người giúp việc, giúp việc', 'PUBLISHED', 1, '2022-01-03 01:45:07', '2022-01-05 04:26:04'),
(6, 1, 1, 'Có nên thuê giúp việc theo giờ ?', 'Giúp việc uy tín, chất lượng, bảo mật', 'ậy chúng ta đang đặt ra một vấn ngại lại có nên hay không nên thuê giúp việc theo giờ? An Phương cùng bạn giải đáp các thắc mắc ngay sau đây.', '<p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Nhịp sống hối hả bận rộn thời gian d&agrave;nh cho nh&agrave; cửa, dọn dẹp gia đ&igrave;nh ng&agrave;y c&agrave;ng &iacute;t đi. Nhu cầu cần dọn dẹp nh&agrave; cửa lại ng&agrave;y một tăng cao. Để đảm bảo cho sự ri&ecirc;ng từ nhiều người lựa chọn thu&ecirc; gi&uacute;p việc theo giờ. Vậy ch&uacute;ng ta đang đặt ra một vấn ngại lại c&oacute; n&ecirc;n hay kh&ocirc;ng n&ecirc;n thu&ecirc; gi&uacute;p việc theo giờ? An Phương c&ugrave;ng bạn giải đ&aacute;p c&aacute;c thắc mắc ngay sau đ&acirc;y.</span><strong id=\"docs-internal-guid-b610d607-7fff-8751-e366-7b768e7c8132\" style=\"font-weight: normal;\"></strong></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: bold; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Gi&uacute;p việc theo giờ l&agrave; g&igrave;??</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Ta vẫn hiểu gi&uacute;p việc l&agrave; sẽ c&oacute; người ăn ở tại nh&agrave; m&igrave;nh v&agrave; l&agrave;m mọi việc trong nh&agrave;. H&igrave;nh thức đ&oacute; g&acirc;y ra nhiều bất tiện v&agrave; mất đi sự ri&ecirc;ng tư lại c&ograve;n g&acirc;y ra kh&ocirc;ng &iacute;t những sự phiền h&agrave; kh&ocirc;ng đ&aacute;ng c&oacute;. </span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">H&igrave;nh thức gi&uacute;p việc theo giờ l&agrave; h&igrave;nh thức người gi&uacute;p việc sẽ đến v&agrave; l&agrave;m việc theo giờ trong khoảng 2-3 giờ/ng&agrave;y. Gi&uacute;p việc theo giờ sẽ gi&uacute;p bạn loại bỏ đi hết những phiền h&agrave; hay những bất tiện kh&ocirc;ng đ&aacute;ng c&oacute;.</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: bold; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Lợi &iacute;ch khi thu&ecirc; gi&uacute;p việc theo giờ</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: italic; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Sự tiện lợi: </span><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">kh&ocirc;ng thể phủ nhận những lợi &iacute;ch m&agrave; người gi&uacute;p việc theo giờ mang lại. Chỉ cần 60s đặt lịch l&agrave; bạn đ&atilde; c&oacute; ngay một nh&acirc;n vi&ecirc;n gi&uacute;p việc theo giờ v&agrave; mọi sự chủ động đều được bạn l&agrave;m chủ từ chọn mặt gửi v&agrave;ng - lựa người gi&uacute;p việc đến sắp xếp thời gian bắt đầu c&oacute; thể dọn nh&agrave; cho bạn. Bạn kh&ocirc;ng phải tốn chi ph&iacute; ăn ở, đi lại cho người l&agrave;m, ước t&iacute;nh những chi ph&iacute; đ&oacute; &iacute;t nhất từ 5.000.000 đến 7.000.000/th&aacute;ng. Nhưng khi bạn thu&ecirc; gi&uacute;p việc theo giờ th&igrave; ph&iacute; bạn bỏ ra chỉ từ 50.000 - 70.000/giờ.</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: italic; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">An to&agrave;n</span><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">: v&igrave; mọi th&ocirc;ng tin c&aacute; nh&acirc;n của người gi&uacute;p việc đều được x&aacute;c thực.</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: italic; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Sự ri&ecirc;ng tư:</span><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\"> kh&ocirc;ng c&ograve;n g&igrave; nghi ngờ nữa, gi&uacute;p việc theo giờ sẽ lu&ocirc;n được đảm bảo sự ri&ecirc;ng tư đặc biệt l&agrave; những gia đ&igrave;nh c&oacute; người gi&agrave; v&agrave; trẻ nhỏ c&oacute; xu hướng th&iacute;ch sự ri&ecirc;ng tư.</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Hiện nay c&oacute; kh&aacute; nhiều ứng dụng gi&uacute;p việc theo giờ cho bạn lựa chọn. N&ecirc;n bạn sẽ dễ d&agrave;ng v&agrave; tiện lợi hơn trong việc lựa chọn dịch vụ ph&ugrave; hợp cho gia đ&igrave;nh.</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Người gi&uacute;p việc theo giờ rất tiện lợi nhưng t&ugrave;y v&agrave;o nhu cầu của gia đ&igrave;nh nh&agrave; bạn để chọn h&igrave;nh thức gi&uacute;p việc n&agrave;o cho hợp l&yacute;. Nếu nh&agrave; bạn cần dọn dẹp nh&agrave; cửa, giặt rũ, vệ sinh, nấu ăn.. th&igrave; gi&uacute;p việc theo giờ lu&ocirc;n l&agrave; sự lựa chọn ho&agrave;n hảo cho những bạn th&iacute;ch sự ri&ecirc;ng tư. Nhưng nếu nh&agrave; bạn c&oacute; con nhỏ hay c&oacute; người gi&agrave;, người bệnh cần chăm s&oacute;c thường xuy&ecirc;n th&igrave; một người gi&uacute;p việc thường xuy&ecirc;n, cố định sẽ kh&ocirc;ng c&ograve;n g&igrave; hợp l&yacute; hơn nữa cả.</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Bạn đang c&ograve;n những thắc mắc chưa biết chọn người gi&uacute;p việc như n&agrave;o cho ph&ugrave; hợp?</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Bạn đang băn khoăn về người gi&uacute;p việc cho nh&agrave; m&igrave;nh?</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">An Phương ở đ&acirc;y gi&uacute;p bạn giải đ&aacute;p mọi thắc mắc v&agrave; giải đ&aacute;p những c&acirc;u hỏi của bạn về người gi&uacute;p việc. Ch&uacute;c bạn sẽ c&oacute; cho m&igrave;nh được những quyết định n&ecirc;n hay kh&ocirc;ng n&ecirc;n thu&ecirc; gi&uacute;p việc theo giờ. Ch&uacute;c bạn c&oacute; th&ecirc;m nhiều thời gian vui chơi v&agrave; thư gi&atilde;n b&ecirc;n gia đ&igrave;nh bạn b&egrave; v&agrave; người th&acirc;n sau giờ l&agrave;m việc mỏi mệt. Việc nh&agrave; h&atilde;y cứ để ch&uacute;ng t&ocirc;i gi&uacute;p bạn l&agrave;m điều ấy.</span></p>\r\n<p><br /><br /></p>', 'posts/January2022/9FnY970E1YrB4ZMIAZWO.jpg', 'co-nen-thue-giup-viec-theo-gio', 'ậy chúng ta đang đặt ra một vấn ngại lại có nên hay không nên thuê giúp việc theo giờ? An Phương cùng bạn giải đáp các thắc mắc ngay sau đây.', 'giúp việc, giúp việc theo giờ', 'PUBLISHED', 1, '2022-01-03 01:52:17', '2022-01-05 04:25:52'),
(7, 1, 1, 'Lí do bạn nên thuê người giúp việc làm cả ngày ?', 'tạp vụ, giúp việc gia đình uy tín, tận tâm,nhiệt tình, gọn gàng', 'Trong thời buổi hiện nay thì công ty cung cấp tạp vụ không còn là điều gì xa lạ đối với mỗi người, cuộc sống ngày càng bận rộn khiến họ phải tập trung và dành nhiều thời gian hơn cho công việc hàng ngày của, vì vậy mà họ không có nhiều thời gian cho việc dọn dẹp vệ sinh.', '<p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 11.5pt; font-family: Roboto,sans-serif; color: #001a33; background-color: #ffffff; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Tiện lợi, nhanh ch&oacute;ng, vệ sinh sạch sẽ l&agrave; những g&igrave; m&agrave; bạn thấy ở một nh&acirc;n vi&ecirc;n gi&uacute;p việc. </span><span style=\"font-size: 11.5pt; font-family: Roboto,sans-serif; color: #001a33; background-color: #ffffff; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Bạn đang bận rộn với cuộc sống hằng ng&agrave;y n</span><span style=\"font-size: 11.5pt; font-family: Roboto,sans-serif; color: #001a33; background-color: #ffffff; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">hưng lo toan bộn bề ngo&agrave;i kia khiến bạn ng&agrave;y c&agrave;ng &iacute;t thời gian hơn cho việc dọn dẹp nh&agrave; cửa. </span><span style=\"font-size: 11.5pt; font-family: Roboto,sans-serif; color: #001a33; background-color: #ffffff; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Bạn muốn t&igrave;m người gi&uacute;p bạn l&agrave;m những c&ocirc;ng việc nh&agrave; uy t&iacute;n v&agrave; chất lượng. </span><span style=\"font-size: 11.5pt; font-family: Roboto,sans-serif; color: #001a33; background-color: #ffffff; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Đừng lo An Phương ở đ&acirc;y gi&uacute;p bạn xua tan những nỗi lo về việc nh&agrave;.</span><strong id=\"docs-internal-guid-61204758-7fff-c6ff-7f75-511189e83386\" style=\"font-weight: normal;\"></strong></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\">&nbsp;</p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 11.5pt; font-family: Roboto,sans-serif; color: #001a33; background-color: #ffffff; font-weight: bold; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Chăm s&oacute;c: </span><span style=\"font-size: 11.5pt; font-family: Roboto, sans-serif; color: #001a33; background-color: #ffffff; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">N</span><span style=\"font-size: 11.5pt; font-family: Roboto,sans-serif; color: #001a33; background-color: #ffffff; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">h&agrave; bạn c&oacute; người gi&agrave;, người ốm bệnh hay trẻ em cần người chăm s&oacute;c thường xuy&ecirc;n m&agrave; bạn lại bận c&ocirc;ng việc thường xuy&ecirc;n vắng nh&agrave; kh&ocirc;ng thể chuy&ecirc;n t&acirc;m phụng dưỡng cha mẹ v&agrave; chăm s&oacute;c con c&aacute;i. Việc cần một người gi&uacute;p việc l&agrave;m cả ng&agrave;y sẽ lu&ocirc;n l&agrave; một sự lựa chọn l&yacute; tưởng. Người gi&agrave;, người bệnh th&igrave; thường thay t&iacute;nh đổi nết rất kh&oacute; để chăm s&oacute;c v&agrave; l&agrave;m h&agrave;i l&ograve;ng cha mẹ. Trẻ cần người chơi c&ugrave;ng, th&acirc;n thiết với b&eacute; từ những bước đầu để h&igrave;nh th&agrave;nh t&iacute;nh c&aacute;ch sau n&agrave;y. Những điều tr&ecirc;n rất l&agrave; quan trọng ch&iacute;nh v&igrave; vậy bạn thu&ecirc; một người gi&uacute;p việc theo giờ sẽ kh&ocirc;ng thể đ&aacute;p ứng được những điều tr&ecirc;n. Một người gi&uacute;p việc cả ng&agrave;y sẽ gi&uacute;p bạn l&agrave;m mọi thứ v&agrave; hơn cả thế nữa, trẻ sẽ kh&ocirc;ng phải l&agrave;m quen với người gi&uacute;p việc mới, sở th&iacute;ch, th&oacute;i quen của &ocirc;ng b&agrave;, cha mẹ cũng kh&ocirc;ng kh&oacute; để người gi&uacute;p việc cả ng&agrave;y l&agrave;m quen. Tr&aacute;nh g&acirc;y mất thời gian cũng như c&oacute; thể g&acirc;y đến những x&aacute;o trộn trong sinh hoạt hằng ng&agrave;y của gia đ&igrave;nh.</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\">&nbsp;</p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 11.5pt; font-family: Roboto,sans-serif; color: #001a33; background-color: #ffffff; font-weight: bold; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Vệ sinh: </span><span style=\"font-size: 11.5pt; font-family: Roboto, sans-serif; color: #001a33; background-color: #ffffff; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">K</span><span style=\"font-size: 11.5pt; font-family: Roboto,sans-serif; color: #001a33; background-color: #ffffff; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">hi đ&atilde; l&agrave; người gi&uacute;p việc cả ng&agrave;y trong gia đ&igrave;nh bạn th&igrave; họ sẽ kh&ocirc;ng c&ograve;n thấy xa lạ hay chưa biết phải bắt đầu dọn dẹp vệ sinh từ đ&acirc;u nữa, những c&ocirc;ng việc hằng ng&agrave;y ấy đ&atilde; như một th&oacute;i quen v&agrave; những sở th&iacute;ch, th&oacute;i quen của từng th&agrave;nh vi&ecirc;n trong gia đ&igrave;nh bạn cũng được người gi&uacute;p việc cả ng&agrave;y nắm r&otilde;. Ở l&acirc;u ng&agrave;y trong nh&agrave; th&igrave; chủ nh&agrave; v&agrave; người l&agrave;m sẽ loại bỏ đi được r&agrave;o cản, tạo được sự thoải m&aacute;i trong nh&agrave;, l&agrave;m việc hiệu quả v&agrave; nhanh ch&oacute;ng hơn. Hơn nữa, đ</span><span style=\"font-size: 11.5pt; font-family: Roboto,sans-serif; color: #001a33; background-color: #ffffff; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">ối với những gia đ&igrave;nh đ&ocirc;ng người, c&oacute; khối lượng c&ocirc;ng việc nặng th&igrave; đ&acirc;y chắc chắn l&agrave; một sự lựa chọn tiết kiệm hơn rất nhiều.</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\">&nbsp;</p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 11.5pt; font-family: Roboto,sans-serif; color: #001a33; background-color: #ffffff; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Hy vọng với những chia sẻ vừa rồi m&agrave; An Phương chia sẻ c&ugrave;ng bạn gi&uacute;p cho bạn c&oacute; cho m&igrave;nh những sự lựa chọn tốt nhất. An Phương ở đ&acirc;y gi&uacute;p bạn giải quyết mọi sự thắc mắc gi&uacute;p bạn c&oacute; cho m&igrave;nh những kh&ocirc;ng gian nh&agrave; thoải m&aacute;i nhất.</span></p>\r\n<p>&nbsp;</p>', 'posts/January2022/VoUvcQeyUIbnPjslHnQm.jpg', 'li-do-ban-nen-thue-nguoi-giup-viec-lam-ca-ngay', 'Trong thời buổi hiện nay thì công ty cung cấp tạp vụ không còn là điều gì xa lạ đối với mỗi người, cuộc sống ngày càng bận rộn khiến họ phải tập trung và dành nhiều thời gian hơn cho công việc hàng ngày của, vì vậy mà họ không có nhiều thời gian cho việc dọn dẹp vệ sinh.', 'Tạp vụ, giúp việc gia đình tạp vụ, giúp việc gia đình uy tín, tận tâmn hiệt tình, gọn gàng', 'PUBLISHED', 1, '2022-01-03 02:01:43', '2022-01-05 04:25:58'),
(9, 1, 3, 'Tuyển dụng', NULL, 'Tuyển dụng', '<h1 style=\"text-align: center;\"><span style=\"color: #3498db;\"><strong><span style=\"font-size: 18px;\">C&Ocirc;NG TY TNHHH DỊCH VỤ THƯƠNG MẠI V&Agrave; PH&Aacute;T TRIỂN VIỆC L&Agrave;M NGƯỜI KHUYẾT TẬT AP TUYỂN DỤNG</span></strong></span></h1>\r\n<p dir=\"ltr\" style=\"line-height: 1.7999999999999998; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 14pt; font-family: \'Times New Roman\'; color: #001a33; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">Gi&uacute;p việc gia đ&igrave;nh:</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.7999999999999998; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 14pt; font-family: \'Times New Roman\'; color: #001a33; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">- Số lượng: 100 người</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.7999999999999998; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 14pt; font-family: \'Times New Roman\'; color: #001a33; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">- Giới t&iacute;nh: Nam /Nữ</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.7999999999999998; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 14pt; font-family: \'Times New Roman\'; color: #001a33; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">- Độ tuổi: 18 - 55 Tuổi.</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.7999999999999998; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 14pt; font-family: \'Times New Roman\'; color: #001a33; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">Y&ecirc;u cầu:&nbsp;</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.7999999999999998; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 14pt; font-family: \'Times New Roman\'; color: #001a33; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">- Kh&ocirc;ng mắc bệnh truyền nhiễm, đ&atilde; ti&ecirc;m tối thiểu 1 mũi vaccine,&nbsp;</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.7999999999999998; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 14pt; font-family: \'Times New Roman\'; color: #001a33; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">- C&oacute; l&yacute; lịch r&otilde; r&agrave;ng.</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.7999999999999998; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 14pt; font-family: \'Times New Roman\'; color: #001a33; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">- Thật th&agrave;, nhanh nhẹn, c&oacute; tr&aacute;ch nhiệm trong c&ocirc;ng việc.</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.7999999999999998; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 14pt; font-family: \'Times New Roman\'; color: #001a33; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">M&ocirc; tả c&ocirc;ng việc:</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.7999999999999998; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 14pt; font-family: \'Times New Roman\'; color: #001a33; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">- Chăm s&oacute;c người gi&agrave;.</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.7999999999999998; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 14pt; font-family: \'Times New Roman\'; color: #001a33; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">- Chăm s&oacute;c bệnh nh&acirc;n.</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.7999999999999998; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 14pt; font-family: \'Times New Roman\'; color: #001a33; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">- Chăm s&oacute;c trẻ em. </span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.7999999999999998; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 14pt; font-family: \'Times New Roman\'; color: #001a33; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">- Gi&uacute;p việc nh&agrave;.</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.7999999999999998; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 14pt; font-family: \'Times New Roman\'; color: #001a33; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">Quyền lợi được hưởng:</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.7999999999999998; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 14pt; font-family: \'Times New Roman\'; color: #001a33; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">- Mức lương: 5.000.000đ (Năm triệu đồng) trở l&ecirc;n/ th&aacute;ng&nbsp;</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.7999999999999998; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 14pt; font-family: \'Times New Roman\'; color: #001a33; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">- Đối với gi&uacute;p việc theo giờ được hưởng mức lương theo giờ, t&iacute;nh theo từng thời gian v&agrave; c&ocirc;ng việc cụ thể.</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.7999999999999998; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 14pt; font-family: \'Times New Roman\'; color: #001a33; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">- Được ph&aacute;t &aacute;o đồng phục của c&ocirc;ng ty.</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.7999999999999998; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 14pt; font-family: \'Times New Roman\'; color: #001a33; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">- Được đ&oacute;ng bảo hiểm theo quy định luật lao động người gi&uacute;p việc (Nếu gắn b&oacute; l&acirc;u d&agrave;i).</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.7999999999999998; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 14pt; font-family: \'Times New Roman\'; color: #001a33; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">Chi tiết li&ecirc;n hệ: Văn ph&ograve;ng c&ocirc;ng ty TNHH dịch vụ thương mại &amp; Ph&aacute;t triển việc l&agrave;m người khuyết tật AP.</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.7999999999999998; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 14pt; font-family: \'Times New Roman\'; color: #001a33; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">Địa chỉ: Số nh&agrave; 23, tổ 1, phường Đồng Quang, th&agrave;nh phố Th&aacute;i Nguy&ecirc;n, tỉnh Th&aacute;i Nguy&ecirc;n.</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.7999999999999998; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 14pt; font-family: \'Times New Roman\'; color: #001a33; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">Hotline: 0354041140 - 0967992688</span></p>', 'posts/January2022/BaPgIdUtD6H9yZ7WfvkW.jpg', 'tuyen-dung', NULL, NULL, 'PUBLISHED', 0, '2022-01-07 01:58:02', '2022-01-07 01:58:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `excerpt`, `body`, `image`, `meta_description`, `meta_keywords`, `status`, `price`, `created_at`, `updated_at`) VALUES
(3, 'Giỏ Hoa Quả', 'gio-hoa-qua', 'Giỏ Hoa Quả', '<p>Giỏ Hoa Quả</p>', 'products/November2021/kbEMeWx7GxTGlvhATWl9.jpg', 'Giỏ Hoa Quả', 'gio hoa qua', 'ACTIVE', 150000, '2021-10-31 19:48:00', '2021-10-31 19:48:40'),
(4, 'Hạt Tiêu', 'hat-tieu', '100% tiêu đen, không tạp chất, tiêu được chọn lựa kỹ, không vụn dăm, chắc hạt, cay nồng đặc trưng. Không chất bảo quản. Không độn hạt bông gòn, hạt đu đủ, hạt cà phê non. Không tẩm bùn, sỏi, bột mì để tăng trọng lượng.', '<p>C&Ocirc;NG DỤNG SẢN PHẨM</p>\r\n<p>- Ti&ecirc;u đen xay l&agrave; sản phẩm n&ocirc;ng nghiệp tuyệt vời được sử dụng trong hầu hết c&aacute;c m&oacute;n ăn của nhiều nền ẩm thực kh&aacute;c nhau, chỉ với một lượng nhỏ ti&ecirc;u thi đ&atilde; gi&uacute;p m&oacute;n ăn dậy m&ugrave;i thơm quyến rũ.</p>\r\n<p>- Đặc biệt ti&ecirc;u c&ograve;n l&agrave; b&iacute; quyết tuyệt vời để khử đi m&ugrave;i tanh cho nhiều nguy&ecirc;n liệu chế biến.</p>\r\n<p>ĐẶC ĐIỂM NỔI BẬT</p>\r\n<p>- Ti&ecirc;u đen xay Vipep l&agrave; nh&atilde;n hiệu duy nhất truy xuất được nguồn gốc từ vườn trồng cho đến nh&agrave; m&aacute;y.</p>\r\n<p>- Sản phẩm được chế biến tr&ecirc;n d&acirc;y truyền đạt ti&ecirc;u chuẩn ISO 22000 v&agrave; cam kết kh&ocirc;ng chứa dư lượng thuốc bảo vệ thực vật. Mỗi hạt ti&ecirc;u đều được người n&ocirc;ng d&acirc;n chọn lựa kỹ lưỡng nhằm mang đến sản phẩm c&oacute; chất lượng tốt nhất tới tay người sử dụng.</p>\r\n<p>- Sản phẩm đ&atilde; v&agrave; đang được xuất sang c&aacute;c thị trường như Mỹ, Nhật v&agrave; &Uacute;c.</p>\r\n<p>- Ti&ecirc;u đen xay được đ&oacute;ng g&oacute;i trong hộp bắt mắt v&agrave; kh&ocirc;ng chứa hương liệu cũng như chất bảo quản.</p>', 'products/November2021/CGf3tSkSHGLCTLNYDAus.jpg', 'Hạt Tiêu', 'hat tieu', 'ACTIVE', 150000, '2021-10-31 19:49:00', '2021-11-26 23:36:45'),
(5, 'Lạp Xưởng', 'lap-xuong', 'Lạp xưởng heo, lạp xưởng tôm Cần Giuộc (lạp xưởng nem) được làm theo phương thức truyền thống, với nguyên liệu thịt/tôm đất thượng hạng & được ướp rượu Mai Quế Lộ', '<p>Để c&oacute; m&oacute;n lạp xưởng ngon người ta phải chọn những miếng thịt nạc, tươi n&oacute;ng, đem xay rồi ướp với rượu mai quế lộ, tỏi, đường, ti&ecirc;u hột&hellip; Ri&ecirc;ng mỡ th&igrave; xắt nhỏ cỡ hạt lựu rồi ướp với đường c&ugrave;ng gia vị cho đến l&uacute;c c&oacute; độ trong th&igrave; mới đem trộn với thịt. Lạp xưởng nổi bật với ti&ecirc;u ch&iacute; kh&ocirc;ng qu&aacute; nhiều mỡ như những loại th&ocirc;ng thường, cắn một miếng c&oacute; cảm gi&aacute;c như đang cắn một miếng thịt tươi c&oacute; vị mặn mặn, ngọt ngọt h&ograve;a lẫn với m&ugrave;i ti&ecirc;u thơm lừng, cay cay.</p>\r\n<p>Lạp xưởng t&ocirc;m c&oacute; nguy&ecirc;n liệu ch&iacute;nh l&agrave; thịt con t&ocirc;m đất địa phương, theo tỷ lệ t&ocirc;m 60%, thịt v&agrave; mỡ 20% n&ecirc;n th&iacute;ch hợp với người cần khẩu phần &iacute;t b&eacute;o. Người s&agrave;nh ăn lấy lạp xưởng t&ocirc;m nướng tr&ecirc;n bếp than hay lăn (chi&ecirc;n) với nước, m&agrave; nước dừa th&igrave; c&agrave;ng ngon. Cho nước v&agrave;o xăm xắp canh lửa nhỏ rồi d&ugrave;ng đũa trở đều cho đến khi cạn nước th&igrave; chiếc lạp xưởng cũng đ&atilde; ch&iacute;n b&oacute;ng nhẫy, v&agrave;ng ruộm nh&igrave;n đ&atilde; mắt. Lạp xưởng t&ocirc;m tươi để &iacute;t ng&agrave;y cho l&ecirc;n men vừa c&oacute; hương vị như nem chua vừa c&oacute; c&aacute;i ngọt b&eacute;o của thịt nạc, ăn &iacute;t ng&aacute;n m&agrave; đưa cay cũng rất tuyệt.</p>', 'products/November2021/QWOVsYSZYvcgV8LWx0po.jpg', 'Lạp Xưởng', 'lap xuong', 'ACTIVE', 150000, '2021-10-31 19:50:00', '2021-11-26 21:01:21'),
(6, 'Nước Mắm', 'nuoc-mam', '95% tinh cốt nước mắm cá cơm Phú Quốc, 40 độ đạm \"Đậm Ngon\". 3 KHÔNG: không thêm chất bảo quản, không đường tổng hợp, không màu tổng hợp. Đã xuất khẩu thị trường Mỹ', '<p>Nhắc m&oacute;n Việt kh&ocirc;ng thể thiếu Vị Xưa - nước mắm truyền thống Ph&uacute; Quốc l&agrave;m n&ecirc;n sự kh&aacute;c biệt của m&oacute;n Việt. Vị Xưa tự h&agrave;o với nguồn nước mắm được ủ chượp bằng phương ph&aacute;p thủ c&ocirc;ng từ c&aacute; cơm tươi v&agrave; muối biển, tạo n&ecirc;n từng giọt Vị Xưa s&oacute;ng s&aacute;nh, vị ngon đậm đ&agrave; của nước mắm xưa. Nhờ vậy n&ecirc;m m&oacute;n Việt n&agrave;o cũng chuẩn, chấm m&oacute;n Việt n&agrave;o cũng ngon.&nbsp;</p>\r\n<p>Vị Xưa tự h&agrave;o kh&ocirc;ng chỉ phục vụ người ti&ecirc;u d&ugrave;ng trong nước m&agrave; c&ograve;n được b&agrave; con kiều b&agrave;o đ&oacute;n nhận v&agrave; tin d&ugrave;ng l&agrave; minh chứng cho một chất lượng Nước mắm Vị Xưa vượt trội.</p>\r\n<p><strong>NHẮC M&Oacute;N VIỆT, NHỚ VỊ XƯA</strong></p>\r\n<p>Điểm mạnh của sản phẩm:</p>\r\n<p>1. H&igrave;nh th&agrave;nh từ v&ugrave;ng biển Ph&uacute; Quốc</p>\r\n<p>Trong h&agrave;ng trăm l&agrave;ng mắm trải d&agrave;i từ Bắc đến Nam, Ph&uacute; Quốc l&agrave; nơi quy tụ những nh&agrave; th&ugrave;ng nổi tiếng bậc nhất với hơn 200 năm tuổi nghề. Tại Ph&uacute; Quốc, c&aacute; cơm than v&agrave; c&aacute; cơm sọc ti&ecirc;u l&agrave; nguy&ecirc;n liệu ch&iacute;nh l&agrave;m n&ecirc;n những giọt nước mắm đậm đ&agrave;, cao cấp.&nbsp;</p>\r\n<p>H&agrave;nh tr&igrave;nh Vị Xưa ra đời v&agrave; g&igrave;n giữ hương vị nước mắm truyền thống bắt đầu từ những ng&agrave;y th&aacute;ng l&ecirc;nh đ&ecirc;nh tr&ecirc;n biển, đ&aacute;nh bắt những mẻ c&aacute; cơm b&eacute;o tốt dồi d&agrave;o.&nbsp;</p>\r\n<p>Sau khi đ&aacute;nh bắt, c&aacute; cơm được tiến h&agrave;nh ướp muối ngay giữa biển nhằm giữ trọn vị tươi ngon của c&aacute; khi cập bến đất liền.</p>\r\n<p>Trở về đất liền, ngư d&acirc;n bắt tay ngay v&agrave;o c&ocirc;ng đoạn ủ chượp với c&ocirc;ng thức truyền thống 3 c&aacute; - 1 muối suốt 12 th&aacute;ng r&ograve;ng để cho ra những giọt nước mắm thơm ngon, đậm đ&agrave;, ngọt hậu, &aacute;nh m&agrave;u n&acirc;u c&aacute;nh gi&aacute;n thật đẹp.</p>\r\n<p>Nước mắm Vị Xưa được ủ chượp theo phương thức truyền thống tại nh&agrave; th&ugrave;ng Ph&uacute; Quốc với c&aacute;c th&ugrave;ng chượp gỗ lớn. Từ th&ugrave;ng gỗ n&agrave;y những giọt nước mắm thượng hạng được k&eacute;o r&uacute;t v&agrave; vận chuyển về nh&agrave; m&aacute;y hiện đại để chiết r&oacute;t v&agrave; đ&oacute;ng chai th&agrave;nh phẩm, cho ra những chai nước mắm Vị Xưa cao cấp 40 độ đạm.</p>\r\n<p>2. Quy tr&igrave;nh sản xuất đạt ti&ecirc;u chuẩn quốc tế ISO</p>\r\n<p>Tại nh&agrave; m&aacute;y, nước mắm nguồn được kiểm tra nghi&ecirc;m ngặt, đạt chất lượng theo ti&ecirc;u chuẩn Nước mắm Việt Nam mới được đưa v&agrave;o chiết r&oacute;t v&agrave; đ&oacute;ng chai thủy tinh tự động.&nbsp;</p>\r\n<p>Trước khi đến tay người ti&ecirc;u d&ugrave;ng, nước mắm Vị Xưa cao cấp 40 độ đạm phải được xử l&yacute; theo ti&ecirc;u chuẩn 3 kh&ocirc;ng: Kh&ocirc;ng chất bảo quản, Kh&ocirc;ng m&agrave;u tổng hợp, Kh&ocirc;ng đường tổng hợp v&agrave; được thanh tr&ugrave;ng nhằm đảm bảo an to&agrave;n.</p>\r\n<p>Vị Xưa được sản xuất trong nh&agrave; m&aacute;y đạt ti&ecirc;u chuẩn quản l&yacute; Quốc tế ISO 22000, ISO 9001, ISO 14001, ISO 45001. Cam kết đem đến cho người d&ugrave;ng d&ograve;ng sản phẩm thơm ngon, chất lượng v&agrave; an to&agrave;n nhất</p>\r\n<p>3. Hương vị đậm ngon g&acirc;y bao thương nhớ!</p>\r\n<p>Với 95% tinh cốt c&aacute; cơm Ph&uacute; Quốc, Vị Xưa giữ trọn vẹn hương vị đậm ngon 40 độ đạm của nước mắm xưa, đem lại cho người d&ugrave;ng một trải nghiệm mới v&ocirc; c&ugrave;ng đẳng cấp nhưng vẫn giữ được chất v&agrave; hồn tu&yacute; của Nước mắm xưa.&nbsp;</p>\r\n<p>Vị Xưa vừa mang hương vị đặc trưng của c&aacute; cơm Ph&uacute; Quốc, vừa l&agrave; gia vị đậm ngon tuyệt vời để n&ecirc;m chấm cho m&oacute;n ăn th&ecirc;m đậm đ&agrave;, thơm lừng v&agrave; bắt mắt.</p>\r\n<p>Mỗi bữa cơm chỉ cần c&oacute; một ch&uacute;t nước mắm Vị Xưa c&ugrave;ng ch&eacute;n cơm trắng n&oacute;ng hổi cũng đủ để ta cảm nhận được dư vị của m&oacute;n cơm nh&agrave;. Hay đơn giản l&agrave; ch&eacute;n mắm tỏi ớt dậy hương, chấm m&oacute;n n&agrave;o cũng ngon v&agrave; hấp dẫn</p>\r\n<p>Chỉ nước mắm ngon mới được tin d&ugrave;ng v&agrave; chỉ l&agrave;m bằng t&igrave;nh y&ecirc;u mới đủ sức n&iacute;u ch&acirc;n người thưởng thức. H&igrave;nh th&agrave;nh từ t&igrave;nh y&ecirc;u v&agrave; t&acirc;m huyết của những người l&agrave;m nghề truyền thống, Vị xưa xứng danh l&agrave; loại gia vị mang quốc hồn, quốc tu&yacute; của d&acirc;n tộc.</p>', 'products/November2021/12sWuvT3iwZ846Xmlf7I.jpg', 'Nước Mắm', 'nuoc mam', 'ACTIVE', 150000, '2021-10-31 19:50:00', '2021-11-26 23:51:36'),
(7, 'Muối Chấm Hải Sản', 'muoi-cham-hai-san', 'Nước chấm hải sản 300ml được đặc chế bằng những nguyên liệu sạch như ớt, nước cốt chanh và lá chanh non cộng với công thức gia truyền được chế biến thủ công nhằm kích thích vị giác khi ăn.', '<p>Với sự h&ograve;a quyện của c&aacute;c gia vị c&ugrave;ng l&aacute; chanh v&agrave; chanh tươi, đảm bảo vị tanh của hải sản ho&agrave;n to&agrave;n biến mất, bữa đại tiệc hải sản m&agrave; h&ocirc;ng c&oacute; VUA NƯỚC CHẤM th&igrave; chỉ như bức tranh đẹp m&agrave; kh&ocirc;ng c&oacute; m&agrave;u th&ocirc;i, v&ocirc; vị....</p>\r\n<p>Ăn lẩu , ăn nướng, ăn hải sản , ăn ch&acirc;n g&agrave; c&aacute;i g&igrave; cũng ngon hết trơn &yacute;. M&agrave; c&oacute; lẽ mng cũng nghe được c&acirc;u \" Trong ẩm thực Ch&acirc;u &Aacute; nước chấm chiếm đến 60% độ ngon của m&oacute;n ăn \" , n&oacute; ngang ngửa với c&aacute;c loại sauce trong ẩm thực ch&acirc;u &Acirc;u vậy, m&oacute;n ăn c&oacute; ngon tới đ&acirc;u m&agrave; nước chấm hay sốt kh&ocirc;ng đặc sắc cũng mất hết cả vị ngon ạ.</p>', 'products/November2021/BAwyMWeU2yNajf0ReBB1.jpg', 'Muối Chấm Hải Sản', 'Muối Chấm Hải Sản', 'ACTIVE', 150000, '2021-10-31 19:51:00', '2021-11-26 20:54:27'),
(8, 'Tôm Sú', 'tom-su', 'Tôm sú được nuôi tại môi trường sạch, tôm ngon dễ ăn nên được nhiều khách hàng ưa chuộng. \r\nSize : 30-35 con/kg.', '<p>T&ocirc;m s&uacute; sống được nu&ocirc;i th&acirc;m canh trong c&aacute;c hồ ở v&ugrave;ng miền t&acirc;y ở Bạc Li&ecirc;u ...T&ocirc;m nu&ocirc;i trong m&ocirc;i trường tự nhi&ecirc;n v&agrave; cho ăn thực phẩm sạch n&ecirc;n thịt t&ocirc;m rất ngọt v&agrave; săn chắc.</p>\r\n<p><img src=\"https://bio-organic.com.vn/storage/products/November2021/t&ocirc;m-s&uacute;.jpg\" alt=\"\" width=\"100%\" /></p>', 'products/November2021/cafbeiERSSzVCQUJMvpf.jpg', 'Tôm Sú', 'Tôm Sú', 'ACTIVE', 150000, '2021-10-31 19:52:00', '2021-11-26 20:52:25'),
(9, 'Đậu Phụ', 'dau-phu', 'Đậu phụ nổi tiếng với vị thơm, mát, ngậy, béo của từng lát đậu. Để làm nên những bìa đậu mềm mịn, ngậy, béo, những người thợ phải bắt đầu công việc từ sáng sớm tinh mơ mỗi ngày. Đãi đậu tương quyết định 50% thành công của mẻ đậu. Sau khi chọn và sơ chế đậu tương kỹ càng, tỉ mỉ, bước tiếp theo là chế biến cũng phải thật tinh, thật khéo, để lấy được phần cốt đậu', '<p>Sản xuất từ đỗ tương v&agrave; được thanh tr&ugrave;ng</p>\r\n<p>Ăn liền, chi&ecirc;n, hấp, thả lẩu, nấu canh hoặc chế biến t&ugrave;y th&iacute;ch</p>\r\n<p>An to&agrave;n, tiện lợi, dinh dưỡng, hợp vệ sinh</p>', 'products/November2021/ZveZ7e4ZRdUJdWY6Ygki.jpg', 'Đậu Phụ', 'Đậu Phụ', 'ACTIVE', 150000, '2021-10-31 19:54:00', '2021-11-26 23:43:25'),
(10, 'Hạt Maca', 'hat-maca', 'Hạt Macca sấy nứt size 19-21 có nguồn gốc xuất sứ từ Tây Nguyên – Việt Nam \r\nĐược tuyển chọn một cách kỹ lưỡng để hạt có độ thơm ngon và hoàn hảo nhất có thể .\r\nTất cả các hạt đều đã được sấy giòn được tách nứt thủ công sẵn .\r\nTrên mỗi hạt đều có các khe nứt để dễ dàng tách sử dụng tách bằng dụng cụ có trong mỗi hộp Macca Tây Nguyên thành phẩm.', '<p><strong>Chất Lượng Sản Phẩm</strong>:</p>\r\n<p style=\"padding-left: 40px;\">- Hạt m&agrave;u n&acirc;u v&agrave; nh&acirc;n b&ecirc;n trong hạt m&agrave;u trắng : hạt macca size 19-21 sấy nứt được bao bọc bởi một lớp vỏ n&acirc;u gỗ ph&iacute;a ngo&agrave;i hạt v&agrave; hạt đ&atilde; được l&agrave; nứt sẵn do vậy khi sử dụng ta chỉ cần d&ugrave;ng dụng cụ t&aacute;ch hạt để lấy lớp hạt nh&acirc;n m&agrave;u trắng b&ecirc;n trong hạt để sử dụng.</p>\r\n<p style=\"padding-left: 40px;\">- Hạt c&oacute; k&iacute;ch thước đường k&iacute;nh 19 &ndash; 21 mm : Nghĩa l&agrave; đường k&iacute;nh được t&iacute;nh cho mỗi hạt macca th&agrave;nh phẩm với k&iacute;ch thước hạt sẽ từ 19 mm đến 21 mm.</p>\r\n<p style=\"padding-left: 40px;\">- Sản Phẩm đ&atilde; được sấy gi&ograve;n : tất cả 100% sản phẩm macca size 19 - 21 mm đều trải qua một qu&aacute; tr&igrave;nh sấy gi&ograve;n với một thời gian k&eacute;o d&agrave;i từ 100h - 120h sấy li&ecirc;n tục khi hạt c&ograve;n độ ẩm 30% đến khi hạt sấy gi&ograve;n đạt độ ẩm 1%.</p>\r\n<p style=\"padding-left: 40px;\">- Tất cả hạt Macca trong sản phẩm đạt tỷ lệ ho&agrave;n hảo &gt; 96% : tỷ lệ tr&ecirc;n c&oacute; nghĩa l&agrave; với 100 hạt macca khi kh&aacute;ch h&agrave;ng sử dụng th&igrave; c&oacute; tr&ecirc;n 96 hạt đạt tỷ lệ ho&agrave;n hảo nhất.</p>\r\n<p style=\"padding-left: 40px;\">- M&ugrave;i vị sản phẩm ăn c&oacute; ch&uacute;t b&eacute;o nhẹ , thơm v&agrave; ch&uacute;t ngọt tự nhi&ecirc;n của hạt : Đ&acirc;y l&agrave; m&ugrave;i vị đặc trưng của hạt macca khi thu hoạc đạt độ ch&iacute;n v&agrave; khi chế biến với c&ocirc;ng nghệ ph&ugrave; hợp với với hạt để đạt th&agrave;nh phần dinh dưỡng tốt nhất.</p>\r\n<p><strong>H&igrave;nh Thức Đ&oacute;ng G&oacute;i</strong> : .</p>\r\n<p style=\"padding-left: 40px;\">- Được đ&oacute;ng t&uacute;i Pa h&uacute;t ch&acirc;n kh&ocirc;ng , v&agrave; sử dụng hộp giấy l&agrave; lớp hộp b&ecirc;n ngo&agrave;i</p>\r\n<p style=\"padding-left: 40px;\">- Trong mỗi hộp c&oacute; 01 c&aacute;i dụng cụ khui hạt&nbsp; v&agrave; 01 t&uacute;i h&uacute;t ẩm</p>\r\n<p style=\"padding-left: 40px;\">- Trọng lượng mỗi hộp l&agrave; 500g</p>\r\n<p style=\"padding-left: 40px;\">- Hạt được sấy bằng điện 100% , giảm t&aacute;c động tới m&ocirc;i trường so với những phương ph&aacute;p truyền thống</p>\r\n<p style=\"padding-left: 40px;\">- 100% Hạt nhi&ecirc;n liệu đầu v&agrave;o được tuyển chọn kỹ c&agrave;ng trước khi đưa v&agrave;o d&acirc;y truyền chế biến</p>\r\n<p style=\"padding-left: 40px;\">- Sản xuất tại Việt Nam</p>', 'products/November2021/kqNlgecyTU8Ipr74E0Ag.jpg', 'Hạt Maca', 'Hạt Maca', 'ACTIVE', 150000, '2021-10-31 19:54:00', '2021-11-26 23:48:27'),
(11, 'Nước Mắm Nguyên Chất', 'nuoc-mam-nguyen-chat', 'Kế thừa công thức 300 năm từ Làng Chài Xưa, nước mắm Tĩn là loại nước mắm rin nguyên chất được kéo rút trực tiếp từ thùng gỗ chín chậm với cá cơm than con to béo, tươi rói và muối tinh khiết. Được ủ chượp tự nhiên trong 12 tháng, để cho ra những giọt nước mắm đặc sánh, thơm ngon với hậu vị béo ngọt vô cùng tuyệt hảo. Đặc biệt, nước mắm được đựng trong tĩn gốm đậy kín, tránh tiếp xúc với ánh nắng mặt trời nên được lên men lần thứ 2, tạo nên hương vị đậm đà đặc trưng.', '<p>Được ủ chượp tự nhi&ecirc;n trong 12 th&aacute;ng, đ&ecirc;̉ cho ra những giọt nước mắm đặc sánh, thơm ngon với h&acirc;̣u vị béo ngọt v&ocirc; cùng tuy&ecirc;̣t hảo</p>\r\n<p>Đặc bi&ecirc;̣t, nước mắm được đựng trong tĩn g&ocirc;́m đ&acirc;̣y kín, tránh ti&ecirc;́p xúc với ánh nắng mặt trời n&ecirc;n được l&ecirc;n men l&acirc;̀n thứ 2, tạo n&ecirc;n hương vị đ&acirc;̣m đà đặc trưng.</p>\r\n<p>Ngoài ra, tĩn g&ocirc;́m còn được thi&ecirc;́t k&ecirc;́ với quai x&aacute;ch d&acirc;y thừng độc đ&aacute;o, vừa mang vẻ c&ocirc;̉ xưa những toát l&ecirc;n sự sang trọng, r&acirc;́t&nbsp; th&iacute;ch hợp l&agrave;m qu&agrave; biếu tặng hoặc các bu&ocirc;̉i ti&ecirc;̣c đãi kh&aacute;ch qu&yacute;.</p>\r\n<p>Th&ocirc;ng tin sản phẩm:</p>\r\n<ul>\r\n<li>Nước mắm Rin&nbsp;</li>\r\n<li>Đạm cá: 41N (Độ đạm tự nhi&ecirc;n)</li>\r\n<li>Loại chai: 500ml/ b&igrave;nh gốm</li>\r\n<li>Hạn sử dụng: 24 th&aacute;ng&nbsp;</li>\r\n</ul>', 'products/November2021/a4yCDJS5w8yopYI9KTi9.jpg', 'Nước Mắm Nguyên Chất', 'Nước Mắm Nguyên Chất', 'ACTIVE', 150000, '2021-10-31 19:55:00', '2021-11-26 20:47:42'),
(12, 'Xà Lách Đà Lạt', 'xa-lach-da-lat', 'Là một kho cung cấp chất xơ, giàu cellulose nên xà lách còn giúp ruột có thêm chút gì để… co bóp, nhờ đó giúp thoát khỏi tình trạng táo bón. Cải xà lách còn có một đặc tính “ăn tiền” khác là có thể giúp mang lại “giấc điệp” vì có chứa một chất gây ngủ là letucarium. Đối với bệnh nhân tiểu đường, xà lách là một loại thực phẩm lý tưởng vì thuộc nhóm rau cải có thành phần carbohydrate thấp hơn 3%. Xà lách còn chứa một hàm lượng đáng kể chất sắt nên là một loại thực phẩm rất tốt cho những người bị thiếu máu do thiếu sắt', '<p>X&agrave; l&aacute;ch Carol c&oacute; xoăn tr&ograve;n c&oacute; m&agrave;u xanh đậm. Khi ăn X&agrave; l&aacute;ch Carol bạn sẽ cảm nhận được vị ngon ngọt trong từng l&aacute; x&aacute; l&aacute;ch.</p>\r\n<p>Loại x&agrave; l&aacute;ch n&agrave;y rất nhiều người ưa chuộng bởi khi ăn rất gi&ograve;n v&agrave; tươi m&aacute;t. X&agrave; l&aacute;ch carol sạch ăn sẽ c&oacute; vị hơi đắng hơn b&igrave;nh thường một ch&uacute;t, nhưng khi h&ocirc; biến th&agrave;nh m&oacute;n salad dầu giấm th&igrave; m&ugrave;i vị sẽ rất tuyệt.</p>\r\n<p>X&agrave; l&aacute;ch Carol c&ograve;n hỗ trợ ti&ecirc;u h&oacute;a v&agrave; tốt cho gan, giảm nguy cơ mắc bệnh tim mạch, nhồi m&aacute;u cơ tim, ung thư, đau cột sống, thiếu m&aacute;u v&agrave; chứng mất ngủ do căng thẳng.</p>\r\n<p>D&ugrave; l&agrave; loại n&agrave;o th&igrave; x&agrave; l&aacute;ch cũng l&agrave; loại rau cải rất gi&agrave;u chất dinh dưỡng. Cứ 100 gam x&agrave; l&aacute;ch sẽ cung cấp khoảng 2,2 gam carbohydrate, 1,2 gam chất xơ, 90 gam nước, 166 microgram vitamin A, 73 microgram folate (vitamin B9). X&agrave; l&aacute;ch c&ograve;n chứa rất nhiều muối kho&aacute;ng với những nguy&ecirc;n tố kiềm, nhờ đ&oacute; gi&uacute;p cơ thể &ldquo;dọn dẹp&rdquo; m&aacute;u, gi&uacute;p tinh thần tỉnh t&aacute;o v&agrave; gi&uacute;p cơ thể tr&aacute;nh được nhiều bệnh tật.</p>\r\n<p>Nước &eacute;p x&agrave; l&aacute;ch c&ograve;n c&oacute; t&aacute;c dụng giải nhiệt. Do chứa một h&agrave;m lượng cao magnesium n&ecirc;n nước &eacute;p x&agrave; l&aacute;ch c&oacute; một năng lực si&ecirc;u ph&agrave;m trong việc hồi phục c&aacute;c m&ocirc; cơ, tăng cường chức năng n&atilde;o. Y học d&acirc;n gian phương T&acirc;y cho rằng d&ugrave;ng dịch &eacute;p x&agrave; l&aacute;ch pha với tinh dầu hoa hồng thoa v&agrave;o tr&aacute;n v&agrave; th&aacute;i dương sẽ gi&uacute;p cắt những cơn đau đầu.</p>', 'products/November2021/fH2wiurqQItJok4yiLv4.jpg', 'Xà Lách Đà Lạt', 'Xà Lách Đà Lạt', 'ACTIVE', 150000, '2021-10-31 19:56:00', '2021-11-26 20:45:04'),
(13, 'Bí Đỏ', 'bi-do', 'Bí ngô hay bí đỏ (phương ngữ Nam bộ gọi là bí rợ) là một loại cây dây thuộc chi Cucurbita, họ Bầu bí .', '<p>B&iacute; ng&ocirc; c&acirc;n nặng từ 0,45 kg trở l&ecirc;n v&agrave; c&oacute; thể nặng đến hơn 450 kg.</p>\r\n<p>B&iacute; c&oacute; h&igrave;nh cầu hoặc h&igrave;nh trụ, ch&iacute;n th&igrave; m&agrave;u v&agrave;ng cam,[5] B&ecirc;n ngo&agrave;i c&oacute; kh&iacute;a chia th&agrave;nh từng m&uacute;i. Ruột b&iacute; c&oacute; nhiều hột. Hạt dẹp, h&igrave;nh bầu dục c&oacute; chứa nhiều dầu.</p>\r\n<p>Trong c&aacute;c loại quả chứa h&agrave;m lượng dinh dưỡng cao, b&iacute; đỏ được xếp ở vị tr&iacute; đầu ti&ecirc;n. Trong b&iacute; đỏ c&oacute; chứa sắt, kali, phosphor, nước, protein thực vật, gluxit,.. c&aacute;c axit b&eacute;o linoleic, c&ugrave;ng c&aacute;c vitamin C, vitamin B1, B2, B5, B6, PP. Ăn b&iacute; đỏ rất tốt cho n&atilde;o bộ, l&agrave;m tăng cường miễn dịch, gi&uacute;p tim khỏe mạnh, mắt s&aacute;ng, cho giấc ngủ ngon hơn v&agrave; hỗ trợ cho việc chăm s&oacute;c da cũng như l&agrave;m đẹp, gi&uacute;p giảm c&acirc;n...</p>\r\n<p>Quả b&iacute; đỏ gi&agrave;u beta caroten tiền vitamin A, chứa 85 - 91% nước, chất đạm 0,8 - 2 g, chất b&eacute;o 0,1 - 0,5 g, chất bột đường 3,3 - 11 g, năng lượng 85 -170 kJ/100 g</p>', 'products/November2021/2KtooekRvxFxDPjJTKrL.jpg', 'Bí Đỏ', 'Bí Đỏ', 'ACTIVE', 150000, '2021-10-31 19:57:00', '2021-11-26 20:42:10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2021-10-05 20:45:13', '2021-10-05 20:45:13'),
(2, 'content', 'Content', '2021-10-05 20:45:13', '2022-01-04 20:16:44'),
(3, 'manager', 'Manager', '2022-01-04 20:14:50', '2022-01-04 20:14:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
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
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'An Phương', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Công ty TNHH Dịch Vụ Thương Mại và Phát Triển Việc Làm Người Khuyết Tật AP', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings/January2022/c0YJ7KWDHveeBlvoeJTY.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'An Phương', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to An Phương', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '154154562547-i796g1cfim7d871nh0vanqo3nol0b56a.apps.googleusercontent.com', '', 'text', 1, 'Admin'),
(11, 'site.Image-breadcrumb', 'Image breadcrumb', 'settings\\October2021\\pVseo50SoMaojpH7M3x4.png', NULL, 'image', 6, 'Site'),
(12, 'site.map', 'Google map', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d231.87533449522724!2d105.8269983851038!3d21.58571418748765!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x313527df32f00c55%3A0xe3412f046ca2c961!2zQ8OUTkcgVFkgVE5ISCBE4buKQ0ggVuG7pCBUSMavxqBORyBN4bqgSSBWw4AgUEjDgVQgVFJJ4buCTiBWSeG7hkMgTMOATSBOR8av4bucSSBLSFVZ4bq-VCBU4bqsVCBBUA!5e0!3m2!1sen!2s!4v1641433502437!5m2!1sen!2s\" width=\"100%\" height=\"250\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', NULL, 'text', 7, 'Site'),
(13, 'site.phone', 'Điện thoại', '0354041140', NULL, 'text', 8, 'Site'),
(14, 'site.email', 'Email', 'anphuongtn1@gmail.com', NULL, 'text', 9, 'Site'),
(15, 'site.fax', 'Fax', NULL, NULL, 'text', 10, 'Site'),
(16, 'site.address', 'Address', 'Số nhà 23, Tổ 1, Phường Đồng Quang, Thành phố Thái Nguyên, Tỉnh Thái Nguyên, Việt Nam', NULL, 'text', 11, 'Site'),
(17, 'site.website', 'Website', 'anphuongservice.com', NULL, 'text', 12, 'Site'),
(18, 'site.favicon', 'Favicon', 'settings/November2021/LMeVPrd49OUEuo36Vd0e.png', NULL, 'image', 13, 'Site'),
(19, 'social-network.facebook', 'Facebook', 'https://www.facebook.com/Giúp-việc-An-Phương-Thái-Nguyên-111312951403708', NULL, 'text', 14, 'social network'),
(20, 'social-network.gmail', 'Gmail', NULL, NULL, 'text', 15, 'social network'),
(21, 'social-network.youtube', 'Youtube', NULL, NULL, 'text', 16, 'social network'),
(22, 'social-network.twitter', 'twitter', NULL, NULL, 'text', 17, 'social network'),
(23, 'social-network.google-plus', 'Google Plus', NULL, NULL, 'text', 18, 'social network'),
(24, 'social-network.linkedin', 'Linkedin', NULL, NULL, 'text', 19, 'social network'),
(25, 'site.content', 'Site content', NULL, NULL, 'text', 20, 'Site'),
(26, 'site.phone2', 'Điện thoại 2', '0967992688', NULL, 'text', 21, 'Site'),
(27, 'site.facebook_page_id', 'Facebbok Page ID', '111312951403708', NULL, 'text', 22, 'Site');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `staticdatas`
--

CREATE TABLE `staticdatas` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `staticdatas`
--

INSERT INTO `staticdatas` (`id`, `title`, `slug`, `description`, `body`, `image`, `meta_description`, `meta_keywords`, `type`, `status`, `created_at`, `updated_at`, `url`) VALUES
(7, 'VỆ SINH CÔNG NGHIỆP, XÂY DỰNG', 've-sinh-cong-nghiep', '<p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Vệ sinh c&ocirc;ng nghiệp</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Tạp vụ văn ph&ograve;ng</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Sửa chữa nh&agrave; ở</span></p>', '<p><span style=\"color: #001a33; font-family: Roboto, sans-serif;\"><span style=\"font-size: 15.3333px; white-space: pre-wrap;\">Dịch vụ vệ sinh c&ocirc;ng nghiệp hiện l&agrave; dịch vụ được nhiều kh&aacute;ch h&agrave;ng tổ chức, c&ocirc;ng ty, c&aacute; nh&acirc;n tin d&ugrave;ng bởi ch&uacute;ng mang đến nhiều lợi &iacute;ch l&agrave;m sạch v&agrave; tạo ra m&ocirc;i trường l&agrave;m việc tốt hơn cho doanh nghiệp của minh cũng như tối ưu h&oacute;a chi ph&iacute; cho doanh nghiệp. Bạn đang cần t&igrave;m kiếm một dịch vụ vệ sinh thật sự uy t&iacute;n nhưng đang băn khoăn trong việc lựa chọn đ&acirc;u sẽ l&agrave; nh&agrave; cung cấp dịch vụ tốt nhất với gi&aacute; cả hợp l&yacute;?</span></span></p>\r\n<p><span style=\"color: #001a33; font-family: Roboto, sans-serif;\"><span style=\"font-size: 15.3333px; white-space: pre-wrap;\">H&atilde;y lựa chọn An Phương để c&oacute; những trải nghiệm h&agrave;i l&ograve;ng nhất về c&aacute;c dịch vụ vệ sinh c&ocirc;ng nghiệp, tạp vụ văn ph&ograve;ng nh&eacute;.</span></span></p>\r\n<p><span style=\"color: #001a33; font-family: Roboto, sans-serif;\"><span style=\"font-size: 15.3333px; white-space: pre-wrap;\">An Phương ph&aacute;t triển mảng dịch vụ vệ sinh c&ocirc;ng nghiệp nhằm đem đến cho kh&aacute;ch h&agrave;ng sự tiện lợi, nhanh ch&oacute;ng. Kh&aacute;ch h&agrave;ng kh&ocirc;ng cần phải tự m&igrave;nh l&agrave;m, kh&ocirc;ng cần phải bỏ c&ocirc;ng sức v&agrave; thời gian dọn dẹp. Nhất l&agrave; đối với c&aacute;c kh&ocirc;ng gian, c&ocirc;ng tr&igrave;nh rộng lớn th&igrave; việc một c&ocirc;ng ty chuy&ecirc;n nghiệp c&oacute; đầy đủ nguồn nh&acirc;n lực v&agrave; dụng cụ, m&aacute;y m&oacute;c để hỗ trợ bạn l&agrave; điều v&ocirc; c&ugrave;ng hợp l&yacute;.&nbsp;</span></span></p>\r\n<p><span style=\"color: #001a33; font-family: Roboto, sans-serif;\"><span style=\"font-size: 15.3333px; white-space: pre-wrap;\">Lợi &iacute;ch khi lựa chọn An Phương l&agrave; đơn vị vệ sinh c&ocirc;ng nghiệp:&nbsp;</span></span></p>\r\n<p><span style=\"color: #001a33; font-family: Roboto, sans-serif;\"><span style=\"font-size: 15.3333px; white-space: pre-wrap;\">- Kh&ocirc;ng gian đẹp hơn, sạch sẽ hơn so với khi tự tay m&igrave;nh l&agrave;m do nội dung c&ocirc;ng việc được thực hiện bởi những nh&acirc;n vi&ecirc;n đ&atilde; c&oacute; chuy&ecirc;n m&ocirc;n, kinh nghiệm nghề nghiệp, quy tr&igrave;nh l&agrave;m sạch được chọn lọc v&agrave; tối ưu tối đa v&agrave; với thiết bị hiện đại chuy&ecirc;n dụng.</span></span></p>\r\n<p><span style=\"color: #001a33; font-family: Roboto, sans-serif;\"><span style=\"font-size: 15.3333px; white-space: pre-wrap;\">- Tiết kiệm được nhiều c&ocirc;ng sức, thời gian v&agrave; cả tiền bạc do gi&aacute; cả của dịch vụ đ&aacute;ng kể nếu như so với c&ugrave;ng thời gian c&ocirc;ng sức bạn bỏ ra để tự m&igrave;nh l&agrave;m.</span></span></p>\r\n<p><span style=\"color: #001a33; font-family: Roboto, sans-serif;\"><span style=\"font-size: 15.3333px; white-space: pre-wrap;\">- Hiệu quả l&agrave;m việc cao hơn do c&oacute; c&aacute;c dụng cụ - thiết bị hỗ trợ, sạch hơn do mọi nh&acirc;n vi&ecirc;n của ch&uacute;ng t&ocirc;i điều được đ&agrave;o tạo b&agrave;i bản về quy tr&igrave;nh xử l&yacute; c&aacute;c vết ố, mảng b&aacute;m, mốc đảm bảo cho sức khỏe v&agrave; tinh thần của mọi người.</span></span></p>\r\n<p><span style=\"color: #001a33; font-family: Roboto, sans-serif;\"><span style=\"font-size: 15.3333px; white-space: pre-wrap;\">- An to&agrave;n cho người sử dụng bởi ch&uacute;ng t&ocirc;i xử dụng c&aacute;c h&oacute;a chất tẩy rửa đ&atilde; được kiểm chứng v&agrave; cấp ph&eacute;p lưu h&agrave;nh c&ugrave;ng với những biện ph&aacute;p hiện đại v&agrave; ti&ecirc;n tiến nhất.</span></span></p>\r\n<p><span style=\"color: #001a33; font-family: Roboto, sans-serif;\"><span style=\"font-size: 15.3333px; white-space: pre-wrap;\">Thi c&ocirc;ng c&oacute; t&acirc;m, chất lượng c&oacute; tầm, gửi trọn niềm tin v&agrave;o dịch vụ vệ sinh c&ocirc;ng nghiệp của An Phương cũng ch&iacute;nh l&agrave; tin tưởng về chất lượng của ch&uacute;ng t&ocirc;i.</span></span></p>\r\n<p><span style=\"color: #001a33; font-family: Roboto, sans-serif;\"><span style=\"font-size: 15.3333px; white-space: pre-wrap;\">Kh&aacute;ch h&agrave;ng trao ch&uacute;ng t&ocirc;i c&ocirc;ng việc, ch&uacute;ng t&ocirc;i trao kh&aacute;ch h&agrave;ng sự h&agrave;i l&ograve;ng.</span></span></p>\r\n<p><span style=\"color: #001a33; font-family: Roboto, sans-serif;\"><span style=\"font-size: 15.3333px; white-space: pre-wrap;\">&nbsp;</span></span></p>\r\n<p>&nbsp;</p>', 'staticdatas/January2022/8w7Cp6lEDjRY0Fm4a0g2.webp', 'Bạn đang cần tìm kiếm một dịch vụ vệ sinh thật sự uy tín nhưng đang băn khoăn trong việc lựa chọn đâu sẽ là nhà cung cấp dịch vụ tốt nhất với giá cả hợp lý?  Hãy lựa chọn An Phương để có những trải nghiệm hài lòng nhất về các dịch vụ vệ sinh công nghiệp, tạp vụ văn phòng nhé.', 'vệ sinh công nghiệp', 'linh-vuc', 'ACTIVE', '2022-01-02 21:46:00', '2022-01-06 19:52:07', NULL),
(8, 'CHĂM SÓC, GIÚP VIỆC GIA ĐÌNH', 'giup-viec-gia-dinh', '<p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Chăm s&oacute;c trẻ em</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Gi&uacute;p việc chăm s&oacute;c người nh&agrave;</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Gi&uacute;p việc gia đ&igrave;nh</span></p>\r\n<p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Gi&uacute;p việc theo giờ</span></p>', '<p dir=\"ltr\" style=\"box-sizing: border-box; margin: 0pt 0px; font-size: 16px; text-align: justify; line-height: 1.38; color: #333333; font-family: Arial, sans-serif;\"><span style=\"box-sizing: border-box; font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\"><span style=\"color: #000000; font-family: Arial;\"><span style=\"font-size: 14.6667px; white-space: pre-wrap;\">Gi&uacute;p việc gia đ&igrave;nh l&agrave; một h&igrave;nh thức gi&uacute;p việc đ&atilde; c&oacute; từ thời phong kiến. Hiện tại, h&igrave;nh thức n&agrave;y ng&agrave;y c&agrave;ng ph&aacute;t triển. Người gi&uacute;p việc c&oacute; thể được v&iacute; như một quản gia trong gia đ&igrave;nh. Thấu hiểu được những vất vả, lo toan trong cuộc sống gia đ&igrave;nh, Gi&uacute;p Việc An Phương mang đến cho qu&yacute; kh&aacute;ch h&agrave;ng một dịch vụ cung cấp người gi&uacute;p việc gia đ&igrave;nh chăm s&oacute;c nh&agrave; cửa trọn vẹn, gi&uacute;p gia đ&igrave;nh bạn ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m trong một m&ocirc;i trường sạch sẽ, ho&agrave;n hảo.</span></span></span></p>\r\n<p dir=\"ltr\" style=\"box-sizing: border-box; margin: 0pt 0px; font-size: 16px; text-align: justify; line-height: 1.38; color: #333333; font-family: Arial, sans-serif;\"><span style=\"box-sizing: border-box; font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">Đối với c&aacute;c gia đ&igrave;nh, Gi&uacute;p việc An Phương Th&aacute;i Nguy&ecirc;n sẽ lu&ocirc;n đồng h&agrave;nh trong qu&aacute; tr&igrave;nh duy tr&igrave; v&agrave; x&acirc;y dựng tổ ấm. Ch&uacute;ng t&ocirc;i cung cấp nh&acirc;n sự gi&uacute;p việc tuỳ v&agrave;o mong muốn của gia đ&igrave;nh.</span></p>\r\n<p dir=\"ltr\" style=\"box-sizing: border-box; margin: 0pt 0px; font-size: 16px; text-align: justify; line-height: 1.38; color: #333333; font-family: Arial, sans-serif;\"><span style=\"box-sizing: border-box; font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">Đ&oacute; l&agrave;: </span></p>\r\n<p dir=\"ltr\" style=\"box-sizing: border-box; margin: 0pt 0px; font-size: 16px; text-align: justify; line-height: 1.38; color: #333333; font-family: Arial, sans-serif;\"><span style=\"box-sizing: border-box; font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">- Chăm s&oacute;c người gi&agrave;/trẻ em</span></p>\r\n<p dir=\"ltr\" style=\"box-sizing: border-box; margin: 0pt 0px; font-size: 16px; text-align: justify; line-height: 1.38; color: #333333; font-family: Arial, sans-serif;\"><span style=\"box-sizing: border-box; font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">- Gi&uacute;p việc nh&agrave; cửa</span></p>\r\n<p dir=\"ltr\" style=\"box-sizing: border-box; margin: 0pt 0px; font-size: 16px; text-align: justify; line-height: 1.38; color: #333333; font-family: Arial, sans-serif;\"><span style=\"box-sizing: border-box; font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">- Gi&uacute;p việc h&agrave;nh ch&iacute;nh cho c&aacute;c doanh nghiệp, đơn vị. </span></p>\r\n<p dir=\"ltr\" style=\"box-sizing: border-box; margin: 0pt 0px; font-size: 16px; text-align: justify; line-height: 1.38; color: #333333; font-family: Arial, sans-serif;\"><span style=\"box-sizing: border-box; font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">Gi&uacute;p việc An Phương đ&atilde; v&agrave; đang được nhiều kh&aacute;ch h&agrave;ng tin tưởng bởi những người gi&uacute;p việc m&agrave; ch&uacute;ng t&ocirc;i cung cấp cho kh&aacute;ch h&agrave;ng đều c&oacute; giấy tờ chứng minh nh&acirc;n th&acirc;n r&otilde; r&agrave;ng v&agrave; đ&atilde; qua kiểm tra, s&agrave;ng lọc chặt chẽ về tư c&aacute;ch, sức khoẻ v&agrave; c&aacute;c kỹ năng l&agrave;m việc. </span></p>\r\n<p dir=\"ltr\" style=\"box-sizing: border-box; margin: 0pt 0px; font-size: 16px; text-align: justify; line-height: 1.38; color: #333333; font-family: Arial, sans-serif;\">&nbsp;</p>\r\n<h3 dir=\"ltr\" style=\"box-sizing: border-box; margin: 0pt 0px; font-size: 16px; text-align: justify; line-height: 1.38; color: #333333; font-family: Arial, sans-serif;\">&nbsp;</h3>', 'staticdatas/January2022/wzvYgyfqx3PFbrL3ERHt.webp', NULL, NULL, 'linh-vuc', 'ACTIVE', '2022-01-02 21:46:00', '2022-01-06 19:51:50', NULL),
(9, 'HỢP TÁC DOANH NGHIỆP VIỆC LÀM CHO NGƯỜI KHUYẾT TẬT', 'hop-tac-doanh-nghiep', '<p>Giải quyết việc l&agrave;m cho người khuyết tật</p>\r\n<p>&nbsp;</p>', '<p><span style=\"color: #333333; font-family: Tahoma;\"><span style=\"font-size: 13px; background-color: #fcfcfc;\">Trong điều kiện b&igrave;nh thường, cơ hội việc l&agrave;m đối với người khuyết tật vốn đ&atilde; kh&oacute; khăn, th&igrave; dịch bệnh Covid-19 diễn biến phức tạp c&agrave;ng khiến vấn đề giải quyết việc l&agrave;m cho người khuyết tật th&ecirc;m nhiều trở ngại.</span></span></p>\r\n<p><span style=\"color: #333333; font-family: Tahoma;\"><span style=\"font-size: 13px; background-color: #fcfcfc;\">V&igrave; vậy dựa tr&ecirc;n t&igrave;nh h&igrave;nh đ&oacute; nhằm khắc phục kh&oacute; khăn, tăng cơ hội việc l&agrave;m cho người khuyết tật trong bối cảnh bị ảnh hưởng bởi đại dịch Covid-19, C&ocirc;ng ty An Phương với mong muốn đem đến những c&ocirc;ng việc ph&ugrave; hợp nhất cho người khuyết tật, gi&uacute;p người khuyết tật c&oacute; được việc l&agrave;m v&agrave; thu nhập ổn định.&nbsp;</span></span></p>\r\n<p><span style=\"color: #333333; font-family: Tahoma;\"><span style=\"font-size: 13px; background-color: #fcfcfc;\">Mục đ&iacute;ch n&agrave;y của ch&uacute;ng t&ocirc;i cũng đồng nghĩa với việc \"l&aacute; l&agrave;nh đ&ugrave;m l&aacute; r&aacute;ch\" trong cuộc sống x&atilde; hội hiện nay. Kh&ocirc;ng chỉ với những người thất nghiệp m&agrave; hơn hết l&agrave; với những người khuyết tật đang chưa c&oacute; việc l&agrave;m v&agrave; cần một đơn vị để c&oacute; cho m&igrave;nh một c&ocirc;ng việc ổn định trong t&igrave;nh h&igrave;nh dịch bệnh kh&oacute; khăn.&nbsp;</span></span></p>\r\n<p><span style=\"color: #333333; font-family: Tahoma;\"><span style=\"font-size: 13px; background-color: #fcfcfc;\">C&ocirc;ng ty An Phương rất sẵn s&agrave;ng trao đi những cơ hội để gi&uacute;p đỡ người c&oacute; ho&agrave;n cảnh n&oacute;i chung v&agrave; người khuyết tật n&oacute;i ri&ecirc;ng.</span></span></p>\r\n<p><em><strong><span style=\"color: #333333; font-family: Tahoma;\"><span style=\"font-size: 13px; background-color: #fcfcfc;\">Tr&ecirc;n cơ sở đ&oacute; c&ocirc;ng ty ch&uacute;ng t&ocirc;i rất h&acirc;n hạnh được hợp t&aacute;c với c&aacute;c doanh nghiệp trong v&agrave; ngo&agrave;i nước về c&aacute;c lĩnh vực việc l&agrave;m như:</span></span></strong></em></p>\r\n<p><span style=\"color: #333333; font-family: Tahoma;\"><span style=\"font-size: 13px; background-color: #fcfcfc;\">- Điện tử</span></span></p>\r\n<p><span style=\"color: #333333; font-family: Tahoma;\"><span style=\"font-size: 13px; background-color: #fcfcfc;\">- May mặc</span></span></p>\r\n<p><span style=\"color: #333333; font-family: Tahoma;\"><span style=\"font-size: 13px; background-color: #fcfcfc;\">- M&acirc;y tre đan....</span></span></p>\r\n<div id=\"input_line_1\">&nbsp;</div>', 'staticdatas/January2022/Ml2sEy11nd2Yx2sNOnst.webp', NULL, NULL, 'linh-vuc', 'ACTIVE', '2022-01-02 21:47:00', '2022-01-06 19:59:24', NULL),
(10, 'Tiếp nhận thông tin', 'tiep-nhan-thong-tin', '<p>Tiếp nhận th&ocirc;ng tin</p>', '<p>Tiếp nhận th&ocirc;ng tin từ kh&aacute;ch h&agrave;ng v&agrave; tiến h&agrave;nh trao đổi chi tiết, liệt k&ecirc; c&aacute;c y&ecirc;u cầu kh&aacute;ch h&agrave;ng cần v&agrave; b&aacute;o gi&aacute; thực hiện dịch vụ.</p>', NULL, NULL, NULL, 'quy-trinh', 'ACTIVE', '2022-01-02 21:48:00', '2022-01-03 20:15:26', NULL),
(11, 'Sắp xếp nhân sự', 'thuc-hien-dich-vu-sap-xep', '<p><span id=\"docs-internal-guid-4b60c480-7fff-e957-33e0-857db250b1a6\"><span style=\"font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">Sắp xếp nh&acirc;n sự</span></span></p>', '<p>Điều phối nh&acirc;n sự sẵn c&oacute; trong nguồn nh&acirc;n lực của An Phương sao cho thực hiện v&agrave; đ&aacute;p ứng đủ c&aacute;c c&ocirc;ng việc m&agrave; c&aacute;c kh&aacute;ch h&agrave;ng đ&atilde; thoả thuận trước đ&oacute;.</p>', NULL, NULL, NULL, 'quy-trinh', 'ACTIVE', '2022-01-02 21:48:00', '2022-01-04 07:01:39', NULL),
(12, 'Cung cấp nhân sự', 'cung-cap-nguoi-giup-viec', '<p>Cung cấp người gi&uacute;p việc</p>', '<p>Dựa v&agrave;o y&ecirc;u cầu của kh&aacute;ch h&agrave;ng sau khi trao đổi, An Phương sẽ điều phối v&agrave; cung cấp nh&acirc;n sự sao cho ph&ugrave; hợp v&agrave; đem đến sự h&agrave;i l&ograve;ng nhất cho kh&aacute;ch h&agrave;ng. Kh&aacute;ch h&agrave;ng được ph&eacute;p đổi nh&acirc;n sự đến khi h&agrave;i l&ograve;ng th&igrave; th&ocirc;i. Nh&acirc;n sự sẽ l&agrave;m việc theo th&aacute;ng hoặc theo giờ.</p>', NULL, NULL, NULL, 'quy-trinh', 'ACTIVE', '2022-01-02 21:48:00', '2022-01-05 02:19:23', NULL),
(13, 'Nhận phản hồi dịch vụ từ khách hàng', 'thuc-hien-cac-dich-vu-ho-tro', '<p>Thực hiện c&aacute;c dịch vụ hỗ trợ</p>', '<p>Sau khi nh&acirc;n vi&ecirc;n ho&agrave;n th&agrave;nh c&ocirc;ng việc, An Phương tiến h&agrave;nh x&aacute;c nhận phản hồi từ kh&aacute;ch h&agrave;ng về chất lượng, nh&acirc;n sự v&agrave; dịch vụ của m&igrave;nh.&nbsp;</p>', NULL, NULL, NULL, 'quy-trinh', 'ACTIVE', '2022-01-02 21:48:00', '2022-01-04 07:03:53', NULL),
(14, '1', '1', NULL, NULL, 'staticdatas/January2022/BQzIfklnyneyAFqtvkj7.webp', NULL, NULL, 'doi-tac', 'ACTIVE', '2022-01-02 21:50:25', '2022-01-02 21:50:25', NULL),
(15, '2', '2', NULL, NULL, 'staticdatas/January2022/6MvQ1Qx4dU36iXGbi1dm.webp', NULL, NULL, 'doi-tac', 'ACTIVE', '2022-01-02 21:50:37', '2022-01-02 21:50:37', NULL),
(16, '3', '3', NULL, NULL, 'staticdatas/January2022/I9XNTXcuD725NjR2IUGF.webp', NULL, NULL, 'doi-tac', 'ACTIVE', '2022-01-02 21:50:00', '2022-01-02 21:50:51', NULL),
(17, 'vi sao 1', 'vi-sao-1', '<p>Cung cấp người gi&uacute;p việc đ&atilde; qua kiểm tra tư c&aacute;ch v&agrave; kỹ năng, người gi&uacute;p việc c&oacute; tư c&aacute;ch đạo đức tốt, thật th&agrave;, chăm chỉ, biết việc, c&oacute; &yacute; thức tốt</p>', '<p>1</p>', NULL, '1', '1', 'vi-sao', 'ACTIVE', '2022-01-03 18:22:00', '2022-01-03 19:10:49', NULL),
(18, 'vi sao 2', 'vi-sao-2', '<p>Người lao động c&oacute; nguồn gốc r&otilde; r&agrave;ng, c&oacute; giấy tờ chứng minh, l&agrave; người th&acirc;n quen của c&aacute;c th&agrave;nh vi&ecirc;n Trung t&acirc;m, chủ yếu đến từ Th&aacute;i Nguy&ecirc;n v&agrave; 1 số tỉnh kh&aacute;c.</p>', NULL, NULL, NULL, NULL, 'vi-sao', 'ACTIVE', '2022-01-03 19:12:30', '2022-01-03 19:12:30', NULL),
(19, 'vi sao 3', 'vi-sao-3', '<p>Được đổi người ngay sau 3 ng&agrave;y thử việc nếu thấy kh&ocirc;ng ph&ugrave; hợp, được đổi tới 3 người trong v&ograve;ng 1 th&aacute;ng cho đến khi t&igrave;m được người ph&ugrave; hợp th&igrave; th&ocirc;i</p>', NULL, NULL, NULL, NULL, 'vi-sao', 'ACTIVE', '2022-01-03 19:13:03', '2022-01-03 19:13:03', NULL),
(20, 'vi sao 4', 'vi-sao-4', '<p>Người sử dụng dịch vụ được đ&oacute;n tiếp th&acirc;n thiện, nhiệt t&igrave;nh, tr&aacute;ch nhiệm.</p>', NULL, NULL, NULL, NULL, 'vi-sao', 'ACTIVE', '2022-01-03 19:13:24', '2022-01-03 19:13:24', NULL),
(21, 'vi sao 5', 'vi-sao-5', '<p>Đưa người gi&uacute;p việc đến tận nh&agrave; kh&aacute;ch h&agrave;ng nếu chủ nh&agrave; kh&ocirc;ng qua trung t&acirc;m đ&oacute;n người gi&uacute;p việc được.</p>', NULL, NULL, NULL, NULL, 'vi-sao', 'ACTIVE', '2022-01-03 19:13:47', '2022-01-03 19:13:47', NULL),
(22, 'vi sao 6', 'vi-sao-6', '<p>Lương người gi&uacute;p việc th&ocirc;ng thường: 5 triệu trở l&ecirc;n. Trung t&acirc;m sẽ tư vấn để 2 b&ecirc;n gia chủ v&agrave; người gi&uacute;p việc c&oacute; được tiếng n&oacute;i chung v&agrave; cả 2 b&ecirc;n đều h&agrave;i l&ograve;ng về nhau.</p>', NULL, NULL, NULL, NULL, 'vi-sao', 'ACTIVE', '2022-01-03 19:14:00', '2022-01-06 19:35:45', NULL),
(23, 'vi sao 7', 'vi-sao-7', '<p>Người gi&uacute;p việc sẽ được đ&agrave;o tạo nghề gi&uacute;p việc qua chương tr&igrave;nh &ldquo;Đ&agrave;o tạo người gi&uacute;p việc cấp tốc&rdquo; của c&ocirc;ng ty An Phương. Do vậy c&aacute;c chị em lần đầu ti&ecirc;n đi l&agrave;m gi&uacute;p việc cũng kh&ocirc;ng phải lo lắng.</p>', NULL, NULL, NULL, NULL, 'vi-sao', 'ACTIVE', '2022-01-03 19:14:44', '2022-01-03 19:14:44', NULL),
(24, 'vi sao 8', 'vi-sao-8', '<p>Người gi&uacute;p việc kh&ocirc;ng bị giữ chứng minh thư, kh&ocirc;ng bị giữ lương, kh&ocirc;ng bị thu ph&iacute; dịch vụ, kh&ocirc;ng bị &eacute;p buộc phải l&agrave;m việc ở nơi m&agrave; m&igrave;nh kh&ocirc;ng th&iacute;ch. D&ugrave; l&agrave;m 1 ng&agrave;y vẫn được trả c&ocirc;ng đầy đủ.</p>', NULL, NULL, NULL, NULL, 'vi-sao', 'ACTIVE', '2022-01-03 19:15:04', '2022-01-03 19:15:04', NULL),
(25, 'vi sao 9', 'vi-sao-9', '<p>C&ocirc;ng ty cam kết t&igrave;m được người gi&uacute;p việc ph&ugrave; hợp cho gia chủ. Đổi người mới nếu người cũ kh&ocirc;ng ph&ugrave; hợp. C&ocirc;ng ty lu&ocirc;n tư vấn cẩn thận để lựa chọn người gi&uacute;p việc ph&ugrave; hợp nhất, tr&aacute;nh t&igrave;nh trạng phải đổi người, tr&aacute;nh l&atilde;ng ph&iacute; thời gian v&agrave; tiền bạc cho gia chủ.</p>', NULL, NULL, NULL, NULL, 'vi-sao', 'ACTIVE', '2022-01-03 19:15:58', '2022-01-03 19:15:58', NULL),
(26, 'vi sao 10', 'vi-sao-10', '<p>Chủ c&ocirc;ng ty l&agrave; người Th&aacute;i Nguy&ecirc;n nhiệt t&igrave;nh coi người lao động như người th&acirc;n của m&igrave;nh muốn gi&uacute;p đỡ lao động n&ocirc;ng th&ocirc;n thất nghiệp c&oacute; c&ocirc;ng ăn việc l&agrave;m ổn định, ph&ugrave; hợp với sức khoẻ v&agrave; độ tuổi.</p>', NULL, NULL, NULL, NULL, 'vi-sao', 'ACTIVE', '2022-01-03 19:16:33', '2022-01-03 19:16:33', NULL),
(27, 'vi sao 11', 'vi-sao-11', '<p>Mục ti&ecirc;u h&agrave;ng đầu của c&ocirc;ng ty với phương ch&acirc;m đặt uy t&iacute;n l&ecirc;n h&agrave;ng đầu, cam kết kh&ocirc;ng để người sử dụng dịch vụ kh&ocirc;ng h&agrave;i l&ograve;ng.</p>', NULL, NULL, NULL, NULL, 'vi-sao', 'ACTIVE', '2022-01-03 19:16:59', '2022-01-03 19:16:59', NULL),
(28, 'vi sao 12', 'vi-sao-12', '<p>Chi ph&iacute; giới thiệu gia chủ chi trả l&agrave; rất &iacute;t, chỉ đủ cho chi ph&iacute; điện thoại, quảng c&aacute;o. Thấp hơn rất nhiều so với chi ph&iacute; giới thiệu của c&aacute;c c&ocirc;ng ty kh&aacute;c</p>', NULL, NULL, NULL, NULL, 'vi-sao', 'ACTIVE', '2022-01-03 19:17:32', '2022-01-03 19:17:32', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `translations`
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
-- Đang đổ dữ liệu cho bảng `translations`
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
-- Cấu trúc bảng cho bảng `users`
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
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/January2022/u02cjt9T9Ga8exqzcfRr.png', NULL, '$2y$10$OQYZiOpIxCCb.tOLGhmPK.loH20pX.M.IIlc7o0URMAJfVCDRLobe', 'HDJh8KaoOjbCP3WcyNWOD8uJKOm0B8yElibGLxoCgzf0dmdgGU8gcl8AvWL2', '{\"locale\":\"vi\"}', '2021-10-05 20:45:14', '2022-01-06 19:33:33'),
(2, 3, 'An Phương', 'anphuong@admin.com', 'users/January2022/bYQk5wKi1gqKHpxXZIOz.png', NULL, '$2y$10$IkjhAzXEODoyl9qoBZQUrOPtUxBy5.DpoW3LNi62yAWm0Zt7I7tPe', 'vgaS8zjVkqZnzEAbqMXmLtKMNFqXhynewZuiRx7L3Ie504tA08EVebQRklQK', '{\"locale\":\"vi\"}', '2022-01-04 20:10:29', '2022-01-04 20:17:48'),
(3, 2, 'Nhập liệu', 'anphuong@content.com', 'users/January2022/hK54OLGLftjaOkoVp8qf.png', NULL, '$2y$10$b1N8wb0Ac1wLi7XFIimmnemExJJ1KlRJEZPm8jQTOC2InYrVdZpjK', 'Fhl35czFH1uMCPANr68cKcHn3UrpNF7KjWUNjoPvWg2jHSjninw4rLe8XyLQ', '{\"locale\":\"vi\"}', '2022-01-04 20:19:52', '2022-01-04 20:55:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Chỉ mục cho bảng `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Chỉ mục cho bảng `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Chỉ mục cho bảng `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Chỉ mục cho bảng `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `personnels`
--
ALTER TABLE `personnels`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Chỉ mục cho bảng `staticdatas`
--
ALTER TABLE `staticdatas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `staticdatas_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Chỉ mục cho bảng `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT cho bảng `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `personnels`
--
ALTER TABLE `personnels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `staticdatas`
--
ALTER TABLE `staticdatas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Các ràng buộc cho bảng `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
