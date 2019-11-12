-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2018 at 04:43 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dnw_rikland`
--

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_article`
--

CREATE TABLE `olala3w_article` (
  `article_id` int(11) NOT NULL,
  `article_menu_id` int(11) NOT NULL,
  `project` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL DEFAULT '-no-',
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keywords` text NOT NULL,
  `img` varchar(255) NOT NULL DEFAULT 'no',
  `img_note` varchar(255) NOT NULL,
  `upload_id` bigint(20) NOT NULL DEFAULT '0',
  `comment` text CHARACTER SET utf8mb4 NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 NOT NULL,
  `signature` int(11) NOT NULL DEFAULT '0',
  `tags` text NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `pin` int(1) NOT NULL DEFAULT '0',
  `status` int(1) DEFAULT '1',
  `views` bigint(20) NOT NULL DEFAULT '1',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `type` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_article_menu`
--

CREATE TABLE `olala3w_article_menu` (
  `article_menu_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL DEFAULT '-no-',
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keywords` text NOT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '1',
  `comment` text NOT NULL,
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
-- Table structure for table `olala3w_bds_business`
--

CREATE TABLE `olala3w_bds_business` (
  `bds_business_id` int(11) NOT NULL,
  `bds_business_menu_id` int(11) NOT NULL,
  `type_show` int(1) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `project` int(11) NOT NULL DEFAULT '0',
  `street` varchar(255) NOT NULL,
  `street_slug` varchar(255) NOT NULL,
  `road` int(11) NOT NULL DEFAULT '0',
  `floors` int(11) NOT NULL DEFAULT '0',
  `view_direction` int(11) NOT NULL DEFAULT '0',
  `view_scene` varchar(255) NOT NULL,
  `direction` int(11) NOT NULL DEFAULT '0',
  `location` int(11) NOT NULL DEFAULT '0',
  `geo_radius` int(11) NOT NULL DEFAULT '0',
  `area_land` double NOT NULL DEFAULT '0',
  `area_use` double NOT NULL DEFAULT '0',
  `price_total_land` bigint(20) NOT NULL DEFAULT '0',
  `price_unit_land` bigint(20) NOT NULL DEFAULT '0',
  `price_house` bigint(20) NOT NULL DEFAULT '0',
  `price_house_m2` int(20) NOT NULL DEFAULT '0',
  `price_total_house_land` bigint(20) NOT NULL,
  `transactions_deposit` bigint(20) NOT NULL DEFAULT '0',
  `transactions_duration` varchar(255) NOT NULL,
  `transactions_contract` int(1) NOT NULL DEFAULT '0',
  `transactions_type` int(1) NOT NULL DEFAULT '0',
  `purpose_use_land` varchar(255) NOT NULL,
  `law_land` int(11) NOT NULL DEFAULT '0',
  `parallel_price` text NOT NULL,
  `infrastructure_lights` varchar(255) NOT NULL,
  `infrastructure_water` varchar(255) NOT NULL,
  `infrastructure_view` varchar(255) NOT NULL,
  `infrastructure_land` int(11) NOT NULL DEFAULT '0',
  `infrastructure_floors` int(11) NOT NULL DEFAULT '0',
  `type_house` int(11) NOT NULL DEFAULT '0',
  `social_05km` text NOT NULL,
  `social_1km` text NOT NULL,
  `social_3km` text NOT NULL,
  `social_10km` text NOT NULL,
  `social_street` text NOT NULL,
  `social_educate` text NOT NULL,
  `created_time` int(11) NOT NULL DEFAULT '0',
  `expiration_time` int(11) NOT NULL DEFAULT '0',
  `status` int(1) NOT NULL DEFAULT '0',
  `transactors` int(1) NOT NULL DEFAULT '0',
  `contact_name` varchar(255) NOT NULL,
  `contact_tell` varchar(20) NOT NULL,
  `contact_email` varchar(255) NOT NULL,
  `upload_id` bigint(20) NOT NULL DEFAULT '0',
  `upload_idd` bigint(20) NOT NULL DEFAULT '0',
  `is_active` int(1) NOT NULL DEFAULT '1',
  `views` bigint(20) NOT NULL DEFAULT '1',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_bds_business_menu`
--

CREATE TABLE `olala3w_bds_business_menu` (
  `bds_business_menu_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL DEFAULT 'not-found',
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
  `comment` text NOT NULL,
  `content` longtext NOT NULL,
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
  `slug` varchar(255) NOT NULL DEFAULT 'not-found',
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keywords` text NOT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '1',
  `comment` text NOT NULL,
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
  `module` varchar(255) NOT NULL DEFAULT '-no-',
  `plus` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keywords` text NOT NULL,
  `comment` text NOT NULL,
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

INSERT INTO `olala3w_category` (`category_id`, `type_id`, `name`, `slug`, `module`, `plus`, `title`, `description`, `keywords`, `comment`, `is_active`, `hot`, `sort`, `menu_main`, `sort_hide`, `menu_sm`, `img`, `icon`, `created_time`, `modified_time`, `user_id`) VALUES
(9, 1, 'Về Sun Group', 'gioi-thieu', 'about', '', '', '', '', '', 1, 0, 1, 1, 1, 1, 'no', 'fa fa-globe fa-lg fa-fw', 0, 1470712438, 1),
(7, 1, 'Tin tức', 'tin-tuc', 'article', '', '', '', '', '', 1, 0, 4, 1, 5, 1, 'no', 'fa fa-newspaper-o fa-lg fa-fw', 0, 1483167273, 25),
(55, 1, 'Phương thức mua bán', 'phuong-thuc-mua-ban', 'article', '', '', '', '', 'QUY TRÌNH THANH TOÁN KHI ĐẶT CHỖ MUA ĐẤT TẠI SUNLAND \r\n\r\n\r\nSỐ TIỀN ĐẶT CHỖ:\r\n\r\n150 triệu với lô ống\r\n250 triệu với lô biệt thự.\r\n      2. PHƯƠNG THỨC ĐẶT CHỖ\r\n\r\nBằng tiền mặt tại Sàn Giao Dịch Sunland 218 Bạch Đằng.\r\nChọn lô, đặt cọc và ký Hợp đồng mua bán ngay tại sàn. \r\n\r\nChuyển khoản vào tài khoản GĐ sàn giao dịch (bên dưới)\r\nNếu chuyển khoản, quý khách hàng cần chọn lô trước, sau đó có 15 phút để thanh toán. Sau khi chuyển xong, chỉ cần gửi bản chụp Biên lai chuyển tiền gửi lại cho chúng tôi để làm căn cứ kiểm tra và xác nhận lô ngay khi tiền vào tài khoản. \r\n\r\nHợp đồng mua bán sẽ được gửi đến Khách hàng theo địa chỉ được cung cấp hoặc Khách hàng trực tiếp đến sàn nhận.\r\n\r\n***KINH NGHIỆM:\r\n\r\nMỗi đợt mở bán, số lượng trung bình 100-150 nền. Để chắc chắn đặt mua thành công, vị trí như mong muốn, các Khách hàng bận rộn thường nhờ chuyên viên tại DatNenHoaXuan thông báo trước một ngày mở bán để chuẩn bị sẵn tiền cọc bằng tiền mặt hoặc trong tài khoản.\r\n\r\nNgày mở bán, sẵn sàng cầm tiền mặt đến sàn giao dịch để chọn lô và cọc ngay lập tức. Các khách hàng ở xa hoặc không thể đến sàn có thể chuyển khoản qua internet. Việc tư vấn chọn lô, xác nhận thủ tục sẽ được hỗ trơ 24/24 bởi nhân viên DatNenHoaXuan. LIÊN HỆ NGAY 0919001468.\r\n\r\nHãy liên hệ với DatNenHoaXuan để được ưu thế, hỗ trợ nhiệt tình và tư vấn chọn vị trí đẹp.', 1, 0, 2, 0, 6, 1, 'abjzrpvbqkj7tgb-55-phuong-thuc-mua-ban.jpg', 'fa fa-question-circle fa-lg fa-fw', 0, 1471531551, 1),
(68, 1, 'Dự án', 'du-an', 'project', '', '', '', '', '', 1, 0, 3, 1, 2, 1, 'no', 'fa fa-cubes fa-lg fa-fw', 0, 1473043479, 25),
(76, 6, 'Bất động sản', 'bat-dong-san', 'product', '', '', '', '', '', 1, 0, 1, 0, 3, 1, 'no', 'fa fa-leaf fa-lg fa-fw', 0, 0, 0),
(77, 2, 'Bản đồ - Giá bán', 'ban-do-gia-ban', 'gallery', '', '', '', '', '', 1, 0, 2, 0, 4, 0, 'no', 'fa fa-book fa-lg fa-fw', 0, 1470453233, 0),
(75, 2, 'Silder', 'slider', 'gallery', '', '', '', '', '', 1, 0, 1, 0, 0, 0, 'no', '', 0, 1464952683, 0),
(78, 15, 'Trường bổ sung BĐS', 'plus', '-no-', '', '', '', '', '', 1, 0, 1, 0, 0, 0, 'no', '', 0, 0, 0),
(79, 2, 'Video', 'video', '-no-', '', '', '', '', '', 1, 0, 3, 0, 1, 0, 'no', '', 0, 1472723126, 0);

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
(7, 'Đăng ký theo dõi', 'register_email', 9, 0),
(6, 'Sản phẩm', 'product_manager', 4, 1),
(8, 'Đăng ký học', 'order_list', 7, 0),
(9, 'Tour du lịch', 'tour_manager', 5, 0),
(10, 'Đồ lưu niệm', 'gift_manager', 0, 0),
(11, 'Thuê xe', 'car_manager', 6, 0),
(12, 'Vị trí địa lý', 'location_manager', 0, 0),
(13, 'Dữ liệu đường phố', 'street_manager', 0, 0),
(14, 'Dữ liệu phương hướng', 'direction_manager', 0, 0),
(15, 'Dữ liệu khác', 'others_manager', 10, 1),
(16, 'Chiều rộng đường', 'road_manager', 0, 0),
(17, 'Dự án', 'project_manager', 0, 0),
(18, 'BĐS kinh doanh', 'bds_business_manager', 0, 0),
(19, 'Dữ liệu tên dự án', 'prjname_manager', 0, 0),
(20, 'Thư liên hệ', 'contact_list', 8, 1),
(21, 'Văn bản / Tài liệu', 'document_manager', 3, 0),
(22, 'Chat online', 'chat_online', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_chat`
--

CREATE TABLE `olala3w_chat` (
  `chat_id` double NOT NULL,
  `content` text CHARACTER SET utf8 NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_chat_onkeyup`
--

CREATE TABLE `olala3w_chat_onkeyup` (
  `chat_onkeyup_id` double NOT NULL,
  `ip` varchar(255) NOT NULL,
  `session` varchar(255) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_chat_online`
--

CREATE TABLE `olala3w_chat_online` (
  `chat_online_id` double NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(255) NOT NULL,
  `session` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_constant`
--

CREATE TABLE `olala3w_constant` (
  `constant_id` int(11) NOT NULL,
  `constant` varchar(50) NOT NULL,
  `value` text NOT NULL,
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
(4, 'title', 'Sàn giao dịch đất nền, dự án SunGroup Đà Nẵng | 0919001468', 'Title (trang chủ)', 0, 1),
(5, 'description', 'Bán đất KĐT sinh thái Hoà Xuân, Làng Châu Âu, Nam Cầu Nguyễn Tri Phương, Nam Hoà Xuân ...| 0919 001 468', 'Description (trang chủ)', 0, 2),
(6, 'keywords', 'Đất nền Hòa Xuân,sinh thái Hoà Xuân,Làng Châu Âu,Nam Cầu Nguyễn Tri Phương,Nam Hoà Xuân,đô thị sinh thái bán đảo,đất nền,dự án Sun group,đất nền đà nẵng,bất động sản,bất động sản đà nẵng,bán đất,mua đất,euro village', 'Keywords (trang chủ)', 0, 3),
(74, 'script_body', '<!-- Facebook Pixel Code -->\r\n<script>\r\n!function(f,b,e,v,n,t,s){if(f.fbq)return;n=f.fbq=function(){n.callMethod?\r\nn.callMethod.apply(n,arguments):n.queue.push(arguments)};if(!f._fbq)f._fbq=n;\r\nn.push=n;n.loaded=!0;n.version=''2.0'';n.queue=[];t=b.createElement(e);t.async=!0;\r\nt.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s)}(window,\r\ndocument,''script'',''https://connect.facebook.net/en_US/fbevents.js'');\r\nfbq(''init'', ''833866733419576'');\r\nfbq(''track'', ''PageView'');\r\n</script>\r\n<noscript><img height="1" width="1" style="display:none"\r\nsrc="https://www.facebook.com/tr?id=833866733419576&ev=PageView&noscript=1"\r\n/></noscript>\r\n<!-- DO NOT MODIFY -->\r\n<!-- End Facebook Pixel Code -->\r\n\r\n', 'Script sau body', 4, 6),
(76, 'link_linkedin', 'https://www.linkedin.com/in/datnenhoaxuan', 'LinkedIn', 5, 5),
(7, 'email_contact', 'vanbdsdanang@gmail.com', 'Email site', 0, 8),
(8, 'tell_contact', '0919 001 468;0905 183 153;0905 290 019', 'Điện thoại site', 0, 9),
(9, 'fulldate', 'D, d/m/Y', 'Kiểu hiển ngày đầy đủ', 3, 3),
(10, 'SMTP_username', 'mail.danaweb@gmail.com', 'Tài khoản email', 1, 0),
(11, 'SMTP_password', '123456987abc', 'Mật khẩu email', 1, 0),
(12, 'error_page', '<p>Website tạm ngưng hoạt động để nâng cấp. Thời gian dự kiến.... &nbsp;Mời quý khách quay lại sau!&nbsp;</p>\r\n', 'Thông báo ngừng hoạt động', 0, 19),
(13, 'file_logo', '/uploads/images/site/logo.jpg', 'Logo front-end', 0, 4),
(14, 'SMTP_secure', 'ssl', 'Sử dụng xác thực', 1, 0),
(15, 'SMTP_host', 'smtp.gmail.com', 'Máy chủ (SMTP) Thư gửi đi', 1, 0),
(16, 'SMTP_port', '465', 'Cổng gửi mail', 1, 0),
(17, 'backup_auto', '', 'Tự động sao lưu', 2, 0),
(18, 'backup_filetype', 'sql.gz', 'Định dạng lưu file CSDL', 2, 0),
(19, 'backup_filecount', '5', 'Số file CSDL lưu lại', 2, 0),
(20, 'backup_email', 'huynhquangthinh182@gmail.com', 'Email nhận thông báo và file', 2, 0),
(21, 'SMTP_mailname', 'Đất nền Hòa Xuân', 'Tên tài khoản email', 1, 0),
(22, 'link_facebook', 'https://www.facebook.com/SunLand.SunGroup/', 'Facebook', 5, 1),
(23, 'link_googleplus', 'https://plus.google.com/u/0/111338385758381759392', 'Google+', 5, 2),
(24, 'link_twitter', 'https://twitter.com/vanbdsdanang', 'Twitter', 5, 3),
(25, 'address_contact', 'Tầng 11, tòa nhà ACB 218 Bạch Đằng Đà Nẵng', 'Địa chỉ', 0, 10),
(73, 'script_bottom', '<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-586daef1829c1779"></script>\r\n\r\n', 'Script cuối trang', 4, 7),
(26, 'content_registertry', '', 'Email đăng ký học thử', 13, 17),
(27, 'author_google', '111338385758381759392', 'ID profile Google+', 4, 1),
(28, 'google_analytics', '<script>\r\n  (function(i,s,o,g,r,a,m){i[''GoogleAnalyticsObject'']=r;i[r]=i[r]||function(){\r\n  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),\r\n  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)\r\n  })(window,document,''script'',''https://www.google-analytics.com/analytics.js'',''ga'');\r\n\r\n  ga(''create'', ''UA-77001977-1'', ''auto'');\r\n  ga(''send'', ''pageview'');\r\n\r\n</script>\r\n', 'Google analytics', 4, 4),
(29, 'chat_online', '', 'Script Chat Online', 4, 5),
(30, 'english_test', '', 'Kiểm tra tiếng Anh của bạn', 13, 18),
(31, 'google_calendar', '', 'Google Calendar (Account)', 4, 3),
(32, 'help_address', 'killlllme@gmail.com,0974.779.085,huy.to.bsn,mr.killlllme', 'Tư vấn - Địa chỉ', 13, 8),
(33, 'help_icon', 'fa-envelope-o,fa-phone,fa-skype,fa-facebook', 'Tư vấn - Icon', 13, 9),
(34, 'link_youtube', 'https://www.youtube.com/channel/UCyVelvQFDPkZjZbKcsjanMw', 'Youtube', 5, 4),
(35, 'search_destination', 'Hà Nội,Đà Nẵng,Hồ Chí Minh,Phú Quốc,Nha Trang,Hạ Long,Đà Lạt,Phong Nha Kẻ Bàng,Côn đảo Vũng Tàu,Thái Lan,Singapore,Malaysia,Campuchia,Trung Quốc,Nhật Bản,Hàn Quốc,Hà Lan,Myanmar,Úc,Hong Kong,Philippines,Indonesia,Đài Loan,Châu Á,Châu Âu,Châu Mỹ,Châu Phi,Châu Úc', 'Điểm đến (Tìm kiếm tour)', 13, 8),
(36, 'search_day', '1 Ngày,1 Ngày 1 Đêm,2 Ngày,2 Ngày 1 Đêm,3 Ngày,3 Ngày 2 Đêm,4 Ngày,4 Ngày 3 Đêm,5 Ngày,5 Ngày 4 Đêm,6 Ngày,6 Ngày 5 Đêm,7 Ngày,7 Ngày 6 Đêm,8 Ngày,8 Ngày 7 Đêm,9 Ngày,9 Ngày 8 Đêm,10 Ngày,10 Ngày 9 Đêm,11 Ngày,11 Ngày 10 Đêm,12 Ngày,12 Ngày 11 Đêm,1 Tuần,2 Tuần,3 Tuần,1 Tháng,2 Tháng,3 Tháng', 'Thời gian (Tìm kiếm tour)', 13, 9),
(75, 'fb_app_id', '305962769454517', 'Facebook App ID', 4, 2),
(77, 'upload_img_max_w', '1900', 'Kích thước ảnh tối đa', 6, 1),
(78, 'upload_max_size', '52428800', 'Dung lượng tối đa', 6, 2),
(79, 'upload_checking_mode', 'mild', 'Kiểu kiểm tra file tải lên', 6, 3),
(80, 'upload_type', '1,4,5,6,7,8,9,10,11', 'Loại files cho phép', 6, 4),
(81, 'upload_ext', '', 'Phần mở rộng bị cấm', 6, 5),
(82, 'upload_mime', '', 'Loại mime bị cấm', 6, 6),
(83, 'upload_img_max_h', '594', 'Kích thước ảnh tối đa', 6, 1),
(84, 'upload_auto_resize', '1', 'Tự động resize ảnh', 6, 1),
(85, 'article_author', 'https://www.facebook.com/SunLand.SunGroup', 'Property = article:author', 4, 2),
(86, 'meta_author', 'Sàn giao dịch đất nền, dự án của SunGroup Đà Nẵng | 0919 001 468', 'Meta author', 0, 4),
(88, 'meta_site_name', 'Đất nền Nam Hòa Xuân dự án của SunGroup Đà Nẵng | DatNenHoaXuan', 'Meta site name', 0, 5),
(89, 'meta_copyright', 'Copyright ©2016 Đất nền Hòa Xuân', 'Meta copyright', 0, 6),
(90, 'image_thumbnailUrl', '/uploads/images/site/Dat-nen-Hoa-Xuan.jpg', 'Image : thumbnailUrl', 0, 7);

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
(4378, 1, 'tool', 'tool_ipdie'),
(4377, 1, 'tool', 'tool_keywords'),
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
(4376, 1, 'tool', 'tool_site'),
(4375, 1, 'tool', 'tool_delete'),
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
(4114, 1, 'product', 'product_del;76'),
(4374, 1, 'tool', 'tool_elfinder'),
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
(4178, 1, 'others', 'others_del;78'),
(4177, 1, 'others', 'others_edit;78'),
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
(4176, 1, 'others', 'others_add;78'),
(2085, 2, 'category', 'article_manager'),
(4113, 1, 'product', 'product_edit;76'),
(4112, 1, 'product', 'product_add;76'),
(4111, 1, 'product', 'product_list;76'),
(2253, 1, 'street', 'street_del'),
(2256, 1, 'pages', 'plugin_page_del'),
(2290, 1, 'road', 'road_add'),
(2291, 1, 'road', 'road_edit'),
(2292, 1, 'road', 'road_del'),
(4175, 1, 'others', 'others_list;78'),
(2780, 1, 'project', 'project_list;13'),
(2779, 1, 'project', 'project_menu_del;13'),
(2778, 1, 'project', 'project_menu_edit;13'),
(2777, 1, 'project', 'project_menu_add;13'),
(2776, 1, 'project', 'category_edit;13'),
(4174, 1, 'others', 'others_menu_del;78'),
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
(4173, 1, 'others', 'others_menu_edit;78'),
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
(4110, 1, 'product', 'product_menu_del;76'),
(4109, 1, 'product', 'product_menu_edit;76'),
(3133, 11, 'product', 'product_list;37'),
(3138, 11, 'product', 'owner_cus;37'),
(4144, 1, 'article', 'article_add;68'),
(4386, 1, 'category', 'plugin_page'),
(3326, 1, 'info', 'sys_info_php'),
(3325, 1, 'info', 'sys_info_diary'),
(3334, 1, 'core', 'core_mail'),
(4108, 1, 'product', 'product_menu_add;76'),
(4143, 1, 'article', 'article_list;68'),
(4142, 1, 'article', 'article_menu_del;68'),
(4141, 1, 'article', 'article_menu_edit;68'),
(4140, 1, 'article', 'article_menu_add;68'),
(4194, 1, 'gallery', 'gallery_del;79'),
(4193, 1, 'gallery', 'gallery_edit;79'),
(4192, 1, 'gallery', 'gallery_add;79'),
(4191, 1, 'gallery', 'gallery_list;79'),
(4190, 1, 'gallery', 'gallery_menu_del;79'),
(4189, 1, 'gallery', 'gallery_menu_edit;79'),
(4139, 1, 'article', 'category_edit;68'),
(4138, 1, 'article', 'article_del;55'),
(4137, 1, 'article', 'article_edit;55'),
(4188, 1, 'gallery', 'gallery_menu_add;79'),
(4136, 1, 'article', 'article_add;55'),
(4135, 1, 'article', 'article_list;55'),
(4134, 1, 'article', 'article_menu_del;55'),
(4133, 1, 'article', 'article_menu_edit;55'),
(4132, 1, 'article', 'article_menu_add;55'),
(4131, 1, 'article', 'category_edit;55'),
(4130, 1, 'article', 'article_del;77'),
(4129, 1, 'article', 'article_edit;77'),
(4128, 1, 'article', 'article_add;77'),
(4127, 1, 'article', 'article_list;77'),
(4126, 1, 'article', 'article_menu_del;77'),
(4125, 1, 'article', 'article_menu_edit;77'),
(4187, 1, 'gallery', 'category_edit;79'),
(4186, 1, 'gallery', 'gallery_del;75'),
(4185, 1, 'gallery', 'gallery_edit;75'),
(4184, 1, 'gallery', 'gallery_add;75'),
(4183, 1, 'gallery', 'gallery_list;75'),
(4182, 1, 'gallery', 'gallery_menu_del;75'),
(4181, 1, 'gallery', 'gallery_menu_edit;75'),
(4180, 1, 'gallery', 'gallery_menu_add;75'),
(4179, 1, 'gallery', 'category_edit;75'),
(4124, 1, 'article', 'article_menu_add;77'),
(4123, 1, 'article', 'category_edit;77'),
(4122, 1, 'article', 'article_del;9'),
(4121, 1, 'article', 'article_edit;9'),
(4120, 1, 'article', 'article_add;9'),
(4119, 1, 'article', 'article_list;9'),
(4118, 1, 'article', 'article_menu_del;9'),
(4172, 1, 'others', 'others_menu_add;78'),
(4171, 1, 'others', 'category_edit;78'),
(4385, 1, 'category', 'others_manager'),
(4384, 1, 'category', 'contact_list'),
(4026, 1, 'document', 'document_list;73'),
(4025, 1, 'document', 'document_menu_del;73'),
(4024, 1, 'document', 'document_menu_edit;73'),
(4023, 1, 'document', 'document_menu_add;73'),
(4022, 1, 'document', 'category_edit;73'),
(4028, 1, 'document', 'document_edit;73'),
(4029, 1, 'document', 'document_del;73'),
(4117, 1, 'article', 'article_menu_edit;9'),
(4116, 1, 'article', 'article_menu_add;9'),
(4115, 1, 'article', 'category_edit;9'),
(4383, 1, 'category', 'chat_online'),
(4382, 1, 'category', 'product_manager'),
(4381, 1, 'category', 'gallery_manager'),
(4380, 1, 'category', 'article_manager'),
(4107, 1, 'product', 'category_edit;76'),
(4145, 1, 'article', 'article_edit;68'),
(4146, 1, 'article', 'article_del;68'),
(4147, 1, 'article', 'category_edit;7'),
(4148, 1, 'article', 'article_menu_add;7'),
(4149, 1, 'article', 'article_menu_edit;7'),
(4150, 1, 'article', 'article_menu_del;7'),
(4151, 1, 'article', 'article_list;7'),
(4152, 1, 'article', 'article_add;7'),
(4153, 1, 'article', 'article_edit;7'),
(4154, 1, 'article', 'article_del;7'),
(4195, 1, 'gallery', 'category_edit;77'),
(4196, 1, 'gallery', 'gallery_menu_add;77'),
(4197, 1, 'gallery', 'gallery_menu_edit;77'),
(4198, 1, 'gallery', 'gallery_menu_del;77'),
(4199, 1, 'gallery', 'gallery_list;77'),
(4200, 1, 'gallery', 'gallery_add;77'),
(4201, 1, 'gallery', 'gallery_edit;77'),
(4202, 1, 'gallery', 'gallery_del;77'),
(4361, 13, 'tool', 'tool_update'),
(4360, 13, 'tool', 'tool_ipdie'),
(4359, 13, 'tool', 'tool_keywords'),
(4358, 13, 'tool', 'tool_site'),
(4357, 13, 'tool', 'tool_delete'),
(4241, 13, 'category', 'contact_list'),
(4240, 13, 'category', 'product_manager'),
(4239, 13, 'category', 'gallery_manager'),
(4238, 13, 'category', 'article_manager'),
(4345, 13, 'gallery', 'gallery_edit;79'),
(4362, 13, 'core', 'core_mail'),
(4344, 13, 'gallery', 'gallery_add;79'),
(4343, 13, 'gallery', 'gallery_list;79'),
(4342, 13, 'gallery', 'gallery_menu_del;79'),
(4373, 13, 'pages', 'plugin_page_del'),
(4372, 13, 'pages', 'plugin_page_edit'),
(4355, 13, 'config', 'config_search'),
(4354, 13, 'config', 'config_socialnetwork'),
(4353, 13, 'config', 'config_plugins'),
(4352, 13, 'config', 'config_datetime'),
(4351, 13, 'config', 'config_smtp'),
(4350, 13, 'config', 'config_general'),
(4236, 13, 'backup', 'backup_data'),
(4237, 13, 'backup', 'backup_config'),
(4242, 13, 'category', 'others_manager'),
(4243, 13, 'category', 'plugin_page'),
(4244, 13, 'article', 'category_edit;9'),
(4245, 13, 'article', 'article_menu_add;9'),
(4246, 13, 'article', 'article_menu_edit;9'),
(4247, 13, 'article', 'article_menu_del;9'),
(4248, 13, 'article', 'article_list;9'),
(4249, 13, 'article', 'article_add;9'),
(4250, 13, 'article', 'article_edit;9'),
(4251, 13, 'article', 'article_del;9'),
(4252, 13, 'article', 'category_edit;55'),
(4253, 13, 'article', 'article_menu_add;55'),
(4254, 13, 'article', 'article_menu_edit;55'),
(4255, 13, 'article', 'article_menu_del;55'),
(4256, 13, 'article', 'article_list;55'),
(4257, 13, 'article', 'article_add;55'),
(4258, 13, 'article', 'article_edit;55'),
(4259, 13, 'article', 'article_del;55'),
(4260, 13, 'article', 'category_edit;68'),
(4261, 13, 'article', 'article_menu_add;68'),
(4262, 13, 'article', 'article_menu_edit;68'),
(4263, 13, 'article', 'article_menu_del;68'),
(4264, 13, 'article', 'article_list;68'),
(4265, 13, 'article', 'article_add;68'),
(4266, 13, 'article', 'article_edit;68'),
(4267, 13, 'article', 'article_del;68'),
(4268, 13, 'article', 'category_edit;7'),
(4269, 13, 'article', 'article_menu_add;7'),
(4270, 13, 'article', 'article_menu_edit;7'),
(4271, 13, 'article', 'article_menu_del;7'),
(4272, 13, 'article', 'article_list;7'),
(4273, 13, 'article', 'article_add;7'),
(4274, 13, 'article', 'article_edit;7'),
(4275, 13, 'article', 'article_del;7'),
(4341, 13, 'gallery', 'gallery_menu_edit;79'),
(4340, 13, 'gallery', 'gallery_menu_add;79'),
(4339, 13, 'gallery', 'category_edit;79'),
(4338, 13, 'gallery', 'gallery_edit;77'),
(4337, 13, 'gallery', 'gallery_add;77'),
(4336, 13, 'gallery', 'gallery_list;77'),
(4335, 13, 'gallery', 'gallery_menu_edit;77'),
(4334, 13, 'gallery', 'gallery_menu_add;77'),
(4333, 13, 'gallery', 'category_edit;77'),
(4332, 13, 'gallery', 'gallery_del;75'),
(4331, 13, 'gallery', 'gallery_edit;75'),
(4330, 13, 'gallery', 'gallery_add;75'),
(4329, 13, 'gallery', 'gallery_list;75'),
(4328, 13, 'gallery', 'gallery_menu_del;75'),
(4327, 13, 'gallery', 'gallery_menu_edit;75'),
(4326, 13, 'gallery', 'gallery_menu_add;75'),
(4325, 13, 'gallery', 'category_edit;75'),
(4367, 13, 'product', 'product_list;76'),
(4366, 13, 'product', 'product_menu_del;76'),
(4365, 13, 'product', 'product_menu_edit;76'),
(4364, 13, 'product', 'product_menu_add;76'),
(4363, 13, 'product', 'category_edit;76'),
(4308, 13, 'others', 'category_edit;78'),
(4309, 13, 'others', 'others_menu_add;78'),
(4310, 13, 'others', 'others_menu_edit;78'),
(4311, 13, 'others', 'others_menu_del;78'),
(4312, 13, 'others', 'others_list;78'),
(4313, 13, 'others', 'others_add;78'),
(4314, 13, 'others', 'others_edit;78'),
(4315, 13, 'others', 'others_del;78'),
(4346, 13, 'gallery', 'gallery_del;79'),
(4371, 13, 'pages', 'plugin_page_add'),
(4356, 13, 'config', 'config_upload'),
(4368, 13, 'product', 'product_add;76'),
(4369, 13, 'product', 'product_edit;76'),
(4370, 13, 'product', 'product_del;76'),
(4379, 1, 'tool', 'tool_update');

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
(9, 'Broker', 'Nhân viên môi giới. Chỉ nhập và quản lý thông tin BĐS.', 1, 1439055844, 1),
(13, 'Sales', 'Mr.Trung', 1, 1474608135, 1);

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
  `comment` text NOT NULL,
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
(1, 1, 'admin', 'd6fd49b37aa5f4dc3084e976eda1b7f3', 'Mr. Thịnh.0919001468:', 1, 1426784400, 'Quản trị website', 'wthinh@gmail.com', '0919001468', 'Hải Châu - Đà Nẵng', '', 1, 1, 'u_1484728941_b9b7a992a1197d09243be4eab030077a.jpg', 1, 5, 1, 1408159832, 1484729201, 1),
(25, 1, 'dev', '35622d129658338262443a22a9c7bac5', 'Tô Thái Huy', 1, -25200, '', 'huyto.qng@gmail.com', '0974779805', '', '', 1, 2, 'u_1437075987_ffbbbf570157f5aa239cf98d7caa354a.jpg', 1, 1, 1, 0, 1474447555, 1),
(27, 13, 'bdstrung', 'eb0a965bc5d5e0e24fa7d229b3759647', 'Trung', 1, 631126800, 'Sales', 'thanhtrungnguyen501@gmail.com', '0935222087', '', '', 1, 1, 'u_1474447539_36e625c8620fc4d0712d5f60c9b6c1cd.jpg', 1, 4, 1, 1474438794, 1474957259, 1),
(28, 13, 'MrAnhTu', '73ac473d6c185f2faf34d3bfbe3d7a00', 'Anh Tu', 1, 631126800, 'Sales IT ', 'anhtu94.cit@gmail.com', '0905111111', '', '', 0, 4, 'u_1479226309_cd56e3880678af27bf53fb08c71d3cf3.jpg', 0, 3, 1, 1479226309, 1486873697, 29),
(29, 1, 'quangtx', 'fd8d14b381fb32b2355d39038ad863d4', 'Xuân Quang', 1, 543517200, 'SEO', 'truongxuanquang87@gmail.com', '0935222087', '', '', 1, 5, 'no', 1, 5, 1, 1485955377, 0, 1),
(30, 1, 'THuVan', '18e8bb283da8b8b25845132fc2234754', 'Vân-0905290019', 2, 657219600, '', 'vanlavender@gmail.com', '0905290019', '', '', 0, 6, 'u_1486608947_53a9429a12576a58375c66fd34c6a584.png', 1, 5, 1, 1486369315, 1486608947, 1);

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
  `comment` text NOT NULL,
  `content` text NOT NULL,
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
  `comment` text NOT NULL,
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
  `slug` varchar(255) NOT NULL DEFAULT '-no-',
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL DEFAULT 'no',
  `upload_id` bigint(20) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `content` text NOT NULL,
  `link` varchar(255) NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `views` bigint(20) NOT NULL DEFAULT '1',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_gallery_menu`
--

CREATE TABLE `olala3w_gallery_menu` (
  `gallery_menu_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL DEFAULT '-no-',
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keywords` text NOT NULL,
  `parent` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `comment` text NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `img` varchar(255) NOT NULL DEFAULT 'no',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
  `comment` text NOT NULL,
  `content` longtext NOT NULL,
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
  `slug` varchar(255) NOT NULL DEFAULT 'not-found',
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
(106848, '127.0.0.1', 1527733059, 'url=olala-admin/js/highcharts/graphics/loader.white.gif', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 0);

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_online_daily`
--

CREATE TABLE `olala3w_online_daily` (
  `online_daily_id` double NOT NULL,
  `date` date NOT NULL,
  `count` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_order`
--

CREATE TABLE `olala3w_order` (
  `order_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `ip` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL DEFAULT 'fa-shopping-cart',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_others`
--

CREATE TABLE `olala3w_others` (
  `others_id` int(11) NOT NULL,
  `others_menu_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL DEFAULT '-no-',
  `c_to` double NOT NULL,
  `c_from` double NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '1',
  `content` text CHARACTER SET utf8mb4 NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `olala3w_others`
--

INSERT INTO `olala3w_others` (`others_id`, `others_menu_id`, `name`, `slug`, `c_to`, `c_from`, `sort`, `content`, `is_active`, `hot`, `created_time`, `modified_time`, `user_id`) VALUES
(1, 1, 'Đông', 'huong-dong', 0, 0, 1, '', 1, 0, 1471235344, 1471244353, 1),
(2, 1, 'Tây', 'huong-tay', 0, 0, 2, '', 1, 0, 1471235349, 1471244360, 1),
(3, 1, 'Nam', 'huong-nam', 0, 0, 3, '', 1, 0, 1471235354, 1471244377, 1),
(4, 1, 'Bắc', 'huong-bac', 0, 0, 4, '', 1, 0, 1471235358, 1471244388, 1),
(5, 1, 'Đông Nam', 'huong-dong-nam', 0, 0, 5, '', 1, 0, 1471235365, 1471244396, 1),
(6, 1, 'Đông Bắc', 'huong-dong-bac', 0, 0, 6, '', 1, 0, 1471235371, 1471244404, 1),
(7, 1, 'Tây Nam', 'huong-tay-nam', 0, 0, 7, '', 1, 0, 1471235381, 1471244446, 1),
(8, 1, 'Tây Bắc', 'huong-tay-bac', 0, 0, 8, '', 1, 0, 1471235389, 1471244451, 1),
(16, 2, '7m5', 'duong-7m5', 0, 0, 1, '', 1, 0, 1471244692, 1473645160, 1),
(17, 2, '15m', 'duong-15m', 0, 0, 3, '', 1, 0, 1471244707, 1473645165, 1),
(30, 4, 'Dưới 600 triệu', 'duoi-600-trieu', 0, 600000000, 1, '', 0, 0, 1471399356, 1483581794, 25),
(31, 4, '< 700 triệu', 'duoi-700-trieu', 0, 700000000, 2, '', 1, 1, 1471399381, 1484557697, 1),
(32, 4, '< 800 triệu', 'duoi-800-trieu', 0, 800000000, 3, '', 1, 1, 1471399408, 1484557706, 1),
(33, 4, '< 1 tỷ', 'duoi-1-ty', 0, 1000000000, 4, '', 1, 1, 1471399447, 1484557719, 1),
(34, 4, '> 1 tỷ', 'tren-1-ty', 1000000000, 999999999999, 5, '', 1, 1, 1471399475, 1484557726, 1),
(35, 2, '10m5', '10m5', 0, 0, 2, '', 1, 0, 1473645140, 1473645163, 25),
(36, 5, 'Thành Trung', 'thanh-trung', 0, 0, 2, '<p><span style="font-size:16px;"><strong><span style="color:#000000;"><span style="font-family:times new roman,times,serif;">THÔNG TIN LIÊN HỆ&nbsp;SÀN BẤT ĐỘNG SẢN SUNLAND</span></span></strong></span><br />\r\n<img alt="" src="/uploads/images/dia%20chi.jpg" style="width: 20px; height: 20px;" />&nbsp;&nbsp;<span style="color:#000000;"><span style="font-family:times new roman,times,serif;">Tầng 11, tòa nhà ACB, 218 Bạch Đằng, Q. Hải Châu, Đà Nẵng</span></span><br />\r\n<a href="http://datnenhoaxuan.com/" target="_blank"><img alt="" src="/uploads/images/web%20dat%20nen%20hoa%20xuan%20da%20nag.jpg" style="width: 20px; height: 20px;" /></a>&nbsp;&nbsp;<span style="font-family:times new roman,times,serif;"><a href="http://datnenhoaxuan.com" target="_blank"><span style="color:#000000;">DatNenHoaXuan.com</span></a></span><br />\r\n<a href="https://www.facebook.com/SunLand.SunGroup/" target="_blank"><img alt="Face Đất Nền Hòa Xuân" src="/uploads/images/face%20dat%20nen%20hoa%20xuan-min.jpg" style="width: 20px; height: 20px;" /></a>&nbsp;&nbsp;<span style="font-family:times new roman,times,serif;"><a href="https://www.facebook.com/SunLand.SunGroup" target="_blank"><span style="color:#000000;">SunLand.SunGroup</span></a></span></p>\r\n\r\n<p class="alg-ctr f-space10 t-bold t-italic"><span style="font-size:16px;"><span style="font-family:times new roman,times,serif;"><strong>Tin tức mở bán, tư vấn, ký gửi bất động sản <a href="http://datnenhoaxuan.com/" onclick="window.open(this.href, '''', ''resizable=no,status=no,location=no,toolbar=no,menubar=no,fullscreen=no,scrollbars=no,dependent=no''); return false;">Sunland</a> - <a href="http://datnenhoaxuan.com/" onclick="window.open(this.href, '''', ''resizable=no,status=no,location=no,toolbar=no,menubar=no,fullscreen=no,scrollbars=no,dependent=no''); return false;">SunGroup tại Đà Nẵng</a></strong></span></span></p>\r\n\r\n<p class="alg-ctr t-bold"><span style="font-size:16px;"><span style="font-family:times new roman,times,serif;"><strong>Hotline tư vấn 24/24</strong></span></span></p>\r\n\r\n<table border="0" cellpadding="0" cellspacing="0" class="f-space10" style="width:100%;">\r\n	<tbody>\r\n		<tr>\r\n			<td style="text-align: center;"><font color="#4a4a4a"><span style="font-weight: normal;"><a class="hotline-btn" href="tel:+84905183153"><span>Bấm gọi &nbsp;</span>0905 183 153</a>&nbsp; gặp Mr. Trung</span></font></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 1, 1, 1475900493, 1483613962, 25),
(37, 5, 'Quang Thịnh', 'quang-thinh', 0, 0, 4, '<p>THÔNG TIN LIÊN HỆ<br />\r\nSÀN BẤT ĐỘNG SẢN SUNLAND<br />\r\nTầng 11, tòa nhà ACB, 218 Bạch Đằng, Q. Hải Châu, Đà Nẵng<br />\r\nWebsite:&nbsp;<a href="http://datnenhoaxuan.com" target="_blank">www.DatNenHoaXuan.com</a><br />\r\nFacebook:&nbsp;<a href="https://www.facebook.com/SunLand.SunGroup" target="_blank">https://www.facebook.com/SunLand.SunGroup</a></p>\r\n\r\n<p class="alg-ctr f-space10 t-bold t-italic">Tin tức mở bán, tư vấn, ký gửi bất động sản Sunland - SunGroup tại Đà Nẵng</p>\r\n\r\n<p class="alg-ctr t-bold">Hotline tư vấn 24/24</p>\r\n\r\n<table border="0" cellpadding="0" cellspacing="0" class="f-space10" style="width:100%;">\r\n	<tbody>\r\n		<tr>\r\n			<td style="text-align: center;"><a class="hotline-btn" href="tel:+84919001468"><span>Bấm gọi &nbsp;</span>0919 001 468</a>&nbsp; <strong>gặp Mr. Thịnh</strong></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 1, 1, 1475900511, 1476432197, 25),
(38, 5, 'Thu Vân', 'thu-van', 0, 0, 3, '<p>THÔNG TIN LIÊN HỆ<br />\r\nSÀN BẤT ĐỘNG SẢN SUNLAND<br />\r\nTầng 11, tòa nhà ACB, 218 Bạch Đằng, Q. Hải Châu, Đà Nẵng<br />\r\nWebsite:&nbsp;<a href="http://datnenhoaxuan.com" target="_blank">www.DatNenHoaXuan.com</a><br />\r\nFacebook:&nbsp;<a href="https://www.facebook.com/SunLand.SunGroup" target="_blank">https://www.facebook.com/SunLand.SunGroup</a></p>\r\n\r\n<p class="alg-ctr f-space10 t-bold t-italic">Tin tức mở bán, tư vấn, ký gửi bất động sản Sunland - SunGroup tại Đà Nẵng</p>\r\n\r\n<p class="alg-ctr t-bold">Hotline tư vấn 24/24</p>\r\n\r\n<table border="0" cellpadding="0" cellspacing="0" class="f-space10" style="width:100%;">\r\n	<tbody>\r\n		<tr>\r\n			<td style="text-align: center;"><a class="hotline-btn" href="tel:+84905290019"><span>Bấm gọi &nbsp;</span>0905 290 019</a>&nbsp; <strong>gặp Ms. Vân</strong></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 1, 1, 1475900529, 1476687999, 25),
(39, 5, 'Chữ ký chung', 'chu-ky-chung', 0, 0, 1, '<p><span style="font-size:16px;"><strong><span style="color:#000000;"><span style="font-family:times new roman,times,serif;">THÔNG TIN LIÊN HỆ&nbsp;SÀN BẤT ĐỘNG SẢN SUNLAND</span></span></strong></span><br />\r\n<img alt="" src="/uploads/images/dia%20chi.jpg" style="width: 20px; height: 20px;" />&nbsp;&nbsp;<span style="color:#000000;"><span style="font-family:times new roman,times,serif;">Tầng 11, tòa nhà ACB, 218 Bạch Đằng, Q. Hải Châu, Đà Nẵng</span></span><br />\r\n<a href="http://datnenhoaxuan.com/" target="_blank"><img alt="" src="/uploads/images/web%20dat%20nen%20hoa%20xuan%20da%20nag.jpg" style="width: 20px; height: 20px;" /></a>&nbsp;&nbsp;<span style="font-family:times new roman,times,serif;"><a href="http://datnenhoaxuan.com" target="_blank"><span style="color:#000000;">DatNenHoaXuan.com</span></a></span><br />\r\n<a href="https://www.facebook.com/SunLand.SunGroup/" target="_blank"><img alt="Face Đất Nền Hòa Xuân" src="/uploads/images/face%20dat%20nen%20hoa%20xuan-min.jpg" style="width: 20px; height: 20px;" /></a>&nbsp;&nbsp;<span style="font-family:times new roman,times,serif;"><a href="https://www.facebook.com/SunLand.SunGroup" target="_blank"><span style="color:#000000;">SunLand.SunGroup</span></a></span></p>\r\n\r\n<p class="alg-ctr f-space10 t-bold t-italic"><span style="font-size:16px;"><span style="font-family:times new roman,times,serif;"><strong>Tin tức mở bán, tư vấn, ký gửi bất động sản <a href="http://datnenhoaxuan.com/" onclick="window.open(this.href, '''', ''resizable=no,status=no,location=no,toolbar=no,menubar=no,fullscreen=no,scrollbars=no,dependent=no''); return false;">Sunland</a> - <a href="http://datnenhoaxuan.com/" onclick="window.open(this.href, '''', ''resizable=no,status=no,location=no,toolbar=no,menubar=no,fullscreen=no,scrollbars=no,dependent=no''); return false;">SunGroup tại Đà Nẵng</a></strong></span></span></p>\r\n\r\n<p class="alg-ctr t-bold"><span style="font-size:16px;"><span style="font-family:times new roman,times,serif;"><strong>Hotline tư vấn 24/24</strong></span></span></p>\r\n\r\n<table border="0" cellpadding="0" cellspacing="0" class="f-space10" style="width:100%;">\r\n	<tbody>\r\n		<tr>\r\n			<td style="text-align: left;"><a class="hotline-btn" href="tel:+84905183153"><span>Bấm gọi &nbsp;</span>0905 183 153</a></td>\r\n			<td style="text-align: center;"><a class="hotline-btn" href="tel:+84905290019"><span>Bấm gọi &nbsp;</span>0905 290 019</a></td>\r\n			<td style="text-align: right;"><a class="hotline-btn" href="tel:+84919001468"><span>Bấm gọi &nbsp;</span>0919 001 468</a></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 1, 1, 1476431227, 1480683973, 1),
(40, 6, 'Hòa Xuân 1', 'hoa-xuan-1', 0, 0, 1, '', 1, 0, 1483167213, 1483167213, 25),
(41, 6, 'Nam Hòa Xuân', 'nam-hoa-xuan-5honbwgvbe', 0, 0, 2, '', 1, 0, 1483167224, 1483167224, 25),
(42, 6, 'Nguyễn Tri Phương', 'nguyen-tri-phuong', 0, 0, 3, '', 1, 0, 1483167230, 1483167230, 25),
(43, 6, 'Làng Châu Âu', 'lang-chau-au', 0, 0, 4, '', 1, 0, 1483167236, 1483167236, 25),
(44, 6, 'Bất động sản khác', 'bat-dong-san-khac-kz76pr2i7n', 0, 0, 5, '', 1, 0, 1483167242, 1483609582, 25);

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_others_menu`
--

CREATE TABLE `olala3w_others_menu` (
  `others_menu_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL DEFAULT '-no-',
  `parent` int(11) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '1',
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `olala3w_others_menu`
--

INSERT INTO `olala3w_others_menu` (`others_menu_id`, `category_id`, `name`, `slug`, `parent`, `sort`, `is_active`, `hot`, `created_time`, `modified_time`, `user_id`) VALUES
(1, 78, 'Chọn hướng', '-no-', 0, 1, 1, 0, 1471225526, 1483581811, 25),
(2, 78, 'Đường', '-no-', 0, 2, 1, 0, 1471225537, 1471225537, 1),
(4, 78, 'Chọn theo giá', '-no-', 0, 3, 1, 1, 1471399295, 1483581598, 25),
(5, 78, 'Chữ ký', '-no-', 0, 4, 1, 1, 1475900130, 1476688007, 25),
(6, 78, 'Dự án ký gửi', '-no-', 0, 5, 1, 0, 1483167203, 1483167203, 25);

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_page`
--

CREATE TABLE `olala3w_page` (
  `page_id` int(11) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `content` longtext NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `views` bigint(20) NOT NULL DEFAULT '1',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `olala3w_page`
--

INSERT INTO `olala3w_page` (`page_id`, `alias`, `name`, `comment`, `content`, `is_active`, `views`, `modified_time`, `user_id`) VALUES
(27, 'copyright', 'Copyright', '', '<p><a href="http://datnenhoaxuan.com/" style="font-size: 14px; font-weight: 700;">Sàn giao dịch đất nền dự án SunGroup.</a></p>\r\n\r\n<p>Địa chỉ: Tầng 11 tòa nhà ACB, số <a href="http://datnenhoaxuan.com/">218 Bạch Đằng</a> TP <a href="http://datnenhoaxuan.com/">Đà Nẵng</a></p>\r\n\r\n<p>Copyright © 2016, All rights reserved.</p>\r\n', 1, 1, 1482803292, 25),
(108, 'contact_right', 'Thông tin liên hệ (trong chi tiết dự án)', '', '<div class="contact-right">\r\n<h3 class="cl-title">LIÊN HỆ TƯ VẤN MIỄN PHÍ &amp;&nbsp;KÝ GỬI</h3>\r\n\r\n<div class="box-contact">\r\n<div class="item-ct">\r\n<div class="left-ct">\r\n<div class="item-mb">\r\n<div class="box">\r\n<div class="img"><a href="https://www.facebook.com/hwthinh" target="_blank"><img alt="" src="/uploads/images/site/Thinh_x2.jpg" /></a></div>\r\n\r\n<div class="comment">\r\n<p><a href="https://www.facebook.com/hwthinh" target="_blank"><label class="cl-name">QUANG THỊNH</label></a><br />\r\n<label class="cl-pos">Chuyên viên tư vấn</label></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class="right-ct"><label><a href="skype:xuanhuy1905?chat" style="font-size: 15px; color: inherit;"><img alt="Skype" src="/uploads/images/site/skype.jpg" /> &nbsp;<strong>w.thinh</strong></a></label><label><a href="tel:+84919001468"><img alt="Viber" src="/uploads/images/site/viber.jpg" /></a><a href="tel:+84919001468"><img alt="" src="/uploads/images/site/zalo.jpg" /></a></label><label><a class="hotline-btn" href="tel:+84919001468"><span>Bấm gọi &nbsp;</span>0919 001 468</a></label></div>\r\n</div>\r\n\r\n<div class="item-ct">\r\n<div class="left-ct">\r\n<div class="item-mb">\r\n<div class="box">\r\n<div class="img"><a href="https://www.facebook.com/trungnguyen50189" target="_blank"><img alt="" src="/uploads/images/site/Trung_x2.jpg" /></a></div>\r\n\r\n<div class="comment">\r\n<p><a href="https://www.facebook.com/trungnguyen50189" target="_blank"><label class="cl-name">THÀNH TRUNG</label></a><br />\r\n<label class="cl-pos">Chuyên viên tư vấn</label></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class="right-ct"><label><a href="tel:+84905183153"><img alt="Viber" src="/uploads/images/site/viber.jpg" /></a><a href="tel:+84905183153"><img alt="" src="/uploads/images/site/zalo.jpg" /></a></label><label><a class="hotline-btn" href="tel:+84905183153"><span>Bấm gọi &nbsp;</span>0905 183 153</a></label></div>\r\n</div>\r\n\r\n<div class="item-ct">\r\n<div class="left-ct">\r\n<div class="item-mb">\r\n<div class="box">\r\n<div class="img"><img alt="" src="/uploads/images/site/Van_x2.jpg" /></div>\r\n\r\n<div class="comment">\r\n<p><label class="cl-name">THU VÂN</label><br />\r\n<label class="cl-pos">Chuyên viên tư vấn</label></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class="right-ct"><label><a href="tel:+84905290019"><img alt="Viber" src="/uploads/images/site/viber.jpg" /></a><a href="tel:+84905290019"><img alt="" src="/uploads/images/site/zalo.jpg" /></a></label><label><a class="hotline-btn" href="tel:+84905290019"><span>Bấm gọi &nbsp;</span>0905 290 019</a></label></div>\r\n</div>\r\n</div>\r\n</div>\r\n', 1, 1, 1483167155, 25),
(40, 'contact_maps', 'Bản đồ', '', '<p><iframe frameborder="0" height="250" scrolling="no" src="//maps.google.com/maps?q=16.0647873,108.2240856&amp;num=1&amp;t=m&amp;ie=UTF8&amp;z=16&amp;output=embed" width="100%"></iframe></p>\r\n', 1, 1, 1470802379, 1),
(83, 'contact_page', 'Thông tin liên hệ', '', '<h2><span style="color: #0d7d88; font-weight: 800;">Sàn giao dịch đât nền dự án SunGroup.</span></h2>\r\n\r\n<p>Tầng 11 tòa nhà ACB <a href="http://bando.datnenhoaxuan.com/map/" onclick="window.open(this.href, '''', ''resizable=no,status=no,location=no,toolbar=no,menubar=no,fullscreen=no,scrollbars=no,dependent=no''); return false;">218 Bạch Đằng TP Đà Nẵng</a></p>\r\n', 1, 1, 1485958172, 1),
(109, 'banner_right', 'Banner trong trang tin tức', '', '<div class="img"><a href="http://bando.datnenhoaxuan.com/map/" onclick="window.open(this.href, '''', ''resizable=no,status=no,location=no,toolbar=no,menubar=no,fullscreen=no,scrollbars=no,dependent=no''); return false;"><img alt="Đăng tin kí gởi miễn phí" src="/uploads/images/quangcao%20tin%20tuc(1).jpg" style="width: 300px; height: 215px;" /></a></div>\r\n', 1, 1, 1485957230, 1),
(110, 'banner', 'Banner dưới phần bất động sản', '', '<p style="text-align: center;"><a href="https://www.facebook.com/SunLand.SunGroup/" target="_blank"><img alt="" src="/uploads/images/cover_datnenhoaxuan.jpg" style="width: 1102px; height: 369px;" /></a></p>\r\n', 1, 1, 1485957844, 1),
(111, 'members', 'Danh sách nhân viên trang liên hệ', '', '<div class="showroom">\r\n<div class="img"><a href="http://datnenhoaxuan.com/"><img src="/uploads/images/site/sunland.jpg" /></a></div>\r\n</div>\r\n\r\n<div class="list-member clearfix">\r\n<div class="item-mb">\r\n<div class="box">\r\n<div class="img"><a href="https://www.facebook.com/hwthinh" target="_blank"><img alt="" src="/uploads/images/site/Thinh_x2.jpg" /></a></div>\r\n\r\n<div class="comment">\r\n<p><a href="https://www.facebook.com/hwthinh" target="_blank"><label class="cl-name">HUỲNH QUANG THỊNH</label></a><br />\r\n<label class="cl-pos">Chuyên viên tư vấn</label><br />\r\n<a class="cl-tel" href="tel:+84919001468">0919 001 468</a><br />\r\n<a class="cl-mail" href="mailto:thinh@datnenhoaxuan.com">thinh@datnenhoaxuan.com</a></p>\r\n\r\n<p style="text-align: center;"><a href="https://vn.linkedin.com/in/thinhhuynh" target="_blank"><img alt="" src="/uploads/images/linkedin_circle_color-512.png" style="width: 50px; height: 50px;" /></a></p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class="item-mb">\r\n<div class="box">\r\n<div class="img"><a href="https://www.facebook.com/trungnguyen50189" target="_blank"><img alt="" src="/uploads/images/site/Trung_x2.jpg" /></a></div>\r\n\r\n<div class="comment">\r\n<p><a href="https://www.facebook.com/trungnguyen50189" target="_blank"><label class="cl-name">NGUYỄN THÀNH TRUNG</label></a><br />\r\n<label class="cl-pos">Chuyên viên tư vấn</label><br />\r\n<a class="cl-tel" href="tel:+84905183153">0905 183 153</a><br />\r\n<a class="cl-mail" href="mailto:trung@datnenhoaxuan.com">trung@datnenhoaxuan.com</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class="item-mb">\r\n<div class="box">\r\n<div class="img"><img alt="" src="/uploads/images/site/Van_x2.jpg" /></div>\r\n\r\n<div class="comment">\r\n<p><label class="cl-name">PHẠM THỊ THU VÂN</label><br />\r\n<label class="cl-pos">Chuyên viên tư vấn</label><br />\r\n<a class="cl-tel" href="tel:+84905290019">0905 290 019</a><br />\r\n<a class="cl-mail" href="mailto:van@datnenhoaxuan.com">van@datnenhoaxuan.com</a></p>\r\n\r\n<p style="text-align: center;"><a href="http://linkedin.com/in/vân-phạm-761b6053" target="_blank"><img alt="" src="/uploads/images/linkedin_circle_color-512(1).png" style="width: 50px; height: 50px;" /></a></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n', 1, 1, 1487126161, 25),
(112, 'not_found', 'Không tìm thấy', '', '<p style="text-align: center;">Hiện không có sản phẩm theo yêu cầu trên.</p>\r\n\r\n<p style="text-align: center;">Vui lòng thay đổi yêu cầu hoặc liên hệ với Phòng kinh doanh Sunland theo Hotline để chúng tôi có thể hỗ trợ Quý khách cho đến lúc tìm được sản phẩm đúng mong muốn:</p>\r\n\r\n<p style="text-align: center;"><u>Hotline:</u></p>\r\n\r\n<p style="text-align: center;">1.&nbsp;0919 001 468<br />\r\n2. 0905 183 152<br />\r\n3. 0905 290 019</p>\r\n', 1, 1, 1473649284, 25),
(113, 'not_found2', 'Không tìm thấy bài viết', '', '<p style="text-align: center;">Hiện không có bài viết&nbsp;theo yêu cầu trên.</p>\r\n\r\n<p style="text-align: center;">Vui lòng thay đổi yêu cầu hoặc liên hệ với Phòng kinh doanh Sunland theo Hotline để chúng tôi có thể hỗ trợ Quý khách:</p>\r\n\r\n<p style="text-align: center;"><u>Hotline:</u></p>\r\n\r\n<p style="text-align: center;">1.&nbsp;0919 001 468<br />\r\n2. 0905 183 152<br />\r\n3. 0905 290 019</p>\r\n', 1, 1, 1473737935, 25),
(114, 'modal_consign', 'Lời chào ký gửi', '', '<table border="0" cellpadding="0" cellspacing="0" style="width: 100%;">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<div class="img"><img alt="" src="/uploads/images/site/189093.png" /></div>\r\n			</td>\r\n			<td style="text-align: center;">\r\n			<h1 class="tt-wc">BẠN CÓ ĐẤT VÀ MUỐN BÁN NHANH?</h1>\r\n\r\n			<p>HÃY KÝ GỬI TẠI ĐÂY<br />\r\n			Có hàng trăm khách ghé thăm website mỗi ngày.<br />\r\n			HOÀN TOÀN ĐƯỢC MIỄN PHÍ!</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 1, 1, 1484727023, 25),
(115, 'need_to_buy', 'Cần mua', '', '<p><u>Chúng tôi đang có nhu cầu mua:</u></p>\r\n', 1, 1, 1482914423, 25),
(116, 'adv_left', 'Quảng cáo bên trái', '', '<p><img alt="" src="/uploads/images/site/quang-cao.jpg" /></p>\r\n', 0, 1, 1483415144, 25),
(117, 'adv_right', 'Quảng cáo bên phải', '', '<p><img alt="" src="/uploads/images/site/quang-cao.jpg" /></p>\r\n', 0, 1, 1483415145, 25);

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
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL DEFAULT '-no-',
  `img` varchar(255) NOT NULL DEFAULT 'no',
  `img_note` varchar(255) NOT NULL,
  `upload_id` bigint(20) NOT NULL DEFAULT '0',
  `product_keys` varchar(50) NOT NULL,
  `acreage` double NOT NULL,
  `price` float NOT NULL DEFAULT '0',
  `block` varchar(255) NOT NULL,
  `direction` varchar(255) NOT NULL,
  `road` varchar(255) NOT NULL,
  `lot` varchar(255) NOT NULL,
  `lot_villa` int(1) NOT NULL DEFAULT '0',
  `lot_corner` int(1) NOT NULL DEFAULT '0',
  `tags` text NOT NULL,
  `status` int(1) DEFAULT '0',
  `comment` text CHARACTER SET utf8mb4 NOT NULL,
  `content` text CHARACTER SET utf8mb4 NOT NULL,
  `signature` int(11) NOT NULL DEFAULT '0',
  `youtube` varchar(255) NOT NULL,
  `youtube_img` varchar(255) NOT NULL,
  `maps` varchar(255) NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `pin` int(1) NOT NULL DEFAULT '0',
  `views` bigint(20) NOT NULL DEFAULT '1',
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `type` int(1) NOT NULL DEFAULT '2'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_product_menu`
--

CREATE TABLE `olala3w_product_menu` (
  `product_menu_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL DEFAULT '-no-',
  `project` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keywords` text NOT NULL,
  `parent` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `menu` int(1) NOT NULL DEFAULT '0',
  `img` varchar(255) NOT NULL DEFAULT 'no',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
  `content` longtext NOT NULL,
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
  `slug` varchar(255) NOT NULL DEFAULT '-no-',
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keywords` text NOT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '1',
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `img` varchar(255) NOT NULL DEFAULT 'no',
  `comment` text NOT NULL,
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
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `tel` varchar(20) NOT NULL,
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
  `address` varchar(255) NOT NULL DEFAULT 'no-address',
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
  `means` varchar(255) NOT NULL,
  `tour_type` varchar(255) NOT NULL,
  `destination` varchar(255) NOT NULL,
  `sale` int(3) NOT NULL DEFAULT '0',
  `schedule` text NOT NULL,
  `price_list_service` text NOT NULL,
  `upload_id` bigint(20) NOT NULL,
  `maps` text NOT NULL,
  `video` text NOT NULL,
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
  `slug` varchar(255) NOT NULL DEFAULT 'not-found',
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

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_views`
--

CREATE TABLE `olala3w_views` (
  `views_id` bigint(20) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `type` varchar(50) NOT NULL,
  `post` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Indexes for table `olala3w_bds_business`
--
ALTER TABLE `olala3w_bds_business`
  ADD PRIMARY KEY (`bds_business_id`);

--
-- Indexes for table `olala3w_bds_business_menu`
--
ALTER TABLE `olala3w_bds_business_menu`
  ADD PRIMARY KEY (`bds_business_menu_id`);

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
-- Indexes for table `olala3w_chat`
--
ALTER TABLE `olala3w_chat`
  ADD PRIMARY KEY (`chat_id`);

--
-- Indexes for table `olala3w_chat_onkeyup`
--
ALTER TABLE `olala3w_chat_onkeyup`
  ADD PRIMARY KEY (`chat_onkeyup_id`);

--
-- Indexes for table `olala3w_chat_online`
--
ALTER TABLE `olala3w_chat_online`
  ADD PRIMARY KEY (`chat_online_id`);

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
-- Indexes for table `olala3w_views`
--
ALTER TABLE `olala3w_views`
  ADD PRIMARY KEY (`views_id`);

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
  MODIFY `article_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=931;
--
-- AUTO_INCREMENT for table `olala3w_article_menu`
--
ALTER TABLE `olala3w_article_menu`
  MODIFY `article_menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=392;
--
-- AUTO_INCREMENT for table `olala3w_bds_business`
--
ALTER TABLE `olala3w_bds_business`
  MODIFY `bds_business_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=443;
--
-- AUTO_INCREMENT for table `olala3w_bds_business_menu`
--
ALTER TABLE `olala3w_bds_business_menu`
  MODIFY `bds_business_menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;
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
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT for table `olala3w_category_type`
--
ALTER TABLE `olala3w_category_type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `olala3w_chat`
--
ALTER TABLE `olala3w_chat`
  MODIFY `chat_id` double NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `olala3w_chat_onkeyup`
--
ALTER TABLE `olala3w_chat_onkeyup`
  MODIFY `chat_onkeyup_id` double NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `olala3w_chat_online`
--
ALTER TABLE `olala3w_chat_online`
  MODIFY `chat_online_id` double NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `olala3w_constant`
--
ALTER TABLE `olala3w_constant`
  MODIFY `constant_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
--
-- AUTO_INCREMENT for table `olala3w_contact`
--
ALTER TABLE `olala3w_contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `olala3w_core_privilege`
--
ALTER TABLE `olala3w_core_privilege`
  MODIFY `privilege_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4387;
--
-- AUTO_INCREMENT for table `olala3w_core_role`
--
ALTER TABLE `olala3w_core_role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `olala3w_core_user`
--
ALTER TABLE `olala3w_core_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
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
  MODIFY `gallery_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=590;
--
-- AUTO_INCREMENT for table `olala3w_gallery_menu`
--
ALTER TABLE `olala3w_gallery_menu`
  MODIFY `gallery_menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
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
  MODIFY `online_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106849;
--
-- AUTO_INCREMENT for table `olala3w_online_daily`
--
ALTER TABLE `olala3w_online_daily`
  MODIFY `online_daily_id` double NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=586;
--
-- AUTO_INCREMENT for table `olala3w_order`
--
ALTER TABLE `olala3w_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `olala3w_others`
--
ALTER TABLE `olala3w_others`
  MODIFY `others_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `olala3w_others_menu`
--
ALTER TABLE `olala3w_others_menu`
  MODIFY `others_menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `olala3w_page`
--
ALTER TABLE `olala3w_page`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;
--
-- AUTO_INCREMENT for table `olala3w_prjname`
--
ALTER TABLE `olala3w_prjname`
  MODIFY `prjname_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `olala3w_product`
--
ALTER TABLE `olala3w_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=986;
--
-- AUTO_INCREMENT for table `olala3w_product_menu`
--
ALTER TABLE `olala3w_product_menu`
  MODIFY `product_menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;
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
  MODIFY `upload_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2201;
--
-- AUTO_INCREMENT for table `olala3w_views`
--
ALTER TABLE `olala3w_views`
  MODIFY `views_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `olala3w_vote`
--
ALTER TABLE `olala3w_vote`
  MODIFY `vote_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
