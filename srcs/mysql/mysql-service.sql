-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: mysql-service:3306
-- Generation Time: Apr 09, 2021 at 01:40 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `wordpress`
--
CREATE DATABASE IF NOT EXISTS `wordpress` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `wordpress`;

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-01-30 15:14:21', '2021-01-30 15:14:21', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', 'comment', 0, 0),
(2, 14, 'aherlind', 'aherlind@aherlind.com', '', '172.17.0.1', '2021-04-01 13:50:45', '2021-04-01 13:50:45', 'ДААААА!!!!!\r\n\r\n\r\n\r\n\r\n\r\n\r\n)0)', 0, '1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', 'comment', 0, 1),
(3, 14, 'aherlind', 'aherlind@aherlind.com', '', '172.17.0.1', '2021-04-01 13:51:43', '2021-04-01 13:51:43', 'Yo brah what are you saying', 0, '1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', 'comment', 2, 1),
(4, 14, 'gdrive', 'gdrive@gdrive.com', '', '172.17.0.1', '2021-04-09 13:37:45', '2021-04-09 13:37:45', 'marlow slava post is better than this', 0, '1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'comment', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://192.168.99.101:5050', 'yes'),
(2, 'home', 'http://192.168.99.101:5050', 'yes'),
(3, 'blogname', 'Aherlind ft_services', 'yes'),
(4, 'blogdescription', 'aherlind&#039;s wordpress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', '123@main.ru', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '', 'yes'),
(29, 'rewrite_rules', '', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentytwenty', 'yes'),
(41, 'stylesheet', 'twentytwenty', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1627571661', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'initial_db_version', '49752', 'yes'),
(99, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(100, 'fresh_site', '0', 'yes'),
(101, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(107, 'cron', 'a:9:{i:1612019674;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1612019675;a:4:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1612019680;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1612019720;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1612019740;a:1:{s:28:\"wp_update_comment_type_batch\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1612106074;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1617282386;a:1:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1617284580;a:1:{s:8:\"do_pings\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}s:7:\"version\";i:2;}', 'yes'),
(108, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, '_transient_doing_cron', '1617975500.4054579734802246093750', 'yes'),
(118, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.7.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.7.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.7-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.7-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"5.7\";s:7:\"version\";s:3:\"5.7\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1617975384;s:15:\"version_checked\";s:3:\"5.7\";s:12:\"translations\";a:0:{}}', 'no'),
(119, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1617975394;s:7:\"checked\";a:2:{s:19:\"akismet/akismet.php\";s:5:\"4.1.9\";s:9:\"hello.php\";s:5:\"1.7.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.9\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(125, 'can_compress_scripts', '1', 'no'),
(126, 'theme_mods_twentytwentyone', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1617287458;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}}}s:18:\"nav_menu_locations\";a:0:{}}', 'yes'),
(129, '_site_transient_timeout_browser_6f3b1afb40c07cc297bf862020e097e5', '1617887264', 'no'),
(130, '_site_transient_browser_6f3b1afb40c07cc297bf862020e097e5', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"89.0.4389.90\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(138, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1617975404;s:7:\"checked\";a:4:{s:10:\"mero-music\";s:5:\"1.0.3\";s:14:\"twentynineteen\";s:3:\"2.0\";s:12:\"twentytwenty\";s:3:\"1.7\";s:15:\"twentytwentyone\";s:3:\"1.2\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:4:{s:10:\"mero-music\";a:6:{s:5:\"theme\";s:10:\"mero-music\";s:11:\"new_version\";s:5:\"1.0.3\";s:3:\"url\";s:40:\"https://wordpress.org/themes/mero-music/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/mero-music.1.0.3.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:3:\"5.6\";}s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.0.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.7.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.2.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(139, 'current_theme', 'Twenty Twenty', 'yes'),
(140, 'theme_mods_mero-music', 'a:5:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"background_color\";s:6:\"242424\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1617287448;s:4:\"data\";a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}}}}', 'yes'),
(141, 'theme_switched', '', 'yes'),
(148, 'theme_mods_twentytwenty', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1617287475;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}}}}', 'yes'),
(150, 'recently_activated', 'a:0:{}', 'yes'),
(152, 'theme_mods_twentynineteen', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1617287496;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(154, '_site_transient_timeout_theme_roots', '1617977204', 'no'),
(155, '_site_transient_theme_roots', 'a:3:{s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}', 'no'),
(156, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1618018712', 'no'),
(157, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class=\"rss-widget\"><p><strong>RSS Error:</strong> XML or PCRE extensions not loaded!</p></div><div class=\"rss-widget\"><p><strong>RSS Error:</strong> XML or PCRE extensions not loaded!</p></div>', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 3, '_edit_lock', '1617283815:1'),
(4, 2, '_edit_lock', '1617284160:1'),
(5, 7, '_edit_lock', '1617284425:1'),
(6, 7, '_wp_trash_meta_status', 'publish'),
(7, 7, '_wp_trash_meta_time', '1617284460'),
(8, 8, '_edit_lock', '1617284485:1'),
(9, 8, '_wp_trash_meta_status', 'publish'),
(10, 8, '_wp_trash_meta_time', '1617284498'),
(11, 9, '_edit_lock', '1617284574:1'),
(12, 9, '_pingme', '1'),
(13, 9, '_encloseme', '1'),
(14, 11, '_edit_lock', '1617284753:1'),
(15, 11, '_pingme', '1'),
(16, 11, '_encloseme', '1'),
(17, 1, '_wp_trash_meta_status', 'publish'),
(18, 1, '_wp_trash_meta_time', '1617284958'),
(19, 1, '_wp_desired_post_slug', 'hello-world'),
(20, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(21, 14, '_edit_lock', '1617284876:1'),
(22, 14, '_pingme', '1'),
(23, 14, '_encloseme', '1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-01-30 15:14:21', '2021-01-30 15:14:21', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2021-04-01 13:49:18', '2021-04-01 13:49:18', '', 0, 'http://192.168.99.101:5050/?p=1', 0, 'post', '', 1),
(2, 1, '2021-01-30 15:14:21', '2021-01-30 15:14:21', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://192.168.99.101:5050/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'draft', 'closed', 'open', '', 'sample-page', '', '', '2021-04-01 13:33:26', '2021-04-01 13:33:26', '', 0, 'http://192.168.99.101:5050/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-01-30 15:14:21', '2021-01-30 15:14:21', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://192.168.99.101:5050.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2021-01-30 15:14:21', '2021-01-30 15:14:21', '', 0, 'http://192.168.99.101:5050/?page_id=3', 0, 'page', '', 0),
(4, 1, '2021-01-30 15:15:20', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-01-30 15:15:20', '0000-00-00 00:00:00', '', 0, 'http://192.168.99.101:5050/?p=4', 0, 'post', '', 0),
(5, 3, '2021-04-01 13:07:44', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-04-01 13:07:44', '0000-00-00 00:00:00', '', 0, 'http://192.168.99.101:5050/?p=5', 0, 'post', '', 0),
(6, 1, '2021-04-01 13:33:26', '2021-04-01 13:33:26', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://192.168.99.101:5050/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-04-01 13:33:26', '2021-04-01 13:33:26', '', 2, 'http://192.168.99.101:5050/?p=6', 0, 'revision', '', 0),
(7, 1, '2021-04-01 13:41:00', '2021-04-01 13:41:00', '{\n    \"blogname\": {\n        \"value\": \"Aherlind ft_services\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-04-01 13:37:06\"\n    },\n    \"blogdescription\": {\n        \"value\": \"aherlind\'s wordpress site\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-04-01 13:41:00\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5020a7c2-7bfc-4c21-a442-899fbdb9e6ba', '', '', '2021-04-01 13:41:00', '2021-04-01 13:41:00', '', 0, 'http://192.168.99.101:5050/?p=7', 0, 'customize_changeset', '', 0),
(8, 1, '2021-04-01 13:41:38', '2021-04-01 13:41:38', '{\n    \"mero-music::background_color\": {\n        \"value\": \"#242424\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-04-01 13:41:38\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6bd11a79-4d70-49d8-860c-a89f55fcb90d', '', '', '2021-04-01 13:41:38', '2021-04-01 13:41:38', '', 0, 'http://192.168.99.101:5050/?p=8', 0, 'customize_changeset', '', 0),
(9, 1, '2021-04-01 13:43:00', '2021-04-01 13:43:00', '<!-- wp:paragraph -->\n<p>Cole<br>Cole world<br>Yeah<br>Let me take y\'all back man<br>As I do so wellWasn\'t nothin\' like that<br>Man, it wasn\'t nothin\' like that first time<br>She was in my math class<br>Long hair, brown skin with the fat ass<br>Sat beside me, used to laugh at mad jokes<br>The teacher always got mad so we passed notes<br>It started off so innocent<br>She had a vibe and a nigga started diggin\' it<br>I was a youngin\' straight crushin\' tryna play this shit cool<br>But a nigga couldn\'t wait to get to school<br>\'Cause when I seen \'em thighs on her and them hips on her and them lips on her<br>Got me daydreaming, man what<br>I\'m thinkin\' how she ride on it, if she sits on it, if she licks on it<br>It make it hard for me to stand up<br>As time goes by, attractions getting deeper<br>Wet dreaming thinkin\' that I\'m smashin\' but I\'m sleepin\'<br>I want it bad, and I ain\'t never been obsessed before<br>She wrote a note that said \"have you ever had sex before\"<br>DamnAnd I ain\'t never did this before no<br>And I ain\'t never did this before no<br>And I ain\'t never did this before no<br>And I ain\'t never did this before no<br>And I ain\'t never did this before no<br>I ain\'t never did this before no<br>And I ain\'t never did this before no<br>And I ain\'t never did this before noI wrote back and said \"of course I had sex before\"<br>Knowing I was frontin\'<br>I said I was like a pro baby<br>Knowing I was stuntin\'<br>But if I told the truth I knew I\'d get played out son<br>Hadn\'t been in pussy since the day I came out one<br>But, she don\'t know what<br>So she done roll back and told me<br>\"Oh you a pro homie? Well I want you to show me<br>My mama gone for the weekend<br>So Saturday baby we can get to freakin\'\"<br>That\'s when my heart start racing and my body start sweatin\'<br>Baby you done woke my lil\' man up<br>I\'m thinkin\' how that body look naked when playing on the bed<br>Teacher please don\'t make me stand up<br>I wrote back like \"Yeah baby sound like a plan\"<br>Still trying to play it cool, sound like the man<br>But I was scared to death my nigga, my stomach turned<br>Talking damn shit knowing damn well I was a virgin<br>FuckAnd I ain\'t never did this before no<br>And I ain\'t never did this before no<br>And I ain\'t never did this before no<br>And I ain\'t never did this before no<br>And I ain\'t never did this before no<br>I ain\'t never did this before no<br>And I ain\'t never did this before no<br>And I ain\'t never did this before noYou know that feelin\' when you you finna bone for the first time<br>I\'m hoping that she won\'t notice it\'s my first time<br>I\'m hoping that my shit is big enough to fuck with<br>And most of all I\'m praying God don\'t let me bust quick<br>I\'m watching pornos tryin\' see just how to stroke right<br>Practice putting condoms on, how it go right<br>I\'m in a crib now a nigga palm sweatin\'<br>With a pocket full of rubbers and an erection<br>That\'s when my hands start touching and her face start blushing<br>And a nigga roll over on top<br>And then she get my pants unbuckled and her hands start rubbing<br>On me, ooh girl don\'t stop<br>It\'s time for action<br>Pull out the condoms real smooth, yeah just how I practice<br>But right before I put it in, she flinched and grabbed it and said<br>\"I wanna get something off my mental<br>I can tell you a pro, but baby be gentle\"<br>\'Cause\'Cause I ain\'t never did this before no<br>And I ain\'t never did this before no<br>And I ain\'t never did this before no<br>And I ain\'t never did this before no<br>And I ain\'t never did this before no<br>I ain\'t never did this before no<br>And I ain\'t never did this before no<br>And I ain\'t never did this before no</p>\n<!-- /wp:paragraph -->', 'Wet dreamz', '', 'publish', 'open', 'open', '', 'wet-dreamz', '', '', '2021-04-01 13:43:00', '2021-04-01 13:43:00', '', 0, 'http://192.168.99.101:5050/?p=9', 0, 'post', '', 0),
(10, 1, '2021-04-01 13:43:00', '2021-04-01 13:43:00', '<!-- wp:paragraph -->\n<p>Cole<br>Cole world<br>Yeah<br>Let me take y\'all back man<br>As I do so wellWasn\'t nothin\' like that<br>Man, it wasn\'t nothin\' like that first time<br>She was in my math class<br>Long hair, brown skin with the fat ass<br>Sat beside me, used to laugh at mad jokes<br>The teacher always got mad so we passed notes<br>It started off so innocent<br>She had a vibe and a nigga started diggin\' it<br>I was a youngin\' straight crushin\' tryna play this shit cool<br>But a nigga couldn\'t wait to get to school<br>\'Cause when I seen \'em thighs on her and them hips on her and them lips on her<br>Got me daydreaming, man what<br>I\'m thinkin\' how she ride on it, if she sits on it, if she licks on it<br>It make it hard for me to stand up<br>As time goes by, attractions getting deeper<br>Wet dreaming thinkin\' that I\'m smashin\' but I\'m sleepin\'<br>I want it bad, and I ain\'t never been obsessed before<br>She wrote a note that said \"have you ever had sex before\"<br>DamnAnd I ain\'t never did this before no<br>And I ain\'t never did this before no<br>And I ain\'t never did this before no<br>And I ain\'t never did this before no<br>And I ain\'t never did this before no<br>I ain\'t never did this before no<br>And I ain\'t never did this before no<br>And I ain\'t never did this before noI wrote back and said \"of course I had sex before\"<br>Knowing I was frontin\'<br>I said I was like a pro baby<br>Knowing I was stuntin\'<br>But if I told the truth I knew I\'d get played out son<br>Hadn\'t been in pussy since the day I came out one<br>But, she don\'t know what<br>So she done roll back and told me<br>\"Oh you a pro homie? Well I want you to show me<br>My mama gone for the weekend<br>So Saturday baby we can get to freakin\'\"<br>That\'s when my heart start racing and my body start sweatin\'<br>Baby you done woke my lil\' man up<br>I\'m thinkin\' how that body look naked when playing on the bed<br>Teacher please don\'t make me stand up<br>I wrote back like \"Yeah baby sound like a plan\"<br>Still trying to play it cool, sound like the man<br>But I was scared to death my nigga, my stomach turned<br>Talking damn shit knowing damn well I was a virgin<br>FuckAnd I ain\'t never did this before no<br>And I ain\'t never did this before no<br>And I ain\'t never did this before no<br>And I ain\'t never did this before no<br>And I ain\'t never did this before no<br>I ain\'t never did this before no<br>And I ain\'t never did this before no<br>And I ain\'t never did this before noYou know that feelin\' when you you finna bone for the first time<br>I\'m hoping that she won\'t notice it\'s my first time<br>I\'m hoping that my shit is big enough to fuck with<br>And most of all I\'m praying God don\'t let me bust quick<br>I\'m watching pornos tryin\' see just how to stroke right<br>Practice putting condoms on, how it go right<br>I\'m in a crib now a nigga palm sweatin\'<br>With a pocket full of rubbers and an erection<br>That\'s when my hands start touching and her face start blushing<br>And a nigga roll over on top<br>And then she get my pants unbuckled and her hands start rubbing<br>On me, ooh girl don\'t stop<br>It\'s time for action<br>Pull out the condoms real smooth, yeah just how I practice<br>But right before I put it in, she flinched and grabbed it and said<br>\"I wanna get something off my mental<br>I can tell you a pro, but baby be gentle\"<br>\'Cause\'Cause I ain\'t never did this before no<br>And I ain\'t never did this before no<br>And I ain\'t never did this before no<br>And I ain\'t never did this before no<br>And I ain\'t never did this before no<br>I ain\'t never did this before no<br>And I ain\'t never did this before no<br>And I ain\'t never did this before no</p>\n<!-- /wp:paragraph -->', 'Wet dreamz', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2021-04-01 13:43:00', '2021-04-01 13:43:00', '', 9, 'http://192.168.99.101:5050/?p=10', 0, 'revision', '', 0),
(11, 1, '2021-04-01 13:46:25', '2021-04-01 13:46:25', '<!-- wp:paragraph -->\n<p>[Интро]<br>Мы стали реже видеться (Ой-йой, йой)<br>Мы стали больше ссориться (Ой-йой, йой)<br>Надеюсь, всё наладится (Ой-йой, йой)<br>Когда мы успокоимся (Ой-йой, йой)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>[Куплет 1]<br>А ты мне нравишься (Ой-ой-ой)<br>А ты краснеешь, когда злишься (Уа-уа-уа-уа)<br>Ещё позлись, пожалуйста (У, я)<br>Ты так даже симпатичней</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>[Припев]<br>Ты горишь, как огонь, я, у меня агония<br>Это любовь или это паранойя? Ля, ля-ля (Ля, ля-ля)<br>Ты горишь, как огонь, я (Ля, ля-ля)<br>Ты горишь, как огонь, я, у меня агония<br>Это любовь или это паранойя? Ля, ля-ля (Ля, ля-ля)<br>Ты горишь, как огонь, я</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>[Куплет 2]<br>Это мне в тебе нравится (Ой-йой)<br>Да и в целом, ты мне очень нравишься (Ой, ой)<br>Я так хочу тебя поцеловать (Ой-йой)<br>Ко-ко-ко-когда ты не кусаешься (Ну кто, ну кто?)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>[Бридж]<br>Ну кто тут прав? Е<br>Ты знаешь, что никто<br>Ты знаешь кто тут прав? Е<br>Ты знаешь, что никто (Ля, ля-ля)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>[Припев]<br>Ты горишь, как огонь, я, у меня агония<br>Это любовь или это паранойя? Ля, ля-ля (Ля, ля-ля)<br>Ты горишь, как огонь, я (Ля, ля-ля)<br>Ты горишь, как огонь, я, у меня агония<br>Это любовь или это паранойя? Ля, ля-ля (Ля, ля-ля)<br>Ты горишь, как огонь, я</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>[Аутро]<br>Ля, ля-л—, ля, ля, ля, ля<br>Ля, ля-ля-ля-ля<br>Ля, ля-л—, ля, ля, ля, ля<br>Ля, ля-ля-ля-ля<br>Ля, ля-л—, ля, ля, ля, ля<br>Ля, ля-ля-ля-ля<br>Ля-ля-ля</p>\n<!-- /wp:paragraph -->', 'Гений русской мысли Marlow Slava', '', 'publish', 'open', 'open', '', '%d0%b3%d0%b5%d0%bd%d0%b8%d0%b9-%d1%80%d1%83%d1%81%d1%81%d0%ba%d0%be%d0%b9-%d0%bc%d1%8b%d1%81%d0%bb%d0%b8-marlow-slava', '', '', '2021-04-01 13:46:25', '2021-04-01 13:46:25', '', 0, 'http://192.168.99.101:5050/?p=11', 0, 'post', '', 0),
(12, 1, '2021-04-01 13:46:25', '2021-04-01 13:46:25', '<!-- wp:paragraph -->\n<p>[Интро]<br>Мы стали реже видеться (Ой-йой, йой)<br>Мы стали больше ссориться (Ой-йой, йой)<br>Надеюсь, всё наладится (Ой-йой, йой)<br>Когда мы успокоимся (Ой-йой, йой)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>[Куплет 1]<br>А ты мне нравишься (Ой-ой-ой)<br>А ты краснеешь, когда злишься (Уа-уа-уа-уа)<br>Ещё позлись, пожалуйста (У, я)<br>Ты так даже симпатичней</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>[Припев]<br>Ты горишь, как огонь, я, у меня агония<br>Это любовь или это паранойя? Ля, ля-ля (Ля, ля-ля)<br>Ты горишь, как огонь, я (Ля, ля-ля)<br>Ты горишь, как огонь, я, у меня агония<br>Это любовь или это паранойя? Ля, ля-ля (Ля, ля-ля)<br>Ты горишь, как огонь, я</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>[Куплет 2]<br>Это мне в тебе нравится (Ой-йой)<br>Да и в целом, ты мне очень нравишься (Ой, ой)<br>Я так хочу тебя поцеловать (Ой-йой)<br>Ко-ко-ко-когда ты не кусаешься (Ну кто, ну кто?)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>[Бридж]<br>Ну кто тут прав? Е<br>Ты знаешь, что никто<br>Ты знаешь кто тут прав? Е<br>Ты знаешь, что никто (Ля, ля-ля)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>[Припев]<br>Ты горишь, как огонь, я, у меня агония<br>Это любовь или это паранойя? Ля, ля-ля (Ля, ля-ля)<br>Ты горишь, как огонь, я (Ля, ля-ля)<br>Ты горишь, как огонь, я, у меня агония<br>Это любовь или это паранойя? Ля, ля-ля (Ля, ля-ля)<br>Ты горишь, как огонь, я</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>[Аутро]<br>Ля, ля-л—, ля, ля, ля, ля<br>Ля, ля-ля-ля-ля<br>Ля, ля-л—, ля, ля, ля, ля<br>Ля, ля-ля-ля-ля<br>Ля, ля-л—, ля, ля, ля, ля<br>Ля, ля-ля-ля-ля<br>Ля-ля-ля</p>\n<!-- /wp:paragraph -->', 'Гений русской мысли Marlow Slava', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2021-04-01 13:46:25', '2021-04-01 13:46:25', '', 11, 'http://192.168.99.101:5050/?p=12', 0, 'revision', '', 0),
(13, 1, '2021-04-01 13:49:18', '2021-04-01 13:49:18', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2021-04-01 13:49:18', '2021-04-01 13:49:18', '', 1, 'http://192.168.99.101:5050/?p=13', 0, 'revision', '', 0),
(14, 1, '2021-04-01 13:50:17', '2021-04-01 13:50:17', '<!-- wp:paragraph -->\n<p><strong>«Ленин — гриб»</strong> — <a href=\"https://ru.wikipedia.org/wiki/%D0%A2%D0%B5%D0%BB%D0%B5%D0%B2%D0%B8%D0%B7%D0%B8%D0%BE%D0%BD%D0%BD%D0%B0%D1%8F_%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%BC%D0%B0\">телевизионный</a> сюжет-<a href=\"https://ru.wikipedia.org/wiki/%D0%9C%D0%B8%D1%81%D1%82%D0%B8%D1%84%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D1%8F\">мистификация</a>, подготовленный музыкантом <a href=\"https://ru.wikipedia.org/wiki/%D0%9A%D1%83%D1%80%D1%91%D1%85%D0%B8%D0%BD,_%D0%A1%D0%B5%D1%80%D0%B3%D0%B5%D0%B9_%D0%90%D0%BD%D0%B0%D1%82%D0%BE%D0%BB%D1%8C%D0%B5%D0%B2%D0%B8%D1%87\">Сергеем Курёхиным</a> и журналистом <a href=\"https://ru.wikipedia.org/wiki/%D0%A8%D0%BE%D0%BB%D0%BE%D1%85%D0%BE%D0%B2,_%D0%A1%D0%B5%D1%80%D0%B3%D0%B5%D0%B9_%D0%9B%D0%B5%D0%BE%D0%BD%D0%B8%D0%B4%D0%BE%D0%B2%D0%B8%D1%87\">Сергеем Шолоховым</a> и впервые показанный в январе 1991 года<sup><a href=\"https://ru.wikipedia.org/wiki/%D0%9B%D0%B5%D0%BD%D0%B8%D0%BD_%E2%80%94_%D0%B3%D1%80%D0%B8%D0%B1#cite_note-:0-1\">[1]</a></sup> (по некоторым сведениям в мае 1991 года<sup><a href=\"https://ru.wikipedia.org/wiki/%D0%9B%D0%B5%D0%BD%D0%B8%D0%BD_%E2%80%94_%D0%B3%D1%80%D0%B8%D0%B1#cite_note-2\">[2]</a></sup>) в телевизионной передаче «<a href=\"https://ru.wikipedia.org/wiki/%D0%9F%D1%8F%D1%82%D0%BE%D0%B5_%D0%BA%D0%BE%D0%BB%D0%B5%D1%81%D0%BE_(%D1%82%D0%B5%D0%BB%D0%B5%D0%B2%D0%B8%D0%B4%D0%B5%D0%BD%D0%B8%D0%B5)\">Пятое колесо</a>» по <a href=\"https://ru.wikipedia.org/wiki/%D0%9B%D0%B5%D0%BD%D0%B8%D0%BD%D0%B3%D1%80%D0%B0%D0%B4%D1%81%D0%BA%D0%BE%D0%B5_%D1%82%D0%B5%D0%BB%D0%B5%D0%B2%D0%B8%D0%B4%D0%B5%D0%BD%D0%B8%D0%B5\">Ленинградскому телевидению</a>. Сюжет строится в виде <a href=\"https://ru.wikipedia.org/wiki/%D0%98%D0%BD%D1%82%D0%B5%D1%80%D0%B2%D1%8C%D1%8E\">интервью</a>, которое Сергей Шолохов брал у Сергея Курёхина, представляя собой с одной стороны попытку высмеять <a href=\"https://ru.wikipedia.org/wiki/%D0%9A%D1%83%D0%BB%D1%8C%D1%82_%D0%BB%D0%B8%D1%87%D0%BD%D0%BE%D1%81%D1%82%D0%B8_%D0%9B%D0%B5%D0%BD%D0%B8%D0%BD%D0%B0\">«сакральный образ» Ленина</a>, а с другой — сатиру на псевдонаучные телепередачи и репортажи<sup><a href=\"https://ru.wikipedia.org/wiki/%D0%9B%D0%B5%D0%BD%D0%B8%D0%BD_%E2%80%94_%D0%B3%D1%80%D0%B8%D0%B1#cite_note-3\">[3]</a></sup>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Содержание</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Создатели передачи с серьёзным видом подали как истину некий&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%9C%D0%B8%D1%84\">миф</a>, согласно которому&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%9B%D0%B5%D0%BD%D0%B8%D0%BD,_%D0%92%D0%BB%D0%B0%D0%B4%D0%B8%D0%BC%D0%B8%D1%80_%D0%98%D0%BB%D1%8C%D0%B8%D1%87\">Ленин</a>&nbsp;в больших количествах употреблял&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%93%D0%B0%D0%BB%D0%BB%D1%8E%D1%86%D0%B8%D0%BD%D0%BE%D0%B3%D0%B5%D0%BD%D0%BD%D1%8B%D0%B5_%D0%B3%D1%80%D0%B8%D0%B1%D1%8B\">галлюциногенные грибы</a>&nbsp;и сам в результате превратился в&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%93%D1%80%D0%B8%D0%B1\">гриб</a>. Этот заведомо&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%90%D0%B1%D1%81%D1%83%D1%80%D0%B4\">абсурдный</a>&nbsp;тезис не преподносился зрителю сразу&nbsp;— вместо этого создавалась иллюзия некоего&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%9B%D0%BE%D0%B3%D0%B8%D0%BA%D0%B0\">логического рассуждения</a>&nbsp;с цитатами из самых разных источников (вплоть до того, что Курёхин в словах о своей мексиканской экспедиции ссылается на творчество&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%9A%D0%B0%D1%81%D1%82%D0%B0%D0%BD%D0%B5%D0%B4%D0%B0,_%D0%9A%D0%B0%D1%80%D0%BB%D0%BE%D1%81\">Карлоса Кастанеды</a>). Эффект правдоподобности создавался путём манипуляций&nbsp;— подтасовки фактов и сбивчивого изложения, которое само по себе не несло особого смысла, но искусно подавалось автором как некоторое «научное обоснование».</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>В сюжете утверждалось, что Ленин на самом деле был грибом, и одновременно с этим ещё и&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%A0%D0%B0%D0%B4%D0%B8%D0%BE%D0%B2%D0%BE%D0%BB%D0%BD%D1%8B\">радиоволной</a>. В доказательство приводились такие «аргументы», как сходство разреза&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%9E%D1%81%D1%82%D0%B8%D0%BD-%D0%9A%D0%B5%D0%B3%D1%80%D0%B5%D1%81%D1%81\">броневика</a>, с которого выступал Ленин, и&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%93%D1%80%D0%B8%D0%B1%D0%BD%D0%B8%D1%86%D0%B0\">грибницы</a>&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%9C%D1%83%D1%85%D0%BE%D0%BC%D0%BE%D1%80\">мухомора</a>, утверждение, что «<a href=\"https://ru.wikipedia.org/wiki/%D0%9D%D0%B8%D0%BD%D0%B5%D0%BB%D1%8C\">нинель</a>» («Ленин» наоборот)&nbsp;— это французское блюдо из грибов, и тому подобные.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>…И, соответственно, в радиоволну. То есть человек становится и грибом, и радиоволной в едином облике, понимаете? И сейчас я вам скажу то, что самое главное, к чему я всё это веду. А то, что у меня есть совершенно неопровержимые доказательства, что вся Октябрьская революция делалась людьми, которые много лет потребляли соответствующие грибы. И грибы в процессе того, как они были потребляемы этими людьми, вытесняли в этих людях их личность, и люди становились грибами. То есть я просто-напросто хочу сказать, что Ленин был грибом. Грибом, более того, он был не только грибом, он был ещё помимо всего радиоволной. Понимаете?..<br>&lt;…&gt;<br>Однажды я наткнулся на фразу из письма Ленина&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%9F%D0%BB%D0%B5%D1%85%D0%B0%D0%BD%D0%BE%D0%B2,_%D0%93%D0%B5%D0%BE%D1%80%D0%B3%D0%B8%D0%B9_%D0%92%D0%B0%D0%BB%D0%B5%D0%BD%D1%82%D0%B8%D0%BD%D0%BE%D0%B2%D0%B8%D1%87\">Плеханову</a>. Фраза звучит так: «Вчера объелся грибов, чувствовал себя изумительно».<br>&lt;…&gt;<br>Посмотрите на секундочку вот сюда. Видите? Ленин постоянно с разными людьми, посмотрите внимательно, справа стоит мальчик какой-то (мы ещё к нему вернёмся). Вот он снова, видите? У Ленина всё время какой-то мальчик рядом. Так, вот видите, мы перешли на другую часть фильма… опять тот же самый мальчик. Видите, вот он, вот прошёл. Немножко уже по-другому стрижен, но тот же самый мальчик. Дело в том, что с Лениным рядом постоянно находится какой-то мальчик.</p><p>Саша находился при Ленине неотлучно, потому что знал каждую тропку, он знал все грибные места и водил Ленина по всем грибным местам, как мы могли убедиться из фильма. Это никакие не домыслы.</p></blockquote>\n<!-- /wp:quote -->', 'Ленин — гриб', '', 'publish', 'open', 'open', '', '%d0%bb%d0%b5%d0%bd%d0%b8%d0%bd-%d0%b3%d1%80%d0%b8%d0%b1', '', '', '2021-04-01 13:50:17', '2021-04-01 13:50:17', '', 0, 'http://192.168.99.101:5050/?p=14', 0, 'post', '', 3),
(15, 1, '2021-04-01 13:50:17', '2021-04-01 13:50:17', '<!-- wp:paragraph -->\n<p><strong>«Ленин — гриб»</strong> — <a href=\"https://ru.wikipedia.org/wiki/%D0%A2%D0%B5%D0%BB%D0%B5%D0%B2%D0%B8%D0%B7%D0%B8%D0%BE%D0%BD%D0%BD%D0%B0%D1%8F_%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%BC%D0%B0\">телевизионный</a> сюжет-<a href=\"https://ru.wikipedia.org/wiki/%D0%9C%D0%B8%D1%81%D1%82%D0%B8%D1%84%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D1%8F\">мистификация</a>, подготовленный музыкантом <a href=\"https://ru.wikipedia.org/wiki/%D0%9A%D1%83%D1%80%D1%91%D1%85%D0%B8%D0%BD,_%D0%A1%D0%B5%D1%80%D0%B3%D0%B5%D0%B9_%D0%90%D0%BD%D0%B0%D1%82%D0%BE%D0%BB%D1%8C%D0%B5%D0%B2%D0%B8%D1%87\">Сергеем Курёхиным</a> и журналистом <a href=\"https://ru.wikipedia.org/wiki/%D0%A8%D0%BE%D0%BB%D0%BE%D1%85%D0%BE%D0%B2,_%D0%A1%D0%B5%D1%80%D0%B3%D0%B5%D0%B9_%D0%9B%D0%B5%D0%BE%D0%BD%D0%B8%D0%B4%D0%BE%D0%B2%D0%B8%D1%87\">Сергеем Шолоховым</a> и впервые показанный в январе 1991 года<sup><a href=\"https://ru.wikipedia.org/wiki/%D0%9B%D0%B5%D0%BD%D0%B8%D0%BD_%E2%80%94_%D0%B3%D1%80%D0%B8%D0%B1#cite_note-:0-1\">[1]</a></sup> (по некоторым сведениям в мае 1991 года<sup><a href=\"https://ru.wikipedia.org/wiki/%D0%9B%D0%B5%D0%BD%D0%B8%D0%BD_%E2%80%94_%D0%B3%D1%80%D0%B8%D0%B1#cite_note-2\">[2]</a></sup>) в телевизионной передаче «<a href=\"https://ru.wikipedia.org/wiki/%D0%9F%D1%8F%D1%82%D0%BE%D0%B5_%D0%BA%D0%BE%D0%BB%D0%B5%D1%81%D0%BE_(%D1%82%D0%B5%D0%BB%D0%B5%D0%B2%D0%B8%D0%B4%D0%B5%D0%BD%D0%B8%D0%B5)\">Пятое колесо</a>» по <a href=\"https://ru.wikipedia.org/wiki/%D0%9B%D0%B5%D0%BD%D0%B8%D0%BD%D0%B3%D1%80%D0%B0%D0%B4%D1%81%D0%BA%D0%BE%D0%B5_%D1%82%D0%B5%D0%BB%D0%B5%D0%B2%D0%B8%D0%B4%D0%B5%D0%BD%D0%B8%D0%B5\">Ленинградскому телевидению</a>. Сюжет строится в виде <a href=\"https://ru.wikipedia.org/wiki/%D0%98%D0%BD%D1%82%D0%B5%D1%80%D0%B2%D1%8C%D1%8E\">интервью</a>, которое Сергей Шолохов брал у Сергея Курёхина, представляя собой с одной стороны попытку высмеять <a href=\"https://ru.wikipedia.org/wiki/%D0%9A%D1%83%D0%BB%D1%8C%D1%82_%D0%BB%D0%B8%D1%87%D0%BD%D0%BE%D1%81%D1%82%D0%B8_%D0%9B%D0%B5%D0%BD%D0%B8%D0%BD%D0%B0\">«сакральный образ» Ленина</a>, а с другой — сатиру на псевдонаучные телепередачи и репортажи<sup><a href=\"https://ru.wikipedia.org/wiki/%D0%9B%D0%B5%D0%BD%D0%B8%D0%BD_%E2%80%94_%D0%B3%D1%80%D0%B8%D0%B1#cite_note-3\">[3]</a></sup>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Содержание</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Создатели передачи с серьёзным видом подали как истину некий&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%9C%D0%B8%D1%84\">миф</a>, согласно которому&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%9B%D0%B5%D0%BD%D0%B8%D0%BD,_%D0%92%D0%BB%D0%B0%D0%B4%D0%B8%D0%BC%D0%B8%D1%80_%D0%98%D0%BB%D1%8C%D0%B8%D1%87\">Ленин</a>&nbsp;в больших количествах употреблял&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%93%D0%B0%D0%BB%D0%BB%D1%8E%D1%86%D0%B8%D0%BD%D0%BE%D0%B3%D0%B5%D0%BD%D0%BD%D1%8B%D0%B5_%D0%B3%D1%80%D0%B8%D0%B1%D1%8B\">галлюциногенные грибы</a>&nbsp;и сам в результате превратился в&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%93%D1%80%D0%B8%D0%B1\">гриб</a>. Этот заведомо&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%90%D0%B1%D1%81%D1%83%D1%80%D0%B4\">абсурдный</a>&nbsp;тезис не преподносился зрителю сразу&nbsp;— вместо этого создавалась иллюзия некоего&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%9B%D0%BE%D0%B3%D0%B8%D0%BA%D0%B0\">логического рассуждения</a>&nbsp;с цитатами из самых разных источников (вплоть до того, что Курёхин в словах о своей мексиканской экспедиции ссылается на творчество&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%9A%D0%B0%D1%81%D1%82%D0%B0%D0%BD%D0%B5%D0%B4%D0%B0,_%D0%9A%D0%B0%D1%80%D0%BB%D0%BE%D1%81\">Карлоса Кастанеды</a>). Эффект правдоподобности создавался путём манипуляций&nbsp;— подтасовки фактов и сбивчивого изложения, которое само по себе не несло особого смысла, но искусно подавалось автором как некоторое «научное обоснование».</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>В сюжете утверждалось, что Ленин на самом деле был грибом, и одновременно с этим ещё и&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%A0%D0%B0%D0%B4%D0%B8%D0%BE%D0%B2%D0%BE%D0%BB%D0%BD%D1%8B\">радиоволной</a>. В доказательство приводились такие «аргументы», как сходство разреза&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%9E%D1%81%D1%82%D0%B8%D0%BD-%D0%9A%D0%B5%D0%B3%D1%80%D0%B5%D1%81%D1%81\">броневика</a>, с которого выступал Ленин, и&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%93%D1%80%D0%B8%D0%B1%D0%BD%D0%B8%D1%86%D0%B0\">грибницы</a>&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%9C%D1%83%D1%85%D0%BE%D0%BC%D0%BE%D1%80\">мухомора</a>, утверждение, что «<a href=\"https://ru.wikipedia.org/wiki/%D0%9D%D0%B8%D0%BD%D0%B5%D0%BB%D1%8C\">нинель</a>» («Ленин» наоборот)&nbsp;— это французское блюдо из грибов, и тому подобные.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>…И, соответственно, в радиоволну. То есть человек становится и грибом, и радиоволной в едином облике, понимаете? И сейчас я вам скажу то, что самое главное, к чему я всё это веду. А то, что у меня есть совершенно неопровержимые доказательства, что вся Октябрьская революция делалась людьми, которые много лет потребляли соответствующие грибы. И грибы в процессе того, как они были потребляемы этими людьми, вытесняли в этих людях их личность, и люди становились грибами. То есть я просто-напросто хочу сказать, что Ленин был грибом. Грибом, более того, он был не только грибом, он был ещё помимо всего радиоволной. Понимаете?..<br>&lt;…&gt;<br>Однажды я наткнулся на фразу из письма Ленина&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%9F%D0%BB%D0%B5%D1%85%D0%B0%D0%BD%D0%BE%D0%B2,_%D0%93%D0%B5%D0%BE%D1%80%D0%B3%D0%B8%D0%B9_%D0%92%D0%B0%D0%BB%D0%B5%D0%BD%D1%82%D0%B8%D0%BD%D0%BE%D0%B2%D0%B8%D1%87\">Плеханову</a>. Фраза звучит так: «Вчера объелся грибов, чувствовал себя изумительно».<br>&lt;…&gt;<br>Посмотрите на секундочку вот сюда. Видите? Ленин постоянно с разными людьми, посмотрите внимательно, справа стоит мальчик какой-то (мы ещё к нему вернёмся). Вот он снова, видите? У Ленина всё время какой-то мальчик рядом. Так, вот видите, мы перешли на другую часть фильма… опять тот же самый мальчик. Видите, вот он, вот прошёл. Немножко уже по-другому стрижен, но тот же самый мальчик. Дело в том, что с Лениным рядом постоянно находится какой-то мальчик.</p><p>Саша находился при Ленине неотлучно, потому что знал каждую тропку, он знал все грибные места и водил Ленина по всем грибным местам, как мы могли убедиться из фильма. Это никакие не домыслы.</p></blockquote>\n<!-- /wp:quote -->', 'Ленин — гриб', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2021-04-01 13:50:17', '2021-04-01 13:50:17', '', 14, 'http://192.168.99.101:5050/?p=15', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(9, 1, 0),
(11, 1, 0),
(14, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'gdrive'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"0af70f2e9a6bab848d9d2fa917941c8e88583aee27efa33ea748ff15f8eb866d\";a:4:{s:10:\"expiration\";i:1618148301;s:2:\"ip\";s:10:\"172.17.0.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36\";s:5:\"login\";i:1617975501;}}'),
(17, 1, 'wp_user-settings', 'libraryContent=browse'),
(18, 1, 'wp_user-settings-time', '1612019715'),
(19, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(20, 2, 'nickname', 'gdrive'),
(21, 2, 'first_name', 'gdrive'),
(22, 2, 'last_name', 'gdrive'),
(23, 2, 'description', ''),
(24, 2, 'rich_editing', 'true'),
(25, 2, 'syntax_highlighting', 'true'),
(26, 2, 'comment_shortcuts', 'false'),
(27, 2, 'admin_color', 'fresh'),
(28, 2, 'use_ssl', '0'),
(29, 2, 'show_admin_bar_front', 'true'),
(30, 2, 'locale', ''),
(31, 2, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(32, 2, 'wp_user_level', '0'),
(33, 2, 'dismissed_wp_pointers', ''),
(34, 3, 'nickname', 'aherlind'),
(35, 3, 'first_name', 'Andre'),
(36, 3, 'last_name', 'ft_42'),
(37, 3, 'description', ''),
(38, 3, 'rich_editing', 'true'),
(39, 3, 'syntax_highlighting', 'true'),
(40, 3, 'comment_shortcuts', 'false'),
(41, 3, 'admin_color', 'fresh'),
(42, 3, 'use_ssl', '0'),
(43, 3, 'show_admin_bar_front', 'true'),
(44, 3, 'locale', ''),
(45, 3, 'wp_capabilities', 'a:1:{s:11:\"contributor\";b:1;}'),
(46, 3, 'wp_user_level', '1'),
(47, 3, 'dismissed_wp_pointers', ''),
(48, 4, 'nickname', 'nscarab'),
(49, 4, 'first_name', 'Sergey'),
(50, 4, 'last_name', 'ft_42'),
(51, 4, 'description', ''),
(52, 4, 'rich_editing', 'true'),
(53, 4, 'syntax_highlighting', 'true'),
(54, 4, 'comment_shortcuts', 'false'),
(55, 4, 'admin_color', 'fresh'),
(56, 4, 'use_ssl', '0'),
(57, 4, 'show_admin_bar_front', 'true'),
(58, 4, 'locale', ''),
(59, 4, 'wp_capabilities', 'a:1:{s:6:\"author\";b:1;}'),
(60, 4, 'wp_user_level', '2'),
(61, 4, 'dismissed_wp_pointers', ''),
(62, 3, 'session_tokens', 'a:1:{s:64:\"5d13d106be9c29d2651de382ebcc2ff7bddd0ff63bef15725e5472abf88f014e\";a:4:{s:10:\"expiration\";i:1617455262;s:2:\"ip\";s:10:\"172.17.0.1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36\";s:5:\"login\";i:1617282462;}}'),
(63, 3, 'wp_dashboard_quick_press_last_post_id', '5'),
(64, 3, 'community-events-location', 'a:1:{s:2:\"ip\";s:10:\"172.17.0.0\";}'),
(65, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:10:\"172.17.0.0\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'aherlind', '$P$B5tcS.Q.J/HubMUDil04VXoHEVteLY1', 'aherlind', 'aherlind@aherlind.com', '', '0000-00-00 00:00:00', '', 0, 'aherlind'),
(2, 'gdrive', '$P$BCFHKINgbr2ClBMkvkmuUbuWPJoO0j/', 'gdrive', 'gdrive@gdrive.com', '', '0000-00-00 00:00:00', '', 0, 'gdrive'),
(3, 'aberry', 'a5d33f3985e565b012a3a1f6d886fd08', '', 'aberry@aberry.com', '', '0000-00-00 00:00:00', '', 0, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
