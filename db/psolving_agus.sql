-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 09, 2018 at 05:47 AM
-- Server version: 5.6.32-78.1-log
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `psolving_agus`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-10-04 09:59:07', '2017-10-04 09:59:07', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_es_deliverreport`
--

CREATE TABLE IF NOT EXISTS `wp_es_deliverreport` (
  `es_deliver_id` int(10) unsigned NOT NULL,
  `es_deliver_sentguid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `es_deliver_emailid` int(10) unsigned NOT NULL,
  `es_deliver_emailmail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `es_deliver_sentdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `es_deliver_status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `es_deliver_viewdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `es_deliver_sentstatus` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Sent',
  `es_deliver_senttype` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Immediately'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_es_emaillist`
--

CREATE TABLE IF NOT EXISTS `wp_es_emaillist` (
  `es_email_id` int(10) unsigned NOT NULL,
  `es_email_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `es_email_mail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `es_email_status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Unconfirmed',
  `es_email_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `es_email_viewcount` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `es_email_group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Public',
  `es_email_guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_es_emaillist`
--

INSERT INTO `wp_es_emaillist` (`es_email_id`, `es_email_name`, `es_email_mail`, `es_email_status`, `es_email_created`, `es_email_viewcount`, `es_email_group`, `es_email_guid`) VALUES
(1, 'Admin', 'me@ahmedelsayed.me', 'Confirmed', '2017-10-05 19:56:08', '0', 'Public', 'lxkqbs-biywrc-wbxgtl-imvhpk-ymtabi'),
(2, 'Example', 'a.example@example.com', 'Confirmed', '2017-10-05 19:56:08', '0', 'Public', 'cepxis-ztodhr-jguxqi-byfnrx-ltgoes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_es_notification`
--

CREATE TABLE IF NOT EXISTS `wp_es_notification` (
  `es_note_id` int(10) unsigned NOT NULL,
  `es_note_cat` text COLLATE utf8mb4_unicode_ci,
  `es_note_group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `es_note_templ` int(10) unsigned NOT NULL,
  `es_note_status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Enable'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_es_notification`
--

INSERT INTO `wp_es_notification` (`es_note_id`, `es_note_cat`, `es_note_group`, `es_note_templ`, `es_note_status`) VALUES
(1, ' ##Uncategorized## -- ##Uncategorized## ', 'Public', 1, 'Enable');

-- --------------------------------------------------------

--
-- Table structure for table `wp_es_sentdetails`
--

CREATE TABLE IF NOT EXISTS `wp_es_sentdetails` (
  `es_sent_id` int(10) unsigned NOT NULL,
  `es_sent_guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `es_sent_qstring` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `es_sent_source` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `es_sent_starttime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `es_sent_endtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `es_sent_count` int(10) unsigned NOT NULL,
  `es_sent_preview` text COLLATE utf8mb4_unicode_ci,
  `es_sent_status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Sent',
  `es_sent_type` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Immediately',
  `es_sent_subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_es_templatetable`
--

CREATE TABLE IF NOT EXISTS `wp_es_templatetable` (
  `es_templ_id` int(10) unsigned NOT NULL,
  `es_templ_heading` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `es_templ_body` text COLLATE utf8mb4_unicode_ci,
  `es_templ_status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Published',
  `es_email_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Newsletter',
  `es_templ_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_es_templatetable`
--

INSERT INTO `wp_es_templatetable` (`es_templ_id`, `es_templ_heading`, `es_templ_body`, `es_templ_status`, `es_email_type`, `es_templ_slug`) VALUES
(1, 'New Post Published - ###POSTTITLE###', 'Hello ###NAME###,\r\n\r\nWe have published a new blog article on our website : ###POSTTITLE###\r\n###POSTIMAGE###\r\n\r\nYou can view it from this link : ###POSTLINK###\r\n\r\nThanks & Regards,\r\nAdmin\r\n\r\nYou received this email because in the past you have provided us your email address : ###EMAIL### to receive notifications when new updates are posted.', 'Published', 'Post Notification', NULL),
(2, 'Welcome To Email Subscribers', '<strong style="color: #990000">What can you achieve using Email Subscribers?</strong><p>Add subscription forms on website, send HTML newsletters & automatically notify subscribers about new blog posts once it is published. You can also Import or Export subscribers from any list to Email Subscribers.</p> <strong style="color: #990000">Plugin Features</strong><ol> <li>Send notification emails to subscribers when new blog posts are published.</li> <li>Subscribe form available with 3 options to setup.</li> <li>Double Opt-In and Single Opt-In support.</li> <li>Email notification to admin when a new user signs up (Optional).</li> <li>Automatic welcome email to subscriber.</li> <li>Auto add unsubscribe link in the email.</li> <li>Import/Export subscriber emails to migrate to any lists.</li> <li>Default WordPress editor to compose emails.</li> </ol> <strong>Thanks & Regards,</strong><br>Admin', 'Published', 'Newsletter', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB AUTO_INCREMENT=1988 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://agusfire.com', 'yes'),
(2, 'home', 'http://agusfire.com', 'yes'),
(3, 'blogname', 'AGUS', 'yes'),
(4, 'blogdescription', 'AGUS', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'me@ahmedelsayed.me', 'yes'),
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
(18, 'default_category', '7', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:10:{i:0;s:21:"polylang/polylang.php";i:1;s:30:"advanced-custom-fields/acf.php";i:2;s:29:"cf7-polylang/cf7-polylang.php";i:3;s:36:"contact-form-7/wp-contact-form-7.php";i:4;s:43:"custom-post-type-ui/custom-post-type-ui.php";i:5;s:39:"email-subscribers/email-subscribers.php";i:6;s:9:"hello.php";i:7;s:52:"polylang-theme-strings/mw-polylang-theme-strings.php";i:8;s:61:"theme-translation-for-polylang/polylang-theme-translation.php";i:9;s:37:"wpml-to-polylang/wpml-to-polylang.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:5:{i:0;s:74:"/home1/psolving/public_html/agusfire/wp-content/themes/agus/single-new.php";i:2;s:73:"/home1/psolving/public_html/agusfire/wp-content/themes/agus/translate.php";i:3;s:69:"/home1/psolving/public_html/agusfire/wp-content/themes/agus/style.css";i:4;s:84:"C:\\xampp\\htdocs\\psolvingegypt\\agus/wp-content/plugins/display-latest-tweets/init.php";i:5;s:0:"";}', 'no'),
(40, 'template', 'agus', 'yes'),
(41, 'stylesheet', 'agus', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:2:{s:52:"polylang-theme-strings/mw-polylang-theme-strings.php";a:2:{i:0;s:25:"MW_Polylang_Theme_Strings";i:1;s:9:"Uninstall";}s:17:"weglot/weglot.php";a:2:{i:0;s:8:"Freemius";i:1;s:22:"_uninstall_plugin_hook";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '41', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:7:{s:18:"orphaned_widgets_1";a:1:{i:0;s:10:"polylang-2";}s:19:"wp_inactive_widgets";a:6:{i:0;s:10:"archives-2";i:1;s:6:"meta-2";i:2;s:8:"search-2";i:3;s:12:"categories-2";i:4;s:14:"recent-posts-2";i:5;s:17:"recent-comments-2";}s:16:"footer-sidebar-1";a:1:{i:0;s:19:"email-subscribers-2";}s:16:"footer-sidebar-2";a:2:{i:0;s:10:"nav_menu-2";i:1;s:10:"nav_menu-3";}s:6:"header";a:1:{i:0;s:10:"polylang-3";}s:9:"sidebar-1";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_nav_menu', 'a:3:{i:2;a:2:{s:8:"nav_menu";i:28;s:8:"pll_lang";s:2:"ar";}i:3;a:2:{s:8:"nav_menu";i:15;s:8:"pll_lang";s:2:"en";}s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'cron', 'a:5:{i:1515491951;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1515492092;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1515512490;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1515527748;a:1:{s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(109, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1507195827;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(119, 'can_compress_scripts', '1', 'no'),
(123, 'recently_activated', 'a:0:{}', 'yes'),
(142, 'current_theme', 'Twenty Fifteen/agus', 'yes'),
(143, 'theme_mods_agus', 'a:4:{i:0;b:0;s:18:"custom_css_post_id";i:-1;s:19:"ot_set_google_fonts";a:0:{}s:18:"nav_menu_locations";a:2:{s:14:"bootstrap-menu";i:13;s:11:"footer_menu";i:15;}}', 'yes'),
(144, 'theme_switched', '', 'yes'),
(145, 'option_tree_settings', 'a:3:{s:8:"sections";a:11:{i:0;a:2:{s:5:"title";s:7:"General";s:2:"id";s:7:"general";}i:1;a:2:{s:5:"title";s:6:"Slider";s:2:"id";s:6:"slider";}i:2;a:2:{s:5:"title";s:5:"About";s:2:"id";s:5:"about";}i:3;a:2:{s:5:"title";s:6:"Banner";s:2:"id";s:6:"banner";}i:4;a:2:{s:5:"title";s:8:"Progress";s:2:"id";s:8:"progress";}i:5;a:2:{s:5:"title";s:5:"video";s:2:"id";s:5:"video";}i:6;a:2:{s:5:"title";s:14:"What We Offers";s:2:"id";s:14:"what_we_offers";}i:7;a:2:{s:5:"title";s:6:"Footer";s:2:"id";s:6:"footer";}i:8;a:2:{s:5:"title";s:4:"Team";s:2:"id";s:4:"team";}i:9;a:2:{s:5:"title";s:4:"News";s:2:"id";s:4:"news";}i:10;a:2:{s:5:"title";s:10:"Contact Us";s:2:"id";s:10:"contact_us";}}s:8:"settings";a:35:{i:0;a:13:{s:5:"label";s:4:"Logo";s:2:"id";s:4:"logo";s:4:"type";s:6:"upload";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";s:7:"section";s:7:"general";}i:1;a:13:{s:5:"label";s:7:"Favicon";s:2:"id";s:7:"favicon";s:4:"type";s:6:"upload";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";s:7:"section";s:7:"general";}i:2;a:13:{s:5:"label";s:8:"Facebook";s:2:"id";s:8:"facebook";s:4:"type";s:4:"text";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";s:7:"section";s:7:"general";}i:3;a:13:{s:5:"label";s:7:"Twitter";s:2:"id";s:7:"twitter";s:4:"type";s:4:"text";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";s:7:"section";s:7:"general";}i:4;a:13:{s:5:"label";s:6:"Google";s:2:"id";s:6:"google";s:4:"type";s:4:"text";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";s:7:"section";s:7:"general";}i:5;a:13:{s:5:"label";s:9:"Instagram";s:2:"id";s:9:"instagram";s:4:"type";s:4:"text";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";s:7:"section";s:7:"general";}i:6;a:13:{s:5:"label";s:5:"Phone";s:2:"id";s:4:"call";s:4:"type";s:4:"text";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";s:7:"section";s:7:"general";}i:7;a:13:{s:5:"label";s:5:"Email";s:2:"id";s:5:"email";s:4:"type";s:4:"text";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";s:7:"section";s:7:"general";}i:8;a:13:{s:5:"label";s:6:"Banner";s:2:"id";s:6:"banner";s:4:"type";s:6:"slider";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";s:7:"section";s:6:"slider";}i:9;a:13:{s:5:"label";s:5:"Title";s:2:"id";s:11:"title_about";s:4:"type";s:4:"text";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";s:7:"section";s:5:"about";}i:10;a:13:{s:5:"label";s:11:"Description";s:2:"id";s:17:"description_about";s:4:"type";s:8:"textarea";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";s:7:"section";s:5:"about";}i:11;a:14:{s:5:"label";s:4:"Item";s:2:"id";s:10:"item_about";s:4:"type";s:9:"list-item";s:4:"desc";s:0:"";s:8:"settings";a:2:{i:0;a:12:{s:5:"label";s:5:"Icons";s:2:"id";s:5:"icons";s:4:"type";s:4:"text";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";}i:1;a:12:{s:5:"label";s:11:"Description";s:2:"id";s:11:"description";s:4:"type";s:8:"textarea";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";}}s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";s:7:"section";s:5:"about";}i:12;a:13:{s:5:"label";s:5:"Title";s:2:"id";s:10:"title_type";s:4:"type";s:4:"text";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";s:7:"section";s:6:"banner";}i:13;a:13:{s:5:"label";s:11:"Description";s:2:"id";s:16:"description_type";s:4:"type";s:8:"textarea";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";s:7:"section";s:6:"banner";}i:14;a:13:{s:5:"label";s:13:"Title contect";s:2:"id";s:7:"title_c";s:4:"type";s:4:"text";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";s:7:"section";s:6:"banner";}i:15;a:13:{s:5:"label";s:5:"Phone";s:2:"id";s:7:"phone_c";s:4:"type";s:4:"text";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";s:7:"section";s:6:"banner";}i:16;a:13:{s:5:"label";s:6:"E-mail";s:2:"id";s:7:"email_c";s:4:"type";s:4:"text";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";s:7:"section";s:6:"banner";}i:17;a:14:{s:5:"label";s:8:"Progress";s:2:"id";s:8:"progress";s:4:"type";s:9:"list-item";s:4:"desc";s:0:"";s:8:"settings";a:1:{i:0;a:12:{s:5:"label";s:6:"Number";s:2:"id";s:12:"nub_progress";s:4:"type";s:4:"text";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";}}s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";s:7:"section";s:8:"progress";}i:18;a:13:{s:5:"label";s:11:"Title Video";s:2:"id";s:11:"title_video";s:4:"type";s:4:"text";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";s:7:"section";s:5:"video";}i:19;a:13:{s:5:"label";s:17:"Description Video";s:2:"id";s:17:"description_video";s:4:"type";s:8:"textarea";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";s:7:"section";s:5:"video";}i:20;a:13:{s:5:"label";s:11:"Image Video";s:2:"id";s:9:"img_video";s:4:"type";s:6:"upload";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";s:7:"section";s:5:"video";}i:21;a:13:{s:5:"label";s:5:"Video";s:2:"id";s:11:"video_video";s:4:"type";s:6:"upload";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";s:7:"section";s:5:"video";}i:22;a:13:{s:5:"label";s:5:"Title";s:2:"id";s:12:"title_offers";s:4:"type";s:4:"text";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";s:7:"section";s:14:"what_we_offers";}i:23;a:13:{s:5:"label";s:11:"Description";s:2:"id";s:18:"description_offers";s:4:"type";s:8:"textarea";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";s:7:"section";s:14:"what_we_offers";}i:24;a:14:{s:5:"label";s:11:"Item offers";s:2:"id";s:6:"offers";s:4:"type";s:9:"list-item";s:4:"desc";s:0:"";s:8:"settings";a:3:{i:0;a:12:{s:5:"label";s:5:"Icons";s:2:"id";s:5:"icons";s:4:"type";s:4:"text";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";}i:1;a:12:{s:5:"label";s:11:"Description";s:2:"id";s:17:"description_offer";s:4:"type";s:8:"textarea";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";}i:2;a:12:{s:5:"label";s:4:"Link";s:2:"id";s:10:"link_offer";s:4:"type";s:4:"text";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";}}s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";s:7:"section";s:14:"what_we_offers";}i:25;a:13:{s:5:"label";s:18:"Description Footer";s:2:"id";s:18:"description_footer";s:4:"type";s:8:"textarea";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";s:7:"section";s:6:"footer";}i:26;a:13:{s:5:"label";s:7:"Address";s:2:"id";s:7:"address";s:4:"type";s:4:"text";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";s:7:"section";s:6:"footer";}i:27;a:13:{s:5:"label";s:5:"Phone";s:2:"id";s:12:"phone_footer";s:4:"type";s:4:"text";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";s:7:"section";s:6:"footer";}i:28;a:13:{s:5:"label";s:6:"E-mail";s:2:"id";s:6:"e_mail";s:4:"type";s:4:"text";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";s:7:"section";s:6:"footer";}i:29;a:13:{s:5:"label";s:10:"Title Team";s:2:"id";s:10:"title_team";s:4:"type";s:4:"text";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";s:7:"section";s:4:"team";}i:30;a:13:{s:5:"label";s:16:"Description Team";s:2:"id";s:16:"description_team";s:4:"type";s:8:"textarea";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";s:7:"section";s:4:"team";}i:31;a:13:{s:5:"label";s:10:"Title News";s:2:"id";s:10:"title_news";s:4:"type";s:4:"text";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";s:7:"section";s:4:"news";}i:32;a:13:{s:5:"label";s:16:"Description News";s:2:"id";s:16:"description_news";s:4:"type";s:8:"textarea";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";s:7:"section";s:4:"news";}i:33;a:13:{s:5:"label";s:5:"Title";s:2:"id";s:10:"title_cont";s:4:"type";s:4:"text";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";s:7:"section";s:10:"contact_us";}i:34;a:13:{s:5:"label";s:11:"Description";s:2:"id";s:16:"description_cont";s:4:"type";s:8:"textarea";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";s:7:"section";s:10:"contact_us";}}s:15:"contextual_help";a:1:{s:7:"sidebar";s:0:"";}}', 'yes'),
(146, 'option_tree', 'a:35:{s:4:"logo";s:55:"http://agusfire.com/wp-content/uploads/2017/10/agus.png";s:7:"favicon";s:55:"http://agusfire.com/wp-content/uploads/2017/10/agus.png";s:8:"facebook";s:52:"https://www.facebook.com/AGUS-Fire-124879804901910/ ";s:7:"twitter";s:55:"https://twitter.com/EgAGUSfire http://www.agusfire.com/";s:6:"google";s:1:"#";s:9:"instagram";s:38:"https://www.instagram.com/AGUSfireEg/ ";s:4:"call";s:28:"01000861215   -  01000774834";s:5:"email";s:18:" info@agusfire.com";s:6:"banner";a:4:{i:0;a:4:{s:5:"title";s:47:"Residential, Business & Event Security Services";s:5:"image";s:54:"http://agusfire.com/wp-content/uploads/2017/10/1-4.jpg";s:4:"link";s:29:"http://agusfire.com/services/";s:11:"description";s:132:"We are approved contractor of Security Guard services, providing quality security services to many organizations & private companies";}i:1;a:4:{s:5:"title";s:47:"Residential, Business & Event Security Services";s:5:"image";s:54:"http://agusfire.com/wp-content/uploads/2017/10/2-3.jpg";s:4:"link";s:29:"http://agusfire.com/services/";s:11:"description";s:132:"We are approved contractor of Security Guard services, providing quality security services to many organizations & private companies";}i:2;a:4:{s:5:"title";s:47:"Residential, Business & Event Security Services";s:5:"image";s:54:"http://agusfire.com/wp-content/uploads/2017/10/3-1.jpg";s:4:"link";s:29:"http://agusfire.com/services/";s:11:"description";s:132:"We are approved contractor of Security Guard services, providing quality security services to many organizations & private companies";}i:3;a:4:{s:5:"title";s:47:"Residential, Business & Event Security Services";s:5:"image";s:54:"http://agusfire.com/wp-content/uploads/2017/10/4-1.jpg";s:4:"link";s:29:"http://agusfire.com/services/";s:11:"description";s:132:"We are approved contractor of Security Guard services, providing quality security services to many organizations & private companies";}}s:11:"title_about";s:32:"Welcome to Guard Agency Services";s:17:"description_about";s:77:"<p>Elit sed aute dou eiusmod tempor incididunt labore dolore magna aliqua</p>";s:10:"item_about";a:3:{i:0;a:3:{s:5:"title";s:24:"SOLUTIONS YOU CAN DEPEND";s:5:"icons";s:68:"<i class="b-advantages-3__icon color-primary flaticon-unlocked"></i>";s:11:"description";s:144:"Consectetur adipisicing elit sed aute ou eiusmod tempor incididunt ulabore et dolore magna aliqua utmn lore enim ad minim veniam quis nostrud.\r\n";}i:1;a:3:{s:5:"title";s:27:"TALENTED & TRAINED OFFICERS";s:5:"icons";s:68:"<i class="b-advantages-3__icon color-primary flaticon-umbrella"></i>";s:11:"description";s:144:"Consectetur adipisicing elit sed aute ou eiusmod tempor incididunt ulabore et dolore magna aliqua utmn lore enim ad minim veniam quis nostrud.\r\n";}i:2;a:3:{s:5:"title";s:25:"WEGUARD SECURITY SERVICES";s:5:"icons";s:64:"<i class="b-advantages-3__icon color-primary flaticon-cctv"></i>";s:11:"description";s:144:"Consectetur adipisicing elit sed aute ou eiusmod tempor incididunt ulabore et dolore magna aliqua utmn lore enim ad minim veniam quis nostrud.\r\n";}}s:10:"title_type";s:67:"We Provide Security Services That Matches Your Needs & Your Budget!";s:16:"description_type";s:167:"<p>Eiusmod tempor incididunt sed labore dolore magna aliqua enim tempore sed venia Eiusmod tempor incididunt sed labore dolore magna aliqua enim tempore sed venia</p>";s:7:"title_c";s:34:"CONTACT US FOR A COMPETITIVE PRICE";s:7:"phone_c";s:12:"234-567-8900";s:7:"email_c";s:21:"quote@guardagency.com";s:8:"progress";a:3:{i:0;a:2:{s:5:"title";s:14:"PEOPLE GUARDED";s:12:"nub_progress";s:4:"1000";}i:1;a:2:{s:5:"title";s:15:"HOMES PROTECTED";s:12:"nub_progress";s:4:"2000";}i:2;a:2:{s:5:"title";s:14:"EVENTS COVERED";s:12:"nub_progress";s:4:"3000";}}s:11:"title_video";s:48:"We are Efficient & Cost Effective Company having";s:17:"description_video";s:586:"<p>More than five decades in industry gives us the power to perform every day and every time.</p>\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed dol eiusmod tempor incididunt dolor magna aliqua enim ad minim veniam quis nostrud exercitation ullamco aboris nisi aliquip commod conseque aute irure dolor in reprehe derit in voluptate velit esvse sed ipsum dolor tempod cillum.</p>\r\n<p>Dolore eu fugiat nulla pariatur enimadm nostrud exercitation ullamco laboris nisi ut aliquip exea cons enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip.</p>";s:9:"img_video";s:59:"http://agusfire.com/wp-content/uploads/2017/10/poster-1.jpg";s:11:"video_video";s:52:"http://agusfire.com/wp-content/uploads/2017/10/1.mp4";s:12:"title_offers";s:14:"What We Offers";s:18:"description_offers";s:107:"<div class="ui-subtitle-block">Elit sed aute dou eiusmod tempor incididunt labore dolore magna aliqua</div>";s:6:"offers";a:6:{i:0;a:4:{s:5:"title";s:15:"RISK ASSESSMENT";s:5:"icons";s:54:"<i class="b-advantages-2__icon flaticon-safe-box"></i>";s:17:"description_offer";s:134:"Adipisicing elit sed auteh eiusmod tempor ut labore dolore magna aliqua renim adim minim veniam quis nostrud baorem ipsum dolor sit.\r\n";s:10:"link_offer";s:29:"http://agusfire.com/services/";}i:1;a:4:{s:5:"title";s:12:"CCTV SYSTEMS";s:5:"icons";s:51:"<i class="b-advantages-2__icon flaticon-video"></i>";s:17:"description_offer";s:134:"Adipisicing elit sed auteh eiusmod tempor ut labore dolore magna aliqua renim adim minim veniam quis nostrud baorem ipsum dolor sit.\r\n";s:10:"link_offer";s:29:"http://agusfire.com/services/";}i:2;a:4:{s:5:"title";s:12:"WEB SECURITY";s:5:"icons";s:54:"<i class="b-advantages-2__icon flaticon-internet"></i>";s:17:"description_offer";s:134:"Adipisicing elit sed auteh eiusmod tempor ut labore dolore magna aliqua renim adim minim veniam quis nostrud baorem ipsum dolor sit.\r\n";s:10:"link_offer";s:29:"http://agusfire.com/services/";}i:3;a:4:{s:5:"title";s:17:"ESCORT MONITORING";s:5:"icons";s:49:"<i class="b-advantages-2__icon flaticon-cab"></i>";s:17:"description_offer";s:134:"Adipisicing elit sed auteh eiusmod tempor ut labore dolore magna aliqua renim adim minim veniam quis nostrud baorem ipsum dolor sit.\r\n";s:10:"link_offer";s:29:"http://agusfire.com/services/";}i:4;a:4:{s:5:"title";s:15:"LIFE PROTECTION";s:5:"icons";s:54:"<i class="b-advantages-2__icon flaticon-lifebuoy"></i>";s:17:"description_offer";s:134:"Adipisicing elit sed auteh eiusmod tempor ut labore dolore magna aliqua renim adim minim veniam quis nostrud baorem ipsum dolor sit.\r\n";s:10:"link_offer";s:29:"http://agusfire.com/services/";}i:5;a:4:{s:5:"title";s:15:"REMOTE GUARDING";s:5:"icons";s:56:"<i class="b-advantages-2__icon flaticon-technology"></i>";s:17:"description_offer";s:134:"Adipisicing elit sed auteh eiusmod tempor ut labore dolore magna aliqua renim adim minim veniam quis nostrud baorem ipsum dolor sit.\r\n";s:10:"link_offer";s:29:"http://agusfire.com/services/";}}s:18:"description_footer";s:262:"<div class="footer-form__info">\r\n<p>Enim ad minim veniam, quis nostrud exercit ation ulamco laboris nisi ut aliquip ex ea comodo consequat. Duis aute irure dolor in reprehenderit voluptate exrcitation rure dolor reprehenderit in voluptate velit esse.</p>\r\n</div>";s:7:"address";s:104:"Address Company 31 Arish Street - Haram - Giza <br>Address Factory Industrial Area Safa Abozaal 6 pieces";s:12:"phone_footer";s:13:"P: 0235826876";s:6:"e_mail";s:18:"E: info@domain.com";s:10:"title_team";s:19:"Protected Customers";s:16:"description_team";s:107:"<div class="ui-subtitle-block">Elit sed aute dou eiusmod tempor incididunt labore dolore magna aliqua</div>";s:10:"title_news";s:19:"Latest Company News";s:16:"description_news";s:77:"<p>Elit sed aute dou eiusmod tempor incididunt labore dolore magna aliqua</p>";s:10:"title_cont";s:96:"Ask a Quote<span class="b-form-request__title-emphasis"> - Guard Agency Security Services</span>";s:16:"description_cont";s:183:"<p>If you would like to inquire about a quote for Security Services please fill out the form below.</p>\r\n<p>We will respond with 2h hours OR call us at<strong> 0235826876</strong></p>";}', 'yes'),
(147, 'ot_media_post_ID', '4', 'yes'),
(168, 'polylang', 'a:14:{s:7:"browser";i:1;s:7:"rewrite";i:1;s:12:"hide_default";i:1;s:10:"force_lang";i:1;s:13:"redirect_lang";i:0;s:13:"media_support";i:1;s:9:"uninstall";i:0;s:4:"sync";a:0:{}s:10:"post_types";a:6:{i:0;s:18:"wpcf7_contact_form";i:1;s:4:"team";i:2;s:3:"new";i:3;s:7:"gallery";i:4;s:9:"services2";i:5;s:8:"projects";}s:10:"taxonomies";a:0:{}s:7:"domains";a:0:{}s:7:"version";s:5:"2.2.3";s:12:"default_lang";s:2:"en";s:9:"nav_menus";a:1:{s:4:"agus";a:2:{s:14:"bootstrap-menu";a:2:{s:2:"ar";i:14;s:2:"en";i:13;}s:11:"footer_menu";a:2:{s:2:"ar";i:28;s:2:"en";i:15;}}}}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(169, 'polylang_wpml_strings', 'a:101:{i:0;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:8:"facebook";s:6:"string";s:1:"#";s:9:"multiline";b:1;s:3:"icl";b:1;}i:1;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:7:"twitter";s:6:"string";s:1:"#";s:9:"multiline";b:1;s:3:"icl";b:1;}i:2;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:6:"google";s:6:"string";s:1:"#";s:9:"multiline";b:1;s:3:"icl";b:1;}i:3;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:9:"instagram";s:6:"string";s:1:"#";s:9:"multiline";b:1;s:3:"icl";b:1;}i:4;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:4:"call";s:6:"string";s:1:"#";s:9:"multiline";b:1;s:3:"icl";b:1;}i:5;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:5:"email";s:6:"string";s:1:"#";s:9:"multiline";b:1;s:3:"icl";b:1;}i:6;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:4:"call";s:6:"string";s:13:"0102983745654";s:9:"multiline";b:1;s:3:"icl";b:1;}i:7;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:5:"email";s:6:"string";s:16:" info@domain.com";s:9:"multiline";b:1;s:3:"icl";b:1;}i:8;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:14:"banner_title_0";s:6:"string";s:47:"Residential, Business & Event Security Services";s:9:"multiline";b:1;s:3:"icl";b:1;}i:9;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:13:"banner_link_0";s:6:"string";s:1:"#";s:9:"multiline";b:1;s:3:"icl";b:1;}i:10;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:20:"banner_description_0";s:6:"string";s:132:"We are approved contractor of Security Guard services, providing quality security services to many organizations & private companies";s:9:"multiline";b:1;s:3:"icl";b:1;}i:11;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:14:"banner_title_1";s:6:"string";s:47:"Residential, Business & Event Security Services";s:9:"multiline";b:1;s:3:"icl";b:1;}i:12;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:13:"banner_link_1";s:6:"string";s:1:"#";s:9:"multiline";b:1;s:3:"icl";b:1;}i:13;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:20:"banner_description_1";s:6:"string";s:132:"We are approved contractor of Security Guard services, providing quality security services to many organizations & private companies";s:9:"multiline";b:1;s:3:"icl";b:1;}i:14;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:11:"title_about";s:6:"string";s:32:"Welcome to Guard Agency Services";s:9:"multiline";b:1;s:3:"icl";b:1;}i:15;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:17:"description_about";s:6:"string";s:142:"Consectetur adipisicing elit sed aute ou eiusmod tempor incididunt ulabore et dolore magna aliqua utmn lore enim ad minim veniam quis nostrud.";s:9:"multiline";b:1;s:3:"icl";b:1;}i:16;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:18:"item_about_title_0";s:6:"string";s:24:"SOLUTIONS YOU CAN DEPEND";s:9:"multiline";b:1;s:3:"icl";b:1;}i:19;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:17:"description_about";s:6:"string";s:70:"Elit sed aute dou eiusmod tempor incididunt labore dolore magna aliqua";s:9:"multiline";b:1;s:3:"icl";b:1;}i:20;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:18:"item_about_icons_0";s:6:"string";s:68:"<i class="b-advantages-3__icon color-primary flaticon-unlocked"></i>";s:9:"multiline";b:1;s:3:"icl";b:1;}i:22;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:18:"item_about_title_1";s:6:"string";s:27:"TALENTED & TRAINED OFFICERS";s:9:"multiline";b:1;s:3:"icl";b:1;}i:23;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:18:"item_about_icons_1";s:6:"string";s:68:"<i class="b-advantages-3__icon color-primary flaticon-umbrella"></i>";s:9:"multiline";b:1;s:3:"icl";b:1;}i:25;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:18:"item_about_title_2";s:6:"string";s:25:"WEGUARD SECURITY SERVICES";s:9:"multiline";b:1;s:3:"icl";b:1;}i:26;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:18:"item_about_icons_2";s:6:"string";s:64:"<i class="b-advantages-3__icon color-primary flaticon-cctv"></i>";s:9:"multiline";b:1;s:3:"icl";b:1;}i:28;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:17:"description_about";s:6:"string";s:77:"<p>Elit sed aute dou eiusmod tempor incididunt labore dolore magna aliqua</p>";s:9:"multiline";b:1;s:3:"icl";b:1;}i:29;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:24:"item_about_description_0";s:6:"string";s:144:"Consectetur adipisicing elit sed aute ou eiusmod tempor incididunt ulabore et dolore magna aliqua utmn lore enim ad minim veniam quis nostrud.\r\n";s:9:"multiline";b:1;s:3:"icl";b:1;}i:30;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:24:"item_about_description_1";s:6:"string";s:144:"Consectetur adipisicing elit sed aute ou eiusmod tempor incididunt ulabore et dolore magna aliqua utmn lore enim ad minim veniam quis nostrud.\r\n";s:9:"multiline";b:1;s:3:"icl";b:1;}i:31;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:24:"item_about_description_2";s:6:"string";s:144:"Consectetur adipisicing elit sed aute ou eiusmod tempor incididunt ulabore et dolore magna aliqua utmn lore enim ad minim veniam quis nostrud.\r\n";s:9:"multiline";b:1;s:3:"icl";b:1;}i:32;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:10:"title_type";s:6:"string";s:67:"We Provide Security Services That Matches Your Needs & Your Budget!";s:9:"multiline";b:1;s:3:"icl";b:1;}i:33;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:16:"description_type";s:6:"string";s:228:"<div class="col-sm-7">\r\n<section class="b-type-e">\r\n<div class="b-type-e__text">\r\n<p>Eiusmod tempor incididunt sed labore dolore magna aliqua enim tempore sed venia</p>\r\n</div>\r\n</section>\r\n</div>\r\n<div class="col-sm-5"> </div>";s:9:"multiline";b:1;s:3:"icl";b:1;}i:34;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:7:"phone_c";s:6:"string";s:12:"234-567-8900";s:9:"multiline";b:1;s:3:"icl";b:1;}i:36;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:7:"title_c";s:6:"string";s:34:"CONTACT US FOR A COMPETITIVE PRICE";s:9:"multiline";b:1;s:3:"icl";b:1;}i:37;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:7:"email_c";s:6:"string";s:21:"quote@guardagency.com";s:9:"multiline";b:1;s:3:"icl";b:1;}i:38;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:16:"description_type";s:6:"string";s:162:"\r\nEiusmod tempor incididunt sed labore dolore magna aliqua enim tempore sed venia Eiusmod tempor incididunt sed labore dolore magna aliqua enim tempore sed venia";s:9:"multiline";b:1;s:3:"icl";b:1;}i:39;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:16:"description_type";s:6:"string";s:160:"Eiusmod tempor incididunt sed labore dolore magna aliqua enim tempore sed venia Eiusmod tempor incididunt sed labore dolore magna aliqua enim tempore sed venia";s:9:"multiline";b:1;s:3:"icl";b:1;}i:40;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:16:"progress_title_0";s:6:"string";s:14:"PEOPLE GUARDED";s:9:"multiline";b:1;s:3:"icl";b:1;}i:41;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:23:"progress_nub_progress_0";s:6:"string";s:4:"1000";s:9:"multiline";b:1;s:3:"icl";b:1;}i:42;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:16:"progress_title_1";s:6:"string";s:15:"HOMES PROTECTED";s:9:"multiline";b:1;s:3:"icl";b:1;}i:43;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:23:"progress_nub_progress_1";s:6:"string";s:4:"2000";s:9:"multiline";b:1;s:3:"icl";b:1;}i:44;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:16:"progress_title_2";s:6:"string";s:14:"EVENTS COVERED";s:9:"multiline";b:1;s:3:"icl";b:1;}i:45;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:23:"progress_nub_progress_2";s:6:"string";s:4:"3000";s:9:"multiline";b:1;s:3:"icl";b:1;}i:46;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:16:"description_type";s:6:"string";s:167:"<p>Eiusmod tempor incididunt sed labore dolore magna aliqua enim tempore sed venia Eiusmod tempor incididunt sed labore dolore magna aliqua enim tempore sed venia</p>";s:9:"multiline";b:1;s:3:"icl";b:1;}i:47;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:11:"title_video";s:6:"string";s:48:"We are Efficient & Cost Effective Company having";s:9:"multiline";b:1;s:3:"icl";b:1;}i:48;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:17:"description_video";s:6:"string";s:586:"<p>More than five decades in industry gives us the power to perform every day and every time.</p>\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed dol eiusmod tempor incididunt dolor magna aliqua enim ad minim veniam quis nostrud exercitation ullamco aboris nisi aliquip commod conseque aute irure dolor in reprehe derit in voluptate velit esvse sed ipsum dolor tempod cillum.</p>\r\n<p>Dolore eu fugiat nulla pariatur enimadm nostrud exercitation ullamco laboris nisi ut aliquip exea cons enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip.</p>";s:9:"multiline";b:1;s:3:"icl";b:1;}i:49;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:12:"title_offers";s:6:"string";s:14:"What We Offers";s:9:"multiline";b:1;s:3:"icl";b:1;}i:50;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:18:"description_offers";s:6:"string";s:107:"<div class="ui-subtitle-block">Elit sed aute dou eiusmod tempor incididunt labore dolore magna aliqua</div>";s:9:"multiline";b:1;s:3:"icl";b:1;}i:51;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:14:"offers_title_0";s:6:"string";s:15:"RISK ASSESSMENT";s:9:"multiline";b:1;s:3:"icl";b:1;}i:52;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:14:"offers_icons_0";s:6:"string";s:54:"<i class="b-advantages-2__icon flaticon-safe-box"></i>";s:9:"multiline";b:1;s:3:"icl";b:1;}i:53;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:26:"offers_description_offer_0";s:6:"string";s:134:"Adipisicing elit sed auteh eiusmod tempor ut labore dolore magna aliqua renim adim minim veniam quis nostrud baorem ipsum dolor sit.\r\n";s:9:"multiline";b:1;s:3:"icl";b:1;}i:54;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:19:"offers_link_offer_0";s:6:"string";s:1:"#";s:9:"multiline";b:1;s:3:"icl";b:1;}i:55;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:14:"offers_title_1";s:6:"string";s:12:"CCTV SYSTEMS";s:9:"multiline";b:1;s:3:"icl";b:1;}i:56;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:14:"offers_icons_1";s:6:"string";s:51:"<i class="b-advantages-2__icon flaticon-video"></i>";s:9:"multiline";b:1;s:3:"icl";b:1;}i:57;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:26:"offers_description_offer_1";s:6:"string";s:134:"Adipisicing elit sed auteh eiusmod tempor ut labore dolore magna aliqua renim adim minim veniam quis nostrud baorem ipsum dolor sit.\r\n";s:9:"multiline";b:1;s:3:"icl";b:1;}i:58;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:19:"offers_link_offer_1";s:6:"string";s:1:"#";s:9:"multiline";b:1;s:3:"icl";b:1;}i:59;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:14:"offers_title_2";s:6:"string";s:12:"WEB SECURITY";s:9:"multiline";b:1;s:3:"icl";b:1;}i:60;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:14:"offers_icons_2";s:6:"string";s:54:"<i class="b-advantages-2__icon flaticon-internet"></i>";s:9:"multiline";b:1;s:3:"icl";b:1;}i:61;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:26:"offers_description_offer_2";s:6:"string";s:134:"Adipisicing elit sed auteh eiusmod tempor ut labore dolore magna aliqua renim adim minim veniam quis nostrud baorem ipsum dolor sit.\r\n";s:9:"multiline";b:1;s:3:"icl";b:1;}i:62;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:19:"offers_link_offer_2";s:6:"string";s:1:"#";s:9:"multiline";b:1;s:3:"icl";b:1;}i:63;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:14:"offers_title_3";s:6:"string";s:17:"ESCORT MONITORING";s:9:"multiline";b:1;s:3:"icl";b:1;}i:64;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:14:"offers_icons_3";s:6:"string";s:49:"<i class="b-advantages-2__icon flaticon-cab"></i>";s:9:"multiline";b:1;s:3:"icl";b:1;}i:65;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:26:"offers_description_offer_3";s:6:"string";s:134:"Adipisicing elit sed auteh eiusmod tempor ut labore dolore magna aliqua renim adim minim veniam quis nostrud baorem ipsum dolor sit.\r\n";s:9:"multiline";b:1;s:3:"icl";b:1;}i:66;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:19:"offers_link_offer_3";s:6:"string";s:1:"#";s:9:"multiline";b:1;s:3:"icl";b:1;}i:67;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:14:"offers_title_4";s:6:"string";s:15:"LIFE PROTECTION";s:9:"multiline";b:1;s:3:"icl";b:1;}i:68;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:14:"offers_icons_4";s:6:"string";s:54:"<i class="b-advantages-2__icon flaticon-lifebuoy"></i>";s:9:"multiline";b:1;s:3:"icl";b:1;}i:69;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:26:"offers_description_offer_4";s:6:"string";s:134:"Adipisicing elit sed auteh eiusmod tempor ut labore dolore magna aliqua renim adim minim veniam quis nostrud baorem ipsum dolor sit.\r\n";s:9:"multiline";b:1;s:3:"icl";b:1;}i:70;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:19:"offers_link_offer_4";s:6:"string";s:1:"#";s:9:"multiline";b:1;s:3:"icl";b:1;}i:71;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:14:"offers_title_5";s:6:"string";s:15:"REMOTE GUARDING";s:9:"multiline";b:1;s:3:"icl";b:1;}i:72;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:14:"offers_icons_5";s:6:"string";s:56:"<i class="b-advantages-2__icon flaticon-technology"></i>";s:9:"multiline";b:1;s:3:"icl";b:1;}i:73;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:26:"offers_description_offer_5";s:6:"string";s:134:"Adipisicing elit sed auteh eiusmod tempor ut labore dolore magna aliqua renim adim minim veniam quis nostrud baorem ipsum dolor sit.\r\n";s:9:"multiline";b:1;s:3:"icl";b:1;}i:74;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:19:"offers_link_offer_5";s:6:"string";s:1:"#";s:9:"multiline";b:1;s:3:"icl";b:1;}i:75;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:18:"description_footer";s:6:"string";s:262:"<div class="footer-form__info">\r\n<p>Enim ad minim veniam, quis nostrud exercit ation ulamco laboris nisi ut aliquip ex ea comodo consequat. Duis aute irure dolor in reprehenderit voluptate exrcitation rure dolor reprehenderit in voluptate velit esse.</p>\r\n</div>";s:9:"multiline";b:1;s:3:"icl";b:1;}i:76;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:7:"address";s:6:"string";s:44:"HeadOffice: 121 King Street, Melbourne 3000 ";s:9:"multiline";b:1;s:3:"icl";b:1;}i:78;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:6:"e_mail";s:6:"string";s:18:"E: info@domain.com";s:9:"multiline";b:1;s:3:"icl";b:1;}i:79;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:10:"title_team";s:6:"string";s:19:"Protected Customers";s:9:"multiline";b:1;s:3:"icl";b:1;}i:80;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:16:"description_team";s:6:"string";s:107:"<div class="ui-subtitle-block">Elit sed aute dou eiusmod tempor incididunt labore dolore magna aliqua</div>";s:9:"multiline";b:1;s:3:"icl";b:1;}i:81;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:10:"title_news";s:6:"string";s:19:"Latest Company News";s:9:"multiline";b:1;s:3:"icl";b:1;}i:82;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:16:"description_news";s:6:"string";s:77:"<p>Elit sed aute dou eiusmod tempor incididunt labore dolore magna aliqua</p>";s:9:"multiline";b:1;s:3:"icl";b:1;}i:83;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:12:"phone_footer";s:6:"string";s:15:"P: 234 567 8900";s:9:"multiline";b:1;s:3:"icl";b:1;}i:84;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:10:"title_cont";s:6:"string";s:96:"Ask a Quote<span class="b-form-request__title-emphasis"> - Guard Agency Security Services</span>";s:9:"multiline";b:1;s:3:"icl";b:1;}i:85;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:16:"description_cont";s:6:"string";s:185:"<p>If you would like to inquire about a quote for Security Services please fill out the form below.</p>\r\n<p>We will respond with 2h hours OR call us at<strong> 234-567-8900</strong></p>";s:9:"multiline";b:1;s:3:"icl";b:1;}i:86;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:13:"banner_link_0";s:6:"string";s:29:"http://agusfire.com/services/";s:9:"multiline";b:1;s:3:"icl";b:1;}i:87;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:13:"banner_link_1";s:6:"string";s:29:"http://agusfire.com/services/";s:9:"multiline";b:1;s:3:"icl";b:1;}i:88;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:19:"offers_link_offer_0";s:6:"string";s:29:"http://agusfire.com/services/";s:9:"multiline";b:1;s:3:"icl";b:1;}i:89;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:19:"offers_link_offer_1";s:6:"string";s:29:"http://agusfire.com/services/";s:9:"multiline";b:1;s:3:"icl";b:1;}i:90;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:19:"offers_link_offer_2";s:6:"string";s:29:"http://agusfire.com/services/";s:9:"multiline";b:1;s:3:"icl";b:1;}i:91;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:19:"offers_link_offer_3";s:6:"string";s:29:"http://agusfire.com/services/";s:9:"multiline";b:1;s:3:"icl";b:1;}i:92;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:19:"offers_link_offer_4";s:6:"string";s:29:"http://agusfire.com/services/";s:9:"multiline";b:1;s:3:"icl";b:1;}i:93;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:19:"offers_link_offer_5";s:6:"string";s:29:"http://agusfire.com/services/";s:9:"multiline";b:1;s:3:"icl";b:1;}i:94;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:8:"facebook";s:6:"string";s:52:"https://www.facebook.com/AGUS-Fire-124879804901910/ ";s:9:"multiline";b:1;s:3:"icl";b:1;}i:95;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:7:"twitter";s:6:"string";s:55:"https://twitter.com/EgAGUSfire http://www.agusfire.com/";s:9:"multiline";b:1;s:3:"icl";b:1;}i:96;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:9:"instagram";s:6:"string";s:38:"https://www.instagram.com/AGUSfireEg/ ";s:9:"multiline";b:1;s:3:"icl";b:1;}i:97;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:4:"call";s:6:"string";s:28:"01000861215   -  01000774834";s:9:"multiline";b:1;s:3:"icl";b:1;}i:98;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:5:"email";s:6:"string";s:18:" info@agusfire.com";s:9:"multiline";b:1;s:3:"icl";b:1;}i:99;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:16:"description_cont";s:6:"string";s:183:"<p>If you would like to inquire about a quote for Security Services please fill out the form below.</p>\r\n<p>We will respond with 2h hours OR call us at<strong> 0235826876</strong></p>";s:9:"multiline";b:1;s:3:"icl";b:1;}i:100;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:7:"address";s:6:"string";s:104:"Address Company 31 Arish Street - Haram - Giza <br>Address Factory Industrial Area Safa Abozaal 6 pieces";s:9:"multiline";b:1;s:3:"icl";b:1;}i:101;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:12:"phone_footer";s:6:"string";s:13:"P: 0235826876";s:9:"multiline";b:1;s:3:"icl";b:1;}i:102;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:14:"banner_title_2";s:6:"string";s:47:"Residential, Business & Event Security Services";s:9:"multiline";b:1;s:3:"icl";b:1;}i:103;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:13:"banner_link_2";s:6:"string";s:29:"http://agusfire.com/services/";s:9:"multiline";b:1;s:3:"icl";b:1;}i:104;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:20:"banner_description_2";s:6:"string";s:132:"We are approved contractor of Security Guard services, providing quality security services to many organizations & private companies";s:9:"multiline";b:1;s:3:"icl";b:1;}i:105;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:14:"banner_title_3";s:6:"string";s:47:"Residential, Business & Event Security Services";s:9:"multiline";b:1;s:3:"icl";b:1;}i:106;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:13:"banner_link_3";s:6:"string";s:29:"http://agusfire.com/services/";s:9:"multiline";b:1;s:3:"icl";b:1;}i:107;a:5:{s:7:"context";s:13:"Theme Options";s:4:"name";s:20:"banner_description_3";s:6:"string";s:132:"We are approved contractor of Security Guard services, providing quality security services to many organizations & private companies";s:9:"multiline";b:1;s:3:"icl";b:1;}}', 'yes'),
(170, 'widget_polylang', 'a:3:{i:2;a:7:{s:5:"title";s:0:"";s:8:"dropdown";i:0;s:10:"show_names";i:1;s:10:"show_flags";i:0;s:10:"force_home";i:0;s:12:"hide_current";i:0;s:22:"hide_if_no_translation";i:0;}i:3;a:7:{s:5:"title";s:4:"    ";s:8:"dropdown";i:1;s:10:"show_names";i:1;s:10:"show_flags";i:0;s:10:"force_home";i:0;s:12:"hide_current";i:0;s:22:"hide_if_no_translation";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(171, 'mw_polylang_strings_agus_data', 'a:2:{s:4:"name";s:19:"Twenty Fifteen/agus";s:7:"strings";a:0:{}}', 'yes'),
(172, 'mw_polylang_strings_twentyfifteen_data', 'a:2:{s:4:"name";s:14:"Twenty Fifteen";s:7:"strings";a:0:{}}', 'yes'),
(173, 'mw_polylang_strings_twentyseventeen_data', 'a:2:{s:4:"name";s:16:"Twenty Seventeen";s:7:"strings";a:0:{}}', 'yes'),
(174, 'mw_polylang_strings_twentysixteen_data', 'a:2:{s:4:"name";s:14:"Twenty Sixteen";s:7:"strings";a:0:{}}', 'yes'),
(200, 'category_children', 'a:0:{}', 'yes'),
(257, 'widget_display-latest-tweets', 'a:2:{i:2;a:6:{s:5:"title";s:13:"Latest Tweets";s:12:"update_count";i:5;s:12:"consumer_key";s:0:"";s:15:"consumer_secret";s:0:"";s:18:"oauth_access_token";s:0:"";s:25:"oauth_access_token_secret";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(286, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:1:{i:0;i:14;}}', 'yes'),
(293, 'widget_wp_subscribe', 'a:3:{i:2;a:20:{s:5:"title";s:14:"Get more stuff";s:7:"service";s:10:"feedburner";s:19:"aweber_consumer_key";s:0:"";s:22:"aweber_consumer_secret";s:0:"";s:17:"aweber_access_key";s:0:"";s:20:"aweber_access_secret";s:0:"";s:17:"aweber_account_id";s:0:"";s:14:"aweber_list_id";s:4:"none";s:13:"feedburner_id";s:0:"";s:17:"mailchimp_api_key";s:0:"";s:17:"mailchimp_list_id";s:4:"none";s:22:"mailchimp_double_optin";s:1:"0";s:18:"include_name_field";s:1:"0";s:4:"text";s:88:"Subscribe to our mailing list and get interesting stuff and updates to your email inbox.";s:16:"name_placeholder";s:20:"Enter your name here";s:17:"email_placeholder";s:21:"Enter your email here";s:11:"button_text";s:11:"Sign Up Now";s:15:"success_message";s:26:"Thank you for subscribing.";s:13:"error_message";s:21:"Something went wrong.";s:11:"footer_text";s:56:"we respect your privacy and take protecting it seriously";}i:3;a:20:{s:5:"title";s:14:"Get more stuff";s:7:"service";s:9:"mailchimp";s:19:"aweber_consumer_key";s:0:"";s:22:"aweber_consumer_secret";s:0:"";s:17:"aweber_access_key";s:0:"";s:20:"aweber_access_secret";s:0:"";s:17:"aweber_account_id";s:0:"";s:14:"aweber_list_id";s:4:"none";s:13:"feedburner_id";s:0:"";s:17:"mailchimp_api_key";s:0:"";s:17:"mailchimp_list_id";s:4:"none";s:22:"mailchimp_double_optin";s:1:"1";s:18:"include_name_field";s:1:"1";s:4:"text";s:88:"Subscribe to our mailing list and get interesting stuff and updates to your email inbox.";s:16:"name_placeholder";s:20:"Enter your name here";s:17:"email_placeholder";s:21:"Enter your email here";s:11:"button_text";s:11:"Sign Up Now";s:15:"success_message";s:26:"Thank you for subscribing.";s:13:"error_message";s:21:"Something went wrong.";s:11:"footer_text";s:56:"we respect your privacy and take protecting it seriously";}s:12:"_multiwidget";i:1;}', 'yes'),
(298, 'email-subscribers', '2.9', 'yes'),
(299, 'ig_es_fromname', 'ahmedelsayed.me', 'yes'),
(300, 'ig_es_fromemail', 'me@ahmedelsayed.me', 'yes'),
(301, 'ig_es_emailtype', 'WP HTML MAIL', 'yes'),
(302, 'ig_es_notifyadmin', 'YES', 'yes'),
(303, 'ig_es_adminemail', 'me@ahmedelsayed.me', 'yes'),
(304, 'ig_es_admin_new_sub_subject', 'ahmedelsayed.me - New email subscription', 'yes'),
(305, 'ig_es_admin_new_sub_content', 'Hi Admin,\r\n\r\nCongratulations! You have a new subscriber.\r\n\r\nName : ###NAME###\r\nEmail: ###EMAIL###\r\nGroup: ###GROUP###\r\n\r\nHave a nice day :)\r\nahmedelsayed.me', 'yes'),
(306, 'ig_es_welcomeemail', 'YES', 'yes'),
(307, 'ig_es_welcomesubject', 'ahmedelsayed.me - Welcome!', 'yes'),
(308, 'ig_es_welcomecontent', 'Hi ###NAME###,\r\n\r\nThank you for subscribing to ahmedelsayed.me.\r\n\r\nWe are glad to have you onboard.\r\n\r\nBest,\r\nahmedelsayed.me\r\n\r\nGot subscribed to ahmedelsayed.me by mistake? Click <a href=''###LINK###''>here</a> to unsubscribe.', 'yes'),
(309, 'ig_es_optintype', 'Double Opt In', 'yes'),
(310, 'ig_es_confirmsubject', 'ahmedelsayed.me - Please confirm your subscription', 'yes'),
(311, 'ig_es_confirmcontent', 'Hi ###NAME###,\r\n\r\nWe have received a subscription request from this email address. Please confirm it by <a href=''###LINK###''>clicking here</a>.\r\n\r\nIf you still cannot subscribe, please copy this link and paste it in your browser :\r\n###LINK### \r\n\r\nThank You\r\nahmedelsayed.me', 'yes'),
(312, 'ig_es_optinlink', 'http://localhost/psolvingegypt/agus/?es=optin&db=###DBID###&email=###EMAIL###&guid=###GUID###', 'yes'),
(313, 'ig_es_unsublink', 'http://localhost/psolvingegypt/agus/?es=unsubscribe&db=###DBID###&email=###EMAIL###&guid=###GUID###', 'yes'),
(314, 'ig_es_unsubcontent', 'No longer interested in emails from ahmedelsayed.me?. Please <a href=''###LINK###''>click here</a> to unsubscribe', 'yes'),
(315, 'ig_es_unsubtext', 'Thank You, You have been successfully unsubscribed. You will no longer hear from us.', 'yes'),
(316, 'ig_es_successmsg', 'You have been successfully subscribed.', 'yes'),
(317, 'ig_es_suberror', 'Oops.. Your request couldn''t be completed. This email address seems to be already subscribed / blocked.', 'yes'),
(318, 'ig_es_unsuberror', 'Oops.. There was some technical error. Please try again later or contact us.', 'yes'),
(321, 'widget_email-subscribers', 'a:2:{i:2;a:4:{s:8:"es_title";s:10:"NEWSLETTER";s:7:"es_desc";s:0:"";s:7:"es_name";s:2:"NO";s:8:"es_group";s:6:"Public";}s:12:"_multiwidget";i:1;}', 'yes'),
(322, 'ig_es_sync_wp_users', 's:4:"b:0;";', 'yes'),
(323, 'current_sa_email_subscribers_db_version', '3.3.6', 'yes'),
(324, 'ig_es_update_v_3_3_4_date', '2017-10-05', 'yes'),
(325, 'ig_es_post_image_size', 'full', 'yes'),
(326, 'ig_es_sentreport', 'Hi Admin,\n\nEmail has been sent successfully to ###COUNT### email(s). Please find the details below:\n\nUnique ID: ###UNIQUE###\nStart Time: ###STARTTIME###\nEnd Time: ###ENDTIME###\nFor more information, login to your dashboard and go to Reports menu in Email Subscribers.\n\nThank You.', 'yes'),
(327, 'ig_es_sentreport_subject', 'Your email has been sent', 'yes'),
(328, 'ig_es_cronurl', 'http://localhost/psolvingegypt/agus/?es=cron&guid=zxoevj-lhnfzk-tjyakw-jlskeu-hiovas', 'yes'),
(329, 'ig_es_cron_mailcount', '50', 'yes'),
(330, 'ig_es_cron_adminmail', 'Hi Admin,\r\n\r\nCron URL has been triggered successfully on ###DATE### for the email ###SUBJECT###. And it sent email to ###COUNT### recipient(s).\r\n\r\nBest,\r\nahmedelsayed.me', 'yes'),
(335, 'wpcf7', 'a:2:{s:7:"version";s:3:"4.9";s:13:"bulk_validate";a:4:{s:9:"timestamp";i:1507236884;s:7:"version";s:3:"4.9";s:11:"count_valid";i:1;s:13:"count_invalid";i:0;}}', 'yes'),
(367, 'cptui_new_install', 'false', 'yes'),
(368, 'cptui_post_types', 'a:4:{s:4:"team";a:28:{s:4:"name";s:4:"team";s:5:"label";s:4:"Team";s:14:"singular_label";s:4:"Team";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:18:"publicly_queryable";s:4:"true";s:7:"show_ui";s:4:"true";s:17:"show_in_nav_menus";s:4:"true";s:12:"show_in_rest";s:5:"false";s:9:"rest_base";s:0:"";s:11:"has_archive";s:5:"false";s:18:"has_archive_string";s:0:"";s:19:"exclude_from_search";s:5:"false";s:15:"capability_type";s:4:"post";s:12:"hierarchical";s:5:"false";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:4:"true";s:9:"query_var";s:4:"true";s:14:"query_var_slug";s:0:"";s:13:"menu_position";s:0:"";s:12:"show_in_menu";s:4:"true";s:19:"show_in_menu_string";s:0:"";s:9:"menu_icon";s:0:"";s:8:"supports";a:11:{i:0;s:5:"title";i:1;s:6:"editor";i:2;s:9:"thumbnail";i:3;s:7:"excerpt";i:4;s:10:"trackbacks";i:5;s:13:"custom-fields";i:6;s:8:"comments";i:7;s:9:"revisions";i:8;s:6:"author";i:9;s:15:"page-attributes";i:10;s:12:"post-formats";}s:10:"taxonomies";a:0:{}s:6:"labels";a:23:{s:9:"menu_name";s:0:"";s:9:"all_items";s:0:"";s:7:"add_new";s:0:"";s:12:"add_new_item";s:0:"";s:9:"edit_item";s:0:"";s:8:"new_item";s:0:"";s:9:"view_item";s:0:"";s:10:"view_items";s:0:"";s:12:"search_items";s:0:"";s:9:"not_found";s:0:"";s:18:"not_found_in_trash";s:0:"";s:17:"parent_item_colon";s:0:"";s:14:"featured_image";s:0:"";s:18:"set_featured_image";s:0:"";s:21:"remove_featured_image";s:0:"";s:18:"use_featured_image";s:0:"";s:8:"archives";s:0:"";s:16:"insert_into_item";s:0:"";s:21:"uploaded_to_this_item";s:0:"";s:17:"filter_items_list";s:0:"";s:21:"items_list_navigation";s:0:"";s:10:"items_list";s:0:"";s:10:"attributes";s:0:"";}s:15:"custom_supports";s:0:"";}s:3:"new";a:28:{s:4:"name";s:3:"new";s:5:"label";s:4:"News";s:14:"singular_label";s:4:"News";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:18:"publicly_queryable";s:4:"true";s:7:"show_ui";s:4:"true";s:17:"show_in_nav_menus";s:4:"true";s:12:"show_in_rest";s:5:"false";s:9:"rest_base";s:0:"";s:11:"has_archive";s:5:"false";s:18:"has_archive_string";s:0:"";s:19:"exclude_from_search";s:5:"false";s:15:"capability_type";s:4:"post";s:12:"hierarchical";s:5:"false";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:4:"true";s:9:"query_var";s:4:"true";s:14:"query_var_slug";s:0:"";s:13:"menu_position";s:0:"";s:12:"show_in_menu";s:4:"true";s:19:"show_in_menu_string";s:0:"";s:9:"menu_icon";s:0:"";s:8:"supports";a:8:{i:0;s:5:"title";i:1;s:6:"editor";i:2;s:9:"thumbnail";i:3;s:7:"excerpt";i:4;s:10:"trackbacks";i:5;s:13:"custom-fields";i:6;s:8:"comments";i:7;s:9:"revisions";}s:10:"taxonomies";a:0:{}s:6:"labels";a:23:{s:9:"menu_name";s:0:"";s:9:"all_items";s:0:"";s:7:"add_new";s:0:"";s:12:"add_new_item";s:0:"";s:9:"edit_item";s:0:"";s:8:"new_item";s:0:"";s:9:"view_item";s:0:"";s:10:"view_items";s:0:"";s:12:"search_items";s:0:"";s:9:"not_found";s:0:"";s:18:"not_found_in_trash";s:0:"";s:17:"parent_item_colon";s:0:"";s:14:"featured_image";s:0:"";s:18:"set_featured_image";s:0:"";s:21:"remove_featured_image";s:0:"";s:18:"use_featured_image";s:0:"";s:8:"archives";s:0:"";s:16:"insert_into_item";s:0:"";s:21:"uploaded_to_this_item";s:0:"";s:17:"filter_items_list";s:0:"";s:21:"items_list_navigation";s:0:"";s:10:"items_list";s:0:"";s:10:"attributes";s:0:"";}s:15:"custom_supports";s:0:"";}s:7:"gallery";a:28:{s:4:"name";s:7:"gallery";s:5:"label";s:7:"Gallery";s:14:"singular_label";s:7:"Gallery";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:18:"publicly_queryable";s:4:"true";s:7:"show_ui";s:4:"true";s:17:"show_in_nav_menus";s:4:"true";s:12:"show_in_rest";s:5:"false";s:9:"rest_base";s:0:"";s:11:"has_archive";s:5:"false";s:18:"has_archive_string";s:0:"";s:19:"exclude_from_search";s:5:"false";s:15:"capability_type";s:4:"post";s:12:"hierarchical";s:5:"false";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:4:"true";s:9:"query_var";s:4:"true";s:14:"query_var_slug";s:0:"";s:13:"menu_position";s:0:"";s:12:"show_in_menu";s:4:"true";s:19:"show_in_menu_string";s:0:"";s:9:"menu_icon";s:0:"";s:8:"supports";a:9:{i:0;s:5:"title";i:1;s:6:"editor";i:2;s:9:"thumbnail";i:3;s:7:"excerpt";i:4;s:10:"trackbacks";i:5;s:9:"revisions";i:6;s:6:"author";i:7;s:15:"page-attributes";i:8;s:12:"post-formats";}s:10:"taxonomies";a:0:{}s:6:"labels";a:23:{s:9:"menu_name";s:0:"";s:9:"all_items";s:0:"";s:7:"add_new";s:0:"";s:12:"add_new_item";s:0:"";s:9:"edit_item";s:0:"";s:8:"new_item";s:0:"";s:9:"view_item";s:0:"";s:10:"view_items";s:0:"";s:12:"search_items";s:0:"";s:9:"not_found";s:0:"";s:18:"not_found_in_trash";s:0:"";s:17:"parent_item_colon";s:0:"";s:14:"featured_image";s:0:"";s:18:"set_featured_image";s:0:"";s:21:"remove_featured_image";s:0:"";s:18:"use_featured_image";s:0:"";s:8:"archives";s:0:"";s:16:"insert_into_item";s:0:"";s:21:"uploaded_to_this_item";s:0:"";s:17:"filter_items_list";s:0:"";s:21:"items_list_navigation";s:0:"";s:10:"items_list";s:0:"";s:10:"attributes";s:0:"";}s:15:"custom_supports";s:0:"";}s:9:"services2";a:28:{s:4:"name";s:9:"services2";s:5:"label";s:8:"Services";s:14:"singular_label";s:8:"services";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:18:"publicly_queryable";s:4:"true";s:7:"show_ui";s:4:"true";s:17:"show_in_nav_menus";s:4:"true";s:12:"show_in_rest";s:5:"false";s:9:"rest_base";s:0:"";s:11:"has_archive";s:5:"false";s:18:"has_archive_string";s:0:"";s:19:"exclude_from_search";s:5:"false";s:15:"capability_type";s:4:"post";s:12:"hierarchical";s:5:"false";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:4:"true";s:9:"query_var";s:4:"true";s:14:"query_var_slug";s:0:"";s:13:"menu_position";s:0:"";s:12:"show_in_menu";s:4:"true";s:19:"show_in_menu_string";s:0:"";s:9:"menu_icon";s:0:"";s:8:"supports";a:11:{i:0;s:5:"title";i:1;s:6:"editor";i:2;s:9:"thumbnail";i:3;s:7:"excerpt";i:4;s:10:"trackbacks";i:5;s:13:"custom-fields";i:6;s:8:"comments";i:7;s:9:"revisions";i:8;s:6:"author";i:9;s:15:"page-attributes";i:10;s:12:"post-formats";}s:10:"taxonomies";a:0:{}s:6:"labels";a:23:{s:9:"menu_name";s:0:"";s:9:"all_items";s:0:"";s:7:"add_new";s:0:"";s:12:"add_new_item";s:0:"";s:9:"edit_item";s:0:"";s:8:"new_item";s:0:"";s:9:"view_item";s:0:"";s:10:"view_items";s:0:"";s:12:"search_items";s:0:"";s:9:"not_found";s:0:"";s:18:"not_found_in_trash";s:0:"";s:17:"parent_item_colon";s:0:"";s:14:"featured_image";s:0:"";s:18:"set_featured_image";s:0:"";s:21:"remove_featured_image";s:0:"";s:18:"use_featured_image";s:0:"";s:8:"archives";s:0:"";s:16:"insert_into_item";s:0:"";s:21:"uploaded_to_this_item";s:0:"";s:17:"filter_items_list";s:0:"";s:21:"items_list_navigation";s:0:"";s:10:"items_list";s:0:"";s:10:"attributes";s:0:"";}s:15:"custom_supports";s:0:"";}}', 'yes'),
(375, 'fs_active_plugins', 'O:8:"stdClass":0:{}', 'yes'),
(376, 'fs_debug_mode', '', 'yes'),
(377, 'fs_accounts', 'a:6:{s:21:"id_slug_type_path_map";a:1:{i:1373;a:2:{s:4:"slug";s:6:"weglot";s:4:"type";s:6:"plugin";}}s:11:"plugin_data";a:1:{s:6:"weglot";a:15:{s:16:"plugin_main_file";O:8:"stdClass":1:{s:9:"prev_path";s:71:"C:/xampp/htdocs/psolvingegypt/agus/wp-content/plugins/weglot/weglot.php";}s:17:"install_timestamp";i:1507272297;s:17:"was_plugin_loaded";b:1;s:21:"is_plugin_new_install";b:0;s:16:"sdk_last_version";N;s:11:"sdk_version";s:7:"1.2.2.9";s:16:"sdk_upgrade_mode";b:1;s:18:"sdk_downgrade_mode";b:0;s:19:"plugin_last_version";N;s:14:"plugin_version";s:5:"1.6.1";s:19:"plugin_upgrade_mode";b:1;s:21:"plugin_downgrade_mode";b:0;s:17:"connectivity_test";a:6:{s:12:"is_connected";b:1;s:4:"host";s:9:"localhost";s:9:"server_ip";s:3:"::1";s:9:"is_active";b:1;s:9:"timestamp";i:1507272297;s:7:"version";s:5:"1.6.1";}s:15:"prev_is_premium";b:0;s:21:"is_pending_activation";b:1;}}s:13:"file_slug_map";a:1:{s:17:"weglot/weglot.php";s:6:"weglot";}s:7:"plugins";a:1:{s:6:"weglot";O:9:"FS_Plugin":16:{s:16:"parent_plugin_id";N;s:5:"title";s:16:"Weglot Translate";s:4:"slug";s:6:"weglot";s:4:"type";s:6:"plugin";s:4:"file";s:17:"weglot/weglot.php";s:7:"version";s:5:"1.6.1";s:11:"auto_update";N;s:4:"info";N;s:10:"is_premium";b:0;s:7:"is_live";b:1;s:10:"public_key";s:32:"pk_2a51632749185ee2bbfd28ba3c1a7";s:10:"secret_key";N;s:2:"id";s:4:"1373";s:7:"updated";N;s:7:"created";N;s:22:"\0FS_Entity\0_is_updated";b:0;}}s:9:"unique_id";s:32:"29c774c5556b537168e5a29de0d8c5f4";s:13:"admin_notices";a:1:{s:6:"weglot";a:0:{}}}', 'yes'),
(378, 'fs_api_cache', 'a:0:{}', 'yes'),
(380, 'with_flags', 'on', 'yes'),
(381, 'with_name', 'on', 'yes'),
(382, 'is_dropdown', 'on', 'yes'),
(383, 'is_fullname', 'off', 'yes'),
(384, 'override_css', '', 'yes'),
(385, 'is_menu', 'off', 'yes'),
(386, 'wg_allowed', '1', 'yes'),
(387, 'widget_weglotwidget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(461, 'acf_version', '4.4.12', 'yes'),
(480, 'theme_mods_twentyfifteen', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:4:{s:19:"bootstrap-menu___ar";i:14;s:14:"bootstrap-menu";i:13;s:16:"footer_menu___ar";i:15;s:11:"footer_menu";i:15;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1507293851;s:4:"data";a:5:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:18:"orphaned_widgets_1";a:1:{i:0;s:10:"polylang-2";}s:18:"orphaned_widgets_2";a:1:{i:0;s:19:"email-subscribers-2";}s:18:"orphaned_widgets_3";a:1:{i:0;s:10:"polylang-3";}}}}', 'yes'),
(501, 'WPLANG', 'ar', 'yes'),
(683, '_mm_refresh_token', '591b4062-5cdc-45db-a2a5-19094219cb1b', 'yes'),
(1009, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:18:"me@ahmedelsayed.me";s:7:"version";s:5:"4.8.4";s:9:"timestamp";i:1512004497;}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1069, 'rewrite_rules', 'a:311:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:52:"(ar)/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:69:"index.php?lang=$matches[1]&category_name=$matches[2]&feed=$matches[3]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:47:"(ar)/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:69:"index.php?lang=$matches[1]&category_name=$matches[2]&feed=$matches[3]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:28:"(ar)/category/(.+?)/embed/?$";s:63:"index.php?lang=$matches[1]&category_name=$matches[2]&embed=true";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:40:"(ar)/category/(.+?)/page/?([0-9]{1,})/?$";s:70:"index.php?lang=$matches[1]&category_name=$matches[2]&paged=$matches[3]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:22:"(ar)/category/(.+?)/?$";s:52:"index.php?lang=$matches[1]&category_name=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:49:"(ar)/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:59:"index.php?lang=$matches[1]&tag=$matches[2]&feed=$matches[3]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:44:"(ar)/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:59:"index.php?lang=$matches[1]&tag=$matches[2]&feed=$matches[3]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:25:"(ar)/tag/([^/]+)/embed/?$";s:53:"index.php?lang=$matches[1]&tag=$matches[2]&embed=true";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:37:"(ar)/tag/([^/]+)/page/?([0-9]{1,})/?$";s:60:"index.php?lang=$matches[1]&tag=$matches[2]&paged=$matches[3]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:19:"(ar)/tag/([^/]+)/?$";s:42:"index.php?lang=$matches[1]&tag=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:50:"(ar)/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:67:"index.php?lang=$matches[1]&post_format=$matches[2]&feed=$matches[3]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:58:"index.php?lang=en&post_format=$matches[1]&feed=$matches[2]";s:45:"(ar)/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:67:"index.php?lang=$matches[1]&post_format=$matches[2]&feed=$matches[3]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:58:"index.php?lang=en&post_format=$matches[1]&feed=$matches[2]";s:26:"(ar)/type/([^/]+)/embed/?$";s:61:"index.php?lang=$matches[1]&post_format=$matches[2]&embed=true";s:21:"type/([^/]+)/embed/?$";s:52:"index.php?lang=en&post_format=$matches[1]&embed=true";s:38:"(ar)/type/([^/]+)/page/?([0-9]{1,})/?$";s:68:"index.php?lang=$matches[1]&post_format=$matches[2]&paged=$matches[3]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:59:"index.php?lang=en&post_format=$matches[1]&paged=$matches[2]";s:20:"(ar)/type/([^/]+)/?$";s:50:"index.php?lang=$matches[1]&post_format=$matches[2]";s:15:"type/([^/]+)/?$";s:41:"index.php?lang=en&post_format=$matches[1]";s:37:"(ar)/team/[^/]+/attachment/([^/]+)/?$";s:49:"index.php?lang=$matches[1]&attachment=$matches[2]";s:32:"team/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"(ar)/team/[^/]+/attachment/([^/]+)/trackback/?$";s:54:"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1";s:42:"team/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"(ar)/team/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:66:"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]";s:62:"team/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"(ar)/team/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:66:"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]";s:57:"team/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"(ar)/team/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:67:"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]";s:57:"team/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:43:"(ar)/team/[^/]+/attachment/([^/]+)/embed/?$";s:60:"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true";s:38:"team/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:26:"(ar)/team/([^/]+)/embed/?$";s:54:"index.php?lang=$matches[1]&team=$matches[2]&embed=true";s:21:"team/([^/]+)/embed/?$";s:37:"index.php?team=$matches[1]&embed=true";s:30:"(ar)/team/([^/]+)/trackback/?$";s:48:"index.php?lang=$matches[1]&team=$matches[2]&tb=1";s:25:"team/([^/]+)/trackback/?$";s:31:"index.php?team=$matches[1]&tb=1";s:38:"(ar)/team/([^/]+)/page/?([0-9]{1,})/?$";s:61:"index.php?lang=$matches[1]&team=$matches[2]&paged=$matches[3]";s:33:"team/([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?team=$matches[1]&paged=$matches[2]";s:45:"(ar)/team/([^/]+)/comment-page-([0-9]{1,})/?$";s:61:"index.php?lang=$matches[1]&team=$matches[2]&cpage=$matches[3]";s:40:"team/([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?team=$matches[1]&cpage=$matches[2]";s:34:"(ar)/team/([^/]+)(?:/([0-9]+))?/?$";s:60:"index.php?lang=$matches[1]&team=$matches[2]&page=$matches[3]";s:29:"team/([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?team=$matches[1]&page=$matches[2]";s:26:"(ar)/team/[^/]+/([^/]+)/?$";s:49:"index.php?lang=$matches[1]&attachment=$matches[2]";s:21:"team/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:36:"(ar)/team/[^/]+/([^/]+)/trackback/?$";s:54:"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1";s:31:"team/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:56:"(ar)/team/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:66:"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]";s:51:"team/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:51:"(ar)/team/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:66:"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]";s:46:"team/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:51:"(ar)/team/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:67:"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]";s:46:"team/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:32:"(ar)/team/[^/]+/([^/]+)/embed/?$";s:60:"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true";s:27:"team/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:36:"(ar)/new/[^/]+/attachment/([^/]+)/?$";s:49:"index.php?lang=$matches[1]&attachment=$matches[2]";s:31:"new/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"(ar)/new/[^/]+/attachment/([^/]+)/trackback/?$";s:54:"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1";s:41:"new/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"(ar)/new/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:66:"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]";s:61:"new/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"(ar)/new/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:66:"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]";s:56:"new/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"(ar)/new/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:67:"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]";s:56:"new/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:42:"(ar)/new/[^/]+/attachment/([^/]+)/embed/?$";s:60:"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true";s:37:"new/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:25:"(ar)/new/([^/]+)/embed/?$";s:53:"index.php?lang=$matches[1]&new=$matches[2]&embed=true";s:20:"new/([^/]+)/embed/?$";s:36:"index.php?new=$matches[1]&embed=true";s:29:"(ar)/new/([^/]+)/trackback/?$";s:47:"index.php?lang=$matches[1]&new=$matches[2]&tb=1";s:24:"new/([^/]+)/trackback/?$";s:30:"index.php?new=$matches[1]&tb=1";s:37:"(ar)/new/([^/]+)/page/?([0-9]{1,})/?$";s:60:"index.php?lang=$matches[1]&new=$matches[2]&paged=$matches[3]";s:32:"new/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?new=$matches[1]&paged=$matches[2]";s:44:"(ar)/new/([^/]+)/comment-page-([0-9]{1,})/?$";s:60:"index.php?lang=$matches[1]&new=$matches[2]&cpage=$matches[3]";s:39:"new/([^/]+)/comment-page-([0-9]{1,})/?$";s:43:"index.php?new=$matches[1]&cpage=$matches[2]";s:33:"(ar)/new/([^/]+)(?:/([0-9]+))?/?$";s:59:"index.php?lang=$matches[1]&new=$matches[2]&page=$matches[3]";s:28:"new/([^/]+)(?:/([0-9]+))?/?$";s:42:"index.php?new=$matches[1]&page=$matches[2]";s:25:"(ar)/new/[^/]+/([^/]+)/?$";s:49:"index.php?lang=$matches[1]&attachment=$matches[2]";s:20:"new/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:35:"(ar)/new/[^/]+/([^/]+)/trackback/?$";s:54:"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1";s:30:"new/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:55:"(ar)/new/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:66:"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]";s:50:"new/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"(ar)/new/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:66:"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]";s:45:"new/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"(ar)/new/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:67:"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]";s:45:"new/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:31:"(ar)/new/[^/]+/([^/]+)/embed/?$";s:60:"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true";s:26:"new/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:40:"(ar)/gallery/[^/]+/attachment/([^/]+)/?$";s:49:"index.php?lang=$matches[1]&attachment=$matches[2]";s:35:"gallery/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:50:"(ar)/gallery/[^/]+/attachment/([^/]+)/trackback/?$";s:54:"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1";s:45:"gallery/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:70:"(ar)/gallery/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:66:"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]";s:65:"gallery/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"(ar)/gallery/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:66:"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]";s:60:"gallery/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"(ar)/gallery/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:67:"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]";s:60:"gallery/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:46:"(ar)/gallery/[^/]+/attachment/([^/]+)/embed/?$";s:60:"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true";s:41:"gallery/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:29:"(ar)/gallery/([^/]+)/embed/?$";s:57:"index.php?lang=$matches[1]&gallery=$matches[2]&embed=true";s:24:"gallery/([^/]+)/embed/?$";s:40:"index.php?gallery=$matches[1]&embed=true";s:33:"(ar)/gallery/([^/]+)/trackback/?$";s:51:"index.php?lang=$matches[1]&gallery=$matches[2]&tb=1";s:28:"gallery/([^/]+)/trackback/?$";s:34:"index.php?gallery=$matches[1]&tb=1";s:41:"(ar)/gallery/([^/]+)/page/?([0-9]{1,})/?$";s:64:"index.php?lang=$matches[1]&gallery=$matches[2]&paged=$matches[3]";s:36:"gallery/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?gallery=$matches[1]&paged=$matches[2]";s:48:"(ar)/gallery/([^/]+)/comment-page-([0-9]{1,})/?$";s:64:"index.php?lang=$matches[1]&gallery=$matches[2]&cpage=$matches[3]";s:43:"gallery/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?gallery=$matches[1]&cpage=$matches[2]";s:37:"(ar)/gallery/([^/]+)(?:/([0-9]+))?/?$";s:63:"index.php?lang=$matches[1]&gallery=$matches[2]&page=$matches[3]";s:32:"gallery/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?gallery=$matches[1]&page=$matches[2]";s:29:"(ar)/gallery/[^/]+/([^/]+)/?$";s:49:"index.php?lang=$matches[1]&attachment=$matches[2]";s:24:"gallery/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:39:"(ar)/gallery/[^/]+/([^/]+)/trackback/?$";s:54:"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1";s:34:"gallery/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:59:"(ar)/gallery/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:66:"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]";s:54:"gallery/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"(ar)/gallery/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:66:"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]";s:49:"gallery/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"(ar)/gallery/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:67:"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]";s:49:"gallery/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:35:"(ar)/gallery/[^/]+/([^/]+)/embed/?$";s:60:"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true";s:30:"gallery/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:42:"(ar)/services2/[^/]+/attachment/([^/]+)/?$";s:49:"index.php?lang=$matches[1]&attachment=$matches[2]";s:37:"services2/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:52:"(ar)/services2/[^/]+/attachment/([^/]+)/trackback/?$";s:54:"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1";s:47:"services2/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:72:"(ar)/services2/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:66:"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]";s:67:"services2/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:67:"(ar)/services2/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:66:"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]";s:62:"services2/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:67:"(ar)/services2/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:67:"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]";s:62:"services2/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:48:"(ar)/services2/[^/]+/attachment/([^/]+)/embed/?$";s:60:"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true";s:43:"services2/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:31:"(ar)/services2/([^/]+)/embed/?$";s:59:"index.php?lang=$matches[1]&services2=$matches[2]&embed=true";s:26:"services2/([^/]+)/embed/?$";s:42:"index.php?services2=$matches[1]&embed=true";s:35:"(ar)/services2/([^/]+)/trackback/?$";s:53:"index.php?lang=$matches[1]&services2=$matches[2]&tb=1";s:30:"services2/([^/]+)/trackback/?$";s:36:"index.php?services2=$matches[1]&tb=1";s:43:"(ar)/services2/([^/]+)/page/?([0-9]{1,})/?$";s:66:"index.php?lang=$matches[1]&services2=$matches[2]&paged=$matches[3]";s:38:"services2/([^/]+)/page/?([0-9]{1,})/?$";s:49:"index.php?services2=$matches[1]&paged=$matches[2]";s:50:"(ar)/services2/([^/]+)/comment-page-([0-9]{1,})/?$";s:66:"index.php?lang=$matches[1]&services2=$matches[2]&cpage=$matches[3]";s:45:"services2/([^/]+)/comment-page-([0-9]{1,})/?$";s:49:"index.php?services2=$matches[1]&cpage=$matches[2]";s:39:"(ar)/services2/([^/]+)(?:/([0-9]+))?/?$";s:65:"index.php?lang=$matches[1]&services2=$matches[2]&page=$matches[3]";s:34:"services2/([^/]+)(?:/([0-9]+))?/?$";s:48:"index.php?services2=$matches[1]&page=$matches[2]";s:31:"(ar)/services2/[^/]+/([^/]+)/?$";s:49:"index.php?lang=$matches[1]&attachment=$matches[2]";s:26:"services2/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:41:"(ar)/services2/[^/]+/([^/]+)/trackback/?$";s:54:"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1";s:36:"services2/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:61:"(ar)/services2/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:66:"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]";s:56:"services2/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:"(ar)/services2/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:66:"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]";s:51:"services2/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:"(ar)/services2/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:67:"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]";s:51:"services2/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:37:"(ar)/services2/[^/]+/([^/]+)/embed/?$";s:60:"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true";s:32:"services2/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:37:"(ar)/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?lang=$matches[1]&&feed=$matches[2]";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:35:"index.php?lang=en&&feed=$matches[1]";s:32:"(ar)/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?lang=$matches[1]&&feed=$matches[2]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:35:"index.php?lang=en&&feed=$matches[1]";s:13:"(ar)/embed/?$";s:38:"index.php?lang=$matches[1]&&embed=true";s:8:"embed/?$";s:29:"index.php?lang=en&&embed=true";s:25:"(ar)/page/?([0-9]{1,})/?$";s:45:"index.php?lang=$matches[1]&&paged=$matches[2]";s:20:"page/?([0-9]{1,})/?$";s:36:"index.php?lang=en&&paged=$matches[1]";s:32:"(ar)/comment-page-([0-9]{1,})/?$";s:56:"index.php?lang=$matches[1]&&page_id=41&cpage=$matches[2]";s:27:"comment-page-([0-9]{1,})/?$";s:47:"index.php?lang=en&&page_id=41&cpage=$matches[1]";s:7:"(ar)/?$";s:26:"index.php?lang=$matches[1]";s:46:"(ar)/comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:59:"index.php?lang=$matches[1]&&feed=$matches[2]&withcomments=1";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?lang=en&&feed=$matches[1]&withcomments=1";s:41:"(ar)/comments/(feed|rdf|rss|rss2|atom)/?$";s:59:"index.php?lang=$matches[1]&&feed=$matches[2]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?lang=en&&feed=$matches[1]&withcomments=1";s:22:"(ar)/comments/embed/?$";s:38:"index.php?lang=$matches[1]&&embed=true";s:17:"comments/embed/?$";s:29:"index.php?lang=en&&embed=true";s:49:"(ar)/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:57:"index.php?lang=$matches[1]&s=$matches[2]&feed=$matches[3]";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?lang=en&s=$matches[1]&feed=$matches[2]";s:44:"(ar)/search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:57:"index.php?lang=$matches[1]&s=$matches[2]&feed=$matches[3]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?lang=en&s=$matches[1]&feed=$matches[2]";s:25:"(ar)/search/(.+)/embed/?$";s:51:"index.php?lang=$matches[1]&s=$matches[2]&embed=true";s:20:"search/(.+)/embed/?$";s:42:"index.php?lang=en&s=$matches[1]&embed=true";s:37:"(ar)/search/(.+)/page/?([0-9]{1,})/?$";s:58:"index.php?lang=$matches[1]&s=$matches[2]&paged=$matches[3]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:49:"index.php?lang=en&s=$matches[1]&paged=$matches[2]";s:19:"(ar)/search/(.+)/?$";s:40:"index.php?lang=$matches[1]&s=$matches[2]";s:14:"search/(.+)/?$";s:31:"index.php?lang=en&s=$matches[1]";s:52:"(ar)/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:67:"index.php?lang=$matches[1]&author_name=$matches[2]&feed=$matches[3]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:58:"index.php?lang=en&author_name=$matches[1]&feed=$matches[2]";s:47:"(ar)/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:67:"index.php?lang=$matches[1]&author_name=$matches[2]&feed=$matches[3]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:58:"index.php?lang=en&author_name=$matches[1]&feed=$matches[2]";s:28:"(ar)/author/([^/]+)/embed/?$";s:61:"index.php?lang=$matches[1]&author_name=$matches[2]&embed=true";s:23:"author/([^/]+)/embed/?$";s:52:"index.php?lang=en&author_name=$matches[1]&embed=true";s:40:"(ar)/author/([^/]+)/page/?([0-9]{1,})/?$";s:68:"index.php?lang=$matches[1]&author_name=$matches[2]&paged=$matches[3]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:59:"index.php?lang=en&author_name=$matches[1]&paged=$matches[2]";s:22:"(ar)/author/([^/]+)/?$";s:50:"index.php?lang=$matches[1]&author_name=$matches[2]";s:17:"author/([^/]+)/?$";s:41:"index.php?lang=en&author_name=$matches[1]";s:74:"(ar)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&feed=$matches[5]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:69:"(ar)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&feed=$matches[5]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:50:"(ar)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:91:"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&embed=true";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:62:"(ar)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:98:"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&paged=$matches[5]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:44:"(ar)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:80:"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:61:"(ar)/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:81:"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&feed=$matches[4]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:56:"(ar)/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:81:"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&feed=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:37:"(ar)/([0-9]{4})/([0-9]{1,2})/embed/?$";s:75:"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&embed=true";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:49:"(ar)/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:82:"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&paged=$matches[4]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:31:"(ar)/([0-9]{4})/([0-9]{1,2})/?$";s:64:"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:48:"(ar)/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:60:"index.php?lang=$matches[1]&year=$matches[2]&feed=$matches[3]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:43:"(ar)/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:60:"index.php?lang=$matches[1]&year=$matches[2]&feed=$matches[3]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:24:"(ar)/([0-9]{4})/embed/?$";s:54:"index.php?lang=$matches[1]&year=$matches[2]&embed=true";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:36:"(ar)/([0-9]{4})/page/?([0-9]{1,})/?$";s:61:"index.php?lang=$matches[1]&year=$matches[2]&paged=$matches[3]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:18:"(ar)/([0-9]{4})/?$";s:43:"index.php?lang=$matches[1]&year=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:63:"(ar)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:49:"index.php?lang=$matches[1]&attachment=$matches[2]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:73:"(ar)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:54:"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:93:"(ar)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:66:"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:88:"(ar)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:66:"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:88:"(ar)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:67:"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:69:"(ar)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:60:"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:58:"(ar)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:108:"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&name=$matches[5]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:62:"(ar)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:102:"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&name=$matches[5]&tb=1";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:82:"(ar)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:114:"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&name=$matches[5]&feed=$matches[6]";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:77:"(ar)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:114:"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&name=$matches[5]&feed=$matches[6]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:70:"(ar)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:115:"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&name=$matches[5]&paged=$matches[6]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:77:"(ar)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:115:"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&name=$matches[5]&cpage=$matches[6]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:66:"(ar)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:114:"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&name=$matches[5]&page=$matches[6]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:52:"(ar)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:49:"index.php?lang=$matches[1]&attachment=$matches[2]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:62:"(ar)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:54:"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:82:"(ar)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:66:"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:77:"(ar)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:66:"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:77:"(ar)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:67:"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:58:"(ar)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:60:"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:69:"(ar)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:98:"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&cpage=$matches[5]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:56:"(ar)/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:82:"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:43:"(ar)/([0-9]{4})/comment-page-([0-9]{1,})/?$";s:61:"index.php?lang=$matches[1]&year=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:32:"(ar)/.?.+?/attachment/([^/]+)/?$";s:49:"index.php?lang=$matches[1]&attachment=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:42:"(ar)/.?.+?/attachment/([^/]+)/trackback/?$";s:54:"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:62:"(ar)/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:66:"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:57:"(ar)/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:66:"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:57:"(ar)/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:67:"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:38:"(ar)/.?.+?/attachment/([^/]+)/embed/?$";s:60:"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:21:"(ar)/(.?.+?)/embed/?$";s:58:"index.php?lang=$matches[1]&pagename=$matches[2]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:25:"(ar)/(.?.+?)/trackback/?$";s:52:"index.php?lang=$matches[1]&pagename=$matches[2]&tb=1";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:45:"(ar)/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?lang=$matches[1]&pagename=$matches[2]&feed=$matches[3]";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:40:"(ar)/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?lang=$matches[1]&pagename=$matches[2]&feed=$matches[3]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:33:"(ar)/(.?.+?)/page/?([0-9]{1,})/?$";s:65:"index.php?lang=$matches[1]&pagename=$matches[2]&paged=$matches[3]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:40:"(ar)/(.?.+?)/comment-page-([0-9]{1,})/?$";s:65:"index.php?lang=$matches[1]&pagename=$matches[2]&cpage=$matches[3]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:29:"(ar)/(.?.+?)(?:/([0-9]+))?/?$";s:64:"index.php?lang=$matches[1]&pagename=$matches[2]&page=$matches[3]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(1515, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(1523, 'new_admin_email', 'me@ahmedelsayed.me', 'yes'),
(1526, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:62:"https://downloads.wordpress.org/release/ar/wordpress-4.9.1.zip";s:6:"locale";s:2:"ar";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:62:"https://downloads.wordpress.org/release/ar/wordpress-4.9.1.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.1";s:7:"version";s:5:"4.9.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1515461040;s:15:"version_checked";s:5:"4.9.1";s:12:"translations";a:0:{}}', 'no'),
(1645, '_transient_pll_languages_list', 'a:2:{i:0;a:24:{s:7:"term_id";i:2;s:4:"name";s:14:"العربية";s:4:"slug";s:2:"ar";s:10:"term_group";i:0;s:16:"term_taxonomy_id";i:2;s:8:"taxonomy";s:8:"language";s:11:"description";s:2:"ar";s:6:"parent";i:0;s:5:"count";i:32;s:10:"tl_term_id";i:3;s:19:"tl_term_taxonomy_id";i:3;s:8:"tl_count";i:1;s:6:"locale";R:9;s:6:"is_rtl";i:1;s:8:"flag_url";s:60:"http://agusfire.com/wp-content/plugins/polylang/flags/eg.png";s:4:"flag";s:700:"<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAALCAIAAAD5gJpuAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAFjSURBVHjaYnzLwPCPAQr+oZJw9AdJECAAx2FuAwAIA7EUlGycrRiKJe4jorBlr2F3z8QuO1KoiCGLDDDh7wLuOU8AsYCUMvz/++QpA1Dp379AUZAeIPn7N0jdLyDj179fv4DiTLKyQKsAAoiFzdSUSVOLQVQMajxQz9+/v3/+Zrb9xrSf9d/vX0Czmf6ALGQUFWXbvh0ggBj//v3LyMgIsuf/fwYw/Pfv74/X8xh+P2GVqGD4z/IfBoDKPn36BBBATBDvQsXA9K+XXX9+fvr39+evZy3/kQHQ0//+AQQQE5pqMPjz+8//H7/5//3/jaL+P9DyfwABxKivr19YWPj69Wug2/6Awe/ff1ICXwG1TVrKD+QCXQgkgbLi4uJtbW0AAQRyfVpa2r17936DwS8wgDBAJJgFNASoRUVF5eLFiwABBApWoJGSkpJAKaAoyAIwAFv1G2LnXxgAKgYIIJIRQIABAP7XTmNIudjEAAAAAElFTkSuQmCC" title="العربية" alt="العربية" />";s:8:"home_url";s:72:"http://agusfire.com/ar/%d8%a7%d9%84%d8%b1%d8%a6%d9%8a%d8%b3%d9%8a%d8%a9/";s:10:"search_url";s:23:"http://agusfire.com/ar/";s:4:"host";N;s:5:"mo_id";s:1:"7";s:13:"page_on_front";i:43;s:14:"page_for_posts";b:0;s:6:"filter";s:3:"raw";s:9:"flag_code";s:2:"eg";}i:1;a:24:{s:7:"term_id";i:5;s:4:"name";s:7:"English";s:4:"slug";s:2:"en";s:10:"term_group";i:0;s:16:"term_taxonomy_id";i:5;s:8:"taxonomy";s:8:"language";s:11:"description";s:5:"en_US";s:6:"parent";i:0;s:5:"count";i:42;s:10:"tl_term_id";i:6;s:19:"tl_term_taxonomy_id";i:6;s:8:"tl_count";i:1;s:6:"locale";R:33;s:6:"is_rtl";i:0;s:8:"flag_url";s:60:"http://agusfire.com/wp-content/plugins/polylang/flags/us.png";s:4:"flag";s:878:"<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAALCAIAAAD5gJpuAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAHzSURBVHjaYkxOP8IAB//+Mfz7w8Dwi4HhP5CcJb/n/7evb16/APL/gRFQDiAAw3JuAgAIBEDQ/iswEERjGzBQLEru97ll0g0+3HvqMn1SpqlqGsZMsZsIe0SICA5gt5a/AGIEarCPtFh+6N/ffwxA9OvP/7//QYwff/6fZahmePeB4dNHhi+fGb59Y4zyvHHmCEAAAW3YDzQYaJJ93a+vX79aVf58//69fvEPlpIfnz59+vDhw7t37968efP3b/SXL59OnjwIEEAsDP+YgY53b2b89++/awvLn98MDi2cVxl+/vl6mituCtBghi9f/v/48e/XL86krj9XzwEEEENy8g6gu22rfn78+NGs5Ofr16+ZC58+fvyYwX8rxOxXr169fPny+fPn1//93bJlBUAAsQADZMEBxj9/GBxb2P/9+S/R8u3vzxuyaX8ZHv3j8/YGms3w8ycQARmi2eE37t4ACCDGR4/uSkrKAS35B3TT////wADOgLOBIaXIyjBlwxKAAGKRXjCB0SOEaeu+/y9fMnz4AHQxCP348R/o+l+//sMZQBNLEvif3AcIIMZbty7Ly6t9ZmXl+fXj/38GoHH/UcGfP79//BBiYHjy9+8/oUkNAAHEwt1V/vI/KBY/QSISFqM/GBg+MzB8A6PfYC5EFiDAABqgW776MP0rAAAAAElFTkSuQmCC" title="English" alt="English" />";s:8:"home_url";s:20:"http://agusfire.com/";s:10:"search_url";s:20:"http://agusfire.com/";s:4:"host";N;s:5:"mo_id";s:1:"8";s:13:"page_on_front";s:2:"41";s:14:"page_for_posts";b:0;s:6:"filter";s:3:"raw";s:9:"flag_code";s:2:"us";}}', 'yes'),
(1983, '_site_transient_timeout_theme_roots', '1515462840', 'no'),
(1984, '_site_transient_theme_roots', 'a:4:{s:4:"agus";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(1985, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1515461041;s:7:"checked";a:4:{s:4:"agus";s:3:"1.8";s:13:"twentyfifteen";s:3:"1.8";s:15:"twentyseventeen";s:3:"1.3";s:13:"twentysixteen";s:3:"1.3";}s:8:"response";a:3:{s:13:"twentyfifteen";a:4:{s:5:"theme";s:13:"twentyfifteen";s:11:"new_version";s:3:"1.9";s:3:"url";s:43:"https://wordpress.org/themes/twentyfifteen/";s:7:"package";s:59:"https://downloads.wordpress.org/theme/twentyfifteen.1.9.zip";}s:15:"twentyseventeen";a:4:{s:5:"theme";s:15:"twentyseventeen";s:11:"new_version";s:3:"1.4";s:3:"url";s:45:"https://wordpress.org/themes/twentyseventeen/";s:7:"package";s:61:"https://downloads.wordpress.org/theme/twentyseventeen.1.4.zip";}s:13:"twentysixteen";a:4:{s:5:"theme";s:13:"twentysixteen";s:11:"new_version";s:3:"1.4";s:3:"url";s:43:"https://wordpress.org/themes/twentysixteen/";s:7:"package";s:59:"https://downloads.wordpress.org/theme/twentysixteen.1.4.zip";}}s:12:"translations";a:0:{}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1986, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1515461041;s:8:"response";a:8:{s:19:"akismet/akismet.php";O:8:"stdClass":11:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.0.2";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.0.2.zip";s:5:"icons";a:3:{s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:7:"default";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";}s:7:"banners";a:2:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";s:7:"default";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"4.9.1";s:13:"compatibility";O:8:"stdClass":0:{}}s:36:"contact-form-7/wp-contact-form-7.php";O:8:"stdClass":11:{s:2:"id";s:28:"w.org/plugins/contact-form-7";s:4:"slug";s:14:"contact-form-7";s:6:"plugin";s:36:"contact-form-7/wp-contact-form-7.php";s:11:"new_version";s:5:"4.9.2";s:3:"url";s:45:"https://wordpress.org/plugins/contact-form-7/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/contact-form-7.4.9.2.zip";s:5:"icons";a:3:{s:2:"1x";s:66:"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007";s:2:"2x";s:66:"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007";s:7:"default";s:66:"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007";}s:7:"banners";a:3:{s:2:"2x";s:69:"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901";s:2:"1x";s:68:"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427";s:7:"default";s:69:"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"4.9.1";s:13:"compatibility";O:8:"stdClass":0:{}}s:29:"cf7-polylang/cf7-polylang.php";O:8:"stdClass":11:{s:2:"id";s:26:"w.org/plugins/cf7-polylang";s:4:"slug";s:12:"cf7-polylang";s:6:"plugin";s:29:"cf7-polylang/cf7-polylang.php";s:11:"new_version";s:5:"1.4.7";s:3:"url";s:43:"https://wordpress.org/plugins/cf7-polylang/";s:7:"package";s:55:"https://downloads.wordpress.org/plugin/cf7-polylang.zip";s:5:"icons";a:0:{}s:7:"banners";a:0:{}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"4.9.1";s:13:"compatibility";O:8:"stdClass":0:{}}s:43:"custom-post-type-ui/custom-post-type-ui.php";O:8:"stdClass":11:{s:2:"id";s:33:"w.org/plugins/custom-post-type-ui";s:4:"slug";s:19:"custom-post-type-ui";s:6:"plugin";s:43:"custom-post-type-ui/custom-post-type-ui.php";s:11:"new_version";s:5:"1.5.6";s:3:"url";s:50:"https://wordpress.org/plugins/custom-post-type-ui/";s:7:"package";s:68:"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.5.6.zip";s:5:"icons";a:3:{s:2:"1x";s:72:"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=1069557";s:2:"2x";s:72:"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557";s:7:"default";s:72:"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557";}s:7:"banners";a:3:{s:2:"2x";s:75:"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557";s:2:"1x";s:74:"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=1069557";s:7:"default";s:75:"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"4.9.0";s:13:"compatibility";O:8:"stdClass":0:{}}s:39:"email-subscribers/email-subscribers.php";O:8:"stdClass":11:{s:2:"id";s:31:"w.org/plugins/email-subscribers";s:4:"slug";s:17:"email-subscribers";s:6:"plugin";s:39:"email-subscribers/email-subscribers.php";s:11:"new_version";s:5:"3.4.6";s:3:"url";s:48:"https://wordpress.org/plugins/email-subscribers/";s:7:"package";s:66:"https://downloads.wordpress.org/plugin/email-subscribers.3.4.6.zip";s:5:"icons";a:4:{s:2:"1x";s:70:"https://ps.w.org/email-subscribers/assets/icon-128x128.png?rev=1348697";s:2:"2x";s:70:"https://ps.w.org/email-subscribers/assets/icon-256x256.png?rev=1348697";s:0:"";s:70:"https://ps.w.org/email-subscribers/assets/icon-512x512.png?rev=1348697";s:7:"default";s:70:"https://ps.w.org/email-subscribers/assets/icon-256x256.png?rev=1348697";}s:7:"banners";a:2:{s:2:"1x";s:72:"https://ps.w.org/email-subscribers/assets/banner-772x250.png?rev=1523132";s:7:"default";s:72:"https://ps.w.org/email-subscribers/assets/banner-772x250.png?rev=1523132";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"4.9.1";s:13:"compatibility";O:8:"stdClass":0:{}}s:21:"polylang/polylang.php";O:8:"stdClass":11:{s:2:"id";s:22:"w.org/plugins/polylang";s:4:"slug";s:8:"polylang";s:6:"plugin";s:21:"polylang/polylang.php";s:11:"new_version";s:5:"2.2.7";s:3:"url";s:39:"https://wordpress.org/plugins/polylang/";s:7:"package";s:57:"https://downloads.wordpress.org/plugin/polylang.2.2.7.zip";s:5:"icons";a:3:{s:2:"1x";s:61:"https://ps.w.org/polylang/assets/icon-128x128.png?rev=1331499";s:2:"2x";s:61:"https://ps.w.org/polylang/assets/icon-256x256.png?rev=1331499";s:7:"default";s:61:"https://ps.w.org/polylang/assets/icon-256x256.png?rev=1331499";}s:7:"banners";a:3:{s:2:"2x";s:64:"https://ps.w.org/polylang/assets/banner-1544x500.png?rev=1405299";s:2:"1x";s:63:"https://ps.w.org/polylang/assets/banner-772x250.png?rev=1405299";s:7:"default";s:64:"https://ps.w.org/polylang/assets/banner-1544x500.png?rev=1405299";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"4.9.1";s:13:"compatibility";O:8:"stdClass":0:{}}s:61:"theme-translation-for-polylang/polylang-theme-translation.php";O:8:"stdClass":11:{s:2:"id";s:44:"w.org/plugins/theme-translation-for-polylang";s:4:"slug";s:30:"theme-translation-for-polylang";s:6:"plugin";s:61:"theme-translation-for-polylang/polylang-theme-translation.php";s:11:"new_version";s:5:"2.0.2";s:3:"url";s:61:"https://wordpress.org/plugins/theme-translation-for-polylang/";s:7:"package";s:73:"https://downloads.wordpress.org/plugin/theme-translation-for-polylang.zip";s:5:"icons";a:3:{s:2:"1x";s:83:"https://ps.w.org/theme-translation-for-polylang/assets/icon-128x128.png?rev=1431912";s:2:"2x";s:83:"https://ps.w.org/theme-translation-for-polylang/assets/icon-256x256.png?rev=1431912";s:7:"default";s:83:"https://ps.w.org/theme-translation-for-polylang/assets/icon-256x256.png?rev=1431912";}s:7:"banners";a:0:{}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"4.9.1";s:13:"compatibility";O:8:"stdClass":0:{}}s:17:"weglot/weglot.php";O:8:"stdClass":11:{s:2:"id";s:20:"w.org/plugins/weglot";s:4:"slug";s:6:"weglot";s:6:"plugin";s:17:"weglot/weglot.php";s:11:"new_version";s:5:"1.8.2";s:3:"url";s:37:"https://wordpress.org/plugins/weglot/";s:7:"package";s:55:"https://downloads.wordpress.org/plugin/weglot.1.8.2.zip";s:5:"icons";a:3:{s:2:"1x";s:59:"https://ps.w.org/weglot/assets/icon-128x128.png?rev=1784581";s:2:"2x";s:59:"https://ps.w.org/weglot/assets/icon-256x256.png?rev=1784581";s:7:"default";s:59:"https://ps.w.org/weglot/assets/icon-256x256.png?rev=1784581";}s:7:"banners";a:3:{s:2:"2x";s:62:"https://ps.w.org/weglot/assets/banner-1544x500.jpg?rev=1784581";s:2:"1x";s:61:"https://ps.w.org/weglot/assets/banner-772x250.jpg?rev=1784581";s:7:"default";s:62:"https://ps.w.org/weglot/assets/banner-1544x500.jpg?rev=1784581";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"4.9.1";s:13:"compatibility";O:8:"stdClass":0:{}}}s:12:"translations";a:0:{}s:9:"no_update";a:5:{s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":9:{s:2:"id";s:36:"w.org/plugins/advanced-custom-fields";s:4:"slug";s:22:"advanced-custom-fields";s:6:"plugin";s:30:"advanced-custom-fields/acf.php";s:11:"new_version";s:6:"4.4.12";s:3:"url";s:53:"https://wordpress.org/plugins/advanced-custom-fields/";s:7:"package";s:72:"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.12.zip";s:5:"icons";a:3:{s:2:"1x";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746";s:2:"2x";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746";s:7:"default";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746";}s:7:"banners";a:3:{s:2:"2x";s:78:"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099";s:2:"1x";s:77:"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102";s:7:"default";s:78:"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099";}s:11:"banners_rtl";a:0:{}}s:30:"display-latest-tweets/init.php";O:8:"stdClass":9:{s:2:"id";s:35:"w.org/plugins/display-latest-tweets";s:4:"slug";s:21:"display-latest-tweets";s:6:"plugin";s:30:"display-latest-tweets/init.php";s:11:"new_version";s:5:"2.0.0";s:3:"url";s:52:"https://wordpress.org/plugins/display-latest-tweets/";s:7:"package";s:64:"https://downloads.wordpress.org/plugin/display-latest-tweets.zip";s:5:"icons";a:3:{s:2:"1x";s:74:"https://ps.w.org/display-latest-tweets/assets/icon-128x128.png?rev=1058844";s:2:"2x";s:74:"https://ps.w.org/display-latest-tweets/assets/icon-256x256.png?rev=1058844";s:7:"default";s:74:"https://ps.w.org/display-latest-tweets/assets/icon-256x256.png?rev=1058844";}s:7:"banners";a:2:{s:2:"1x";s:76:"https://ps.w.org/display-latest-tweets/assets/banner-772x250.png?rev=1172069";s:7:"default";s:76:"https://ps.w.org/display-latest-tweets/assets/banner-772x250.png?rev=1172069";}s:11:"banners_rtl";a:0:{}}s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";s:5:"icons";a:3:{s:2:"1x";s:63:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907";s:2:"2x";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";s:7:"default";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";}s:7:"banners";a:2:{s:2:"1x";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";s:7:"default";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";}s:11:"banners_rtl";a:0:{}}s:52:"polylang-theme-strings/mw-polylang-theme-strings.php";O:8:"stdClass":9:{s:2:"id";s:36:"w.org/plugins/polylang-theme-strings";s:4:"slug";s:22:"polylang-theme-strings";s:6:"plugin";s:52:"polylang-theme-strings/mw-polylang-theme-strings.php";s:11:"new_version";s:3:"3.5";s:3:"url";s:53:"https://wordpress.org/plugins/polylang-theme-strings/";s:7:"package";s:69:"https://downloads.wordpress.org/plugin/polylang-theme-strings.3.5.zip";s:5:"icons";a:3:{s:2:"1x";s:75:"https://ps.w.org/polylang-theme-strings/assets/icon-128x128.png?rev=1428148";s:2:"2x";s:75:"https://ps.w.org/polylang-theme-strings/assets/icon-256x256.png?rev=1428148";s:7:"default";s:75:"https://ps.w.org/polylang-theme-strings/assets/icon-256x256.png?rev=1428148";}s:7:"banners";a:0:{}s:11:"banners_rtl";a:0:{}}s:37:"wpml-to-polylang/wpml-to-polylang.php";O:8:"stdClass":9:{s:2:"id";s:30:"w.org/plugins/wpml-to-polylang";s:4:"slug";s:16:"wpml-to-polylang";s:6:"plugin";s:37:"wpml-to-polylang/wpml-to-polylang.php";s:11:"new_version";s:5:"0.2.4";s:3:"url";s:47:"https://wordpress.org/plugins/wpml-to-polylang/";s:7:"package";s:65:"https://downloads.wordpress.org/plugin/wpml-to-polylang.0.2.4.zip";s:5:"icons";a:3:{s:2:"1x";s:69:"https://ps.w.org/wpml-to-polylang/assets/icon-128x128.png?rev=1272595";s:2:"2x";s:69:"https://ps.w.org/wpml-to-polylang/assets/icon-256x256.png?rev=1272595";s:7:"default";s:69:"https://ps.w.org/wpml-to-polylang/assets/icon-256x256.png?rev=1272595";}s:7:"banners";a:3:{s:2:"2x";s:72:"https://ps.w.org/wpml-to-polylang/assets/banner-1544x500.png?rev=1405284";s:2:"1x";s:71:"https://ps.w.org/wpml-to-polylang/assets/banner-772x250.png?rev=1405284";s:7:"default";s:72:"https://ps.w.org/wpml-to-polylang/assets/banner-1544x500.png?rev=1405284";}s:11:"banners_rtl";a:0:{}}}}', 'no'),
(1987, '_transient_doing_cron', '1515492021.9419000148773193359375', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=952 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2, 5, '_wp_attached_file', '2017/10/agus.png'),
(3, 5, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:345;s:6:"height";i:331;s:4:"file";s:16:"2017/10/agus.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"agus-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:16:"agus-300x288.png";s:5:"width";i:300;s:6:"height";i:288;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(4, 6, '_wp_attached_file', '2017/10/bg-4.jpg'),
(5, 6, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:700;s:4:"file";s:16:"2017/10/bg-4.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"bg-4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"bg-4-300x109.jpg";s:5:"width";i:300;s:6:"height";i:109;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:16:"bg-4-768x280.jpg";s:5:"width";i:768;s:6:"height";i:280;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:17:"bg-4-1024x373.jpg";s:5:"width";i:1024;s:6:"height";i:373;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(6, 7, '_pll_strings_translations', 'a:56:{i:0;a:2:{i:0;s:1:"#";i:1;s:1:"#";}i:1;a:2:{i:0;s:13:"0102983745654";i:1;s:13:"0102983745654";}i:2;a:2:{i:0;s:16:" info@domain.com";i:1;s:15:"info@domain.com";}i:3;a:2:{i:0;s:47:"Residential, Business & Event Security Services";i:1;s:64:"سكني، الأعمال والأحداث خدمات الأمن";}i:4;a:2:{i:0;s:132:"We are approved contractor of Security Guard services, providing quality security services to many organizations & private companies";i:1;s:274:"هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.";}i:5;a:2:{i:0;s:32:"Welcome to Guard Agency Services";i:1;s:59:"مرحبا بكم في خدمات وكالة الحراسة";}i:6;a:2:{i:0;s:142:"Consectetur adipisicing elit sed aute ou eiusmod tempor incididunt ulabore et dolore magna aliqua utmn lore enim ad minim veniam quis nostrud.";i:1;s:274:"هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.";}i:7;a:2:{i:0;s:24:"SOLUTIONS YOU CAN DEPEND";i:1;s:46:"الحلول التي يمكن أن تعتمد";}i:8;a:2:{i:0;s:70:"Elit sed aute dou eiusmod tempor incididunt labore dolore magna aliqua";i:1;s:274:"هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.";}i:9;a:2:{i:0;s:68:"<i class="b-advantages-3__icon color-primary flaticon-unlocked"></i>";i:1;s:68:"<i class="b-advantages-3__icon color-primary flaticon-unlocked"></i>";}i:10;a:2:{i:0;s:27:"TALENTED & TRAINED OFFICERS";i:1;s:36:"المدربين و المدربين";}i:11;a:2:{i:0;s:68:"<i class="b-advantages-3__icon color-primary flaticon-umbrella"></i>";i:1;s:68:"<i class="b-advantages-3__icon color-primary flaticon-umbrella"></i>";}i:12;a:2:{i:0;s:25:"WEGUARD SECURITY SERVICES";i:1;s:36:"ويجوارد خدمات الأمن";}i:13;a:2:{i:0;s:64:"<i class="b-advantages-3__icon color-primary flaticon-cctv"></i>";i:1;s:64:"<i class="b-advantages-3__icon color-primary flaticon-cctv"></i>";}i:14;a:2:{i:0;s:77:"<p>Elit sed aute dou eiusmod tempor incididunt labore dolore magna aliqua</p>";i:1;s:274:"هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.";}i:15;a:2:{i:0;s:144:"Consectetur adipisicing elit sed aute ou eiusmod tempor incididunt ulabore et dolore magna aliqua utmn lore enim ad minim veniam quis nostrud.\r\n";i:1;s:274:"هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.";}i:16;a:2:{i:0;s:67:"We Provide Security Services That Matches Your Needs & Your Budget!";i:1;s:103:"نحن نقدم خدمات الأمن التي تتناسب مع احتياجاتك وميزانيتك!";}i:17;a:2:{i:0;s:228:"<div class="col-sm-7">\r\n<section class="b-type-e">\r\n<div class="b-type-e__text">\r\n<p>Eiusmod tempor incididunt sed labore dolore magna aliqua enim tempore sed venia</p>\r\n</div>\r\n</section>\r\n</div>\r\n<div class="col-sm-5"> </div>";i:1;s:228:"<div class="col-sm-7">\r\n<section class="b-type-e">\r\n<div class="b-type-e__text">\r\n<p>Eiusmod tempor incididunt sed labore dolore magna aliqua enim tempore sed venia</p>\r\n</div>\r\n</section>\r\n</div>\r\n<div class="col-sm-5"> </div>";}i:18;a:2:{i:0;s:12:"234-567-8900";i:1;s:12:"234-567-8900";}i:19;a:2:{i:0;s:34:"CONTACT US FOR A COMPETITIVE PRICE";i:1;s:61:"الاتصال بنا للحصول على سعر تنافسي";}i:20;a:2:{i:0;s:21:"quote@guardagency.com";i:1;s:21:"quote@guardagency.com";}i:21;a:2:{i:0;s:162:"\r\nEiusmod tempor incididunt sed labore dolore magna aliqua enim tempore sed venia Eiusmod tempor incididunt sed labore dolore magna aliqua enim tempore sed venia";i:1;s:274:"هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.";}i:22;a:2:{i:0;s:160:"Eiusmod tempor incididunt sed labore dolore magna aliqua enim tempore sed venia Eiusmod tempor incididunt sed labore dolore magna aliqua enim tempore sed venia";i:1;s:274:"هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.";}i:23;a:2:{i:0;s:14:"PEOPLE GUARDED";i:1;s:14:"الحراسة";}i:24;a:2:{i:0;s:4:"1000";i:1;s:4:"1000";}i:25;a:2:{i:0;s:15:"HOMES PROTECTED";i:1;s:29:"المنازل المحمية";}i:26;a:2:{i:0;s:4:"2000";i:1;s:4:"2000";}i:27;a:2:{i:0;s:14:"EVENTS COVERED";i:1;s:29:"المنازل المحمية";}i:28;a:2:{i:0;s:4:"3000";i:1;s:4:"3000";}i:29;a:2:{i:0;s:167:"<p>Eiusmod tempor incididunt sed labore dolore magna aliqua enim tempore sed venia Eiusmod tempor incididunt sed labore dolore magna aliqua enim tempore sed venia</p>";i:1;s:274:"هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.";}i:30;a:2:{i:0;s:48:"We are Efficient & Cost Effective Company having";i:1;s:81:"نحن كفاءة وفعالية من حيث التكلفة الشركة وجود";}i:31;a:2:{i:0;s:586:"<p>More than five decades in industry gives us the power to perform every day and every time.</p>\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed dol eiusmod tempor incididunt dolor magna aliqua enim ad minim veniam quis nostrud exercitation ullamco aboris nisi aliquip commod conseque aute irure dolor in reprehe derit in voluptate velit esvse sed ipsum dolor tempod cillum.</p>\r\n<p>Dolore eu fugiat nulla pariatur enimadm nostrud exercitation ullamco laboris nisi ut aliquip exea cons enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip.</p>";i:1;s:953:"أكثر من خمسة عقود في الصناعة يعطينا القدرة على أداء كل يوم وفي كل مرة.\r\nهناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.\r\nهناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.\r\nهناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.";}i:32;a:2:{i:0;s:14:"What We Offers";i:1;s:17:"ماذا نقدم";}i:33;a:2:{i:0;s:107:"<div class="ui-subtitle-block">Elit sed aute dou eiusmod tempor incididunt labore dolore magna aliqua</div>";i:1;s:311:"<div class="ui-subtitle-block">هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.</div>";}i:34;a:2:{i:0;s:15:"RISK ASSESSMENT";i:1;s:25:"تقييم المخاطر";}i:35;a:2:{i:0;s:54:"<i class="b-advantages-2__icon flaticon-safe-box"></i>";i:1;s:54:"<i class="b-advantages-2__icon flaticon-safe-box"></i>";}i:36;a:2:{i:0;s:134:"Adipisicing elit sed auteh eiusmod tempor ut labore dolore magna aliqua renim adim minim veniam quis nostrud baorem ipsum dolor sit.\r\n";i:1;s:274:"هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.";}i:37;a:2:{i:0;s:12:"CCTV SYSTEMS";i:1;s:63:"أنظمة الدوائر التلفزيونية المغلقة";}i:38;a:2:{i:0;s:51:"<i class="b-advantages-2__icon flaticon-video"></i>";i:1;s:51:"<i class="b-advantages-2__icon flaticon-video"></i>";}i:39;a:2:{i:0;s:12:"WEB SECURITY";i:1;s:17:"أمن الويب";}i:40;a:2:{i:0;s:54:"<i class="b-advantages-2__icon flaticon-internet"></i>";i:1;s:54:"<i class="b-advantages-2__icon flaticon-internet"></i>";}i:41;a:2:{i:0;s:17:"ESCORT MONITORING";i:1;s:23:"إسكورت الرصد";}i:42;a:2:{i:0;s:49:"<i class="b-advantages-2__icon flaticon-cab"></i>";i:1;s:49:"<i class="b-advantages-2__icon flaticon-cab"></i>";}i:43;a:2:{i:0;s:15:"LIFE PROTECTION";i:1;s:23:"حماية الحياة";}i:44;a:2:{i:0;s:54:"<i class="b-advantages-2__icon flaticon-lifebuoy"></i>";i:1;s:54:"<i class="b-advantages-2__icon flaticon-lifebuoy"></i>";}i:45;a:2:{i:0;s:15:"REMOTE GUARDING";i:1;s:21:"ريموت الحرس";}i:46;a:2:{i:0;s:56:"<i class="b-advantages-2__icon flaticon-technology"></i>";i:1;s:56:"<i class="b-advantages-2__icon flaticon-technology"></i>";}i:47;a:2:{i:0;s:262:"<div class="footer-form__info">\r\n<p>Enim ad minim veniam, quis nostrud exercit ation ulamco laboris nisi ut aliquip ex ea comodo consequat. Duis aute irure dolor in reprehenderit voluptate exrcitation rure dolor reprehenderit in voluptate velit esse.</p>\r\n</div>";i:1;s:323:"<div class="footer-form__info">\r\n<p>هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها..</p>\r\n</div>";}i:48;a:2:{i:0;s:44:"HeadOffice: 121 King Street, Melbourne 3000 ";i:1;s:43:"HeadOffice: 121 King Street, Melbourne 3000";}i:49;a:2:{i:0;s:18:"E: info@domain.com";i:1;s:18:"E: info@domain.com";}i:50;a:2:{i:0;s:19:"Protected Customers";i:1;s:31:"العملاء المحميون";}i:51;a:2:{i:0;s:19:"Latest Company News";i:1;s:30:"آخر أخبار الشركة";}i:52;a:2:{i:0;s:15:"P: 234 567 8900";i:1;s:16:"ت: 234 567 8900";}i:53;a:2:{i:0;s:96:"Ask a Quote<span class="b-form-request__title-emphasis"> - Guard Agency Security Services</span>";i:1;s:127:"اسأل اقتباس\r\n<span class="b-form-request__title-emphasis"> - الحراسة وكالة خدمات الأمن\r\n</span>";}i:54;a:2:{i:0;s:185:"<p>If you would like to inquire about a quote for Security Services please fill out the form below.</p>\r\n<p>We will respond with 2h hours OR call us at<strong> 234-567-8900</strong></p>";i:1;s:254:"<p>إذا كنت ترغب في الاستفسار عن عرض أسعار لخدمات الأمن يرجى ملء النموذج أدناه.\r\n</p>\r\n<p>وسوف نرد مع ساعات 2h أو الاتصال بنا على\r\n<strong> 234-567-8900</strong></p>";}i:55;a:2:{i:0;s:104:"Address Company 31 Arish Street - Haram - Giza <br>Address Factory Industrial Area Safa Abozaal 6 pieces";i:1;s:177:"عنوان الشركه \r\n٣١ شارع العريش -الهرم -جيزه\r\n<br>\r\nعنوان المصنع \r\nالمنطقه الصناعيه الصفا ابوزعبل قطعه ٦";}}'),
(7, 8, '_pll_strings_translations', 'a:56:{i:0;a:2:{i:0;s:1:"#";i:1;s:1:"#";}i:1;a:2:{i:0;s:13:"0102983745654";i:1;s:13:"0102983745654";}i:2;a:2:{i:0;s:16:" info@domain.com";i:1;s:15:"info@domain.com";}i:3;a:2:{i:0;s:47:"Residential, Business & Event Security Services";i:1;s:47:"Residential, Business & Event Security Services";}i:4;a:2:{i:0;s:132:"We are approved contractor of Security Guard services, providing quality security services to many organizations & private companies";i:1;s:132:"We are approved contractor of Security Guard services, providing quality security services to many organizations & private companies";}i:5;a:2:{i:0;s:32:"Welcome to Guard Agency Services";i:1;s:32:"Welcome to Guard Agency Services";}i:6;a:2:{i:0;s:142:"Consectetur adipisicing elit sed aute ou eiusmod tempor incididunt ulabore et dolore magna aliqua utmn lore enim ad minim veniam quis nostrud.";i:1;s:142:"Consectetur adipisicing elit sed aute ou eiusmod tempor incididunt ulabore et dolore magna aliqua utmn lore enim ad minim veniam quis nostrud.";}i:7;a:2:{i:0;s:24:"SOLUTIONS YOU CAN DEPEND";i:1;s:24:"SOLUTIONS YOU CAN DEPEND";}i:8;a:2:{i:0;s:70:"Elit sed aute dou eiusmod tempor incididunt labore dolore magna aliqua";i:1;s:70:"Elit sed aute dou eiusmod tempor incididunt labore dolore magna aliqua";}i:9;a:2:{i:0;s:68:"<i class="b-advantages-3__icon color-primary flaticon-unlocked"></i>";i:1;s:68:"<i class="b-advantages-3__icon color-primary flaticon-unlocked"></i>";}i:10;a:2:{i:0;s:27:"TALENTED & TRAINED OFFICERS";i:1;s:27:"TALENTED & TRAINED OFFICERS";}i:11;a:2:{i:0;s:68:"<i class="b-advantages-3__icon color-primary flaticon-umbrella"></i>";i:1;s:68:"<i class="b-advantages-3__icon color-primary flaticon-umbrella"></i>";}i:12;a:2:{i:0;s:25:"WEGUARD SECURITY SERVICES";i:1;s:25:"WEGUARD SECURITY SERVICES";}i:13;a:2:{i:0;s:64:"<i class="b-advantages-3__icon color-primary flaticon-cctv"></i>";i:1;s:64:"<i class="b-advantages-3__icon color-primary flaticon-cctv"></i>";}i:14;a:2:{i:0;s:77:"<p>Elit sed aute dou eiusmod tempor incididunt labore dolore magna aliqua</p>";i:1;s:70:"Elit sed aute dou eiusmod tempor incididunt labore dolore magna aliqua";}i:15;a:2:{i:0;s:144:"Consectetur adipisicing elit sed aute ou eiusmod tempor incididunt ulabore et dolore magna aliqua utmn lore enim ad minim veniam quis nostrud.\r\n";i:1;s:142:"Consectetur adipisicing elit sed aute ou eiusmod tempor incididunt ulabore et dolore magna aliqua utmn lore enim ad minim veniam quis nostrud.";}i:16;a:2:{i:0;s:67:"We Provide Security Services That Matches Your Needs & Your Budget!";i:1;s:67:"We Provide Security Services That Matches Your Needs & Your Budget!";}i:17;a:2:{i:0;s:228:"<div class="col-sm-7">\r\n<section class="b-type-e">\r\n<div class="b-type-e__text">\r\n<p>Eiusmod tempor incididunt sed labore dolore magna aliqua enim tempore sed venia</p>\r\n</div>\r\n</section>\r\n</div>\r\n<div class="col-sm-5"> </div>";i:1;s:228:"<div class="col-sm-7">\r\n<section class="b-type-e">\r\n<div class="b-type-e__text">\r\n<p>Eiusmod tempor incididunt sed labore dolore magna aliqua enim tempore sed venia</p>\r\n</div>\r\n</section>\r\n</div>\r\n<div class="col-sm-5"> </div>";}i:18;a:2:{i:0;s:12:"234-567-8900";i:1;s:12:"234-567-8900";}i:19;a:2:{i:0;s:34:"CONTACT US FOR A COMPETITIVE PRICE";i:1;s:34:"CONTACT US FOR A COMPETITIVE PRICE";}i:20;a:2:{i:0;s:21:"quote@guardagency.com";i:1;s:21:"quote@guardagency.com";}i:21;a:2:{i:0;s:162:"\r\nEiusmod tempor incididunt sed labore dolore magna aliqua enim tempore sed venia Eiusmod tempor incididunt sed labore dolore magna aliqua enim tempore sed venia";i:1;s:160:"Eiusmod tempor incididunt sed labore dolore magna aliqua enim tempore sed venia Eiusmod tempor incididunt sed labore dolore magna aliqua enim tempore sed venia";}i:22;a:2:{i:0;s:160:"Eiusmod tempor incididunt sed labore dolore magna aliqua enim tempore sed venia Eiusmod tempor incididunt sed labore dolore magna aliqua enim tempore sed venia";i:1;s:160:"Eiusmod tempor incididunt sed labore dolore magna aliqua enim tempore sed venia Eiusmod tempor incididunt sed labore dolore magna aliqua enim tempore sed venia";}i:23;a:2:{i:0;s:14:"PEOPLE GUARDED";i:1;s:14:"PEOPLE GUARDED";}i:24;a:2:{i:0;s:4:"1000";i:1;s:4:"1000";}i:25;a:2:{i:0;s:15:"HOMES PROTECTED";i:1;s:15:"HOMES PROTECTED";}i:26;a:2:{i:0;s:4:"2000";i:1;s:4:"2000";}i:27;a:2:{i:0;s:14:"EVENTS COVERED";i:1;s:14:"EVENTS COVERED";}i:28;a:2:{i:0;s:4:"3000";i:1;s:4:"3000";}i:29;a:2:{i:0;s:167:"<p>Eiusmod tempor incididunt sed labore dolore magna aliqua enim tempore sed venia Eiusmod tempor incididunt sed labore dolore magna aliqua enim tempore sed venia</p>";i:1;s:164:"Eiusmod tempor incididunt sed labore dolore magna aliqua enim tempore sed venia Eiusmod tempor incididunt sed labore dolore magna aliqua enim tempore sed venia</p>";}i:30;a:2:{i:0;s:48:"We are Efficient & Cost Effective Company having";i:1;s:48:"We are Efficient & Cost Effective Company having";}i:31;a:2:{i:0;s:586:"<p>More than five decades in industry gives us the power to perform every day and every time.</p>\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed dol eiusmod tempor incididunt dolor magna aliqua enim ad minim veniam quis nostrud exercitation ullamco aboris nisi aliquip commod conseque aute irure dolor in reprehe derit in voluptate velit esvse sed ipsum dolor tempod cillum.</p>\r\n<p>Dolore eu fugiat nulla pariatur enimadm nostrud exercitation ullamco laboris nisi ut aliquip exea cons enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip.</p>";i:1;s:565:"More than five decades in industry gives us the power to perform every day and every time.\r\nLorem ipsum dolor sit amet consectetur adipisicing elit sed dol eiusmod tempor incididunt dolor magna aliqua enim ad minim veniam quis nostrud exercitation ullamco aboris nisi aliquip commod conseque aute irure dolor in reprehe derit in voluptate velit esvse sed ipsum dolor tempod cillum.\r\nDolore eu fugiat nulla pariatur enimadm nostrud exercitation ullamco laboris nisi ut aliquip exea cons enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip.";}i:32;a:2:{i:0;s:14:"What We Offers";i:1;s:14:"What We Offers";}i:33;a:2:{i:0;s:107:"<div class="ui-subtitle-block">Elit sed aute dou eiusmod tempor incididunt labore dolore magna aliqua</div>";i:1;s:107:"<div class="ui-subtitle-block">Elit sed aute dou eiusmod tempor incididunt labore dolore magna aliqua</div>";}i:34;a:2:{i:0;s:15:"RISK ASSESSMENT";i:1;s:15:"RISK ASSESSMENT";}i:35;a:2:{i:0;s:54:"<i class="b-advantages-2__icon flaticon-safe-box"></i>";i:1;s:54:"<i class="b-advantages-2__icon flaticon-safe-box"></i>";}i:36;a:2:{i:0;s:134:"Adipisicing elit sed auteh eiusmod tempor ut labore dolore magna aliqua renim adim minim veniam quis nostrud baorem ipsum dolor sit.\r\n";i:1;s:132:"Adipisicing elit sed auteh eiusmod tempor ut labore dolore magna aliqua renim adim minim veniam quis nostrud baorem ipsum dolor sit.";}i:37;a:2:{i:0;s:12:"CCTV SYSTEMS";i:1;s:12:"CCTV SYSTEMS";}i:38;a:2:{i:0;s:51:"<i class="b-advantages-2__icon flaticon-video"></i>";i:1;s:51:"<i class="b-advantages-2__icon flaticon-video"></i>";}i:39;a:2:{i:0;s:12:"WEB SECURITY";i:1;s:12:"WEB SECURITY";}i:40;a:2:{i:0;s:54:"<i class="b-advantages-2__icon flaticon-internet"></i>";i:1;s:54:"<i class="b-advantages-2__icon flaticon-internet"></i>";}i:41;a:2:{i:0;s:17:"ESCORT MONITORING";i:1;s:17:"ESCORT MONITORING";}i:42;a:2:{i:0;s:49:"<i class="b-advantages-2__icon flaticon-cab"></i>";i:1;s:49:"<i class="b-advantages-2__icon flaticon-cab"></i>";}i:43;a:2:{i:0;s:15:"LIFE PROTECTION";i:1;s:15:"LIFE PROTECTION";}i:44;a:2:{i:0;s:54:"<i class="b-advantages-2__icon flaticon-lifebuoy"></i>";i:1;s:54:"<i class="b-advantages-2__icon flaticon-lifebuoy"></i>";}i:45;a:2:{i:0;s:15:"REMOTE GUARDING";i:1;s:15:"REMOTE GUARDING";}i:46;a:2:{i:0;s:56:"<i class="b-advantages-2__icon flaticon-technology"></i>";i:1;s:56:"<i class="b-advantages-2__icon flaticon-technology"></i>";}i:47;a:2:{i:0;s:262:"<div class="footer-form__info">\r\n<p>Enim ad minim veniam, quis nostrud exercit ation ulamco laboris nisi ut aliquip ex ea comodo consequat. Duis aute irure dolor in reprehenderit voluptate exrcitation rure dolor reprehenderit in voluptate velit esse.</p>\r\n</div>";i:1;s:262:"<div class="footer-form__info">\r\n<p>Enim ad minim veniam, quis nostrud exercit ation ulamco laboris nisi ut aliquip ex ea comodo consequat. Duis aute irure dolor in reprehenderit voluptate exrcitation rure dolor reprehenderit in voluptate velit esse.</p>\r\n</div>";}i:48;a:2:{i:0;s:44:"HeadOffice: 121 King Street, Melbourne 3000 ";i:1;s:43:"HeadOffice: 121 King Street, Melbourne 3000";}i:49;a:2:{i:0;s:18:"E: info@domain.com";i:1;s:18:"E: info@domain.com";}i:50;a:2:{i:0;s:19:"Protected Customers";i:1;s:19:"Protected Customers";}i:51;a:2:{i:0;s:19:"Latest Company News";i:1;s:19:"Latest Company News";}i:52;a:2:{i:0;s:15:"P: 234 567 8900";i:1;s:15:"P: 234 567 8900";}i:53;a:2:{i:0;s:96:"Ask a Quote<span class="b-form-request__title-emphasis"> - Guard Agency Security Services</span>";i:1;s:96:"Ask a Quote<span class="b-form-request__title-emphasis"> - Guard Agency Security Services</span>";}i:54;a:2:{i:0;s:185:"<p>If you would like to inquire about a quote for Security Services please fill out the form below.</p>\r\n<p>We will respond with 2h hours OR call us at<strong> 234-567-8900</strong></p>";i:1;s:185:"<p>If you would like to inquire about a quote for Security Services please fill out the form below.</p>\r\n<p>We will respond with 2h hours OR call us at<strong> 234-567-8900</strong></p>";}i:55;a:2:{i:0;s:104:"Address Company 31 Arish Street - Haram - Giza <br>Address Factory Industrial Area Safa Abozaal 6 pieces";i:1;s:104:"Address Company 31 Arish Street - Haram - Giza <br>Address Factory Industrial Area Safa Abozaal 6 pieces";}}'),
(8, 9, '_wp_attached_file', '2017/10/poster-1.jpg'),
(9, 9, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:390;s:6:"height";i:375;s:4:"file";s:20:"2017/10/poster-1.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"poster-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"poster-1-300x288.jpg";s:5:"width";i:300;s:6:"height";i:288;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(10, 10, '_wp_attached_file', '2017/10/1.mp4'),
(11, 10, '_wp_attachment_metadata', 'a:8:{s:8:"filesize";i:56226200;s:9:"mime_type";s:15:"video/quicktime";s:6:"length";i:163;s:16:"length_formatted";s:4:"2:43";s:5:"width";i:960;s:6:"height";i:540;s:10:"fileformat";s:3:"mp4";s:5:"audio";a:7:{s:10:"dataformat";s:3:"mp4";s:5:"codec";s:19:"ISO/IEC 14496-3 AAC";s:11:"sample_rate";d:44100;s:8:"channels";i:2;s:15:"bits_per_sample";i:16;s:8:"lossless";b:0;s:11:"channelmode";s:6:"stereo";}}'),
(14, 13, '_edit_last', '1'),
(15, 13, '_edit_lock', '1507379241:1'),
(16, 15, '_edit_last', '1'),
(17, 15, '_edit_lock', '1507461708:1'),
(18, 17, '_edit_last', '1'),
(19, 17, '_edit_lock', '1507462069:1'),
(20, 19, '_edit_last', '1'),
(21, 19, '_edit_lock', '1507392555:1'),
(22, 21, '_edit_last', '1'),
(23, 21, '_edit_lock', '1507392728:1'),
(24, 23, '_edit_last', '1'),
(25, 23, '_edit_lock', '1507458545:1'),
(26, 25, '_edit_last', '1'),
(27, 25, '_edit_lock', '1507459438:1'),
(28, 27, '_menu_item_type', 'post_type'),
(29, 27, '_menu_item_menu_item_parent', '0'),
(30, 27, '_menu_item_object_id', '23'),
(31, 27, '_menu_item_object', 'page'),
(32, 27, '_menu_item_target', ''),
(33, 27, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(34, 27, '_menu_item_xfn', ''),
(35, 27, '_menu_item_url', ''),
(37, 28, '_menu_item_type', 'post_type'),
(38, 28, '_menu_item_menu_item_parent', '0'),
(39, 28, '_menu_item_object_id', '19'),
(40, 28, '_menu_item_object', 'page'),
(41, 28, '_menu_item_target', ''),
(42, 28, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(43, 28, '_menu_item_xfn', ''),
(44, 28, '_menu_item_url', ''),
(46, 29, '_menu_item_type', 'post_type'),
(47, 29, '_menu_item_menu_item_parent', '0'),
(48, 29, '_menu_item_object_id', '15'),
(49, 29, '_menu_item_object', 'page'),
(50, 29, '_menu_item_target', ''),
(51, 29, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(52, 29, '_menu_item_xfn', ''),
(53, 29, '_menu_item_url', ''),
(64, 31, '_menu_item_type', 'post_type'),
(65, 31, '_menu_item_menu_item_parent', '0'),
(66, 31, '_menu_item_object_id', '25'),
(67, 31, '_menu_item_object', 'page'),
(68, 31, '_menu_item_target', ''),
(69, 31, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(70, 31, '_menu_item_xfn', ''),
(71, 31, '_menu_item_url', ''),
(73, 32, '_menu_item_type', 'post_type'),
(74, 32, '_menu_item_menu_item_parent', '0'),
(75, 32, '_menu_item_object_id', '21'),
(76, 32, '_menu_item_object', 'page'),
(77, 32, '_menu_item_target', ''),
(78, 32, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(79, 32, '_menu_item_xfn', ''),
(80, 32, '_menu_item_url', ''),
(82, 33, '_menu_item_type', 'post_type'),
(83, 33, '_menu_item_menu_item_parent', '0'),
(84, 33, '_menu_item_object_id', '17'),
(85, 33, '_menu_item_object', 'page'),
(86, 33, '_menu_item_target', ''),
(87, 33, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(88, 33, '_menu_item_xfn', ''),
(89, 33, '_menu_item_url', ''),
(91, 34, '_menu_item_type', 'post_type'),
(92, 34, '_menu_item_menu_item_parent', '0'),
(93, 34, '_menu_item_object_id', '13'),
(94, 34, '_menu_item_object', 'page'),
(95, 34, '_menu_item_target', ''),
(96, 34, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(97, 34, '_menu_item_xfn', ''),
(98, 34, '_menu_item_url', ''),
(100, 35, '_menu_item_type', 'post_type'),
(101, 35, '_menu_item_menu_item_parent', '0'),
(102, 35, '_menu_item_object_id', '23'),
(103, 35, '_menu_item_object', 'page'),
(104, 35, '_menu_item_target', ''),
(105, 35, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(106, 35, '_menu_item_xfn', ''),
(107, 35, '_menu_item_url', ''),
(109, 36, '_menu_item_type', 'post_type'),
(110, 36, '_menu_item_menu_item_parent', '0'),
(111, 36, '_menu_item_object_id', '19'),
(112, 36, '_menu_item_object', 'page'),
(113, 36, '_menu_item_target', ''),
(114, 36, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(115, 36, '_menu_item_xfn', ''),
(116, 36, '_menu_item_url', ''),
(118, 37, '_menu_item_type', 'post_type'),
(119, 37, '_menu_item_menu_item_parent', '0'),
(120, 37, '_menu_item_object_id', '15'),
(121, 37, '_menu_item_object', 'page'),
(122, 37, '_menu_item_target', ''),
(123, 37, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(124, 37, '_menu_item_xfn', ''),
(125, 37, '_menu_item_url', ''),
(145, 41, '_edit_last', '4'),
(146, 41, '_edit_lock', '1512508191:4'),
(147, 43, '_edit_last', '1'),
(148, 43, '_edit_lock', '1512507517:4'),
(149, 46, '_edit_last', '1'),
(150, 46, '_edit_lock', '1507274525:1'),
(151, 48, '_edit_last', '1'),
(152, 48, '_edit_lock', '1507278734:1'),
(153, 50, '_wp_attached_file', '2017/10/1.jpg'),
(154, 50, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:70;s:6:"height";i:70;s:4:"file";s:13:"2017/10/1.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(155, 48, '_thumbnail_id', '50'),
(156, 51, '_thumbnail_id', '50'),
(157, 51, '_edit_last', '1'),
(158, 51, '_edit_lock', '1507273841:1'),
(159, 54, '_edit_last', '1'),
(160, 54, '_edit_lock', '1512204942:2'),
(161, 56, '_wp_attached_file', '2017/10/1-1.jpg'),
(162, 56, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:70;s:6:"height";i:70;s:4:"file";s:15:"2017/10/1-1.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(163, 54, '_thumbnail_id', '56'),
(164, 46, '_thumbnail_id', '50'),
(165, 58, '_edit_last', '1'),
(166, 58, '_edit_lock', '1507277671:1'),
(167, 59, '_wp_attached_file', '2017/10/2.jpg'),
(168, 59, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:360;s:6:"height";i:205;s:4:"file";s:13:"2017/10/2.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:13:"2-300x171.jpg";s:5:"width";i:300;s:6:"height";i:171;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(169, 58, '_thumbnail_id', '59'),
(170, 61, '_thumbnail_id', '59'),
(171, 61, '_edit_last', '1'),
(172, 61, '_edit_lock', '1507275088:1'),
(173, 64, '_edit_last', '1'),
(174, 64, '_edit_lock', '1509890748:2'),
(175, 65, '_wp_attached_file', '2017/10/2-1.jpg'),
(176, 65, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:360;s:6:"height";i:205;s:4:"file";s:15:"2017/10/2-1.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"2-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:15:"2-1-300x171.jpg";s:5:"width";i:300;s:6:"height";i:171;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(177, 64, '_thumbnail_id', '65'),
(178, 63, '_edit_lock', '1507275198:1'),
(179, 63, '_edit_last', '1'),
(180, 63, '_thumbnail_id', '59'),
(181, 68, '_edit_last', '1'),
(182, 68, '_edit_lock', '1512204905:2'),
(183, 68, '_thumbnail_id', '59'),
(184, 70, '_thumbnail_id', '59'),
(185, 70, '_edit_last', '1'),
(186, 70, '_edit_lock', '1512204890:2'),
(193, 74, '_form', '<div class="col-sm-6">\n    [text* your-name  class:form-control  placeholder "الاسم"] \n</div>\n<div class="col-sm-6">\n[tel tel-734 class:form-control placeholder "التليفون"]\n</div>\n<div class="col-sm-12">\n    [email* your-email class:form-control  placeholder "البريد الالكتروني"] \n</div>\n<div class="col-sm-12">\n    [text your-subject class:form-control  placeholder "العنوان"]\n</div>\n<div class="col-sm-12">\n    [textarea your-message class:form-control  placeholder "الرسالة"] \n</div>\n[submit class:btn-effect2]'),
(194, 74, '_mail', 'a:9:{s:6:"active";b:1;s:7:"subject";s:32:"ahmedelsayed.me "[your-subject]"";s:6:"sender";s:32:"[your-name] <me@ahmedelsayed.me>";s:9:"recipient";s:18:"me@ahmedelsayed.me";s:4:"body";s:189:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on ahmedelsayed.me (http://localhost/psolvingegypt/agus)";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(195, 74, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:32:"ahmedelsayed.me "[your-subject]"";s:6:"sender";s:36:"ahmedelsayed.me <me@ahmedelsayed.me>";s:9:"recipient";s:12:"[your-email]";s:4:"body";s:131:"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on ahmedelsayed.me (http://localhost/psolvingegypt/agus)";s:18:"additional_headers";s:28:"Reply-To: me@ahmedelsayed.me";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(196, 74, '_messages', 'a:23:{s:12:"mail_sent_ok";s:45:"Thank you for your message. It has been sent.";s:12:"mail_sent_ng";s:71:"There was an error trying to send your message. Please try again later.";s:16:"validation_error";s:61:"One or more fields have an error. Please check and try again.";s:4:"spam";s:71:"There was an error trying to send your message. Please try again later.";s:12:"accept_terms";s:69:"You must accept the terms and conditions before sending your message.";s:16:"invalid_required";s:22:"The field is required.";s:16:"invalid_too_long";s:22:"The field is too long.";s:17:"invalid_too_short";s:23:"The field is too short.";s:12:"invalid_date";s:29:"The date format is incorrect.";s:14:"date_too_early";s:44:"The date is before the earliest one allowed.";s:13:"date_too_late";s:41:"The date is after the latest one allowed.";s:13:"upload_failed";s:46:"There was an unknown error uploading the file.";s:24:"upload_file_type_invalid";s:49:"You are not allowed to upload files of this type.";s:21:"upload_file_too_large";s:20:"The file is too big.";s:23:"upload_failed_php_error";s:38:"There was an error uploading the file.";s:14:"invalid_number";s:29:"The number format is invalid.";s:16:"number_too_small";s:47:"The number is smaller than the minimum allowed.";s:16:"number_too_large";s:46:"The number is larger than the maximum allowed.";s:23:"quiz_answer_not_correct";s:36:"The answer to the quiz is incorrect.";s:17:"captcha_not_match";s:31:"Your entered code is incorrect.";s:13:"invalid_email";s:38:"The e-mail address entered is invalid.";s:11:"invalid_url";s:19:"The URL is invalid.";s:11:"invalid_tel";s:32:"The telephone number is invalid.";}'),
(197, 74, '_additional_settings', ''),
(198, 74, '_locale', 'ar'),
(205, 75, '_form', '<div class="col-sm-6">\n    [text* your-name  class:form-control  placeholder "Name"] \n</div>\n<div class="col-sm-6">\n[tel tel-734 class:form-control placeholder "Phone"]\n</div>\n<div class="col-sm-12">\n    [email* your-email class:form-control  placeholder "Email"] \n</div>\n<div class="col-sm-12">\n    [text your-subject class:form-control  placeholder "Service Location (Address)"]\n</div>\n<div class="col-sm-12">\n    [textarea your-message class:form-control  placeholder "message"] \n</div>\n[submit class:btn-effect2]'),
(206, 75, '_mail', 'a:9:{s:6:"active";b:1;s:7:"subject";s:32:"ahmedelsayed.me "[your-subject]"";s:6:"sender";s:32:"[your-name] <me@ahmedelsayed.me>";s:9:"recipient";s:18:"me@ahmedelsayed.me";s:4:"body";s:189:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on ahmedelsayed.me (http://localhost/psolvingegypt/agus)";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(207, 75, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:32:"ahmedelsayed.me "[your-subject]"";s:6:"sender";s:36:"ahmedelsayed.me <me@ahmedelsayed.me>";s:9:"recipient";s:12:"[your-email]";s:4:"body";s:131:"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on ahmedelsayed.me (http://localhost/psolvingegypt/agus)";s:18:"additional_headers";s:28:"Reply-To: me@ahmedelsayed.me";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(208, 75, '_messages', 'a:23:{s:12:"mail_sent_ok";s:45:"Thank you for your message. It has been sent.";s:12:"mail_sent_ng";s:71:"There was an error trying to send your message. Please try again later.";s:16:"validation_error";s:61:"One or more fields have an error. Please check and try again.";s:4:"spam";s:71:"There was an error trying to send your message. Please try again later.";s:12:"accept_terms";s:69:"You must accept the terms and conditions before sending your message.";s:16:"invalid_required";s:22:"The field is required.";s:16:"invalid_too_long";s:22:"The field is too long.";s:17:"invalid_too_short";s:23:"The field is too short.";s:12:"invalid_date";s:29:"The date format is incorrect.";s:14:"date_too_early";s:44:"The date is before the earliest one allowed.";s:13:"date_too_late";s:41:"The date is after the latest one allowed.";s:13:"upload_failed";s:46:"There was an unknown error uploading the file.";s:24:"upload_file_type_invalid";s:49:"You are not allowed to upload files of this type.";s:21:"upload_file_too_large";s:20:"The file is too big.";s:23:"upload_failed_php_error";s:38:"There was an error uploading the file.";s:14:"invalid_number";s:29:"The number format is invalid.";s:16:"number_too_small";s:47:"The number is smaller than the minimum allowed.";s:16:"number_too_large";s:46:"The number is larger than the maximum allowed.";s:23:"quiz_answer_not_correct";s:36:"The answer to the quiz is incorrect.";s:17:"captcha_not_match";s:31:"Your entered code is incorrect.";s:13:"invalid_email";s:38:"The e-mail address entered is invalid.";s:11:"invalid_url";s:19:"The URL is invalid.";s:11:"invalid_tel";s:32:"The telephone number is invalid.";}'),
(209, 75, '_additional_settings', ''),
(210, 75, '_locale', 'en_US'),
(211, 76, '_edit_last', '1'),
(215, 76, 'position', 'normal'),
(216, 76, 'layout', 'no_box'),
(217, 76, 'hide_on_screen', ''),
(218, 76, '_edit_lock', '1507453734:1'),
(228, 13, '_wp_page_template', 'template-parts/page-aboutus-template.php'),
(232, 82, '_wp_page_template', 'template-parts/page-aboutus-template.php'),
(233, 82, '_edit_last', '1'),
(234, 82, '_edit_lock', '1507373890:1'),
(237, 43, '_wp_page_template', 'template-parts/home-page.php'),
(238, 41, '_wp_page_template', 'template-parts/home-page.php'),
(242, 87, '_edit_last', '2'),
(243, 87, '_edit_lock', '1512484289:2'),
(244, 88, '_wp_attached_file', '2017/10/1-2.jpg'),
(245, 88, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:450;s:6:"height";i:300;s:4:"file";s:15:"2017/10/1-2.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"1-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:15:"1-2-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(246, 89, '_wp_attached_file', '2017/10/2-2.jpg'),
(247, 89, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:450;s:6:"height";i:300;s:4:"file";s:15:"2017/10/2-2.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"2-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:15:"2-2-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(248, 90, '_wp_attached_file', '2017/10/3.jpg'),
(249, 90, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:450;s:6:"height";i:300;s:4:"file";s:13:"2017/10/3.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:13:"3-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(250, 91, '_wp_attached_file', '2017/10/4.jpg'),
(251, 91, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:450;s:6:"height";i:300;s:4:"file";s:13:"2017/10/4.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:13:"4-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(252, 87, '_thumbnail_id', '191'),
(253, 93, '_thumbnail_id', '91'),
(254, 93, '_edit_last', '1'),
(255, 93, '_edit_lock', '1507370396:1'),
(256, 95, '_edit_last', '2'),
(257, 95, '_edit_lock', '1512483909:2'),
(258, 95, '_thumbnail_id', '188'),
(259, 97, '_thumbnail_id', '90'),
(260, 97, '_edit_last', '1'),
(261, 97, '_edit_lock', '1507370561:1'),
(262, 99, '_edit_last', '2'),
(263, 99, '_edit_lock', '1512483908:2'),
(264, 99, '_thumbnail_id', '190'),
(265, 101, '_thumbnail_id', '89'),
(266, 101, '_edit_last', '1'),
(267, 101, '_edit_lock', '1507370639:1'),
(268, 104, '_edit_last', '2'),
(269, 104, '_edit_lock', '1512483767:2'),
(270, 104, '_thumbnail_id', '187'),
(271, 106, '_thumbnail_id', '186'),
(272, 106, '_edit_last', '2'),
(273, 106, '_edit_lock', '1512484048:2'),
(283, 109, '_menu_item_type', 'post_type'),
(284, 109, '_menu_item_menu_item_parent', '0'),
(285, 109, '_menu_item_object_id', '43'),
(286, 109, '_menu_item_object', 'page'),
(287, 109, '_menu_item_target', ''),
(288, 109, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(289, 109, '_menu_item_xfn', ''),
(290, 109, '_menu_item_url', ''),
(310, 112, '_menu_item_type', 'post_type'),
(311, 112, '_menu_item_menu_item_parent', '0'),
(312, 112, '_menu_item_object_id', '82'),
(313, 112, '_menu_item_object', 'page'),
(314, 112, '_menu_item_target', ''),
(315, 112, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(316, 112, '_menu_item_xfn', ''),
(317, 112, '_menu_item_url', ''),
(319, 113, '_menu_item_type', 'post_type'),
(320, 113, '_menu_item_menu_item_parent', '0'),
(321, 113, '_menu_item_object_id', '41'),
(322, 113, '_menu_item_object', 'page'),
(323, 113, '_menu_item_target', ''),
(324, 113, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(325, 113, '_menu_item_xfn', ''),
(326, 113, '_menu_item_url', ''),
(328, 114, '_menu_item_type', 'post_type'),
(329, 114, '_menu_item_menu_item_parent', '0'),
(330, 114, '_menu_item_object_id', '82'),
(331, 114, '_menu_item_object', 'page'),
(332, 114, '_menu_item_target', ''),
(333, 114, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(334, 114, '_menu_item_xfn', ''),
(335, 114, '_menu_item_url', ''),
(337, 115, '_menu_item_type', 'post_type'),
(338, 115, '_menu_item_menu_item_parent', '0'),
(339, 115, '_menu_item_object_id', '41'),
(340, 115, '_menu_item_object', 'page'),
(341, 115, '_menu_item_target', ''),
(342, 115, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(343, 115, '_menu_item_xfn', ''),
(344, 115, '_menu_item_url', ''),
(346, 116, '_menu_item_type', 'post_type'),
(347, 116, '_menu_item_menu_item_parent', '0'),
(348, 116, '_menu_item_object_id', '43'),
(349, 116, '_menu_item_object', 'page'),
(350, 116, '_menu_item_target', ''),
(351, 116, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(352, 116, '_menu_item_xfn', ''),
(353, 116, '_menu_item_url', ''),
(355, 117, '_menu_item_type', 'post_type'),
(356, 117, '_menu_item_menu_item_parent', '0'),
(357, 117, '_menu_item_object_id', '25'),
(358, 117, '_menu_item_object', 'page'),
(359, 117, '_menu_item_target', ''),
(360, 117, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(361, 117, '_menu_item_xfn', ''),
(362, 117, '_menu_item_url', ''),
(364, 118, '_menu_item_type', 'post_type'),
(365, 118, '_menu_item_menu_item_parent', '0'),
(366, 118, '_menu_item_object_id', '21'),
(367, 118, '_menu_item_object', 'page'),
(368, 118, '_menu_item_target', ''),
(369, 118, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(370, 118, '_menu_item_xfn', ''),
(371, 118, '_menu_item_url', ''),
(373, 119, '_menu_item_type', 'post_type'),
(374, 119, '_menu_item_menu_item_parent', '0'),
(375, 119, '_menu_item_object_id', '17'),
(376, 119, '_menu_item_object', 'page'),
(377, 119, '_menu_item_target', ''),
(378, 119, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(379, 119, '_menu_item_xfn', ''),
(380, 119, '_menu_item_url', ''),
(382, 120, '_menu_item_type', 'post_type'),
(383, 120, '_menu_item_menu_item_parent', '0'),
(384, 120, '_menu_item_object_id', '13'),
(385, 120, '_menu_item_object', 'page'),
(386, 120, '_menu_item_target', ''),
(387, 120, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(388, 120, '_menu_item_xfn', ''),
(389, 120, '_menu_item_url', ''),
(391, 23, '_wp_page_template', 'template-parts/page-contcat.php'),
(392, 23, 'map', ''),
(393, 23, '_map', 'field_59d79f27178d3'),
(394, 23, '_', 'field_59d79f4b178d4'),
(395, 25, '_wp_page_template', 'template-parts/page-contcat.php'),
(396, 19, '_wp_page_template', 'template-parts/page-news.php'),
(397, 21, '_wp_page_template', 'template-parts/page-news.php'),
(398, 127, 'map', ''),
(399, 127, '_map', 'field_59d79f27178d3'),
(400, 127, '_', 'field_59d79f4b178d4'),
(401, 76, 'field_59d9e493447e7', 'a:14:{s:3:"key";s:19:"field_59d9e493447e7";s:5:"label";s:8:"location";s:4:"name";s:8:"location";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(402, 76, 'field_59d9e4a6447e8', 'a:15:{s:3:"key";s:19:"field_59d9e4a6447e8";s:5:"label";s:5:"phone";s:4:"name";s:5:"phone";s:4:"type";s:6:"number";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:3:"min";s:0:"";s:3:"max";s:0:"";s:4:"step";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(403, 76, 'field_59d9e4b7447e9', 'a:12:{s:3:"key";s:19:"field_59d9e4b7447e9";s:5:"label";s:6:"E-mail";s:4:"name";s:6:"e-mail";s:4:"type";s:5:"email";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(406, 130, 'map', ''),
(407, 130, '_map', 'field_59d79f27178d3'),
(408, 130, 'location', '36 King Street, Melbourne'),
(409, 130, '_location', 'field_59d9e493447e7'),
(410, 130, 'phone', '2345678900'),
(411, 130, '_phone', 'field_59d9e4a6447e8'),
(412, 130, 'e-mail', 'info@weguard.com'),
(413, 130, '_e-mail', 'field_59d9e4b7447e9'),
(414, 23, 'location', '36 King Street, Melbourne'),
(415, 23, '_location', 'field_59d9e493447e7'),
(416, 23, 'phone', '2345678900'),
(417, 23, '_phone', 'field_59d9e4a6447e8'),
(418, 23, 'e-mail', 'info@weguard.com'),
(419, 23, '_e-mail', 'field_59d9e4b7447e9'),
(420, 76, 'field_59d9e602c9a20', 'a:12:{s:3:"key";s:19:"field_59d9e602c9a20";s:5:"label";s:3:"map";s:4:"name";s:3:"map";s:4:"type";s:10:"google_map";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:10:"center_lat";s:10:"30.0566087";s:10:"center_lng";s:9:"31.312598";s:4:"zoom";s:2:"10";s:6:"height";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;}'),
(423, 76, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"23";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(424, 25, 'e-mail', 'info@domain.com'),
(426, 131, '_form', '<div class="col-md-6">\n   <div class="row">\n<div class="col-md-6">\n     [text* your-name class:form-control placeholder "Name"] \n     [email* your-email class:form-control placeholder "Email"]      \n</div>\n<div class="col-md-6">\n    [tel tel-364 class:form-control placeholder "Phone"] \n    [text your-subject class:form-control placeholder "Subject"]\n</div> \n[submit class:btn-effect2]\n</div></div>\n<div class="col-md-6">\n    [textarea your-message class:form-control placeholder "Message"]\n</div>'),
(427, 131, '_mail', 'a:9:{s:6:"active";b:1;s:7:"subject";s:21:"AGUS "[your-subject]"";s:6:"sender";s:32:"[your-name] <me@ahmedelsayed.me>";s:9:"recipient";s:18:"me@ahmedelsayed.me";s:4:"body";s:178:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on AGUS (http://localhost/psolvingegypt/agus)";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(428, 131, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:21:"AGUS "[your-subject]"";s:6:"sender";s:25:"AGUS <me@ahmedelsayed.me>";s:9:"recipient";s:12:"[your-email]";s:4:"body";s:120:"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on AGUS (http://localhost/psolvingegypt/agus)";s:18:"additional_headers";s:28:"Reply-To: me@ahmedelsayed.me";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(429, 131, '_messages', 'a:23:{s:12:"mail_sent_ok";s:45:"Thank you for your message. It has been sent.";s:12:"mail_sent_ng";s:71:"There was an error trying to send your message. Please try again later.";s:16:"validation_error";s:61:"One or more fields have an error. Please check and try again.";s:4:"spam";s:71:"There was an error trying to send your message. Please try again later.";s:12:"accept_terms";s:69:"You must accept the terms and conditions before sending your message.";s:16:"invalid_required";s:22:"The field is required.";s:16:"invalid_too_long";s:22:"The field is too long.";s:17:"invalid_too_short";s:23:"The field is too short.";s:12:"invalid_date";s:29:"The date format is incorrect.";s:14:"date_too_early";s:44:"The date is before the earliest one allowed.";s:13:"date_too_late";s:41:"The date is after the latest one allowed.";s:13:"upload_failed";s:46:"There was an unknown error uploading the file.";s:24:"upload_file_type_invalid";s:49:"You are not allowed to upload files of this type.";s:21:"upload_file_too_large";s:20:"The file is too big.";s:23:"upload_failed_php_error";s:38:"There was an error uploading the file.";s:14:"invalid_number";s:29:"The number format is invalid.";s:16:"number_too_small";s:47:"The number is smaller than the minimum allowed.";s:16:"number_too_large";s:46:"The number is larger than the maximum allowed.";s:23:"quiz_answer_not_correct";s:36:"The answer to the quiz is incorrect.";s:17:"captcha_not_match";s:31:"Your entered code is incorrect.";s:13:"invalid_email";s:38:"The e-mail address entered is invalid.";s:11:"invalid_url";s:19:"The URL is invalid.";s:11:"invalid_tel";s:32:"The telephone number is invalid.";}'),
(430, 131, '_additional_settings', ''),
(431, 131, '_locale', 'en_US'),
(433, 132, '_form', '<div class="col-md-6">\n   <div class="row">\n<div class="col-md-6">\n [text* your-name class:form-control placeholder "الاسم"] \n  [email* your-email  class:form-control placeholder "البريد الالكتروني"]      \n</div>\n<div class="col-md-6">\n    [tel tel-364 class:form-control placeholder "التليفون" ] \n    [text your-subject class:form-control placeholder "الموضوع" ]\n</div> \n[submit class:btn-effect2]\n</div>\n</div>\n<div class="col-md-6">\n     [textarea your-message class:form-control placeholder "الرسالة"]\n</div>'),
(434, 132, '_mail', 'a:9:{s:6:"active";b:1;s:7:"subject";s:21:"AGUS "[your-subject]"";s:6:"sender";s:32:"[your-name] <me@ahmedelsayed.me>";s:9:"recipient";s:18:"me@ahmedelsayed.me";s:4:"body";s:178:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on AGUS (http://localhost/psolvingegypt/agus)";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(435, 132, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:21:"AGUS "[your-subject]"";s:6:"sender";s:25:"AGUS <me@ahmedelsayed.me>";s:9:"recipient";s:12:"[your-email]";s:4:"body";s:120:"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on AGUS (http://localhost/psolvingegypt/agus)";s:18:"additional_headers";s:28:"Reply-To: me@ahmedelsayed.me";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(436, 132, '_messages', 'a:23:{s:12:"mail_sent_ok";s:45:"Thank you for your message. It has been sent.";s:12:"mail_sent_ng";s:71:"There was an error trying to send your message. Please try again later.";s:16:"validation_error";s:61:"One or more fields have an error. Please check and try again.";s:4:"spam";s:71:"There was an error trying to send your message. Please try again later.";s:12:"accept_terms";s:69:"You must accept the terms and conditions before sending your message.";s:16:"invalid_required";s:22:"The field is required.";s:16:"invalid_too_long";s:22:"The field is too long.";s:17:"invalid_too_short";s:23:"The field is too short.";s:12:"invalid_date";s:29:"The date format is incorrect.";s:14:"date_too_early";s:44:"The date is before the earliest one allowed.";s:13:"date_too_late";s:41:"The date is after the latest one allowed.";s:13:"upload_failed";s:46:"There was an unknown error uploading the file.";s:24:"upload_file_type_invalid";s:49:"You are not allowed to upload files of this type.";s:21:"upload_file_too_large";s:20:"The file is too big.";s:23:"upload_failed_php_error";s:38:"There was an error uploading the file.";s:14:"invalid_number";s:29:"The number format is invalid.";s:16:"number_too_small";s:47:"The number is smaller than the minimum allowed.";s:16:"number_too_large";s:46:"The number is larger than the maximum allowed.";s:23:"quiz_answer_not_correct";s:36:"The answer to the quiz is incorrect.";s:17:"captcha_not_match";s:31:"Your entered code is incorrect.";s:13:"invalid_email";s:38:"The e-mail address entered is invalid.";s:11:"invalid_url";s:19:"The URL is invalid.";s:11:"invalid_tel";s:32:"The telephone number is invalid.";}'),
(437, 132, '_additional_settings', ''),
(438, 132, '_locale', 'ar'),
(446, 15, '_wp_page_template', 'template-parts/page-services.php'),
(447, 17, '_wp_page_template', 'template-parts/page-services.php'),
(448, 25, 'location', 'HeadOffice: 121 King Street, Melbourne 3000'),
(449, 25, 'phone', '234 567 8900'),
(450, 134, '_edit_last', '1'),
(451, 134, 'field_59da0215fe001', 'a:14:{s:3:"key";s:19:"field_59da0215fe001";s:5:"label";s:9:"Title Why";s:4:"name";s:9:"title_why";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(452, 134, 'field_59da0240fe002', 'a:13:{s:3:"key";s:19:"field_59da0240fe002";s:5:"label";s:15:"Description Why";s:4:"name";s:15:"description_why";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:10:"formatting";s:2:"br";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(453, 134, 'field_59da0287fe003', 'a:14:{s:3:"key";s:19:"field_59da0287fe003";s:5:"label";s:7:"Title 1";s:4:"name";s:7:"title_1";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(454, 134, 'field_59da02defe004', 'a:13:{s:3:"key";s:19:"field_59da02defe004";s:5:"label";s:13:"Description 1";s:4:"name";s:13:"description_1";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:10:"formatting";s:2:"br";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;}'),
(455, 134, 'field_59da02effe005', 'a:14:{s:3:"key";s:19:"field_59da02effe005";s:5:"label";s:7:"Title 2";s:4:"name";s:7:"title_2";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:4;}'),
(456, 134, 'field_59da0301fe006', 'a:13:{s:3:"key";s:19:"field_59da0301fe006";s:5:"label";s:13:"Description 2";s:4:"name";s:13:"description_2";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:10:"formatting";s:2:"br";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:5;}'),
(457, 134, 'field_59da031afe007', 'a:14:{s:3:"key";s:19:"field_59da031afe007";s:5:"label";s:7:"Title 3";s:4:"name";s:7:"title_3";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:6;}'),
(458, 134, 'field_59da0339fe008', 'a:13:{s:3:"key";s:19:"field_59da0339fe008";s:5:"label";s:13:"Description 3";s:4:"name";s:13:"description_3";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:10:"formatting";s:2:"br";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:7;}'),
(460, 134, 'position', 'normal'),
(461, 134, 'layout', 'no_box'),
(462, 134, 'hide_on_screen', ''),
(463, 134, '_edit_lock', '1509872624:2'),
(464, 135, 'title_why', 'Why Choose Us'),
(465, 135, '_title_why', 'field_59da0215fe001'),
(466, 135, 'description_why', 'Elit sed aute dou eiusmod tempor labore dolore magna\r\n'),
(467, 135, '_description_why', 'field_59da0240fe002'),
(468, 135, 'title_1', 'Mobile Surveilence of Vehicles'),
(469, 135, '_title_1', 'field_59da0287fe003'),
(470, 135, 'description_1', 'Borem ipsum dolor sit amet consecteur adipisicing elit sed do eiusmod tempor incididunt ulabore et dolore magna aliqua enim ad minim veniam\r\n'),
(471, 135, '_description_1', 'field_59da02defe004'),
(472, 135, 'title_2', 'Best CCTV’s System Network'),
(473, 135, '_title_2', 'field_59da02effe005'),
(474, 135, 'description_2', 'Borem ipsum dolor sit amet consecteur adipisicing elit sed do eiusmod tempor incididunt ulabore et dolore magna aliqua enim ad minim veniam\r\n\r\n'),
(475, 135, '_description_2', 'field_59da0301fe006'),
(476, 135, 'title_3', 'Technical Security Surveys'),
(477, 135, '_title_3', 'field_59da031afe007'),
(478, 135, 'description_3', 'Borem ipsum dolor sit amet consecteur adipisicing elit sed do eiusmod tempor incididunt ulabore et dolore magna aliqua enim ad minim veniam\r\n'),
(479, 135, '_description_3', 'field_59da0339fe008'),
(480, 15, 'title_why', 'Why Choose Us'),
(481, 15, '_title_why', 'field_59da0215fe001'),
(482, 15, 'description_why', 'Elit sed aute dou eiusmod tempor labore dolore magna\r\n'),
(483, 15, '_description_why', 'field_59da0240fe002'),
(484, 15, 'title_1', 'Mobile Surveilence of Vehicles'),
(485, 15, '_title_1', 'field_59da0287fe003'),
(486, 15, 'description_1', 'Borem ipsum dolor sit amet consecteur adipisicing elit sed do eiusmod tempor incididunt ulabore et dolore magna aliqua enim ad minim veniam\r\n'),
(487, 15, '_description_1', 'field_59da02defe004'),
(488, 15, 'title_2', 'Best CCTV’s System Network'),
(489, 15, '_title_2', 'field_59da02effe005'),
(490, 15, 'description_2', 'Borem ipsum dolor sit amet consecteur adipisicing elit sed do eiusmod tempor incididunt ulabore et dolore magna aliqua enim ad minim veniam\r\n\r\n'),
(491, 15, '_description_2', 'field_59da0301fe006'),
(492, 15, 'title_3', 'Technical Security Surveys'),
(493, 15, '_title_3', 'field_59da031afe007'),
(494, 15, 'description_3', 'Borem ipsum dolor sit amet consecteur adipisicing elit sed do eiusmod tempor incididunt ulabore et dolore magna aliqua enim ad minim veniam\r\n'),
(495, 15, '_description_3', 'field_59da0339fe008'),
(496, 136, 'title_why', 'لماذا أخترتنا'),
(497, 136, '_title_why', 'field_59da0215fe001'),
(498, 136, 'description_why', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.'),
(499, 136, '_description_why', 'field_59da0240fe002'),
(500, 136, 'title_1', 'مسوحات الأمن التقني'),
(501, 136, '_title_1', 'field_59da0287fe003'),
(502, 136, 'description_1', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.'),
(503, 136, '_description_1', 'field_59da02defe004'),
(504, 136, 'title_2', 'أفضل شبكة نظام الدوائر التلفزيونية المغلقة'),
(505, 136, '_title_2', 'field_59da02effe005'),
(506, 136, 'description_2', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.'),
(507, 136, '_description_2', 'field_59da0301fe006'),
(508, 136, 'title_3', 'مراقبة المحمول من المركبات'),
(509, 136, '_title_3', 'field_59da031afe007'),
(510, 136, 'description_3', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.'),
(511, 136, '_description_3', 'field_59da0339fe008'),
(512, 17, 'title_why', 'لماذا أخترتنا'),
(513, 17, '_title_why', 'field_59da0215fe001'),
(514, 17, 'description_why', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.'),
(515, 17, '_description_why', 'field_59da0240fe002'),
(516, 17, 'title_1', 'مسوحات الأمن التقني'),
(517, 17, '_title_1', 'field_59da0287fe003'),
(518, 17, 'description_1', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.'),
(519, 17, '_description_1', 'field_59da02defe004'),
(520, 17, 'title_2', 'أفضل شبكة نظام الدوائر التلفزيونية المغلقة'),
(521, 17, '_title_2', 'field_59da02effe005'),
(522, 17, 'description_2', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.'),
(523, 17, '_description_2', 'field_59da0301fe006'),
(524, 17, 'title_3', 'مراقبة المحمول من المركبات'),
(525, 17, '_title_3', 'field_59da031afe007'),
(526, 17, 'description_3', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.'),
(527, 17, '_description_3', 'field_59da0339fe008'),
(528, 134, 'field_59da05264cc99', 'a:14:{s:3:"key";s:19:"field_59da05264cc99";s:5:"label";s:10:"Title Best";s:4:"name";s:10:"title_best";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:8;}'),
(529, 134, 'field_59da05404cc9a', 'a:13:{s:3:"key";s:19:"field_59da05404cc9a";s:5:"label";s:16:"Description Best";s:4:"name";s:16:"description_best";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:10:"formatting";s:2:"br";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:9;}'),
(530, 134, 'field_59da056f4cc9b', 'a:14:{s:3:"key";s:19:"field_59da056f4cc9b";s:5:"label";s:10:"Title What";s:4:"name";s:10:"title_what";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:10;}'),
(531, 134, 'field_59da064b4cc9c', 'a:13:{s:3:"key";s:19:"field_59da064b4cc9c";s:5:"label";s:16:"Description What";s:4:"name";s:16:"description_what";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:10:"formatting";s:2:"br";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:11;}'),
(532, 134, 'field_59da06784cc9d', 'a:12:{s:3:"key";s:19:"field_59da06784cc9d";s:5:"label";s:4:"what";s:4:"name";s:4:"what";s:4:"type";s:11:"post_object";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:9:"post_type";a:1:{i:0;s:11:"option-tree";}s:8:"taxonomy";a:1:{i:0;s:3:"all";}s:10:"allow_null";s:1:"0";s:8:"multiple";s:1:"0";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:12;}'),
(533, 134, 'rule', 'a:5:{s:5:"param";s:13:"page_template";s:8:"operator";s:2:"==";s:5:"value";s:32:"template-parts/page-services.php";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(534, 138, 'title_why', 'Why Choose Us'),
(535, 138, '_title_why', 'field_59da0215fe001'),
(536, 138, 'description_why', 'Elit sed aute dou eiusmod tempor labore dolore magna\r\n'),
(537, 138, '_description_why', 'field_59da0240fe002'),
(538, 138, 'title_1', 'Mobile Surveilence of Vehicles'),
(539, 138, '_title_1', 'field_59da0287fe003'),
(540, 138, 'description_1', 'Borem ipsum dolor sit amet consecteur adipisicing elit sed do eiusmod tempor incididunt ulabore et dolore magna aliqua enim ad minim veniam\r\n'),
(541, 138, '_description_1', 'field_59da02defe004'),
(542, 138, 'title_2', 'Best CCTV’s System Network'),
(543, 138, '_title_2', 'field_59da02effe005'),
(544, 138, 'description_2', 'Borem ipsum dolor sit amet consecteur adipisicing elit sed do eiusmod tempor incididunt ulabore et dolore magna aliqua enim ad minim veniam\r\n\r\n'),
(545, 138, '_description_2', 'field_59da0301fe006'),
(546, 138, 'title_3', 'Technical Security Surveys'),
(547, 138, '_title_3', 'field_59da031afe007'),
(548, 138, 'description_3', 'Borem ipsum dolor sit amet consecteur adipisicing elit sed do eiusmod tempor incididunt ulabore et dolore magna aliqua enim ad minim veniam\r\n'),
(549, 138, '_description_3', 'field_59da0339fe008'),
(550, 138, 'title_best', '2016 Won Best Security Agency Award!'),
(551, 138, '_title_best', 'field_59da05264cc99'),
(552, 138, 'description_best', 'Eiusmod tempor incididunt sed labore dolore magnts aliqua enimt tempore sed venia exercitation ullamco laboris nisi ute aliquip commodo duis.\r\n'),
(553, 138, '_description_best', 'field_59da05404cc9a'),
(554, 138, 'title_what', 'What We Offers'),
(555, 138, '_title_what', 'field_59da056f4cc9b'),
(556, 138, 'description_what', 'Elit sed aute dou eiusmod tempor incididunt labore dolore magna aliqua\r\n'),
(557, 138, '_description_what', 'field_59da064b4cc9c'),
(558, 138, 'what', '4'),
(559, 138, '_what', 'field_59da06784cc9d'),
(560, 15, 'title_best', '<span class="b-type-a__title_emphasis color-secondary">2016</span>Won Best Security Agency Award!'),
(561, 15, '_title_best', 'field_59da05264cc99'),
(562, 15, 'description_best', 'Eiusmod tempor incididunt sed labore dolore magnts aliqua enimt tempore sed venia exercitation ullamco laboris nisi ute aliquip commodo duis.\r\n'),
(563, 15, '_description_best', 'field_59da05404cc9a'),
(564, 15, 'title_what', 'What We Offers'),
(565, 15, '_title_what', 'field_59da056f4cc9b'),
(566, 15, 'description_what', 'Elit sed aute dou eiusmod tempor incididunt labore dolore magna aliqua\r\n'),
(567, 15, '_description_what', 'field_59da064b4cc9c'),
(568, 15, 'what', '4'),
(569, 15, '_what', 'field_59da06784cc9d'),
(570, 137, '_edit_last', '1'),
(571, 137, '_edit_lock', '1507472397:1'),
(572, 139, 'title_why', 'لماذا أخترتنا'),
(573, 139, '_title_why', 'field_59da0215fe001'),
(574, 139, 'description_why', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.'),
(575, 139, '_description_why', 'field_59da0240fe002'),
(576, 139, 'title_1', 'مسوحات الأمن التقني'),
(577, 139, '_title_1', 'field_59da0287fe003'),
(578, 139, 'description_1', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.'),
(579, 139, '_description_1', 'field_59da02defe004'),
(580, 139, 'title_2', 'أفضل شبكة نظام الدوائر التلفزيونية المغلقة'),
(581, 139, '_title_2', 'field_59da02effe005'),
(582, 139, 'description_2', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.'),
(583, 139, '_description_2', 'field_59da0301fe006'),
(584, 139, 'title_3', 'مراقبة المحمول من المركبات'),
(585, 139, '_title_3', 'field_59da031afe007'),
(586, 139, 'description_3', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.'),
(587, 139, '_description_3', 'field_59da0339fe008'),
(588, 139, 'title_best', '2016 فاز بجائزة أفضل وكالة أمنية!'),
(589, 139, '_title_best', 'field_59da05264cc99'),
(590, 139, 'description_best', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي'),
(591, 139, '_description_best', 'field_59da05404cc9a'),
(592, 139, 'title_what', 'ماذا نقدم'),
(593, 139, '_title_what', 'field_59da056f4cc9b'),
(594, 139, 'description_what', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي'),
(595, 139, '_description_what', 'field_59da064b4cc9c'),
(596, 139, 'what', '4'),
(597, 139, '_what', 'field_59da06784cc9d'),
(598, 17, 'title_best', '<span class="b-type-a__title_emphasis color-secondary">2016</span> فاز بجائزة أفضل وكالة أمنية!'),
(599, 17, '_title_best', 'field_59da05264cc99'),
(600, 17, 'description_best', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي'),
(601, 17, '_description_best', 'field_59da05404cc9a'),
(602, 17, 'title_what', 'ماذا نقدم'),
(603, 17, '_title_what', 'field_59da056f4cc9b'),
(604, 17, 'description_what', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي'),
(605, 17, '_description_what', 'field_59da064b4cc9c'),
(606, 17, 'what', '4'),
(607, 17, '_what', 'field_59da06784cc9d'),
(608, 140, 'title_why', 'Why Choose Us'),
(609, 140, '_title_why', 'field_59da0215fe001'),
(610, 140, 'description_why', 'Elit sed aute dou eiusmod tempor labore dolore magna\r\n'),
(611, 140, '_description_why', 'field_59da0240fe002'),
(612, 140, 'title_1', 'Mobile Surveilence of Vehicles'),
(613, 140, '_title_1', 'field_59da0287fe003'),
(614, 140, 'description_1', 'Borem ipsum dolor sit amet consecteur adipisicing elit sed do eiusmod tempor incididunt ulabore et dolore magna aliqua enim ad minim veniam\r\n'),
(615, 140, '_description_1', 'field_59da02defe004'),
(616, 140, 'title_2', 'Best CCTV’s System Network'),
(617, 140, '_title_2', 'field_59da02effe005'),
(618, 140, 'description_2', 'Borem ipsum dolor sit amet consecteur adipisicing elit sed do eiusmod tempor incididunt ulabore et dolore magna aliqua enim ad minim veniam\r\n\r\n'),
(619, 140, '_description_2', 'field_59da0301fe006'),
(620, 140, 'title_3', 'Technical Security Surveys'),
(621, 140, '_title_3', 'field_59da031afe007'),
(622, 140, 'description_3', 'Borem ipsum dolor sit amet consecteur adipisicing elit sed do eiusmod tempor incididunt ulabore et dolore magna aliqua enim ad minim veniam\r\n'),
(623, 140, '_description_3', 'field_59da0339fe008'),
(624, 140, 'title_best', '<span class="b-type-a__title_emphasis color-secondary">2016</span>Won Best Security Agency Award!'),
(625, 140, '_title_best', 'field_59da05264cc99'),
(626, 140, 'description_best', 'Eiusmod tempor incididunt sed labore dolore magnts aliqua enimt tempore sed venia exercitation ullamco laboris nisi ute aliquip commodo duis.\r\n'),
(627, 140, '_description_best', 'field_59da05404cc9a'),
(628, 140, 'title_what', 'What We Offers'),
(629, 140, '_title_what', 'field_59da056f4cc9b'),
(630, 140, 'description_what', 'Elit sed aute dou eiusmod tempor incididunt labore dolore magna aliqua\r\n'),
(631, 140, '_description_what', 'field_59da064b4cc9c'),
(632, 140, 'what', '4'),
(633, 140, '_what', 'field_59da06784cc9d'),
(634, 141, 'title_why', 'لماذا أخترتنا'),
(635, 141, '_title_why', 'field_59da0215fe001'),
(636, 141, 'description_why', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.'),
(637, 141, '_description_why', 'field_59da0240fe002'),
(638, 141, 'title_1', 'مسوحات الأمن التقني'),
(639, 141, '_title_1', 'field_59da0287fe003'),
(640, 141, 'description_1', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.'),
(641, 141, '_description_1', 'field_59da02defe004'),
(642, 141, 'title_2', 'أفضل شبكة نظام الدوائر التلفزيونية المغلقة'),
(643, 141, '_title_2', 'field_59da02effe005'),
(644, 141, 'description_2', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.'),
(645, 141, '_description_2', 'field_59da0301fe006'),
(646, 141, 'title_3', 'مراقبة المحمول من المركبات'),
(647, 141, '_title_3', 'field_59da031afe007'),
(648, 141, 'description_3', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.'),
(649, 141, '_description_3', 'field_59da0339fe008'),
(650, 141, 'title_best', '<span class="b-type-a__title_emphasis color-secondary">2016</span> فاز بجائزة أفضل وكالة أمنية!'),
(651, 141, '_title_best', 'field_59da05264cc99'),
(652, 141, 'description_best', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي'),
(653, 141, '_description_best', 'field_59da05404cc9a'),
(654, 141, 'title_what', 'ماذا نقدم'),
(655, 141, '_title_what', 'field_59da056f4cc9b'),
(656, 141, 'description_what', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي'),
(657, 141, '_description_what', 'field_59da064b4cc9c'),
(658, 141, 'what', '4'),
(659, 141, '_what', 'field_59da06784cc9d'),
(660, 143, '_edit_last', '1'),
(661, 143, 'field_59da0b3c2c718', 'a:14:{s:3:"key";s:19:"field_59da0b3c2c718";s:5:"label";s:4:"Icon";s:4:"name";s:4:"icon";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(663, 143, 'position', 'normal'),
(664, 143, 'layout', 'no_box'),
(665, 143, 'hide_on_screen', ''),
(666, 143, '_edit_lock', '1507471161:1'),
(667, 144, 'icon', '<i class="b-advantages-2__icon flaticon-video"></i>'),
(668, 144, '_icon', 'field_59da0b3c2c718'),
(669, 137, 'icon', '<i class="b-advantages-2__icon flaticon-video"></i>'),
(670, 137, '_icon', 'field_59da0b3c2c718'),
(671, 145, 'icon', '<i class="b-advantages-2__icon flaticon-video"></i>'),
(672, 145, '_edit_last', '1'),
(673, 145, '_edit_lock', '1512204258:2'),
(674, 146, 'icon', '<i class="b-advantages-2__icon flaticon-video"></i>'),
(675, 146, '_icon', 'field_59da0b3c2c718'),
(676, 145, '_icon', 'field_59da0b3c2c718'),
(677, 147, '_edit_last', '1'),
(678, 147, '_edit_lock', '1507462326:1'),
(679, 148, 'icon', '<i class="b-advantages-2__icon flaticon-safe-box"></i>'),
(680, 148, '_icon', 'field_59da0b3c2c718'),
(681, 147, 'icon', '<i class="b-advantages-2__icon flaticon-safe-box"></i>'),
(682, 147, '_icon', 'field_59da0b3c2c718'),
(683, 149, 'icon', '<i class="b-advantages-2__icon flaticon-safe-box"></i>'),
(684, 149, '_edit_last', '1'),
(685, 149, '_edit_lock', '1507462373:1'),
(686, 150, 'icon', '<i class="b-advantages-2__icon flaticon-safe-box"></i>'),
(687, 150, '_icon', 'field_59da0b3c2c718'),
(688, 149, '_icon', 'field_59da0b3c2c718'),
(689, 151, '_edit_last', '1'),
(690, 152, 'icon', '<i class="b-advantages-2__icon flaticon-internet"></i>'),
(691, 152, '_icon', 'field_59da0b3c2c718'),
(692, 151, 'icon', '<i class="b-advantages-2__icon flaticon-internet"></i>'),
(693, 151, '_icon', 'field_59da0b3c2c718'),
(694, 151, '_edit_lock', '1507462476:1'),
(695, 153, 'icon', '<i class="b-advantages-2__icon flaticon-internet"></i>'),
(696, 153, '_edit_last', '1'),
(697, 153, '_edit_lock', '1507462509:1'),
(698, 154, 'icon', '<i class="b-advantages-2__icon flaticon-internet"></i>'),
(699, 154, '_icon', 'field_59da0b3c2c718'),
(700, 153, '_icon', 'field_59da0b3c2c718'),
(701, 155, '_edit_last', '1'),
(702, 155, '_edit_lock', '1507462552:1'),
(703, 156, 'icon', '<i class="b-advantages-2__icon flaticon-cab"></i>'),
(704, 156, '_icon', 'field_59da0b3c2c718'),
(705, 155, 'icon', '<i class="b-advantages-2__icon flaticon-cab"></i>'),
(706, 155, '_icon', 'field_59da0b3c2c718'),
(707, 157, 'icon', '<i class="b-advantages-2__icon flaticon-cab"></i>'),
(708, 157, '_edit_last', '1'),
(709, 158, 'icon', '<i class="b-advantages-2__icon flaticon-cab"></i>'),
(710, 158, '_icon', 'field_59da0b3c2c718'),
(711, 157, '_icon', 'field_59da0b3c2c718'),
(712, 157, '_edit_lock', '1507464673:1'),
(713, 159, '_edit_last', '1'),
(714, 159, '_edit_lock', '1507462618:1'),
(715, 160, 'icon', '<i class="b-advantages-2__icon flaticon-lifebuoy"></i>'),
(716, 160, '_icon', 'field_59da0b3c2c718'),
(717, 159, 'icon', '<i class="b-advantages-2__icon flaticon-lifebuoy"></i>'),
(718, 159, '_icon', 'field_59da0b3c2c718'),
(719, 161, 'icon', '<i class="b-advantages-2__icon flaticon-lifebuoy"></i>'),
(720, 161, '_edit_last', '1'),
(721, 161, '_edit_lock', '1507462651:1'),
(722, 162, 'icon', '<i class="b-advantages-2__icon flaticon-lifebuoy"></i>'),
(723, 162, '_icon', 'field_59da0b3c2c718'),
(724, 161, '_icon', 'field_59da0b3c2c718'),
(725, 163, '_edit_last', '1'),
(726, 164, 'icon', '<i class="b-advantages-2__icon flaticon-technology"></i>'),
(727, 164, '_icon', 'field_59da0b3c2c718'),
(728, 163, 'icon', '<i class="b-advantages-2__icon flaticon-technology"></i>'),
(729, 163, '_icon', 'field_59da0b3c2c718'),
(730, 163, '_edit_lock', '1507462684:1'),
(731, 165, 'icon', '<i class="b-advantages-2__icon flaticon-technology"></i>'),
(732, 165, '_edit_last', '1'),
(733, 166, 'icon', '<i class="b-advantages-2__icon flaticon-technology"></i>'),
(734, 166, '_icon', 'field_59da0b3c2c718'),
(735, 165, '_icon', 'field_59da0b3c2c718'),
(736, 165, '_edit_lock', '1507462708:1'),
(737, 143, 'field_59da167d26094', 'a:14:{s:3:"key";s:19:"field_59da167d26094";s:5:"label";s:5:"Title";s:4:"name";s:14:"title_services";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(738, 143, 'field_59da176226095', 'a:14:{s:3:"key";s:19:"field_59da176226095";s:5:"label";s:16:"Title services 1";s:4:"name";s:16:"title_services_1";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(739, 143, 'field_59da187826096', 'a:13:{s:3:"key";s:19:"field_59da187826096";s:5:"label";s:22:"Description services 1";s:4:"name";s:22:"description_services_1";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:10:"formatting";s:2:"br";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;}'),
(740, 143, 'field_59da18b426097', 'a:11:{s:3:"key";s:19:"field_59da18b426097";s:5:"label";s:16:"Image Services 1";s:4:"name";s:16:"image_services_1";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:6:"object";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:4;}'),
(741, 143, 'field_59da191626098', 'a:14:{s:3:"key";s:19:"field_59da191626098";s:5:"label";s:16:"Title services 2";s:4:"name";s:16:"title_services_2";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:5;}'),
(742, 143, 'field_59da199326099', 'a:13:{s:3:"key";s:19:"field_59da199326099";s:5:"label";s:22:"Description services 2";s:4:"name";s:22:"description_services_2";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:10:"formatting";s:2:"br";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:6;}'),
(743, 143, 'field_59da19992609a', 'a:11:{s:3:"key";s:19:"field_59da19992609a";s:5:"label";s:16:"Image Services 2";s:4:"name";s:16:"image_services_2";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:6:"object";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:7;}'),
(745, 168, 'icon', '<i class="b-advantages-2__icon flaticon-video"></i>'),
(746, 168, '_icon', 'field_59da0b3c2c718'),
(747, 168, 'title_services', 'We are Efficient & Cost Effective Company that Secure your Surroundings!'),
(748, 168, '_title_services', 'field_59da167d26094'),
(749, 168, 'title_services_1', 'Trusted Security Solutions'),
(750, 168, '_title_services_1', 'field_59da176226095'),
(751, 168, 'description_services_1', 'Lorem ipsum dolor sit amet consecter adipisicing elit sed don eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exrcitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit ese cillum dolore eu fugiat nulla pariatur.\r\n'),
(752, 168, '_description_services_1', 'field_59da199326099'),
(753, 168, 'image_services_1', '59'),
(754, 168, '_image_services_1', 'field_59da18b426097'),
(755, 168, 'title_services_2', 'How We Secure Events'),
(756, 168, '_title_services_2', 'field_59da191626098'),
(757, 168, 'image_services_2', '88'),
(758, 168, '_image_services_2', 'field_59da19992609a'),
(759, 137, 'title_services', 'We are Efficient & Cost Effective Company that Secure your Surroundings!'),
(760, 137, '_title_services', 'field_59da167d26094'),
(761, 137, 'title_services_1', 'Trusted Security Solutions'),
(762, 137, '_title_services_1', 'field_59da176226095'),
(763, 137, 'description_services_1', 'Lorem ipsum dolor sit amet consecter adipisicing elit sed don eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exrcitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit ese cillum dolore eu fugiat nulla pariatur.\r\n'),
(764, 137, '_description_services_1', 'field_59da187826096'),
(765, 137, 'image_services_1', '59'),
(766, 137, '_image_services_1', 'field_59da18b426097'),
(767, 137, 'title_services_2', 'How We Secure Events'),
(768, 137, '_title_services_2', 'field_59da191626098'),
(769, 137, 'image_services_2', '88'),
(770, 137, '_image_services_2', 'field_59da19992609a'),
(771, 170, '_wp_attached_file', '2017/10/1-3.jpg'),
(772, 170, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:450;s:6:"height";i:300;s:4:"file";s:15:"2017/10/1-3.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"1-3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:15:"1-3-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(773, 171, 'icon', '<i class="b-advantages-2__icon flaticon-video"></i>'),
(774, 171, '_icon', 'field_59da0b3c2c718'),
(775, 171, 'title_services', 'نحن كفاءة وفعالية من حيث التكلفة الشركة التي تأمين المناطق المحيطة بك!'),
(776, 171, '_title_services', 'field_59da167d26094'),
(777, 171, 'title_services_1', 'كيف نحن تأمين الأحداث'),
(778, 171, '_title_services_1', 'field_59da176226095'),
(779, 171, 'description_services_1', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.'),
(780, 171, '_description_services_1', 'field_59da199326099'),
(781, 171, 'image_services_1', '170'),
(782, 171, '_image_services_1', 'field_59da18b426097'),
(783, 171, 'title_services_2', 'حلول الأمان الموثوقة'),
(784, 171, '_title_services_2', 'field_59da191626098'),
(785, 171, 'image_services_2', ''),
(786, 171, '_image_services_2', 'field_59da19992609a'),
(787, 145, 'title_services', 'نحن كفاءة وفعالية من حيث التكلفة الشركة التي تأمين المناطق المحيطة بك!'),
(788, 145, '_title_services', 'field_59da167d26094'),
(789, 145, 'title_services_1', 'كيف نحن تأمين الأحداث'),
(790, 145, '_title_services_1', 'field_59da176226095'),
(791, 145, 'description_services_1', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.'),
(792, 145, '_description_services_1', 'field_59da199326099'),
(793, 145, 'image_services_1', '170'),
(794, 145, '_image_services_1', 'field_59da18b426097'),
(795, 145, 'title_services_2', 'حلول الأمان الموثوقة'),
(796, 145, '_title_services_2', 'field_59da191626098'),
(797, 145, 'image_services_2', ''),
(798, 145, '_image_services_2', 'field_59da19992609a'),
(801, 172, 'icon', '<i class="b-advantages-2__icon flaticon-video"></i>'),
(802, 172, '_icon', 'field_59da0b3c2c718'),
(803, 172, 'title_services', 'We are Efficient & Cost Effective Company that Secure your Surroundings!'),
(804, 172, '_title_services', 'field_59da167d26094'),
(805, 172, 'title_services_1', 'Trusted Security Solutions'),
(806, 172, '_title_services_1', 'field_59da176226095'),
(807, 172, 'description_services_1', 'Lorem ipsum dolor sit amet consecter adipisicing elit sed don eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exrcitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit ese cillum dolore eu fugiat nulla pariatur.\r\n'),
(808, 172, '_description_services_1', 'field_59da187826096'),
(809, 172, 'image_services_1', '59'),
(810, 172, '_image_services_1', 'field_59da18b426097'),
(811, 172, 'title_services_2', 'How We Secure Events'),
(812, 172, '_title_services_2', 'field_59da191626098'),
(813, 172, 'description_services_2', 'Lorem ipsum dolor sit amet consecter adipisicing elit sed don eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exrcitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit ese cillum dolore eu fugiat nulla pariatur.\r\n'),
(814, 172, '_description_services_2', 'field_59da199326099'),
(815, 172, 'image_services_2', '88'),
(816, 172, '_image_services_2', 'field_59da19992609a'),
(817, 137, 'description_services_2', 'Lorem ipsum dolor sit amet consecter adipisicing elit sed don eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exrcitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit ese cillum dolore eu fugiat nulla pariatur.\r\n'),
(818, 137, '_description_services_2', 'field_59da199326099'),
(820, 143, 'field_59da29a175437', 'a:14:{s:3:"key";s:19:"field_59da29a175437";s:5:"label";s:13:"Title FAQ’s";s:4:"name";s:9:"title_bot";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:8;}'),
(821, 143, 'field_59da29be75438', 'a:14:{s:3:"key";s:19:"field_59da29be75438";s:5:"label";s:10:"Question 1";s:4:"name";s:14:"question_bot_1";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:9;}'),
(822, 143, 'field_59da2a6c75439', 'a:13:{s:3:"key";s:19:"field_59da2a6c75439";s:5:"label";s:8:"Answer 1";s:4:"name";s:12:"answer_bot_1";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:10:"formatting";s:2:"br";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:10;}'),
(823, 143, 'field_59da2eb47543a', 'a:14:{s:3:"key";s:19:"field_59da2eb47543a";s:5:"label";s:10:"Question 2";s:4:"name";s:14:"question_bot_2";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:11;}'),
(824, 143, 'field_59da2f457543b', 'a:13:{s:3:"key";s:19:"field_59da2f457543b";s:5:"label";s:8:"Answer 2";s:4:"name";s:12:"answer_bot_2";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:10:"formatting";s:2:"br";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:12;}'),
(825, 143, 'field_59da2f567543c', 'a:14:{s:3:"key";s:19:"field_59da2f567543c";s:5:"label";s:10:"Question 3";s:4:"name";s:14:"question_bot_3";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:13;}'),
(826, 143, 'field_59da2f7c7543d', 'a:8:{s:3:"key";s:19:"field_59da2f7c7543d";s:5:"label";s:8:"Answer 3";s:4:"name";s:12:"answer_bot_3";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:14;}'),
(827, 143, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:9:"services2";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(828, 173, 'icon', '<i class="b-advantages-2__icon flaticon-video"></i>'),
(829, 173, '_icon', 'field_59da0b3c2c718'),
(830, 173, 'title_services', 'We are Efficient & Cost Effective Company that Secure your Surroundings!'),
(831, 173, '_title_services', 'field_59da167d26094'),
(832, 173, 'title_services_1', 'Trusted Security Solutions'),
(833, 173, '_title_services_1', 'field_59da176226095'),
(834, 173, 'description_services_1', 'Lorem ipsum dolor sit amet consecter adipisicing elit sed don eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exrcitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit ese cillum dolore eu fugiat nulla pariatur.\r\n'),
(835, 173, '_description_services_1', 'field_59da187826096'),
(836, 173, 'image_services_1', '59'),
(837, 173, '_image_services_1', 'field_59da18b426097'),
(838, 173, 'title_services_2', 'How We Secure Events'),
(839, 173, '_title_services_2', 'field_59da191626098'),
(840, 173, 'description_services_2', 'Lorem ipsum dolor sit amet consecter adipisicing elit sed don eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exrcitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit ese cillum dolore eu fugiat nulla pariatur.\r\n'),
(841, 173, '_description_services_2', 'field_59da199326099'),
(842, 173, 'image_services_2', '88'),
(843, 173, '_image_services_2', 'field_59da19992609a'),
(844, 173, 'title_bot', 'Service FAQ’s'),
(845, 173, '_title_bot', 'field_59da29a175437'),
(846, 173, 'question_bot_1', 'INCIDIDUNT UT LABORE ET DOLORE MAGNA ALIQUA ENIM MINIM?'),
(847, 173, '_question_bot_1', 'field_59da29be75438'),
(848, 173, 'answer_bot_1', 'Consectetur adipisicing elit sed aute ou eiusmod tempor incididunt ulabore dolore magna aliqua utmn lore enim minim venia squis nostrud. Lorem ipsum dolor amet consectetur adipisicing elit sed do eiusmod tempor incididunt ut labore dolore mag lorem ipsum dolor sit amet consectetur adipisicing elit sed eiusmod tempor incididunt.\r\n'),
(849, 173, '_answer_bot_1', 'field_59da2a6c75439'),
(850, 173, 'question_bot_2', 'LOREM IPSUM DOLOR SIT AMET ELIT SED EIUSMOD TEMPOR?'),
(851, 173, '_question_bot_2', 'field_59da2eb47543a'),
(852, 173, 'answer_bot_2', 'Consectetur adipisicing elit sed aute ou eiusmod tempor incididunt ulabore dolore magna aliqua utmn lore enim minim venia squis nostrud. Lorem ipsum dolor amet consectetur adipisicing elit sed do eiusmod tempor incididunt ut labore dolore mag lorem ipsum dolor sit amet consectetur adipisicing elit sed eiusmod tempor incididunt.\r\n'),
(853, 173, '_answer_bot_2', 'field_59da2f457543b');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(854, 173, 'question_bot_3', 'VENIAM QUIS NOSTRUD EXERCITATION ULLAMCO LABORIS QUIP?'),
(855, 173, '_question_bot_3', 'field_59da2f567543c'),
(856, 173, 'answer_bot_3', 'Consectetur adipisicing elit sed aute ou eiusmod tempor incididunt ulabore dolore magna aliqua utmn lore enim minim venia squis nostrud. Lorem ipsum dolor amet consectetur adipisicing elit sed do eiusmod tempor incididunt ut labore dolore mag lorem ipsum dolor sit amet consectetur adipisicing elit sed eiusmod tempor incididunt.\r\n'),
(857, 173, '_answer_bot_3', 'field_59da2f7c7543d'),
(858, 137, 'title_bot', 'Service FAQ’s'),
(859, 137, '_title_bot', 'field_59da29a175437'),
(860, 137, 'question_bot_1', 'INCIDIDUNT UT LABORE ET DOLORE MAGNA ALIQUA ENIM MINIM?'),
(861, 137, '_question_bot_1', 'field_59da29be75438'),
(862, 137, 'answer_bot_1', 'Consectetur adipisicing elit sed aute ou eiusmod tempor incididunt ulabore dolore magna aliqua utmn lore enim minim venia squis nostrud. Lorem ipsum dolor amet consectetur adipisicing elit sed do eiusmod tempor incididunt ut labore dolore mag lorem ipsum dolor sit amet consectetur adipisicing elit sed eiusmod tempor incididunt.\r\n'),
(863, 137, '_answer_bot_1', 'field_59da2a6c75439'),
(864, 137, 'question_bot_2', 'LOREM IPSUM DOLOR SIT AMET ELIT SED EIUSMOD TEMPOR?'),
(865, 137, '_question_bot_2', 'field_59da2eb47543a'),
(866, 137, 'answer_bot_2', 'Consectetur adipisicing elit sed aute ou eiusmod tempor incididunt ulabore dolore magna aliqua utmn lore enim minim venia squis nostrud. Lorem ipsum dolor amet consectetur adipisicing elit sed do eiusmod tempor incididunt ut labore dolore mag lorem ipsum dolor sit amet consectetur adipisicing elit sed eiusmod tempor incididunt.\r\n'),
(867, 137, '_answer_bot_2', 'field_59da2f457543b'),
(868, 137, 'question_bot_3', 'VENIAM QUIS NOSTRUD EXERCITATION ULLAMCO LABORIS QUIP?'),
(869, 137, '_question_bot_3', 'field_59da2f567543c'),
(870, 137, 'answer_bot_3', 'Consectetur adipisicing elit sed aute ou eiusmod tempor incididunt ulabore dolore magna aliqua utmn lore enim minim venia squis nostrud. Lorem ipsum dolor amet consectetur adipisicing elit sed do eiusmod tempor incididunt ut labore dolore mag lorem ipsum dolor sit amet consectetur adipisicing elit sed eiusmod tempor incididunt.\r\n'),
(871, 137, '_answer_bot_3', 'field_59da2f7c7543d'),
(872, 179, '_edit_lock', '1509869697:2'),
(873, 179, '_edit_last', '2'),
(874, 182, '_wp_attached_file', '2017/10/1-4.jpg'),
(875, 182, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1350;s:6:"height";i:400;s:4:"file";s:15:"2017/10/1-4.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"1-4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:14:"1-4-300x89.jpg";s:5:"width";i:300;s:6:"height";i:89;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:15:"1-4-768x228.jpg";s:5:"width";i:768;s:6:"height";i:228;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:16:"1-4-1024x303.jpg";s:5:"width";i:1024;s:6:"height";i:303;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(876, 183, '_wp_attached_file', '2017/10/2-3.jpg'),
(877, 183, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1350;s:6:"height";i:400;s:4:"file";s:15:"2017/10/2-3.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"2-3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:14:"2-3-300x89.jpg";s:5:"width";i:300;s:6:"height";i:89;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:15:"2-3-768x228.jpg";s:5:"width";i:768;s:6:"height";i:228;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:16:"2-3-1024x303.jpg";s:5:"width";i:1024;s:6:"height";i:303;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(878, 184, '_wp_attached_file', '2017/10/3-1.jpg'),
(879, 184, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1350;s:6:"height";i:400;s:4:"file";s:15:"2017/10/3-1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"3-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:14:"3-1-300x89.jpg";s:5:"width";i:300;s:6:"height";i:89;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:15:"3-1-768x228.jpg";s:5:"width";i:768;s:6:"height";i:228;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:16:"3-1-1024x303.jpg";s:5:"width";i:1024;s:6:"height";i:303;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(880, 185, '_wp_attached_file', '2017/10/4-1.jpg'),
(881, 185, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1350;s:6:"height";i:400;s:4:"file";s:15:"2017/10/4-1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"4-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:14:"4-1-300x89.jpg";s:5:"width";i:300;s:6:"height";i:89;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:15:"4-1-768x228.jpg";s:5:"width";i:768;s:6:"height";i:228;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:16:"4-1-1024x303.jpg";s:5:"width";i:1024;s:6:"height";i:303;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(882, 186, '_wp_attached_file', '2017/10/1-5.jpg'),
(883, 186, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1080;s:6:"height";i:1080;s:4:"file";s:15:"2017/10/1-5.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"1-5-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:15:"1-5-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:15:"1-5-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:17:"1-5-1024x1024.jpg";s:5:"width";i:1024;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(884, 187, '_wp_attached_file', '2017/10/1-6.jpg'),
(885, 187, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1080;s:6:"height";i:1080;s:4:"file";s:15:"2017/10/1-6.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"1-6-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:15:"1-6-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:15:"1-6-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:17:"1-6-1024x1024.jpg";s:5:"width";i:1024;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(886, 188, '_wp_attached_file', '2017/10/3-2.jpg'),
(887, 188, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1080;s:6:"height";i:1080;s:4:"file";s:15:"2017/10/3-2.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"3-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:15:"3-2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:15:"3-2-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:17:"3-2-1024x1024.jpg";s:5:"width";i:1024;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(888, 189, '_wp_attached_file', '2017/10/2-4.jpg'),
(889, 189, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1080;s:6:"height";i:1080;s:4:"file";s:15:"2017/10/2-4.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"2-4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:15:"2-4-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:15:"2-4-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:17:"2-4-1024x1024.jpg";s:5:"width";i:1024;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(890, 190, '_wp_attached_file', '2017/10/5.jpg'),
(891, 190, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1080;s:6:"height";i:1080;s:4:"file";s:13:"2017/10/5.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"5-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:13:"5-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:13:"5-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:15:"5-1024x1024.jpg";s:5:"width";i:1024;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(892, 191, '_wp_attached_file', '2017/10/8.jpg'),
(893, 191, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1080;s:6:"height";i:1080;s:4:"file";s:13:"2017/10/8.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"8-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:13:"8-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:13:"8-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:15:"8-1024x1024.jpg";s:5:"width";i:1024;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(894, 193, '_edit_lock', '1512484483:2'),
(895, 193, '_edit_last', '2'),
(896, 194, '_wp_attached_file', '2017/12/4.jpg'),
(897, 194, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1080;s:6:"height";i:1080;s:4:"file";s:13:"2017/12/4.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:13:"4-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:13:"4-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:15:"4-1024x1024.jpg";s:5:"width";i:1024;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(898, 193, '_thumbnail_id', '194'),
(899, 196, '_thumbnail_id', '194'),
(900, 196, '_edit_last', '2'),
(901, 196, '_edit_lock', '1512508000:4'),
(902, 198, '_edit_lock', '1512484539:2'),
(903, 198, '_edit_last', '2'),
(904, 199, '_wp_attached_file', '2017/12/7.jpg'),
(905, 199, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1080;s:6:"height";i:1080;s:4:"file";s:13:"2017/12/7.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"7-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:13:"7-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:13:"7-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:15:"7-1024x1024.jpg";s:5:"width";i:1024;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(906, 198, '_thumbnail_id', '199'),
(907, 201, '_thumbnail_id', '199'),
(908, 201, '_edit_lock', '1512484544:2'),
(909, 201, '_edit_last', '2'),
(910, 203, '_edit_lock', '1512485310:2'),
(911, 204, '_wp_attached_file', '2017/12/13.jpg'),
(912, 204, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1080;s:6:"height";i:1080;s:4:"file";s:14:"2017/12/13.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:14:"13-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:14:"13-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:14:"13-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:16:"13-1024x1024.jpg";s:5:"width";i:1024;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(913, 203, '_edit_last', '2'),
(914, 203, '_thumbnail_id', '204'),
(915, 206, '_thumbnail_id', '204'),
(916, 206, '_edit_last', '2'),
(917, 206, '_edit_lock', '1512485321:2'),
(918, 208, '_edit_lock', '1512485361:2'),
(919, 208, '_edit_last', '2'),
(920, 209, '_wp_attached_file', '2017/12/16.jpg'),
(921, 209, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1080;s:6:"height";i:1080;s:4:"file";s:14:"2017/12/16.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:14:"16-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:14:"16-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:14:"16-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:16:"16-1024x1024.jpg";s:5:"width";i:1024;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(922, 208, '_thumbnail_id', '209'),
(923, 211, '_thumbnail_id', '209'),
(924, 211, '_edit_last', '2'),
(925, 211, '_edit_lock', '1512485496:2'),
(926, 217, '_edit_lock', '1512508489:4'),
(927, 217, '_edit_last', '4'),
(931, 220, '_customize_changeset_uuid', 'eaf5f83c-59eb-4a1a-aba0-7f6472b5e6da'),
(933, 221, '_customize_changeset_uuid', 'eaf5f83c-59eb-4a1a-aba0-7f6472b5e6da'),
(934, 224, '_menu_item_type', 'post_type'),
(935, 224, '_menu_item_menu_item_parent', '0'),
(936, 224, '_menu_item_object_id', '220'),
(937, 224, '_menu_item_object', 'page'),
(938, 224, '_menu_item_target', ''),
(939, 224, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(940, 224, '_menu_item_xfn', ''),
(941, 224, '_menu_item_url', ''),
(942, 225, '_menu_item_type', 'post_type'),
(943, 225, '_menu_item_menu_item_parent', '0'),
(944, 225, '_menu_item_object_id', '221'),
(945, 225, '_menu_item_object', 'page'),
(946, 225, '_menu_item_target', ''),
(947, 225, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(948, 225, '_menu_item_xfn', ''),
(949, 225, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=227 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 2, '2017-10-04 09:59:07', '2017-10-04 09:59:07', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2017-10-04 09:59:07', '2017-10-04 09:59:07', '', 0, 'http://localhost/psolvingegypt/agus/?p=1', 0, 'post', '', 1),
(4, 2, '2017-10-05 09:30:29', '2017-10-05 09:30:29', '', 'Media', '', 'private', 'closed', 'closed', '', 'media', '', '', '2017-10-05 09:30:29', '2017-10-05 09:30:29', '', 0, 'http://localhost/psolvingegypt/agus/?option-tree=media', 0, 'option-tree', '', 0),
(5, 2, '2017-10-05 10:03:29', '2017-10-05 10:03:29', '', 'agus', '', 'inherit', 'open', 'closed', '', 'agus', '', '', '2017-10-05 10:03:29', '2017-10-05 10:03:29', '', 4, 'http://localhost/psolvingegypt/agus/wp-content/uploads/2017/10/agus.png', 0, 'attachment', 'image/png', 0),
(6, 2, '2017-10-05 10:07:31', '2017-10-05 10:07:31', '', 'bg-4', '', 'inherit', 'open', 'closed', '', 'bg-4', '', '', '2017-10-05 10:07:31', '2017-10-05 10:07:31', '', 4, 'http://localhost/psolvingegypt/agus/wp-content/uploads/2017/10/bg-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(7, 2, '2017-10-05 12:10:54', '2017-10-05 12:10:54', '', 'polylang_mo_2', '', 'private', 'closed', 'closed', '', 'polylang_mo_2', '', '', '2017-10-05 12:10:54', '2017-10-05 12:10:54', '', 0, 'http://localhost/psolvingegypt/agus/?post_type=polylang_mo&p=7', 0, 'polylang_mo', '', 0),
(8, 2, '2017-10-05 12:11:52', '2017-10-05 12:11:52', '', 'polylang_mo_5', '', 'private', 'closed', 'closed', '', 'polylang_mo_5', '', '', '2017-10-05 12:11:52', '2017-10-05 12:11:52', '', 0, 'http://localhost/psolvingegypt/agus/?post_type=polylang_mo&p=8', 0, 'polylang_mo', '', 0),
(9, 2, '2017-10-05 14:18:54', '2017-10-05 14:18:54', '', 'poster-1', '', 'inherit', 'open', 'closed', '', 'poster-1', '', '', '2017-10-05 14:18:54', '2017-10-05 14:18:54', '', 4, 'http://localhost/psolvingegypt/agus/wp-content/uploads/2017/10/poster-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(10, 2, '2017-10-05 14:27:22', '2017-10-05 14:27:22', '', '1', '', 'inherit', 'open', 'closed', '', '1', '', '', '2017-10-05 14:27:22', '2017-10-05 14:27:22', '', 4, 'http://localhost/psolvingegypt/agus/wp-content/uploads/2017/10/1.mp4', 0, 'attachment', 'video/mp4', 0),
(13, 2, '2017-10-05 15:42:16', '2017-10-05 15:42:16', '<section class="section-default section-default_top-padd">\r\n<div class="container">\r\n<div class="row">\r\n<div class="col-xs-12">\r\n<h2 class="ui-title-block text-center">لمهنيين الأمنيين المهرة والمؤهلين</h2>\r\n<ul class="b-advantages-3 b-advantages-3_mod-a">\r\n 	<li class="b-advantages-3__item">\r\n<div class="b-advantages-3__subtitle">في الأعمال لمدة 10 سنوات</div>\r\n<div class="b-advantages-3__title color-primary">نحن فريق من ذوي الخبرة</div></li>\r\n 	<li class="b-advantages-3__item">\r\n<div class="b-advantages-3__subtitle">ونحن نقدم 24/7 الدعم</div>\r\n<div class="b-advantages-3__title color-primary">نحن وافق المقاول</div></li>\r\n 	<li class="b-advantages-3__item">\r\n<div class="b-advantages-3__subtitle">حمايتك في أي مكان</div>\r\n<div class="b-advantages-3__title color-primary">لدينا القدرة على تأمين</div></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</section><section class="section-default">\r\n<div class="container">\r\n<div class="row">\r\n<div class="col-sm-12">\r\n<h2 class="ui-title-inner-1">بيان المهمة</h2>\r\n<div class="ui-subtitle-block ui-subtitle-block_mr-btm_sm">ويغوارد لديها أكثر من 10 عاما من الخبرة كشركة الأمن.</div>\r\nهناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.\r\n\r\nهناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<div class="section-default">\r\n<div class="container">\r\n<div class="row">\r\n<div class="col-xs-12">\r\n<div class="text-center">\r\n<h2 class="ui-title-block">نحن الحرس التاريخ</h2>\r\n<div class="ui-subtitle-block">هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما</div>\r\n<div class="ui-decor-type-1 center-block"></div>\r\n<div class="js-scroll-content">\r\n<ul class="b-history-list list-unstyled">\r\n 	<li class="b-history-list__item clearfix">\r\n<div class="b-history-list__label bg-primary center-block">يناير 2010</div>\r\n<div class="b-history-list__inner">\r\n<h3 class="b-history-list__title">هناك حقيقة مثبتة منذ زمن طويل</h3>\r\n<div class="b-history-list__description">\r\n\r\nهناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.\r\n\r\n</div>\r\n&nbsp;\r\n\r\n</div></li>\r\n 	<li class="b-history-list__item clearfix">\r\n<div class="b-history-list__label bg-primary center-block">ديسمبر 2014</div>\r\n<div class="b-history-list__inner">\r\n<h3 class="b-history-list__title">هناك حقيقة مثبتة منذ زمن طويل</h3>\r\n<div class="b-history-list__description">\r\n\r\nهناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.\r\n\r\n</div>\r\n&nbsp;\r\n\r\n</div></li>\r\n 	<li class="b-history-list__item clearfix">\r\n<div class="b-history-list__label bg-primary center-block">أغسطس 2016</div>\r\n<div class="b-history-list__inner">\r\n<h3 class="b-history-list__title">هناك حقيقة مثبتة منذ زمن طويل</h3>\r\n<div class="b-history-list__description">\r\n\r\nهناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.\r\n\r\n</div>\r\n&nbsp;\r\n\r\n</div>\r\n<div class="b-history-list__inner"></div></li>\r\n</ul>\r\n</div>\r\n<div class="js-scroll-content"></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'عن الشركة', '', 'publish', 'closed', 'closed', '', '%d8%b9%d9%86-%d8%a7%d9%84%d8%b4%d8%b1%d9%83%d8%a9', '', '', '2017-10-07 11:48:50', '2017-10-07 11:48:50', '', 0, 'http://localhost/psolvingegypt/agus/?page_id=13', 0, 'page', '', 0),
(14, 2, '2017-10-05 15:42:16', '2017-10-05 15:42:16', '', 'عن الشركة', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2017-10-05 15:42:16', '2017-10-05 15:42:16', '', 13, 'http://localhost/psolvingegypt/agus/2017/10/05/13-revision-v1/', 0, 'revision', '', 0),
(15, 2, '2017-10-05 15:43:16', '2017-10-05 15:43:16', '', 'Services', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2017-10-08 11:23:58', '2017-10-08 11:23:58', '', 0, 'http://localhost/psolvingegypt/agus/?page_id=15', 0, 'page', '', 0),
(16, 2, '2017-10-05 15:43:16', '2017-10-05 15:43:16', '', 'Services', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2017-10-05 15:43:16', '2017-10-05 15:43:16', '', 15, 'http://localhost/psolvingegypt/agus/2017/10/05/15-revision-v1/', 0, 'revision', '', 0),
(17, 2, '2017-10-05 15:43:32', '2017-10-05 15:43:32', '', 'الخدمات', '', 'publish', 'closed', 'closed', '', '%d8%a7%d9%84%d8%ae%d8%af%d9%85%d8%a7%d8%aa', '', '', '2017-10-08 11:24:26', '2017-10-08 11:24:26', '', 0, 'http://localhost/psolvingegypt/agus/?page_id=17', 0, 'page', '', 0),
(18, 2, '2017-10-05 15:43:32', '2017-10-05 15:43:32', '', 'الخدمات', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2017-10-05 15:43:32', '2017-10-05 15:43:32', '', 17, 'http://localhost/psolvingegypt/agus/2017/10/05/17-revision-v1/', 0, 'revision', '', 0),
(19, 2, '2017-10-05 15:44:02', '2017-10-05 15:44:02', '', 'News', '', 'publish', 'closed', 'closed', '', 'news', '', '', '2017-10-07 16:11:18', '2017-10-07 16:11:18', '', 0, 'http://localhost/psolvingegypt/agus/?page_id=19', 0, 'page', '', 0),
(20, 2, '2017-10-05 15:44:02', '2017-10-05 15:44:02', '', 'News', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2017-10-05 15:44:02', '2017-10-05 15:44:02', '', 19, 'http://localhost/psolvingegypt/agus/2017/10/05/19-revision-v1/', 0, 'revision', '', 0),
(21, 2, '2017-10-05 15:44:22', '2017-10-05 15:44:22', '', 'الاخبار', '', 'publish', 'closed', 'closed', '', '%d8%a7%d9%84%d8%a7%d8%ae%d8%a8%d8%a7%d8%b1', '', '', '2017-10-07 16:12:05', '2017-10-07 16:12:05', '', 0, 'http://localhost/psolvingegypt/agus/?page_id=21', 0, 'page', '', 0),
(22, 2, '2017-10-05 15:44:22', '2017-10-05 15:44:22', '', 'الاخبار', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2017-10-05 15:44:22', '2017-10-05 15:44:22', '', 21, 'http://localhost/psolvingegypt/agus/2017/10/05/21-revision-v1/', 0, 'revision', '', 0),
(23, 2, '2017-10-05 15:44:49', '2017-10-05 15:44:49', 'Whatever are your security needs,\r\n- Commercial or Residential - Big or Small -\r\nContact us &amp; we would develop a solution for you!', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2017-10-08 08:43:27', '2017-10-08 08:43:27', '', 0, 'http://localhost/psolvingegypt/agus/?page_id=23', 0, 'page', '', 0),
(24, 2, '2017-10-05 15:44:49', '2017-10-05 15:44:49', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2017-10-05 15:44:49', '2017-10-05 15:44:49', '', 23, 'http://localhost/psolvingegypt/agus/2017/10/05/23-revision-v1/', 0, 'revision', '', 0),
(25, 2, '2017-10-05 15:45:13', '2017-10-05 15:45:13', 'مهما كانت احتياجاتك الأمنية،\r\n\r\n- تجاري أو سكني - كبير أو صغير -\r\n\r\nالاتصال بنا ونحن سوف تطوير حل بالنسبة لك!', 'اتصل بنا', '', 'publish', 'closed', 'closed', '', '%d8%a7%d8%aa%d8%b5%d9%84-%d8%a8%d9%86%d8%a7', '', '', '2017-10-08 10:32:38', '2017-10-08 10:32:38', '', 0, 'http://localhost/psolvingegypt/agus/?page_id=25', 0, 'page', '', 0),
(26, 2, '2017-10-05 15:45:13', '2017-10-05 15:45:13', '', 'اتصل بنا', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2017-10-05 15:45:13', '2017-10-05 15:45:13', '', 25, 'http://localhost/psolvingegypt/agus/2017/10/05/25-revision-v1/', 0, 'revision', '', 0),
(27, 2, '2017-10-05 16:59:23', '2017-10-05 16:59:23', ' ', '', '', 'publish', 'closed', 'closed', '', '27', '', '', '2017-10-07 10:34:14', '2017-10-07 10:34:14', '', 0, 'http://localhost/psolvingegypt/agus/?p=27', 5, 'nav_menu_item', '', 0),
(28, 2, '2017-10-05 16:59:22', '2017-10-05 16:59:22', ' ', '', '', 'publish', 'closed', 'closed', '', '28', '', '', '2017-10-07 10:34:13', '2017-10-07 10:34:13', '', 0, 'http://localhost/psolvingegypt/agus/?p=28', 4, 'nav_menu_item', '', 0),
(29, 2, '2017-10-05 16:59:22', '2017-10-05 16:59:22', ' ', '', '', 'publish', 'closed', 'closed', '', '29', '', '', '2017-10-07 10:34:13', '2017-10-07 10:34:13', '', 0, 'http://localhost/psolvingegypt/agus/?p=29', 3, 'nav_menu_item', '', 0),
(31, 2, '2017-10-05 17:00:02', '2017-10-05 17:00:02', ' ', '', '', 'publish', 'closed', 'closed', '', '31', '', '', '2017-10-07 10:33:25', '2017-10-07 10:33:25', '', 0, 'http://localhost/psolvingegypt/agus/?p=31', 5, 'nav_menu_item', '', 0),
(32, 2, '2017-10-05 17:00:01', '2017-10-05 17:00:01', ' ', '', '', 'publish', 'closed', 'closed', '', '32', '', '', '2017-12-05 21:26:34', '2017-12-05 21:26:34', '', 0, 'http://localhost/psolvingegypt/agus/?p=32', 4, 'nav_menu_item', '', 0),
(33, 2, '2017-10-05 17:00:00', '2017-10-05 17:00:00', ' ', '', '', 'publish', 'closed', 'closed', '', '33', '', '', '2017-10-07 10:33:24', '2017-10-07 10:33:24', '', 0, 'http://localhost/psolvingegypt/agus/?p=33', 3, 'nav_menu_item', '', 0),
(34, 2, '2017-10-05 17:00:00', '2017-10-05 17:00:00', ' ', '', '', 'publish', 'closed', 'closed', '', '34', '', '', '2017-12-05 21:26:34', '2017-12-05 21:26:34', '', 0, 'http://localhost/psolvingegypt/agus/?p=34', 2, 'nav_menu_item', '', 0),
(35, 2, '2017-10-05 19:28:19', '2017-10-05 19:28:19', ' ', '', '', 'publish', 'closed', 'closed', '', '35', '', '', '2017-10-07 10:36:05', '2017-10-07 10:36:05', '', 0, 'http://localhost/psolvingegypt/agus/?p=35', 5, 'nav_menu_item', '', 0),
(36, 2, '2017-10-05 19:28:19', '2017-10-05 19:28:19', ' ', '', '', 'publish', 'closed', 'closed', '', '36', '', '', '2017-10-07 10:36:05', '2017-10-07 10:36:05', '', 0, 'http://localhost/psolvingegypt/agus/?p=36', 4, 'nav_menu_item', '', 0),
(37, 2, '2017-10-05 19:28:20', '2017-10-05 19:28:20', ' ', '', '', 'publish', 'closed', 'closed', '', '37', '', '', '2017-10-07 10:36:05', '2017-10-07 10:36:05', '', 0, 'http://localhost/psolvingegypt/agus/?p=37', 3, 'nav_menu_item', '', 0),
(41, 2, '2017-10-05 20:56:38', '2017-10-05 20:56:38', '<a href="http://agusfire.com/wp-content/uploads/2017/12/4.jpg"><img class="alignnone size-medium wp-image-194" src="http://agusfire.com/wp-content/uploads/2017/12/4-300x300.jpg" alt="" width="300" height="300" /></a>', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2017-12-05 21:12:05', '2017-12-05 21:12:05', '', 0, 'http://localhost/psolvingegypt/agus/?page_id=41', 0, 'page', '', 0),
(42, 2, '2017-10-05 20:56:38', '2017-10-05 20:56:38', '', 'Home', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2017-10-05 20:56:38', '2017-10-05 20:56:38', '', 41, 'http://localhost/psolvingegypt/agus/2017/10/05/41-revision-v1/', 0, 'revision', '', 0),
(43, 2, '2017-10-05 20:59:20', '2017-10-05 20:59:20', '', 'الرئيسية', '', 'publish', 'closed', 'closed', '', '%d8%a7%d9%84%d8%b1%d8%a6%d9%8a%d8%b3%d9%8a%d8%a9', '', '', '2017-10-07 08:25:07', '2017-10-07 08:25:07', '', 0, 'http://localhost/psolvingegypt/agus/?page_id=43', 0, 'page', '', 0),
(44, 2, '2017-10-05 20:59:20', '2017-10-05 20:59:20', '', 'الرئيسية', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2017-10-05 20:59:20', '2017-10-05 20:59:20', '', 43, 'http://localhost/psolvingegypt/agus/2017/10/05/43-revision-v1/', 0, 'revision', '', 0),
(45, 2, '2017-10-05 21:02:42', '2017-10-05 21:02:42', '[contact-form-7 id="39" title="Contact form 1"]', 'Home', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2017-10-05 21:02:42', '2017-10-05 21:02:42', '', 41, 'http://localhost/psolvingegypt/agus/2017/10/05/41-revision-v1/', 0, 'revision', '', 0),
(46, 2, '2017-10-06 06:37:55', '2017-10-06 06:37:55', '<blockquote class="blockquote blockquote-3">Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod tempor incididunt labore et dolore magna aliqua uat enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in voluptate velit esl cillum dolore fugiat nulla pariaturd lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod tempor incididunt labore.\r\n\r\n<footer class="blockquote__footer"><cite title="Blockquote Title"><span class="blockquote__author">Adam Mills</span></cite></footer><footer class="blockquote__footer"><cite title="Blockquote Title"><span class="blockquote__category">pramount studio ltd</span></cite></footer></blockquote>', 'Adam Mills', '', 'publish', 'open', 'open', '', 'adam-mills', '', '', '2017-10-06 07:10:07', '2017-10-06 07:10:07', '', 0, 'http://localhost/psolvingegypt/agus/?post_type=team&#038;p=46', 0, 'team', '', 0),
(47, 2, '2017-10-06 06:37:55', '2017-10-06 06:37:55', '<blockquote class="blockquote blockquote-3">Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod tempor incididunt labore et dolore magna aliqua uat enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\n<footer class="blockquote__footer"><cite title="Blockquote Title"><span class="blockquote__author">Adam Mills</span></cite></footer><footer class="blockquote__footer"><cite title="Blockquote Title"><span class="blockquote__category">Pramount studio</span></cite></footer></blockquote>', 'Adam Mills', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2017-10-06 06:37:55', '2017-10-06 06:37:55', '', 46, 'http://localhost/psolvingegypt/agus/2017/10/06/46-revision-v1/', 0, 'revision', '', 0),
(48, 2, '2017-10-06 06:38:40', '2017-10-06 06:38:40', '<blockquote class="blockquote blockquote-3">Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod tempor incididunt labore et dolore magna aliqua uat enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in voluptate velit esl cillum dolore fugiat nulla pariaturd lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod tempor incididunt labore.\r\n\r\n<footer class="blockquote__footer"><cite title="Blockquote Title"><span class="blockquote__author">Adam Mills </span></cite><cite title="Blockquote Title"><span class="blockquote__category">pramount studio ltd</span></cite></footer></blockquote>', 'Adam Mills', '', 'publish', 'open', 'open', '', 'adam-mills-2', '', '', '2017-10-06 08:19:23', '2017-10-06 08:19:23', '', 0, 'http://localhost/psolvingegypt/agus/?post_type=team&#038;p=48', 0, 'team', '', 0),
(49, 2, '2017-10-06 06:38:40', '2017-10-06 06:38:40', '<blockquote class="blockquote blockquote-3">Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod tempor incididunt labore et dolore magna aliqua uat enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in voluptate velit esl cillum dolore fugiat nulla pariaturd lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod tempor incididunt labore.\r\n\r\n<footer class="blockquote__footer"><cite title="Blockquote Title"><span class="blockquote__author">Adam Mills</span></cite></footer><footer class="blockquote__footer"><cite title="Blockquote Title"><span class="blockquote__category">pramount studio ltd</span></cite></footer></blockquote>', 'Adam Mills', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2017-10-06 06:38:40', '2017-10-06 06:38:40', '', 48, 'http://localhost/psolvingegypt/agus/2017/10/06/48-revision-v1/', 0, 'revision', '', 0),
(50, 2, '2017-10-06 07:01:52', '2017-10-06 07:01:52', '', '1', '', 'inherit', 'open', 'closed', '', '1-2', '', '', '2017-10-06 07:01:52', '2017-10-06 07:01:52', '', 48, 'http://localhost/psolvingegypt/agus/wp-content/uploads/2017/10/1.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 2, '2017-10-06 07:05:04', '2017-10-06 07:05:04', '<blockquote class="blockquote blockquote-3">هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.\r\n\r\n<footer class="blockquote__footer">هناك حقيقة مثبتة</footer><footer class="blockquote__footer"><cite title="Blockquote Title">\r\nالشكل الخارجي\r\n</cite></footer></blockquote>', 'احمد ابراهيم', '', 'publish', 'open', 'open', '', '%d8%a7%d8%ad%d9%85%d8%af-%d8%a7%d8%a8%d8%b1%d8%a7%d9%87%d9%8a%d9%85', '', '', '2017-10-06 07:05:04', '2017-10-06 07:05:04', '', 0, 'http://localhost/psolvingegypt/agus/?post_type=team&#038;p=51', 0, 'team', '', 0),
(52, 2, '2017-10-06 07:05:04', '2017-10-06 07:05:04', '<blockquote class="blockquote blockquote-3">هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.\r\n\r\n<footer class="blockquote__footer">هناك حقيقة مثبتة</footer><footer class="blockquote__footer"><cite title="Blockquote Title">\r\nالشكل الخارجي\r\n</cite></footer></blockquote>', 'احمد ابراهيم', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2017-10-06 07:05:04', '2017-10-06 07:05:04', '', 51, 'http://localhost/psolvingegypt/agus/2017/10/06/51-revision-v1/', 0, 'revision', '', 0),
(53, 2, '2017-10-06 07:06:53', '2017-10-06 07:06:53', '<blockquote class="blockquote blockquote-3">Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod tempor incididunt labore et dolore magna aliqua uat enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in voluptate velit esl cillum dolore fugiat nulla pariaturd lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod tempor incididunt labore.\r\n\r\n<footer class="blockquote__footer"><cite title="Blockquote Title"><span class="blockquote__author">Adam Mills</span></cite></footer><footer class="blockquote__footer"><cite title="Blockquote Title"><span class="blockquote__category">pramount studio ltd</span></cite></footer></blockquote>', 'Adam Mills', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2017-10-06 07:06:53', '2017-10-06 07:06:53', '', 46, 'http://localhost/psolvingegypt/agus/2017/10/06/46-revision-v1/', 0, 'revision', '', 0),
(54, 2, '2017-10-06 07:07:21', '2017-10-06 07:07:21', '<blockquote class="blockquote blockquote-3">هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.\r\n\r\n<footer class="blockquote__footer">هناك حقيقة مثبتة</footer><footer class="blockquote__footer"><cite title="Blockquote Title">\r\nالشكل الخارجي\r\n</cite></footer></blockquote>', 'محمد ابراهيم', '', 'publish', 'open', 'open', '', '%d9%85%d8%ad%d9%85%d8%af-%d8%a7%d8%a8%d8%b1%d8%a7%d9%87%d9%8a%d9%85', '', '', '2017-10-06 07:07:53', '2017-10-06 07:07:53', '', 0, 'http://localhost/psolvingegypt/agus/?post_type=team&#038;p=54', 0, 'team', '', 0),
(55, 2, '2017-10-06 07:07:21', '2017-10-06 07:07:21', '<blockquote class="blockquote blockquote-3">هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.\r\n\r\n<footer class="blockquote__footer">هناك حقيقة مثبتة</footer><footer class="blockquote__footer"><cite title="Blockquote Title">\r\nالشكل الخارجي\r\n</cite></footer></blockquote>', 'محمد ابراهيم', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2017-10-06 07:07:21', '2017-10-06 07:07:21', '', 54, 'http://localhost/psolvingegypt/agus/2017/10/06/54-revision-v1/', 0, 'revision', '', 0),
(56, 2, '2017-10-06 07:07:45', '2017-10-06 07:07:45', '', '1', '', 'inherit', 'open', 'closed', '', '1-3', '', '', '2017-10-06 07:07:45', '2017-10-06 07:07:45', '', 54, 'http://localhost/psolvingegypt/agus/wp-content/uploads/2017/10/1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 2, '2017-10-06 07:31:06', '2017-10-06 07:31:06', 'Lorem ipsum dolor sit amet consectetur adipisicing elit sed ciusmod tempor incididunt labore et dolore magna aliqua aut enim ad minim veniam quis nostrud. Lorem ipsum dolor sit amet consectetur adipisicing elit sed ciusmod tempor incididunt labore et dolore magna aliqua aut enim ad minim veniam quis nostrud.\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit sed ciusmod tempor incididunt labore et dolore magna aliqua aut enim ad minim veniam quis nostrud.\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit sed ciusmod tempor incididunt labore et dolore magna aliqua aut enim ad minim veniam quis nostrud.', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet consectetur adipisicing elit sed ciusmod tempor incididunt labore et dolore magna aliqua aut enim ad minim veniam quis nostrud.', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor-sit-amet', '', '', '2017-10-06 07:31:06', '2017-10-06 07:31:06', '', 0, 'http://localhost/psolvingegypt/agus/?post_type=new&#038;p=58', 0, 'new', '', 0),
(59, 2, '2017-10-06 07:30:34', '2017-10-06 07:30:34', '', '2', '', 'inherit', 'open', 'closed', '', '2', '', '', '2017-10-06 07:30:34', '2017-10-06 07:30:34', '', 58, 'http://localhost/psolvingegypt/agus/wp-content/uploads/2017/10/2.jpg', 0, 'attachment', 'image/jpeg', 0),
(60, 2, '2017-10-06 07:31:06', '2017-10-06 07:31:06', 'Lorem ipsum dolor sit amet consectetur adipisicing elit sed ciusmod tempor incididunt labore et dolore magna aliqua aut enim ad minim veniam quis nostrud. Lorem ipsum dolor sit amet consectetur adipisicing elit sed ciusmod tempor incididunt labore et dolore magna aliqua aut enim ad minim veniam quis nostrud.\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit sed ciusmod tempor incididunt labore et dolore magna aliqua aut enim ad minim veniam quis nostrud.\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit sed ciusmod tempor incididunt labore et dolore magna aliqua aut enim ad minim veniam quis nostrud.', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet consectetur adipisicing elit sed ciusmod tempor incididunt labore et dolore magna aliqua aut enim ad minim veniam quis nostrud.', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2017-10-06 07:31:06', '2017-10-06 07:31:06', '', 58, 'http://localhost/psolvingegypt/agus/2017/10/06/58-revision-v1/', 0, 'revision', '', 0),
(61, 2, '2017-10-06 07:32:35', '2017-10-06 07:32:35', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.\r\n\r\nهناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.\r\n\r\nهناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.', 'هناك حقيقة مثبتة منذ زمن طويل', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.', 'publish', 'open', 'open', '', '%d9%87%d9%86%d8%a7%d9%83-%d8%ad%d9%82%d9%8a%d9%82%d8%a9-%d9%85%d8%ab%d8%a8%d8%aa%d8%a9-%d9%85%d9%86%d8%b0-%d8%b2%d9%85%d9%86-%d8%b7%d9%88%d9%8a%d9%84', '', '', '2017-10-06 07:33:27', '2017-10-06 07:33:27', '', 0, 'http://localhost/psolvingegypt/agus/?post_type=new&#038;p=61', 0, 'new', '', 0),
(62, 2, '2017-10-06 07:32:35', '2017-10-06 07:32:35', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.\r\n\r\nهناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.\r\n\r\nهناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.', 'هناك حقيقة مثبتة منذ زمن طويل', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2017-10-06 07:32:35', '2017-10-06 07:32:35', '', 61, 'http://localhost/psolvingegypt/agus/2017/10/06/61-revision-v1/', 0, 'revision', '', 0),
(63, 2, '2017-10-06 07:35:12', '2017-10-06 07:35:12', 'Lorem ipsum dolor sit amet consectetur adipisicing elit sed ciusmod tempor incididunt labore et dolore magna aliqua aut enim ad minim veniam quis nostrud.\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit sed ciusmod tempor incididunt labore et dolore magna aliqua aut enim ad minim veniam quis nostrud.\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit sed ciusmod tempor incididunt labore et dolore magna aliqua aut enim ad minim veniam quis nostrud.\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit sed ciusmod tempor incididunt labore et dolore magna aliqua aut enim ad minim veniam quis nostrud.', 'Lorem ipsum dolor sit', 'Lorem ipsum dolor sit amet consectetur adipisicing elit sed ciusmod tempor incididunt labore et dolore magna aliqua aut enim ad minim veniam quis nostrud.', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor-sit', '', '', '2017-10-06 07:35:27', '2017-10-06 07:35:27', '', 0, 'http://localhost/psolvingegypt/agus/?post_type=new&#038;p=63', 0, 'new', '', 0),
(64, 2, '2017-10-06 07:34:26', '2017-10-06 07:34:26', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.\r\n\r\nهناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.\r\n\r\nهناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.', 'هناك حقيقة مثبتة منذ زمن طويل', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.', 'publish', 'open', 'open', '', '%d9%87%d9%86%d8%a7%d9%83-%d8%ad%d9%82%d9%8a%d9%82%d8%a9-%d9%85%d8%ab%d8%a8%d8%aa%d8%a9-%d9%85%d9%86%d8%b0-%d8%b2%d9%85%d9%86-%d8%b7%d9%88%d9%8a%d9%84-2', '', '', '2017-10-06 07:34:26', '2017-10-06 07:34:26', '', 0, 'http://localhost/psolvingegypt/agus/?post_type=new&#038;p=64', 0, 'new', '', 0),
(65, 2, '2017-10-06 07:34:20', '2017-10-06 07:34:20', '', '2', '', 'inherit', 'open', 'closed', '', '2-2', '', '', '2017-10-06 07:34:20', '2017-10-06 07:34:20', '', 64, 'http://localhost/psolvingegypt/agus/wp-content/uploads/2017/10/2-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(66, 2, '2017-10-06 07:34:26', '2017-10-06 07:34:26', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.\r\n\r\nهناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.\r\n\r\nهناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.', 'هناك حقيقة مثبتة منذ زمن طويل', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2017-10-06 07:34:26', '2017-10-06 07:34:26', '', 64, 'http://localhost/psolvingegypt/agus/2017/10/06/64-revision-v1/', 0, 'revision', '', 0),
(67, 2, '2017-10-06 07:35:12', '2017-10-06 07:35:12', 'Lorem ipsum dolor sit amet consectetur adipisicing elit sed ciusmod tempor incididunt labore et dolore magna aliqua aut enim ad minim veniam quis nostrud.\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit sed ciusmod tempor incididunt labore et dolore magna aliqua aut enim ad minim veniam quis nostrud.\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit sed ciusmod tempor incididunt labore et dolore magna aliqua aut enim ad minim veniam quis nostrud.\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit sed ciusmod tempor incididunt labore et dolore magna aliqua aut enim ad minim veniam quis nostrud.', 'Lorem ipsum dolor sit', 'Lorem ipsum dolor sit amet consectetur adipisicing elit sed ciusmod tempor incididunt labore et dolore magna aliqua aut enim ad minim veniam quis nostrud.', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2017-10-06 07:35:12', '2017-10-06 07:35:12', '', 63, 'http://localhost/psolvingegypt/agus/2017/10/06/63-revision-v1/', 0, 'revision', '', 0),
(68, 2, '2017-10-06 08:17:28', '2017-10-06 08:17:28', ' <p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium totam rem aperiam eaque ipsa quae ab illo inventore.</p>\r\n                      <p>Veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est qui dolrem ipsum quia dolor sit amet consectetur adipisci velit sed quia non numquam.</p>\r\n                      <blockquote class="blockquote blockquote-1">\r\n                        <p>“ Corem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod tempor incididunt labore et dolore magna aliqua uat enim adminim veniam quis nostrud exercitation ulamco laboris nisi ut aliquip exea commodo conseq uat duis aute. ”</p>\r\n                      </blockquote>\r\n                      <p>Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium totam rem aperiam eaque ipsa qulle ab illo inventore. Veritatis et quasi architecto beatefas vitde dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit sed quia consequuntur magni dolores eos qui ratione.</p>\r\n                      <h3 class="ui-title-inner-2">Lorem ipsum dolor sit amet</h3>\r\n                      <p>Labore et dolore magna aliqua. Ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n                      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium totam rem aperiam eaque ipsa quae ab illo inventore. Veritatis et quasi architecto beata vitad dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit sed quia consequuntur magni dolores eos qui ratione.</p>', 'Lorem ipsum dolor sit', 'Lorem ipsum dolor sit amet consectetur adipisicing elit sed ciusmod tempor incididunt labore et dolore magna aliqua aut enim ad minim veniam quis nostrud. ', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor-sit-2', '', '', '2017-10-08 08:00:06', '2017-10-08 08:00:06', '', 0, 'http://localhost/psolvingegypt/agus/?post_type=new&#038;p=68', 0, 'new', '', 0),
(69, 2, '2017-10-06 08:17:28', '2017-10-06 08:17:28', 'Lorem ipsum dolor sit amet consectetur adipisicing elit sed ciusmod tempor incididunt labore et dolore magna aliqua aut enim ad minim veniam quis nostrud. Lorem ipsum dolor sit amet consectetur adipisicing elit sed ciusmod tempor incididunt labore et dolore magna aliqua aut enim ad minim veniam quis nostrud.\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit sed ciusmod tempor incididunt labore et dolore magna aliqua aut enim ad minim veniam quis nostrud.\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit sed ciusmod tempor incididunt labore et dolore magna aliqua aut enim ad minim veniam quis nostrud.', 'Lorem ipsum dolor sit', 'Lorem ipsum dolor sit amet consectetur adipisicing elit sed ciusmod tempor incididunt labore et dolore magna aliqua aut enim ad minim veniam quis nostrud. ', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2017-10-06 08:17:28', '2017-10-06 08:17:28', '', 68, 'http://localhost/psolvingegypt/agus/2017/10/06/68-revision-v1/', 0, 'revision', '', 0),
(70, 2, '2017-10-06 08:18:05', '2017-10-06 08:18:05', 'Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium totam rem aperiam eaque ipsa quae ab illo inventore.\r\n\r\nVeritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est qui dolrem ipsum quia dolor sit amet consectetur adipisci velit sed quia non numquam.\r\n<blockquote class="blockquote blockquote-1">“ Corem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod tempor incididunt labore et dolore magna aliqua uat enim adminim veniam quis nostrud exercitation ulamco laboris nisi ut aliquip exea commodo conseq uat duis aute. ”</blockquote>\r\nSed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium totam rem aperiam eaque ipsa qulle ab illo inventore. Veritatis et quasi architecto beatefas vitde dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit sed quia consequuntur magni dolores eos qui ratione.\r\n<h3 class="ui-title-inner-2">Lorem ipsum dolor sit amet</h3>\r\nLabore et dolore magna aliqua. Ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nSed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium totam rem aperiam eaque ipsa quae ab illo inventore. Veritatis et quasi architecto beata vitad dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit sed quia consequuntur magni dolores eos qui ratione.', 'هناك حقيقة مثبتة منذ زمن طويل', 'ritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit sed quia consequu', 'publish', 'open', 'open', '', '%d9%87%d9%86%d8%a7%d9%83-%d8%ad%d9%82%d9%8a%d9%82%d8%a9-%d9%85%d8%ab%d8%a8%d8%aa%d8%a9-%d9%85%d9%86%d8%b0-%d8%b2%d9%85%d9%86-%d8%b7%d9%88%d9%8a%d9%84-3', '', '', '2017-10-08 07:59:35', '2017-10-08 07:59:35', '', 0, 'http://localhost/psolvingegypt/agus/?post_type=new&#038;p=70', 0, 'new', '', 0),
(71, 2, '2017-10-06 08:18:05', '2017-10-06 08:18:05', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.\r\n\r\nهناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.\r\n\r\nهناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.', 'هناك حقيقة مثبتة منذ زمن طويل', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2017-10-06 08:18:05', '2017-10-06 08:18:05', '', 70, 'http://localhost/psolvingegypt/agus/2017/10/06/70-revision-v1/', 0, 'revision', '', 0),
(72, 2, '2017-10-06 08:19:23', '2017-10-06 08:19:23', '<blockquote class="blockquote blockquote-3">Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod tempor incididunt labore et dolore magna aliqua uat enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in voluptate velit esl cillum dolore fugiat nulla pariaturd lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod tempor incididunt labore.\r\n\r\n<footer class="blockquote__footer"><cite title="Blockquote Title"><span class="blockquote__author">Adam Mills </span></cite><cite title="Blockquote Title"><span class="blockquote__category">pramount studio ltd</span></cite></footer></blockquote>', 'Adam Mills', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2017-10-06 08:19:23', '2017-10-06 08:19:23', '', 48, 'http://localhost/psolvingegypt/agus/2017/10/06/48-revision-v1/', 0, 'revision', '', 0),
(74, 2, '2017-10-06 12:19:55', '2017-10-06 12:19:55', '<div class="col-sm-6">\r\n    [text* your-name  class:form-control  placeholder "الاسم"] \r\n</div>\r\n<div class="col-sm-6">\r\n[tel tel-734 class:form-control placeholder "التليفون"]\r\n</div>\r\n<div class="col-sm-12">\r\n    [email* your-email class:form-control  placeholder "البريد الالكتروني"] \r\n</div>\r\n<div class="col-sm-12">\r\n    [text your-subject class:form-control  placeholder "العنوان"]\r\n</div>\r\n<div class="col-sm-12">\r\n    [textarea your-message class:form-control  placeholder "الرسالة"] \r\n</div>\r\n[submit class:btn-effect2]\n1\nahmedelsayed.me "[your-subject]"\n[your-name] <me@ahmedelsayed.me>\nme@ahmedelsayed.me\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on ahmedelsayed.me (http://localhost/psolvingegypt/agus)\nReply-To: [your-email]\n\n\n\n\nahmedelsayed.me "[your-subject]"\nahmedelsayed.me <me@ahmedelsayed.me>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on ahmedelsayed.me (http://localhost/psolvingegypt/agus)\nReply-To: me@ahmedelsayed.me\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1-2', '', '', '2017-10-08 09:48:13', '2017-10-08 09:48:13', '', 0, 'http://localhost/psolvingegypt/agus/?post_type=wpcf7_contact_form&#038;p=74', 0, 'wpcf7_contact_form', '', 0),
(75, 2, '2017-10-06 12:25:28', '2017-10-06 12:25:28', '<div class="col-sm-6">\r\n    [text* your-name  class:form-control  placeholder "Name"] \r\n</div>\r\n<div class="col-sm-6">\r\n[tel tel-734 class:form-control placeholder "Phone"]\r\n</div>\r\n<div class="col-sm-12">\r\n    [email* your-email class:form-control  placeholder "Email"] \r\n</div>\r\n<div class="col-sm-12">\r\n    [text your-subject class:form-control  placeholder "Service Location (Address)"]\r\n</div>\r\n<div class="col-sm-12">\r\n    [textarea your-message class:form-control  placeholder "message"] \r\n</div>\r\n[submit class:btn-effect2]\n1\nahmedelsayed.me "[your-subject]"\n[your-name] <me@ahmedelsayed.me>\nme@ahmedelsayed.me\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on ahmedelsayed.me (http://localhost/psolvingegypt/agus)\nReply-To: [your-email]\n\n\n\n\nahmedelsayed.me "[your-subject]"\nahmedelsayed.me <me@ahmedelsayed.me>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on ahmedelsayed.me (http://localhost/psolvingegypt/agus)\nReply-To: me@ahmedelsayed.me\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2017-10-08 09:47:55', '2017-10-08 09:47:55', '', 0, 'http://localhost/psolvingegypt/agus/?post_type=wpcf7_contact_form&#038;p=75', 0, 'wpcf7_contact_form', '', 0),
(76, 2, '2017-10-06 15:20:58', '2017-10-06 15:20:58', '', 'contact', '', 'publish', 'closed', 'closed', '', 'acf_contact', '', '', '2017-10-08 08:49:47', '2017-10-08 08:49:47', '', 0, 'http://localhost/psolvingegypt/agus/?post_type=acf&#038;p=76', 0, 'acf', '', 0),
(79, 2, '2017-10-06 15:43:26', '2017-10-06 15:43:26', '', 'Home', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2017-10-06 15:43:26', '2017-10-06 15:43:26', '', 41, 'http://localhost/psolvingegypt/agus/2017/10/06/41-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(82, 2, '2017-10-07 08:23:17', '2017-10-07 08:23:17', '<section class="section-default section-default_top-padd">\r\n<div class="container">\r\n<div class="row">\r\n<div class="col-xs-12">\r\n<h2 class="ui-title-block text-center">Skilled &amp; Qualified Security Professionals</h2>\r\n<ul class="b-advantages-3 b-advantages-3_mod-a">\r\n 	<li class="b-advantages-3__item">\r\n<div class="b-advantages-3__subtitle">in business for 10 years</div>\r\n<div class="b-advantages-3__title color-primary">we are an experienced team</div></li>\r\n 	<li class="b-advantages-3__item">\r\n<div class="b-advantages-3__subtitle">we offer 24/7 support</div>\r\n<div class="b-advantages-3__title color-primary">we are approved contractor</div></li>\r\n 	<li class="b-advantages-3__item">\r\n<div class="b-advantages-3__subtitle">protect you anywhere</div>\r\n<div class="b-advantages-3__title color-primary">we have ability to secure</div></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</section><section class="section-default">\r\n<div class="container">\r\n<div class="row">\r\n<div class="col-sm-6">\r\n<h2 class="ui-title-inner-1">Mission Statement</h2>\r\n<div class="ui-subtitle-block ui-subtitle-block_mr-btm_sm">WeGuard has over 10 years of experience as a security company.</div>\r\nLorem ipsum dolor sit amet consectetur adipisicing elit sed dol eiusmod tempor incididunt dolor magna aliqua enim ad minim veniam quis nostrud exercitation ullamco aboris nis aliq conseque aute irure dolor in reprehe derit in voluptate.\r\n\r\nDolore eu fugiat nulla pariatur enimadm nostrud exercitation ullamco laboris nisi ut aliqua veniam quis nostrud exercitation ullamco laboris nisi ut aliquip lorem ipsum dolor sit amet consecte tur adipis cing elit sed do eiusmod tempor incididunt.\r\n\r\n</div>\r\n<div class="col-sm-6"><img class="img-responsive" src="assets/media/content/555x300/1.jpg" alt="Foto" /></div>\r\n</div>\r\n</div>\r\n</section>\r\n<div class="section-default">\r\n<div class="container">\r\n<div class="row">\r\n<div class="col-xs-12">\r\n<div class="text-center">\r\n<h2 class="ui-title-block">We Guard History</h2>\r\n<div class="ui-subtitle-block">Elit sed aute dou eiusmod tempor incididunt labore dolore magna aliqua</div>\r\n<div class="ui-decor-type-1 center-block"></div>\r\n<div class="js-scroll-content">\r\n<ul class="b-history-list list-unstyled">\r\n 	<li class="b-history-list__item clearfix">\r\n<div class="b-history-list__label bg-primary center-block">january 2010</div>\r\n<div class="b-history-list__inner">\r\n<h3 class="b-history-list__title">incididunt ut labore et dolore magna aliqua enim minim</h3>\r\n<div class="b-history-list__description">Consectetur adipisicing elit sed aute ou eiusmod tempor incididunt ulabore dolore magna utmn lore enim ad minim veniam quis nostrud. Lorem ipsum dolor amet consectetur adipisicing.</div>\r\n&nbsp;\r\n\r\n</div></li>\r\n 	<li class="b-history-list__item clearfix">\r\n<div class="b-history-list__label bg-primary center-block">december 2014</div>\r\n<div class="b-history-list__inner">\r\n<h3 class="b-history-list__title">Lorem ipsum dolor sit amet elit sed eiusmod tempor</h3>\r\n<div class="b-history-list__description">Adipisicing elit sed aute ou eiusmod tempor incididunt ulabore dolore magna utmn lore enim minim veniam quis nostrud.Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod tempor incididunt labore dolore magna aliqua.</div>\r\n&nbsp;\r\n\r\n</div></li>\r\n 	<li class="b-history-list__item clearfix">\r\n<div class="b-history-list__label bg-primary center-block">august 2016</div>\r\n<div class="b-history-list__inner">\r\n<h3 class="b-history-list__title">incididunt ut labore et dolore magna aliqua enim minim</h3>\r\n<div class="b-history-list__description">Consectetur adipisicing elit sed aute ou eiusmod tempor incididunt ulabore dolore magna utmn lore enim ad minim veniam quis nostrud. Lorem ipsum dolor amet consectetur adipisicing.</div>\r\n&nbsp;\r\n\r\n</div></li>\r\n</ul>\r\n</div>\r\n<span class="b-history-list__btn btn btn-default btn-sm js-scroll-next">load more history</span>\r\n<div class="js-scroll-content">\r\n<ul class="b-history-list list-unstyled">\r\n 	<li class="b-history-list__item clearfix">\r\n<div class="b-history-list__label bg-primary center-block">january 2010</div>\r\n<div class="b-history-list__inner">\r\n<h3 class="b-history-list__title">incididunt ut labore et dolore magna aliqua enim minim</h3>\r\n<div class="b-history-list__description">Consectetur adipisicing elit sed aute ou eiusmod tempor incididunt ulabore dolore magna utmn lore enim ad minim veniam quis nostrud. Lorem ipsum dolor amet consectetur adipisicing.</div>\r\n&nbsp;\r\n\r\n</div></li>\r\n 	<li class="b-history-list__item clearfix">\r\n<div class="b-history-list__label bg-primary center-block">december 2014</div>\r\n<div class="b-history-list__inner">\r\n<h3 class="b-history-list__title">Lorem ipsum dolor sit amet elit sed eiusmod tempor</h3>\r\n<div class="b-history-list__description">Adipisicing elit sed aute ou eiusmod tempor incididunt ulabore dolore magna utmn lore enim minim veniam quis nostrud.Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod tempor incididunt labore dolore magna aliqua.</div>\r\n&nbsp;\r\n\r\n</div></li>\r\n 	<li class="b-history-list__item clearfix">\r\n<div class="b-history-list__label bg-primary center-block">august 2016</div>\r\n<div class="b-history-list__inner">\r\n<h3 class="b-history-list__title">incididunt ut labore et dolore magna aliqua enim minim</h3>\r\n<div class="b-history-list__description">Consectetur adipisicing elit sed aute ou eiusmod tempor incididunt ulabore dolore magna utmn lore enim ad minim veniam quis nostrud. Lorem ipsum dolor amet consectetur adipisicing.</div>\r\n&nbsp;\r\n\r\n</div></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2017-10-07 10:45:02', '2017-10-07 10:45:02', '', 0, 'http://localhost/psolvingegypt/agus/?page_id=82', 0, 'page', '', 0),
(83, 2, '2017-10-07 08:23:17', '2017-10-07 08:23:17', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '82-revision-v1', '', '', '2017-10-07 08:23:17', '2017-10-07 08:23:17', '', 82, 'http://localhost/psolvingegypt/agus/2017/10/07/82-revision-v1/', 0, 'revision', '', 0),
(87, 2, '2017-10-07 10:00:39', '2017-10-07 10:00:39', '', 'pic1', '', 'publish', 'closed', 'open', '', 'pic1', '', '', '2017-12-05 14:27:48', '2017-12-05 14:27:48', '', 0, 'http://localhost/psolvingegypt/agus/?post_type=gallery&#038;p=87', 0, 'gallery', '', 0),
(88, 2, '2017-10-07 10:00:15', '2017-10-07 10:00:15', '', '1', '', 'inherit', 'open', 'closed', '', '1-4', '', '', '2017-10-07 10:00:15', '2017-10-07 10:00:15', '', 87, 'http://localhost/psolvingegypt/agus/wp-content/uploads/2017/10/1-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(89, 2, '2017-10-07 10:00:18', '2017-10-07 10:00:18', '', '2', '', 'inherit', 'open', 'closed', '', '2-3', '', '', '2017-10-07 10:00:18', '2017-10-07 10:00:18', '', 87, 'http://localhost/psolvingegypt/agus/wp-content/uploads/2017/10/2-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(90, 2, '2017-10-07 10:00:25', '2017-10-07 10:00:25', '', '3', '', 'inherit', 'open', 'closed', '', '3', '', '', '2017-10-07 10:00:25', '2017-10-07 10:00:25', '', 87, 'http://localhost/psolvingegypt/agus/wp-content/uploads/2017/10/3.jpg', 0, 'attachment', 'image/jpeg', 0),
(91, 2, '2017-10-07 10:00:28', '2017-10-07 10:00:28', '', '4', '', 'inherit', 'open', 'closed', '', '4', '', '', '2017-10-07 10:00:28', '2017-10-07 10:00:28', '', 87, 'http://localhost/psolvingegypt/agus/wp-content/uploads/2017/10/4.jpg', 0, 'attachment', 'image/jpeg', 0),
(92, 2, '2017-10-07 10:00:39', '2017-10-07 10:00:39', '', 'pic1', '', 'inherit', 'closed', 'closed', '', '87-revision-v1', '', '', '2017-10-07 10:00:39', '2017-10-07 10:00:39', '', 87, 'http://localhost/psolvingegypt/agus/2017/10/07/87-revision-v1/', 0, 'revision', '', 0),
(93, 2, '2017-10-07 10:02:01', '2017-10-07 10:02:01', '', 'صور', '', 'publish', 'closed', 'open', '', '%d8%b5%d9%88%d8%b1', '', '', '2017-10-07 10:02:01', '2017-10-07 10:02:01', '', 0, 'http://localhost/psolvingegypt/agus/?post_type=gallery&#038;p=93', 0, 'gallery', '', 0),
(94, 2, '2017-10-07 10:02:01', '2017-10-07 10:02:01', '', 'صور', '', 'inherit', 'closed', 'closed', '', '93-revision-v1', '', '', '2017-10-07 10:02:01', '2017-10-07 10:02:01', '', 93, 'http://localhost/psolvingegypt/agus/2017/10/07/93-revision-v1/', 0, 'revision', '', 0),
(95, 2, '2017-10-07 10:03:03', '2017-10-07 10:03:03', '', 'pic2', '', 'publish', 'closed', 'open', '', 'pic2', '', '', '2017-12-05 14:27:12', '2017-12-05 14:27:12', '', 0, 'http://localhost/psolvingegypt/agus/?post_type=gallery&#038;p=95', 0, 'gallery', '', 0),
(96, 2, '2017-10-07 10:03:03', '2017-10-07 10:03:03', '', 'pic2', '', 'inherit', 'closed', 'closed', '', '95-revision-v1', '', '', '2017-10-07 10:03:03', '2017-10-07 10:03:03', '', 95, 'http://localhost/psolvingegypt/agus/2017/10/07/95-revision-v1/', 0, 'revision', '', 0),
(97, 2, '2017-10-07 10:04:21', '2017-10-07 10:04:21', '', 'صور2', '', 'publish', 'closed', 'open', '', '%d8%b5%d9%88%d8%b12', '', '', '2017-10-07 10:04:21', '2017-10-07 10:04:21', '', 0, 'http://localhost/psolvingegypt/agus/?post_type=gallery&#038;p=97', 0, 'gallery', '', 0),
(98, 2, '2017-10-07 10:04:21', '2017-10-07 10:04:21', '', 'صور2', '', 'inherit', 'closed', 'closed', '', '97-revision-v1', '', '', '2017-10-07 10:04:21', '2017-10-07 10:04:21', '', 97, 'http://localhost/psolvingegypt/agus/2017/10/07/97-revision-v1/', 0, 'revision', '', 0),
(99, 2, '2017-10-07 10:05:33', '2017-10-07 10:05:33', '', 'pic3', '', 'publish', 'closed', 'open', '', 'pic3', '', '', '2017-12-05 14:27:15', '2017-12-05 14:27:15', '', 0, 'http://localhost/psolvingegypt/agus/?post_type=gallery&#038;p=99', 0, 'gallery', '', 0),
(100, 2, '2017-10-07 10:05:33', '2017-10-07 10:05:33', '', 'pic3', '', 'inherit', 'closed', 'closed', '', '99-revision-v1', '', '', '2017-10-07 10:05:33', '2017-10-07 10:05:33', '', 99, 'http://localhost/psolvingegypt/agus/2017/10/07/99-revision-v1/', 0, 'revision', '', 0),
(101, 2, '2017-10-07 10:05:52', '2017-10-07 10:05:52', '', 'صور3', '', 'publish', 'closed', 'open', '', '%d8%b5%d9%88%d8%b12-2', '', '', '2017-10-07 10:06:10', '2017-10-07 10:06:10', '', 0, 'http://localhost/psolvingegypt/agus/?post_type=gallery&#038;p=101', 0, 'gallery', '', 0),
(102, 2, '2017-10-07 10:05:52', '2017-10-07 10:05:52', '', 'صور2', '', 'inherit', 'closed', 'closed', '', '101-revision-v1', '', '', '2017-10-07 10:05:52', '2017-10-07 10:05:52', '', 101, 'http://localhost/psolvingegypt/agus/2017/10/07/101-revision-v1/', 0, 'revision', '', 0),
(103, 2, '2017-10-07 10:06:10', '2017-10-07 10:06:10', '', 'صور3', '', 'inherit', 'closed', 'closed', '', '101-revision-v1', '', '', '2017-10-07 10:06:10', '2017-10-07 10:06:10', '', 101, 'http://localhost/psolvingegypt/agus/2017/10/07/101-revision-v1/', 0, 'revision', '', 0),
(104, 2, '2017-10-07 10:06:44', '2017-10-07 10:06:44', '', 'pic 4', '', 'publish', 'closed', 'open', '', 'pic-4', '', '', '2017-12-05 14:25:00', '2017-12-05 14:25:00', '', 0, 'http://localhost/psolvingegypt/agus/?post_type=gallery&#038;p=104', 0, 'gallery', '', 0),
(105, 2, '2017-10-07 10:06:44', '2017-10-07 10:06:44', '', 'pic 4', '', 'inherit', 'closed', 'closed', '', '104-revision-v1', '', '', '2017-10-07 10:06:44', '2017-10-07 10:06:44', '', 104, 'http://localhost/psolvingegypt/agus/2017/10/07/104-revision-v1/', 0, 'revision', '', 0),
(106, 2, '2017-10-07 10:07:05', '2017-10-07 10:07:05', '', 'صور 4', '', 'publish', 'closed', 'open', '', '%d8%b5%d9%88%d8%b1-4', '', '', '2017-12-05 14:22:33', '2017-12-05 14:22:33', '', 0, 'http://localhost/psolvingegypt/agus/?post_type=gallery&#038;p=106', 0, 'gallery', '', 0),
(107, 2, '2017-10-07 10:07:05', '2017-10-07 10:07:05', '', 'صور 4', '', 'inherit', 'closed', 'closed', '', '106-revision-v1', '', '', '2017-10-07 10:07:05', '2017-10-07 10:07:05', '', 106, 'http://localhost/psolvingegypt/agus/2017/10/07/106-revision-v1/', 0, 'revision', '', 0),
(109, 2, '2017-10-07 10:33:24', '2017-10-07 10:33:24', ' ', '', '', 'publish', 'closed', 'closed', '', '109', '', '', '2017-10-07 10:33:24', '2017-10-07 10:33:24', '', 0, 'http://localhost/psolvingegypt/agus/?p=109', 1, 'nav_menu_item', '', 0),
(112, 2, '2017-10-07 10:34:13', '2017-10-07 10:34:13', ' ', '', '', 'publish', 'closed', 'closed', '', '112', '', '', '2017-10-07 10:34:13', '2017-10-07 10:34:13', '', 0, 'http://localhost/psolvingegypt/agus/?p=112', 2, 'nav_menu_item', '', 0),
(113, 2, '2017-10-07 10:34:12', '2017-10-07 10:34:12', ' ', '', '', 'publish', 'closed', 'closed', '', '113', '', '', '2017-10-07 10:34:12', '2017-10-07 10:34:12', '', 0, 'http://localhost/psolvingegypt/agus/?p=113', 1, 'nav_menu_item', '', 0),
(114, 2, '2017-10-07 10:36:04', '2017-10-07 10:36:04', ' ', '', '', 'publish', 'closed', 'closed', '', '114', '', '', '2017-10-07 10:36:04', '2017-10-07 10:36:04', '', 0, 'http://localhost/psolvingegypt/agus/?p=114', 2, 'nav_menu_item', '', 0),
(115, 2, '2017-10-07 10:36:04', '2017-10-07 10:36:04', ' ', '', '', 'publish', 'closed', 'closed', '', '115', '', '', '2017-10-07 10:36:04', '2017-10-07 10:36:04', '', 0, 'http://localhost/psolvingegypt/agus/?p=115', 1, 'nav_menu_item', '', 0),
(116, 2, '2017-10-07 10:36:55', '2017-10-07 10:36:55', ' ', '', '', 'publish', 'closed', 'closed', '', '116', '', '', '2017-10-07 10:36:55', '2017-10-07 10:36:55', '', 0, 'http://localhost/psolvingegypt/agus/?p=116', 1, 'nav_menu_item', '', 0),
(117, 2, '2017-10-07 10:36:57', '2017-10-07 10:36:57', ' ', '', '', 'publish', 'closed', 'closed', '', '117', '', '', '2017-10-07 10:36:57', '2017-10-07 10:36:57', '', 0, 'http://localhost/psolvingegypt/agus/?p=117', 5, 'nav_menu_item', '', 0),
(118, 2, '2017-10-07 10:36:56', '2017-10-07 10:36:56', ' ', '', '', 'publish', 'closed', 'closed', '', '118', '', '', '2017-10-07 10:36:56', '2017-10-07 10:36:56', '', 0, 'http://localhost/psolvingegypt/agus/?p=118', 4, 'nav_menu_item', '', 0),
(119, 2, '2017-10-07 10:36:56', '2017-10-07 10:36:56', ' ', '', '', 'publish', 'closed', 'closed', '', '119', '', '', '2017-10-07 10:36:56', '2017-10-07 10:36:56', '', 0, 'http://localhost/psolvingegypt/agus/?p=119', 3, 'nav_menu_item', '', 0),
(120, 2, '2017-10-07 10:36:55', '2017-10-07 10:36:55', ' ', '', '', 'publish', 'closed', 'closed', '', '120', '', '', '2017-10-07 10:36:55', '2017-10-07 10:36:55', '', 0, 'http://localhost/psolvingegypt/agus/?p=120', 2, 'nav_menu_item', '', 0),
(121, 2, '2017-10-07 10:44:26', '2017-10-07 10:44:26', '<section class="section-default section-default_top-padd">\r\n<div class="container">\r\n<div class="row">\r\n<div class="col-xs-12">\r\n<h2 class="ui-title-block text-center">Skilled &amp; Qualified Security Professionals</h2>\r\n<ul class="b-advantages-3 b-advantages-3_mod-a">\r\n 	<li class="b-advantages-3__item">\r\n<div class="b-advantages-3__subtitle">in business for 10 years</div>\r\n<div class="b-advantages-3__title color-primary">we are an experienced team</div></li>\r\n 	<li class="b-advantages-3__item">\r\n<div class="b-advantages-3__subtitle">we offer 24/7 support</div>\r\n<div class="b-advantages-3__title color-primary">we are approved contractor</div></li>\r\n 	<li class="b-advantages-3__item">\r\n<div class="b-advantages-3__subtitle">protect you anywhere</div>\r\n<div class="b-advantages-3__title color-primary">we have ability to secure</div></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</section><section class="section-default">\r\n<div class="container">\r\n<div class="row">\r\n<div class="col-sm-6">\r\n<h2 class="ui-title-inner-1">Mission Statement</h2>\r\n<div class="ui-subtitle-block ui-subtitle-block_mr-btm_sm">WeGuard has over 10 years of experience as a security company.</div>\r\nLorem ipsum dolor sit amet consectetur adipisicing elit sed dol eiusmod tempor incididunt dolor magna aliqua enim ad minim veniam quis nostrud exercitation ullamco aboris nis aliq conseque aute irure dolor in reprehe derit in voluptate.\r\n\r\nDolore eu fugiat nulla pariatur enimadm nostrud exercitation ullamco laboris nisi ut aliqua veniam quis nostrud exercitation ullamco laboris nisi ut aliquip lorem ipsum dolor sit amet consecte tur adipis cing elit sed do eiusmod tempor incididunt.\r\n\r\n</div>\r\n<div class="col-sm-6"><img class="img-responsive" src="assets/media/content/555x300/1.jpg" alt="Foto" /></div>\r\n</div>\r\n</div>\r\n</section>\r\n<div class="section-default">\r\n<div class="container">\r\n<div class="row">\r\n<div class="col-xs-12">\r\n<div class="text-center">\r\n<h2 class="ui-title-block">We Guard History</h2>\r\n<div class="ui-subtitle-block">Elit sed aute dou eiusmod tempor incididunt labore dolore magna aliqua</div>\r\n<div class="ui-decor-type-1 center-block"></div>\r\n<div class="js-scroll-content">\r\n<ul class="b-history-list list-unstyled">\r\n 	<li class="b-history-list__item clearfix">\r\n<div class="b-history-list__label bg-primary center-block">january 2010</div>\r\n<div class="b-history-list__inner">\r\n<h3 class="b-history-list__title">incididunt ut labore et dolore magna aliqua enim minim</h3>\r\n<div class="b-history-list__description">Consectetur adipisicing elit sed aute ou eiusmod tempor incididunt ulabore dolore magna utmn lore enim ad minim veniam quis nostrud. Lorem ipsum dolor amet consectetur adipisicing.</div>\r\n&nbsp;\r\n\r\n</div></li>\r\n 	<li class="b-history-list__item clearfix">\r\n<div class="b-history-list__label bg-primary center-block">december 2014</div>\r\n<div class="b-history-list__inner">\r\n<h3 class="b-history-list__title">Lorem ipsum dolor sit amet elit sed eiusmod tempor</h3>\r\n<div class="b-history-list__description">Adipisicing elit sed aute ou eiusmod tempor incididunt ulabore dolore magna utmn lore enim minim veniam quis nostrud.Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod tempor incididunt labore dolore magna aliqua.</div>\r\n&nbsp;\r\n\r\n</div></li>\r\n 	<li class="b-history-list__item clearfix">\r\n<div class="b-history-list__label bg-primary center-block">august 2016</div>\r\n<div class="b-history-list__inner">\r\n<h3 class="b-history-list__title">incididunt ut labore et dolore magna aliqua enim minim</h3>\r\n<div class="b-history-list__description">Consectetur adipisicing elit sed aute ou eiusmod tempor incididunt ulabore dolore magna utmn lore enim ad minim veniam quis nostrud. Lorem ipsum dolor amet consectetur adipisicing.</div>\r\n&nbsp;\r\n\r\n</div></li>\r\n</ul>\r\n</div>\r\n<span class="b-history-list__btn btn btn-default btn-sm js-scroll-next">load more history</span>\r\n<div class="js-scroll-content">\r\n<ul class="b-history-list list-unstyled">\r\n 	<li class="b-history-list__item clearfix">\r\n<div class="b-history-list__label bg-primary center-block">january 2010</div>\r\n<div class="b-history-list__inner">\r\n<h3 class="b-history-list__title">incididunt ut labore et dolore magna aliqua enim minim</h3>\r\n<div class="b-history-list__description">Consectetur adipisicing elit sed aute ou eiusmod tempor incididunt ulabore dolore magna utmn lore enim ad minim veniam quis nostrud. Lorem ipsum dolor amet consectetur adipisicing.</div>\r\n&nbsp;\r\n\r\n</div></li>\r\n 	<li class="b-history-list__item clearfix">\r\n<div class="b-history-list__label bg-primary center-block">december 2014</div>\r\n<div class="b-history-list__inner">\r\n<h3 class="b-history-list__title">Lorem ipsum dolor sit amet elit sed eiusmod tempor</h3>\r\n<div class="b-history-list__description">Adipisicing elit sed aute ou eiusmod tempor incididunt ulabore dolore magna utmn lore enim minim veniam quis nostrud.Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod tempor incididunt labore dolore magna aliqua.</div>\r\n&nbsp;\r\n\r\n</div></li>\r\n 	<li class="b-history-list__item clearfix">\r\n<div class="b-history-list__label bg-primary center-block">august 2016</div>\r\n<div class="b-history-list__inner">\r\n<h3 class="b-history-list__title">incididunt ut labore et dolore magna aliqua enim minim</h3>\r\n<div class="b-history-list__description">Consectetur adipisicing elit sed aute ou eiusmod tempor incididunt ulabore dolore magna utmn lore enim ad minim veniam quis nostrud. Lorem ipsum dolor amet consectetur adipisicing.</div>\r\n&nbsp;\r\n\r\n</div></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'About Us', '', 'inherit', 'closed', 'closed', '', '82-revision-v1', '', '', '2017-10-07 10:44:26', '2017-10-07 10:44:26', '', 82, 'http://localhost/psolvingegypt/agus/2017/10/07/82-revision-v1/', 0, 'revision', '', 0),
(122, 2, '2017-10-07 11:47:28', '2017-10-07 11:47:28', '<section class="section-default section-default_top-padd">\n<div class="container">\n<div class="row">\n<div class="col-xs-12">\n<h2 class="ui-title-block text-center">لمهنيين الأمنيين المهرة والمؤهلين</h2>\n<ul class="b-advantages-3 b-advantages-3_mod-a">\n 	<li class="b-advantages-3__item">\n<div class="b-advantages-3__subtitle">في الأعمال لمدة 10 سنوات</div>\n<div class="b-advantages-3__title color-primary">نحن فريق من ذوي الخبرة</div></li>\n 	<li class="b-advantages-3__item">\n<div class="b-advantages-3__subtitle">ونحن نقدم 24/7 الدعم</div>\n<div class="b-advantages-3__title color-primary">نحن وافق المقاول</div></li>\n 	<li class="b-advantages-3__item">\n<div class="b-advantages-3__subtitle">حمايتك في أي مكان</div>\n<div class="b-advantages-3__title color-primary">لدينا القدرة على تأمين</div></li>\n</ul>\n</div>\n</div>\n</div>\n</section><section class="section-default">\n<div class="container">\n<div class="row">\n<div class="col-sm-12">\n<h2 class="ui-title-inner-1">بيان المهمة</h2>\n<div class="ui-subtitle-block ui-subtitle-block_mr-btm_sm">ويغوارد لديها أكثر من 10 عاما من الخبرة كشركة الأمن.</div>\nهناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.\n\nهناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.\n\n</div>\n</div>\n</div>\n</section>\n<div class="section-default">\n<div class="container">\n<div class="row">\n<div class="col-xs-12">\n<div class="text-center">\n<h2 class="ui-title-block">نحن الحرس التاريخ</h2>\n<div class="ui-subtitle-block">هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما</div>\n<div class="ui-decor-type-1 center-block"></div>\n<div class="js-scroll-content">\n<ul class="b-history-list list-unstyled">\n 	<li class="b-history-list__item clearfix">\n<div class="b-history-list__label bg-primary center-block">يناير 2010</div>\n<div class="b-history-list__inner">\n<h3 class="b-history-list__title">incididunt ut labore et dolore magna aliqua enim minim</h3>\n<div class="b-history-list__description">Consectetur adipisicing elit sed aute ou eiusmod tempor incididunt ulabore dolore magna utmn lore enim ad minim veniam quis nostrud. Lorem ipsum dolor amet consectetur adipisicing.</div>\n&nbsp;\n\n</div></li>\n 	<li class="b-history-list__item clearfix">\n<div class="b-history-list__label bg-primary center-block">december 2014</div>\n<div class="b-history-list__inner">\n<h3 class="b-history-list__title">Lorem ipsum dolor sit amet elit sed eiusmod tempor</h3>\n<div class="b-history-list__description">Adipisicing elit sed aute ou eiusmod tempor incididunt ulabore dolore magna utmn lore enim minim veniam quis nostrud.Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod tempor incididunt labore dolore magna aliqua.</div>\n&nbsp;\n\n</div></li>\n 	<li class="b-history-list__item clearfix">\n<div class="b-history-list__label bg-primary center-block">august 2016</div>\n<div class="b-history-list__inner">\n<h3 class="b-history-list__title">incididunt ut labore et dolore magna aliqua enim minim</h3>\n<div class="b-history-list__description">Consectetur adipisicing elit sed aute ou eiusmod tempor incididunt ulabore dolore magna utmn lore enim ad minim veniam quis nostrud. Lorem ipsum dolor amet consectetur adipisicing.</div>\n&nbsp;\n\n</div></li>\n</ul>\n</div>\n<span class="b-history-list__btn btn btn-default btn-sm js-scroll-next">load more history</span>\n<div class="js-scroll-content">\n<ul class="b-history-list list-unstyled">\n 	<li class="b-history-list__item clearfix">\n<div class="b-history-list__label bg-primary center-block">january 2010</div>\n<div class="b-history-list__inner">\n<h3 class="b-history-list__title">incididunt ut labore et dolore magna aliqua enim minim</h3>\n<div class="b-history-list__description">Consectetur adipisicing elit sed aute ou eiusmod tempor incididunt ulabore dolore magna utmn lore enim ad minim veniam quis nostrud. Lorem ipsum dolor amet consectetur adipisicing.</div>\n&nbsp;\n\n</div></li>\n 	<li class="b-history-list__item clearfix">\n<div class="b-history-list__label bg-primary center-block">december 2014</div>\n<div class="b-history-list__inner">\n<h3 class="b-history-list__title">Lorem ipsum dolor sit amet elit sed eiusmod tempor</h3>\n<div class="b-history-list__description">Adipisicing elit sed aute ou eiusmod tempor incididunt ulabore dolore magna utmn lore enim minim veniam quis nostrud.Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod tempor incididunt labore dolore magna aliqua.</div>\n&nbsp;\n\n</div></li>\n 	<li class="b-history-list__item clearfix">\n<div class="b-history-list__label bg-primary center-block">august 2016</div>\n<div class="b-history-list__inner">\n<h3 class="b-history-list__title">incididunt ut labore et dolore magna aliqua enim minim</h3>\n<div class="b-history-list__description">Consectetur adipisicing elit sed aute ou eiusmod tempor incididunt ulabore dolore magna utmn lore enim ad minim veniam quis nostrud. Lorem ipsum dolor amet consectetur adipisicing.</div>\n&nbsp;\n\n</div></li>\n</ul>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>', 'عن الشركة', '', 'inherit', 'closed', 'closed', '', '13-autosave-v1', '', '', '2017-10-07 11:47:28', '2017-10-07 11:47:28', '', 13, 'http://localhost/psolvingegypt/agus/2017/10/07/13-autosave-v1/', 0, 'revision', '', 0),
(123, 2, '2017-10-07 11:15:35', '2017-10-07 11:15:35', '<section class="section-default section-default_top-padd">\r\n<div class="container">\r\n<div class="row">\r\n<div class="col-xs-12">\r\n<h2 class="ui-title-block text-center">المهنيين الأمنيين المهرة والمؤهلين</h2>\r\n<ul class="b-advantages-3 b-advantages-3_mod-a">\r\n 	<li class="b-advantages-3__item">\r\n<div class="b-advantages-3__subtitle">في الأعمال لمدة 10 سنوات</div></li>\r\n 	<li class="b-advantages-3__item">\r\n<div class="b-advantages-3__subtitle">ونحن نقدم 24/7 الدعم</div>\r\n<div class="b-advantages-3__title color-primary">نحن وافق المقاول</div></li>\r\n 	<li class="b-advantages-3__item">\r\n<div class="b-advantages-3__subtitle">حمايتك في أي مكان</div>\r\n<div class="b-advantages-3__title color-primary">لدينا القدرة على تأمين</div></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</section><section class="section-default">\r\n<div class="container">\r\n<div class="row">\r\n<div class="col-sm-12">\r\n<h2 class="ui-title-inner-1">بيان المهمة</h2>\r\n<div class="ui-subtitle-block ui-subtitle-block_mr-btm_sm">ويغوارد لديها أكثر من 10 عاما من الخبرة كشركة الأمن.</div>\r\nهناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.\r\n\r\nهناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<div class="section-default">\r\n<div class="container">\r\n<div class="row">\r\n<div class="col-xs-12">\r\n<div class="text-center">\r\n<h2 class="ui-title-block">We Guard History</h2>\r\n<div class="ui-subtitle-block">Elit sed aute dou eiusmod tempor incididunt labore dolore magna aliqua</div>\r\n<div class="ui-decor-type-1 center-block"></div>\r\n<div class="js-scroll-content">\r\n<ul class="b-history-list list-unstyled">\r\n 	<li class="b-history-list__item clearfix">\r\n<div class="b-history-list__label bg-primary center-block">january 2010</div>\r\n<div class="b-history-list__inner">\r\n<h3 class="b-history-list__title">incididunt ut labore et dolore magna aliqua enim minim</h3>\r\n<div class="b-history-list__description">Consectetur adipisicing elit sed aute ou eiusmod tempor incididunt ulabore dolore magna utmn lore enim ad minim veniam quis nostrud. Lorem ipsum dolor amet consectetur adipisicing.</div>\r\n&nbsp;\r\n\r\n</div></li>\r\n 	<li class="b-history-list__item clearfix">\r\n<div class="b-history-list__label bg-primary center-block">december 2014</div>\r\n<div class="b-history-list__inner">\r\n<h3 class="b-history-list__title">Lorem ipsum dolor sit amet elit sed eiusmod tempor</h3>\r\n<div class="b-history-list__description">Adipisicing elit sed aute ou eiusmod tempor incididunt ulabore dolore magna utmn lore enim minim veniam quis nostrud.Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod tempor incididunt labore dolore magna aliqua.</div>\r\n&nbsp;\r\n\r\n</div></li>\r\n 	<li class="b-history-list__item clearfix">\r\n<div class="b-history-list__label bg-primary center-block">august 2016</div>\r\n<div class="b-history-list__inner">\r\n<h3 class="b-history-list__title">incididunt ut labore et dolore magna aliqua enim minim</h3>\r\n<div class="b-history-list__description">Consectetur adipisicing elit sed aute ou eiusmod tempor incididunt ulabore dolore magna utmn lore enim ad minim veniam quis nostrud. Lorem ipsum dolor amet consectetur adipisicing.</div>\r\n&nbsp;\r\n\r\n</div></li>\r\n</ul>\r\n</div>\r\n<span class="b-history-list__btn btn btn-default btn-sm js-scroll-next">load more history</span>\r\n<div class="js-scroll-content">\r\n<ul class="b-history-list list-unstyled">\r\n 	<li class="b-history-list__item clearfix">\r\n<div class="b-history-list__label bg-primary center-block">january 2010</div>\r\n<div class="b-history-list__inner">\r\n<h3 class="b-history-list__title">incididunt ut labore et dolore magna aliqua enim minim</h3>\r\n<div class="b-history-list__description">Consectetur adipisicing elit sed aute ou eiusmod tempor incididunt ulabore dolore magna utmn lore enim ad minim veniam quis nostrud. Lorem ipsum dolor amet consectetur adipisicing.</div>\r\n&nbsp;\r\n\r\n</div></li>\r\n 	<li class="b-history-list__item clearfix">\r\n<div class="b-history-list__label bg-primary center-block">december 2014</div>\r\n<div class="b-history-list__inner">\r\n<h3 class="b-history-list__title">Lorem ipsum dolor sit amet elit sed eiusmod tempor</h3>\r\n<div class="b-history-list__description">Adipisicing elit sed aute ou eiusmod tempor incididunt ulabore dolore magna utmn lore enim minim veniam quis nostrud.Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod tempor incididunt labore dolore magna aliqua.</div>\r\n&nbsp;\r\n\r\n</div></li>\r\n 	<li class="b-history-list__item clearfix">\r\n<div class="b-history-list__label bg-primary center-block">august 2016</div>\r\n<div class="b-history-list__inner">\r\n<h3 class="b-history-list__title">incididunt ut labore et dolore magna aliqua enim minim</h3>\r\n<div class="b-history-list__description">Consectetur adipisicing elit sed aute ou eiusmod tempor incididunt ulabore dolore magna utmn lore enim ad minim veniam quis nostrud. Lorem ipsum dolor amet consectetur adipisicing.</div>\r\n&nbsp;\r\n\r\n</div></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'عن الشركة', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2017-10-07 11:15:35', '2017-10-07 11:15:35', '', 13, 'http://localhost/psolvingegypt/agus/2017/10/07/13-revision-v1/', 0, 'revision', '', 0),
(124, 2, '2017-10-07 11:48:50', '2017-10-07 11:48:50', '<section class="section-default section-default_top-padd">\r\n<div class="container">\r\n<div class="row">\r\n<div class="col-xs-12">\r\n<h2 class="ui-title-block text-center">لمهنيين الأمنيين المهرة والمؤهلين</h2>\r\n<ul class="b-advantages-3 b-advantages-3_mod-a">\r\n 	<li class="b-advantages-3__item">\r\n<div class="b-advantages-3__subtitle">في الأعمال لمدة 10 سنوات</div>\r\n<div class="b-advantages-3__title color-primary">نحن فريق من ذوي الخبرة</div></li>\r\n 	<li class="b-advantages-3__item">\r\n<div class="b-advantages-3__subtitle">ونحن نقدم 24/7 الدعم</div>\r\n<div class="b-advantages-3__title color-primary">نحن وافق المقاول</div></li>\r\n 	<li class="b-advantages-3__item">\r\n<div class="b-advantages-3__subtitle">حمايتك في أي مكان</div>\r\n<div class="b-advantages-3__title color-primary">لدينا القدرة على تأمين</div></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</section><section class="section-default">\r\n<div class="container">\r\n<div class="row">\r\n<div class="col-sm-12">\r\n<h2 class="ui-title-inner-1">بيان المهمة</h2>\r\n<div class="ui-subtitle-block ui-subtitle-block_mr-btm_sm">ويغوارد لديها أكثر من 10 عاما من الخبرة كشركة الأمن.</div>\r\nهناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.\r\n\r\nهناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<div class="section-default">\r\n<div class="container">\r\n<div class="row">\r\n<div class="col-xs-12">\r\n<div class="text-center">\r\n<h2 class="ui-title-block">نحن الحرس التاريخ</h2>\r\n<div class="ui-subtitle-block">هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما</div>\r\n<div class="ui-decor-type-1 center-block"></div>\r\n<div class="js-scroll-content">\r\n<ul class="b-history-list list-unstyled">\r\n 	<li class="b-history-list__item clearfix">\r\n<div class="b-history-list__label bg-primary center-block">يناير 2010</div>\r\n<div class="b-history-list__inner">\r\n<h3 class="b-history-list__title">هناك حقيقة مثبتة منذ زمن طويل</h3>\r\n<div class="b-history-list__description">\r\n\r\nهناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.\r\n\r\n</div>\r\n&nbsp;\r\n\r\n</div></li>\r\n 	<li class="b-history-list__item clearfix">\r\n<div class="b-history-list__label bg-primary center-block">ديسمبر 2014</div>\r\n<div class="b-history-list__inner">\r\n<h3 class="b-history-list__title">هناك حقيقة مثبتة منذ زمن طويل</h3>\r\n<div class="b-history-list__description">\r\n\r\nهناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.\r\n\r\n</div>\r\n&nbsp;\r\n\r\n</div></li>\r\n 	<li class="b-history-list__item clearfix">\r\n<div class="b-history-list__label bg-primary center-block">أغسطس 2016</div>\r\n<div class="b-history-list__inner">\r\n<h3 class="b-history-list__title">هناك حقيقة مثبتة منذ زمن طويل</h3>\r\n<div class="b-history-list__description">\r\n\r\nهناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.\r\n\r\n</div>\r\n&nbsp;\r\n\r\n</div>\r\n<div class="b-history-list__inner"></div></li>\r\n</ul>\r\n</div>\r\n<div class="js-scroll-content"></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'عن الشركة', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2017-10-07 11:48:50', '2017-10-07 11:48:50', '', 13, 'http://localhost/psolvingegypt/agus/2017/10/07/13-revision-v1/', 0, 'revision', '', 0),
(125, 2, '2017-10-08 07:59:35', '2017-10-08 07:59:35', 'Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium totam rem aperiam eaque ipsa quae ab illo inventore.\r\n\r\nVeritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est qui dolrem ipsum quia dolor sit amet consectetur adipisci velit sed quia non numquam.\r\n<blockquote class="blockquote blockquote-1">“ Corem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod tempor incididunt labore et dolore magna aliqua uat enim adminim veniam quis nostrud exercitation ulamco laboris nisi ut aliquip exea commodo conseq uat duis aute. ”</blockquote>\r\nSed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium totam rem aperiam eaque ipsa qulle ab illo inventore. Veritatis et quasi architecto beatefas vitde dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit sed quia consequuntur magni dolores eos qui ratione.\r\n<h3 class="ui-title-inner-2">Lorem ipsum dolor sit amet</h3>\r\nLabore et dolore magna aliqua. Ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nSed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium totam rem aperiam eaque ipsa quae ab illo inventore. Veritatis et quasi architecto beata vitad dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit sed quia consequuntur magni dolores eos qui ratione.', 'هناك حقيقة مثبتة منذ زمن طويل', 'ritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit sed quia consequu', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2017-10-08 07:59:35', '2017-10-08 07:59:35', '', 70, 'http://localhost/psolvingegypt/agus/2017/10/08/70-revision-v1/', 0, 'revision', '', 0),
(126, 2, '2017-10-08 08:00:06', '2017-10-08 08:00:06', ' <p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium totam rem aperiam eaque ipsa quae ab illo inventore.</p>\r\n                      <p>Veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est qui dolrem ipsum quia dolor sit amet consectetur adipisci velit sed quia non numquam.</p>\r\n                      <blockquote class="blockquote blockquote-1">\r\n                        <p>“ Corem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod tempor incididunt labore et dolore magna aliqua uat enim adminim veniam quis nostrud exercitation ulamco laboris nisi ut aliquip exea commodo conseq uat duis aute. ”</p>\r\n                      </blockquote>\r\n                      <p>Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium totam rem aperiam eaque ipsa qulle ab illo inventore. Veritatis et quasi architecto beatefas vitde dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit sed quia consequuntur magni dolores eos qui ratione.</p>\r\n                      <h3 class="ui-title-inner-2">Lorem ipsum dolor sit amet</h3>\r\n                      <p>Labore et dolore magna aliqua. Ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n                      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium totam rem aperiam eaque ipsa quae ab illo inventore. Veritatis et quasi architecto beata vitad dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit sed quia consequuntur magni dolores eos qui ratione.</p>', 'Lorem ipsum dolor sit', 'Lorem ipsum dolor sit amet consectetur adipisicing elit sed ciusmod tempor incididunt labore et dolore magna aliqua aut enim ad minim veniam quis nostrud. ', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2017-10-08 08:00:06', '2017-10-08 08:00:06', '', 68, 'http://localhost/psolvingegypt/agus/2017/10/08/68-revision-v1/', 0, 'revision', '', 0),
(127, 2, '2017-10-08 08:38:17', '2017-10-08 08:38:17', 'Whatever are your security needs,\r\n- Commercial or Residential - Big or Small -\r\nContact us &amp; we would develop a solution for you!', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2017-10-08 08:38:17', '2017-10-08 08:38:17', '', 23, 'http://localhost/psolvingegypt/agus/2017/10/08/23-revision-v1/', 0, 'revision', '', 0),
(128, 2, '2017-10-08 08:40:14', '2017-10-08 08:40:14', 'مهما كانت احتياجاتك الأمنية،\n<br>\n- تجاري أو سكني - كبير أو صغير -\n\nالاتصال بنا ونحن سوف تطوير حل بالنسبة لك!', 'اتصل بنا', '', 'inherit', 'closed', 'closed', '', '25-autosave-v1', '', '', '2017-10-08 08:40:14', '2017-10-08 08:40:14', '', 25, 'http://localhost/psolvingegypt/agus/2017/10/08/25-autosave-v1/', 0, 'revision', '', 0),
(129, 2, '2017-10-08 08:40:23', '2017-10-08 08:40:23', 'مهما كانت احتياجاتك الأمنية،\r\n<br>\r\n- تجاري أو سكني - كبير أو صغير -\r\n<br>\r\nالاتصال بنا ونحن سوف تطوير حل بالنسبة لك!', 'اتصل بنا', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2017-10-08 08:40:23', '2017-10-08 08:40:23', '', 25, 'http://localhost/psolvingegypt/agus/2017/10/08/25-revision-v1/', 0, 'revision', '', 0),
(130, 2, '2017-10-08 08:43:27', '2017-10-08 08:43:27', 'Whatever are your security needs,\r\n- Commercial or Residential - Big or Small -\r\nContact us &amp; we would develop a solution for you!', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2017-10-08 08:43:27', '2017-10-08 08:43:27', '', 23, 'http://localhost/psolvingegypt/agus/2017/10/08/23-revision-v1/', 0, 'revision', '', 0),
(131, 2, '2017-10-08 09:22:11', '2017-10-08 09:22:11', '<div class="col-md-6">\r\n   <div class="row">\r\n<div class="col-md-6">\r\n     [text* your-name class:form-control placeholder "Name"] \r\n     [email* your-email class:form-control placeholder "Email"]      \r\n</div>\r\n<div class="col-md-6">\r\n    [tel tel-364 class:form-control placeholder "Phone"] \r\n    [text your-subject class:form-control placeholder "Subject"]\r\n</div> \r\n[submit class:btn-effect2]\r\n</div></div>\r\n<div class="col-md-6">\r\n    [textarea your-message class:form-control placeholder "Message"]\r\n</div>\n1\nAGUS "[your-subject]"\n[your-name] <me@ahmedelsayed.me>\nme@ahmedelsayed.me\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on AGUS (http://localhost/psolvingegypt/agus)\nReply-To: [your-email]\n\n\n\n\nAGUS "[your-subject]"\nAGUS <me@ahmedelsayed.me>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on AGUS (http://localhost/psolvingegypt/agus)\nReply-To: me@ahmedelsayed.me\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2017-10-08 09:59:03', '2017-10-08 09:59:03', '', 0, 'http://localhost/psolvingegypt/agus/?post_type=wpcf7_contact_form&#038;p=131', 0, 'wpcf7_contact_form', '', 0),
(132, 2, '2017-10-08 09:22:34', '2017-10-08 09:22:34', '<div class="col-md-6">\r\n   <div class="row">\r\n<div class="col-md-6">\r\n [text* your-name class:form-control placeholder "الاسم"] \r\n  [email* your-email  class:form-control placeholder "البريد الالكتروني"]      \r\n</div>\r\n<div class="col-md-6">\r\n    [tel tel-364 class:form-control placeholder "التليفون" ] \r\n    [text your-subject class:form-control placeholder "الموضوع" ]\r\n</div> \r\n[submit class:btn-effect2]\r\n</div>\r\n</div>\r\n<div class="col-md-6">\r\n     [textarea your-message class:form-control placeholder "الرسالة"]\r\n</div>\n1\nAGUS "[your-subject]"\n[your-name] <me@ahmedelsayed.me>\nme@ahmedelsayed.me\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on AGUS (http://localhost/psolvingegypt/agus)\nReply-To: [your-email]\n\n\n\n\nAGUS "[your-subject]"\nAGUS <me@ahmedelsayed.me>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on AGUS (http://localhost/psolvingegypt/agus)\nReply-To: me@ahmedelsayed.me\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact us', '', 'publish', 'closed', 'closed', '', 'untitled', '', '', '2017-10-08 09:58:34', '2017-10-08 09:58:34', '', 0, 'http://localhost/psolvingegypt/agus/?post_type=wpcf7_contact_form&#038;p=132', 0, 'wpcf7_contact_form', '', 0),
(133, 2, '2017-10-08 10:32:38', '2017-10-08 10:32:38', 'مهما كانت احتياجاتك الأمنية،\r\n\r\n- تجاري أو سكني - كبير أو صغير -\r\n\r\nالاتصال بنا ونحن سوف تطوير حل بالنسبة لك!', 'اتصل بنا', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2017-10-08 10:32:38', '2017-10-08 10:32:38', '', 25, 'http://localhost/psolvingegypt/agus/2017/10/08/25-revision-v1/', 0, 'revision', '', 0),
(134, 2, '2017-10-08 10:52:20', '2017-10-08 10:52:20', '', 'services', '', 'publish', 'closed', 'closed', '', 'acf_services', '', '', '2017-10-08 11:07:02', '2017-10-08 11:07:02', '', 0, 'http://localhost/psolvingegypt/agus/?post_type=acf&#038;p=134', 0, 'acf', '', 0),
(135, 2, '2017-10-08 10:53:38', '2017-10-08 10:53:38', '', 'Services', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2017-10-08 10:53:38', '2017-10-08 10:53:38', '', 15, 'http://localhost/psolvingegypt/agus/2017/10/08/15-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(136, 2, '2017-10-08 10:59:01', '2017-10-08 10:59:01', '', 'الخدمات', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2017-10-08 10:59:01', '2017-10-08 10:59:01', '', 17, 'http://localhost/psolvingegypt/agus/2017/10/08/17-revision-v1/', 0, 'revision', '', 0),
(137, 2, '2017-10-08 11:24:31', '2017-10-08 11:24:31', '<div class="ui-subtitle-block ui-subtitle-block_mr-btm_xs">More than five decades in industry gives us the power to perform every day and every time.</div>\r\n<div>\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit sed dol eiusmod tempor incididunt dolor magna aliqua enim ad minim veniam quis nostrud exercitation ullamco aboris nisi aliquip commod conseque aute irure dolor in reprehe derit in voluptate velit esvse sed ipsum dolor tempod cillum.\r\n\r\n</div>', 'CCTV SYSTEMS', 'Adipisicing elit sed auteh eiusmod tempor ut labore dolore magna aliqua renim adim minim veniam quis nostrud baorem ipsum dolor sit.\r\n', 'publish', 'open', 'open', '', 'cctv-systems', '', '', '2017-10-08 14:18:31', '2017-10-08 14:18:31', '', 0, 'http://localhost/psolvingegypt/agus/?post_type=services2&#038;p=137', 0, 'services2', '', 0),
(138, 2, '2017-10-08 11:17:10', '2017-10-08 11:17:10', '', 'Services', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2017-10-08 11:17:10', '2017-10-08 11:17:10', '', 15, 'http://localhost/psolvingegypt/agus/2017/10/08/15-revision-v1/', 0, 'revision', '', 0),
(139, 2, '2017-10-08 11:19:27', '2017-10-08 11:19:27', '', 'الخدمات', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2017-10-08 11:19:27', '2017-10-08 11:19:27', '', 17, 'http://localhost/psolvingegypt/agus/2017/10/08/17-revision-v1/', 0, 'revision', '', 0),
(140, 2, '2017-10-08 11:23:58', '2017-10-08 11:23:58', '', 'Services', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2017-10-08 11:23:58', '2017-10-08 11:23:58', '', 15, 'http://localhost/psolvingegypt/agus/2017/10/08/15-revision-v1/', 0, 'revision', '', 0),
(141, 2, '2017-10-08 11:24:26', '2017-10-08 11:24:26', '', 'الخدمات', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2017-10-08 11:24:26', '2017-10-08 11:24:26', '', 17, 'http://localhost/psolvingegypt/agus/2017/10/08/17-revision-v1/', 0, 'revision', '', 0),
(142, 2, '2017-10-08 11:24:31', '2017-10-08 11:24:31', '', 'CCTV SYSTEMS', 'Adipisicing elit sed auteh eiusmod tempor ut labore dolore magna aliqua renim adim minim veniam quis nostrud baorem ipsum dolor sit.\r\n', 'inherit', 'closed', 'closed', '', '137-revision-v1', '', '', '2017-10-08 11:24:31', '2017-10-08 11:24:31', '', 137, 'http://localhost/psolvingegypt/agus/2017/10/08/137-revision-v1/', 0, 'revision', '', 0),
(143, 2, '2017-10-08 11:28:52', '2017-10-08 11:28:52', '', 'Post Services', '', 'publish', 'closed', 'closed', '', 'acf_post-services', '', '', '2017-10-08 14:00:56', '2017-10-08 14:00:56', '', 0, 'http://localhost/psolvingegypt/agus/?post_type=acf&#038;p=143', 0, 'acf', '', 0),
(144, 2, '2017-10-08 11:30:16', '2017-10-08 11:30:16', '', 'CCTV SYSTEMS', 'Adipisicing elit sed auteh eiusmod tempor ut labore dolore magna aliqua renim adim minim veniam quis nostrud baorem ipsum dolor sit.\r\n', 'inherit', 'closed', 'closed', '', '137-revision-v1', '', '', '2017-10-08 11:30:16', '2017-10-08 11:30:16', '', 137, 'http://localhost/psolvingegypt/agus/2017/10/08/137-revision-v1/', 0, 'revision', '', 0),
(145, 2, '2017-10-08 11:30:55', '2017-10-08 11:30:55', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.\r\n\r\n&nbsp;\r\n\r\nهناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.', 'أنظمة الدوائر التلفزيونية المغلقة', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.', 'publish', 'open', 'open', '', '%d8%a3%d9%86%d8%b8%d9%85%d8%a9-%d8%a7%d9%84%d8%af%d9%88%d8%a7%d8%a6%d8%b1-%d8%a7%d9%84%d8%aa%d9%84%d9%81%d8%b2%d9%8a%d9%88%d9%86%d9%8a%d8%a9-%d8%a7%d9%84%d9%85%d8%ba%d9%84%d9%82%d8%a9', '', '', '2017-10-08 12:43:39', '2017-10-08 12:43:39', '', 0, 'http://localhost/psolvingegypt/agus/?post_type=services2&#038;p=145', 0, 'services2', '', 0),
(146, 2, '2017-10-08 11:30:55', '2017-10-08 11:30:55', '', 'أنظمة الدوائر التلفزيونية المغلقة', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.', 'inherit', 'closed', 'closed', '', '145-revision-v1', '', '', '2017-10-08 11:30:55', '2017-10-08 11:30:55', '', 145, 'http://localhost/psolvingegypt/agus/2017/10/08/145-revision-v1/', 0, 'revision', '', 0),
(147, 2, '2017-10-08 11:34:20', '2017-10-08 11:34:20', '', 'RISK ASSESSMENT', 'Adipisicing elit sed auteh eiusmod tempor ut labore dolore magna aliqua renim adim minim veniam quis nostrud baorem ipsum dolor sit.', 'publish', 'open', 'open', '', 'risk-assessment', '', '', '2017-10-08 11:34:20', '2017-10-08 11:34:20', '', 0, 'http://localhost/psolvingegypt/agus/?post_type=services2&#038;p=147', 0, 'services2', '', 0),
(148, 2, '2017-10-08 11:34:20', '2017-10-08 11:34:20', '', 'RISK ASSESSMENT', 'Adipisicing elit sed auteh eiusmod tempor ut labore dolore magna aliqua renim adim minim veniam quis nostrud baorem ipsum dolor sit.', 'inherit', 'closed', 'closed', '', '147-revision-v1', '', '', '2017-10-08 11:34:20', '2017-10-08 11:34:20', '', 147, 'http://localhost/psolvingegypt/agus/2017/10/08/147-revision-v1/', 0, 'revision', '', 0),
(149, 2, '2017-10-08 11:35:01', '2017-10-08 11:35:01', '', 'تقييم المخاطر', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.', 'publish', 'open', 'open', '', '%d8%aa%d9%82%d9%8a%d9%8a%d9%85-%d8%a7%d9%84%d9%85%d8%ae%d8%a7%d8%b7%d8%b1', '', '', '2017-10-08 11:35:01', '2017-10-08 11:35:01', '', 0, 'http://localhost/psolvingegypt/agus/?post_type=services2&#038;p=149', 0, 'services2', '', 0),
(150, 2, '2017-10-08 11:35:01', '2017-10-08 11:35:01', '', 'تقييم المخاطر', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.', 'inherit', 'closed', 'closed', '', '149-revision-v1', '', '', '2017-10-08 11:35:01', '2017-10-08 11:35:01', '', 149, 'http://localhost/psolvingegypt/agus/2017/10/08/149-revision-v1/', 0, 'revision', '', 0),
(151, 2, '2017-10-08 11:35:44', '2017-10-08 11:35:44', '', 'WEB SECURITY', 'Adipisicing elit sed auteh eiusmod tempor ut labore dolore magna aliqua renim adim minim veniam quis nostrud baorem ipsum dolor sit.\r\n', 'publish', 'open', 'open', '', 'web-security', '', '', '2017-10-08 11:35:44', '2017-10-08 11:35:44', '', 0, 'http://localhost/psolvingegypt/agus/?post_type=services2&#038;p=151', 0, 'services2', '', 0),
(152, 2, '2017-10-08 11:35:44', '2017-10-08 11:35:44', '', 'WEB SECURITY', 'Adipisicing elit sed auteh eiusmod tempor ut labore dolore magna aliqua renim adim minim veniam quis nostrud baorem ipsum dolor sit.\r\n', 'inherit', 'closed', 'closed', '', '151-revision-v1', '', '', '2017-10-08 11:35:44', '2017-10-08 11:35:44', '', 151, 'http://localhost/psolvingegypt/agus/2017/10/08/151-revision-v1/', 0, 'revision', '', 0),
(153, 2, '2017-10-08 11:37:14', '2017-10-08 11:37:14', '', 'أمن الويب', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.\r\n', 'publish', 'open', 'open', '', '%d8%a3%d9%85%d9%86-%d8%a7%d9%84%d9%88%d9%8a%d8%a8', '', '', '2017-10-08 11:37:14', '2017-10-08 11:37:14', '', 0, 'http://localhost/psolvingegypt/agus/?post_type=services2&#038;p=153', 0, 'services2', '', 0),
(154, 2, '2017-10-08 11:37:14', '2017-10-08 11:37:14', '', 'أمن الويب', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.\r\n', 'inherit', 'closed', 'closed', '', '153-revision-v1', '', '', '2017-10-08 11:37:14', '2017-10-08 11:37:14', '', 153, 'http://localhost/psolvingegypt/agus/2017/10/08/153-revision-v1/', 0, 'revision', '', 0),
(155, 2, '2017-10-08 11:38:03', '2017-10-08 11:38:03', '', 'ESCORT MONITORING', 'Adipisicing elit sed auteh eiusmod tempor ut labore dolore magna aliqua renim adim minim veniam quis nostrud baorem ipsum dolor sit.\r\n', 'publish', 'open', 'open', '', 'escort-monitoring', '', '', '2017-10-08 11:38:03', '2017-10-08 11:38:03', '', 0, 'http://localhost/psolvingegypt/agus/?post_type=services2&#038;p=155', 0, 'services2', '', 0),
(156, 2, '2017-10-08 11:38:03', '2017-10-08 11:38:03', '', 'ESCORT MONITORING', 'Adipisicing elit sed auteh eiusmod tempor ut labore dolore magna aliqua renim adim minim veniam quis nostrud baorem ipsum dolor sit.\r\n', 'inherit', 'closed', 'closed', '', '155-revision-v1', '', '', '2017-10-08 11:38:03', '2017-10-08 11:38:03', '', 155, 'http://localhost/psolvingegypt/agus/2017/10/08/155-revision-v1/', 0, 'revision', '', 0),
(157, 2, '2017-10-08 11:38:28', '2017-10-08 11:38:28', '', 'إسكورت الرصد', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.\r\n', 'publish', 'open', 'open', '', '%d8%a5%d8%b3%d9%83%d9%88%d8%b1%d8%aa-%d8%a7%d9%84%d8%b1%d8%b5%d8%af', '', '', '2017-10-08 11:38:28', '2017-10-08 11:38:28', '', 0, 'http://localhost/psolvingegypt/agus/?post_type=services2&#038;p=157', 0, 'services2', '', 0),
(158, 2, '2017-10-08 11:38:28', '2017-10-08 11:38:28', '', 'إسكورت الرصد', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.\r\n', 'inherit', 'closed', 'closed', '', '157-revision-v1', '', '', '2017-10-08 11:38:28', '2017-10-08 11:38:28', '', 157, 'http://localhost/psolvingegypt/agus/2017/10/08/157-revision-v1/', 0, 'revision', '', 0),
(159, 2, '2017-10-08 11:39:07', '2017-10-08 11:39:07', '', 'LIFE PROTECTION', 'Adipisicing elit sed auteh eiusmod tempor ut labore dolore magna aliqua renim adim minim veniam quis nostrud baorem ipsum dolor sit.\r\n', 'publish', 'open', 'open', '', 'life-protection', '', '', '2017-10-08 11:39:07', '2017-10-08 11:39:07', '', 0, 'http://localhost/psolvingegypt/agus/?post_type=services2&#038;p=159', 0, 'services2', '', 0),
(160, 2, '2017-10-08 11:39:07', '2017-10-08 11:39:07', '', 'LIFE PROTECTION', 'Adipisicing elit sed auteh eiusmod tempor ut labore dolore magna aliqua renim adim minim veniam quis nostrud baorem ipsum dolor sit.\r\n', 'inherit', 'closed', 'closed', '', '159-revision-v1', '', '', '2017-10-08 11:39:07', '2017-10-08 11:39:07', '', 159, 'http://localhost/psolvingegypt/agus/2017/10/08/159-revision-v1/', 0, 'revision', '', 0),
(161, 2, '2017-10-08 11:39:45', '2017-10-08 11:39:45', '', 'حماية الحياة', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.\r\n', 'publish', 'open', 'open', '', '%d8%ad%d9%85%d8%a7%d9%8a%d8%a9-%d8%a7%d9%84%d8%ad%d9%8a%d8%a7%d8%a9', '', '', '2017-10-08 11:39:45', '2017-10-08 11:39:45', '', 0, 'http://localhost/psolvingegypt/agus/?post_type=services2&#038;p=161', 0, 'services2', '', 0),
(162, 2, '2017-10-08 11:39:45', '2017-10-08 11:39:45', '', 'حماية الحياة', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.\r\n', 'inherit', 'closed', 'closed', '', '161-revision-v1', '', '', '2017-10-08 11:39:45', '2017-10-08 11:39:45', '', 161, 'http://localhost/psolvingegypt/agus/2017/10/08/161-revision-v1/', 0, 'revision', '', 0),
(163, 2, '2017-10-08 11:40:19', '2017-10-08 11:40:19', '', 'REMOTE GUARDING', 'Adipisicing elit sed auteh eiusmod tempor ut labore dolore magna aliqua renim adim minim veniam quis nostrud baorem ipsum dolor sit.\r\n', 'publish', 'open', 'open', '', 'remote-guarding', '', '', '2017-10-08 11:40:19', '2017-10-08 11:40:19', '', 0, 'http://localhost/psolvingegypt/agus/?post_type=services2&#038;p=163', 0, 'services2', '', 0),
(164, 2, '2017-10-08 11:40:19', '2017-10-08 11:40:19', '', 'REMOTE GUARDING', 'Adipisicing elit sed auteh eiusmod tempor ut labore dolore magna aliqua renim adim minim veniam quis nostrud baorem ipsum dolor sit.\r\n', 'inherit', 'closed', 'closed', '', '163-revision-v1', '', '', '2017-10-08 11:40:19', '2017-10-08 11:40:19', '', 163, 'http://localhost/psolvingegypt/agus/2017/10/08/163-revision-v1/', 0, 'revision', '', 0),
(165, 2, '2017-10-08 11:40:37', '2017-10-08 11:40:37', '', 'ريموت الحرس', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.\r\n', 'publish', 'open', 'open', '', '%d8%b1%d9%8a%d9%85%d9%88%d8%aa-%d8%a7%d9%84%d8%ad%d8%b1%d8%b3', '', '', '2017-10-08 11:40:37', '2017-10-08 11:40:37', '', 0, 'http://localhost/psolvingegypt/agus/?post_type=services2&#038;p=165', 0, 'services2', '', 0),
(166, 2, '2017-10-08 11:40:37', '2017-10-08 11:40:37', '', 'ريموت الحرس', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.\r\n', 'inherit', 'closed', 'closed', '', '165-revision-v1', '', '', '2017-10-08 11:40:37', '2017-10-08 11:40:37', '', 165, 'http://localhost/psolvingegypt/agus/2017/10/08/165-revision-v1/', 0, 'revision', '', 0),
(167, 2, '2017-10-08 12:30:38', '2017-10-08 12:30:38', '<div class="ui-subtitle-block ui-subtitle-block_mr-btm_xs">More than five decades in industry gives us the power to perform every day and every time.</div>\n<div>\n\nLorem ipsum dolor sit amet consectetur adipisicing elit sed dol eiusmod tempor incididunt dolor magna aliqua enim ad minim veniam quis nostrud exercitation ullamco aboris nisi aliquip commod conseque aute irure dolor in reprehe derit in voluptate velit esvse sed ipsum dolor tempod cillum.\n<div class="row"></div>\n</div>', 'CCTV SYSTEMS', 'Adipisicing elit sed auteh eiusmod tempor ut labore dolore magna aliqua renim adim minim veniam quis nostrud baorem ipsum dolor sit.\n', 'inherit', 'closed', 'closed', '', '137-autosave-v1', '', '', '2017-10-08 12:30:38', '2017-10-08 12:30:38', '', 137, 'http://localhost/psolvingegypt/agus/2017/10/08/137-autosave-v1/', 0, 'revision', '', 0),
(168, 2, '2017-10-08 12:40:36', '2017-10-08 12:40:36', '<div class="ui-subtitle-block ui-subtitle-block_mr-btm_xs">More than five decades in industry gives us the power to perform every day and every time.</div>\r\n<div>\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit sed dol eiusmod tempor incididunt dolor magna aliqua enim ad minim veniam quis nostrud exercitation ullamco aboris nisi aliquip commod conseque aute irure dolor in reprehe derit in voluptate velit esvse sed ipsum dolor tempod cillum.\r\n<div class="row"></div>\r\n</div>', 'CCTV SYSTEMS', 'Adipisicing elit sed auteh eiusmod tempor ut labore dolore magna aliqua renim adim minim veniam quis nostrud baorem ipsum dolor sit.\r\n', 'inherit', 'closed', 'closed', '', '137-revision-v1', '', '', '2017-10-08 12:40:36', '2017-10-08 12:40:36', '', 137, 'http://localhost/psolvingegypt/agus/2017/10/08/137-revision-v1/', 0, 'revision', '', 0),
(169, 2, '2017-10-08 12:41:48', '2017-10-08 12:41:48', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.\n\n&nbsp;\n\nهناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.', 'أنظمة الدوائر التلفزيونية المغلقة', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.', 'inherit', 'closed', 'closed', '', '145-autosave-v1', '', '', '2017-10-08 12:41:48', '2017-10-08 12:41:48', '', 145, 'http://localhost/psolvingegypt/agus/2017/10/08/145-autosave-v1/', 0, 'revision', '', 0),
(170, 2, '2017-10-08 12:42:53', '2017-10-08 12:42:53', '', '1', '', 'inherit', 'open', 'closed', '', '1-5', '', '', '2017-10-08 12:42:53', '2017-10-08 12:42:53', '', 145, 'http://localhost/psolvingegypt/agus/wp-content/uploads/2017/10/1-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(171, 2, '2017-10-08 12:43:39', '2017-10-08 12:43:39', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.\r\n\r\n&nbsp;\r\n\r\nهناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.', 'أنظمة الدوائر التلفزيونية المغلقة', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.', 'inherit', 'closed', 'closed', '', '145-revision-v1', '', '', '2017-10-08 12:43:39', '2017-10-08 12:43:39', '', 145, 'http://localhost/psolvingegypt/agus/2017/10/08/145-revision-v1/', 0, 'revision', '', 0),
(172, 2, '2017-10-08 12:53:42', '2017-10-08 12:53:42', '<div class="ui-subtitle-block ui-subtitle-block_mr-btm_xs">More than five decades in industry gives us the power to perform every day and every time.</div>\r\n<div>\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit sed dol eiusmod tempor incididunt dolor magna aliqua enim ad minim veniam quis nostrud exercitation ullamco aboris nisi aliquip commod conseque aute irure dolor in reprehe derit in voluptate velit esvse sed ipsum dolor tempod cillum.\r\n\r\n</div>', 'CCTV SYSTEMS', 'Adipisicing elit sed auteh eiusmod tempor ut labore dolore magna aliqua renim adim minim veniam quis nostrud baorem ipsum dolor sit.\r\n', 'inherit', 'closed', 'closed', '', '137-revision-v1', '', '', '2017-10-08 12:53:42', '2017-10-08 12:53:42', '', 137, 'http://localhost/psolvingegypt/agus/2017/10/08/137-revision-v1/', 0, 'revision', '', 0),
(173, 2, '2017-10-08 14:18:31', '2017-10-08 14:18:31', '<div class="ui-subtitle-block ui-subtitle-block_mr-btm_xs">More than five decades in industry gives us the power to perform every day and every time.</div>\r\n<div>\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit sed dol eiusmod tempor incididunt dolor magna aliqua enim ad minim veniam quis nostrud exercitation ullamco aboris nisi aliquip commod conseque aute irure dolor in reprehe derit in voluptate velit esvse sed ipsum dolor tempod cillum.\r\n\r\n</div>', 'CCTV SYSTEMS', 'Adipisicing elit sed auteh eiusmod tempor ut labore dolore magna aliqua renim adim minim veniam quis nostrud baorem ipsum dolor sit.\r\n', 'inherit', 'closed', 'closed', '', '137-revision-v1', '', '', '2017-10-08 14:18:31', '2017-10-08 14:18:31', '', 137, 'http://localhost/psolvingegypt/agus/2017/10/08/137-revision-v1/', 0, 'revision', '', 0),
(179, 2, '2017-11-05 08:14:57', '0000-00-00 00:00:00', '<div class="paragraphs">\n\nDuis aute irure dolor in repre in voluptate velit es sint cillumor dolore eu fugiat\n\n</div>', 'Trentino-Alto Adige', '', 'draft', 'closed', 'open', '', '', '', '', '2017-11-05 08:14:57', '2017-11-05 08:14:57', '', 0, 'http://agusfire.com/?post_type=projects&#038;p=179', 0, 'projects', '', 0),
(182, 2, '2017-12-05 14:08:25', '2017-12-05 14:08:25', '', '1', '', 'inherit', 'open', 'closed', '', '1-6', '', '', '2017-12-05 14:08:25', '2017-12-05 14:08:25', '', 4, 'http://agusfire.com/wp-content/uploads/2017/10/1-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(183, 2, '2017-12-05 14:09:16', '2017-12-05 14:09:16', '', '2', '', 'inherit', 'open', 'closed', '', '2-4', '', '', '2017-12-05 14:09:16', '2017-12-05 14:09:16', '', 4, 'http://agusfire.com/wp-content/uploads/2017/10/2-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(184, 2, '2017-12-05 14:09:51', '2017-12-05 14:09:51', '', '3', '', 'inherit', 'open', 'closed', '', '3-2', '', '', '2017-12-05 14:09:51', '2017-12-05 14:09:51', '', 4, 'http://agusfire.com/wp-content/uploads/2017/10/3-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(185, 2, '2017-12-05 14:16:21', '2017-12-05 14:16:21', '', '4', '', 'inherit', 'open', 'closed', '', '4-2', '', '', '2017-12-05 14:16:21', '2017-12-05 14:16:21', '', 4, 'http://agusfire.com/wp-content/uploads/2017/10/4-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(186, 2, '2017-12-05 14:22:27', '2017-12-05 14:22:27', '', '1', '', 'inherit', 'open', 'closed', '', '1-7', '', '', '2017-12-05 14:22:27', '2017-12-05 14:22:27', '', 106, 'http://agusfire.com/wp-content/uploads/2017/10/1-5.jpg', 0, 'attachment', 'image/jpeg', 0),
(187, 2, '2017-12-05 14:24:53', '2017-12-05 14:24:53', '', '1', '', 'inherit', 'open', 'closed', '', '1-8', '', '', '2017-12-05 14:24:53', '2017-12-05 14:24:53', '', 104, 'http://agusfire.com/wp-content/uploads/2017/10/1-6.jpg', 0, 'attachment', 'image/jpeg', 0),
(188, 2, '2017-12-05 14:26:00', '2017-12-05 14:26:00', '', '3', '', 'inherit', 'open', 'closed', '', '3-3', '', '', '2017-12-05 14:26:00', '2017-12-05 14:26:00', '', 95, 'http://agusfire.com/wp-content/uploads/2017/10/3-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(189, 2, '2017-12-05 14:26:01', '2017-12-05 14:26:01', '', '2', '', 'inherit', 'open', 'closed', '', '2-5', '', '', '2017-12-05 14:26:01', '2017-12-05 14:26:01', '', 99, 'http://agusfire.com/wp-content/uploads/2017/10/2-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(190, 2, '2017-12-05 14:26:39', '2017-12-05 14:26:39', '', '5', '', 'inherit', 'open', 'closed', '', '5', '', '', '2017-12-05 14:26:39', '2017-12-05 14:26:39', '', 99, 'http://agusfire.com/wp-content/uploads/2017/10/5.jpg', 0, 'attachment', 'image/jpeg', 0),
(191, 2, '2017-12-05 14:27:08', '2017-12-05 14:27:08', '', '8', '', 'inherit', 'open', 'closed', '', '8', '', '', '2017-12-05 14:27:08', '2017-12-05 14:27:08', '', 87, 'http://agusfire.com/wp-content/uploads/2017/10/8.jpg', 0, 'attachment', 'image/jpeg', 0),
(192, 2, '2017-12-05 14:27:28', '2017-12-05 14:27:28', '', 'صور 4', '', 'inherit', 'closed', 'closed', '', '106-autosave-v1', '', '', '2017-12-05 14:27:28', '2017-12-05 14:27:28', '', 106, 'http://agusfire.com/2017/12/05/106-autosave-v1/', 0, 'revision', '', 0),
(193, 2, '2017-12-05 14:34:42', '2017-12-05 14:34:42', '', '5', '', 'publish', 'closed', 'open', '', '5', '', '', '2017-12-05 14:34:42', '2017-12-05 14:34:42', '', 0, 'http://agusfire.com/?post_type=gallery&#038;p=193', 0, 'gallery', '', 0),
(194, 2, '2017-12-05 14:34:35', '2017-12-05 14:34:35', '', '4', '', 'inherit', 'open', 'closed', '', '4-3', '', '', '2017-12-05 14:34:35', '2017-12-05 14:34:35', '', 193, 'http://agusfire.com/wp-content/uploads/2017/12/4.jpg', 0, 'attachment', 'image/jpeg', 0),
(195, 2, '2017-12-05 14:34:42', '2017-12-05 14:34:42', '', '5', '', 'inherit', 'closed', 'closed', '', '193-revision-v1', '', '', '2017-12-05 14:34:42', '2017-12-05 14:34:42', '', 193, 'http://agusfire.com/2017/12/05/193-revision-v1/', 0, 'revision', '', 0),
(196, 2, '2017-12-05 14:34:53', '2017-12-05 14:34:53', '', '5', '', 'publish', 'closed', 'open', '', '5-2', '', '', '2017-12-05 14:34:53', '2017-12-05 14:34:53', '', 0, 'http://agusfire.com/?post_type=gallery&#038;p=196', 0, 'gallery', '', 0),
(197, 2, '2017-12-05 14:34:53', '2017-12-05 14:34:53', '', '5', '', 'inherit', 'closed', 'closed', '', '196-revision-v1', '', '', '2017-12-05 14:34:53', '2017-12-05 14:34:53', '', 196, 'http://agusfire.com/2017/12/05/196-revision-v1/', 0, 'revision', '', 0),
(198, 2, '2017-12-05 14:35:38', '2017-12-05 14:35:38', '', '6', '', 'publish', 'closed', 'open', '', '6', '', '', '2017-12-05 14:35:38', '2017-12-05 14:35:38', '', 0, 'http://agusfire.com/?post_type=gallery&#038;p=198', 0, 'gallery', '', 0),
(199, 2, '2017-12-05 14:35:30', '2017-12-05 14:35:30', '', '7', '', 'inherit', 'open', 'closed', '', '7', '', '', '2017-12-05 14:35:30', '2017-12-05 14:35:30', '', 198, 'http://agusfire.com/wp-content/uploads/2017/12/7.jpg', 0, 'attachment', 'image/jpeg', 0),
(200, 2, '2017-12-05 14:35:38', '2017-12-05 14:35:38', '', '6', '', 'inherit', 'closed', 'closed', '', '198-revision-v1', '', '', '2017-12-05 14:35:38', '2017-12-05 14:35:38', '', 198, 'http://agusfire.com/2017/12/05/198-revision-v1/', 0, 'revision', '', 0),
(201, 2, '2017-12-05 14:38:03', '2017-12-05 14:38:03', '', '6', '', 'publish', 'closed', 'open', '', '6-2', '', '', '2017-12-05 14:38:03', '2017-12-05 14:38:03', '', 0, 'http://agusfire.com/?post_type=gallery&#038;p=201', 0, 'gallery', '', 0),
(202, 2, '2017-12-05 14:38:03', '2017-12-05 14:38:03', '', '6', '', 'inherit', 'closed', 'closed', '', '201-revision-v1', '', '', '2017-12-05 14:38:03', '2017-12-05 14:38:03', '', 201, 'http://agusfire.com/2017/12/05/201-revision-v1/', 0, 'revision', '', 0),
(203, 2, '2017-12-05 14:50:46', '2017-12-05 14:50:46', '', '7', '', 'publish', 'closed', 'open', '', '7', '', '', '2017-12-05 14:50:46', '2017-12-05 14:50:46', '', 0, 'http://agusfire.com/?post_type=gallery&#038;p=203', 0, 'gallery', '', 0),
(204, 2, '2017-12-05 14:38:38', '2017-12-05 14:38:38', '', '13', '', 'inherit', 'open', 'closed', '', '13', '', '', '2017-12-05 14:38:38', '2017-12-05 14:38:38', '', 203, 'http://agusfire.com/wp-content/uploads/2017/12/13.jpg', 0, 'attachment', 'image/jpeg', 0),
(205, 2, '2017-12-05 14:50:46', '2017-12-05 14:50:46', '', '7', '', 'inherit', 'closed', 'closed', '', '203-revision-v1', '', '', '2017-12-05 14:50:46', '2017-12-05 14:50:46', '', 203, 'http://agusfire.com/2017/12/05/203-revision-v1/', 0, 'revision', '', 0),
(206, 2, '2017-12-05 14:50:59', '2017-12-05 14:50:59', '', '7', '', 'publish', 'closed', 'open', '', '7-2', '', '', '2017-12-05 14:50:59', '2017-12-05 14:50:59', '', 0, 'http://agusfire.com/?post_type=gallery&#038;p=206', 0, 'gallery', '', 0),
(207, 2, '2017-12-05 14:50:59', '2017-12-05 14:50:59', '', '7', '', 'inherit', 'closed', 'closed', '', '206-revision-v1', '', '', '2017-12-05 14:50:59', '2017-12-05 14:50:59', '', 206, 'http://agusfire.com/2017/12/05/206-revision-v1/', 0, 'revision', '', 0),
(208, 2, '2017-12-05 14:51:32', '2017-12-05 14:51:32', '', '8', '', 'publish', 'closed', 'open', '', '8', '', '', '2017-12-05 14:51:32', '2017-12-05 14:51:32', '', 0, 'http://agusfire.com/?post_type=gallery&#038;p=208', 0, 'gallery', '', 0),
(209, 2, '2017-12-05 14:51:26', '2017-12-05 14:51:26', '', '16', '', 'inherit', 'open', 'closed', '', '16', '', '', '2017-12-05 14:51:26', '2017-12-05 14:51:26', '', 208, 'http://agusfire.com/wp-content/uploads/2017/12/16.jpg', 0, 'attachment', 'image/jpeg', 0),
(210, 2, '2017-12-05 14:51:32', '2017-12-05 14:51:32', '', '8', '', 'inherit', 'closed', 'closed', '', '208-revision-v1', '', '', '2017-12-05 14:51:32', '2017-12-05 14:51:32', '', 208, 'http://agusfire.com/2017/12/05/208-revision-v1/', 0, 'revision', '', 0),
(211, 2, '2017-12-05 14:51:52', '2017-12-05 14:51:52', '', '8', '', 'publish', 'closed', 'open', '', '8-2', '', '', '2017-12-05 14:52:00', '2017-12-05 14:52:00', '', 0, 'http://agusfire.com/?post_type=gallery&#038;p=211', 0, 'gallery', '', 0),
(212, 2, '2017-12-05 14:51:52', '2017-12-05 14:51:52', '', '8', '', 'inherit', 'closed', 'closed', '', '211-revision-v1', '', '', '2017-12-05 14:51:52', '2017-12-05 14:51:52', '', 211, 'http://agusfire.com/2017/12/05/211-revision-v1/', 0, 'revision', '', 0),
(215, 4, '2017-12-05 21:11:47', '2017-12-05 21:11:47', '<a href="http://agusfire.com/wp-content/uploads/2017/12/4.jpg"><img class="alignnone size-medium wp-image-194" src="http://agusfire.com/wp-content/uploads/2017/12/4-300x300.jpg" alt="" width="300" height="300" /></a>', 'Home', '', 'inherit', 'closed', 'closed', '', '41-autosave-v1', '', '', '2017-12-05 21:11:47', '2017-12-05 21:11:47', '', 41, 'http://agusfire.com/2017/12/05/41-autosave-v1/', 0, 'revision', '', 0),
(216, 4, '2017-12-05 21:12:05', '2017-12-05 21:12:05', '<a href="http://agusfire.com/wp-content/uploads/2017/12/4.jpg"><img class="alignnone size-medium wp-image-194" src="http://agusfire.com/wp-content/uploads/2017/12/4-300x300.jpg" alt="" width="300" height="300" /></a>', 'Home', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2017-12-05 21:12:05', '2017-12-05 21:12:05', '', 41, 'http://agusfire.com/2017/12/05/41-revision-v1/', 0, 'revision', '', 0),
(217, 4, '2017-12-05 21:13:51', '0000-00-00 00:00:00', '', 'اعمالنا', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-12-05 21:13:51', '2017-12-05 21:13:51', '', 0, 'http://agusfire.com/?page_id=217', 0, 'page', '', 0),
(220, 4, '2017-12-05 21:26:34', '2017-12-05 21:26:34', '', 'الوكاله', '', 'publish', 'closed', 'closed', '', '%d8%a7%d9%84%d9%88%d9%83%d8%a7%d9%84%d9%87', '', '', '2017-12-05 21:26:34', '2017-12-05 21:26:34', '', 0, 'http://agusfire.com/?page_id=220', 0, 'page', '', 0),
(221, 4, '2017-12-05 21:26:34', '2017-12-05 21:26:34', '', 'مشروعتنا', '', 'publish', 'closed', 'closed', '', '%d9%85%d8%b4%d8%b1%d9%88%d8%b9%d8%aa%d9%86%d8%a7', '', '', '2017-12-05 21:26:34', '2017-12-05 21:26:34', '', 0, 'http://agusfire.com/?page_id=221', 0, 'page', '', 0),
(222, 4, '2017-12-05 21:26:34', '2017-12-05 21:26:34', '', 'الوكاله', '', 'inherit', 'closed', 'closed', '', '220-revision-v1', '', '', '2017-12-05 21:26:34', '2017-12-05 21:26:34', '', 220, 'http://agusfire.com/2017/12/05/220-revision-v1/', 0, 'revision', '', 0),
(223, 4, '2017-12-05 21:26:34', '2017-12-05 21:26:34', '', 'مشروعتنا', '', 'inherit', 'closed', 'closed', '', '221-revision-v1', '', '', '2017-12-05 21:26:34', '2017-12-05 21:26:34', '', 221, 'http://agusfire.com/2017/12/05/221-revision-v1/', 0, 'revision', '', 0),
(224, 4, '2017-12-05 21:26:35', '2017-12-05 21:26:35', ' ', '', '', 'publish', 'closed', 'closed', '', '224', '', '', '2017-12-05 21:26:35', '2017-12-05 21:26:35', '', 0, 'http://agusfire.com/2017/12/05/224/', 6, 'nav_menu_item', '', 0),
(225, 4, '2017-12-05 21:26:35', '2017-12-05 21:26:35', ' ', '', '', 'publish', 'closed', 'closed', '', '225', '', '', '2017-12-05 21:26:35', '2017-12-05 21:26:35', '', 0, 'http://agusfire.com/2017/12/05/225/', 7, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'العربية', 'ar', 0),
(3, 'العربية', 'pll_ar', 0),
(4, 'pll_59d6214db4c67', 'pll_59d6214db4c67', 0),
(5, 'English', 'en', 0),
(6, 'English', 'pll_en', 0),
(7, 'Uncategorized', 'uncategorized-en', 0),
(10, 'pll_59d6532565b20', 'pll_59d6532565b20', 0),
(11, 'pll_59d653574e776', 'pll_59d653574e776', 0),
(12, 'pll_59d6538aa80d1', 'pll_59d6538aa80d1', 0),
(13, 'Menu En', 'menu-en', 0),
(14, 'Menu Ar', 'menu-ar', 0),
(15, 'Menu footer', 'menu-footer', 0),
(16, 'pll_59d69d28f3ee3', 'pll_59d69d28f3ee3', 0),
(17, 'pll_59d72b21cfb75', 'pll_59d72b21cfb75', 0),
(18, 'pll_59d72baae567e', 'pll_59d72baae567e', 0),
(19, 'pll_59d73194aa38c', 'pll_59d73194aa38c', 0),
(20, 'pll_59d73202eea7f', 'pll_59d73202eea7f', 0),
(21, 'pll_59d73c3e72d5a', 'pll_59d73c3e72d5a', 0),
(22, 'pll_59d7763a53626', 'pll_59d7763a53626', 0),
(23, 'pll_59d7e887420d4', 'pll_59d7e887420d4', 0),
(24, 'pll_59d8a61a9e094', 'pll_59d8a61a9e094', 0),
(25, 'pll_59d8a6a64a898', 'pll_59d8a6a64a898', 0),
(26, 'pll_59d8a7017c268', 'pll_59d8a7017c268', 0),
(27, 'pll_59d8a74ac0cd0', 'pll_59d8a74ac0cd0', 0),
(28, 'Menu footer ar', 'menu-footer-ar', 0),
(29, 'pll_59d9ee5d0085c', 'pll_59d9ee5d0085c', 0),
(30, 'pll_59da0c709aabe', 'pll_59da0c709aabe', 0),
(31, 'pll_59da0d66355d4', 'pll_59da0d66355d4', 0),
(32, 'pll_59da0deb57f03', 'pll_59da0deb57f03', 0),
(33, 'pll_59da0e35a5e16', 'pll_59da0e35a5e16', 0),
(34, 'pll_59da0e81edfda', 'pll_59da0e81edfda', 0),
(35, 'pll_59da0eb5e66a7', 'pll_59da0eb5e66a7', 0),
(36, 'pll_5a26ae8dbf59d', 'pll_5a26ae8dbf59d', 0),
(37, 'pll_5a26af4bd2999', 'pll_5a26af4bd2999', 0),
(38, 'pll_5a26b253bb6ce', 'pll_5a26b253bb6ce', 0),
(39, 'pll_5a26b2886dc90', 'pll_5a26b2886dc90', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(1, 3, 0),
(1, 4, 0),
(1, 5, 0),
(5, 5, 0),
(6, 5, 0),
(7, 4, 0),
(7, 6, 0),
(9, 5, 0),
(10, 5, 0),
(13, 2, 0),
(13, 23, 0),
(15, 5, 0),
(15, 10, 0),
(17, 2, 0),
(17, 10, 0),
(19, 5, 0),
(19, 11, 0),
(21, 2, 0),
(21, 11, 0),
(23, 5, 0),
(23, 12, 0),
(25, 2, 0),
(25, 12, 0),
(27, 13, 0),
(28, 13, 0),
(29, 13, 0),
(31, 14, 0),
(32, 14, 0),
(33, 14, 0),
(34, 14, 0),
(35, 15, 0),
(36, 15, 0),
(37, 15, 0),
(41, 5, 0),
(41, 16, 0),
(43, 2, 0),
(43, 16, 0),
(46, 5, 0),
(46, 18, 0),
(48, 5, 0),
(48, 17, 0),
(50, 5, 0),
(51, 2, 0),
(51, 17, 0),
(54, 2, 0),
(54, 18, 0),
(56, 2, 0),
(58, 5, 0),
(58, 19, 0),
(59, 5, 0),
(61, 2, 0),
(61, 19, 0),
(63, 5, 0),
(63, 20, 0),
(64, 2, 0),
(64, 20, 0),
(65, 2, 0),
(68, 5, 0),
(68, 21, 0),
(70, 2, 0),
(70, 21, 0),
(74, 2, 0),
(74, 22, 0),
(75, 5, 0),
(75, 22, 0),
(82, 5, 0),
(82, 23, 0),
(87, 5, 0),
(87, 24, 0),
(88, 5, 0),
(89, 5, 0),
(90, 5, 0),
(91, 5, 0),
(93, 2, 0),
(93, 24, 0),
(95, 5, 0),
(95, 25, 0),
(97, 2, 0),
(97, 25, 0),
(99, 5, 0),
(99, 26, 0),
(101, 2, 0),
(101, 26, 0),
(104, 5, 0),
(104, 27, 0),
(106, 2, 0),
(106, 27, 0),
(109, 14, 0),
(112, 13, 0),
(113, 13, 0),
(114, 15, 0),
(115, 15, 0),
(116, 28, 0),
(117, 28, 0),
(118, 28, 0),
(119, 28, 0),
(120, 28, 0),
(131, 5, 0),
(131, 29, 0),
(132, 2, 0),
(132, 29, 0),
(137, 5, 0),
(137, 30, 0),
(145, 2, 0),
(145, 30, 0),
(147, 5, 0),
(147, 31, 0),
(149, 2, 0),
(149, 31, 0),
(151, 5, 0),
(151, 32, 0),
(153, 2, 0),
(153, 32, 0),
(155, 5, 0),
(155, 33, 0),
(157, 2, 0),
(157, 33, 0),
(159, 5, 0),
(159, 34, 0),
(161, 2, 0),
(161, 34, 0),
(163, 5, 0),
(163, 35, 0),
(165, 2, 0),
(165, 35, 0),
(170, 2, 0),
(179, 5, 0),
(182, 5, 0),
(183, 5, 0),
(184, 5, 0),
(185, 5, 0),
(186, 2, 0),
(187, 5, 0),
(188, 5, 0),
(189, 5, 0),
(190, 5, 0),
(191, 5, 0),
(193, 5, 0),
(193, 36, 0),
(194, 5, 0),
(196, 2, 0),
(196, 36, 0),
(198, 5, 0),
(198, 37, 0),
(199, 5, 0),
(201, 2, 0),
(201, 37, 0),
(203, 5, 0),
(203, 38, 0),
(204, 5, 0),
(206, 2, 0),
(206, 38, 0),
(208, 5, 0),
(208, 39, 0),
(209, 5, 0),
(211, 2, 0),
(211, 39, 0),
(217, 2, 0),
(220, 2, 0),
(221, 2, 0),
(224, 14, 0),
(225, 14, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'language', 'a:3:{s:6:"locale";s:2:"ar";s:3:"rtl";i:1;s:9:"flag_code";s:2:"eg";}', 0, 32),
(3, 3, 'term_language', '', 0, 1),
(4, 4, 'term_translations', 'a:2:{s:2:"ar";i:1;s:2:"en";i:7;}', 0, 2),
(5, 5, 'language', 'a:3:{s:6:"locale";s:5:"en_US";s:3:"rtl";i:0;s:9:"flag_code";s:2:"us";}', 0, 42),
(6, 6, 'term_language', '', 0, 1),
(7, 7, 'category', '', 0, 0),
(10, 10, 'post_translations', 'a:2:{s:2:"ar";i:17;s:2:"en";i:15;}', 0, 2),
(11, 11, 'post_translations', 'a:2:{s:2:"ar";i:21;s:2:"en";i:19;}', 0, 2),
(12, 12, 'post_translations', 'a:2:{s:2:"ar";i:25;s:2:"en";i:23;}', 0, 2),
(13, 13, 'nav_menu', '', 0, 5),
(14, 14, 'nav_menu', '', 0, 7),
(15, 15, 'nav_menu', '', 0, 5),
(16, 16, 'post_translations', 'a:2:{s:2:"en";i:41;s:2:"ar";i:43;}', 0, 2),
(17, 17, 'post_translations', 'a:2:{s:2:"en";i:48;s:2:"ar";i:51;}', 0, 2),
(18, 18, 'post_translations', 'a:2:{s:2:"en";i:46;s:2:"ar";i:54;}', 0, 2),
(19, 19, 'post_translations', 'a:2:{s:2:"ar";i:61;s:2:"en";i:58;}', 0, 2),
(20, 20, 'post_translations', 'a:2:{s:2:"en";i:63;s:2:"ar";i:64;}', 0, 2),
(21, 21, 'post_translations', 'a:2:{s:2:"en";i:68;s:2:"ar";i:70;}', 0, 2),
(22, 22, 'post_translations', 'a:2:{s:2:"ar";i:74;s:2:"en";i:75;}', 0, 2),
(23, 23, 'post_translations', 'a:2:{s:2:"ar";i:13;s:2:"en";i:82;}', 0, 2),
(24, 24, 'post_translations', 'a:2:{s:2:"en";i:87;s:2:"ar";i:93;}', 0, 2),
(25, 25, 'post_translations', 'a:2:{s:2:"en";i:95;s:2:"ar";i:97;}', 0, 2),
(26, 26, 'post_translations', 'a:2:{s:2:"en";i:99;s:2:"ar";i:101;}', 0, 2),
(27, 27, 'post_translations', 'a:2:{s:2:"en";i:104;s:2:"ar";i:106;}', 0, 2),
(28, 28, 'nav_menu', '', 0, 5),
(29, 29, 'post_translations', 'a:2:{s:2:"en";i:131;s:2:"ar";i:132;}', 0, 2),
(30, 30, 'post_translations', 'a:2:{s:2:"en";i:137;s:2:"ar";i:145;}', 0, 2),
(31, 31, 'post_translations', 'a:2:{s:2:"ar";i:149;s:2:"en";i:147;}', 0, 2),
(32, 32, 'post_translations', 'a:2:{s:2:"ar";i:153;s:2:"en";i:151;}', 0, 2),
(33, 33, 'post_translations', 'a:2:{s:2:"ar";i:157;s:2:"en";i:155;}', 0, 2),
(34, 34, 'post_translations', 'a:2:{s:2:"ar";i:161;s:2:"en";i:159;}', 0, 2),
(35, 35, 'post_translations', 'a:2:{s:2:"ar";i:165;s:2:"en";i:163;}', 0, 2),
(36, 36, 'post_translations', 'a:2:{s:2:"ar";i:196;s:2:"en";i:193;}', 0, 2),
(37, 37, 'post_translations', 'a:2:{s:2:"ar";i:201;s:2:"en";i:198;}', 0, 2),
(38, 38, 'post_translations', 'a:2:{s:2:"ar";i:206;s:2:"en";i:203;}', 0, 2),
(39, 39, 'post_translations', 'a:2:{s:2:"ar";i:211;s:2:"en";i:208;}', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(30, 2, 'nickname', 'psolving'),
(31, 2, 'first_name', 'psolving'),
(32, 2, 'last_name', 'problem solving egypt'),
(33, 2, 'description', ''),
(34, 2, 'rich_editing', 'true'),
(35, 2, 'comment_shortcuts', 'false'),
(36, 2, 'admin_color', 'fresh'),
(37, 2, 'use_ssl', '0'),
(38, 2, 'show_admin_bar_front', 'true'),
(39, 2, 'locale', ''),
(40, 2, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(41, 2, 'wp_user_level', '10'),
(42, 2, 'dismissed_wp_pointers', ''),
(43, 2, 'session_tokens', 'a:1:{s:64:"99ccb00acdd21a88a3f75a2aac523498c1de9fe6fe21f099888743ec757c9dfe";a:4:{s:10:"expiration";i:1513691285;s:2:"ip";s:12:"156.205.58.9";s:2:"ua";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36";s:5:"login";i:1512481685;}}'),
(44, 2, 'wp_dashboard_quick_press_last_post_id', '180'),
(45, 2, 'community-events-location', 'a:1:{s:2:"ip";s:12:"156.205.58.0";}'),
(46, 3, 'nickname', 'psolving M'),
(47, 3, 'first_name', 'psolving'),
(48, 3, 'last_name', 'problem solving egypt'),
(49, 3, 'description', ''),
(50, 3, 'rich_editing', 'true'),
(51, 3, 'comment_shortcuts', 'false'),
(52, 3, 'admin_color', 'fresh'),
(53, 3, 'use_ssl', '0'),
(54, 3, 'show_admin_bar_front', 'true'),
(55, 3, 'locale', ''),
(56, 3, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(57, 3, 'wp_user_level', '10'),
(58, 3, 'dismissed_wp_pointers', ''),
(59, 3, 'description_ar', ''),
(60, 2, 'wp_user-settings', 'libraryContent=browse'),
(61, 2, 'wp_user-settings-time', '1512482927'),
(62, 2, 'description_ar', ''),
(63, 4, 'nickname', 'Agus'),
(64, 4, 'first_name', 'Agus'),
(65, 4, 'last_name', 'Agus'),
(66, 4, 'description', ''),
(67, 4, 'rich_editing', 'true'),
(68, 4, 'comment_shortcuts', 'false'),
(69, 4, 'admin_color', 'fresh'),
(70, 4, 'use_ssl', '0'),
(71, 4, 'show_admin_bar_front', 'true'),
(72, 4, 'locale', ''),
(73, 4, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(74, 4, 'wp_user_level', '10'),
(75, 4, 'dismissed_wp_pointers', 'theme_editor_notice'),
(76, 3, 'session_tokens', 'a:1:{s:64:"3a471a8824c14c8f582df8ebd16a01541e300987067365829a03db158232849e";a:4:{s:10:"expiration";i:1509800893;s:2:"ip";s:14:"156.204.49.250";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36";s:5:"login";i:1508591293;}}'),
(77, 3, 'wp_dashboard_quick_press_last_post_id', '176'),
(78, 3, 'community-events-location', 'a:1:{s:2:"ip";s:12:"156.204.49.0";}'),
(79, 4, 'default_password_nag', ''),
(80, 4, 'session_tokens', 'a:1:{s:64:"779ee90b8ccef56fbaf96baeb3ecc2a030a9a70a9490ff593a396518f52a8987";a:4:{s:10:"expiration";i:1512675921;s:2:"ip";s:13:"156.196.235.9";s:2:"ua";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36";s:5:"login";i:1512503121;}}'),
(81, 4, 'wp_dashboard_quick_press_last_post_id', '213'),
(82, 4, 'community-events-location', 'a:1:{s:2:"ip";s:13:"156.196.235.0";}'),
(83, 4, 'pll_filter_content', 'ar'),
(84, 4, 'wp_user-settings', 'editor=tinymce&libraryContent=browse&urlbutton=file'),
(85, 4, 'wp_user-settings-time', '1512508167'),
(86, 4, 'closedpostboxes_page', 'a:0:{}'),
(87, 4, 'metaboxhidden_page', 'a:4:{i:0;s:6:"acf_76";i:1;s:7:"acf_143";i:2;s:7:"acf_134";i:3;s:9:"authordiv";}'),
(88, 4, 'nav_menu_recently_edited', '14'),
(89, 4, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(90, 4, 'metaboxhidden_nav-menus', 'a:6:{i:0;s:19:"pll_lang_switch_box";i:1;s:18:"add-post-type-team";i:2;s:17:"add-post-type-new";i:3;s:21:"add-post-type-gallery";i:4;s:23:"add-post-type-services2";i:5;s:12:"add-post_tag";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(2, 'psolving', '$P$BcRLpqGUx9lzQORwkmveQmUknHeV191', 'psolving', 'problem.solving.egypt@gmail.com', 'http://www.agusfire.com', '2017-10-11 09:18:18', '', 0, 'psolving problem solving egypt'),
(3, 'psolving M', '$P$B1C78paU1Nf7YLLrJZrTHmaZZYOLSA.', 'psolving-m', 'm1psolving@gmail.com', 'http://www.agusfire.com', '2017-10-14 12:42:01', '1507984921:$P$BE2fkeMsU1e33uhE2Bh0pZbD/tzMBI1', 0, 'psolving problem solving egypt'),
(4, 'Agus', '$P$BwDZ.EJvxT5QUaDGNs1vqy4Uz8z7Iy.', 'agus', 'agusfire.eg@gmail.com', 'http://agusfire.com', '2017-10-21 12:52:33', '', 0, 'Agus Agus');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`), ADD KEY `comment_id` (`comment_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`), ADD KEY `comment_post_ID` (`comment_post_ID`), ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`), ADD KEY `comment_date_gmt` (`comment_date_gmt`), ADD KEY `comment_parent` (`comment_parent`), ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_es_deliverreport`
--
ALTER TABLE `wp_es_deliverreport`
  ADD PRIMARY KEY (`es_deliver_id`);

--
-- Indexes for table `wp_es_emaillist`
--
ALTER TABLE `wp_es_emaillist`
  ADD PRIMARY KEY (`es_email_id`);

--
-- Indexes for table `wp_es_notification`
--
ALTER TABLE `wp_es_notification`
  ADD PRIMARY KEY (`es_note_id`);

--
-- Indexes for table `wp_es_sentdetails`
--
ALTER TABLE `wp_es_sentdetails`
  ADD PRIMARY KEY (`es_sent_id`);

--
-- Indexes for table `wp_es_templatetable`
--
ALTER TABLE `wp_es_templatetable`
  ADD PRIMARY KEY (`es_templ_id`);

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`), ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`), ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`), ADD KEY `post_id` (`post_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`), ADD KEY `post_name` (`post_name`(191)), ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`), ADD KEY `post_parent` (`post_parent`), ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`), ADD KEY `term_id` (`term_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`), ADD KEY `slug` (`slug`(191)), ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`), ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`), ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`), ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`), ADD KEY `user_id` (`user_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`), ADD KEY `user_login_key` (`user_login`), ADD KEY `user_nicename` (`user_nicename`), ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_es_deliverreport`
--
ALTER TABLE `wp_es_deliverreport`
  MODIFY `es_deliver_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_es_emaillist`
--
ALTER TABLE `wp_es_emaillist`
  MODIFY `es_email_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_es_notification`
--
ALTER TABLE `wp_es_notification`
  MODIFY `es_note_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_es_sentdetails`
--
ALTER TABLE `wp_es_sentdetails`
  MODIFY `es_sent_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_es_templatetable`
--
ALTER TABLE `wp_es_templatetable`
  MODIFY `es_templ_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1988;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=952;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=227;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=91;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
