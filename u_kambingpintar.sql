-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2016 at 04:52 AM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `u_kambingpintar`
--

-- --------------------------------------------------------

--
-- Table structure for table `kpdb_commentmeta`
--

CREATE TABLE IF NOT EXISTS `kpdb_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kpdb_comments`
--

CREATE TABLE IF NOT EXISTS `kpdb_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `kpdb_comments`
--

INSERT INTO `kpdb_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2016-05-10 01:24:38', '2016-05-10 01:24:38', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `kpdb_links`
--

CREATE TABLE IF NOT EXISTS `kpdb_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kpdb_options`
--

CREATE TABLE IF NOT EXISTS `kpdb_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=149 ;

--
-- Dumping data for table `kpdb_options`
--

INSERT INTO `kpdb_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/kambingpintar', 'yes'),
(2, 'home', 'http://localhost/kambingpintar', 'yes'),
(3, 'blogname', 'KambingPintar.com', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'rnugraha305@gmail.com', 'yes'),
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
(29, 'gzipcompression', '0', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:23:"intergeo-maps/index.php";i:1;s:29:"pirate-forms/pirate-forms.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'advanced_edit', '0', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '0', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', '', 'no'),
(41, 'template', 'Parallax-One', 'yes'),
(42, 'stylesheet', 'Parallax-One', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '0', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '30133', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '1', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'posts', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '150', 'yes'),
(60, 'thumbnail_size_h', '150', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '300', 'yes'),
(63, 'medium_size_h', '300', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '1024', 'yes'),
(66, 'large_size_h', '1024', 'yes'),
(67, 'image_default_link_type', 'file', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '0', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '1', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '0', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_text', 'a:0:{}', 'yes'),
(81, 'widget_rss', 'a:0:{}', 'yes'),
(82, 'uninstall_plugins', 'a:1:{s:23:"intergeo-maps/index.php";a:2:{i:0;s:8:"Freemius";i:1;s:22:"_uninstall_plugin_hook";}}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '0', 'yes'),
(85, 'page_on_front', '0', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'initial_db_version', '30133', 'yes'),
(89, 'kpdb_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(90, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(91, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'sidebars_widgets', 'a:7:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:11:"footer-area";N;s:13:"footer-area-2";N;s:13:"footer-area-3";N;s:13:"footer-area-4";N;s:13:"array_version";i:3;}', 'yes'),
(96, 'cron', 'a:5:{i:1462850751;a:1:{s:26:"upgrader_scheduled_cleanup";a:1:{s:32:"adcb9b75260590ff6058773ddcb9ddd6";a:2:{s:8:"schedule";b:0;s:4:"args";a:1:{i:0;i:4;}}}}i:1462866300;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1462886709;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1462929913;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(98, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:7:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.5.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.5.2.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.5.2-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.5.2-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.5.2";s:7:"version";s:5:"4.5.2";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":12:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.5.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.5.2.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.5.2-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.5.2-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.5.2";s:7:"version";s:5:"4.5.2";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";s:13:"support_email";s:26:"updatehelp42@wordpress.org";s:9:"new_files";s:1:"1";}i:2;O:8:"stdClass":12:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.4.3.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.4.3.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.4.3-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.4.3-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.4.3";s:7:"version";s:5:"4.4.3";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";s:13:"support_email";s:26:"updatehelp42@wordpress.org";s:9:"new_files";s:1:"1";}i:3;O:8:"stdClass":12:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.3.4.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.3.4.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.3.4-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.3.4-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.3.4";s:7:"version";s:5:"4.3.4";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";s:13:"support_email";s:26:"updatehelp42@wordpress.org";s:9:"new_files";s:1:"1";}i:4;O:8:"stdClass":12:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.2.8.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.2.8.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.2.8-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.2.8-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.2.8";s:7:"version";s:5:"4.2.8";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";s:13:"support_email";s:26:"updatehelp42@wordpress.org";s:9:"new_files";s:1:"1";}i:5;O:8:"stdClass":12:{s:8:"response";s:10:"autoupdate";s:8:"download";s:60:"https://downloads.wordpress.org/release/wordpress-4.1.11.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:60:"https://downloads.wordpress.org/release/wordpress-4.1.11.zip";s:10:"no_content";s:71:"https://downloads.wordpress.org/release/wordpress-4.1.11-no-content.zip";s:11:"new_bundled";s:72:"https://downloads.wordpress.org/release/wordpress-4.1.11-new-bundled.zip";s:7:"partial";s:70:"https://downloads.wordpress.org/release/wordpress-4.1.11-partial-0.zip";s:8:"rollback";s:71:"https://downloads.wordpress.org/release/wordpress-4.1.11-rollback-0.zip";}s:7:"current";s:6:"4.1.11";s:7:"version";s:6:"4.1.11";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:3:"4.1";s:13:"support_email";s:26:"updatehelp42@wordpress.org";s:9:"new_files";s:0:"";}i:6;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.5.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.5.2.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.5.2-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.5.2-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:0:"";s:7:"version";s:0:"";s:11:"php_version";s:3:"4.3";s:13:"mysql_version";s:5:"4.1.2";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1462843782;s:15:"version_checked";s:3:"4.1";s:12:"translations";a:0:{}}', 'yes'),
(103, '_transient_random_seed', 'd8db8c76c85f10f6b633f383255d5d61', 'yes'),
(106, '_transient_timeout_plugin_slugs', '1462930138', 'no'),
(107, '_transient_plugin_slugs', 'a:2:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";}', 'no'),
(108, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1462886717', 'no'),
(109, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: Could not resolve host: wordpress.org; Host not found</p></div><div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: Could not resolve host: planet.wordpress.org; Host not found</p></div><div class="rss-widget"><ul></ul></div>', 'no'),
(110, 'can_compress_scripts', '1', 'yes'),
(111, '_site_transient_timeout_wporg_theme_feature_list', '1462854322', 'yes'),
(112, '_site_transient_wporg_theme_feature_list', 'a:0:{}', 'yes'),
(114, '_transient_twentyfifteen_categories', '1', 'yes'),
(115, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1462843819;s:7:"checked";a:4:{s:12:"Parallax-One";s:7:"2.1.0.8";s:13:"twentyfifteen";s:3:"1.0";s:14:"twentyfourteen";s:3:"1.3";s:14:"twentythirteen";s:3:"1.4";}s:8:"response";a:3:{s:13:"twentyfifteen";a:4:{s:5:"theme";s:13:"twentyfifteen";s:11:"new_version";s:3:"1.5";s:3:"url";s:43:"https://wordpress.org/themes/twentyfifteen/";s:7:"package";s:59:"https://downloads.wordpress.org/theme/twentyfifteen.1.5.zip";}s:14:"twentyfourteen";a:4:{s:5:"theme";s:14:"twentyfourteen";s:11:"new_version";s:3:"1.7";s:3:"url";s:44:"https://wordpress.org/themes/twentyfourteen/";s:7:"package";s:60:"https://downloads.wordpress.org/theme/twentyfourteen.1.7.zip";}s:14:"twentythirteen";a:4:{s:5:"theme";s:14:"twentythirteen";s:11:"new_version";s:3:"1.9";s:3:"url";s:44:"https://wordpress.org/themes/twentythirteen/";s:7:"package";s:60:"https://downloads.wordpress.org/theme/twentythirteen.1.9.zip";}}s:12:"translations";a:0:{}}', 'yes'),
(116, 'theme_mods_twentyfifteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1462843559;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(117, 'current_theme', 'Parallax One', 'yes'),
(118, 'theme_mods_Parallax-One', 'a:19:{i:0;b:0;s:26:"parallax_one_logos_content";s:178:"[{"text":"undefined","link":"","image_url":"","title":"undefined","subtitle":"undefined","social_repeater":"undefined","id":"parallax_one_56d7ea7f40f56","shortcode":"undefined"}]";s:29:"parallax_one_services_content";s:1051:"[{"icon_value":"icon-caddie-shopping-streamline","text":"Sementara sih baru apparel, tapi coba klik deh kali aja ada yang lain :)","link":"","image_url":"","choice":"parallax_icon","title":"KambingPintar Shop","subtitle":"undefined","social_repeater":"undefined","id":"parallax_one_56fd4d94f3014","shortcode":"undefined"},{"icon_value":"icon-basic-photo","text":"Punya event berkelas? Buku tahunan? Atau sekedar jepret untuk kenang kenangan? Kami menyediakan jasa fotografi dan editor foto loh, cek disini ya!!","link":"","image_url":"","choice":"parallax_icon","title":"Fotografi","subtitle":"undefined","social_repeater":"undefined","id":"parallax_one_56fd4d93f3013","shortcode":"undefined"},{"icon_value":"icon-tools","text":"Masalah soal IT? Silahkan kontak kami. Kami menyediakan solusi IT Support untuk kalian kalian yang punya problem sedikit soal komputer...","link":"","image_url":"","choice":"parallax_icon","title":"IT Support","subtitle":"undefined","social_repeater":"undefined","id":"parallax_one_56fd4d95f3015","shortcode":"undefined"}]";s:25:"parallax_one_team_content";s:829:"[{"icon_value":"No Icon","text":"undefined","image_url":"\\/\\/localhost\\/kambingpintar\\/wp-content\\/themes\\/Parallax-One\\/images\\/team\\/1.jpg","title":"Albert Jacobs","subtitle":"Founder &amp; CEO","social_repeater":"","id":"parallax_one_56fe9796baca4","shortcode":"undefined"},{"icon_value":"No Icon","text":"undefined","image_url":"\\/\\/localhost\\/kambingpintar\\/wp-content\\/themes\\/Parallax-One\\/images\\/team\\/2.jpg","title":"Tonya Garcia","subtitle":"Account Manager","social_repeater":"","id":"parallax_one_56fe9798baca5","shortcode":"undefined"},{"icon_value":"No Icon","text":"undefined","image_url":"\\/\\/localhost\\/kambingpintar\\/wp-content\\/themes\\/Parallax-One\\/images\\/team\\/3.jpg","title":"Linda Guthrie","subtitle":"Business Development","social_repeater":"","id":"parallax_one_56fe9799baca6","shortcode":"undefined"}]";s:33:"parallax_one_testimonials_content";s:1882:"[{"text":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla nec purus feugiat, molestie ipsum et, consequat nibh. Etiam non elit dui. Nullam vel eros sit amet arcu vestibulum accumsan in in leo. Fusce malesuada vulputate faucibus. Integer in hendrerit nisi. Praesent a hendrerit urna. In non imperdiet elit, sed molestie odio. Fusce ac metus non purus sollicitudin laoreet.","image_url":"\\/\\/localhost\\/kambingpintar\\/wp-content\\/themes\\/Parallax-One\\/images\\/clients\\/1.jpg","title":"Happy Customer","subtitle":"Lorem ipsum","social_repeater":"undefined","id":"parallax_one_56fd526edcd4e","shortcode":"undefined"},{"text":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla nec purus feugiat, molestie ipsum et, consequat nibh. Etiam non elit dui. Nullam vel eros sit amet arcu vestibulum accumsan in in leo. Fusce malesuada vulputate faucibus. Integer in hendrerit nisi. Praesent a hendrerit urna. In non imperdiet elit, sed molestie odio. Fusce ac metus non purus sollicitudin laoreet.","image_url":"\\/\\/localhost\\/kambingpintar\\/wp-content\\/themes\\/Parallax-One\\/images\\/clients\\/2.jpg","title":"Happy Customer","subtitle":"Lorem ipsum","social_repeater":"undefined","id":"parallax_one_56fd526ddcd4d","shortcode":"undefined"},{"text":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla nec purus feugiat, molestie ipsum et, consequat nibh. Etiam non elit dui. Nullam vel eros sit amet arcu vestibulum accumsan in in leo. Fusce malesuada vulputate faucibus. Integer in hendrerit nisi. Praesent a hendrerit urna. In non imperdiet elit, sed molestie odio. Fusce ac metus non purus sollicitudin laoreet.","image_url":"\\/\\/localhost\\/kambingpintar\\/wp-content\\/themes\\/Parallax-One\\/images\\/clients\\/3.jpg","title":"Happy Customer","subtitle":"Lorem ipsum","social_repeater":"undefined","id":"parallax_one_56fd5259dcd4c","shortcode":"undefined"}]";s:33:"parallax_one_contact_info_content";s:612:"[{"icon_value":"icon-basic-mail","text":"contact@site.com","link":"#","title":"undefined","subtitle":"undefined","social_repeater":"undefined","id":"parallax_one_56d450a72cb3a","shortcode":"undefined"},{"icon_value":"icon-basic-geolocalize-01","text":"Company address","link":"#","title":"undefined","subtitle":"undefined","social_repeater":"undefined","id":"parallax_one_56d069b88cb6f","shortcode":"undefined"},{"icon_value":"icon-basic-tablet","text":"0 332 548 954","link":"#","title":"undefined","subtitle":"undefined","social_repeater":"undefined","id":"parallax_one_56d069b98cb70","shortcode":"undefined"}]";s:25:"parallax_one_social_icons";s:629:"[{"icon_value":"icon-social-facebook","text":"undefined","link":"#","title":"undefined","subtitle":"undefined","social_repeater":"undefined","id":"parallax_one_573138a7ee32e0.32263516","shortcode":"undefined"},{"icon_value":"icon-social-twitter","text":"undefined","link":"#","title":"undefined","subtitle":"undefined","social_repeater":"undefined","id":"parallax_one_573138a7ee3545.14202094","shortcode":"undefined"},{"icon_value":"icon-social-googleplus","text":"undefined","link":"#","title":"undefined","subtitle":"undefined","social_repeater":"undefined","id":"parallax_one_573138a7ee3697.86580895","shortcode":"undefined"}]";s:25:"paralax_one_sticky_header";s:0:"";s:25:"parallax_one_header_title";s:17:"KambingPintar.com";s:31:"parallax_one_header_button_link";s:9:"#services";s:36:"paralax_one_services_pinterest_style";s:1:"1";s:34:"parallax_one_our_services_subtitle";s:18:"See what we can do";s:12:"header_image";s:96:"//localhost/kambingpintar/wp-content/themes/Parallax-One/images/background-images/background.jpg";s:17:"header_image_data";a:2:{s:3:"url";s:96:"//localhost/kambingpintar/wp-content/themes/Parallax-One/images/background-images/background.jpg";s:13:"thumbnail_url";s:106:"//localhost/kambingpintar/wp-content/themes/Parallax-One/images/background-images/background_thumbnail.jpg";}s:23:"paralax_one_enable_move";s:1:"1";s:22:"parallax_one_copyright";s:27:"KambingPintar, BikBot Group";s:18:"nav_menu_locations";a:1:{s:7:"primary";i:2;}s:16:"paralax_one_logo";s:85:"http://localhost/kambingpintar/wp-content/uploads/2016/05/WhatsApp-Image-20160510.png";s:23:"paralax_one_header_logo";s:0:"";}', 'yes'),
(119, 'theme_switched', '', 'yes'),
(120, 'parallax_one_migrate_translation2', '1', 'yes'),
(125, '_transient_timeout_rn_last_notification_49a0973', '1462865273', 'no'),
(126, '_transient_rn_last_notification_49a0973', 'O:8:"stdClass":1:{s:5:"error";s:7:"nothing";}', 'no'),
(131, 'recently_activated', 'a:0:{}', 'yes'),
(135, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1462843831;s:7:"checked";a:4:{s:19:"akismet/akismet.php";s:5:"3.0.4";s:29:"pirate-forms/pirate-forms.php";s:6:"1.0.13";s:9:"hello.php";s:3:"1.6";s:23:"intergeo-maps/index.php";s:7:"1.0.4.1";}s:8:"response";a:1:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:6:"3.1.10";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:57:"https://downloads.wordpress.org/plugin/akismet.3.1.10.zip";}}s:12:"translations";a:0:{}s:9:"no_update";a:3:{s:29:"pirate-forms/pirate-forms.php";O:8:"stdClass":6:{s:2:"id";s:5:"64539";s:4:"slug";s:12:"pirate-forms";s:6:"plugin";s:29:"pirate-forms/pirate-forms.php";s:11:"new_version";s:6:"1.0.13";s:3:"url";s:43:"https://wordpress.org/plugins/pirate-forms/";s:7:"package";s:55:"https://downloads.wordpress.org/plugin/pirate-forms.zip";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}s:23:"intergeo-maps/index.php";O:8:"stdClass":6:{s:2:"id";s:5:"45107";s:4:"slug";s:13:"intergeo-maps";s:6:"plugin";s:23:"intergeo-maps/index.php";s:11:"new_version";s:7:"1.0.4.1";s:3:"url";s:44:"https://wordpress.org/plugins/intergeo-maps/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/intergeo-maps.zip";}}}', 'yes'),
(136, 'fs_active_plugins', 'O:8:"stdClass":2:{s:7:"plugins";a:1:{s:22:"intergeo-maps/freemius";O:8:"stdClass":3:{s:7:"version";s:7:"1.1.7.5";s:9:"timestamp";i:1462843833;s:11:"plugin_path";s:9:"hello.php";}}s:6:"newest";O:8:"stdClass":5:{s:11:"plugin_path";s:9:"hello.php";s:8:"sdk_path";s:22:"intergeo-maps/freemius";s:7:"version";s:7:"1.1.7.5";s:13:"in_activation";b:1;s:9:"timestamp";i:1462843833;}}', 'yes'),
(137, 'fs_accounts', 'a:4:{s:11:"plugin_data";a:1:{s:13:"intergeo-maps";a:12:{s:16:"plugin_main_file";O:8:"stdClass":1:{s:4:"path";s:72:"D:/xampp/htdocs/kambingpintar/wp-content/plugins/intergeo-maps/index.php";}s:17:"install_timestamp";i:1462843833;s:16:"sdk_last_version";N;s:11:"sdk_version";s:7:"1.1.7.5";s:16:"sdk_upgrade_mode";b:1;s:18:"sdk_downgrade_mode";b:0;s:19:"plugin_last_version";N;s:14:"plugin_version";s:7:"1.0.4.1";s:19:"plugin_upgrade_mode";b:1;s:21:"plugin_downgrade_mode";b:0;s:17:"connectivity_test";a:6:{s:12:"is_connected";b:1;s:4:"host";s:9:"localhost";s:9:"server_ip";s:3:"::1";s:9:"is_active";b:1;s:9:"timestamp";i:1462843833;s:7:"version";s:7:"1.0.4.1";}s:21:"is_plugin_new_install";b:1;}}s:13:"file_slug_map";a:1:{s:23:"intergeo-maps/index.php";s:13:"intergeo-maps";}s:7:"plugins";a:1:{s:13:"intergeo-maps";O:9:"FS_Plugin":15:{s:16:"parent_plugin_id";N;s:5:"title";s:34:"Intergeo Maps - Google Maps Plugin";s:4:"slug";s:13:"intergeo-maps";s:4:"file";s:23:"intergeo-maps/index.php";s:7:"version";s:7:"1.0.4.1";s:11:"auto_update";N;s:4:"info";N;s:10:"is_premium";b:0;s:7:"is_live";b:1;s:10:"public_key";s:32:"pk_35c86b731f06c8d4ba25b490af632";s:10:"secret_key";N;s:2:"id";s:3:"239";s:7:"updated";N;s:7:"created";N;s:22:"\0FS_Entity\0_is_updated";b:1;}}s:9:"unique_id";s:32:"022d38609a9d8c37972395f1cc9a9f38";}', 'yes'),
(138, 'fs_api_cache', 'a:0:{}', 'yes'),
(139, 'pirate_forms_settings_array', 'a:32:{s:14:"header_options";s:0:"";s:20:"pirateformsopt_email";s:21:"rnugraha305@gmail.com";s:31:"pirateformsopt_email_recipients";s:21:"rnugraha305@gmail.com";s:20:"pirateformsopt_store";s:0:"";s:24:"pirateformsopt_blacklist";s:3:"yes";s:28:"pirateformsopt_confirm_email";s:0:"";s:13:"header_fields";s:0:"";s:25:"pirateformsopt_name_field";s:3:"req";s:26:"pirateformsopt_email_field";s:3:"req";s:28:"pirateformsopt_subject_field";s:3:"req";s:28:"pirateformsopt_message_field";s:3:"req";s:30:"pirateformsopt_recaptcha_field";s:3:"yes";s:32:"pirateformsopt_recaptcha_sitekey";s:0:"";s:34:"pirateformsopt_recaptcha_secretkey";s:0:"";s:13:"header_labels";s:0:"";s:25:"pirateformsopt_label_name";s:9:"Your Name";s:26:"pirateformsopt_label_email";s:10:"Your Email";s:28:"pirateformsopt_label_subject";s:7:"Subject";s:28:"pirateformsopt_label_message";s:12:"Your message";s:31:"pirateformsopt_label_submit_btn";s:12:"Send Message";s:15:"header_messages";s:0:"";s:29:"pirateformsopt_label_err_name";s:15:"Enter your name";s:30:"pirateformsopt_label_err_email";s:19:"Enter a valid email";s:32:"pirateformsopt_label_err_subject";s:22:"Please enter a subject";s:35:"pirateformsopt_label_err_no_content";s:30:"Enter your question or comment";s:27:"pirateformsopt_label_submit";s:41:"Thanks, your email was sent successfully!";s:23:"pirateformsopt_use_smtp";s:0:"";s:24:"pirateformsopt_smtp_host";s:0:"";s:24:"pirateformsopt_smtp_port";s:0:"";s:38:"pirateformsopt_use_smtp_authentication";s:3:"yes";s:28:"pirateformsopt_smtp_username";s:0:"";s:28:"pirateformsopt_smtp_password";s:0:"";}', 'yes'),
(142, '_transient_timeout_parallax-one-update-response', '2925735458', 'no');
INSERT INTO `kpdb_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(143, '_transient_parallax-one-update-response', 'O:8:"stdClass":11:{s:11:"new_version";s:7:"2.1.0.8";s:4:"name";s:12:"Parallax One";s:4:"slug";s:12:"parallax-one";s:3:"url";s:52:"http://themeisle.com/themes/parallax-one?changelog=1";s:12:"last_updated";s:19:"2016-04-19 14:53:06";s:8:"homepage";s:40:"http://themeisle.com/themes/parallax-one";s:7:"package";s:67:"http://downloads.themeisle.com/Parallax-One/latest/Parallax-One.zip";s:13:"download_link";s:67:"http://downloads.themeisle.com/Parallax-One/latest/Parallax-One.zip";s:8:"sections";a:2:{s:11:"description";s:6093:"<p>Take a look at some of these amazing websites built with Parallax One.</p>\n<p><span style="font-size: x-large;">its.center<br />\n</span></p>\n<p style="margin-left: 490px; text-align: left;">A business website for IT support center, which uses Parallax One at its simplest form. The site has a clean and professional look and a nice animated full-width homepage header with Parallax effect. Everything on the site is translated into Russian.</p>\n<p><a class="theme-button" href="http://its.center/" target="_blank" rel="nofollow">VIEW THE SITE</a></p>\n<p><span style="font-size: x-large;">bookmozo.com<br />\n</span></p>\n<p style="margin-left: 490px; text-align: left;">Bookmozo is a publishing service website for Indian authors. Besides the fact that they help with publishing the books, they also offer the writers the possibility to sell them online. The site has a clean and simple look, which puts the content first. You''ll reach any information quickly and easily.</p>\n<p><a class="theme-button" href="http://bookmozo.com/" target="_blank" rel="nofollow">VIEW THE SITE</a></p>\n<p><span style="font-size: x-large;">tylerscottwilliams.com<br />\n</span></p>\n<p style="margin-left: 490px; text-align: left;">It seems like we have a friendly and happy character here! Tyler took Parallax One to create his personal site where he wants to showcase his projects and make his CV available for the employers. Tyler keeps his site on a single page and the design says it all about his vivacious personality.</p>\n<p><a class="theme-button" href="http://tylerscottwilliams.com/" target="_blank" rel="nofollow">VIEW THE SITE</a></p>\n<p><span style="font-size: x-large;">www.tubemogulu.com<br />\n</span></p>\n<p style="margin-left: 490px; text-align: left;">A website that focuses on a programmatic video event that takes place all around the world. It has a simple and clean look, with not so much content, but yet everything is very well organized and informative. Straight to the point!</p>\n<p><a class="theme-button" href="http://www.tubemogulu.com/" target="_blank" rel="nofollow">VIEW THE SITE</a></p>\n<p><span style="font-size: x-large;">buildingrocketts.com<br />\n</span></p>\n<p style="margin-left: 490px; text-align: left;">Another very professional and elegant site, this time for building services. Rockett team has a very specific way of showing its services and works using great sketches, schemes, and images. Everything is simple and organized.</p>\n<p><a class="theme-button" href="http://buildingrocketts.com/" target="_blank" rel="nofollow">VIEW THE SITE</a></p>\n<p>[related_themes title="The Possibilities are Countless." subtitle="See below how you can use this awesome theme and build your website."][/related_themes]</p>\n<p>[two_halves]<br />\n[one_half][/one_half]<br />\n[one_half]<br />\nResponsive Design</p>\n<p style="text-align: justify;">Parallax One is completely responsive in order to provide an optimal viewing experience, easy-reading and navigation with a minimum of resizing, panning and scrolling across a wide range of devices. Every element has been tested to ensure layout adaptability by using fluid, proportion-based grids, flexible images to build your activities future proof.</p>\n<p>[/one_half]<br />\n[/two_halves]</p>\n<p>[two_halves]<br />\n[one_half]<br />\nParallax Effect</p>\n<p style="text-align: justify;">Create memorable pages with smooth parallax effect that everyone loves. Upload images into section, put some elements like text, buttons and enjoy a great looking section.<br />\nThe images are displayed dynamically in a list sliding horizontally from one representation to the next one using subtle animations based on lightweight technologies</p>\n<p>[/one_half]<br />\n[one_half]</p>\n<p>[/one_half]<br />\n[/two_halves]</p>\n<p>[two_halves]<br />\n[one_half]</p>\n<p>[/one_half]<br />\n[one_half]<br />\nUnlimited color options</p>\n<p style="text-align: justify;">Parallax One has an advanced theme options panel that enables you to easily customize every element with the color that you desire, thus making your website unique and aesthetically beautiful.</p>\n<p>[/one_half]<br />\n[/two_halves]</p>\n<p>[two_halves]<br />\n[one_half]<br />\nShow them all<br />\nKeep your visitors updated with your activities with our nice built-in feature. Accomplish your objectives by staying engaged with your audience and help them understand, remember your work and act on the information and progress you choose to share.<br />\n[/one_half]<br />\n[one_half]</p>\n<p>[/one_half]<br />\n[/two_halves]</p>\n<p>[two_halves]<br />\n[one_half]</p>\n<p>[/one_half]<br />\n[one_half]<br />\nDesigned to build trust</p>\n<p style="text-align: justify;">You can transform visitors in customers by showing them some trust signs. Adding client testimonials to your website is an integral part of achieving success on the web, strengthen your reputation and build credibility. ParallaxOne was featured as one of the best free themes on <a href="http://www.bootstrapzero.com/bootstrap-template/parallax-one" target="_blank">BootstrapZero</a></p>\n<p>[/one_half]<br />\n[/two_halves]</p>\n<p>[two_halves]<br />\n[one_half]<br />\nBe easily contacted</p>\n<p style="text-align: left;">On the main page the customer finds everything he needs in order to contact you immediately. He is just one click away from you, simply as that, like never before.This theme utilizes Google maps to display exact locations and provide users the ability to interact, visualize and remember a specific place. This navigation guide is intuitive, no complex configurations needed and proves very efficient for visitors to find your location.</p>\n<p>[/one_half]<br />\n[one_half]</p>\n<p>[/one_half]<br />\n[/two_halves]</p>\n<p>[two_halves]<br />\n[one_half]</p>\n<p>[/one_half]<br />\n[one_half]<br />\nOutstanding support</p>\n<p style="text-align: justify;">We are dedicated to Parallax One and our customers. Our fast and reliable support team will reply to all questions within 24 hours. We take care of your website as much as you do and that''s why support is always 100% free.</p>\n<p>[/one_half]<br />\n[/two_halves]</p>\n";s:9:"changelog";s:25233:"<p>### 2.1.0.8 - 18/04/2016</p>\n<p>Changes:</p>\n<p>* Fixed image not showing in Services section</p>\n<p>For some reasons, in one of our previous commits we changed the link to image and image to link which was causing this issue.<br />\n* Merge pull request #370 from HardeepAsrani/development</p>\n<p>Fixed image not showing in Services section</p>\n<p>### 2.1.0.7 - 14/04/2016</p>\n<p>Changes:</p>\n<p>* Our services small css issue<br />\n* Merge pull request #368 from cristian-ungureanu/development</p>\n<p>Development</p>\n<p>### 2.1.0.6 - 13/04/2016</p>\n<p>Changes:</p>\n<p>* Revert "!!!changes for general plugin"</p>\n<p>This reverts commit e008cfceb141af1a928416e93010cfa08921764c.<br />\n* Fixed WordPress 4.5 scrolling issue</p>\n<p>Fixed scrolling issue which was caused after upgrading to WordPress 4.5.<br />\n* Merge pull request #366 from HardeepAsrani/development</p>\n<p>Fixed WordPress 4.5 scrolling issue<br />\n* Merge pull request #353 from cristian-ungureanu/development</p>\n<p>Development<br />\n* Our services small css issue</p>\n<p>### 2.1.0.5 - 19/02/2016</p>\n<p>Changes:</p>\n<p>* Fixed #292 Added character sets<br />\n* #344 latest news titles issue fixed</p>\n<p>issue fixed.<br />\n* Merge pull request #346 from Gouravwp/development</p>\n<p>#344 latest news titles issue fixed<br />\n* #233 - added custom hooks<br />\n* #345 - start page from top if no title and frontpage<br />\n* see the icon in dropdown in customizer<br />\n* fix #347 - woocommerce ratings not displaying properly<br />\n* fix #343 - fix latest news section when wr megamenu is installed<br />\n* #339 - added social icons in team section<br />\n* #329 - make parallax-one seo friendly, only one h1 on page, all images with alt<br />\n* #296 - js loading slow in menu<br />\n* #272 - allow ul and li inside box<br />\n* #218 - add editor style<br />\n* added google icons<br />\n* added new google icons<br />\n* added compatibility with SI CAPTCHA Anti-Spam and change form style<br />\n* Merge pull request #350 from cristian-ungureanu/development</p>\n<p>Development<br />\n* Update translations for polish### 2.1.0.4 - 14/01/2016</p>\n<p>Changes:</p>\n<p>* Fixed #338 Added option to remove pinterest style for Testimonials section and Services section<br />\n* #334, Option to translate the link field from the Services section<br />\n* French translation for Parallax One</p>\n<p>### 2.1.0.3 - 03/12/2015</p>\n<p>Changes:</p>\n<p>* #322 - added control for overlay opacity in first section<br />\n* #311 - line break in textbox is now interpreted as new line<br />\n* #307 - use relative url for images<br />\n* Merge branch ''cristian-ungureanu-development'' into development</p>\n<p>### 2.1.0.2 - 27/11/2015</p>\n<p>Changes:</p>\n<p>* Merge pull request #330 from cristian-ungureanu/development</p>\n<p>Development<br />\n* EDD Compatibility issues</p>\n<p>### 2.1.0.1 - 24/11/2015</p>\n<p>Changes:</p>\n<p>* #316 Change date format issue fixed<br />\n* Merge pull request #324 from Gouravwp/development</p>\n<p>#316 Change date format issue fixed<br />\n* date format issue fixed</p>\n<p>change date format .<br />\n* date format issue fixed</p>\n<p>Change date format<br />\n* Merge branch ''Gouravwp-development'' into development<br />\n* #326 Wrong text domain issue</p>\n<p>text domain issue fixed !<br />\n* Merge pull request #327 from Gouravwp/development</p>\n<p>#326 Wrong text domain issue</p>\n<p>### 2.1.0.0 - 11/11/2015</p>\n<p>Changes:</p>\n<p>* Fixed #291 Date appears twice on blog on moibile<br />\n* Fixed #320 Background image not working well<br />\n* Fixed Background image not working well on mobile</p>\n<p>### 2.0.9 - 29/10/2015</p>\n<p>Changes:</p>\n<p>* #308 added target="_blank"</p>\n<p>added target="_blank" in all Social links<br />\n* Merge pull request #312 from Gouravwp/patch-1</p>\n<p>#308 added target="_blank"<br />\n* Merge pull request #314 from cristian-ungureanu/development</p>\n<p>!!!fixed shop section<br />\n* Fixed #301 and #290 translations issues and added brazilian-portuguese translations</p>\n<p>### 2.0.8 - 23/10/2015</p>\n<p>Changes:</p>\n<p>* Merge pull request #305 from cristian-ungureanu/development</p>\n<p>!!! #290 - fixed translations</p>\n<p>### 2.0.7 - 22/10/2015</p>\n<p>Changes:</p>\n<p>* Merge pull request #295 from cristian-ungureanu/development</p>\n<p>!!!changes for plus plugin<br />\n* Merge pull request #297 from cristian-ungureanu/development</p>\n<p>!!!fixed special characters in boxes<br />\n* Merge pull request #302 from cristian-ungureanu/development</p>\n<p>Development<br />\n* Merge pull request #303 from cristian-ungureanu/development</p>\n<p>!!! #293 - allow just few tags in text box</p>\n<p>### 2.0.6 - 12/10/2015</p>\n<p>Changes:</p>\n<p>* Fixed #208 check JetPack widgets integration<br />\n* Fixed #114 EDD integration<br />\n* Fixed #287 Services images are stretching<br />\n* Fixed #286 Responsive background for single page on mobile</p>\n<p>### 2.0.5 - 07/10/2015</p>\n<p>Changes:</p>\n<p>* Fixed #276 You may be interested in Section in cart<br />\n* Fixed #284 Latest news issue on mobile<br />\n* Fixed #283 Reduced big spaces on mobile<br />\n* Fixed #282 Ribbon background is stretching weird on mobile</p>\n<p>### 2.0.4 - 07/10/2015</p>\n<p>Changes:</p>\n<p>* #272 - html tags a , button , strong, em, br are now allowed in box content<br />\n* #273 - fixed smooth scroll on button click<br />\n* #270 - fixed payment options image<br />\n* Merge pull request #274 from cristian-ungureanu/development</p>\n<p>Development<br />\n* Merge pull request #280 from cristian-ungureanu/development</p>\n<p>Development<br />\n* Fixed translation issues for frontpage buttons<br />\n* Merge pull request #281 from cristian-ungureanu/development</p>\n<p>!!!small changes for plus version### 2.0.3 - 23/09/2015</p>\n<p>Changes:</p>\n<p>* #259 - include font wit wp_enqueue_style<br />\n* #243 - added welcome page<br />\n* #243 - fixed themecheck errors from welcome page<br />\n* #251 - options are hiding when they are empty<br />\n* #243 - added links to documentation<br />\n* #265 - about section allows now a and button tag<br />\n* #264 - fixed sections display on mobile and tablet<br />\n* #268 - fixed sorting in woocommerce shop<br />\n* Merge pull request #263 from cristian-ungureanu/development</p>\n<p>Development</p>\n<p>### 2.0.2 - 17/09/2015</p>\n<p>Changes:</p>\n<p>* this fixes #212 - oEmbed is now responsive<br />\n* Updated screenshot<br />\n* removed unused control header text color from customizer, changed background color of repeater fields in customizer from transparent to white<br />\n* this fixes errors in theme check<br />\n* added links on features boxes<br />\n* #207 - postmatic integration<br />\n* Merge pull request #230 from cristian-ungureanu/development</p>\n<p>this fixes #212 - oEmbed is now responsive<br />\n* #235 - include parallax js only if it is activated<br />\n* #212 - change width and height with max-width and max-height for videos<br />\n* #207 - fixed Postnatic integration<br />\n* #237 - align testimonials<br />\n* #238 - optimize bk<br />\n* #237 - fix the grid js, when all columns are equal, it adds the box in middle<br />\n* #238 - optimize ribbon image<br />\n* #214 accessibility header<br />\n* Update readme.txt<br />\n* markdown for readme</p>\n<p>markdown-ify the readme<br />\n* #214 - added aria rols, #112 - added part of schema markup<br />\n* #112,#214 - removed hybrid code , added tags for markup, validate frontpage<br />\n* #112 - implement schema markup, validating all pages<br />\n* fixed comment did not look the same as in old version<br />\n* Merge pull request #241 from cristian-ungureanu/development</p>\n<p>Development<br />\n* added menu control with keyboard<br />\n* Russian translation. Partial<br />\n* Russian translation. Full<br />\n* #214 - accessibility ready menu in full width and keyboard control<br />\n* Merge branch ''maxkoryukov-translation-RU'' into development<br />\n* #214 - accessibility ready - menu is now responsive<br />\n* #214 - accessibility ready - added alt attribute to images<br />\n* fixed top menu when no item is selected<br />\n* fixed top menu when no menu is selected<br />\n* this fixes #242<br />\n* #214 - small fixes<br />\n* Merge pull request #248 from cristian-ungureanu/development</p>\n<p>Development<br />\n* #250 - site icon control is not visible in customizer<br />\n* Fixed #249, translations for frontpage strings<br />\n* #214 - style links on focus<br />\n* Merge pull request #252 from cristian-ungureanu/development</p>\n<p>Development<br />\n* #249 - added translation support for repeater content<br />\n* Merge pull request #256 from cristian-ungureanu/development</p>\n<p>#249 - added translation support for repeater content### 2.0.1 - 18/08/2015</p>\n<p>Changes:</p>\n<p>* #224 - buttons issue<br />\n* Merge pull request #225 from cristian-ungureanu/development</p>\n<p>#224 - buttons issue<br />\n* Updated pinterest js plugin AND Removed horizontal scroll on mobile<br />\n* change meta viewport<br />\n* Removed logo effect on scroll<br />\n* Update style.css<br />\n* Revert "change meta viewport"</p>\n<p>This reverts commit dde5534928ce5fb22d2b0d752def0edac462ba45.<br />\n* #204 - added git button<br />\n* Merge pull request #229 from cristian-ungureanu/development</p>\n<p>Development### 2.0.0 - 12/08/2015</p>\n<p>Changes:</p>\n<p>* CSS issues<br />\n* Added parallax efect on header<br />\n* Replaced pinterest plugin fo Our services and Testimonials<br />\n* Pinterest style on shop<br />\n* Fixed Related and Upsells products issue<br />\n* Parallax issues<br />\n* optimized screenshot<br />\n* #215 - suggest short pixel image optimiser plugin<br />\n* #202 - added textdomain to latest news title<br />\n* use get_template_part instead of include<br />\n* added parallax controls<br />\n* changed name in customizr from header image to header<br />\n* #215 - added sp zip<br />\n* Merge pull request #220 from cristian-ungureanu/development</p>\n<p>Development<br />\n* Fixed #221 Header Parallax effect<br />\n* Fixed #221 parallax effect issue<br />\n* Fixed #221 Header Parallax effect header height issue<br />\n* Fixed #221 Parallax effect header issue<br />\n* Fixed #221 Header parallax issue<br />\n* #217, #117 - added readme.txt , removed unused images<br />\n* Merge pull request #222 from cristian-ungureanu/development</p>\n<p>#217, #117 - added readme.txt , removed unused images<br />\n* Prevent theme from beeing updated by wordpress.org updates<br />\n* Rename Header section to Background<br />\n* update conditon of header<br />\n* Merge pull request #223 from cristian-ungureanu/development</p>\n<p>update conditon of header<br />\n### 1.0.5 - 27/07/2015</p>\n<p>Changes:</p>\n<p>* Home Latest news section redesign<br />\n* #209 - fixed child theme support<br />\n* Merge pull request #210 from cristian-ungureanu/development</p>\n<p>#209 - fixed child theme support<br />\n* Update style.css</p>\n<p>### 1.0.4 - 24/07/2015</p>\n<p>Changes:</p>\n<p>* this fixes #198 - responsive header image<br />\n* #198 - center background image<br />\n* #199 - latest news section appears only if it has posts<br />\n* update to #198 - responsive header image<br />\n* update to #198<br />\n* update to #199<br />\n* Merge pull request #200 from cristian-ungureanu/development</p>\n<p>Development<br />\n* Fixed #136 rtl support<br />\n* Fixed #148 Basic bbpress integration<br />\n* Small css issue<br />\n* Update style### 1.0.1 - 17/07/2015</p>\n<p>Changes:</p>\n<p>* Update style.css<br />\n* #190 - rename function<br />\n* minify js<br />\n* #188 - update tgm<br />\n* #147 - contact placeholders<br />\n* changed the label for contact repeater<br />\n* Merge pull request #192 from cristian-ungureanu/development</p>\n<p>Development<br />\n* fix shop when there are only 2 related products<br />\n* Merge pull request #195 from cristian-ungureanu/development</p>\n<p>fix shop when there are only 2 related products</p>\n<p>### 1.0.0 - 17/07/2015</p>\n<p>Changes:</p>\n<p>* #140 - removed escape html in customizer where a tag is needed<br />\n* speed optimization<br />\n* Merge pull request #187 from cristian-ungureanu/development</p>\n<p>Development<br />\n* blogfix , shop fix, inputs fix<br />\n* Merge pull request #189 from cristian-ungureanu/development</p>\n<p>blogfix , shop fix, inputs fix### 1.0.0 - 15/07/2015</p>\n<p>Changes:</p>\n<p>* #179 - prefix functions<br />\n* #167 - audio/video , #166 - playlist<br />\n* #158 - use get_template_directory_uri<br />\n* this fixes #171 - style form fields<br />\n* fixes #183, #141<br />\n* minify gridalicious js<br />\n* Merge pull request #181 from cristian-ungureanu/development</p>\n<p>Development### 1.0.0 - 13/07/2015</p>\n<p>Changes:</p>\n<p>* #154 - use esc_html__() and esc_html_e() intstead of __() and _e()<br />\n* #149 - made control for sticky header<br />\n* fix menu when it was not displaying<br />\n* #133 - support more tag<br />\n* #155 - use selected() function<br />\n* Merge pull request #178 from cristian-ungureanu/development</p>\n<p>Development</p>\n<p>### 1.0.0 - 09/07/2015</p>\n<p>Changes:</p>\n<p>* this fixes background size<br />\n* Merge pull request #175 from cristian-ungureanu/development</p>\n<p>this fixes background size<br />\n* #158 - change get_stylesheet with get_template,#160 small change to css<br />\n* Merge pull request #176 from cristian-ungureanu/development</p>\n<p>#158 - change get_stylesheet with get_template,#160 small change to css</p>\n<p>### 1.0.0 - 09/07/2015</p>\n<p>Changes:</p>\n<p>* #127 - fixed header/background image<br />\n* #156 - use wp default textarea control<br />\n* fixes for last commit<br />\n* remove function that removes the background<br />\n* Merge pull request #173 from cristian-ungureanu/development</p>\n<p>Development</p>\n<p>### 1.0.0 - 09/07/2015</p>\n<p>Changes:</p>\n<p>* fixed link to pro<br />\n* removed pro texts from customizer<br />\n* added link to intergeo maps in customizer description<br />\n* removed services sidebar and widget and added repeater in customizer<br />\n* made testimonials and our team with customizer repeater<br />\n* this fixes #110 - Remove hide section setting<br />\n* this fixes #111 - Archive link is not working on homepage<br />\n* #126 - removed rtl.css<br />\n* this fixes #99<br />\n* this fixes #105<br />\n* this fixes #107 - changed content width<br />\n* Merge pull request #137 from cristian-ungureanu/development</p>\n<p>Development<br />\n* this fixes #97 - cursor moves when trying to write smth<br />\n* this fixes #100<br />\n* this fixes #103 - gravatar size<br />\n* this fixes #138 - remove pro button<br />\n* #119 - removed default contact form<br />\n* #119 - removed captcha from function.php<br />\n* Small issues<br />\n* #118 - added development version for min js and remove wow plugin that was not used<br />\n* this fixes #115 - change frontpage<br />\n* #116 - move content from index to home and in index include home template<br />\n* Fixed #141 Woocommerce related product issue<br />\n* #121 - scripts versioning<br />\n* Fixed #165 Galleries broken<br />\n* #125 - removed favicon<br />\n* #128 - header now display when static frondpage is set<br />\n* Fixed #151 text inconsistency<br />\n* Fixed #150 header subtitle issue<br />\n* #140 - added overlay on map section<br />\n* #120 - prefixing and remove same size<br />\n* #124 - prefixing functions<br />\n* #146 - removed layouts<br />\n* #163 - remove disable comments on pages<br />\n* CSS issues<br />\n* #162 - use wp_query instead of query_posts<br />\n* #116 - home.php missing<br />\n* #159 - move transport in setting args<br />\n* remove settings parameter from control<br />\n* Merge pull request #169 from cristian-ungureanu/development</p>\n<p>Development</p>\n<p>### 1.0.0 - 06/07/2015</p>\n<p>Changes:</p>\n<p>* fixed undefined value error #82<br />\n* Fixed #101 blog font weight AND #102 font comments small AND #104 comments form un-aligned<br />\n* Fixed #98 Header menu appears late on scroll<br />\n* optimized images<br />\n* Fixed #101 blog font weight AND #102 font on comment<br />\n* Fixed #108 Font on post meta<br />\n* Fixed #109 Visual issue on sidebar<br />\n* Increased font size</p>\n<p>### 1.0.0 - 03/07/2015</p>\n<p>Changes:</p>\n<p>* Revert "Development"</p>\n<p>### 1.0.0 - 01/07/2015</p>\n<p>Changes:</p>\n<p>* Fixed #64 Added description and theme uri AND Fixed #91 Comment form looks bad on mobile<br />\n* Fixed #89 Replaced Our story image<br />\n* this fixes #93 - disabled comments on full width template too<br />\n* #75 - panel for background and colors sections<br />\n* Small issue pinterest style plugin js<br />\n* Merge pull request #94 from cristian-ungureanu/development</p>\n<p>Development</p>\n<p>### 1.0.0 - 01/07/2015</p>\n<p>Changes:</p>\n<p>* Parallax effect homepage<br />\n* Contact page form style<br />\n* small fixes - added control for image on ribbon section and move background controls in appearance<br />\n* this fixes #75 - added buttons for documentation, support and buy pro<br />\n* #64 - added tags in style.css<br />\n* do not display sidebar if is empty<br />\n* verify variable in general control and in contact section<br />\n* update theme tags<br />\n* themecheck fixes<br />\n* Merge pull request #83 from cristian-ungureanu/development</p>\n<p>Development<br />\n* #65 - regenerate pot file<br />\n* this fixes #85 - remove active callback<br />\n* Merge pull request #84 from cristian-ungureanu/development</p>\n<p>#65 - regenerate pot file<br />\n* this fixes #88 - added footer socials back<br />\n* Fixed #87 Add image source in readme AND Fixed #86 ThemeCheck errors<br />\n* added color controls for headings and text<br />\n* Fixed #89 Our story image needs to be replaced<br />\n* Improved js<br />\n* Merge pull request #90 from cristian-ungureanu/development</p>\n<p>this fixes #88 - added footer socials back### 1.0.0 - 19/06/2015</p>\n<p>Changes:</p>\n<p>* escape all variables<br />\n* this fixes #58 - added parallax_one_only_customizer in style.css<br />\n* this fixes #59 - wp_customize declared only once<br />\n* this fixes #60 - added textdomain for comments_number and for Posted in and display it only if category exists<br />\n* this fixes #62 - added default background<br />\n* this fixes #64 - change author name and author uri<br />\n* this fixes #66 - change function name<br />\n* this fixes #67 - remove commented code from functions.php<br />\n* this fixes #68 - remove duplicate add_theme_support(woocommerce) and add comment back to post-thumbnails<br />\n* this fixes #69 - add text domain for read more and by<br />\n* this fixes #71 - include divs inside if<br />\n* Checked W3 validator<br />\n* Fixed conflict<br />\n* Merge branch ''cristian-ungureanu-development'' into development</p>\n<p>### 1.0.0 - 18/06/2015</p>\n<p>Changes:</p>\n<p>* this fixes #40 - when add a new services widget, control of image works only after save and refresh<br />\n* this fixes #38 - do not display widget if all fields are empty<br />\n* removed unused photos and modify default our team widgets to display the same photo<br />\n* this fixes #33 and #34 - upload images now work in dashboard widgets and user can select image size from media uploader<br />\n* this fixes #41 - removed logos section from customizer<br />\n* update to #34 - renamed the function that adds image size to media uploader, added image size for services and customers and added domain name to size labels<br />\n* Fixed #44 Top area is too small and Fixed pinterest style issue<br />\n* Fixed conflict<br />\n* Merge branch ''cristian-ungureanu-development'' into development<br />\n* added woocommerce support<br />\n* this fixes #50 - check if undefined in js<br />\n* this fixes #48 - prefixes for add image size<br />\n* update to #48<br />\n* update to #38 - do not display widgets if all fields are empty (for customers and team too)<br />\n* this fixes #41 - added logos section back on lite version<br />\n* added transport for logos bar<br />\n* update to #41<br />\n* added contact form and map control in customizer. Also made frontpage customizer controls available only on frontpage and map<br />\n* this fixes #42 - added control to disable comments on pages<br />\n* Woocommerce style<br />\n* remove woocommerce file<br />\n* Merge pull request #55 from cristian-ungureanu/development</p>\n<p>Development<br />\n* Fixed #54 CSS for logos section<br />\n* added intergeo maps section to frontpage<br />\n* change images for happy customers default widgets<br />\n* Fixed #52 Default image for team member<br />\n* added wpml-config<br />\n* Fixed #2 Screenshot<br />\n* Merge pull request #56 from cristian-ungureanu/development</p>\n<p>Development</p>\n<p>### 1.0.0 - 05/06/2015</p>\n<p>Changes:</p>\n<p>* picture + title fixes<br />\n* added header section<br />\n* added contact info section<br />\n* fixed the default widgets<br />\n* added default content for contact info section and footer social icons<br />\n* Fixed #26 Latest news section - Responsive<br />\n* Merge pull request #31 from cristian-ungureanu/development</p>\n<p>picture + title fixes<br />\n* Added single page style<br />\n* Added blog page style<br />\n* Added blog style<br />\n* Added style and menu smooth scroll<br />\n* Added style<br />\n* changes in default widgets<br />\n* Merge pull request #36 from cristian-ungureanu/development</p>\n<p>changes in default widgets<br />\n* this fixes default widgets<br />\n* added comments for defaut widgets<br />\n* Fixed #25 Latest news section slider<br />\n* Merge pull request #37 from cristian-ungureanu/development</p>\n<p>this fixes default widgets</p>\n<p>### 1.0.0 - 12/05/2015</p>\n<p>Changes:</p>\n<p>* Removed Logos section and Sections order from Lite version<br />\n* Sticky footer<br />\n* Logo max height<br />\n* removed logos section widget file<br />\n* Update homepage Latest news js<br />\n* added logos section in customizer, added latest news section in frontpage and customizer (needs some css updates), made a custom control for all texts in customizer instead of making a separate class for each one<br />\n* Updated css<br />\n* Merge pull request #24 from cristian-ungureanu/development</p>\n<p>Development<br />\n* fixed show/hide section with transport<br />\n* added updated style<br />\n* added latest news section<br />\n* close divs from header in single.php<br />\n* added team widget with social icons repeater (works only in dashboard, not in customizer yet)<br />\n* Updated style for project team<br />\n* repaired the project team widget to work in customizer too, added project team panel in customizer<br />\n* Merge pull request #27 from cristian-ungureanu/development</p>\n<p>Development<br />\n* changed all project team to our team<br />\n* Merge pull request #28 from cristian-ungureanu/development</p>\n<p>changed all project team to our team<br />\n* Fixed default widgets for Our team section<br />\n* added our services section<br />\n* added template-blog<br />\n* added Our Story section<br />\n* added ribbon section<br />\n* added pannel for ribbon section<br />\n* Merge pull request #29 from cristian-ungureanu/development</p>\n<p>added our services section</p>\n<p>### 1.0.0 - 24/04/2015</p>\n<p>Changes:</p>\n<p>* Fixed #19, made apply button visible in logos widgets<br />\n* added drag and drop for repeater icons<br />\n* added customers widget<br />\n* Fixed conflict<br />\n* Merge branch ''cristian-ungureanu-development'' into development<br />\n* Default widgets in customizer for Happy Customers sidebar<br />\n* added drag and drop to change sections order in customizer-&gt;sections order<br />\n* added description for sections order<br />\n* added logos section in customizer<br />\n* added happy customers section in customizer<br />\n* added default widgets for logos section<br />\n* Merge pull request #21 from cristian-ungureanu/development</p>\n<p>Development</p>\n<p>### 1.0.0 - 21/04/2015</p>\n<p>Changes:</p>\n<p>* Added css<br />\n* Update testimonials css<br />\n* Fixed #11 Site title and Tagline<br />\n* Fixed #9 Social icons repreater in customizer need some design<br />\n* added 4 sidebar sections in footer<br />\n* added transport postMessage<br />\n* added logos section<br />\n* Merge pull request #15 from cristian-ungureanu/development</p>\n<p>Development</p>\n<p>### 1.0.0 - 14/04/2015</p>\n<p>Changes:</p>\n<p>* added logo and disable preloader in customizer in General options section<br />\n* added footer menu in functions.php and in footer.php; added style for li a in footer menu because you can not add classes on li a elements in wp_nav menu<br />\n* added select menu option in customizer -&gt; footer options; added copyright in customizer -&gt; footer options;<br />\n* added social repeater in footer<br />\n* Fixed #3 Dropdown menu issue<br />\n* Fixed #7 Mobile menu not working when no menu is not selected in wp<br />\n* Merge pull request #8 from cristian-ungureanu/development</p>\n<p>Header/Footer changes<br />\n* Fixed #12, added Site title and tagline when no logo is selected</p>\n<p>### 1.5.4 - 05/03/2015</p>\n<p>Changes:</p>\n<p>* Latest news issue on iPad<br />\n* Woocommerce display for older versions<br />\n* Branding</p>\n<p>- Modified background image<br />\n+ added focus images<br />\n* Branding - follow-up</p>\n<p>removed unnecessary images<br />\nadded screenshot<br />\n* Replaced screenshot<br />\n* Merge pull request #74 from DragosBubu/development</p>\n<p>Branding</p>\n<p>### 1.0.5 - 17/10/2014</p>\n<p>Changes:</p>\n<p>* First version<br />\n* some fixes for responsive<br />\n* I added and plugin<br />\n* removed error.log<br />\n* sync with wp.org</p>\n";}s:6:"tested";s:3:"4.1";s:13:"compatibility";s:79:"a:1:{s:3:"4.1";a:1:{s:5:"1.5.2";a:3:{i:0;s:4:"100%";i:1;s:1:"5";i:2;s:1:"5";}}}";}', 'no'),
(144, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(146, '_transient_is_multi_author', '0', 'yes'),
(147, '_site_transient_timeout_theme_roots', '1462849936', 'yes'),
(148, '_site_transient_theme_roots', 'a:4:{s:12:"Parallax-One";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:14:"twentythirteen";s:7:"/themes";}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `kpdb_postmeta`
--

CREATE TABLE IF NOT EXISTS `kpdb_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=44 ;

--
-- Dumping data for table `kpdb_postmeta`
--

INSERT INTO `kpdb_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(4, 5, '_menu_item_type', 'custom'),
(5, 5, '_menu_item_menu_item_parent', '0'),
(6, 5, '_menu_item_object_id', '5'),
(7, 5, '_menu_item_object', 'custom'),
(8, 5, '_menu_item_target', ''),
(9, 5, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(10, 5, '_menu_item_xfn', ''),
(11, 5, '_menu_item_url', '#story'),
(13, 6, '_menu_item_type', 'custom'),
(14, 6, '_menu_item_menu_item_parent', '0'),
(15, 6, '_menu_item_object_id', '6'),
(16, 6, '_menu_item_object', 'custom'),
(17, 6, '_menu_item_target', ''),
(18, 6, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(19, 6, '_menu_item_xfn', ''),
(20, 6, '_menu_item_url', '#team'),
(22, 7, '_menu_item_type', 'custom'),
(23, 7, '_menu_item_menu_item_parent', '0'),
(24, 7, '_menu_item_object_id', '7'),
(25, 7, '_menu_item_object', 'custom'),
(26, 7, '_menu_item_target', ''),
(27, 7, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(28, 7, '_menu_item_xfn', ''),
(29, 7, '_menu_item_url', '#latestnews'),
(31, 8, '_menu_item_type', 'custom'),
(32, 8, '_menu_item_menu_item_parent', '0'),
(33, 8, '_menu_item_object_id', '8'),
(34, 8, '_menu_item_object', 'custom'),
(35, 8, '_menu_item_target', ''),
(36, 8, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(37, 8, '_menu_item_xfn', ''),
(38, 8, '_menu_item_url', '#services'),
(40, 9, '_wp_attached_file', '2016/05/WhatsApp-Image-20160510.jpg'),
(41, 9, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:1132;s:4:"file";s:35:"2016/05/WhatsApp-Image-20160510.jpg";s:5:"sizes";a:9:{s:9:"thumbnail";a:4:{s:4:"file";s:35:"WhatsApp-Image-20160510-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:35:"WhatsApp-Image-20160510-300x212.jpg";s:5:"width";i:300;s:6:"height";i:212;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:36:"WhatsApp-Image-20160510-1024x724.jpg";s:5:"width";i:1024;s:6:"height";i:724;s:9:"mime-type";s:10:"image/jpeg";}s:31:"parallax-one-post-thumbnail-big";a:4:{s:4:"file";s:35:"WhatsApp-Image-20160510-730x340.jpg";s:5:"width";i:730;s:6:"height";i:340;s:9:"mime-type";s:10:"image/jpeg";}s:34:"parallax-one-post-thumbnail-mobile";a:4:{s:4:"file";s:35:"WhatsApp-Image-20160510-500x233.jpg";s:5:"width";i:500;s:6:"height";i:233;s:9:"mime-type";s:10:"image/jpeg";}s:39:"parallax-one-post-thumbnail-latest-news";a:4:{s:4:"file";s:35:"WhatsApp-Image-20160510-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:17:"parallax_one_team";a:4:{s:4:"file";s:35:"WhatsApp-Image-20160510-268x273.jpg";s:5:"width";i:268;s:6:"height";i:273;s:9:"mime-type";s:10:"image/jpeg";}s:21:"parallax_one_services";a:4:{s:4:"file";s:33:"WhatsApp-Image-20160510-60x62.jpg";s:5:"width";i:60;s:6:"height";i:62;s:9:"mime-type";s:10:"image/jpeg";}s:22:"parallax_one_customers";a:4:{s:4:"file";s:33:"WhatsApp-Image-20160510-75x75.jpg";s:5:"width";i:75;s:6:"height";i:75;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(42, 10, '_wp_attached_file', '2016/05/WhatsApp-Image-20160510.png'),
(43, 10, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:448;s:4:"file";s:35:"2016/05/WhatsApp-Image-20160510.png";s:5:"sizes";a:9:{s:9:"thumbnail";a:4:{s:4:"file";s:35:"WhatsApp-Image-20160510-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:34:"WhatsApp-Image-20160510-300x84.png";s:5:"width";i:300;s:6:"height";i:84;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:36:"WhatsApp-Image-20160510-1024x287.png";s:5:"width";i:1024;s:6:"height";i:287;s:9:"mime-type";s:9:"image/png";}s:31:"parallax-one-post-thumbnail-big";a:4:{s:4:"file";s:35:"WhatsApp-Image-20160510-730x340.png";s:5:"width";i:730;s:6:"height";i:340;s:9:"mime-type";s:9:"image/png";}s:34:"parallax-one-post-thumbnail-mobile";a:4:{s:4:"file";s:35:"WhatsApp-Image-20160510-500x233.png";s:5:"width";i:500;s:6:"height";i:233;s:9:"mime-type";s:9:"image/png";}s:39:"parallax-one-post-thumbnail-latest-news";a:4:{s:4:"file";s:35:"WhatsApp-Image-20160510-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:17:"parallax_one_team";a:4:{s:4:"file";s:35:"WhatsApp-Image-20160510-268x273.png";s:5:"width";i:268;s:6:"height";i:273;s:9:"mime-type";s:9:"image/png";}s:21:"parallax_one_services";a:4:{s:4:"file";s:33:"WhatsApp-Image-20160510-60x62.png";s:5:"width";i:60;s:6:"height";i:62;s:9:"mime-type";s:9:"image/png";}s:22:"parallax_one_customers";a:4:{s:4:"file";s:33:"WhatsApp-Image-20160510-75x75.png";s:5:"width";i:75;s:6:"height";i:75;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}');

-- --------------------------------------------------------

--
-- Table structure for table `kpdb_posts`
--

CREATE TABLE IF NOT EXISTS `kpdb_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `kpdb_posts`
--

INSERT INTO `kpdb_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2016-05-10 01:24:38', '2016-05-10 01:24:38', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2016-05-10 01:24:38', '2016-05-10 01:24:38', '', 0, 'http://localhost/kambingpintar/?p=1', 0, 'post', '', 1),
(2, 1, '2016-05-10 01:24:38', '2016-05-10 01:24:38', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/kambingpintar/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'open', 'open', '', 'sample-page', '', '', '2016-05-10 01:24:38', '2016-05-10 01:24:38', '', 0, 'http://localhost/kambingpintar/?page_id=2', 0, 'page', '', 0),
(3, 1, '2016-05-10 01:25:14', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-05-10 01:25:14', '0000-00-00 00:00:00', '', 0, 'http://localhost/kambingpintar/?p=3', 0, 'post', '', 0),
(5, 1, '2016-05-10 02:22:28', '2016-05-10 02:22:28', '', 'Our Story', '', 'publish', 'open', 'open', '', 'our-story', '', '', '2016-05-10 02:23:59', '2016-05-10 02:23:59', '', 0, 'http://localhost/kambingpintar/?p=5', 2, 'nav_menu_item', '', 0),
(6, 1, '2016-05-10 02:22:28', '2016-05-10 02:22:28', '', 'Our Team', '', 'publish', 'open', 'open', '', 'our-team', '', '', '2016-05-10 02:23:59', '2016-05-10 02:23:59', '', 0, 'http://localhost/kambingpintar/?p=6', 3, 'nav_menu_item', '', 0),
(7, 1, '2016-05-10 02:22:28', '2016-05-10 02:22:28', '', 'News', '', 'publish', 'open', 'open', '', 'news', '', '', '2016-05-10 02:23:59', '2016-05-10 02:23:59', '', 0, 'http://localhost/kambingpintar/?p=7', 4, 'nav_menu_item', '', 0),
(8, 1, '2016-05-10 02:23:59', '2016-05-10 02:23:59', '', 'Our Services', '', 'publish', 'open', 'open', '', 'our-services', '', '', '2016-05-10 02:23:59', '2016-05-10 02:23:59', '', 0, 'http://localhost/kambingpintar/?p=8', 1, 'nav_menu_item', '', 0),
(9, 1, '2016-05-10 02:24:34', '2016-05-10 02:24:34', '', 'WhatsApp-Image-20160510', '', 'inherit', 'open', 'open', '', 'whatsapp-image-20160510', '', '', '2016-05-10 02:24:34', '2016-05-10 02:24:34', '', 0, 'http://localhost/kambingpintar/wp-content/uploads/2016/05/WhatsApp-Image-20160510.jpg', 0, 'attachment', 'image/jpeg', 0),
(10, 1, '2016-05-10 02:42:16', '2016-05-10 02:42:16', '', 'WhatsApp-Image-20160510', '', 'inherit', 'open', 'open', '', 'whatsapp-image-20160510-2', '', '', '2016-05-10 02:42:16', '2016-05-10 02:42:16', '', 0, 'http://localhost/kambingpintar/wp-content/uploads/2016/05/WhatsApp-Image-20160510.png', 0, 'attachment', 'image/png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `kpdb_terms`
--

CREATE TABLE IF NOT EXISTS `kpdb_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `kpdb_terms`
--

INSERT INTO `kpdb_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'MAIN', 'main', 0);

-- --------------------------------------------------------

--
-- Table structure for table `kpdb_term_relationships`
--

CREATE TABLE IF NOT EXISTS `kpdb_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kpdb_term_relationships`
--

INSERT INTO `kpdb_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(5, 2, 0),
(6, 2, 0),
(7, 2, 0),
(8, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `kpdb_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `kpdb_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `kpdb_term_taxonomy`
--

INSERT INTO `kpdb_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `kpdb_usermeta`
--

CREATE TABLE IF NOT EXISTS `kpdb_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `kpdb_usermeta`
--

INSERT INTO `kpdb_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'kpdb_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'kpdb_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp360_locks,wp390_widgets'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:1:{s:64:"3043de8da3f479a909d835bf2cf640c9495d65843cc7f00d21c0adf261f2a09f";a:4:{s:10:"expiration";i:1463016312;s:2:"ip";s:3:"::1";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36";s:5:"login";i:1462843512;}}'),
(15, 1, 'kpdb_dashboard_quick_press_last_post_id', '3'),
(16, 1, 'kpdb_user-settings', 'libraryContent=upload'),
(17, 1, 'kpdb_user-settings-time', '1462846124'),
(18, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";i:2;s:15:"add-post_format";}');

-- --------------------------------------------------------

--
-- Table structure for table `kpdb_users`
--

CREATE TABLE IF NOT EXISTS `kpdb_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `kpdb_users`
--

INSERT INTO `kpdb_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BjAEEZkOLRR4vQLHO6nJdHLm1EqSyb1', 'admin', 'rnugraha305@gmail.com', '', '2016-05-10 01:24:37', '', 0, 'admin');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
