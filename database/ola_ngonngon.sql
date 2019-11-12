-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2018 at 10:59 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ola_ngonngon`
--

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_article`
--

CREATE TABLE `olala3w_article` (
  `article_id` int(11) NOT NULL,
  `article_menu_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keywords` text NOT NULL,
  `img` varchar(255) NOT NULL DEFAULT 'no',
  `img_note` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `price` float NOT NULL DEFAULT '0',
  `block` int(11) NOT NULL DEFAULT '0',
  `flat` int(11) NOT NULL DEFAULT '0',
  `open_sale` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `upload_id` bigint(20) NOT NULL DEFAULT '0',
  `comment` text CHARACTER SET utf8mb4 NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `views` bigint(20) NOT NULL DEFAULT '1',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `olala3w_article`
--

INSERT INTO `olala3w_article` (`article_id`, `article_menu_id`, `name`, `slug`, `title`, `description`, `keywords`, `img`, `img_note`, `address`, `price`, `block`, `flat`, `open_sale`, `type`, `upload_id`, `comment`, `content`, `is_active`, `hot`, `views`, `created_time`, `modified_time`, `user_id`) VALUES
(956, 474, 'INSPIRED BY ITALIAN STYLE', 'inspired-by-italian-style', '', '', '', 'inspired-by-italian-style-1524977820.jpg', '', '', 0, 0, 0, 0, 0, 1969, 'VICE meets up with Joe Nickell, a longtime paranormal investigator who’s been called the real-life Scully. We travel with him to Roswell, NM on the called the real-life Scully', '<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<p>VICE meets up with Joe Nickell, a longtime paranormal investigator who’s been called the real-life Scully. We travel with him to Roswell, NM on the called the real-life Scully. We travel with him to Roswell, NM on the anniversary of the 1947 UFO Crash to talk to believers, skeptics and UFO witnesses alike to see if the truth is really out there. VICE meets up with Joe Nickell, a longtime paranormal investigator who’s been called the real-life Scully. We travel with him to Roswell, NM on the anniversary of the 1947 UFO Crash to talk to believers, skeptics and UFO witnesses alike to see if the truth is really out there.<br />\r\nVICE meets up with Joe Nickell, a longtime paranormal investigator who’s been called the real-life Scully. We travel with him to Roswell, NM on the called the real-life Scully. We travel with him to Roswell, NM on the anniversary of the 1947 UFO Crash to talk to believers, skeptics and UFO witnesses alike to see if the truth is really out there.</p>\r\n\r\n<p><br />\r\nVICE meets up with Joe Nickell, a longtime paranormal investigator who’s been called the real-life Scully. We travel with him to Roswell, NM on the anniversary of the 1947 UFO Crash to talk to believers, skeptics and UFO witnesses alike to see if the truth is really out there. VICE meets up with Joe Nickell, a longtime paranormal investigator who’s been called the real-life Scully. We travel with him to Roswell, NM on the called the real-life Scully. We travel with him to Roswell, NM on the anniversary of the 1947 UFO Crash to talk to believers, skeptics and UFO witnesses alike to see if the truth is really out there. VICE meets up with Joe Nickell, a longtime paranormal investigator who’s been called the real-life Scully. We travel with him to Roswell, NM on the anniversary of the 1947 UFO Crash to talk to believers, skeptics and UFO witnesses alike to see if the truth is really out there.We travel with him to Roswell.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n', 1, 0, 7, 1524977760, 1524988381, 25),
(950, 473, 'Giới thiệu chung', 've-chung-toi', '', '', '', 'no', '', '', 0, 0, 0, 0, 0, 1932, '', '<h4 style="text-align: center;">&nbsp;</h4>\r\n\r\n<h4 style="text-align: center;">About Us</h4>\r\n\r\n<h2 style="text-align: center;">WELCOME TO NGON NGON</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="" src="/uploads/images/home-page-about-us-min-570x350.jpg" style="float: left;padding-right:20px;" />Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in</p>\r\n\r\n<p><span style="font-size:24px;">“&nbsp;</span>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea&nbsp;<span style="font-size:24px;">”</span></p>\r\n\r\n<p><strong>Ado Moris</strong>&nbsp;, Executive Chef/Owner</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1, 0, 150, 1522857720, 1523636519, 25),
(951, 478, 'Fast Service', 'fast-service', '', '', '', 'fast-service-1523679173.png', '', '', 0, 0, 0, 0, 0, 1952, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed', '', 1, 0, 1, 1523677800, 1523679173, 25),
(952, 478, 'Experienced Chef', 'experienced-chef', '', '', '', 'experienced-chef-1523679154.png', '', '', 0, 0, 0, 0, 0, 1953, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed', '', 1, 0, 1, 1523677920, 1523679154, 25),
(953, 478, 'Online Reservation', 'online-reservation', '', '', '', 'online-reservation-1523679165.png', '', '', 0, 0, 0, 0, 0, 1954, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed', '', 1, 0, 1, 1523677920, 1523679165, 25),
(954, 478, '100% Fresh Food', '100-fresh-food', '', '', '', '100-fresh-food-1523679144.png', '', '', 0, 0, 0, 0, 0, 1955, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed', '', 1, 0, 1, 1523677980, 1523679144, 25),
(955, 474, 'TRANSITIONS IN UX DESIGN', 'transitions-in-ux-design', '', '', '', 'transitions-in-ux-design-1524977777.jpg', '', '', 0, 0, 0, 0, 0, 1968, 'VICE meets up with Joe Nickell, a longtime paranormal investigator who’s been called the real-life Scully. We travel with him to Roswell, NM on the called the real-life Scully', '<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<p>VICE meets up with Joe Nickell, a longtime paranormal investigator who’s been called the real-life Scully. We travel with him to Roswell, NM on the called the real-life Scully. We travel with him to Roswell, NM on the anniversary of the 1947 UFO Crash to talk to believers, skeptics and UFO witnesses alike to see if the truth is really out there. VICE meets up with Joe Nickell, a longtime paranormal investigator who’s been called the real-life Scully. We travel with him to Roswell, NM on the anniversary of the 1947 UFO Crash to talk to believers, skeptics and UFO witnesses alike to see if the truth is really out there.<br />\r\nVICE meets up with Joe Nickell, a longtime paranormal investigator who’s been called the real-life Scully. We travel with him to Roswell, NM on the called the real-life Scully. We travel with him to Roswell, NM on the anniversary of the 1947 UFO Crash to talk to believers, skeptics and UFO witnesses alike to see if the truth is really out there.<br />\r\n<br />\r\nVICE meets up with Joe Nickell, a longtime paranormal investigator who’s been called the real-life Scully. We travel with him to Roswell, NM on the anniversary of the 1947 UFO Crash to talk to believers, skeptics and UFO witnesses alike to see if the truth is really out there. VICE meets up with Joe Nickell, a longtime paranormal investigator who’s been called the real-life Scully. We travel with him to Roswell, NM on the called the real-life Scully. We travel with him to Roswell, NM on the anniversary of the 1947 UFO Crash to talk to believers, skeptics and UFO witnesses alike to see if the truth is really out there. VICE meets up with Joe Nickell, a longtime paranormal investigator who’s been called the real-life Scully. We travel with him to Roswell, NM on the anniversary of the 1947 UFO Crash to talk to believers, skeptics and UFO witnesses alike to see if the truth is really out there.We travel with him to Roswell.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n', 1, 0, 15, 1524977700, 1524988391, 25),
(957, 474, 'BEST PRODUCTIVITY SECRETS', 'best-productivity-secrets', '', '', '', 'best-productivity-secrets-1524977864.jpg', '', '', 0, 0, 0, 0, 0, 1970, 'We travel with him to Roswell, NM on the anniversary of the 1947 UFO Crash to talk to believers, skeptics and UFO witnesses alike to see if the truth is really out there.VICE meets up with Joe Nickell, a longtime paranormal investigator who’s been called the real-life Scully. We travel with him to Roswell, NM on the anniversary of the 1947 UFO Crash to talk to believers, skeptics and UFO witnesses alike to see if the truth is really out there.', '<p>VICE meets up with Joe Nickell, a longtime paranormal investigator who’s been called the real-life Scully. We travel with him to Roswell, NM on the called the real-life Scully. We travel with him to Roswell, NM on the anniversary of the 1947 UFO Crash to talk to believers, skeptics and UFO witnesses alike to see if the truth is really out there. VICE meets up with Joe Nickell, a longtime paranormal investigator who’s been called the real-life Scully. We travel with him to Roswell, NM on the anniversary of the 1947 UFO Crash to talk to believers, skeptics and UFO witnesses alike to see if the truth is really out there.<br />\r\nVICE meets up with Joe Nickell, a longtime paranormal investigator who’s been called the real-life Scully. We travel with him to Roswell, NM on the called the real-life Scully. We travel with him to Roswell, NM on the anniversary of the 1947 UFO Crash to talk to believers, skeptics and UFO witnesses alike to see if the truth is really out there.<br />\r\nVICE meets up with Joe Nickell, a longtime paranormal investigator who’s been called the real-life Scully. We travel with him to Roswell, NM on the anniversary of the 1947 UFO Crash to talk to believers, skeptics and UFO witnesses alike to see if the truth is really out there. VICE meets up with Joe Nickell, a longtime paranormal investigator who’s been called the real-life Scully. We travel with him to Roswell, NM on the called the real-life Scully. We travel with him to Roswell, NM on the anniversary of the 1947 UFO Crash to talk to believers, skeptics and UFO witnesses alike to see if the truth is really out there. VICE meets up with Joe Nickell, a longtime paranormal investigator who’s been called the real-life Scully. We travel with him to Roswell, NM on the anniversary of the 1947 UFO Crash to talk to believers, skeptics and UFO witnesses alike to see if the truth is really out there.We travel with him to Roswell.</p>\r\n', 1, 0, 21, 1524977820, 1524988355, 25),
(958, 474, 'MADRIDS PHOTOGRAPHER MARATON', 'madrids-photographer-maraton', '', '', '', 'madrids-photographer-maraton-1524977901.jpg', '', '', 0, 0, 0, 0, 0, 1971, 'VICE meets up with Joe Nickell, a longtime paranormal investigator who’s been called the real-life Scully. We travel with him to Roswell, NM on the called the real-life Scully', '<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<p>VICE meets up with Joe Nickell, a longtime paranormal investigator who’s been called the real-life Scully. We travel with him to Roswell, NM on the called the real-life Scully. We travel with him to Roswell, NM on the anniversary of the 1947 UFO Crash to talk to believers, skeptics and UFO witnesses alike to see if the truth is really out there. VICE meets up with Joe Nickell, a longtime paranormal investigator who’s been called the real-life Scully. We travel with him to Roswell, NM on the anniversary of the 1947 UFO Crash to talk to believers, skeptics and UFO witnesses alike to see if the truth is really out there.</p>\r\n\r\n<p><br />\r\nVICE meets up with Joe Nickell, a longtime paranormal investigator who’s been called the real-life Scully. We travel with him to Roswell, NM on the called the real-life Scully. We travel with him to Roswell, NM on the anniversary of the 1947 UFO Crash to talk to believers, skeptics and UFO witnesses alike to see if the truth is really out there.<br />\r\nVICE meets up with Joe Nickell, a longtime paranormal investigator who’s been called the real-life Scully. We travel with him to Roswell, NM on the anniversary of the 1947 UFO Crash to talk to believers, skeptics and UFO witnesses alike to see if the truth is really out there. VICE meets up with Joe Nickell, a longtime paranormal investigator who’s been called the real-life Scully. We travel with him to Roswell, NM on the called the real-life Scully. We travel with him to Roswell, NM on the anniversary of the 1947 UFO Crash to talk to believers, skeptics and UFO witnesses alike to see if the truth is really out there. VICE meets up with Joe Nickell, a longtime paranormal investigator who’s been called the real-life Scully. We travel with him to Roswell, NM on the anniversary of the 1947 UFO Crash to talk to believers, skeptics and UFO witnesses alike to see if the truth is really out there.We travel with him to Roswell.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n', 1, 0, 8, 1524977820, 1524988376, 25);

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_article_menu`
--

CREATE TABLE `olala3w_article_menu` (
  `article_menu_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keywords` text NOT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '1',
  `comment` text CHARACTER SET utf8mb4 NOT NULL,
  `icon` text NOT NULL,
  `plus` varchar(255) NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `img` varchar(255) NOT NULL DEFAULT 'no',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `olala3w_article_menu`
--

INSERT INTO `olala3w_article_menu` (`article_menu_id`, `category_id`, `name`, `slug`, `title`, `description`, `keywords`, `parent`, `sort`, `comment`, `icon`, `plus`, `is_active`, `hot`, `img`, `created_time`, `modified_time`, `user_id`) VALUES
(478, 15, 'Dịch vụ', 'dich-vu', '', '', '', 0, 1, '', '', '', 1, 0, 'no', 1523677793, 1523677793, 25),
(477, 14, 'Thực đơn nhà hàng', 'thuc-don-nha-hang', '', '', '', 0, 3, '', '', 'Chúng tôi rất vui mừng khi được chào đón bạn ở NgonNgon Bistro', 1, 0, 'thuc-don-nha-hang-1523034552.png', 1523034552, 1523034552, 25),
(476, 14, 'Dịch vụ chuyên nghiệp', 'dich-vu-chuyen-nghiep', '', '', '', 0, 2, '', '', 'Chúng tôi rất vui mừng khi được\r\nchào đón bạn ở NgonNgon Bistro', 1, 0, 'dich-vu-chuyen-nghiep-1523034521.png', 1523034521, 1523034521, 25),
(474, 12, 'Tin tức', 'tin-tuc-m', '', '', '', 0, 1, '', '', '', 1, 0, 'no', 1522857791, 1522857791, 25),
(475, 14, 'Thức ăn ngon', 'thuc-an-ngon', '', '', '', 0, 1, '', '', 'Chúng tôi rất vui mừng khi được chào đón bạn ở NgonNgon Bistro', 1, 0, 'thuc-an-ngon-1523034488.png', 1523034488, 1523034499, 25),
(473, 9, 'Giới thiệu chung', 'gioi-thieu-chung', '', '', '', 0, 1, '<p><img alt="" src="/uploads/images/m.png" style="padding-right: 10px; float: left;" />enc non elit libero. Quisque massa porta ut placerat lentesque non diam. Nam convallis porta rhoncus. Maecenas varius eget turpis suscipit porta sapien tinc Mauris tempor libero fringilla orci vivrra faucibue fringilla orci vivrra faucibus. Integer ullamcorper erat in tellus efficitur, quis porta sapien tincidunt. Nunc mattis lectus sed semper semper.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', 1, 0, 'no', 1522857755, 1523626822, 25);

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_car`
--

CREATE TABLE `olala3w_car` (
  `car_id` int(11) NOT NULL,
  `car_menu_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keywords` text NOT NULL,
  `img` varchar(255) NOT NULL DEFAULT 'no',
  `img_note` varchar(255) NOT NULL,
  `upload_id` bigint(20) NOT NULL,
  `model` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `seat` varchar(255) NOT NULL,
  `seat_sort` int(11) NOT NULL DEFAULT '0',
  `color` varchar(255) NOT NULL,
  `price` bigint(15) NOT NULL,
  `sale` int(3) NOT NULL DEFAULT '0',
  `comment` text CHARACTER SET utf8mb4 NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `views` bigint(20) NOT NULL DEFAULT '1',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_car_menu`
--

CREATE TABLE `olala3w_car_menu` (
  `car_menu_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keywords` text NOT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '1',
  `comment` text CHARACTER SET utf8mb4 NOT NULL,
  `icon` varchar(255) NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `img` varchar(255) NOT NULL DEFAULT 'no',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_category`
--

CREATE TABLE `olala3w_category` (
  `category_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(30) NOT NULL,
  `plus` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keywords` text NOT NULL,
  `comment` text CHARACTER SET utf8mb4 NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '1',
  `menu_main` int(1) NOT NULL DEFAULT '0',
  `sort_hide` int(11) NOT NULL DEFAULT '1',
  `menu_sm` int(1) NOT NULL DEFAULT '0',
  `img` varchar(255) NOT NULL DEFAULT 'no',
  `icon` varchar(255) NOT NULL,
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `olala3w_category`
--

INSERT INTO `olala3w_category` (`category_id`, `type_id`, `name`, `slug`, `plus`, `title`, `description`, `keywords`, `comment`, `is_active`, `hot`, `sort`, `menu_main`, `sort_hide`, `menu_sm`, `img`, `icon`, `created_time`, `modified_time`, `user_id`) VALUES
(9, 1, 'Giới thiệu', 'gioi-thieu', '', '', '', '', '', 1, 1, 1, 1, 2, 0, 'gioi-thieu-1523627022.jpg', '', 0, 1523627022, 25),
(74, 6, 'Thực đơn', 'thuc-don', 'Khám phá', '', '', '', 'Everyone has taste, even if they don''t realize it. Even if you''re not a great chef, there''s nothing to stop you understanding the difference between what tastes good and what doesn''t.', 1, 0, 2, 1, 6, 0, 'thuc-don-1523629165.jpg', '', 0, 1523781256, 25),
(14, 1, 'Điểm nổi bật', 'hot', '', '', '', '', '', 1, 0, 1, 0, 1, 0, 'no', '', 0, 0, 0),
(13, 2, 'Slider', 'slider', '', '', '', '', '', 1, 0, 1, 0, 1, 0, 'no', '', 0, 1522857798, 25),
(11, 2, 'Hình ảnh', 'hinh-anh', 'Thư viện', '', '', '', 'Everyone has taste, even if they don''t realize it. Even if you''re not a great chef.', 1, 1, 4, 1, 4, 0, 'hinh-anh-1523806661.jpg', '', 0, 1523806661, 25),
(91, 2, 'Our Team', 'our-team', '', '', '', '', '', 1, 1, 4, 0, 1, 0, 'no', '', 0, 1522857809, 25),
(12, 1, 'Tin tức', 'tin-tuc', '', '', '', '', '', 1, 1, 5, 1, 3, 0, 'no', '', 0, 1522857777, 25),
(15, 1, 'Dịch vụ', 'service', '', '', '', '', '', 1, 0, 1, 0, 1, 0, 'dich-vu-1523678654.jpg', '', 0, 1523678654, 25);

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_category_type`
--

CREATE TABLE `olala3w_category_type` (
  `type_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(30) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '1',
  `is_active` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `olala3w_category_type`
--

INSERT INTO `olala3w_category_type` (`type_id`, `name`, `slug`, `sort`, `is_active`) VALUES
(1, 'Bài viết', 'article_manager', 1, 1),
(2, 'Hình ảnh', 'gallery_manager', 2, 1),
(7, 'Đăng ký email', 'register_email', 9, 1),
(6, 'Thực đơn', 'product_manager', 3, 1),
(8, 'Booking online', 'order_list', 7, 1),
(9, 'Tour du lịch', 'tour_manager', 5, 0),
(10, 'Đồ lưu niệm', 'gift_manager', 0, 0),
(11, 'Thuê xe', 'car_manager', 6, 0),
(12, 'Vị trí địa lý', 'location_manager', 0, 0),
(13, 'Dữ liệu đường phố', 'street_manager', 0, 0),
(14, 'Dữ liệu phương hướng', 'direction_manager', 0, 0),
(15, 'Dữ liệu khác', 'others_manager', 4, 0),
(16, 'Chiều rộng đường', 'road_manager', 0, 0),
(17, 'Dự án', 'project_manager', 0, 0),
(18, 'BĐS kinh doanh', 'bds_business_manager', 0, 0),
(19, 'Dữ liệu tên dự án', 'prjname_manager', 0, 0),
(20, 'Thư liên hệ', 'contact_list', 8, 1),
(21, 'Văn bản / Tài liệu', 'document_manager', 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_constant`
--

CREATE TABLE `olala3w_constant` (
  `constant_id` int(11) NOT NULL,
  `constant` varchar(50) NOT NULL,
  `value` text CHARACTER SET utf8mb4 NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` int(2) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `olala3w_constant`
--

INSERT INTO `olala3w_constant` (`constant_id`, `constant`, `value`, `name`, `type`, `sort`) VALUES
(1, 'date', 'd/m/Y', 'Kiểu hiển thị ngày tháng năm', 3, 1),
(2, 'time', 'H:i', 'Kiểu hiển thị giờ phút', 3, 2),
(3, 'timezone', 'Asia/Bangkok', 'Múi giờ', 3, 4),
(4, 'title', 'Ngon Ngon', 'Title (trang chủ)', 0, 1),
(5, 'description', 'Ngon Ngon', 'Description (trang chủ)', 0, 2),
(6, 'keywords', 'Ngon Ngon', 'Keywords (trang chủ)', 0, 3),
(74, 'script_body', '<div id="fb-root"></div>\r\n<script>(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.5";\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n}(document, ''script'', ''facebook-jssdk''));</script>\r\n', 'Script sau body', 4, 6),
(76, 'link_tripadvisor', 'https://www.tripadvisor.com', 'Tripadvisor', 5, 5),
(7, 'email_contact', 'tranhuuthinh555@gmail.com', 'Email', 0, 8),
(8, 'tell_contact', '(+84) 236 3888 626', 'Điện thoại', 0, 9),
(9, 'fulldate', 'D, d/m/Y', 'Kiểu hiển ngày đầy đủ', 3, 3),
(10, 'SMTP_username', 'olala.3w@gmail.com', 'Tài khoản email', 1, 0),
(11, 'SMTP_password', 'cdreodvwrbpbugso', 'Mật khẩu email', 1, 0),
(12, 'error_page', '<p>Vì lý do kỹ&nbsp;thuật website tạm ngưng&nbsp;hoạt động. Thành thật xin lỗi các bạn&nbsp;vì sự bất tiện này!</p>\r\n', 'Thông báo ngừng hoạt động', 0, 19),
(13, 'file_logo', '/uploads/files/logo-ngonngon.png', 'Logo front-end', 0, 4),
(14, 'SMTP_secure', 'ssl', 'Sử dụng xác thực', 1, 0),
(15, 'SMTP_host', 'smtp.gmail.com', 'Máy chủ (SMTP) Thư gửi đi', 1, 0),
(16, 'SMTP_port', '465', 'Cổng gửi mail', 1, 0),
(17, 'backup_auto', '', 'Tự động sao lưu', 2, 0),
(18, 'backup_filetype', 'sql.gz', 'Định dạng lưu file CSDL', 2, 0),
(19, 'backup_filecount', '5', 'Số file CSDL lưu lại', 2, 0),
(20, 'backup_email', 'olala.3w@gmail.com', 'Email nhận thông báo và file', 2, 0),
(21, 'SMTP_mailname', 'Ngon Ngon', 'Tên tài khoản email', 1, 0),
(22, 'link_facebook', 'https://www.facebook.com', 'Facebook', 5, 1),
(23, 'link_googleplus', 'https://plus.google.com', 'Google+', 5, 2),
(24, 'link_twitter', 'https://twitter.com', 'Twitter', 5, 3),
(25, 'address_contact', 'Đà Nẵng, Việt Nam', 'Địa chỉ', 0, 11),
(73, 'script_bottom', '<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?''http'':''https'';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+''://platform.twitter.com/widgets.js'';fjs.parentNode.insertBefore(js,fjs);}}(document, ''script'', ''twitter-wjs'');</script>\r\n<script src="https://apis.google.com/js/platform.js" async defer>\r\n  {lang: ''vi''}\r\n</script>\r\n', 'Script cuối trang', 4, 7),
(26, 'content_registertry', '', 'Email đăng ký học thử', 13, 17),
(27, 'author_google', '', 'ID profile Google+', 4, 1),
(28, 'google_analytics', '', 'Google analytics', 4, 4),
(29, 'chat_online', '', 'Script Chat Online', 4, 5),
(30, 'english_test', '', 'Kiểm tra tiếng Anh của bạn', 13, 18),
(31, 'google_calendar', '', 'Google Calendar (Account)', 4, 3),
(32, 'help_address', 'killlllme@gmail.com,0974.779.085,huy.to.bsn,mr.killlllme', 'Tư vấn - Địa chỉ', 13, 8),
(33, 'help_icon', 'fa-envelope-o,fa-phone,fa-skype,fa-facebook', 'Tư vấn - Icon', 13, 9),
(34, 'link_youtube', 'https://www.youtube.com', 'Youtube', 5, 4),
(35, 'search_destination', 'Hà Nội,Đà Nẵng,Hồ Chí Minh,Phú Quốc,Nha Trang,Hạ Long,Đà Lạt,Phong Nha Kẻ Bàng,Côn đảo Vũng Tàu,Thái Lan,Singapore,Malaysia,Campuchia,Trung Quốc,Nhật Bản,Hàn Quốc,Hà Lan,Myanmar,Úc,Hong Kong,Philippines,Indonesia,Đài Loan,Châu Á,Châu Âu,Châu Mỹ,Châu Phi,Châu Úc', 'Điểm đến (Tìm kiếm tour)', 13, 8),
(36, 'search_day', '1 Ngày,1 Ngày 1 Đêm,2 Ngày,2 Ngày 1 Đêm,3 Ngày,3 Ngày 2 Đêm,4 Ngày,4 Ngày 3 Đêm,5 Ngày,5 Ngày 4 Đêm,6 Ngày,6 Ngày 5 Đêm,7 Ngày,7 Ngày 6 Đêm,8 Ngày,8 Ngày 7 Đêm,9 Ngày,9 Ngày 8 Đêm,10 Ngày,10 Ngày 9 Đêm,11 Ngày,11 Ngày 10 Đêm,12 Ngày,12 Ngày 11 Đêm,1 Tuần,2 Tuần,3 Tuần,1 Tháng,2 Tháng,3 Tháng', 'Thời gian (Tìm kiếm tour)', 13, 9),
(75, 'fb_app_id', '', 'Facebook App ID', 4, 2),
(77, 'upload_img_max_w', '1900', 'Kích thước ảnh tối đa', 6, 1),
(78, 'upload_max_size', '52428800', 'Dung lượng tối đa', 6, 2),
(79, 'upload_checking_mode', 'mild', 'Kiểu kiểm tra file tải lên', 6, 3),
(80, 'upload_type', '1,4,5,6,7,8,9,10,11', 'Loại files cho phép', 6, 4),
(81, 'upload_ext', '', 'Phần mở rộng bị cấm', 6, 5),
(82, 'upload_mime', '', 'Loại mime bị cấm', 6, 6),
(83, 'upload_img_max_h', '594', 'Kích thước ảnh tối đa', 6, 1),
(84, 'upload_auto_resize', '1', 'Tự động resize ảnh', 6, 1),
(85, 'article_author', '', 'Property = article:author', 4, 2),
(86, 'meta_author', 'Ngon Ngon', 'Meta author', 0, 4),
(88, 'meta_site_name', 'Ngon Ngon', 'Meta site name', 0, 5),
(89, 'meta_copyright', '© 2018 NgonNgonBistro. All Rights Reserved', 'Meta copyright', 0, 6),
(90, 'image_thumbnailUrl', '/uploads/files/ngon-ngon.jpg', 'Image : thumbnailUrl', 0, 7),
(91, 'set_time', 'Giờ mở cửa : Monday - Friday : 5:30PM - 11:00PM | Saturday - Sunday : 4:30PM - 10:00PM', 'Time', 0, 10),
(92, 'link_instagram', 'https://www.instagram.com', 'Instagram', 5, 6);

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_contact`
--

CREATE TABLE `olala3w_contact` (
  `contact_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `content` text NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `ip` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL DEFAULT 'fa-send-o',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_core_privilege`
--

CREATE TABLE `olala3w_core_privilege` (
  `privilege_id` bigint(20) NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT '0',
  `type` varchar(30) NOT NULL,
  `privilege_slug` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `olala3w_core_privilege`
--

INSERT INTO `olala3w_core_privilege` (`privilege_id`, `role_id`, `type`, `privilege_slug`) VALUES
(2250, 1, 'direction', 'direction_del'),
(2249, 1, 'direction', 'direction_edit'),
(2248, 1, 'direction', 'direction_add'),
(2255, 1, 'pages', 'plugin_page_edit'),
(1071, 1, 'backup', 'backup_config'),
(1545, 1, 'config', 'config_search'),
(1531, 1, 'tool', 'tool_ipdie'),
(1530, 1, 'tool', 'tool_keywords'),
(2656, 1, 'bds_business', 'bds_business_del;50'),
(2103, 2, 'product', 'product_menu_add;37'),
(2102, 2, 'product', 'category_edit;37'),
(2101, 2, 'article', 'article_del;13'),
(2100, 2, 'article', 'article_edit;13'),
(2099, 2, 'article', 'article_add;13'),
(2098, 2, 'article', 'article_list;13'),
(2097, 2, 'article', 'article_menu_del;13'),
(2096, 2, 'article', 'article_menu_edit;13'),
(2095, 2, 'article', 'article_menu_add;13'),
(2094, 2, 'article', 'category_edit;13'),
(2093, 2, 'article', 'article_del;9'),
(2092, 2, 'article', 'article_edit;9'),
(2091, 2, 'article', 'article_add;9'),
(2090, 2, 'article', 'article_list;9'),
(2089, 2, 'article', 'article_menu_del;9'),
(2088, 2, 'article', 'article_menu_edit;9'),
(2087, 2, 'article', 'article_menu_add;9'),
(2086, 2, 'article', 'category_edit;9'),
(273, 2, 'gallery', 'gallery_menu_add;6'),
(274, 2, 'gallery', 'gallery_menu_edit;6'),
(275, 2, 'gallery', 'gallery_menu_del;6'),
(276, 2, 'gallery', 'gallery_add;6'),
(277, 2, 'gallery', 'gallery_edit;6'),
(278, 2, 'gallery', 'gallery_del;6'),
(279, 2, 'pages', 'pages_add'),
(280, 2, 'pages', 'pages_edit'),
(281, 2, 'pages', 'pages_del'),
(287, 2, 'backup', 'backup_data'),
(288, 2, 'backup', 'backup_config'),
(289, 2, 'config', 'config_general'),
(290, 2, 'config', 'config_search'),
(291, 2, 'config', 'config_ipdie'),
(292, 2, 'config', 'config_upload'),
(293, 2, 'tool', 'tool_delete'),
(294, 2, 'tool', 'tool_site'),
(295, 2, 'tool', 'tool_keywords'),
(296, 2, 'tool', 'tool_update'),
(330, 2, 'core', 'core_mail'),
(2655, 1, 'bds_business', 'bds_business_edit;50'),
(2654, 1, 'bds_business', 'bds_business_add;50'),
(1070, 1, 'backup', 'backup_data'),
(1544, 1, 'config', 'config_socialnetwork'),
(1529, 1, 'tool', 'tool_site'),
(1528, 1, 'tool', 'tool_delete'),
(3333, 1, 'core', 'core_dashboard'),
(2653, 1, 'bds_business', 'bds_business_list;50'),
(3331, 1, 'core', 'core_role'),
(1543, 1, 'config', 'config_plugins'),
(3332, 1, 'core', 'core_user'),
(2254, 1, 'pages', 'plugin_page_add'),
(2252, 1, 'street', 'street_edit'),
(2251, 1, 'street', 'street_add'),
(2208, 1, 'location', 'location_del;40'),
(2207, 1, 'location', 'location_edit;40'),
(2206, 1, 'location', 'location_add;40'),
(2205, 1, 'location', 'location_list;40'),
(2204, 1, 'location', 'location_menu_del;40'),
(2203, 1, 'location', 'location_menu_edit;40'),
(2202, 1, 'location', 'location_menu_add;40'),
(2201, 1, 'location', 'category_edit;40'),
(1532, 1, 'tool', 'tool_update'),
(1542, 1, 'config', 'config_datetime'),
(1541, 1, 'config', 'config_smtp'),
(1540, 1, 'config', 'config_general'),
(1546, 1, 'config', 'config_upload'),
(2200, 1, 'location', 'location_del;39'),
(2198, 1, 'location', 'location_add;39'),
(2199, 1, 'location', 'location_edit;39'),
(2197, 1, 'location', 'location_list;39'),
(2195, 1, 'location', 'location_menu_edit;39'),
(2196, 1, 'location', 'location_menu_del;39'),
(2194, 1, 'location', 'location_menu_add;39'),
(4993, 1, 'article', 'article_del;12'),
(3983, 1, 'tour', 'tour_del;70'),
(3982, 1, 'tour', 'tour_edit;70'),
(3981, 1, 'tour', 'tour_add;70'),
(3980, 1, 'tour', 'tour_list;70'),
(3979, 1, 'tour', 'tour_menu_del;70'),
(3978, 1, 'tour', 'tour_menu_edit;70'),
(3977, 1, 'tour', 'tour_menu_add;70'),
(3976, 1, 'tour', 'category_edit;70'),
(1712, 1, 'gift', 'gift_add;22'),
(1711, 1, 'gift', 'gift_list;22'),
(1710, 1, 'gift', 'gift_menu_del;22'),
(1709, 1, 'gift', 'gift_menu_edit;22'),
(1708, 1, 'gift', 'gift_menu_add;22'),
(1707, 1, 'gift', 'category_edit;22'),
(3838, 1, 'car', 'car_list;67'),
(3837, 1, 'car', 'car_menu_del;67'),
(3836, 1, 'car', 'car_menu_edit;67'),
(3835, 1, 'car', 'car_menu_add;67'),
(3834, 1, 'car', 'category_edit;67'),
(1713, 1, 'gift', 'gift_edit;22'),
(1714, 1, 'gift', 'gift_del;22'),
(2193, 1, 'location', 'category_edit;39'),
(3328, 1, 'info', 'sys_info_expansion'),
(3327, 1, 'info', 'sys_info_site'),
(4992, 1, 'article', 'article_edit;12'),
(2085, 2, 'category', 'article_manager'),
(4985, 1, 'article', 'article_del;15'),
(4984, 1, 'article', 'article_edit;15'),
(4982, 1, 'article', 'article_list;15'),
(2253, 1, 'street', 'street_del'),
(2256, 1, 'pages', 'plugin_page_del'),
(2290, 1, 'road', 'road_add'),
(2291, 1, 'road', 'road_edit'),
(2292, 1, 'road', 'road_del'),
(2780, 1, 'project', 'project_list;13'),
(2779, 1, 'project', 'project_menu_del;13'),
(2778, 1, 'project', 'project_menu_edit;13'),
(2777, 1, 'project', 'project_menu_add;13'),
(2776, 1, 'project', 'category_edit;13'),
(3841, 1, 'car', 'car_del;67'),
(3840, 1, 'car', 'car_edit;67'),
(3839, 1, 'car', 'car_add;67'),
(4027, 1, 'document', 'document_add;73'),
(2652, 1, 'bds_business', 'bds_business_menu_del;50'),
(2651, 1, 'bds_business', 'bds_business_menu_edit;50'),
(2650, 1, 'bds_business', 'bds_business_menu_add;50'),
(2649, 1, 'bds_business', 'category_edit;50'),
(2781, 1, 'project', 'project_add;13'),
(2782, 1, 'project', 'project_edit;13'),
(2783, 1, 'project', 'project_del;13'),
(2784, 1, 'project', 'category_edit;53'),
(2785, 1, 'project', 'project_menu_add;53'),
(2786, 1, 'project', 'project_menu_edit;53'),
(2787, 1, 'project', 'project_menu_del;53'),
(2788, 1, 'project', 'project_list;53'),
(2789, 1, 'project', 'project_add;53'),
(2790, 1, 'project', 'project_edit;53'),
(2791, 1, 'project', 'project_del;53'),
(2792, 9, 'category', 'product_manager'),
(2793, 9, 'product', 'product_list;37'),
(2794, 9, 'product', 'product_add;37'),
(2795, 9, 'product', 'product_edit;37'),
(2796, 9, 'product', 'product_del;37'),
(2797, 11, 'category', 'article_manager'),
(2798, 11, 'category', 'gallery_manager'),
(2799, 11, 'category', 'project_manager'),
(2800, 11, 'category', 'product_manager'),
(2801, 11, 'category', 'location_manager'),
(2802, 11, 'category', 'street_manager'),
(2803, 11, 'category', 'road_manager'),
(2804, 11, 'category', 'direction_manager'),
(2805, 11, 'category', 'others_manager'),
(2806, 11, 'category', 'plugin_page'),
(3031, 11, 'article', 'article_menu_add;9'),
(3030, 11, 'article', 'category_edit;9'),
(2809, 11, 'config', 'config_socialnetwork'),
(2815, 11, 'pages', 'plugin_page_del'),
(2814, 11, 'pages', 'plugin_page_edit'),
(2813, 11, 'pages', 'plugin_page_add'),
(2816, 1, 'prjname', 'prjname_add'),
(2817, 1, 'prjname', 'prjname_edit'),
(2818, 1, 'prjname', 'prjname_del'),
(2830, 12, 'category', 'article_manager'),
(2831, 12, 'category', 'gallery_manager'),
(2832, 12, 'category', 'project_manager'),
(2833, 12, 'category', 'product_manager'),
(2834, 12, 'category', 'location_manager'),
(2835, 12, 'category', 'road_manager'),
(2836, 12, 'category', 'street_manager'),
(2837, 12, 'category', 'direction_manager'),
(2838, 12, 'category', 'prjname_manager'),
(2839, 12, 'category', 'others_manager'),
(2840, 12, 'category', 'plugin_page'),
(2841, 12, 'pages', 'plugin_page_add'),
(2842, 12, 'pages', 'plugin_page_edit'),
(2843, 12, 'pages', 'plugin_page_del'),
(2908, 12, 'article', 'category_edit;9'),
(2909, 12, 'article', 'article_menu_add;9'),
(2910, 12, 'article', 'article_menu_edit;9'),
(2911, 12, 'article', 'article_menu_del;9'),
(2912, 12, 'article', 'article_list;9'),
(2913, 12, 'article', 'article_add;9'),
(2914, 12, 'article', 'article_edit;9'),
(2915, 12, 'article', 'article_del;9'),
(2916, 12, 'article', 'category_edit;51'),
(2917, 12, 'article', 'article_menu_add;51'),
(2918, 12, 'article', 'article_menu_edit;51'),
(2919, 12, 'article', 'article_menu_del;51'),
(2920, 12, 'article', 'article_list;51'),
(2921, 12, 'article', 'article_add;51'),
(2922, 12, 'article', 'article_edit;51'),
(2923, 12, 'article', 'article_del;51'),
(2924, 12, 'article', 'category_edit;7'),
(2925, 12, 'article', 'article_menu_add;7'),
(2926, 12, 'article', 'article_menu_edit;7'),
(2927, 12, 'article', 'article_menu_del;7'),
(2928, 12, 'article', 'article_list;7'),
(2929, 12, 'article', 'article_add;7'),
(2930, 12, 'article', 'article_edit;7'),
(2931, 12, 'article', 'article_del;7'),
(2932, 12, 'project', 'category_edit;13'),
(2933, 12, 'project', 'project_menu_add;13'),
(2934, 12, 'project', 'project_menu_edit;13'),
(2935, 12, 'project', 'project_menu_del;13'),
(2936, 12, 'project', 'project_list;13'),
(2937, 12, 'project', 'project_add;13'),
(2938, 12, 'project', 'project_edit;13'),
(2939, 12, 'project', 'project_del;13'),
(2940, 12, 'project', 'category_edit;53'),
(2941, 12, 'project', 'project_menu_add;53'),
(2942, 12, 'project', 'project_menu_edit;53'),
(2943, 12, 'project', 'project_menu_del;53'),
(2944, 12, 'project', 'project_list;53'),
(2945, 12, 'project', 'project_add;53'),
(2946, 12, 'project', 'project_edit;53'),
(2947, 12, 'project', 'project_del;53'),
(2948, 12, 'gallery', 'category_edit;4'),
(2949, 12, 'gallery', 'gallery_menu_add;4'),
(2950, 12, 'gallery', 'gallery_menu_edit;4'),
(2951, 12, 'gallery', 'gallery_menu_del;4'),
(2952, 12, 'gallery', 'gallery_list;4'),
(2953, 12, 'gallery', 'gallery_add;4'),
(2954, 12, 'gallery', 'gallery_edit;4'),
(2955, 12, 'gallery', 'gallery_del;4'),
(2956, 12, 'gallery', 'category_edit;52'),
(2957, 12, 'gallery', 'gallery_menu_add;52'),
(2958, 12, 'gallery', 'gallery_menu_edit;52'),
(2959, 12, 'gallery', 'gallery_menu_del;52'),
(2960, 12, 'gallery', 'gallery_list;52'),
(2961, 12, 'gallery', 'gallery_add;52'),
(2962, 12, 'gallery', 'gallery_edit;52'),
(2963, 12, 'gallery', 'gallery_del;52'),
(2964, 12, 'product', 'category_edit;37'),
(2965, 12, 'product', 'product_menu_add;37'),
(2966, 12, 'product', 'product_menu_edit;37'),
(2967, 12, 'product', 'product_menu_del;37'),
(2968, 12, 'product', 'product_list;37'),
(2969, 12, 'product', 'product_add;37'),
(2970, 12, 'product', 'product_edit;37'),
(2971, 12, 'product', 'product_del;37'),
(2985, 12, 'location', 'location_add;39'),
(2984, 12, 'location', 'location_list;39'),
(2983, 12, 'location', 'location_menu_del;39'),
(2982, 12, 'location', 'location_menu_edit;39'),
(2981, 12, 'location', 'location_menu_add;39'),
(2980, 12, 'location', 'category_edit;39'),
(2986, 12, 'location', 'location_edit;39'),
(2987, 12, 'location', 'location_del;39'),
(2988, 12, 'location', 'category_edit;40'),
(2989, 12, 'location', 'location_menu_add;40'),
(2990, 12, 'location', 'location_menu_edit;40'),
(2991, 12, 'location', 'location_menu_del;40'),
(2992, 12, 'location', 'location_list;40'),
(2993, 12, 'location', 'location_add;40'),
(2994, 12, 'location', 'location_edit;40'),
(2995, 12, 'location', 'location_del;40'),
(2996, 12, 'road', 'road_add'),
(2997, 12, 'road', 'road_edit'),
(2998, 12, 'road', 'road_del'),
(2999, 12, 'street', 'street_add'),
(3000, 12, 'street', 'street_edit'),
(3001, 12, 'street', 'street_del'),
(3002, 12, 'direction', 'direction_add'),
(3003, 12, 'direction', 'direction_edit'),
(3004, 12, 'direction', 'direction_del'),
(3005, 12, 'prjname', 'prjname_add'),
(3006, 12, 'prjname', 'prjname_edit'),
(3007, 12, 'prjname', 'prjname_del'),
(3008, 12, 'backup', 'backup_data'),
(3009, 12, 'backup', 'backup_config'),
(3010, 12, 'config', 'config_general'),
(3011, 12, 'config', 'config_smtp'),
(3012, 12, 'config', 'config_datetime'),
(3013, 12, 'config', 'config_plugins'),
(3014, 12, 'config', 'config_socialnetwork'),
(3015, 12, 'config', 'config_search'),
(3016, 12, 'config', 'config_upload'),
(3017, 12, 'tool', 'tool_delete'),
(3018, 12, 'tool', 'tool_site'),
(3019, 12, 'tool', 'tool_keywords'),
(3020, 12, 'tool', 'tool_ipdie'),
(3021, 12, 'tool', 'tool_update'),
(3022, 12, 'core', 'core_role'),
(3023, 12, 'core', 'core_user'),
(3024, 12, 'core', 'core_dashboard'),
(3025, 12, 'core', 'core_mail'),
(3026, 12, 'info', 'Info_diary'),
(3027, 12, 'info', 'Info_php'),
(3028, 12, 'info', 'Info_site'),
(3029, 12, 'info', 'Info_expansion'),
(3032, 11, 'article', 'article_menu_edit;9'),
(3033, 11, 'article', 'article_menu_del;9'),
(3034, 11, 'article', 'article_list;9'),
(3035, 11, 'article', 'article_add;9'),
(3036, 11, 'article', 'article_edit;9'),
(3037, 11, 'article', 'article_del;9'),
(3038, 11, 'article', 'category_edit;51'),
(3039, 11, 'article', 'article_menu_add;51'),
(3040, 11, 'article', 'article_menu_edit;51'),
(3041, 11, 'article', 'article_menu_del;51'),
(3042, 11, 'article', 'article_list;51'),
(3043, 11, 'article', 'article_add;51'),
(3044, 11, 'article', 'article_edit;51'),
(3045, 11, 'article', 'article_del;51'),
(3046, 11, 'article', 'category_edit;7'),
(3047, 11, 'article', 'article_menu_add;7'),
(3048, 11, 'article', 'article_menu_edit;7'),
(3049, 11, 'article', 'article_menu_del;7'),
(3050, 11, 'article', 'article_list;7'),
(3051, 11, 'article', 'article_add;7'),
(3052, 11, 'article', 'article_edit;7'),
(3053, 11, 'article', 'article_del;7'),
(3054, 11, 'gallery', 'category_edit;4'),
(3055, 11, 'gallery', 'gallery_menu_add;4'),
(3056, 11, 'gallery', 'gallery_menu_edit;4'),
(3057, 11, 'gallery', 'gallery_menu_del;4'),
(3058, 11, 'gallery', 'gallery_list;4'),
(3059, 11, 'gallery', 'gallery_add;4'),
(3060, 11, 'gallery', 'gallery_edit;4'),
(3061, 11, 'gallery', 'gallery_del;4'),
(3062, 11, 'gallery', 'category_edit;52'),
(3063, 11, 'gallery', 'gallery_menu_add;52'),
(3064, 11, 'gallery', 'gallery_menu_edit;52'),
(3065, 11, 'gallery', 'gallery_menu_del;52'),
(3066, 11, 'gallery', 'gallery_list;52'),
(3067, 11, 'gallery', 'gallery_add;52'),
(3068, 11, 'gallery', 'gallery_edit;52'),
(3069, 11, 'gallery', 'gallery_del;52'),
(3070, 11, 'project', 'category_edit;13'),
(3071, 11, 'project', 'project_menu_add;13'),
(3072, 11, 'project', 'project_menu_edit;13'),
(3073, 11, 'project', 'project_menu_del;13'),
(3074, 11, 'project', 'project_list;13'),
(3075, 11, 'project', 'project_add;13'),
(3076, 11, 'project', 'project_edit;13'),
(3077, 11, 'project', 'project_del;13'),
(3078, 11, 'project', 'category_edit;53'),
(3079, 11, 'project', 'project_menu_add;53'),
(3080, 11, 'project', 'project_menu_edit;53'),
(3081, 11, 'project', 'project_menu_del;53'),
(3082, 11, 'project', 'project_list;53'),
(3083, 11, 'project', 'project_add;53'),
(3084, 11, 'project', 'project_edit;53'),
(3085, 11, 'project', 'project_del;53'),
(3137, 11, 'product', 'owner_real;37'),
(3136, 11, 'product', 'product_del;37'),
(3135, 11, 'product', 'product_edit;37'),
(3134, 11, 'product', 'product_add;37'),
(4983, 1, 'article', 'article_add;15'),
(4981, 1, 'article', 'article_menu_del;15'),
(3133, 11, 'product', 'product_list;37'),
(3138, 11, 'product', 'owner_cus;37'),
(3326, 1, 'info', 'sys_info_php'),
(3325, 1, 'info', 'sys_info_diary'),
(3334, 1, 'core', 'core_mail'),
(4951, 1, 'gallery', 'gallery_add;11'),
(4950, 1, 'gallery', 'gallery_list;11'),
(4949, 1, 'gallery', 'gallery_menu_del;11'),
(4948, 1, 'gallery', 'gallery_menu_edit;11'),
(4947, 1, 'gallery', 'gallery_menu_add;11'),
(4946, 1, 'gallery', 'category_edit;11'),
(4945, 1, 'gallery', 'gallery_del;13'),
(4943, 1, 'gallery', 'gallery_add;13'),
(4944, 1, 'gallery', 'gallery_edit;13'),
(4939, 1, 'gallery', 'gallery_menu_add;13'),
(4695, 1, 'others', 'others_del;88'),
(4026, 1, 'document', 'document_list;73'),
(4025, 1, 'document', 'document_menu_del;73'),
(4024, 1, 'document', 'document_menu_edit;73'),
(4023, 1, 'document', 'document_menu_add;73'),
(4022, 1, 'document', 'category_edit;73'),
(4028, 1, 'document', 'document_edit;73'),
(4029, 1, 'document', 'document_del;73'),
(4862, 1, 'category', 'order_list'),
(4980, 1, 'article', 'article_menu_edit;15'),
(4979, 1, 'article', 'article_menu_add;15'),
(4913, 1, 'product', 'product_del;74'),
(4912, 1, 'product', 'product_edit;74'),
(4910, 1, 'product', 'product_list;74'),
(4911, 1, 'product', 'product_add;74'),
(4909, 1, 'product', 'product_menu_del;74'),
(4906, 1, 'product', 'category_edit;74'),
(4907, 1, 'product', 'product_menu_add;74'),
(4908, 1, 'product', 'product_menu_edit;74'),
(4991, 1, 'article', 'article_add;12'),
(4990, 1, 'article', 'article_list;12'),
(4989, 1, 'article', 'article_menu_del;12'),
(4988, 1, 'article', 'article_menu_edit;12'),
(4694, 1, 'others', 'others_edit;88'),
(4693, 1, 'others', 'others_add;88'),
(4692, 1, 'others', 'others_list;88'),
(4691, 1, 'others', 'others_menu_del;88'),
(4690, 1, 'others', 'others_menu_edit;88'),
(4689, 1, 'others', 'others_menu_add;88'),
(4688, 1, 'others', 'category_edit;88'),
(4687, 1, 'others', 'others_del;95'),
(4686, 1, 'others', 'others_edit;95'),
(4685, 1, 'others', 'others_add;95'),
(4684, 1, 'others', 'others_list;95'),
(4683, 1, 'others', 'others_menu_del;95'),
(4682, 1, 'others', 'others_menu_edit;95'),
(4681, 1, 'others', 'others_menu_add;95'),
(4680, 1, 'others', 'category_edit;95'),
(4987, 1, 'article', 'article_menu_add;12'),
(4986, 1, 'article', 'category_edit;12'),
(4961, 1, 'gallery', 'gallery_del;91'),
(4960, 1, 'gallery', 'gallery_edit;91'),
(4959, 1, 'gallery', 'gallery_add;91'),
(4958, 1, 'gallery', 'gallery_list;91'),
(4957, 1, 'gallery', 'gallery_menu_del;91'),
(4956, 1, 'gallery', 'gallery_menu_edit;91'),
(4955, 1, 'gallery', 'gallery_menu_add;91'),
(4954, 1, 'gallery', 'category_edit;91'),
(4953, 1, 'gallery', 'gallery_del;11'),
(4952, 1, 'gallery', 'gallery_edit;11'),
(4978, 1, 'article', 'category_edit;15'),
(4977, 1, 'article', 'article_del;14'),
(4942, 1, 'gallery', 'gallery_list;13'),
(4941, 1, 'gallery', 'gallery_menu_del;13'),
(4976, 1, 'article', 'article_edit;14'),
(4975, 1, 'article', 'article_add;14'),
(4974, 1, 'article', 'article_list;14'),
(4973, 1, 'article', 'article_menu_del;14'),
(4972, 1, 'article', 'article_menu_edit;14'),
(4971, 1, 'article', 'article_menu_add;14'),
(4969, 1, 'article', 'article_del;9'),
(4970, 1, 'article', 'category_edit;14'),
(4968, 1, 'article', 'article_edit;9'),
(4967, 1, 'article', 'article_add;9'),
(4966, 1, 'article', 'article_list;9'),
(4965, 1, 'article', 'article_menu_del;9'),
(4963, 1, 'article', 'article_menu_add;9'),
(4940, 1, 'gallery', 'gallery_menu_edit;13'),
(4938, 1, 'gallery', 'category_edit;13'),
(4861, 1, 'category', 'product_manager'),
(4964, 1, 'article', 'article_menu_edit;9'),
(4962, 1, 'article', 'category_edit;9'),
(4860, 1, 'category', 'gallery_manager'),
(4859, 1, 'category', 'article_manager'),
(4863, 1, 'category', 'contact_list'),
(4864, 1, 'category', 'register_email'),
(4865, 1, 'category', 'plugin_page');

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_core_role`
--

CREATE TABLE `olala3w_core_role` (
  `role_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `olala3w_core_role`
--

INSERT INTO `olala3w_core_role` (`role_id`, `name`, `comment`, `is_active`, `modified_time`, `user_id`) VALUES
(1, 'Administrator', 'Nhóm quản trị tối cao', 1, 1441786254, 1),
(2, 'Tester', 'Nhóm kiểm thử', 1, 1441851198, 1),
(9, 'Broker', 'Nhân viên môi giới. Chỉ nhập và quản lý thông tin BĐS.', 1, 1439055844, 1);

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_core_user`
--

CREATE TABLE `olala3w_core_user` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `user_name` varchar(16) NOT NULL,
  `password` varchar(50) NOT NULL,
  `full_name` varchar(150) NOT NULL,
  `gender` int(1) NOT NULL DEFAULT '0',
  `birthday` int(11) NOT NULL DEFAULT '0',
  `apply` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `comment` text CHARACTER SET utf8mb4 NOT NULL,
  `is_show` int(1) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '1',
  `img` varchar(255) NOT NULL DEFAULT 'no',
  `is_active` int(1) NOT NULL DEFAULT '1',
  `vote` bigint(20) NOT NULL DEFAULT '1',
  `click_vote` bigint(20) NOT NULL DEFAULT '1',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id_edit` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `olala3w_core_user`
--

INSERT INTO `olala3w_core_user` (`user_id`, `role_id`, `user_name`, `password`, `full_name`, `gender`, `birthday`, `apply`, `email`, `phone`, `address`, `comment`, `is_show`, `sort`, `img`, `is_active`, `vote`, `click_vote`, `created_time`, `modified_time`, `user_id_edit`) VALUES
(1, 1, 'admin', '5543bc9a451b8ee3ba009552845eeff0', 'Administrator', 1, 694198800, 'Quản trị website', 'huyto.qng@gmail.com', '0974779085', 'Thanh Khê - Đà Nẵng', '', 1, 1, 'u_1488926690_2c2fdf897700774ab341f6f703fc1514.png', 1, 1, 1, 1408159832, 1488926690, 1),
(25, 1, 'dev', '35622d129658338262443a22a9c7bac5', 'Tô Thái Huy', 1, -25200, '', 'huyto.qng@gmail.com', '0974779805', '', '', 1, 1, 'u_1437075987_ffbbbf570157f5aa239cf98d7caa354a.jpg', 1, 1, 1, 0, 1452217860, 1);

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_direction`
--

CREATE TABLE `olala3w_direction` (
  `direction_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '1',
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_document`
--

CREATE TABLE `olala3w_document` (
  `document_id` int(11) NOT NULL,
  `document_menu_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` text NOT NULL,
  `description` varchar(255) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `release_date` int(11) NOT NULL DEFAULT '0',
  `effective_date` int(11) NOT NULL DEFAULT '0',
  `file` varchar(255) NOT NULL DEFAULT 'no',
  `type` varchar(5) NOT NULL DEFAULT 'unk',
  `size` int(11) NOT NULL DEFAULT '0',
  `comment` text CHARACTER SET utf8mb4 NOT NULL,
  `content` text CHARACTER SET utf8mb4 NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `views` bigint(20) NOT NULL DEFAULT '1',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_document_menu`
--

CREATE TABLE `olala3w_document_menu` (
  `document_menu_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL DEFAULT 'not-found',
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keywords` text NOT NULL,
  `parent` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `comment` text CHARACTER SET utf8mb4 NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `img` varchar(255) NOT NULL DEFAULT 'no',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_gallery`
--

CREATE TABLE `olala3w_gallery` (
  `gallery_id` int(11) NOT NULL,
  `gallery_menu_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL DEFAULT 'no',
  `upload_id` bigint(20) NOT NULL DEFAULT '0',
  `comment` text CHARACTER SET utf8mb4 NOT NULL,
  `content` text CHARACTER SET utf8mb4 NOT NULL,
  `link` varchar(255) NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `views` bigint(20) NOT NULL DEFAULT '1',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `olala3w_gallery`
--

INSERT INTO `olala3w_gallery` (`gallery_id`, `gallery_menu_id`, `name`, `slug`, `title`, `description`, `keywords`, `img`, `upload_id`, `comment`, `content`, `link`, `is_active`, `hot`, `views`, `created_time`, `modified_time`, `user_id`) VALUES
(679, 95, 'Hình ảnh nhà hàng', 'hinh-anh-nha-hang', '', '', '', 'hinh-anh-nha-hang-1525061039.jpg', 1972, '', '', '', 1, 0, 1, 1525060980, 1525061039, 25),
(678, 95, 'Ngon Ngon quán', 'ngon-ngon-quan', '', '', '', 'ngon-ngon-quan-1523805894.jpg', 1967, '', '', '', 1, 0, 51, 1523805780, 1524008695, 25),
(676, 96, 'Ado Moris', 'ado-moris', '', '', '', 'ado-moris-1523638443.jpg', 1951, '<p><img alt="" src="/uploads/images/i-f.png" style="padding-right: 10px; float: left;" /><img alt="" src="/uploads/images/i-t.png" style="padding-right: 10px; float: left;" /><img alt="" src="/uploads/images/i-g.png" style="float: left;" /></p>\r\n', '', 'Chef', 1, 0, 1, 1523638380, 1523638443, 25),
(675, 96, 'Solomon Rice', 'solomon-rice', '', '', '', 'solomon-rice-1523638410.jpg', 1950, '<p><img alt="" src="/uploads/images/i-f.png" style="padding-right: 10px; float: left;" /><img alt="" src="/uploads/images/i-t.png" style="padding-right: 10px; float: left;" /><img alt="" src="/uploads/images/i-g.png" style="float: left;" /></p>\r\n', '', 'Barmen', 1, 0, 1, 1523638380, 1523638410, 25),
(674, 96, 'David Flynn', 'david-flynn', '', '', '', 'david-flynn-1523638379.jpg', 1949, '<p><img alt="" src="/uploads/images/i-f.png" style="padding-right: 10px; float: left;" /><img alt="" src="/uploads/images/i-t.png" style="padding-right: 10px; float: left;" /><img alt="" src="/uploads/images/i-g.png" style="float: left;" /></p>\r\n', '', 'Direstor', 1, 0, 1, 1523638320, 1523638378, 25),
(680, 95, 'Món ăn đặc biệt', 'mon-an-dac-biet', '', '', '', 'mon-an-dac-biet-1525061092.jpg', 1973, '', '', '', 1, 1, 4, 1525061040, 1525061663, 25),
(673, 96, 'Steven Austin', 'steven-austin', '', '', '', 'steven-austin-1523636877.jpg', 1948, '<p><img alt="" src="/uploads/images/i-f.png" style="padding-right: 10px; float: left;" /><img alt="" src="/uploads/images/i-t.png" style="padding-right: 10px; float: left;" /><img alt="" src="/uploads/images/i-g.png" style="float: left;" /></p>\r\n', '', 'Pizzamaker', 1, 0, 1, 1523636820, 1523638330, 25),
(670, 94, '2', '2', '', '', '', '2-1523632674.jpg', 1934, '', '', '', 1, 0, 1, 1522937760, 1523632674, 25),
(669, 94, '1', '1', '', '', '', '1-1523632584.jpg', 1933, '', '', '', 1, 0, 1, 1522937760, 1523632584, 25);

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_gallery_menu`
--

CREATE TABLE `olala3w_gallery_menu` (
  `gallery_menu_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keywords` text NOT NULL,
  `parent` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `comment` text CHARACTER SET utf8mb4 NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `img` varchar(255) NOT NULL DEFAULT 'no',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `olala3w_gallery_menu`
--

INSERT INTO `olala3w_gallery_menu` (`gallery_menu_id`, `category_id`, `name`, `slug`, `title`, `description`, `keywords`, `parent`, `sort`, `comment`, `is_active`, `hot`, `img`, `created_time`, `modified_time`, `user_id`) VALUES
(95, 11, 'Hình ảnh', 'images', '', '', '', 0, 1, '', 1, 0, 'no', 1522857817, 1523849476, 25),
(94, 13, 'Slider banner', 'slider-banner', '', '', '', 0, 1, '', 1, 0, 'no', 1522857804, 1522857804, 25),
(96, 91, 'Our Team', 'our-team', '', '', '', 0, 1, '', 1, 0, 'no', 1523636659, 1523636659, 25);

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_gift`
--

CREATE TABLE `olala3w_gift` (
  `gift_id` int(11) NOT NULL,
  `gift_menu_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keywords` text NOT NULL,
  `img` varchar(255) NOT NULL DEFAULT 'no',
  `img_note` varchar(255) NOT NULL,
  `price` bigint(15) NOT NULL DEFAULT '0',
  `made` varchar(255) NOT NULL,
  `material` varchar(255) NOT NULL,
  `comment` text CHARACTER SET utf8mb4 NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `views` bigint(20) NOT NULL DEFAULT '1',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_gift_menu`
--

CREATE TABLE `olala3w_gift_menu` (
  `gift_menu_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keywords` text NOT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '1',
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `img` varchar(255) NOT NULL DEFAULT 'no',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_link`
--

CREATE TABLE `olala3w_link` (
  `link_id` bigint(20) NOT NULL,
  `link` varchar(255) NOT NULL,
  `category` int(11) NOT NULL DEFAULT '0',
  `menu` int(11) NOT NULL DEFAULT '0',
  `post` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `olala3w_link`
--

INSERT INTO `olala3w_link` (`link_id`, `link`, `category`, `menu`, `post`, `modified_time`) VALUES
(2, 'slider', 91, 0, 0, 0),
(345, 'lien-he', 0, 0, 0, 0),
(409, 'admin', 0, 0, 0, 0),
(433, 'home', 0, 0, 0, 0),
(435, 'gioi-thieu', 9, 0, 0, 1523627022),
(436, 'gioi-thieu-chung', 9, 473, 0, 1523626822),
(437, 'tin-tuc', 12, 0, 0, 1522857777),
(438, 'tin-tuc-m', 12, 474, 0, 1522857791),
(439, 'slider', 13, 0, 0, 1522857798),
(440, 'slider-banner', 13, 94, 0, 1522857804),
(441, 'hinh-anh', 11, 0, 0, 1523806661),
(442, 'images', 11, 95, 0, 1523849476),
(443, 'dac-biet', 10, 253, 0, 1522857882),
(444, 'an-sang', 10, 254, 0, 1522857899),
(445, 'an-trua', 10, 255, 0, 1522859125),
(446, 'an-toi', 10, 256, 0, 1522859136),
(447, 'do-uong', 10, 257, 0, 1522859146),
(448, '1', 13, 94, 669, 1523632584),
(449, '2', 13, 94, 670, 1523632674),
(450, 'mi-xao-thit', 10, 253, 659, 1523027073),
(451, 'mi-thit-heo-quay', 10, 254, 660, 1523027130),
(452, 'thuc-don', 74, 0, 0, 1523781256),
(453, 'an-sang-j8017uvysz', 74, 254, 0, 1523781702),
(454, 'thuc-an-ngon', 14, 475, 0, 1523034499),
(455, 'dich-vu-chuyen-nghiep', 14, 476, 0, 1523034521),
(456, 'thuc-don-nha-hang', 14, 477, 0, 1523034552),
(457, 'an-trua-61puk4zqln', 74, 255, 0, 1523781708),
(458, 'com-chien-bo-cau', 74, 255, 662, 1523082702),
(459, 'an-toi-em1bbyjy82', 74, 256, 0, 1523781713),
(460, 'chao-ga', 74, 254, 664, 1523097262),
(463, 've-chung-toi', 9, 473, 950, 1523636518),
(464, 'our-team', 91, 96, 0, 1523636659),
(465, 'steven-austin', 91, 96, 673, 1523638330),
(466, 'david-flynn', 91, 96, 674, 1523638378),
(467, 'solomon-rice', 91, 96, 675, 1523638410),
(468, 'ado-moris', 91, 96, 676, 1523638443),
(469, 'service', 15, 0, 0, 1523678653),
(470, 'dich-vu', 15, 478, 0, 1523677793),
(471, 'fast-service', 15, 478, 951, 1523679173),
(472, 'experienced-chef', 15, 478, 952, 1523679154),
(473, 'online-reservation', 15, 478, 953, 1523679165),
(474, '100-fresh-food', 15, 478, 954, 1523679144),
(475, 'thit-nuong-xa-tron-bun', 74, 255, 665, 1523766126),
(476, 'lon-quay-dac-biet', 74, 255, 666, 1525055821),
(477, 'set-lau-hai-san-cho-2-nguoi', 74, 255, 667, 1524007908),
(478, 'thit-bo-than-hao-hang', 74, 255, 668, 1523766431),
(479, 'muc-hap-nuoc-dua', 74, 256, 669, 1523766643),
(480, 'tom-hap-nuoc-dua', 74, 256, 670, 1523766708),
(481, 'cua-hap-bia-gion-tuoi', 74, 256, 671, 1524930247),
(482, 'do-uong-hatg10hedn', 74, 257, 0, 1523781717),
(483, 'peepsi-light', 74, 257, 673, 1523778215),
(484, 'lavie', 74, 257, 674, 1523778321),
(486, 'ngon-ngon-quan', 11, 95, 678, 1524008695),
(487, 'transitions-in-ux-design', 12, 474, 955, 1524988391),
(488, 'inspired-by-italian-style', 12, 474, 956, 1524988381),
(489, 'best-productivity-secrets', 12, 474, 957, 1524988355),
(490, 'madrids-photographer-maraton', 12, 474, 958, 1524988376),
(491, 'mi-xao-thit-m', 74, 254, 659, 1524992112),
(492, 'mi-thit-heo-quay-m', 74, 254, 660, 1524992126),
(493, 'booking', 0, 0, 0, 0),
(494, 'com-chien-ca-man', 74, 255, 661, 1525053915),
(495, 'search', 0, 0, 0, 0),
(496, 'hinh-anh-nha-hang', 11, 95, 679, 1525061039),
(497, 'mon-an-dac-biet', 11, 95, 680, 1525061092);

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_location`
--

CREATE TABLE `olala3w_location` (
  `location_id` int(11) NOT NULL,
  `location_menu_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_location_menu`
--

CREATE TABLE `olala3w_location_menu` (
  `location_menu_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '1',
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `img` varchar(255) DEFAULT 'no',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_online`
--

CREATE TABLE `olala3w_online` (
  `online_id` bigint(20) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `created_time` int(11) NOT NULL DEFAULT '0',
  `site` varchar(255) NOT NULL,
  `agent` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `olala3w_online`
--

INSERT INTO `olala3w_online` (`online_id`, `ip`, `created_time`, `site`, `agent`, `user_id`) VALUES
(9, '127.0.0.1', 1525078631, '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 0);

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_online_daily`
--

CREATE TABLE `olala3w_online_daily` (
  `online_daily_id` bigint(20) NOT NULL,
  `date` date NOT NULL,
  `count` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `olala3w_online_daily`
--

INSERT INTO `olala3w_online_daily` (`online_daily_id`, `date`, `count`) VALUES
(1, '2014-08-18', 3),
(2, '2014-08-17', 1),
(3, '2014-08-14', 102),
(4, '2014-08-06', 100),
(5, '2014-08-16', 3),
(6, '2014-08-13', 10),
(7, '2014-08-11', 40),
(8, '2014-08-09', 90),
(9, '2014-08-15', 82),
(10, '2014-08-12', 207),
(11, '2014-08-10', 10),
(12, '2014-08-08', 7),
(13, '2014-08-07', 13),
(14, '2014-08-19', 13),
(15, '2014-08-20', 9),
(16, '2014-08-21', 135),
(17, '2014-08-22', 5),
(18, '2014-09-27', 7),
(19, '2014-09-28', 16),
(20, '2014-09-29', 5),
(21, '2014-09-30', 14),
(22, '2014-10-01', 16),
(23, '2014-10-02', 12),
(24, '2014-10-03', 7),
(25, '2014-10-04', 1),
(26, '2014-10-05', 2),
(27, '2014-10-07', 4),
(28, '2014-10-08', 11),
(29, '2014-10-14', 1),
(30, '2014-10-20', 1),
(31, '2014-10-26', 4),
(32, '2014-10-27', 9),
(33, '2014-10-28', 11),
(34, '2014-10-29', 13),
(35, '2014-10-30', 10),
(36, '2014-10-31', 14),
(37, '2014-11-01', 8),
(38, '2014-11-02', 12),
(39, '2014-11-03', 2),
(40, '2014-11-05', 4),
(41, '2014-11-06', 2),
(42, '2014-11-07', 4),
(43, '2014-11-08', 1),
(44, '2014-11-09', 1),
(45, '2014-11-10', 11),
(46, '2014-11-11', 8),
(47, '2014-11-12', 3),
(48, '2014-11-13', 5),
(49, '2014-11-14', 6),
(50, '2014-11-15', 1),
(51, '2014-11-16', 1),
(52, '2014-11-17', 4),
(53, '2014-11-18', 1),
(54, '2014-11-19', 4),
(55, '2014-11-20', 1),
(56, '2014-11-21', 4),
(57, '2014-11-22', 1),
(58, '2014-11-23', 16),
(59, '2014-11-24', 1),
(60, '2014-11-25', 5),
(61, '2014-11-27', 15),
(62, '2014-11-28', 18),
(63, '2014-11-29', 10),
(64, '2014-11-30', 10),
(65, '2014-12-01', 6),
(66, '2014-12-02', 13),
(67, '2014-12-03', 9),
(68, '2014-12-04', 9),
(69, '2014-12-05', 7),
(70, '2014-12-06', 1),
(71, '2014-12-08', 5),
(72, '2014-12-09', 2),
(73, '2014-12-10', 5),
(74, '2014-12-11', 13),
(75, '2014-12-12', 4),
(76, '2014-12-16', 2),
(77, '2014-12-20', 11),
(78, '2014-12-21', 6),
(79, '2014-12-22', 5),
(80, '2014-12-23', 3),
(81, '2014-12-24', 1),
(82, '2014-12-26', 2),
(83, '2014-12-27', 10),
(84, '0000-00-00', 1),
(85, '2014-12-28', 15),
(86, '2014-12-29', 11),
(87, '2014-12-30', 1),
(88, '2015-01-02', 11),
(89, '2015-01-03', 4),
(90, '2015-01-04', 2),
(91, '2015-01-05', 9),
(92, '2015-01-06', 7),
(93, '2015-01-07', 1),
(94, '2015-01-08', 7),
(95, '2015-01-09', 13),
(96, '2015-01-10', 2),
(97, '2015-01-12', 1),
(98, '2015-01-19', 2),
(99, '2015-01-20', 12),
(100, '2015-01-21', 8),
(101, '2015-01-22', 43),
(102, '2015-01-23', 36),
(103, '2015-01-24', 34),
(104, '2015-01-24', 34),
(105, '2015-01-25', 46),
(106, '2015-01-26', 51),
(107, '2015-01-27', 53),
(108, '2015-01-28', 46),
(109, '2015-01-29', 471),
(110, '2015-01-30', 191),
(111, '2015-01-31', 106),
(112, '2015-02-01', 61),
(113, '2015-02-02', 37),
(114, '2015-02-03', 53),
(115, '2015-02-04', 66),
(116, '2015-02-05', 63),
(117, '2015-02-06', 86),
(118, '2015-02-07', 63),
(119, '2015-02-08', 68),
(120, '2015-02-09', 64),
(121, '2015-02-10', 46),
(122, '2015-02-11', 53),
(123, '2015-02-12', 28),
(124, '2015-02-13', 155),
(125, '2015-02-14', 43),
(126, '2015-02-15', 27),
(127, '2015-02-16', 22),
(128, '2015-02-17', 20),
(129, '2015-02-18', 19),
(130, '2015-02-19', 16),
(131, '2015-02-20', 18),
(132, '2015-02-21', 33),
(133, '2015-02-22', 31),
(134, '2015-02-23', 34),
(135, '2015-02-24', 22),
(136, '2015-02-25', 26),
(137, '2015-02-26', 34),
(138, '2015-02-27', 19),
(139, '2015-02-28', 5),
(140, '2015-03-01', 12),
(141, '2015-03-02', 24),
(142, '2015-03-03', 48),
(143, '2015-03-04', 49),
(144, '2015-03-05', 43),
(145, '2015-03-06', 33),
(146, '2015-03-07', 52),
(147, '2015-03-08', 26),
(148, '2015-03-09', 46),
(149, '2015-03-10', 37),
(150, '2015-03-11', 47),
(151, '2015-03-12', 33),
(152, '2015-03-13', 28),
(153, '2015-03-14', 2),
(154, '2015-03-16', 5),
(155, '2015-03-17', 18),
(156, '2015-03-18', 11),
(157, '2015-03-19', 21),
(158, '2015-03-20', 18),
(159, '2015-03-21', 3),
(160, '2015-05-06', 5),
(161, '2015-05-07', 4),
(162, '2015-05-08', 3),
(163, '2015-05-09', 2),
(164, '2015-05-10', 8),
(165, '2015-05-11', 3),
(166, '2015-05-12', 4),
(167, '2015-05-15', 1),
(168, '2015-05-16', 2),
(169, '2015-05-17', 2),
(170, '2015-05-18', 1),
(171, '2015-05-19', 3),
(172, '2015-05-23', 1),
(173, '2015-05-24', 1),
(174, '2015-05-25', 2),
(175, '2015-05-26', 2),
(176, '2015-05-27', 4),
(177, '2015-05-28', 4),
(178, '2015-05-29', 3),
(179, '2015-05-31', 3),
(180, '2015-06-01', 1),
(181, '2015-06-02', 2),
(182, '2015-06-03', 3),
(183, '2015-06-04', 3),
(184, '2015-06-05', 1),
(185, '2015-06-06', 1),
(186, '2015-06-08', 1),
(187, '2015-06-09', 2),
(188, '2015-06-10', 1),
(189, '2015-06-11', 2),
(190, '2015-06-12', 3),
(191, '2015-06-13', 2),
(192, '2015-06-14', 1),
(193, '2015-06-15', 4),
(194, '2015-06-16', 1),
(195, '2015-06-17', 1),
(196, '2015-06-18', 1),
(197, '2015-06-21', 1),
(198, '2015-06-22', 3),
(199, '2015-06-23', 1),
(200, '2015-06-24', 8),
(201, '2015-06-28', 1),
(202, '2015-06-29', 3),
(203, '2015-06-30', 4),
(204, '2015-07-01', 4),
(205, '2015-07-02', 3),
(206, '2015-07-03', 3),
(207, '2015-07-06', 1),
(208, '2015-07-07', 1),
(209, '2015-07-12', 4),
(210, '2015-07-13', 6),
(211, '2015-07-14', 29),
(212, '2015-07-15', 190),
(213, '2015-07-16', 361),
(214, '2015-07-17', 354),
(215, '2015-07-18', 238),
(216, '2015-07-19', 343),
(217, '2015-07-20', 802),
(218, '2015-07-21', 1926),
(219, '2015-07-22', 1349),
(220, '2015-07-23', 1648),
(221, '2015-07-24', 2370),
(222, '2015-07-25', 4986),
(223, '2015-07-26', 2251),
(224, '2015-07-27', 3882),
(225, '2015-07-28', 3496),
(226, '2015-07-29', 3603),
(227, '2015-07-30', 2778),
(228, '2015-07-31', 5),
(229, '2015-08-01', 2),
(230, '2015-08-02', 3),
(231, '2015-08-03', 2),
(232, '2015-08-05', 5),
(233, '2015-08-06', 1),
(234, '2015-08-07', 5),
(235, '2015-08-08', 8),
(236, '2015-08-09', 7),
(237, '2015-08-10', 6),
(238, '2015-08-11', 1),
(239, '2015-08-12', 2),
(240, '2015-08-13', 3),
(241, '2015-08-14', 1),
(242, '2015-08-16', 2),
(243, '2015-08-17', 2),
(244, '2015-08-18', 1),
(245, '2015-08-28', 2),
(246, '2015-08-29', 1),
(247, '2015-08-30', 1),
(248, '2015-08-31', 3),
(249, '2015-09-01', 1),
(250, '2015-09-04', 1),
(251, '2015-09-05', 1),
(252, '2015-09-06', 1),
(253, '2015-09-07', 1),
(254, '2015-09-08', 1),
(255, '2015-09-09', 3),
(256, '2015-09-10', 3),
(257, '2015-09-11', 2),
(258, '2015-09-17', 1),
(259, '2015-09-27', 3),
(260, '2015-09-28', 2),
(261, '2015-10-19', 1),
(262, '2015-10-20', 4),
(263, '2015-10-21', 1),
(264, '2015-10-24', 1),
(265, '2015-10-25', 5),
(266, '2015-10-26', 22),
(267, '2015-10-27', 36),
(268, '2015-11-10', 1),
(269, '2015-11-11', 3),
(270, '2015-11-12', 22),
(271, '2015-11-13', 45),
(272, '2015-11-14', 9),
(273, '2015-11-15', 27),
(274, '2015-11-16', 36),
(275, '2015-11-17', 24),
(276, '2015-11-18', 10),
(277, '2015-11-19', 14),
(278, '2015-11-20', 7),
(279, '2015-11-21', 5),
(280, '2015-11-22', 1),
(281, '2015-11-23', 12),
(282, '2015-11-24', 5),
(283, '2015-11-27', 1),
(284, '2015-11-28', 2),
(285, '2015-11-29', 1),
(286, '2015-11-30', 4),
(287, '2015-12-01', 38),
(288, '2015-12-02', 34),
(289, '2015-12-03', 41),
(290, '2015-12-04', 34),
(291, '2015-12-09', 1),
(292, '2015-12-19', 1),
(293, '2015-12-20', 2),
(294, '2015-12-21', 7),
(295, '2015-12-22', 5),
(296, '2015-12-23', 52),
(297, '2015-12-24', 37),
(298, '2015-12-25', 39),
(299, '2015-12-26', 13),
(300, '2015-12-27', 2),
(301, '2015-12-28', 18),
(302, '2015-12-29', 9),
(303, '2015-12-30', 16),
(304, '2015-12-31', 6),
(305, '2016-01-07', 3),
(306, '2016-01-08', 3),
(307, '2016-01-09', 7),
(308, '2016-01-10', 1),
(309, '2016-01-12', 7),
(310, '2016-01-13', 4),
(311, '2016-01-14', 4),
(312, '2016-01-15', 14),
(313, '2016-01-16', 66),
(314, '2016-01-17', 45),
(315, '2016-01-18', 31),
(316, '2016-01-19', 7),
(317, '2016-01-20', 12),
(318, '2016-01-21', 5),
(319, '2016-01-22', 7),
(320, '2016-01-23', 4),
(321, '2016-01-24', 1),
(322, '2016-01-25', 25),
(323, '2016-01-26', 1),
(324, '2016-01-27', 11),
(325, '2016-01-28', 40),
(326, '2016-01-29', 35),
(327, '2016-01-30', 6),
(328, '2016-02-01', 14),
(329, '2016-02-02', 40),
(330, '2016-02-03', 163),
(331, '2016-02-04', 81),
(332, '2016-02-05', 63),
(333, '2016-02-06', 52),
(334, '2016-02-07', 38),
(335, '2016-02-08', 35),
(336, '2016-02-09', 48),
(337, '2016-02-10', 39),
(338, '2016-02-11', 34),
(339, '2016-02-12', 74),
(340, '2016-02-13', 56),
(341, '2016-02-14', 60),
(342, '2016-02-15', 104),
(343, '2016-02-16', 59),
(344, '2016-02-17', 58),
(345, '2016-02-18', 43),
(346, '2016-02-19', 2),
(347, '2016-02-20', 2),
(348, '2016-02-22', 3),
(349, '2016-03-01', 1),
(350, '2016-03-04', 3),
(351, '2016-03-04', 3),
(352, '2016-03-07', 1),
(353, '2016-03-08', 1),
(354, '2016-03-09', 14),
(355, '2016-03-10', 5),
(356, '2016-03-11', 6),
(357, '2016-03-13', 2),
(358, '2016-03-14', 1),
(359, '2016-03-20', 1),
(360, '2016-03-26', 8),
(361, '2016-03-27', 8),
(362, '2016-03-28', 46),
(363, '2016-03-29', 1),
(364, '2016-03-30', 11),
(365, '2016-03-31', 2),
(366, '2016-04-02', 1),
(367, '2016-04-03', 5),
(368, '2016-04-04', 10),
(369, '2016-04-05', 31),
(370, '2016-04-06', 65),
(371, '2016-04-07', 35),
(372, '2016-04-08', 15),
(373, '2016-04-09', 1),
(374, '2016-04-20', 2),
(375, '2016-04-22', 2),
(376, '2016-04-23', 7),
(377, '2016-04-24', 8),
(378, '2016-04-25', 1),
(379, '2016-04-26', 2),
(380, '2016-04-27', 4),
(381, '2016-04-28', 3),
(382, '2016-05-05', 1),
(383, '2016-05-08', 9),
(384, '2016-05-09', 3),
(385, '2016-05-10', 2),
(386, '2016-05-11', 5),
(387, '2016-05-12', 6),
(388, '2016-05-13', 11),
(389, '2016-05-15', 3),
(390, '2016-05-16', 8),
(391, '2016-05-17', 7),
(392, '2016-05-19', 3),
(393, '2016-05-19', 3),
(394, '2016-05-20', 2),
(395, '2016-05-22', 5),
(396, '2016-05-23', 1),
(397, '2016-05-24', 1),
(398, '2016-05-30', 5),
(399, '2016-06-16', 1),
(400, '2016-06-24', 5),
(401, '2016-06-25', 12),
(402, '2016-06-26', 5),
(403, '2016-08-08', 6),
(404, '2016-08-09', 4),
(405, '2016-08-10', 5),
(406, '2016-08-11', 2),
(407, '2016-08-12', 6),
(408, '2016-08-14', 1),
(409, '2016-08-16', 12),
(410, '2016-08-17', 39),
(411, '2016-08-18', 157),
(412, '2016-08-19', 196),
(413, '2016-08-20', 227),
(414, '2016-08-21', 190),
(415, '2016-08-22', 545),
(416, '2016-08-23', 367),
(417, '2016-08-24', 369),
(418, '2016-08-25', 418),
(419, '2016-08-26', 512),
(420, '2016-08-27', 614),
(421, '2016-08-28', 631),
(422, '2016-08-29', 728),
(423, '2016-08-30', 579),
(424, '2016-08-31', 333),
(425, '2016-09-01', 219),
(426, '2016-09-02', 108),
(427, '2016-09-03', 157),
(428, '2016-09-04', 156),
(429, '2016-09-05', 662),
(430, '2016-09-06', 744),
(431, '2016-09-07', 504),
(432, '2016-09-08', 571),
(433, '2016-09-09', 516),
(434, '2016-09-10', 484),
(435, '2016-09-11', 384),
(436, '2016-09-12', 332),
(437, '2016-09-13', 371),
(438, '2016-09-14', 338),
(439, '2016-09-15', 366),
(440, '2016-09-16', 536),
(441, '2016-09-17', 345),
(442, '2016-09-18', 363),
(443, '2016-09-19', 354),
(444, '2016-09-20', 359),
(445, '2016-09-21', 471),
(446, '2016-09-22', 405),
(447, '2016-09-23', 460),
(448, '2016-09-24', 461),
(449, '2016-09-25', 426),
(450, '2016-09-26', 432),
(451, '2016-09-27', 447),
(452, '2016-09-28', 324),
(453, '2016-09-29', 167),
(454, '2016-09-30', 265),
(455, '2016-10-01', 334),
(456, '2016-10-02', 272),
(457, '2016-10-03', 217),
(458, '2016-10-04', 214),
(459, '2016-10-05', 367),
(460, '2016-10-06', 462),
(461, '2016-10-07', 394),
(462, '2016-10-08', 321),
(463, '2016-10-09', 247),
(464, '2016-10-10', 268),
(465, '2016-10-11', 348),
(466, '2016-10-12', 471),
(467, '2016-10-13', 451),
(468, '2016-10-14', 502),
(469, '2016-10-15', 300),
(470, '2016-10-16', 228),
(471, '2016-10-17', 234),
(472, '2016-10-18', 272),
(473, '2016-10-19', 276),
(474, '2016-10-20', 366),
(475, '2016-10-21', 205),
(476, '2016-10-22', 228),
(477, '2016-10-23', 304),
(478, '2016-10-24', 286),
(479, '2016-10-25', 383),
(480, '2016-10-26', 338),
(481, '2016-10-27', 249),
(482, '2016-10-28', 295),
(483, '2016-10-29', 542),
(484, '2016-10-30', 468),
(485, '2016-10-31', 473),
(486, '2016-11-01', 300),
(487, '2016-11-02', 263),
(488, '2016-11-03', 369),
(489, '2016-11-04', 320),
(490, '2016-11-05', 202),
(491, '2016-11-06', 216),
(492, '2016-11-07', 243),
(493, '2016-11-08', 228),
(494, '2016-11-09', 200),
(495, '2016-11-10', 335),
(496, '2016-11-11', 189),
(497, '2016-11-12', 199),
(498, '2016-11-13', 476),
(499, '2016-11-14', 748),
(500, '2016-11-15', 384),
(501, '2016-11-16', 535),
(502, '2016-11-17', 669),
(503, '2016-11-18', 714),
(504, '2016-11-19', 778),
(505, '2016-11-20', 472),
(506, '2016-11-21', 339),
(507, '2016-11-22', 489),
(508, '2016-11-23', 283),
(509, '2016-11-24', 246),
(510, '2016-11-25', 276),
(511, '2016-11-26', 288),
(512, '2016-11-27', 268),
(513, '2016-11-28', 504),
(514, '2016-11-29', 478),
(515, '2016-11-30', 694),
(516, '2016-12-01', 524),
(517, '2016-12-02', 456),
(518, '2016-12-03', 450),
(519, '2016-12-04', 248),
(520, '2016-12-05', 99),
(521, '2016-12-06', 406),
(522, '2016-12-07', 508),
(523, '2016-12-08', 343),
(524, '2016-12-09', 452),
(525, '2016-12-10', 356),
(526, '2016-12-11', 415),
(527, '2016-12-12', 405),
(528, '2016-12-13', 260),
(529, '2016-12-14', 328),
(530, '2016-12-15', 697),
(531, '2016-12-16', 506),
(532, '2016-12-17', 388),
(533, '2016-12-18', 289),
(534, '2016-12-19', 312),
(535, '2016-12-20', 345),
(536, '2016-12-21', 349),
(537, '2016-12-22', 228),
(538, '2016-12-23', 374),
(539, '2016-12-24', 270),
(540, '2016-12-25', 201),
(541, '2016-12-26', 163),
(542, '2016-12-27', 178),
(543, '2016-12-28', 204),
(544, '2016-12-29', 244),
(545, '2016-12-30', 291),
(546, '2016-12-31', 535),
(547, '2017-01-01', 432),
(548, '2017-01-02', 383),
(549, '2017-01-03', 456),
(550, '2017-01-04', 324),
(551, '2017-01-05', 269),
(552, '2017-01-06', 117),
(553, '2017-01-07', 211),
(554, '2017-01-08', 282),
(555, '2017-01-09', 259),
(556, '2017-01-10', 270),
(557, '2017-01-11', 287),
(558, '2017-01-12', 287),
(559, '2017-01-13', 310),
(560, '2017-01-14', 96),
(561, '2017-01-15', 138),
(562, '2017-01-16', 173),
(563, '2017-01-17', 120),
(564, '2017-01-18', 206),
(565, '2017-01-19', 179),
(566, '2017-01-20', 136),
(567, '2017-01-21', 152),
(568, '2017-01-22', 257),
(569, '2017-01-23', 206),
(570, '2017-01-24', 226),
(571, '2017-01-25', 291),
(572, '2017-01-26', 154),
(573, '2017-01-27', 64),
(574, '2017-01-28', 118),
(575, '2017-01-29', 61),
(576, '2017-01-30', 89),
(577, '2017-01-31', 121),
(578, '2017-02-01', 98),
(579, '2017-02-02', 229),
(580, '2017-02-03', 310),
(581, '2017-02-04', 219),
(582, '2017-02-05', 254),
(583, '2017-02-06', 348),
(584, '2017-02-07', 279),
(585, '2017-02-08', 249),
(586, '2017-02-09', 215),
(587, '2017-02-10', 155),
(588, '2017-02-11', 140),
(589, '2017-02-12', 120),
(590, '2017-02-13', 154),
(591, '2017-02-14', 327),
(592, '2017-02-15', 314),
(593, '2017-02-16', 292),
(594, '2017-02-17', 183),
(595, '2017-02-18', 276),
(596, '2017-02-19', 211),
(597, '2017-02-20', 247),
(598, '2017-02-21', 141),
(599, '2017-02-22', 138),
(600, '2017-02-23', 166),
(601, '2017-02-24', 100),
(602, '2017-02-25', 175),
(603, '2017-02-26', 163),
(604, '2017-02-27', 6),
(605, '2017-02-28', 1),
(606, '2017-03-01', 3),
(607, '2017-03-05', 6),
(608, '2017-03-06', 1),
(609, '2017-03-07', 4),
(610, '2017-03-08', 97),
(611, '2017-03-09', 6),
(612, '2017-03-10', 1),
(613, '2017-03-11', 1),
(614, '2017-03-11', 1),
(615, '2017-03-13', 2),
(616, '2017-03-14', 2),
(617, '2017-03-15', 3),
(618, '2017-03-20', 3),
(619, '2017-03-21', 2),
(620, '2017-04-16', 1),
(621, '2017-04-17', 5),
(622, '2017-04-21', 3),
(623, '2017-04-22', 1),
(624, '2017-04-26', 1),
(625, '2017-04-28', 6),
(626, '2017-04-29', 3),
(627, '2017-05-03', 4),
(628, '2017-05-04', 2),
(629, '2017-05-05', 7),
(630, '2017-05-07', 9),
(631, '2017-05-08', 1),
(632, '2017-05-09', 6),
(633, '2017-05-10', 6),
(634, '2017-05-12', 1),
(635, '2017-05-16', 2),
(636, '2017-05-17', 11),
(637, '2017-05-18', 30),
(638, '2017-05-19', 10),
(639, '2017-05-20', 8),
(640, '2017-05-21', 20),
(641, '2017-05-22', 3),
(642, '2017-05-23', 3),
(0, '2017-05-27', 3),
(643, '2017-05-28', 2),
(644, '2017-05-29', 6),
(645, '2017-05-30', 2),
(646, '2017-06-02', 3),
(647, '2017-06-03', 4),
(648, '2017-06-05', 1),
(649, '2017-06-06', 3),
(650, '2017-06-07', 26),
(651, '2017-06-08', 20),
(652, '2017-06-09', 31),
(653, '2017-06-10', 9),
(654, '2017-06-11', 2),
(655, '2017-06-12', 14),
(656, '2017-06-13', 9),
(657, '2017-06-14', 13),
(658, '2017-06-15', 13),
(659, '2017-06-16', 28),
(660, '2017-06-17', 7),
(661, '2017-06-19', 16),
(662, '2017-06-20', 20),
(663, '2017-06-21', 12),
(664, '2017-06-22', 5),
(665, '2017-06-29', 1),
(666, '2018-04-04', 3),
(667, '2018-04-05', 4),
(668, '2018-04-06', 9),
(669, '2018-04-07', 6),
(670, '2018-04-08', 6),
(671, '2018-04-09', 2),
(672, '2018-04-11', 1),
(673, '2018-04-12', 2),
(674, '2018-04-13', 8),
(675, '2018-04-14', 11),
(676, '2018-04-15', 6),
(677, '2018-04-16', 3),
(678, '2018-04-18', 1),
(679, '2018-04-23', 3),
(680, '2018-04-24', 1),
(681, '2018-04-28', 2),
(682, '2018-04-29', 5),
(683, '2018-04-30', 2);

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_order`
--

CREATE TABLE `olala3w_order` (
  `order_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `content` text CHARACTER SET utf8mb4 NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `ip` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL DEFAULT 'fa-shopping-cart',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `olala3w_order`
--

INSERT INTO `olala3w_order` (`order_id`, `name`, `phone`, `email`, `content`, `is_active`, `ip`, `icon`, `created_time`, `modified_time`) VALUES
(1, 'Thịnh', '1656799559', 'thinh.coi.555@gmail.com', '<div marginwidth="0" marginheight="0" style="font-family:Arial,serif;"><table width="100%" border="0" cellpadding="0" cellspacing="0" align="center" style="table-layout:fixed;"><tbody><tr><td width="100%" valign="top" bgcolor="#f5f5f5" style="border-top:3px solid #ff641f;padding:0;"><table border="0" cellpadding="0" cellspacing="0" align="center" style="margin:0 auto;width:100%;"><tbody><tr><td bgcolor="white" style="padding:10px 0; text-align: center;"><a href="http://ola.ol_temp.com" target="_blank"><img src="http://ola.ol_temp.com/uploads/files/logo-ngonngon.png" style="max-height:70px;max-width:80%;" alt="Ngon Ngon" border="0"></a></td></tr></tbody></table><div style="min-height:35px">&nbsp;</div><table border="0" cellpadding="0" cellspacing="0" align="center" style="min-width:290px;margin:0 auto;font-size:13px;color:#666666;font-weight:normal;text-align:left;font-family:Arial,serif;line-height:18px;" width="620"><tbody><tr><td style="border-left:6px solid #ff641f;font-size:13px;color:#666666;font-weight:normal;text-align:left;font-family:Arial,serif;line-height:18px;vertical-align:top;padding:15px 8px 25px 20px;" bgcolor="#fdfdfd"><p style="margin: 10px 0">Chào <b> Thịnh</b>,</p><p style="margin: 10px 0">Xin chân thành cảm ơn Quý khách đã quan tâm và sử dụng dịch vụ của chúng tôi!<br>Yêu cầu của Quý khách đã gửi thành công. Chúng tôi sẽ phản hồi lại trong vòng 24h tới.</p><p style="margin: 10px 0"><b style="text-decoration:underline;">THÔNG TIN ĐẶT BÀN CỦA QUÝ KHÁCH:</b><br/><label style="font-weight:600;padding-left:12px;">Họ và tên: </label> Thịnh<br/><label style="font-weight:600;padding-left:12px;">Email: </label> thinh.coi.555@gmail.com<br/><label style="font-weight:600;padding-left:12px;">Điện thoại: </label> 1656799559<br/><label style="font-weight:600;padding-left:12px;">Ngày đến: </label> 345<br/><label style="font-weight:600;padding-left:12px;">Số người: </label> 2<br/><label style="font-weight:600;padding-left:12px;">Ngày đặt: </label> 30/04/2018 05:56<br/><label style="font-weight:600;padding-left:12px;">IP truy cập: </label> 127.0.0.1<br/></p><p style="margin: 10px 0">Đây là hộp thư tự động. Sau thời gian trên nếu quý khách chưa nhân được phản hồi từ nhân viên của chúng tôi, rất có thể đã gặp sự cố nhỏ nào đó vì vậy Quý khách có thể liên hệ trực tiếp chúng tôi để nhận được những thông tin nhanh nhất.</p><p style="margin: 10px 0">Chân thành cảm ơn!</p></td></tr></tbody></table><div style="min-height:35px">&nbsp;</div><table width="100%" border="0" cellpadding="0" cellspacing="0" align="center"><tbody><tr><td bgcolor="#e1e1e1" style="padding:15px 10px 25px"><table border="0" cellpadding="0" cellspacing="0" align="center" style="margin:0 auto;min-width:290px;" width="620"><tbody><tr><td><table width="80%" cellpadding="0" cellspacing="0" border="0" align="left"><tbody><tr><td valign="top" style="font-size:12px;color:#5e5e5e;font-family:Arial,serif;line-height:15px;">Ngon Ngon</td></tr></tbody></table><table width="20%" cellpadding="0" cellspacing="0" border="0"><tbody><tr><td style="font-size:13px;color:#5e5e5e;font-family:Arial,serif;line-height:1;vertical-align:top;text-align:right;font-style:italic;"><span>Follow us on</span><br><a href="https://www.facebook.com" target="_blank"><img src="https://ci5.googleusercontent.com/proxy/PMSfAkbhhMLEe-tDCLFilReG-hlq_DWsTblTQ2qp8Dsq9KFW1UyFcKTr_uwU3EqyR8AhiFIooeExoAw9Oe3G5c6hvIEoOnU=s0-d-e1-ft#https://www.livecoding.tv/static/img/email/fb.png" width="27" height="27" alt="Facebook logo" title="Facebook" border="0" style="padding:3px;"></a>&nbsp;<a href="https://twitter.com" target="_blank"><img src="https://ci3.googleusercontent.com/proxy/GNHxgrYKL99Apyic0XnGYk6IqVZAc-wFuhgCDxzBYMr80NGggmI1nRORIBVRIkPkJHbQHGGMrTFtbzTDoxk5dc0i_H0HOc0=s0-d-e1-ft#https://www.livecoding.tv/static/img/email/tw.png" width="27" height="27" alt="Twitter logo" title="Twitter" border="0" style="padding:3px;"></a></td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table></div>', 0, '127.0.0.1', 'fa-briefcase', 1525042604, 1525043496),
(2, 'Thịnh coi', '0176745345', 'thinh.coi.555@gmail.com', '', 0, '127.0.0.1', 'fa-briefcase', 1525043169, 1525043398),
(3, 'Thịnh Test', '0176745345', 'thinh.coi.555@gmail.com', '', 0, '127.0.0.1', 'fa-briefcase', 1525043476, 1525043489),
(4, 'Kiểm thử', '01656799559', 'thinh.coi.555@gmail.com', '', 0, '127.0.0.1', 'fa-building', 1525044023, 1525044034),
(5, 'Olala', '01656799559', 'thinh.coi.555@gmail.com', '<div marginwidth="0" marginheight="0" style="font-family:Arial,serif;"><table width="100%" border="0" cellpadding="0" cellspacing="0" align="center" style="table-layout:fixed;"><tbody><tr><td width="100%" valign="top" bgcolor="#f5f5f5" style="border-top:3px solid #ff641f;padding:0;"><table border="0" cellpadding="0" cellspacing="0" align="center" style="margin:0 auto;width:100%;"><tbody><tr><td bgcolor="white" style="padding:10px 0; text-align: center;"><a href="http://ola.ol_temp.com" target="_blank"><img src="http://ola.ol_temp.com/uploads/files/logo-ngonngon.png" style="max-height:70px;max-width:80%;" alt="Ngon Ngon" border="0"></a></td></tr></tbody></table><div style="min-height:35px">&nbsp;</div><table border="0" cellpadding="0" cellspacing="0" align="center" style="min-width:290px;margin:0 auto;font-size:13px;color:#666666;font-weight:normal;text-align:left;font-family:Arial,serif;line-height:18px;" width="620"><tbody><tr><td style="border-left:6px solid #ff641f;font-size:13px;color:#666666;font-weight:normal;text-align:left;font-family:Arial,serif;line-height:18px;vertical-align:top;padding:15px 8px 25px 20px;" bgcolor="#fdfdfd"><p style="margin: 10px 0">Chào <b> Olala</b>,</p><p style="margin: 10px 0">Xin chân thành cảm ơn Quý khách đã quan tâm và sử dụng dịch vụ của chúng tôi!<br>Yêu cầu của Quý khách đã gửi thành công. Chúng tôi sẽ phản hồi lại trong vòng 24h tới.</p><p style="margin: 10px 0"><b style="text-decoration:underline;">THÔNG TIN ĐẶT BÀN CỦA QUÝ KHÁCH:</b><br/><label style="font-weight:600;padding-left:12px;">Họ và tên: </label> Olala<br/><label style="font-weight:600;padding-left:12px;">Email: </label> thinh.coi.555@gmail.com<br/><label style="font-weight:600;padding-left:12px;">Điện thoại: </label> 01656799559<br/><label style="font-weight:600;padding-left:12px;">Số người: </label> 3<br/><label style="font-weight:600;padding-left:12px;">Ngày đến: </label> 09/2/2018<br/><label style="font-weight:600;padding-left:12px;">Thời gian: </label> Ăn trưa<br/><label style="font-weight:600;padding-left:12px;">Ngày đặt: </label> 30/04/2018 07:05<br/><label style="font-weight:600;padding-left:12px;">IP truy cập: </label> 127.0.0.1<br/></p><p style="margin: 10px 0">Đây là hộp thư tự động. Sau thời gian trên nếu quý khách chưa nhân được phản hồi từ nhân viên của chúng tôi, rất có thể đã gặp sự cố nhỏ nào đó vì vậy Quý khách có thể liên hệ trực tiếp chúng tôi để nhận được những thông tin nhanh nhất.</p><p style="margin: 10px 0">Chân thành cảm ơn!</p></td></tr></tbody></table><div style="min-height:35px">&nbsp;</div><table width="100%" border="0" cellpadding="0" cellspacing="0" align="center"><tbody><tr><td bgcolor="#e1e1e1" style="padding:15px 10px 25px"><table border="0" cellpadding="0" cellspacing="0" align="center" style="margin:0 auto;min-width:290px;" width="620"><tbody><tr><td><table width="80%" cellpadding="0" cellspacing="0" border="0" align="left"><tbody><tr><td valign="top" style="font-size:12px;color:#5e5e5e;font-family:Arial,serif;line-height:15px;">Ngon Ngon</td></tr></tbody></table><table width="20%" cellpadding="0" cellspacing="0" border="0"><tbody><tr><td style="font-size:13px;color:#5e5e5e;font-family:Arial,serif;line-height:1;vertical-align:top;text-align:right;font-style:italic;"><span>Follow us on</span><br><a href="https://www.facebook.com" target="_blank"><img src="https://ci5.googleusercontent.com/proxy/PMSfAkbhhMLEe-tDCLFilReG-hlq_DWsTblTQ2qp8Dsq9KFW1UyFcKTr_uwU3EqyR8AhiFIooeExoAw9Oe3G5c6hvIEoOnU=s0-d-e1-ft#https://www.livecoding.tv/static/img/email/fb.png" width="27" height="27" alt="Facebook logo" title="Facebook" border="0" style="padding:3px;"></a>&nbsp;<a href="https://twitter.com" target="_blank"><img src="https://ci3.googleusercontent.com/proxy/GNHxgrYKL99Apyic0XnGYk6IqVZAc-wFuhgCDxzBYMr80NGggmI1nRORIBVRIkPkJHbQHGGMrTFtbzTDoxk5dc0i_H0HOc0=s0-d-e1-ft#https://www.livecoding.tv/static/img/email/tw.png" width="27" height="27" alt="Twitter logo" title="Twitter" border="0" style="padding:3px;"></a></td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table></div>', 0, '127.0.0.1', 'fa-globe', 1525046723, 1525046736);

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_others`
--

CREATE TABLE `olala3w_others` (
  `others_id` int(11) NOT NULL,
  `others_menu_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `p_from` bigint(20) NOT NULL DEFAULT '0',
  `p_to` bigint(20) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '1',
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_others_menu`
--

CREATE TABLE `olala3w_others_menu` (
  `others_menu_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `plus` varchar(255) NOT NULL,
  `parent` int(11) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '1',
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_page`
--

CREATE TABLE `olala3w_page` (
  `page_id` int(11) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `comment` text CHARACTER SET utf8mb4 NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `views` bigint(20) NOT NULL DEFAULT '1',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `olala3w_page`
--

INSERT INTO `olala3w_page` (`page_id`, `alias`, `name`, `comment`, `content`, `is_active`, `views`, `modified_time`, `user_id`) VALUES
(27, 'copyright', 'Copyright', '', '<p><img alt="" src="/uploads/images/red-map.png" style="padding-right:10px;" />51 Francis Street, Darlinghurst NSW 2010, US</p>\r\n\r\n<p><img alt="" src="/uploads/images/red-tel.png" style="padding-right:10px;" /><a href="tel:+611900 654 368">+61 1900 654 368</a></p>\r\n\r\n<p><img alt="" src="/uploads/images/red-mail.png" style="padding-right:10px;" /><a href="mailto:office@educationplus.com">office@educationplus.com</a></p>\r\n', 1, 1, 1523157570, 25),
(100, 'contact_maps', 'Bản đồ trang liên hệ', '', '<p><iframe allowfullscreen="" frameborder="0" height="415" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3833.713723661704!2d108.21956131441821!3d16.080338688874107!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3142183b8dc2697d%3A0xc105565d68b6ad90!2zMTYgTMO9IFRoxrDhu51uZyBLaeG7h3QsIEjhuqNpIENow6J1LCDEkMOgIE7hurVuZywgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1496907656248" style="border:0" width="100%"></iframe></p>\r\n', 1, 1, 1524991982, 25),
(101, 'contact_page', 'Thông tin liên hệ', 'Với sự nhiệt tình, chu đáo và cách làm việc chuyên nghiệp, chúng tôi tin tưởng sẽ làm thoả mãn mọi nhu cầu của quý vị.', '<p><img alt="" src="/uploads/images/red-map.png" style="padding-right:7px;" />145 Lê Thanh Nghị, P. Hoà Cường Bắc, Q. Hải Châu, Đà Nẵng</p>\r\n\r\n<p><img alt="" src="/uploads/images/red-tel.png" style="padding-right:7px;" />Tel: 0236 730 4649 - Fax 0236 730 0510</p>\r\n\r\n<p><img alt="" src="/uploads/images/red-mail.png" style="padding-right:7px;" />nomaru@takizawa.ac.jp</p>\r\n', 1, 1, 1523807472, 25),
(108, 'time_book', 'Thời gian mở cửa', '', '<p><strong>Monday - Friday : <span style="color:#ed1f24;">5:30PM - 11:00PM</span> | Saturday - Sunday : <span style="color:#ed1f24;">4:30PM - 10:00PM</span></strong></p>\r\n', 1, 1, 1523117312, 25),
(109, 'business_hours', 'Giờ mở cửa', '', '<p>LUNCH:<br />\r\nMonday - Friday.......11:30AM - 2:00PM</p>\r\n\r\n<p><br />\r\nDINNER:<br />\r\nMonday - Friday .......5:30PM - 11:00PM<br />\r\nSaturday - Sunday.... 4:30PM - 10:00PM</p>\r\n', 1, 1, 1523175914, 25);

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_prjname`
--

CREATE TABLE `olala3w_prjname` (
  `prjname_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '1',
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_product`
--

CREATE TABLE `olala3w_product` (
  `product_id` int(11) NOT NULL,
  `product_menu_id` int(11) NOT NULL,
  `owner` int(1) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL DEFAULT 'no',
  `img_note` varchar(255) NOT NULL,
  `upload_id` bigint(20) NOT NULL DEFAULT '0',
  `sale` int(3) NOT NULL DEFAULT '0',
  `price` float NOT NULL DEFAULT '0',
  `guarantee` varchar(255) NOT NULL,
  `product_keys` varchar(50) NOT NULL,
  `direction` varchar(255) NOT NULL,
  `promotion` text NOT NULL,
  `comment` text CHARACTER SET utf8mb4 NOT NULL,
  `content` text CHARACTER SET utf8mb4 NOT NULL,
  `youtube` varchar(255) NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `pin` int(1) NOT NULL DEFAULT '0',
  `views` bigint(20) NOT NULL DEFAULT '1',
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `olala3w_product`
--

INSERT INTO `olala3w_product` (`product_id`, `product_menu_id`, `owner`, `name`, `slug`, `img`, `img_note`, `upload_id`, `sale`, `price`, `guarantee`, `product_keys`, `direction`, `promotion`, `comment`, `content`, `youtube`, `is_active`, `hot`, `pin`, `views`, `title`, `description`, `keywords`, `created_time`, `modified_time`, `user_id`) VALUES
(672, 257, 0, 'Red Bull', 'red-bull', '03xqo8o5-672-red-bull.jpg', '', 1963, 0, 30, 'Proin lacinia nisl ut ultricies posuere nulla ut', '', '', '', '', '', '', 1, 0, 0, 1, '', '', '', 1523777760, 1523778097, 25),
(673, 257, 0, 'Peepsi light', 'peepsi-light', 'x52isgdl-673-peepsi-light.jpg', '', 1964, 0, 25, 'Giảm 40% - Thứ 2, thứ 4, thứ 5 hàng', '', '', '', '', '', '', 1, 0, 0, 1, '', '', '', 1523778180, 0, 25),
(674, 257, 0, 'Lavie', 'lavie', 'j5ma0x86-674-lavie.jpg', '', 1965, 10, 0, '', '', '', '', '', '', '', 1, 0, 0, 1, '', '', '', 1523778300, 0, 25),
(670, 256, 0, 'Tôm hấp nước dừa', 'tom-hap-nuoc-dua', '9wl75a0u-670-tom-hap-nuoc-dua.jpg', '', 1961, 0, 100, 'Nguyên liệu : Tôm 500g (mua loại 100g được 4-5 con) 1 trái dừa xiêm nhỏ Xà lách, dưa leo, cà chua, hành lá để trang trí', '', '', '', '', '', '', 1, 0, 0, 1, '', '', '', 1523766600, 0, 25),
(671, 256, 0, 'Cua hấp bia giòn tươi', 'cua-hap-bia-gion-tuoi', 'vc5qji35-671-cua-hap-bia-gion-tuoi.jpg', '', 1962, 0, 90, 'Nguyên liệu: Cua biển. Bia (lon). Hành tây. Ớt sừng. Gừng. Hành lá xanh. Tiêu. Bột nêm.', '', '', '', '<ul>\r\n	<li>Giao hàng miễn phí</li>\r\n	<li>Hỗ trợ tư vấn khách hàng mọi thời điểm</li>\r\n	<li>Nhận đặt món các sự kiện</li>\r\n	<li>Voucher giảm giá ưu đãi cực hấp dẫn</li>\r\n</ul>\r\n', '', '', 1, 0, 0, 3, '', '', '', 1523766780, 1524930247, 25),
(668, 255, 0, 'Thịt bò thăn hảo hạng', 'thit-bo-than-hao-hang', 'owuhau2u-668-thit-bo-than-hao-hang.jpg', '', 1959, 0, 150, 'Phần lưng là nơi cung cấp những miếng thịt bò ngon nhất. ', '', '', '', '<p>Thịt thăn bò thường được ưa chuộng bởi đó là loại thịt bò mềm và nhiều nạc nhất.</p>\r\n', '', '', 1, 0, 0, 9, '', '', '', 1523766360, 0, 25),
(669, 256, 0, 'Mực hấp nước dừa', 'muc-hap-nuoc-dua', 'r0x5kbyx-669-muc-hap-nuoc-dua.jpg', '', 1960, 0, 70, 'Giảm 40% - Thứ 2, thứ 4, thứ 5 hàng...', '', '', '', '<p><span style="color: rgb(86, 86, 86); font-family: Arial, sans-serif; text-align: start;">Nguyên liệu: 500 gr mực tươi 4 cây sả Gừng tươi: một củ Dừa: một trái Hành: 1 củ Một quả chanh tươi 1 trái ớt sừng Rượu gừng Các loiaj gia vị: đường, rượu trắng, tiêu xay, dầu thực vật, bột súp</span></p>\r\n', '', '', 1, 0, 0, 1, '', '', '', 1523766480, 0, 25),
(666, 255, 0, 'Lợn quay đặc biệt', 'lon-quay-dac-biet', 'tm1mgfwo-666-lon-quay-dac-biet.jpg', '', 1957, 0, 87, 'Nguyên liệu: Lợn quay tẩm gia vị, rau sống, dưa chuột, cùng nhiều loại rau củ quả', '', '', '', '<ul>\r\n	<li>Giao hàng miễn phí</li>\r\n	<li>Hỗ trợ tư vấn khách hàng mọi thời điểm</li>\r\n	<li>Nhận đặt món các sự kiện</li>\r\n	<li>Voucher giảm giá ưu đãi cực hấp dẫn</li>\r\n</ul>\r\n', '', '', 1, 0, 1, 62, '', '', '', 1523766120, 1525055821, 25),
(667, 255, 0, 'Set lẩu hải sản cho 2 người', 'set-lau-hai-san-cho-2-nguoi', 'rtekwa3k-667-set-lau-hai-san-cho-2-nguoi.jpg', '', 1958, 0, 90, 'Nhận đặt món các sự kiện Voucher giảm giá ưu đãi cực hấp dẫn', '', '', '', '', '', '', 1, 0, 0, 2, '', '', '', 1523766240, 1524007908, 25),
(663, 256, 0, 'Hầu nướng phomai', 'hau-nuong-phomai', 'esxtc3zh-663-hau-nuong-phomai.jpg', '', 1944, 0, 90, 'Proin lacinia nisl ut ultricies posuere nulla ut', '', '', '', '', '', '', 1, 1, 0, 1, '', '', '', 1523097180, 1523097228, 25),
(664, 254, 0, 'Cháo gà', 'chao-ga', 'dgmcrwk9-664-chao-ga.jpg', '', 1945, 0, 40, '', '', '', '', '', '', '', 1, 1, 0, 38, '', '', '', 1523097240, 1523097272, 25),
(665, 255, 0, 'Thịt nướng xả trộn bún', 'thit-nuong-xa-tron-bun', '7bfd2ff0-665-thit-nuong-xa-tron-bun.png', '', 1956, 0, 80, 'Nguyên liệu: Thịt lợn nướng, bún, gia vị, rau sống các loại', '', '', '', '', '<ul>\r\n	<li>Giao hàng miễn phí</li>\r\n	<li>Hỗ trợ tư vấn khách hàng mọi thời điểm</li>\r\n	<li>Nhận đặt món các sự kiện</li>\r\n	<li>Voucher giảm giá ưu đãi cực hấp dẫn</li>\r\n</ul>\r\n', '', 1, 0, 0, 2, '', '', '', 1523765880, 1523766127, 25),
(660, 254, 0, 'Mì thịt heo quay', 'mi-thit-heo-quay-m', '8k6bpysf-660-mi-thit-heo-quay.jpg', '', 1940, 0, 90, 'Giảm 40% - Thứ 2, thứ 4, thứ 5 hàng tuần', '', '', '<p>Áp dụng cho 1 lần gọi món<br />\r\nMua một lần chỉ trong 2 ngày<br />\r\nCung cấp trong 2 ngày</p>\r\n', '<p>Áp dụng cho 1 lần gọi món</p>\r\n\r\n<p>Mua một lần chỉ trong 2 ngày</p>\r\n\r\n<p>Cung cấp trong 2 ngày</p>\r\n', '', '', 1, 1, 0, 15, '', '', '', 1523027040, 1524992126, 25),
(661, 255, 0, 'Cơm chiên cá mặn', 'com-chien-ca-man', 'lmmo3ilw-661-com-chien-ca-man.jpg', '', 1941, 0, 80, 'Giảm 40% - Thứ 2, thứ 4, thứ 5 hàng tuần', '', '', '<p>Menc non elit libero. Quisque massa porta ut placerat lentesque non diam. Nam convallis porta rhoncus. Maecenas varius eget turpis suscipit porta sapien tinc Mauris tempor libero fringilla orci vivrra faucibue fringilla orci vivrra faucibus. Integer ullamcorper erat in tellus efficitur, quis porta sapien tincidunt. Nunc mattis lectus sed semper semper. &nbsp; ...</p>\r\n', '<ul>\r\n	<li>Giao hàng miễn phí</li>\r\n	<li>Hỗ trợ tư vấn khách hàng mọi thời điểm</li>\r\n	<li>Nhận đặt món các sự kiện</li>\r\n	<li>Voucher giảm giá ưu đãi cực hấp dẫn</li>\r\n</ul>\r\n', '<p>Integer ullamcorper erat in tellus efficitur, quis porta sapien tincidunt. Nunc mattis lectus sed semper semper. &nbsp; ...</p>\r\n', '', 1, 1, 0, 19, '', '', '', 1523082300, 1525053915, 25),
(662, 255, 0, 'Cơm chiên bồ câu', 'com-chien-bo-cau', 'p38ka1yy-662-com-chien-bo-cau.jpg', '', 1943, 0, 90, 'Giảm 40% - Thứ 2, thứ 4, thứ 5 hàng tuần', '', '', '', '', '', '', 1, 1, 0, 13, '', '', '', 1523082660, 1523097127, 25),
(659, 254, 0, 'Mì xào thịt', 'mi-xao-thit-m', 'razbgaic-659-mi-xao-thit.jpg', '', 1939, 0, 95, 'Giảm 40% - Thứ 2, thứ 4, thứ 5 hàng tuần', '', '', '', '<p>Áp dụng cho 1 lần gọi món</p>\r\n\r\n<p>Mua một lần chỉ trong 2 ngày</p>\r\n\r\n<p>Cung cấp trong 2 ngày</p>\r\n', '', '', 1, 1, 0, 13, '', '', '', 1523026800, 1524992112, 25);

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_product_menu`
--

CREATE TABLE `olala3w_product_menu` (
  `product_menu_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `plus` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keywords` text NOT NULL,
  `parent` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `img` varchar(255) NOT NULL DEFAULT 'no',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `olala3w_product_menu`
--

INSERT INTO `olala3w_product_menu` (`product_menu_id`, `category_id`, `name`, `slug`, `plus`, `title`, `description`, `keywords`, `parent`, `sort`, `is_active`, `hot`, `img`, `created_time`, `modified_time`, `user_id`) VALUES
(254, 74, 'Ăn sáng', 'an-sang-j8017uvysz', 'Fresh Ingredient, Tasty Meals', '', '', '', 0, 2, 1, 0, 'an-sang-1523696182.jpg', 1522857899, 1523781702, 25),
(255, 74, 'Ăn trưa', 'an-trua-61puk4zqln', 'Fresh Ingredient, Tasty Meals', '', '', '', 0, 3, 1, 0, 'an-trua-1523719820.jpg', 1522859125, 1523781708, 25),
(256, 74, 'Ăn tối', 'an-toi-em1bbyjy82', 'Fresh Ingredient, Tasty Meals', '', '', '', 0, 4, 1, 0, 'an-toi-1523719846.jpg', 1522859136, 1523781713, 25),
(257, 74, 'Đồ uống', 'do-uong-hatg10hedn', 'Fresh Ingredient, Tasty Meals', '', '', '', 0, 5, 1, 0, 'no', 1522859146, 1523781717, 25);

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_project`
--

CREATE TABLE `olala3w_project` (
  `project_id` int(11) NOT NULL,
  `project_menu_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keywords` text NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 NOT NULL,
  `upload_id` bigint(20) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '1',
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `views` bigint(20) NOT NULL DEFAULT '1',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_project_menu`
--

CREATE TABLE `olala3w_project_menu` (
  `project_menu_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keywords` text NOT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '1',
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `img` varchar(255) NOT NULL DEFAULT 'no',
  `comment` text CHARACTER SET utf8mb4 NOT NULL,
  `project_type` int(11) NOT NULL DEFAULT '0',
  `price_max` bigint(20) NOT NULL DEFAULT '0',
  `price_min` bigint(20) NOT NULL DEFAULT '0',
  `legal` int(1) NOT NULL DEFAULT '0',
  `location` int(11) NOT NULL DEFAULT '0',
  `geo_radius` int(11) NOT NULL DEFAULT '0',
  `project_use` varchar(255) NOT NULL,
  `project_hot` varchar(255) NOT NULL,
  `project_involve` varchar(255) NOT NULL,
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_register_email`
--

CREATE TABLE `olala3w_register_email` (
  `register_email_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `created_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_register_try`
--

CREATE TABLE `olala3w_register_try` (
  `register_try_id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL DEFAULT 'no-name',
  `phone` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `note` text NOT NULL,
  `created_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_road`
--

CREATE TABLE `olala3w_road` (
  `road_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '1',
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_street`
--

CREATE TABLE `olala3w_street` (
  `street_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '1',
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_tour`
--

CREATE TABLE `olala3w_tour` (
  `tour_id` int(11) NOT NULL,
  `tour_menu_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL DEFAULT 'no',
  `img_note` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `tour_keys` varchar(255) NOT NULL,
  `price` bigint(15) NOT NULL DEFAULT '0',
  `date_schedule` varchar(255) NOT NULL,
  `date_departure` int(11) NOT NULL DEFAULT '0',
  `means` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `tour_type` varchar(255) NOT NULL,
  `destination` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `sale` int(3) NOT NULL DEFAULT '0',
  `schedule` text CHARACTER SET utf8mb4 NOT NULL,
  `price_list_service` text NOT NULL,
  `upload_id` bigint(20) NOT NULL,
  `maps` text CHARACTER SET utf8mb4 NOT NULL,
  `video` text CHARACTER SET utf8mb4 NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `pin` int(1) NOT NULL DEFAULT '0',
  `views` bigint(20) NOT NULL DEFAULT '1',
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keywords` text NOT NULL,
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_tour_menu`
--

CREATE TABLE `olala3w_tour_menu` (
  `tour_menu_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keywords` text NOT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '1',
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `img` varchar(255) NOT NULL DEFAULT 'no',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_uploads_tmp`
--

CREATE TABLE `olala3w_uploads_tmp` (
  `upload_id` bigint(20) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `list_img` text NOT NULL,
  `created_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `olala3w_uploads_tmp`
--

INSERT INTO `olala3w_uploads_tmp` (`upload_id`, `status`, `list_img`, `created_time`) VALUES
(1606, 0, '', 1494148567),
(1607, 0, '', 1494148608),
(1608, 0, '', 1494148724),
(1628, 0, '', 1494522106),
(1619, 1, '', 1494180762),
(1622, 0, '', 1494183294),
(1616, 0, '', 1494180652),
(1627, 0, '', 1494217625),
(1629, 0, '', 1494953260),
(1630, 0, '', 1494955327),
(1631, 0, '', 1494956909),
(1632, 0, '', 1494956952),
(1633, 0, '', 1494957143),
(1634, 0, '', 1494957148),
(1635, 0, '', 1494957283),
(1636, 0, '', 1494957291),
(1637, 0, '', 1494957477),
(1638, 0, '', 1494957571),
(1639, 0, '', 1494957620),
(1640, 0, '', 1494957740),
(1641, 0, '', 1494957784),
(1642, 0, '', 1494957897),
(1643, 0, '', 1494957911),
(1644, 0, '', 1494957928),
(1645, 0, '', 1494957938),
(1646, 0, '', 1494957963),
(1647, 0, '', 1494958319),
(1648, 0, '', 1494958338),
(1649, 0, '', 1494958380),
(1650, 0, '', 1494964431),
(1651, 0, '', 1494964594),
(1652, 0, '', 1494964628),
(1653, 0, '', 1494964706),
(1654, 0, '', 1494964720),
(1655, 0, '', 1494964728),
(1656, 0, '', 1494965079),
(1657, 0, '', 1494965086),
(1658, 0, '', 1494965100),
(1659, 0, '', 1494965108),
(1660, 0, '', 1494965195),
(1661, 0, '', 1494965197),
(1662, 0, '', 1494965321),
(1663, 0, '', 1494965622),
(1664, 0, '', 1494965634),
(1665, 0, '', 1494965702),
(1666, 0, '', 1494965808),
(1667, 0, '', 1494965898),
(1668, 0, '', 1494965988),
(1669, 0, '', 1495042897),
(1670, 0, '', 1495042931),
(1671, 0, '', 1495042992),
(1672, 0, '', 1495043043),
(1673, 0, '', 1495043080),
(1674, 0, '', 1495043121),
(1675, 0, '', 1495043181),
(1676, 0, '', 1495043969),
(1677, 0, '', 1495071652),
(1678, 0, '', 1495073071),
(1679, 0, '', 1495077827),
(1680, 0, '', 1495077935),
(1681, 0, '', 1495077944),
(1682, 0, '', 1495078243),
(1683, 0, '', 1495078255),
(1684, 0, '', 1495080039),
(1685, 0, '', 1495080041),
(1686, 0, '', 1495080128),
(1687, 0, '', 1495080264),
(1688, 0, '', 1495081141),
(1689, 0, '', 1495081156),
(1690, 0, '', 1495081196),
(1691, 0, '', 1495081212),
(1692, 0, '', 1495081253),
(1693, 0, '', 1495081273),
(1694, 0, '', 1495081338),
(1695, 0, '', 1495081368),
(1696, 0, '', 1495081388),
(1697, 0, '', 1495081414),
(1698, 0, '', 1495081426),
(1699, 0, '', 1495082018),
(1700, 0, '', 1495082099),
(1701, 0, '', 1495082263),
(1702, 0, '', 1495090079),
(1703, 0, '', 1495090087),
(1704, 0, '', 1495090095),
(1705, 0, '', 1495090509),
(1706, 0, '', 1495091563),
(1707, 0, '', 1495091622),
(1708, 0, '', 1495091681),
(1709, 0, '', 1495091842),
(1710, 0, '', 1495092033),
(1711, 0, '', 1495092064),
(1712, 0, '', 1495092066),
(1713, 0, '', 1495092142),
(1714, 0, '', 1495092189),
(1715, 0, '', 1495092205),
(1716, 0, '', 1495092208),
(1717, 0, '', 1495092245),
(1718, 0, '', 1495092309),
(1719, 0, '', 1495092339),
(1720, 0, '', 1495092354),
(1721, 0, '', 1495092390),
(1722, 0, '', 1495092406),
(1723, 0, '', 1495092453),
(1724, 0, '', 1495092462),
(1725, 0, '', 1495092683),
(1726, 0, '', 1495092730),
(1727, 0, '', 1495092796),
(1728, 0, '', 1495092880),
(1729, 0, '', 1495093352),
(1730, 0, '', 1495093880),
(1731, 0, '', 1495094500),
(1732, 0, '', 1495094582),
(1733, 0, '', 1495094601),
(1734, 0, '', 1495094603),
(1735, 0, '', 1495094640),
(1736, 0, '', 1495094707),
(1737, 0, '', 1495094808),
(1738, 0, '', 1495094867),
(1739, 0, '', 1495094913),
(1740, 0, '', 1495095142),
(1741, 0, '', 1495095336),
(1742, 0, '', 1495096192),
(1743, 0, '', 1495097070),
(1744, 0, '', 1495097239),
(1745, 0, '', 1495097275),
(1746, 0, '', 1495097289),
(1747, 0, '', 1495098068),
(1748, 0, '', 1495098188),
(1749, 0, '', 1495098424),
(1750, 0, '', 1495098682),
(1751, 0, '', 1495102772),
(1752, 0, '', 1495103096),
(1753, 0, '', 1495103191),
(1754, 0, '', 1495103200),
(1755, 0, '', 1495103240),
(1756, 0, '', 1495126834),
(1757, 0, '', 1495126842),
(1758, 0, '', 1495179895),
(1759, 0, '', 1495186231),
(1760, 0, '', 1495204220),
(1761, 0, '', 1495214441),
(1762, 0, '', 1495214502),
(1763, 0, '', 1495214510),
(1764, 0, '', 1495214557),
(1765, 0, '', 1495214574),
(1766, 0, '', 1495214615),
(1767, 0, '', 1495214627),
(1777, 0, '', 1495222079),
(1769, 0, '', 1495218917),
(1770, 0, '', 1495218918),
(1771, 0, '', 1495218930),
(1772, 0, '', 1495219014),
(1780, 0, '', 1495222936),
(1781, 0, '', 1495225687),
(1782, 0, '', 1495225695),
(1783, 0, '', 1495225709),
(1784, 0, '', 1495225783),
(1785, 0, '', 1495225788),
(1786, 0, '', 1495225795),
(1787, 0, '', 1495225921),
(1788, 0, '', 1495225980),
(1790, 0, '', 1495226209),
(1791, 0, '', 1495226270),
(1792, 0, '', 1495226279),
(1919, 1, '', 1497932534),
(1870, 1, '', 1496803875),
(1920, 1, '', 1497932553),
(1868, 0, '', 1496801685),
(1867, 1, '', 1496795533),
(1866, 1, '', 1496795502),
(1865, 1, '', 1496795446),
(1819, 0, '', 1496087689),
(1874, 1, '', 1496816461),
(1833, 0, '', 1496444532),
(1922, 1, '', 1497932588),
(1872, 1, '', 1496816089),
(1847, 0, '', 1496445380),
(1798, 0, '1495358188_1798_668c88252cb9e162b36d6713cb174c0d.jpg;1495358191_1798_a0d5434b0d5b08def83572649240c0d0.jpg;1495358193_1798_38a1905ecf631d468fddb233ee51b363.jpg;1495358196_1798_76764969447e3dbec7c38db97a6ad7ac.jpg;1495358198_1798_41556e4e12791ab26815bba9270fb00e.jpg;1495358201_1798_a9b7093b799d6d1af3f0f36140a99b00.jpg;1495358312_1798_4a1f7b9a6eaa938287d515789d6ce165.jpg;1495358597_1798_877678f580798b55d2ba436ed981e43f.jpg;1495358713_1798_98a69e0f2b0f255debde85fec5527457.jpg;1495359221_1798_30b32757c538d89ad60fc821bffaf712.jpg;', 1495357896),
(1799, 0, '', 1495378192),
(1862, 0, '', 1496719005),
(1863, 0, '', 1496761820),
(1864, 0, '', 1496761832),
(1801, 0, '', 1495380859),
(1805, 0, '', 1495383166),
(1803, 0, '', 1495381092),
(1804, 0, '', 1495381176),
(1806, 0, '', 1495383327),
(1807, 0, '', 1495438809),
(1808, 0, '', 1495564220),
(1875, 1, '', 1496821346),
(1876, 1, '', 1496821662),
(1877, 1, '', 1496822074),
(1878, 1, '', 1496822263),
(1879, 1, '', 1496822705),
(1880, 1, '', 1496822846),
(1881, 1, '', 1496823870),
(1882, 1, '', 1496823960),
(1883, 1, '', 1496824000),
(1884, 1, '', 1496824029),
(1885, 1, '', 1496824105),
(1886, 1, '', 1496909749),
(1887, 0, '', 1496910000),
(1888, 1, '', 1496910004),
(1889, 1, '', 1496910191),
(1890, 0, '', 1496910577),
(1891, 1, '', 1496910920),
(1892, 1, '', 1496911083),
(1893, 1, '', 1496912531),
(1921, 1, '', 1497932574),
(1899, 1, '', 1496913481),
(1918, 1, '', 1497932516),
(1917, 1, '', 1497932492),
(1905, 1, '', 1496992237),
(1906, 1, '', 1496992996),
(1907, 0, '', 1496996083),
(1909, 0, '', 1497932115),
(1910, 1, '', 1497932136),
(1911, 1, '', 1497932163),
(1912, 1, '', 1497932255),
(1913, 1, '', 1497932298),
(1914, 1, '', 1497932333),
(1915, 1, '', 1497932393),
(1916, 1, '', 1497932411),
(1923, 1, '', 1497932601),
(1924, 0, '1498034045_1924_814e5ce177d0689575376f0e7dbbeb77.jpg;', 1498033944),
(1925, 0, '', 1498033977),
(1926, 0, '', 1498033979),
(1927, 0, '', 1498033980),
(1928, 0, '', 1498033980),
(1929, 0, '', 1498033980),
(1930, 0, '', 1498033981),
(1931, 0, '', 1498033984),
(1932, 1, '', 1522857759),
(1933, 1, '', 1522937803),
(1934, 1, '', 1522937819),
(1935, 0, '', 1523025986),
(1936, 0, '', 1523025995),
(1937, 0, '', 1523026167),
(1938, 0, '', 1523026541),
(1939, 1, '', 1523026850),
(1940, 1, '', 1523027089),
(1941, 1, '', 1523082340),
(1942, 0, '', 1523082631),
(1943, 1, '', 1523082673),
(1944, 1, '', 1523097183),
(1945, 1, '', 1523097250),
(1948, 1, '', 1523636829),
(1949, 1, '', 1523638351),
(1950, 1, '', 1523638389),
(1951, 1, '', 1523638417),
(1952, 1, '', 1523677828),
(1953, 1, '', 1523677945),
(1954, 1, '', 1523677968),
(1955, 1, '', 1523677983),
(1956, 1, '', 1523765924),
(1957, 1, '1525055808_1957_11f64c7752f4d557e3470c7c8587da6c.jpg;1525055809_1957_7e61658fa4a087976728d13596756e95.png;1525055810_1957_8419bd2a410d72af5f33f672bb1dfd3d.jpg;1525055814_1957_cd0da48227d1e473ed84ad58cc938fe5.jpg;', 1523766167),
(1958, 1, '', 1523766255),
(1959, 1, '', 1523766384),
(1960, 1, '', 1523766507),
(1961, 1, '', 1523766653),
(1962, 1, '', 1523766804),
(1963, 1, '', 1523777807),
(1964, 1, '', 1523778182),
(1965, 1, '', 1523778309),
(1973, 1, '1525061069_1973_dde7d59e9a664c59acdb131440aa69b2.jpg;1525061070_1973_a7a4e256608d911dd5b305b9520934f7.png;1525061071_1973_64d262705e8254eddb290aaee4f3d60a.jpg;1525061072_1973_955eaa74a4f4cf03c16109d0f614bbb9.jpg;1525061076_1973_b9f8d32880c79108f1cac12b058c0759.jpg;1525061080_1973_05372bb048f4df3c70d723572652e0f0.jpg;', 1525061042),
(1972, 1, '', 1525061005),
(1967, 1, '1524008674_1967_b68348733a056bb4676a27dffa32963b.jpg;1524008675_1967_9a8e351a41dd9b4194c482a8cd197e43.png;1524008676_1967_b2b7a5031107a6396aa8733862130fef.jpg;1524008678_1967_f53fd4fbd465dae27035c70f19b9551d.jpg;1524008679_1967_41ff89c5981162242bb5a9ae6ab25e8c.jpg;1524008683_1967_c5ce9a6629d45d795a5158031f2b6640.jpg;', 1523805818),
(1968, 1, '', 1524977725),
(1969, 1, '', 1524977790),
(1970, 1, '', 1524977840),
(1971, 1, '', 1524977877);

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_vote`
--

CREATE TABLE `olala3w_vote` (
  `vote_id` bigint(20) NOT NULL,
  `session` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `vote` int(1) NOT NULL DEFAULT '0',
  `created_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `olala3w_article`
--
ALTER TABLE `olala3w_article`
  ADD PRIMARY KEY (`article_id`);

--
-- Indexes for table `olala3w_article_menu`
--
ALTER TABLE `olala3w_article_menu`
  ADD PRIMARY KEY (`article_menu_id`);

--
-- Indexes for table `olala3w_car`
--
ALTER TABLE `olala3w_car`
  ADD PRIMARY KEY (`car_id`);

--
-- Indexes for table `olala3w_car_menu`
--
ALTER TABLE `olala3w_car_menu`
  ADD PRIMARY KEY (`car_menu_id`);

--
-- Indexes for table `olala3w_category`
--
ALTER TABLE `olala3w_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `olala3w_category_type`
--
ALTER TABLE `olala3w_category_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `olala3w_constant`
--
ALTER TABLE `olala3w_constant`
  ADD PRIMARY KEY (`constant_id`);

--
-- Indexes for table `olala3w_contact`
--
ALTER TABLE `olala3w_contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `olala3w_core_privilege`
--
ALTER TABLE `olala3w_core_privilege`
  ADD PRIMARY KEY (`privilege_id`);

--
-- Indexes for table `olala3w_core_role`
--
ALTER TABLE `olala3w_core_role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `olala3w_core_user`
--
ALTER TABLE `olala3w_core_user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_name` (`user_name`);

--
-- Indexes for table `olala3w_direction`
--
ALTER TABLE `olala3w_direction`
  ADD PRIMARY KEY (`direction_id`);

--
-- Indexes for table `olala3w_document`
--
ALTER TABLE `olala3w_document`
  ADD PRIMARY KEY (`document_id`);

--
-- Indexes for table `olala3w_document_menu`
--
ALTER TABLE `olala3w_document_menu`
  ADD PRIMARY KEY (`document_menu_id`);

--
-- Indexes for table `olala3w_gallery`
--
ALTER TABLE `olala3w_gallery`
  ADD PRIMARY KEY (`gallery_id`);

--
-- Indexes for table `olala3w_gallery_menu`
--
ALTER TABLE `olala3w_gallery_menu`
  ADD PRIMARY KEY (`gallery_menu_id`);

--
-- Indexes for table `olala3w_gift`
--
ALTER TABLE `olala3w_gift`
  ADD PRIMARY KEY (`gift_id`);

--
-- Indexes for table `olala3w_gift_menu`
--
ALTER TABLE `olala3w_gift_menu`
  ADD PRIMARY KEY (`gift_menu_id`);

--
-- Indexes for table `olala3w_link`
--
ALTER TABLE `olala3w_link`
  ADD PRIMARY KEY (`link_id`);

--
-- Indexes for table `olala3w_location`
--
ALTER TABLE `olala3w_location`
  ADD PRIMARY KEY (`location_id`);

--
-- Indexes for table `olala3w_location_menu`
--
ALTER TABLE `olala3w_location_menu`
  ADD PRIMARY KEY (`location_menu_id`);

--
-- Indexes for table `olala3w_online`
--
ALTER TABLE `olala3w_online`
  ADD PRIMARY KEY (`online_id`);

--
-- Indexes for table `olala3w_online_daily`
--
ALTER TABLE `olala3w_online_daily`
  ADD PRIMARY KEY (`online_daily_id`);

--
-- Indexes for table `olala3w_order`
--
ALTER TABLE `olala3w_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `olala3w_others`
--
ALTER TABLE `olala3w_others`
  ADD PRIMARY KEY (`others_id`);

--
-- Indexes for table `olala3w_others_menu`
--
ALTER TABLE `olala3w_others_menu`
  ADD PRIMARY KEY (`others_menu_id`);

--
-- Indexes for table `olala3w_page`
--
ALTER TABLE `olala3w_page`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `olala3w_prjname`
--
ALTER TABLE `olala3w_prjname`
  ADD PRIMARY KEY (`prjname_id`);

--
-- Indexes for table `olala3w_product`
--
ALTER TABLE `olala3w_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `olala3w_product_menu`
--
ALTER TABLE `olala3w_product_menu`
  ADD PRIMARY KEY (`product_menu_id`);

--
-- Indexes for table `olala3w_project`
--
ALTER TABLE `olala3w_project`
  ADD PRIMARY KEY (`project_id`);

--
-- Indexes for table `olala3w_project_menu`
--
ALTER TABLE `olala3w_project_menu`
  ADD PRIMARY KEY (`project_menu_id`);

--
-- Indexes for table `olala3w_register_email`
--
ALTER TABLE `olala3w_register_email`
  ADD PRIMARY KEY (`register_email_id`);

--
-- Indexes for table `olala3w_register_try`
--
ALTER TABLE `olala3w_register_try`
  ADD PRIMARY KEY (`register_try_id`);

--
-- Indexes for table `olala3w_road`
--
ALTER TABLE `olala3w_road`
  ADD PRIMARY KEY (`road_id`);

--
-- Indexes for table `olala3w_street`
--
ALTER TABLE `olala3w_street`
  ADD PRIMARY KEY (`street_id`);

--
-- Indexes for table `olala3w_tour`
--
ALTER TABLE `olala3w_tour`
  ADD PRIMARY KEY (`tour_id`);

--
-- Indexes for table `olala3w_tour_menu`
--
ALTER TABLE `olala3w_tour_menu`
  ADD PRIMARY KEY (`tour_menu_id`);

--
-- Indexes for table `olala3w_uploads_tmp`
--
ALTER TABLE `olala3w_uploads_tmp`
  ADD PRIMARY KEY (`upload_id`);

--
-- Indexes for table `olala3w_vote`
--
ALTER TABLE `olala3w_vote`
  ADD PRIMARY KEY (`vote_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `olala3w_article`
--
ALTER TABLE `olala3w_article`
  MODIFY `article_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=959;
--
-- AUTO_INCREMENT for table `olala3w_article_menu`
--
ALTER TABLE `olala3w_article_menu`
  MODIFY `article_menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=479;
--
-- AUTO_INCREMENT for table `olala3w_car`
--
ALTER TABLE `olala3w_car`
  MODIFY `car_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=312;
--
-- AUTO_INCREMENT for table `olala3w_car_menu`
--
ALTER TABLE `olala3w_car_menu`
  MODIFY `car_menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;
--
-- AUTO_INCREMENT for table `olala3w_category`
--
ALTER TABLE `olala3w_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;
--
-- AUTO_INCREMENT for table `olala3w_category_type`
--
ALTER TABLE `olala3w_category_type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `olala3w_constant`
--
ALTER TABLE `olala3w_constant`
  MODIFY `constant_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;
--
-- AUTO_INCREMENT for table `olala3w_contact`
--
ALTER TABLE `olala3w_contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `olala3w_core_privilege`
--
ALTER TABLE `olala3w_core_privilege`
  MODIFY `privilege_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4994;
--
-- AUTO_INCREMENT for table `olala3w_core_role`
--
ALTER TABLE `olala3w_core_role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `olala3w_core_user`
--
ALTER TABLE `olala3w_core_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `olala3w_direction`
--
ALTER TABLE `olala3w_direction`
  MODIFY `direction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `olala3w_document`
--
ALTER TABLE `olala3w_document`
  MODIFY `document_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `olala3w_document_menu`
--
ALTER TABLE `olala3w_document_menu`
  MODIFY `document_menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `olala3w_gallery`
--
ALTER TABLE `olala3w_gallery`
  MODIFY `gallery_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=681;
--
-- AUTO_INCREMENT for table `olala3w_gallery_menu`
--
ALTER TABLE `olala3w_gallery_menu`
  MODIFY `gallery_menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;
--
-- AUTO_INCREMENT for table `olala3w_gift`
--
ALTER TABLE `olala3w_gift`
  MODIFY `gift_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;
--
-- AUTO_INCREMENT for table `olala3w_gift_menu`
--
ALTER TABLE `olala3w_gift_menu`
  MODIFY `gift_menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;
--
-- AUTO_INCREMENT for table `olala3w_link`
--
ALTER TABLE `olala3w_link`
  MODIFY `link_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=498;
--
-- AUTO_INCREMENT for table `olala3w_location`
--
ALTER TABLE `olala3w_location`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `olala3w_location_menu`
--
ALTER TABLE `olala3w_location_menu`
  MODIFY `location_menu_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `olala3w_online`
--
ALTER TABLE `olala3w_online`
  MODIFY `online_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `olala3w_online_daily`
--
ALTER TABLE `olala3w_online_daily`
  MODIFY `online_daily_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=684;
--
-- AUTO_INCREMENT for table `olala3w_order`
--
ALTER TABLE `olala3w_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `olala3w_others`
--
ALTER TABLE `olala3w_others`
  MODIFY `others_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `olala3w_others_menu`
--
ALTER TABLE `olala3w_others_menu`
  MODIFY `others_menu_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `olala3w_page`
--
ALTER TABLE `olala3w_page`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
--
-- AUTO_INCREMENT for table `olala3w_prjname`
--
ALTER TABLE `olala3w_prjname`
  MODIFY `prjname_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `olala3w_product`
--
ALTER TABLE `olala3w_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=675;
--
-- AUTO_INCREMENT for table `olala3w_product_menu`
--
ALTER TABLE `olala3w_product_menu`
  MODIFY `product_menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;
--
-- AUTO_INCREMENT for table `olala3w_project`
--
ALTER TABLE `olala3w_project`
  MODIFY `project_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;
--
-- AUTO_INCREMENT for table `olala3w_project_menu`
--
ALTER TABLE `olala3w_project_menu`
  MODIFY `project_menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;
--
-- AUTO_INCREMENT for table `olala3w_register_email`
--
ALTER TABLE `olala3w_register_email`
  MODIFY `register_email_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `olala3w_register_try`
--
ALTER TABLE `olala3w_register_try`
  MODIFY `register_try_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `olala3w_road`
--
ALTER TABLE `olala3w_road`
  MODIFY `road_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `olala3w_street`
--
ALTER TABLE `olala3w_street`
  MODIFY `street_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `olala3w_tour`
--
ALTER TABLE `olala3w_tour`
  MODIFY `tour_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `olala3w_tour_menu`
--
ALTER TABLE `olala3w_tour_menu`
  MODIFY `tour_menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;
--
-- AUTO_INCREMENT for table `olala3w_uploads_tmp`
--
ALTER TABLE `olala3w_uploads_tmp`
  MODIFY `upload_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1974;
--
-- AUTO_INCREMENT for table `olala3w_vote`
--
ALTER TABLE `olala3w_vote`
  MODIFY `vote_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
