-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2017 at 12:01 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ol_temp`
--

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_article`
--

CREATE TABLE IF NOT EXISTS `olala3w_article` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=950 ;

--
-- Dumping data for table `olala3w_article`
--

INSERT INTO `olala3w_article` (`article_id`, `article_menu_id`, `name`, `slug`, `title`, `description`, `keywords`, `img`, `img_note`, `address`, `price`, `block`, `flat`, `open_sale`, `type`, `upload_id`, `comment`, `content`, `is_active`, `hot`, `views`, `created_time`, `modified_time`, `user_id`) VALUES
(922, 455, 'Startup giá trị nhất Đông Nam Á chuẩn bị IPO tỷ USD', 'startup-gia-tri-nhat-dong-nam-a-chuan-bi-ipo-ty-usd', '', '', '', 'startup-gia-tri-nhat-dong-nam-a-chuan-bi-ipo-ty-usd-1496816185.jpg', '', '', 0, 0, 0, 0, 0, 1872, 'Sea - hãng công nghệ với tên trước đây là Garena - có khả năng huy động được 1 tỷ USD sau khi IPO.', '<p>Theo một nguồn tin thân cận,&nbsp;Sea đã nộp đơn xin IPO lên Uỷ ban Chứng khoán Mỹ (SEC). Hãng công nghệ này đang cân nhắc niêm yết vào đầu năm sau.</p>\r\n\r\n<p>Hiện tại, Sea đang hợp tác với 2 ngân hàng Goldman Sachs và Morgan Stanley để bàn về việc bán cổ phiếu. Theo một đạo luật của Mỹ, các doanh nghiệp có doanh thu dưới 1 tỷ USD một năm có thể tự nộp đơn IPO lên SEC và không cần công bố thông tin chi tiết ra bên ngoài.</p>\r\n\r\n<p>Sea dự kiến huy động được 1 tỷ USD đợt này. Đồng thời, đây có thể là thương vụ IPO công nghệ lớn nhất khu vực Đông Nam Á và cũng là cơ hội cho các cổ đông như Tencent.</p>\r\n\r\n<table border="0" cellpadding="3" cellspacing="0">\r\n	<tbody>\r\n		<tr>\r\n			<td style="text-align: center;"><img alt="startup-gia-tri-nhat-dong-nam-a-chun-bi-ipo-ty-usd" data-natural-width="500" data-pwidth="660" data-width="500" src="http://img.f25.kinhdoanh.vnecdn.net/2017/05/24/Forrest-Li-5124-1495629209.jpg" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Forrest Li thành lập Garena từ năm 2009 trước khi doanh nghiệp này&nbsp;đổi tên thành Sea hồi đầu tháng này.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Đầu tháng này, Sea đã nhận được thêm 550 triệu USD trong vòng huy động vốn để cạnh tranh với gã khổng lồ Alibaba tại Indonesia. Các nhà đầu tư của Sea là các công ty giàu nhất trong khu vực như&nbsp;GDP Venture&nbsp;hay JG Summit Holdings.&nbsp;GDP Venture&nbsp;được điều hành bởi con trai ông trùm Indonesia - Budi Hartono, còn JG Summit được tỷ phú người Philippines - John Gokongwei sáng lập.</p>\r\n\r\n<p>Năm 2009, doanh nhân Forrest Li thành lập công ty này (tiền thân là Garena) với mục đích kinh doanh trò chơi trực tuyến. Sau đó, Sea đã phát triển sang lĩnh vực mua sắm trên di dộng và các dịch vụ thanh toán.</p>\r\n\r\n<p>Việc Sea niêm yết tại nước ngoài có thể là một đòn đánh mạnh vào tham vọng của Singapore. Quốc gia này đang rất muốn các hãng khởi nghiệp niêm yết tại thị trường trong nước để tạo thành một trung tâm cho các doanh nghiệp phát triển nhanh và sáng tạo. Hiện tại, sàn chứng khoán Singapore gần đạt được thoả thuận với các nhà quản lý để phát triển một hệ thống để kết nối các startup với các nhà đầu tư nhằm khuyến khích họ IPO tại đây.</p>\r\n\r\n<p style="text-align: right;"><strong>Anh Tú</strong><br />\r\n<em>(Theo Bloomberg)</em></p>\r\n', 1, 0, 1, 1496816040, 1496912947, 1),
(920, 455, 'Những điểm đến khơi gợi ý tưởng kinh doanh cho startup', 'nhung-diem-den-khoi-goi-y-tuong-kinh-doanh-cho-startup', '', '', '', 'nhung-diem-den-khoi-goi-y-tuong-kinh-doanh-cho-startup-1496815975.jpg', '', '', 0, 0, 0, 0, 0, 1870, 'Từng góc đường, con phố ở London, Singapore, Bắc Kinh hay dạo bộ trên biển, đến một nơi thật yên tĩnh... có thể mang lại cho bạn cảm hứng mới.', '<p>“Tôi yêu thích công việc mình đang làm. Nhưng có những khoảnh khắc tôi cảm thấy mỏi mệt và buồn bã. Đó là lúc tôi biết mình nên dừng lại một chút và thừa nhận rằng có lẽ cần phải xả hơi”, Kara Pangilinan, nghệ sĩ kiêm nhà sáng lập thương hiệu nghệ thuật DetailsInk, Philippines chia sẻ.&nbsp;</p>\r\n\r\n<p>Với Neal Moore, nhà sáng lập và giám đốc nội dung của Click2View, một công ty marketing tại Singapore, thành phần cơ bản trong không gian sáng tạo là sự tương phản. “Nó có thể nằm trong con người, thời tiết, trang trí hoặc bất cứ thứ gì”, anh nói. Trong khi đó,&nbsp;Pangilinan cho biết chỉ cần một nơi tĩnh tâm để lắng nghe những suy nghĩ của chính mình và tập hít thở tốt hơn.&nbsp;</p>\r\n\r\n<p>Dưới đây là một vài điểm dừng chân mà các nhà sáng lập có thể thử nghĩ đến, theo&nbsp;Inc.</p>\r\n\r\n<p>London</p>\r\n\r\n<p>Đây là một trong những tâm điểm của thế giới về cả nghệ thuật, văn hóa lẫn tài chính. “London là thành phố hiện đại với 2.000 năm di sản, nơi có những toàn nhà lấp lánh cùng công trình kiến trúc cổ đại có tuổi đời hàng nghìn năm. Nơi đó đổi thay với thời tiết và thời tiết thì thay đổi mỗi ngày”, Moore nhận xét.&nbsp;</p>\r\n\r\n<p>Một số nơi được yêu thích như Bảo tàng quốc gia, Học viện hoàng gia và Học viện điện ảnh Anh. Những điểm đến không chỉ dành cho các cuộc triển lãm mà còn thu hút bởi môi trường sống. “Ngay cả những con phố cũng có thể trở thành nguồn cảm hứng cho bạn”, Moore nói thêm.&nbsp;</p>\r\n\r\n<p><strong>Singapore</strong></p>\r\n\r\n<p>Singapore chính là trung tâm của Đông Nam Á. “Nơi đây rất trẻ trung và mang chất ngạo mạn của tuổi trẻ, rất có thể sẽ giúp bạn tạo ra những điều mới mẻ. Thỉnh thoảng ở London bạn sẽ có cảm giác mọi thứ đều đã hoàn thiện nhưng tại đảo quốc sử tử thì tất cả mang đến cảm giác vẫn còn gì đó để tiếp tục thực hiện”, Moore chia sẻ.&nbsp;</p>\r\n\r\n<p>Roslyn Teng, nhà đồng sáng lập dịch vụ phong cách sống cho người Singapore mang tên Made Real kiếm tìm những không gian mở tại đây để nạp lại năng lượng. “Ý tưởng của Made Real xuất hiện khi chúng tôi ăn một bữa ngẫu hứng tại Living Cafe. Đó là một không gian tuyệt vời cho những cuộc thảo luận hay gặp gỡ trong ngày và trở thành điểm đến ấm cúng khi màn đêm buông xuống”, anh diễn giải.&nbsp;</p>\r\n\r\n<p>Teng cũng gợi ý đến thăm hòn đảo Sentosa và Tanjong Beach Club nổi tiếng ở đây. “Tôi đã có những cuộc trò chuyện rất thú vị về việc kinh doanh, các sản phẩm, tham vọng của bản thân và nguồn cảm hứng khi đi dạo dọc bờ biển xinh đẹp cùng những con người ngẫu hứng”.</p>\r\n\r\n<table border="0" cellpadding="3" cellspacing="0">\r\n	<tbody>\r\n		<tr>\r\n			<td style="text-align: center;"><img alt="nhung-diem-den-khoi-goi-y-tuong-kinh-doanh-cho-startup" data-natural-width="500" data-pwidth="660" data-width="500" src="https://i-startup.vnecdn.net/2017/06/06/recharge-5906-1496712683.jpg" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Nạp lại năng lượng là điều cần thiết đối với bất cứ nhà khởi nghiêp nào, bởi đó là một chặng đường dài đầy chông gai.&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Bắc Kinh</strong></p>\r\n\r\n<p>Thủ đô này có các công trình kiến trúc nổi tiếng. Với những người lần đầu đến đây, khó có thể tượng tưởng giữa thành phố hiện đại và sầm uất lại có thể tồn tại không gian nghệ thuật mang tên 798 Art Zone.&nbsp;</p>\r\n\r\n<p>“Nơi này tạo cho tôi cảm giác tĩnh tâm và tập hợp các suy nghĩ, điều mà đôi lúc tôi không thể làm được khi ngồi trong văn phòng làm việc”, Yeoh Chen Chow, đồng sáng lập Fave, cho biết.</p>\r\n\r\n<p><strong>Hơn cả một điểm đến</strong></p>\r\n\r\n<p>Với Pangilinan, bất cứ nơi nào cách xa thành phố, đặc biệt là biển, sẽ là một lựa chọn hợp lý cho một chuyến xả hơi cần thiết. Cô nói không có một nơi đặc biệt khiến cô quay lại nhưng chuyến đi mỗi giữa năm luôn mang đến một nguồn năng lượng mới.</p>\r\n\r\n<p>“Còn nếu không thể rời khỏi Manila, tôi sẽ ‘hẹn hò’ với chính mình tại một nhà hàng yên tĩnh. Đó là khi bật chế độ cuộc sống, chuyển điện thoại sang chế độ máy bay, đắm mình trong các kế hoạch và biến mất trong một khoảnh khắc”, nhà sáng lập&nbsp;DetailsInk cho biết.&nbsp;</p>\r\n\r\n<p>Thăm thú các điểm đến mới có thể tạo ra những ý tưởng sáng tạo và thời gian nghỉ ngơi. Tuy nhiên, đôi khi cũng không đồng nghĩa phải đến một nơi thật đặc biệt, đó có thể là bất cứ đâu.&nbsp;</p>\r\n\r\n<p>Theo Philip Cheang, đồng sáng lập công ty thiết kế và phát triển phần mềm By Implication tại Philippines, việc chuyển động, đặc biệt là đi bộ, mang đến những sáng tạo trong suy nghĩ. "Tôi thường ghi lại những sản phẩm, hành vi và thiết kế thú vị khi du lịch. Có lẽ đó cũng là lý do khiến tôi yêu thích việc đi bộ bởi nó mở ra cho bạn những hành trình khám phá rất ngẫu hứng”.&nbsp;</p>\r\n\r\n<p>CEO giải thích thêm là mỗi lần đi nước ngoài và du lịch, anh luôn tìm thấy cảm hứng một cách bất ngờ.&nbsp;Cheang&nbsp;thường chụp lại và ghi chép để tạo thành một album sống động của các bức ảnh về tàu hỏa, xe buýt, bảng hiệu, ảnh chụp màn hình của các ứng dụng, bản đồ và con đường.&nbsp;</p>\r\n\r\n<p>Với một số người, việc sạc năng lượng có thể chỉ đơn giản là thay đổi suy nghĩ theo hướng rộng mở và nắm bắt mọi nhịp điệu thay đổi của thế giới. Chỉ cần ra khỏi văn phòng, ít nhất là thoát khỏi những bức tường đã trói buộc suy nghĩ của bạn.</p>\r\n\r\n<p style="text-align: right;"><strong>Nhi Yến</strong><br />\r\n<em>(Theo V</em>nexpress.net<em>)</em></p>\r\n', 1, 0, 32, 1496803200, 1496815975, 1),
(940, 455, 'Startup Việt nhận 1 triệu USD từ quỹ đầu tư của Singapore', 'startup-viet-nhan-1-trieu-usd-tu-quy-dau-tu-cua-singapore', '', '', '', 'startup-viet-nhan-1-trieu-usd-tu-quy-dau-tu-cua-singapore-1496913509.jpg', '', '', 0, 0, 0, 0, 0, 1899, 'Một startup Việt họat động trong lĩnh vực kinh doanh thực phẩm sạch vừa nhận 1 triệu USD từ quỹ đầu tư Singapore', '<p>Công ty cổ phần phát triển Việt Nam toàn cầu (VNI) vừa tiếp nhận một triệu USD vốn đầu tư từ Công ty World Gold Investments PTE. LTD (World Gold) - một quỹ một quỹ đầu tư tài chính từ Singapore. World Gold Investments cho biết cam kết đầu tư vào VNI để cùng phát triển các hoạt động kinh doanh của VNI, đặc biệt là các dự án kinh doanh tiêu dùng, thực phẩm sạch, nhà hàng…&nbsp;</p>\r\n\r\n<p>World Gold cũng cam kết sẽ đầu tư thêm nguồn vốn theo từng giai đoạn phát triển của các dự án kinh doanh của VNI trong các năm tới tại Việt Nam và các quốc gia khác. Dự kiến tổng vốn đầu tư của quỹ đầu tư Singapore cho VNI sẽ lên tới 15 triệu USD trong giai đoạn 2017-2019 nếu các mô hình của đơn vị này hoạt động hiệu quả</p>\r\n\r\n<p>VNI là một doanh nghiệp khởi nghiệp, được thành lập tháng 10/2016, hoạt động theo mô hình holding. VNI đang đầu tư và quản lý 6 công ty con trong các lĩnh vực như công ty phát triển chuỗi, công ty thương mại, công ty luật, công ty đào tạo, công ty truyền thông và công ty công nghệ.</p>\r\n\r\n<p>Đại diện World Gold cũng cho biết, quỹ này dành sự quan tâm và đầu tư cho mô hình “từ nông trại đến bàn ăn” do VNI phát triển tại thị trường Việt Nam, bao gồm: chuỗi cửa hàng thực phẩm sạch Gonfarm và chuỗi Nhà hàng Gontasty. Hiện tại, đã có 5 cửa hàng thực phẩm sạch Gonfarm đi vào hoạt động tại Hà Nội, TP HCM và một nhà hàng. &nbsp;</p>\r\n\r\n<p style="text-align: right;"><strong>Ngọc Tuyên</strong></p>\r\n', 1, 0, 37, 1496913480, 1496913509, 1),
(943, 447, 'Khai Hoan Viet', 'khai-hoan-viet-28x52apfzk', '', '', '', 'khai-hoan-viet-1497932513.png', '', '', 0, 0, 0, 0, 0, 1917, 'công ty thành viên Khai Hoan Viet', '<p>đang cập nhập....</p>\r\n', 1, 0, 1, 1497932460, 1497932806, 1),
(944, 447, 'Tulip Restaurant', 'tulip-restaurant-rxzl7rp0be', '', '', '', 'tulip-restaurant-1497932530.png', '', '', 0, 0, 0, 0, 0, 1918, 'Nhà hàng Tulip', '<p>đang cập nhập....</p>\r\n', 1, 0, 1, 1497932460, 1497943639, 1),
(945, 447, 'Viet A', 'viet-a', '', '', '', 'viet-a-1497932550.png', '', '', 0, 0, 0, 0, 0, 1919, 'công ty thành viên Viet A', '<p>đang cập nhập....</p>\r\n', 1, 0, 1, 1497932520, 1497932733, 1),
(946, 447, 'Trường Mầm Non 29/3', 'truong-mam-non-29-3', '', '', '', 'truong-mam-non-29-3-1497932570.png', '', '', 0, 0, 0, 0, 0, 1920, 'Ngôi trường có bề dày truyền thống, đạt chuẩn chất lượng cao, hiện là một trong những trường điểm của thành phố.', '<p>đang cập nhập....</p>\r\n', 1, 0, 1, 1497932520, 1497942973, 1),
(947, 447, 'F.Home', 'f-home-6jzrk99bzg', '', '', '', 'f-home-1497932586.png', '', '', 0, 0, 0, 0, 0, 1921, 'Chung cư cao cấp F.Home', '<p>đang cập nhập....</p>\r\n', 1, 0, 1, 1497932520, 1497943270, 1),
(948, 447, 'Hai Van Long', 'hai-van-long-rtsacu39fe', '', '', '', 'hai-van-long-1497932598.png', '', '', 0, 0, 0, 0, 0, 1922, 'công ty thành viên Hai Van Long', '<p>đang cập nhập....</p>\r\n', 1, 0, 2, 1497932580, 1497932675, 1),
(949, 447, 'Zen Diamond', 'zen-diamond-g3qe7ipsu5', '', '', '', 'zen-diamond-1497932616.png', '', '', 0, 0, 0, 0, 0, 1923, 'Zen Diamond Suites Danang hiện là “viên ngọc” sáng nhất với 290 phòng và căn hộ có hướng nhìn trực tiếp ra sông Hàn và cầu Thuận Phước.', '<p>đang cập nhập....</p>\r\n', 1, 0, 3, 1497932580, 1497942997, 1),
(924, 455, 'Lý do ASEAN trở thành miền đất hứa cho lĩnh vực IoT', 'ly-do-asean-tro-thanh-mien-dat-hua-cho-linh-vuc-iot', '', '', '', 'ly-do-asean-tro-thanh-mien-dat-hua-cho-linh-vuc-iot-1496816664.jpg', '', '', 0, 0, 0, 0, 0, 1874, 'Tiềm năng phát triển kinh tế, tăng trưởng doanh nghiệp vừa và nhỏ, sự vào cuộc của các công ty viễn thông thúc đẩy IoT ở Đông Nam Á phát triển.', '<p>Với dân số hơn 600 triệu người, GDP đạt 2,31 nghìn tỷ USD năm 2016, Đông Nam Á được đánh giá là thị trường lớn, đặc biệt là lĩnh vực IoT (Internet of Things) - mạng lưới kết nối vạn vật qua Internet.</p>\r\n\r\n<p><strong>Tiềm năng phát triển kinh tế</strong></p>\r\n\r\n<p>Theo báo cáo tiềm năng phát triển kinh tế thế giới từ Quỹ tiền tệ quốc tế IMF năm 2016, Myanmar có tốc độ phát triển kinh tế nhanh. Hai quốc gia đại diện cho ASEAN cũng nằm trong top 10 là Lào và Campuchia.</p>\r\n\r\n<p>Bảy quốc gia còn lại trong khu vực gồm Brunei, Indonesia, Malaysia, Philippines, Singapore, Thái Lan và Việt Nam có mức tăng trưởng GDP bình quân trên 4%. Dự báo trong 2-3 năm tới, mức tăng trưởng tại Đông Nam Á dự kiến 5-6% so với mức tăng trưởng toàn cầu 3%.&nbsp;</p>\r\n\r\n<table border="0" cellpadding="3" cellspacing="0">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="ly-do-asean-tro-thanh-mien-dat-hua-cho-linh-vuc-iot" data-natural-width="500" data-pwidth="660" data-width="500" src="https://i-startup.vnecdn.net/2017/05/23/IoT1-7646-1495509622.jpg" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>ASEAN là thị trường tiềm năng phát triển IoT.&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Tốc độ tăng trưởng nhanh trong khu vực đã thu hút nhiều nhà đầu tư trên thế giới. Năm 2016, ASEAN xuất hiện nhiều thành viên và công ty mới. Điển hình là Alibaba đã đầu tư 1 tỷ USD vào Lazada. Bên cạnh đó, Amazon đã đầu tư 600 triệu USD vào Indonesia để xây dựng hệ thống giao hàng trong khu vực.&nbsp;</p>\r\n\r\n<p><strong>Tăng trưởng các doanh nghiệp nhỏ và vừa</strong></p>\r\n\r\n<p>Thế giới đã chứng kiến những sản phẩm áp dụng công nghệ dựa trên nền tảng IoT của các doanh nghiệp nhỏ và vừa trong nhiều lĩnh vực. Từ việc thu hoạch sầu riêng dựa trên dữ liệu thời gian thực tế áp dụng IoT cho tới chăm sóc bệnh nhân bằng những phân tích y tế… Các doanh nghiệp nhỏ đang tạo ra tiềm năng thị trường lớn dành cho các nhà cung cấp giải pháp IoT.</p>\r\n\r\n<p>Tại Indonesia, nơi có gần 60 triệu doanh nghiệp nhỏ và vừa, mức tăng trưởng của các công ty này khoảng 10% từ năm 2009, chiếm &nbsp;99,9% tổng số doanh nghiệp trong nước và đóng góp &nbsp;hơn 60% tăng trưởng GDP. Theo ngân hàng phát triển châu Á ADB, số lượng các doanh nghiệp nhỏ tại Việt Nam và Philipines tăng hơn 45% và 20% trong giai đoạn 5 năm (2009-2014).</p>\r\n\r\n<p>Trong khảo sát về "Lưu trữ đám mây” được thực hiện bởi Rightscale vào năm 2016, có 32% doanh nghiệp nhỏ và vừa sử dụng “đám mây tập trung” so với con số 25% doanh nghiệp lớn sử dụng công nghệ này. Đây chính là những điều đang diễn ra tại ASEAN, khi các công ty nhỏ đang trở nên nhanh nhạy, tích cực áp dụng giải pháp liên quan đến IoT trong mỗi ngành nghề tương ứng.&nbsp;</p>\r\n\r\n<p><strong>Sự vào cuộc của các công ty viễn thông&nbsp;</strong></p>\r\n\r\n<p>Các công ty viễn thông đại diện cho nhóm doanh nghiệp lớn tại Đông Nam Á đang tích cực đầu tư vào lĩnh vực IoT. Chẳng hạn Singtel và Starhub của Singapore đang triển khai Singtel Innov8 và i3 để hỗ trợ hệ sinh thái khởi nghiệp tại Singapore.</p>\r\n\r\n<p>Trong khu vực, các công ty viễn thông khác cũng có cùng mục đích tương tự như DTAC Accelerate của DTAC, Globe Telecom Kickstart Ventures hay FPT Ventures của FPT (Việt Nam).</p>\r\n\r\n<p>Trong vài năm qua, các công ty viễn thông cố gắng chào bán các sản phẩm IoT tới khách hàng. Có thể thấy Indosat đã nỗ lực xây dựng và cải thiện sản phẩm IoT trong suốt 2 năm từ 2014-2015. Tháng 11/2016, công ty này tung ra Nexthing, sản phẩm sử dụng nền tảng IoT để tập trung hỗ trợ phát triển lĩnh vực này cho các doanh nghiệp địa phương.&nbsp;</p>\r\n\r\n<p>2017 dự đoán là năm có nhiều khởi sắc đối với thị trường khu vực ASEAN. Đây có thể sẽ trở thành thị trường chiến lược dành cho các tập đoàn, doanh nghiệp có nền tảng IoT mạnh mẽ và đa dạng.&nbsp;</p>\r\n\r\n<p style="text-align: right;"><strong>Lạc Thảo</strong><br />\r\n<em>(Theo Tech in Asia)</em></p>\r\n', 1, 1, 6, 1496816460, 1497943496, 1),
(925, 446, 'Tổng quan', 'gioi-thieu-chung', '', '', '', 'no', '', '', 0, 0, 0, 0, 0, 1875, '', '<table border="0" cellpadding="1" cellspacing="5" style="width:100%;">\r\n	<tbody>\r\n		<tr style="position:relative">\r\n			<td>&nbsp;</td>\r\n			<td style="padding-right: 24px;">\r\n			<p style="background-color: #ececec;"><img alt="" src="/uploads/images/120.png" /></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="background-color: #2fb6cc;padding: 50px 45px;color: #fff;font-size: 14px;font-weight: 300;position: absolute;width: 55%;top: 154px;">Công ty CP Đầu tư Tổng hợp Khởi nghiệp Việt (<span style="color:#fff;">V.Star-tup</span>) xác lập giá trị tiên phong và khác biệt, dựa trên nền tảng: Con người - Công nghệ - Kết nối. V.Startup nhanh chóng trở thành một trong những công ty đa ngành đem lại nhiều lợi nhuận cùng các dự án tiêu biểu.</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="padding-right: 20px; padding-left: 45px;">\r\n			<p style="margin-top: -60px;font-size: 14px;font-weight: 300;color: #000;">Với sự hỗ trợ của các chuyên gia hàng đầu về công nghệ thông tin đến từ Thung lũng Silicon (Mỹ), sự vận dụng khéo léo công nghệ, sử dụng con người thông minh, kết nối con người thông minh, V.Startup trở thành một trong những doanh nghiệp có tiềm năng phát triển cao ở nhiều ngành nghề, nhiều lĩnh vực.</p>\r\n			</td>\r\n			<td>\r\n			<p style="margin-top:40px; font-size: 14px;font-weight: 300;color: #000;width: 93%; margin-left:0px;">Có vốn điều lệ 100 tỉ đồng, dự kiến đến..2018 sẽ…(tương đương…USD). Chiến lược phát triển của V.Startup trong những năm tới sẽ tập trung vào phát triển bền vững, lấy con người làm trọng tâm để khẳng định thương hiệu của mình.</p>\r\n\r\n			<p style="font-size: 14px;font-weight: 300;color: #000;width: 93%; margin-left:0px;"><span style="color: #000;">V.Startup</span>&nbsp;với chiến lược phát triển khác biệt, tạo nên những sản phẩm thông minh mang lại giá trị kinh tế cao. Vì vậy, V.Startup được các đối tác trong và ngoài nước tin tưởng, đánh giá cao và chủ động liên kết, hợp tác. Đó là các mối quan hệ lâu bền mà V.Startup trân trọng và gìn giữ.&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 1, 0, 272, 1496821320, 1497933281, 1),
(941, 470, 'Thông điệp HĐQT', 'thong-diep-hdqt-x37swdp8b0', '', '', '', 'no', '', '', 0, 0, 0, 0, 0, 1906, '', '<div style="position: relative; margin-bottom: 27px;">\r\n<div>\r\n<div>\r\n<div style="margin-right: 260px; text-align: right;"><img alt="" src="/uploads/images/manager_startup.png" /></div>\r\n</div>\r\n\r\n<p style="margin-right: 260px; font-size: 14px; color: #000; padding-left: 10px;">Được thành lập năm 2016 - Năm Khởi nghiệp Quốc gia, <span style="color: #2fb6cc;">V.Startup</span> đáp ứng nhu cầu ngày càng cao của cộng đồng khởi nghiệp. Với tâm huyết kiến tạo môi trường sáng tạo, chuyên nghiệp, V.Startup là bệ phóng để các doanh nghiệp khởi nghiệp thành công với chuỗi liên kết.<br />\r\n<span style="font-size: 16px; font-style: italic;  text-align: right; display: block;color: #074a91;">CON NGƯỜI - CÔNG NGHỆ - KẾT NỐI</span></p>\r\n\r\n<div style="position: absolute; bottom: 122px; right: 4px; background-color: #074a91; color: #fff; padding: 26px 35px; text-align: center;">\r\n<strong style="font-size: 20px;"><span>Ông: Phạm Tấn Củng</span></strong><br />\r\n<span style="font-size: 14px;">Chủ tịch Hội Đồng Quản Trị V.STARTUP</span></div>\r\n</div>\r\n</div>\r\n\r\n<div style="position: relative;">\r\n<div style="\r\n    background-color: #2fb6cc;\r\n    color: #fff;\r\n    padding: 30px 10px 20px 10px;\r\n    margin-bottom: 20px;\r\n">\r\n<p style="\r\n    text-align: justify;\r\n    width: 68%;\r\n    float: left;\r\n">V.Startup tiên phong trong kiến tạo các giá trị mới.Bằng bản lĩnh, tâm huyết, kinh nghiệm của mình V.Startup khao khát đem lại những giá trị tốt đẹp cho cộng đồng. Ở V.Startup, tinh thần kết nối luôn được đề cao. Chia sẻ kinh nghiệm, chia sẻ cơ hội, kết nối để thành công. Bằng nỗ lực của mình, V.Startup là minh chứng rõ nét cho giá trị cốt lõi của khởi nghiệp.</p>\r\n\r\n<div style="clear: both;">&nbsp;</div>\r\n</div>\r\n\r\n<div>\r\n<div div="" style="\r\n    float: left;\r\n    width: 40%;\r\n    padding: 10px 10px 20px 10px;\r\n    font-size: 14px;\r\n    color: #000;\r\n">\r\n<p>Định hướng của V.Startup là luôn bắt kịp, hòa nhập và đón đầu những xu hướng kinh doanh mới trên thị trường. Với lợi thế am hiểu thị trường, luật pháp và đất đai, V.Startup sẽ giúp các tập đoàn, công ty trong và ngoài nước giảm thiểu rủi ro tài chính khi hợp tác, đầu tư tại Việt Nam.</p>\r\n</div>\r\n\r\n<div style="\r\n    float: left;\r\n    background-color: #2fb6cc;\r\n    width: 60%;\r\n    padding: 10px 0 10px 50px;\r\n"><img alt="" src="/uploads/images/v_star.png" /></div>\r\n\r\n<div style="clear: both;">&nbsp;</div>\r\n</div>\r\n\r\n<div style="\r\n    background-color: #074a91;\r\n    color: #fff;\r\n    padding: 30px 25px;\r\n    font-size: 14px;\r\n    text-align: justify;\r\n    position: absolute;\r\n    top: 40px;\r\n    max-width: 222px;\r\n    right: 20px;\r\n">Tập thể V.Startup chung mục tiêu vì cộng đồng phát triển. Vì vậy, chúng tôi tôn trọng cổ đông, tôn trọng đồng nghiệp, nhân viên, khách hàng, cùng nhau cộng hưởng, kết nối để thành công.</div>\r\n</div>\r\n', 1, 0, 133, 1496992980, 1497953493, 1),
(926, 471, 'Tầm nhìn - Sứ mệnh - Giá trị ', 'tam-nhin-su-menh-gia-tri', '', '', '', 'no', '', '', 0, 0, 0, 0, 0, 1876, '', '<table cellpadding="1" cellspacing="5" style="margin-left:-6px;width:100%;">\r\n	<tbody>\r\n		<tr style="position: relative">\r\n			<td style="padding-right:5px;">\r\n			<p style="text-align: center;position: relative"><img alt="" src="/uploads/images/RpTvdhD5vxJA5p2O7pi9DBwdvision-mission%20for%20reference.jpg" style="height: 226px;" /> <strong style="position: absolute; top: 15px; right: 5px;"><span style="color: #fff;font-size: 25px;font-weight: 300;">TẦM NHÌN&nbsp;</span></strong></p>\r\n			</td>\r\n			<td style="padding-right:5px; padding-top: 15px;">\r\n			<p style="font-size: 14px; color: #000; text-align: justify;margin-top: -95px;">V.Startup định hướng trở thành một trong những công ty hàng đầu về quy mô và hiệu quả trong các lĩnh vực: Phát triển dự án, kinh doanh thương mại, Giáo dục, Công nghệ thông tin.</p>\r\n\r\n			<p style="text-align: right; "><span style="color: #2fb6cc;">V.Startup</span> kiến tạo môi trường khởi nghiệp&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="vertical-align: top;  padding-left:5px; padding-top: 30px">\r\n			<p style="font-size: 14px; color: #000; text-align: justify; margin-right: 12px;">Luôn luôn mang lại giá trị cao nhất cho khách hàng bằng sản phẩm và dịch vụ tốt nhất. Đó là những sản phẩm thông minh tăng cường sự kết nối, đem lại lợi nhuận kinh tế cao.</p>\r\n			</td>\r\n			<td style="text-align: center; position: absolute; top: 235px;">\r\n			<p><img alt="" src="/uploads/images/su_menh.png" style="height: 228px; width: 395px;" /> <strong style="position: absolute; bottom: 60px; right: 5px;"><span style="color: #fff;font-size: 25px;font-weight: 300;">SỨ MỆNH&nbsp;</span></strong></p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style="text-align: center; margin-top: 55px;margin-left: -50px; position:relative;"><img alt="" src="/uploads/images/congnghe.jpg" style="width: 822px; height: 138px;" /><span style="position: absolute;top: 50%; left: 50%;color: #fff;transform: translate(-50%,-50%);font-size: 24px;font-weight: 300;">CON NGƯỜI - CÔNG NGHỆ - KẾT NỐI.&nbsp;</span></p>\r\n\r\n<table border="0" cellpadding="1" cellspacing="0" style="width:100%;">\r\n	<tbody>\r\n		<tr>\r\n			<td style="text-align: center;background-color: #2fb6cc; padding: 15px;color:  #fff;font-size: 14px; width: 50%;"><span style="font-size:16px;"><strong style="text-align: center; color: #fff;font-size: 20px;">CON NGƯỜI</strong></span>\r\n\r\n			<p style="text-align: justify;">Khách hàng, đối tác và nguồn nhân lực là những yếu tố trọng tâm trong quá trình phát triển công ty CP Đầu tư Tổng hợp Khởi nghiệp Việt cũng như trong các cơ hội kinh doanh.</p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="text-align: center;background-color: #fff; padding: 15px;color:  #000;font-size: 14px; width: 50%;"><strong style="text-align: center;"><span style="color: #000; font-size: 20px;">CÔNG NGHỆ</span></strong>\r\n			<p style="text-align: justify;"><span style="color: #2fb6cc;">V.Startup</span> luôn tiên phong ứng dụng những thành tựu công nghệ mới nhất vào kinh doanh. Đây vừa là công cụ, vừa là chìa khóa giúp V.Startup phát triển ngày càng mạnh mẽ.</p>\r\n			</td>\r\n			<td style="text-align: center;background-color: #074a91;padding: 15px;color:  #fff;font-size: 14px; width: 50%;">\r\n			<p><span style="font-size:20px;"><strong>GIÁ TRỊ CỐT LÕI<strong style="color: #fff; text-align: center; font-size:20px;">&nbsp;</strong></strong></span></p>\r\n\r\n			<p>Công ty CP Đầu tư Tổng hợp Khởi nghiệp Việt (V.Startup)&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="text-align: center;background-color: #2fb6cc;padding: 15px;color:  #fff;font-size: 14px; width: 50%;"><strong style="color: #fff; text-align: center; font-size: 20px;">KẾT NỐI</strong>\r\n			<p style="text-align: justify;">V.Startup luôn chú trọng việc kết nối giữa con người với công nghệ, giữa doanh nghiệp với doanh nghiệp, từ đó tạo nên sức mạnh để doanh nghiệp phát triển bền vững.</p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', 1, 0, 213, 1496821620, 1497953997, 1),
(927, 460, 'Sơ đồ tổ chức', 'so-do-to-chuc-28qt137wop', '', '', '', 'no', '', '', 0, 0, 0, 0, 0, 1879, '', '<p style=" text-align: center; background-color: #2fb6cc; margin-bottom: 24px; padding: 10px;"><img alt="" src="/uploads/images/v_star.png" style="width: 186px; height: 155px;" /></p>\r\n\r\n<p style="padding-left: 160px;padding-right: 122px;font-size: 14px;">Tên công ty :&nbsp;<span style="color:#2fb6cc;"><strong>CÔNG TY CỔ PHẦN ĐẦU TƯ TỔNG HỢP KHỞI NGHIỆP VIỆT</strong></span>&nbsp;<br />\r\nTên viết tắt :&nbsp;<strong><span style="color:#2fb6cc;">V.STARTUP</span></strong><br />\r\nNăm thành lập 2016<br />\r\nChủ tịch HĐQT: Phạm Tấn Hùng<br />\r\nTổng Giám đốc: Trần Chí Nghĩa<br />\r\nVốn điều lệ: 100 tỷ đồng<br />\r\n<img alt="" src="/uploads/images/location.png" style="float: left; margin-right: 10px; color: #2fb6cc;\r\n" /><span>Trụ sở chính:<br />\r\n16 Lý Thường Kiệt, phường Thạch Thang, quận Hải Châu, Tp Đà Nẵng, Việt Nam.</span></p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/uploads/images/sodo.png" /></p>\r\n', 1, 0, 88, 1496822700, 1497925586, 1),
(928, 461, 'Ban lãnh đạo', 'ban-lanh-dao-l7ir9sx18n', '', '', '', 'no', '', '', 0, 0, 0, 0, 0, 1880, '', '<div style="position: relative; margin-bottom: 60px;">\r\n<div style=" margin-bottom: 20px; background-color: #2fb6cc; padding: 30px 35px 50px 20px; color: #Fff;font-size: 14px;">\r\n<p style="float: left; width: 72%; margin-bottom: 20px; ">Ông Phạm Tấn Củng là Chủ tịch Hội đồng quản trị Công ty Cổ phần Đầu tư Tổng hợp Khởi Nghiệp Việt.<br />\r\nÔng Củng có kinh nghiệm hơn 20 năm điều hành và quản lý doanh nghiệp. Hiện nay, ông Củng kiêm nhiệm các vai trò: Chủ tịch Hội đồng quản trị - Tổng Giám đốc Công ty Cổ phần Lương thực Đà Nẵng, Chủ tịch HĐQT Công ty CP Xuân Việt.<br />\r\nÔng Củng tốt nghiệp Cử nhân Kinh tế, Đại học Quản trị Kinh doanh Tp.HCM.</p>\r\n\r\n<div style="clear: both;">&nbsp;</div>\r\n</div>\r\n\r\n<div style="position: absolute; bottom: -24px; right: 20px;"><img alt="" src="/uploads/images/Untitled-1.jpg" style=" max-width: 200px; height: 278px;" /></div>\r\n\r\n<div style="position: absolute; bottom: -17px; right: 207px; background-color: #074a91; color: #fff;padding: 20px 60px; text-align: center; "><strong style=" font-size: 16px; ">PHẠM TẤN CỦNG</strong><br />\r\n<span style="font-size: 14px;">Chủ tịch Hội đồng quản trị</span></div>\r\n</div>\r\n\r\n<div style="position: relative; margin-bottom: 60px;">\r\n<div style=" margin-bottom: 20px; background-color: #2fb6cc; padding: 30px 35px 50px 30px; color: #Fff;font-size: 14px;">\r\n<p style="float: right; width: 73%; margin-bottom: 20px; ">Ông Trần Chí Nghĩa là Thành viên HĐQT kiêm Tổng Giám đốc Công ty Cổ phần Đầu tư Tổng hợp Khởi Nghiệp Việt.<br />\r\nÔng Nghĩa đồng thời là Thành viên Hội đồng Quản trị, Phó Tổng Giám đốc Công ty CP Lương thực Đà Nẵng.<br />\r\nÔng Nghĩa tốt nghiệp Thạc sĩ Chuyên ngành Quản trị Kinh doanh, Đại học Bách Khoa Tp Hồ Chí Minh.</p>\r\n\r\n<div style="clear: both;">&nbsp;</div>\r\n</div>\r\n\r\n<div style="position: absolute; bottom: -29px; left: 22px;"><img alt="" src="/uploads/images/14.png" style=" max-width: 200px; height: 283px;" /></div>\r\n\r\n<div style="position: absolute; bottom: -22px; left: 222px; background-color: #074a91; color: #fff;padding: 20px 60px; text-align: center; "><strong style=" font-size: 16px; ">Ths. TRẦN CHÍ NGHĨA</strong><br />\r\n<span style="font-size: 14px;">Tổng Giám đốc</span></div>\r\n</div>\r\n\r\n<div style="position: relative; margin-bottom: 60px;">\r\n<div style=" margin-bottom: 20px; background-color: #2fb6cc; padding: 30px 35px 50px 20px; color: #Fff;font-size: 14px;">\r\n<p style="float: left; width: 72%; margin-bottom: 20px; ">Ông Chương là thành viên HĐQT Công ty Cổ phần Đầu tư Tổng hợp Khởi Nghiệp Việt.<br />\r\nÔng Chương tốt nghiệp Cử nhân Quản trị kinh doanh Đại học Portsmouth, Singapore kiêm qua vị trí Giám đốc Công ty TNHH MTV Hải Vân Long, Phó Giám đốc Công ty CP Du lịch Dịch vụ và Đầu tư xây dựng Hội An, thành viên HĐQT Công ty CP Lương thực Đà Nẵng</p>\r\n\r\n<div style="clear: both;">&nbsp;</div>\r\n</div>\r\n\r\n<div style="position: absolute; bottom: -75px; right: 20px;"><img alt="" src="/uploads/images/Untitled-3.jpg" style=" max-width: 200px; height: 283px;" /></div>\r\n\r\n<div style="position: absolute; bottom: -60px; right: 219px; background-color: #074a91; color: #fff;padding: 20px 60px; text-align: center; "><strong style=" font-size: 16px; ">LÊ CÔNG CHƯƠNG</strong><br />\r\n<span style="font-size: 14px;">Thành viên HĐQT</span></div>\r\n</div>\r\n', 1, 0, 125, 1496822820, 1497954967, 1),
(929, 469, 'Phát triển dự án', 'phat-trien-du-an-gv6kx369eh', '', '', '', 'phat-trien-du-an-1496894431.jpg', '', '', 0, 0, 0, 0, 0, 1881, '', '<p>&nbsp; &nbsp;Đây là một trong những ngành nghề mũi nhọn của V.Startup. Công ty hiện đang làm chủ đầu tư nhiều dự án bất động sản tại Đà Nẵng và các tỉnh miền Trung.<br />\r\n&nbsp; &nbsp;Với mục tiêu đem đến cho khách hàng những trải nghiệm và dịch vụ tốt nhất cùng không gian sống đẳng cấp, V.Startup chú trọng đầu tư và phát triển các dự án bất động sản có vị trí trung tâm, đắc địa, khả năng sinh lời cao, đem lại lợi nhuận cho các nhà đầu tư của V.Startup.<br />\r\n<strong>Xây dựng và kinh doanh </strong>khách sạn, nhà ở, văn phòng làm việc, V.Startup đã tạo một chuỗi phát triển liên hoàn, đem lại giá trị kinh tế cao.<br />\r\n<strong>Tư vấn, quản lí bất động sản:</strong> Đội ngũ chuyên viên tư vấn tận tâm, giàu kinh nghiệm sẽ giúp quý khách quản lí và giao dịch bất động sản phù hợp với nhu cầu, làm gia tăng giá trị các bất động sản của khách hàng, bao gồm các dịch vụ: môi giới, định giá, sàn giao dịch, quảng cáo bất động sản.<br />\r\n<strong>Phát triển dự án</strong></p>\r\n\r\n<p style="text-align: center;"><strong><img alt="" src="/uploads/images/Full%20060617-8.jpg" /></strong></p>\r\n\r\n<p style="text-align: center;"><span style="color:#0000FF;"><strong>Phối cảnh dự án Nguyễn Tri Phương do V.Startup là chủ đầu tư</strong></span></p>\r\n\r\n<p>&nbsp; &nbsp;V.Startup có đội ngũ nhân lực giàu kinh nghiệm, có tầm nhìn chiến lược, am hiểu thị trường bất động sản, tìm kiếm và phát triển các dự án mang tính vượt trội so với các dự án đang hiện hữu trên thị trường. V.Startup xem trọng hiệu quả đầu tư, đảm bảo nguồn thu và lợi nhuận, xem quyền lợi và thành công của khách hàng là thành công của chính mình.<br />\r\n&nbsp; &nbsp;V.Startup hiện sở hữu các dự án siêu lợi nhuận: vị trí đắc địa, được quản lí, chăm sóc và vận hành bởi các công ty uy tín của Nhật Bản, khả năng sinh lời cao nhất.</p>\r\n', 1, 0, 85, 1496823840, 1496911503, 1),
(930, 450, 'Thương mại & Dịch vụ', 'thuong-mai-dich-vu-xaf62oxuea', '', '', '', 'no', '', '', 0, 0, 0, 0, 0, 1882, ' ', '<p>Sáng lập và điều hành V.Startup là những người có kinh nghiệm dày dạn trong kinh doanh thương mại. V.Startup xây dựng được mạng lưới giao thương rộng khắp, đảm bảo cho hoạt động sản xuất, hoạt động kinh doanh xuất nhập khẩu. Dịch vụ của V.Startup luôn mang đến cho khách hàng sự tín nhiệm cao nhất, thuận tiện, tiết kiệm thời gian với chi phí cạnh tranh. V.Startup luôn có những khách hàng truyền thống, những người bạn đồng hành cùng các hoạt động kinh doanh của công ty.</p>\r\n\r\n<p>V.Startup chú trọng phát triển các ngành dịch vụ như nhà hàng, khách sạn, hostel, spa, cà phê, trung tâm thương mại, văn phòng cho thuê... nhằm mục đích đem đến cho khách hàng những trải nghiệm tốt nhất. Đây là mảng kinh doanh khẳng định vị thế kiến tạo một không gian sống mang tính nhân văn mà V.Startup luôn mong muốn đem đến cho quý khách hàng.</p>\r\n', 1, 0, 34, 1496823960, 1496907395, 1),
(931, 451, 'Công nghệ thông tin', 'cong-nghe-thong-tin-3ibnxi7zbo', '', '', '', 'cong-nghe-thong-tin-1496906449.png', '', '', 0, 0, 0, 0, 0, 1883, '', '<p>&nbsp;&nbsp; Với sự hỗ trợ công nghệ thông tin từ các chuyên gia hàng đầu từ Thung lũng Silicon (Mỹ), V.Startup cung cấp các giải pháp công nghệ thông tin giúp doanh nghiệp ứng dụng, mang lại hiệu quả cao. Mô hình V.Startup vận dụng là mô hình công ty thông minh bằng cách vận dụng công nghệ, sử dụng con người thông minh và kết nối con người thông minh.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/uploads/images/Untitled-4.png" style="background-color: rgb(255, 255, 255); text-align: center;" /></p>\r\n\r\n<p>&nbsp; &nbsp;Tại cộng đồng khởi nghiệp do V.Startup xây dựng, công nghệ thông tin là mũi nhọn quan trọng để kiến tạo thành công cho doanh nghiệp. Từ công nghệ thông tin, V.Startup giúp doanh nghiệp kết nối với thế giới, mang lại cơ hội kinh doanh mới.&nbsp;</p>\r\n', 1, 0, 19, 1496823960, 1496906449, 1),
(932, 452, 'Giáo dục', 'giao-duc', '', '', '', 'giao-duc-1496907557.png', '', '', 0, 0, 0, 0, 0, 1884, '', '<p>Một trong những giá trị cốt lõi của V.Startup chính là con người. Vì vậy lĩnh vực giáo dục luôn được doanh nghiệp quan tâm đầu tư phát triển ngay từ những ngày đầu thành lập.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/uploads/images/Untitled-5(1).png" /></p>\r\n\r\n<p>Với phương châm ấy, V.Startup đang xây dựng hệ thống trường các cấp từ mầm non tới trung học phổ thông theo tiêu chuẩn quốc tế.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1, 0, 33, 1496824020, 1496907557, 1),
(933, 472, 'Văn hoá doanh nghiệp', 'van-hoa-doanh-nghiep-8dt94kyl83', '', '', '', 'van-hoa-doanh-nghiep-1496895752.png', '', '', 0, 0, 0, 0, 0, 1885, '', '<meta charset="UTF-8">\r\n<title></title>\r\n<div style="float: left; width: 48%; margin-right: 15px;">\r\n<div style="margin-bottom: 15px"><img alt="" src="/uploads/images/van_hoa.png" style="width: 100%; height: auto;" /></div>\r\n\r\n<div style="position: relative; margin-bottom: 15px;"><img alt="" src="/uploads/images/sang_tao.png" style="width: 100%; height: auto;" /> <span style="\r\n    position: absolute;\r\n    bottom: 35px;\r\n    right: 40px;\r\n    font-size: 25px;\r\n    color: #074a91;\r\n    font-weight: 300;\r\n">SÁNG TẠO</span></div>\r\n\r\n<div><span style="font-size: 25px; color: #000; text-align: center; display: block; margin-bottom: 10px;">TRÁCH NHIỆM</span>\r\n\r\n<p style="font-size:14px; color: #000;">-Trách nhiệm của mỗi <span style="color: #2fb6cc;">cá nhân với công ty</span><br />\r\n-Trách nhiệm của <span style="color: #2fb6cc;">công ty đối với cộng đồng khởi nghiệp</span><br />\r\n-Trách nhiệm của <span style="color: #2fb6cc;">công ty đối với xã hội</span></p>\r\n</div>\r\n</div>\r\n\r\n<div style="float: left; width: 48%;">\r\n<div style="margin-bottom: 15px;padding: 15px 15px 7px 15px;background-color: #2fb6cc;color: #fff;font-size: 14px;">\r\n<p>- Bản lĩnh để đối đầu với các làn sóng đầu tư mới<br />\r\n- Bản lĩnh bứt phá tạo dấu ấn riêng<br />\r\n- Bản lĩnh biến hoài bão, dự án thành hiện thực. Bản lĩnh để đối đầu với các làn sóng đầu tư mới<br />\r\n- Bản lĩnh bứt phá tạo dấu ấn riêng</p>\r\n</div>\r\n\r\n<div style="margin-bottom: 8px; position: relative;"><img alt="" src="/uploads/images/ban_linh.png" style="width: 100%; height: auto;" /> <span style="\r\n    position: absolute;\r\n    bottom: 35px;\r\n    right: 20px;\r\n    font-size: 25px;\r\n    color: #fff;\r\n">BẢN LĨNH</span></div>\r\n\r\n<div style="margin-bottom: 15px">\r\n<p style="\r\n    padding: 25px 15px;\r\n    background-color: #074a91;\r\n    color: #fff;\r\n    font-size: 14px;\r\n">- Mỗi dự án, mỗi công việc đều là một dấu ấn sáng tạo khác biệt.<br />\r\n- Sáng tạo là không ngừng, là mấu chốt, trong chuỗi vận động, phát triển của V.Startup.</p>\r\n</div>\r\n\r\n<div><img alt="" src="/uploads/images/trach_nhiem.png" style="width: 100%; height: auto;" /></div>\r\n</div>\r\n\r\n<div style="clear: both;">&nbsp;</div>\r\n', 1, 0, 115, 1496824080, 1497924628, 1),
(934, 467, 'Tổ Hợp Văn Phòng V.S', 'to-hop-van-phong', '', '', '', 'to-hop-van-phong-1496909993.png', '', '', 0, 0, 0, 0, 0, 1886, 'V.Startup Office là khu tổ hợp văn phòng tích hợp nhiều tiện ích bậc nhất thành phố với hơn 18.000 m2 văn phòng cho thuê.', '<p style="text-align: center;"><img alt="" src="/uploads/images/to-hop-van-phong-1496909993.png" />&nbsp; &nbsp; &nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;Nằm trong tòa nhà F.HOME với 2 block cao 26 tầng, khu tổ hợp văn phòng V.Startup tích hợp nhiều chức năng dịch vụ cao cấp, tạo điều kiện cho các doanh nghiệp và các nhà khởi nghiệp trẻ phát triển. Bên cạnh việc cung cấp diện tích sàn cho thuê, nơi đây còn có khu vực Co-working Space đem lại cho khách hàng nhiều sự lựa chọn cũng như phong cách làm việc mới mẻ, sáng tạo.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1, 0, 7, 1496909700, 1497942340, 1),
(935, 467, 'Khách Sạn Zen Diamond ', 'khach-san', '', '', '', 'khach-san-1496910091.png', '', '', 0, 0, 0, 0, 0, 1888, 'Zen Diamond Suites Danang hiện là “viên ngọc” sáng nhất với 290 phòng và căn hộ có hướng nhìn trực tiếp ra sông Hàn và cầu Thuận Phước.', '<p style="text-align: center;"><img alt="" src="/uploads/images/11.png" /></p>\r\n\r\n<p>&nbsp; &nbsp;Tọa lạc ngay tại trung tâm thành phố biển xinh đẹp Đà Nẵng, Zen Diamond Suites Danang gồm 290 phòng và căn hộ có hướng nhìn toàn cảnh thành phố cùng sông Hàn thơ mộng và những cây cầu lung linh. Với tổng vốn đầu tư lên đến ... tỷ đồng, cao 26 tầng, Zen Diamond Suites Danang là một trong những công trình nổi bật và là nơi dừng chân lý tưởng để khám phá những điểm đến hấp dẫn của thànhphố cũng như những di sản văn hóa thế giới như Hội An, Mỹ Sơn...</p>\r\n', 1, 0, 19, 1496910000, 1497942468, 1),
(936, 467, 'Trường Mầm Non', 'truong-mam-non', '', '', '', 'truong-mam-non-1496910318.png', '', '', 0, 0, 0, 0, 0, 1889, 'Ngôi trường có bề dày truyền thống, đạt chuẩn chất lượng cao, hiện là một trong những trường điểm của thành phố.', '<p style="text-align: center;"><img alt="" src="/uploads/images/image041.png" /></p>\r\n\r\n<p>Đây là dự án vừa đáp ứng được nhu cầu ngày càng tăng về trường mầm non, vừa mang tính xã hội rất cao. Với số vốn đầu tư hơn ... tỉ đồng, trường mầm non 29/3 được cải tạo thành ngôi trường đạt tiêu chuẩn chất lượng cao, đáp ứng nhu cầu dạy và học tại TP. Đà Nẵng. Trẻ em sẽ được phát triển toàn diện các lĩnh vực đồng thời chuẩn bị đầy đủ kĩ năng và tâm thế trước khi bước vào lớp 1.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1, 0, 6, 1496910180, 1497942117, 1),
(937, 467, 'Dự Án Khu Phức Hợp', 'du-an-khu-phuc-hop', '', '', '', 'du-an-khu-phuc-hop-1496911071.png', '', '', 0, 0, 0, 0, 0, 1891, '5 Stars Complex có vị trí tuyệt đẹp, cách sông Hàn 1 km, cách biển 2 km về phía Đông, nằm trên trục đường chính Nguyễn Tri Phương-Lê Đình Lý.', '<p style="text-align: center;"><img alt="" src="/uploads/images/12(1).png" /></p>\r\n\r\n<p>Chủ đầu tư: <strong>CÔNG TY CỔ PHẦN ĐẦU TƯ TỔNG HỢP KHỞI NGHIỆP VIỆT (V.STARTUP)</strong><br />\r\nLập dự án đầu tư: <strong>CÔNG TY CỔ PHẦN ĐẦU TƯ TỔNG HỢP KHỞI NGHIỆP VIỆT (V.STARTUP)</strong><br />\r\n<strong>Địa điểm:</strong> 271 Nguyễn Tri Phương, phường Hòa Thuận Tây, quận Hải Châu, Tp.Đà Nẵng<br />\r\n<strong>Vị trí:</strong> 5 Stars Complex có vị trí tuyệt đẹp, cách sông Hàn 1km, cách biển 2km về phía Đông, chỉ mất 5 phút đến sân bay quốc tế Đà Nẵng. 5 Start Complex nằm ở giao điểm trục đường chính Nguyễn Tri Phương-Lê Đình Lý, nằm trong tuyến kết nối với Nguyễn Văn Linh, tuyến phố thương mại, tài chính được mệnh danh là “phố Wall” của Đà Nẵng, trục đường 30-4, Nguyễn Hữu Thọ, tuyến dịch vụ, nhà hàng, khách sạn. 5 Stars Complex hội đủ các điều kiện trở thành khu Shopping Mall lớn nhất Đà Nẵng.<br />\r\n<strong>Mục tiêu xây dựng:</strong> Xây dựng Khu phức hợp Nguyễn Tri Phương - 5 Stars Complex thành khu Shopping Mall lớn nhất Đà Nẵng.<br />\r\n<strong>Tổng mức đầu tư dự kiến:</strong>5 Start Complex có tổng diện tích đất xây dựng 18.215m2 gồm 15 tầng cao<br />\r\n- Từ tầng 1-6: Trung tâm thương mại. Diện tích sàn 44.400m2<br />\r\n- Tầng 7-15: Khu văn phòng cho thuê.Diện tích sàn:40.542,5m2<br />\r\n- Tiểu dự án: Xây dựng trường cấp 1,2,3 đạt chuẩn Quốc tế<br />\r\nDự án sẽ khởi động vào quý III/2017 và hoàn thành 2020.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1, 0, 11, 1496910900, 1497942087, 1);
INSERT INTO `olala3w_article` (`article_id`, `article_menu_id`, `name`, `slug`, `title`, `description`, `keywords`, `img`, `img_note`, `address`, `price`, `block`, `flat`, `open_sale`, `type`, `upload_id`, `comment`, `content`, `is_active`, `hot`, `views`, `created_time`, `modified_time`, `user_id`) VALUES
(938, 467, 'Dự Án Khách Sạn 5 sao Đà Nẵng', 'du-an-khach-san-5-sao-da-nang', '', '', '', 'du-an-khach-san-5-sao-da-nang-1496911271.png', '', '', 0, 0, 0, 0, 0, 1892, 'Nằm ở vị trí “kim cương” ngay bên bờ sông Hàn thơ mộng, hiện là một trong những điểm sáng nhất bất động sản miền Trung.', '<p style="text-align: center;"><img alt="" src="/uploads/images/Ss53R0MsRlq_x6gxpBUL6w.png" /></p>\r\n\r\n<p>Chủ đầu tư: <strong>CÔNG TY CỔ PHẦN ĐẦU TƯ TỔNG HỢP KHỞI NGHIỆP VIỆT (V.STARTUP)</strong><br />\r\nLập dự án đầu tư:<strong> CÔNG TY CỔ PHẦN ĐẦU TƯ TỔNG HỢP KHỞI NGHIỆP VIỆT (V.STARTUP)</strong><br />\r\n<strong>Địa điểm:</strong> Đường Như Nguyệt, Quận Hải Châu, TP.Đà Nẵng<br />\r\n<strong>Vị trí:&nbsp;</strong>5 Stars Hotel nằm ở vị trí “kim cương” ngay bên bờ sông Hàn, cách bờ biển 1km, sân bay quốc tế Đà Nẵng 3km, 5 Stars Hotel hiện là một trong những điểm sáng nhất của bất động sản Đà Nẵng. 5 Stars Hotel Đà Nẵng có 400 phòng tiêu chuẩn 5 sao. Dự kiến sẽ khởi công trong năm 2017.<br />\r\n<strong>Mục tiêu xây dựng: </strong>Xây dựng 5 Stars Hotel với quy mô 400 phòng đạt tiêu chuẩn 5 sao.<br />\r\n<strong>Tổng mức đầu tư dự kiến: </strong>45.000.000 USD trên diện tích 2.746m2 gồm 30 tầng nổi, 2 tầng hầm.</p>\r\n', 1, 0, 51, 1496911080, 1497942502, 1),
(939, 455, 'Startup của Mỹ gọi vốn thành công 1,5 tỷ USD', 'startup-cua-my-goi-von-thanh-cong-1-5-ty-usd', '', '', '', 'startup-cua-my-goi-von-thanh-cong-1-5-ty-usd-1496978070.png', '', '', 0, 0, 0, 0, 0, 1893, 'Pinterest huy động gần 1,5 tỷ USD từ các nhà đầu tư như Rakuten, Andreessen Horowitz, Bessemer Venture Partners và SV Angel.', '<p>Qua lần gọi vốn 150 triệu USD vừa diễn ra, giá trị công ty đạt 12,3 tỷ USD. Lần gần nhất vào tháng 4/2015, Pinterest gọi vốn thành công vòng Series G với 367 triệu USD, được các nhà đầu tư định giá 11 tỷ USD.</p>\r\n\r\n<p>Pinterest cho biết sẽ dùng nguồn vốn mới mở rộng công nghệ hiện thời nhằm gia tăng tính năng tìm kiếm hình ảnh và cải thiện tương thích của các quảng cáo tự nhiên đến thị giác của người dùng.&nbsp;</p>\r\n\r\n<p>Theo Pitchbook, tập đoàn tư vấn tài chính Hartford, nhà đầu tư định giá mỗi cổ phiếu của Pinterest 32,31 USD.</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/uploads/images/Pinterest-2536-1496832318.png" /></p>\r\n\r\n<p>Pinterest thành lập vào năm 2010, chuyên phát triển công nghệ tìm kiếm thị giác và cho phép người dùng lưu hình ảnh trên website. Công ty tự định danh mình là "danh mục số của các ý tưởng".&nbsp;</p>\r\n\r\n<p>Startup có trụ sở tại San Francisco (Mỹ) hiện có 175 triệu người dùng thường xuyên mỗi tháng. Ứng dụng cho phép người dùng thu thập và giữ các hình ảnh liên quan đến phong cách sống, thiết kế, du lịch và nhiều lĩnh vực được yêu thích trên website.&nbsp;</p>\r\n\r\n<p>Chức năng mua sắm của Pinterest tạo thuận lợi để người dùng mua hàng trên website này và công ty thu lợi nhuận từ các hoạt động quảng cáo. Mục tiêu doanh thu của Pinterest trong năm nay là 500 triệu USD. Doanh thu năm 2015 là 100 triệu USD và năm ngoái là 300 triệu USD.&nbsp;</p>\r\n\r\n<p>Vào tháng 2 vừa qua, Pinterest giới thiệu công cụ tìm kiếm mới mang tên Lens với mục đích đẩy mạnh doanh thu quảng cáo. Lens giúp người dùng tìm kiếm hình ảnh bằng chính camera của chiếc smartphone. Hiện lượng tìm kiếm của Pinterest qua thiết bị di động tăng trưởng 40% mỗi năm.&nbsp;</p>\r\n\r\n<p>60% người dùng của Pinterest đến từ ngoài biên giới nước Mỹ. Công ty cho biết đang làm việc để gia tăng trải nghiệm mang tính vùng miền cho người dùng.&nbsp;</p>\r\n\r\n<p style="text-align: right;"><strong>Nhi Yến</strong></p>\r\n', 1, 1, 13, 1496912520, 1497943494, 1);

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_article_menu`
--

CREATE TABLE IF NOT EXISTS `olala3w_article_menu` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=473 ;

--
-- Dumping data for table `olala3w_article_menu`
--

INSERT INTO `olala3w_article_menu` (`article_menu_id`, `category_id`, `name`, `slug`, `title`, `description`, `keywords`, `parent`, `sort`, `comment`, `icon`, `plus`, `is_active`, `hot`, `img`, `created_time`, `modified_time`, `user_id`) VALUES
(446, 89, 'Tổng quan', 've-chung-toi', '', '', '', 0, 1, '', '', '', 1, 0, 'no', 1496780628, 1496992810, 1),
(447, 90, 'Công ty thành viên', 'v1-startup', '', '', '', 0, 1, '', '', '', 1, 0, 'no', 1496780655, 1496820565, 1),
(448, 90, 'Công ty liên kết', 'v2-startup', '', '', '', 0, 2, '', '', '', 1, 0, 'no', 1496780665, 1496820574, 1),
(449, 94, 'Phát triển dự án', 'phat-trien-du-an', '', '', '', 0, 1, '', '', '', 1, 0, 'no', 1496780680, 1496780680, 1),
(450, 94, 'Thương mại & Dịch vụ', 'linh-vuc-giao-duc', '', '', '', 0, 2, '', '', '', 1, 0, 'no', 1496780693, 1496995541, 1),
(451, 94, 'Công nghệ thông tin', 'cong-nghe-thong-tin', '', '', '', 0, 3, '', '', '', 1, 0, 'no', 1496780710, 1496780710, 1),
(452, 94, 'Lĩnh vực giáo dục', 'thuong-mai-dich-vu', '', '', '', 0, 4, '', '', '', 1, 0, 'no', 1496780727, 1496995535, 1),
(453, 97, 'Báo cáo tài chính', 'nha-dau-tu-01', '', '', '', 0, 1, '', '', '', 1, 0, 'no', 1496780745, 1496820611, 1),
(454, 97, 'Thông tin cổ đông', 'nha-dau-tu-02', '', '', '', 0, 2, '', '', '', 1, 0, 'no', 1496780750, 1496820621, 1),
(455, 98, 'Sự kiện & hoạt động', 'tin-hoat-dong', '', '', '', 0, 1, '', '', '', 1, 0, 'no', 1496780766, 1496820738, 1),
(456, 98, 'Tin thị trường', 'su-kien-noi-bat', '', '', '', 0, 2, '', '', '', 1, 0, 'no', 1496780775, 1496820749, 1),
(457, 98, 'Quan hệ với báo chí', 'blog', '', '', '', 0, 3, '', '', '', 1, 0, 'no', 1496780782, 1496820767, 1),
(458, 98, 'Tuyển dụng', 'tuyen-dung', '', '', '', 0, 4, '', '', '', 0, 0, 'no', 1496780800, 1496994007, 1),
(470, 89, 'Thông điệp HĐQT', 'thong-diep-hdqt', '', '', '', 0, 2, '', '', '', 1, 0, 'no', 1496992953, 1496992958, 1),
(460, 89, 'Sơ đồ tổ chức', 'so-do-to-chuc', '', '', '', 0, 4, '', '', '', 1, 0, 'no', 1496820480, 1496824097, 1),
(461, 89, 'Ban lãnh đạo', 'ban-lanh-dao', '', '', '', 0, 4, '', '', '', 1, 0, 'no', 1496820497, 1496820497, 1),
(462, 89, 'Cơ hội nghề nghiệp', 'co-hoi-nghe-nghiep', '', '', '', 0, 5, '', '', '', 1, 0, 'no', 1496820535, 1496994002, 1),
(463, 89, 'Media', 'media', '', '', '', 0, 6, '', '', '', 1, 0, 'no', 1496820546, 1496820546, 1),
(464, 97, 'Báo cáo thường niên', 'bao-cao-thuong-nien', '', '', '', 0, 3, '', '', '', 1, 0, 'no', 1496820638, 1496820638, 1),
(465, 97, 'Công bố thông tin', 'cong-bo-thong-tin', '', '', '', 0, 4, '', '', '', 1, 0, 'no', 1496820678, 1496820678, 1),
(467, 94, 'Dự án tiêu biểu', 'du-an-tieu-bieu', '', '', '', 449, 2, '', '', '', 1, 0, 'no', 1496909670, 1497943485, 1),
(469, 94, 'Chiến lược', 'phat-trien-du-an-jd5801gx44-w3pnl19pdu', '', '', '', 449, 1, '', '', '', 1, 0, 'no', 1496911488, 1496995269, 1),
(472, 89, 'Văn hóa doanh nghiệp', 'van-hoa-doanh-nghiep-d59owk39qi', '', '', '', 0, 3, '', '', '', 1, 0, 'no', 1497003614, 1497003624, 1),
(471, 89, 'Sứ mệnh - Tầm nhìn', 'su-menh-tam-nhin-yvohic5frh', '', '', '', 0, 2, '', '', '', 1, 0, 'no', 1497003551, 1497003569, 1);

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_car`
--

CREATE TABLE IF NOT EXISTS `olala3w_car` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=312 ;

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_car_menu`
--

CREATE TABLE IF NOT EXISTS `olala3w_car_menu` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=188 ;

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_category`
--

CREATE TABLE IF NOT EXISTS `olala3w_category` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=104 ;

--
-- Dumping data for table `olala3w_category`
--

INSERT INTO `olala3w_category` (`category_id`, `type_id`, `name`, `slug`, `plus`, `title`, `description`, `keywords`, `comment`, `is_active`, `hot`, `sort`, `menu_main`, `sort_hide`, `menu_sm`, `img`, `icon`, `created_time`, `modified_time`, `user_id`) VALUES
(89, 1, 'Giới thiệu', 'gioi-thieu', '', '', '', '', '', 1, 1, 1, 1, 2, 0, 'gioi-thieu-1496823590.jpg', '', 0, 1496823590, 1),
(90, 1, 'Công ty thành viên & Liên kết', 'cong-ty-thanh-vien-lien-ket', '', '', '', '', '', 1, 0, 2, 1, 6, 0, 'cong-ty-thanh-vien-lien-ket-1497944413.jpg', '', 0, 1497944413, 1),
(91, 2, 'Slider', 'slider', '', '', '', '', '', 1, 0, 1, 0, 1, 0, 'no', '', 0, 0, 0),
(97, 1, 'Thông tin nhà đầu tư', 'thong-tin-nha-dau-tu', '', '', '', '', '', 1, 1, 4, 1, 1, 0, 'thong-tin-nha-dau-tu-1496824299.jpg', '', 0, 1496824299, 1),
(94, 1, 'Sản phẩm và dịch vụ', 'san-pham-dich-vu', '', '', '', '', '', 1, 0, 3, 1, 1, 0, 'san-pham-va-dich-vu-1496823783.jpg', '', 0, 1496823783, 1),
(98, 1, 'Tin tức', 'tin-tuc', '', '', '', '', '', 1, 1, 5, 1, 1, 0, 'tin-tuc-1496824412.jpg', '', 0, 1496824412, 1),
(102, 2, 'Công ty thành viên & liên kết', 'partners', '', '', '', '', '', 1, 0, 1, 0, 1, 0, 'no', '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_category_type`
--

CREATE TABLE IF NOT EXISTS `olala3w_category_type` (
`type_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(30) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '1',
  `is_active` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `olala3w_category_type`
--

INSERT INTO `olala3w_category_type` (`type_id`, `name`, `slug`, `sort`, `is_active`) VALUES
(1, 'Bài viết', 'article_manager', 1, 1),
(2, 'Hình ảnh', 'gallery_manager', 2, 1),
(7, 'Đăng ký email', 'register_email', 9, 1),
(6, 'Sản phẩm', 'product_manager', 3, 0),
(8, 'Booking online', 'order_list', 7, 0),
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

CREATE TABLE IF NOT EXISTS `olala3w_constant` (
`constant_id` int(11) NOT NULL,
  `constant` varchar(50) NOT NULL,
  `value` text CHARACTER SET utf8mb4 NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` int(2) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=93 ;

--
-- Dumping data for table `olala3w_constant`
--

INSERT INTO `olala3w_constant` (`constant_id`, `constant`, `value`, `name`, `type`, `sort`) VALUES
(1, 'date', 'd/m/Y', 'Kiểu hiển thị ngày tháng năm', 3, 1),
(2, 'time', 'H:i', 'Kiểu hiển thị giờ phút', 3, 2),
(3, 'timezone', 'Asia/Bangkok', 'Múi giờ', 3, 4),
(4, 'title', 'V Startup', 'Title (trang chủ)', 0, 1),
(5, 'description', 'V Startup', 'Description (trang chủ)', 0, 2),
(6, 'keywords', 'V Startup', 'Keywords (trang chủ)', 0, 3),
(74, 'script_body', '<div id="fb-root"></div>\r\n<script>(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.5";\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n}(document, ''script'', ''facebook-jssdk''));</script>\r\n', 'Script sau body', 4, 6),
(76, 'link_linkedin', 'https://www.linkedin.com', 'LinkedIn', 5, 5),
(7, 'email_contact', 'info@vstartup.com.vn', 'Email', 0, 8),
(8, 'tell_contact', '(+84) 236 3888 626', 'Điện thoại', 0, 9),
(9, 'fulldate', 'D, d/m/Y', 'Kiểu hiển ngày đầy đủ', 3, 3),
(10, 'SMTP_username', 'olala.3w@gmail.com', 'Tài khoản email', 1, 0),
(11, 'SMTP_password', 'gmail@olala.3w', 'Mật khẩu email', 1, 0),
(12, 'error_page', '<p>Vì lý do kỹ&nbsp;thuật website tạm ngưng&nbsp;hoạt động. Thành thật xin lỗi các bạn&nbsp;vì sự bất tiện này!</p>\r\n', 'Thông báo ngừng hoạt động', 0, 19),
(13, 'file_logo', '/uploads/images/site/logo.png', 'Logo front-end', 0, 4),
(14, 'SMTP_secure', 'ssl', 'Sử dụng xác thực', 1, 0),
(15, 'SMTP_host', 'smtp.gmail.com', 'Máy chủ (SMTP) Thư gửi đi', 1, 0),
(16, 'SMTP_port', '465', 'Cổng gửi mail', 1, 0),
(17, 'backup_auto', '', 'Tự động sao lưu', 2, 0),
(18, 'backup_filetype', 'sql.gz', 'Định dạng lưu file CSDL', 2, 0),
(19, 'backup_filecount', '5', 'Số file CSDL lưu lại', 2, 0),
(20, 'backup_email', 'olala.3w@gmail.com', 'Email nhận thông báo và file', 2, 0),
(21, 'SMTP_mailname', 'Olala Web', 'Tên tài khoản email', 1, 0),
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
(86, 'meta_author', 'V Startup', 'Meta author', 0, 4),
(88, 'meta_site_name', 'V Startup', 'Meta site name', 0, 5),
(89, 'meta_copyright', '© Copyright 2017 V Startup', 'Meta copyright', 0, 6),
(90, 'image_thumbnailUrl', '/uploads/images/site/V-Startup.jpg', 'Image : thumbnailUrl', 0, 7),
(91, 'skype_contact', '', 'Skype', 0, 10),
(92, 'link_instagram', 'https://www.instagram.com', 'Instagram', 5, 6);

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_contact`
--

CREATE TABLE IF NOT EXISTS `olala3w_contact` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_core_privilege`
--

CREATE TABLE IF NOT EXISTS `olala3w_core_privilege` (
`privilege_id` bigint(20) NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT '0',
  `type` varchar(30) NOT NULL,
  `privilege_slug` varchar(50) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4853 ;

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
(4850, 1, 'article', 'article_add;98'),
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
(4849, 1, 'article', 'article_list;98'),
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
(4848, 1, 'article', 'article_menu_del;98'),
(2085, 2, 'category', 'article_manager'),
(4647, 1, 'product', 'product_del;9'),
(4646, 1, 'product', 'product_edit;9'),
(4645, 1, 'product', 'product_add;9'),
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
(4644, 1, 'product', 'product_list;9'),
(4643, 1, 'product', 'product_menu_del;9'),
(4642, 1, 'product', 'product_menu_edit;9'),
(3133, 11, 'product', 'product_list;37'),
(3138, 11, 'product', 'owner_cus;37'),
(3326, 1, 'info', 'sys_info_php'),
(3325, 1, 'info', 'sys_info_diary'),
(3334, 1, 'core', 'core_mail'),
(4796, 1, 'gallery', 'gallery_list;102'),
(4795, 1, 'gallery', 'gallery_menu_del;102'),
(4794, 1, 'gallery', 'gallery_menu_edit;102'),
(4793, 1, 'gallery', 'gallery_menu_add;102'),
(4792, 1, 'gallery', 'category_edit;102'),
(4791, 1, 'gallery', 'gallery_del;91'),
(4790, 1, 'gallery', 'gallery_edit;91'),
(4789, 1, 'gallery', 'gallery_add;91'),
(4788, 1, 'gallery', 'gallery_list;91'),
(4787, 1, 'gallery', 'gallery_menu_del;91'),
(4786, 1, 'gallery', 'gallery_menu_edit;91'),
(4785, 1, 'gallery', 'gallery_menu_add;91'),
(4784, 1, 'gallery', 'category_edit;91'),
(4695, 1, 'others', 'others_del;88'),
(4026, 1, 'document', 'document_list;73'),
(4025, 1, 'document', 'document_menu_del;73'),
(4024, 1, 'document', 'document_menu_edit;73'),
(4023, 1, 'document', 'document_menu_add;73'),
(4022, 1, 'document', 'category_edit;73'),
(4028, 1, 'document', 'document_edit;73'),
(4029, 1, 'document', 'document_del;73'),
(4803, 1, 'category', 'register_email'),
(4802, 1, 'category', 'contact_list'),
(4641, 1, 'product', 'product_menu_add;9'),
(4640, 1, 'product', 'category_edit;9'),
(4655, 1, 'product', 'product_del;93'),
(4654, 1, 'product', 'product_edit;93'),
(4653, 1, 'product', 'product_add;93'),
(4652, 1, 'product', 'product_list;93'),
(4651, 1, 'product', 'product_menu_del;93'),
(4650, 1, 'product', 'product_menu_edit;93'),
(4649, 1, 'product', 'product_menu_add;93'),
(4648, 1, 'product', 'category_edit;93'),
(4847, 1, 'article', 'article_menu_edit;98'),
(4846, 1, 'article', 'article_menu_add;98'),
(4845, 1, 'article', 'category_edit;98'),
(4844, 1, 'article', 'article_del;97'),
(4843, 1, 'article', 'article_edit;97'),
(4842, 1, 'article', 'article_add;97'),
(4841, 1, 'article', 'article_list;97'),
(4840, 1, 'article', 'article_menu_del;97'),
(4839, 1, 'article', 'article_menu_edit;97'),
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
(4801, 1, 'category', 'gallery_manager'),
(4800, 1, 'category', 'article_manager'),
(4838, 1, 'article', 'article_menu_add;97'),
(4837, 1, 'article', 'category_edit;97'),
(4836, 1, 'article', 'article_del;94'),
(4835, 1, 'article', 'article_edit;94'),
(4834, 1, 'article', 'article_add;94'),
(4833, 1, 'article', 'article_list;94'),
(4832, 1, 'article', 'article_menu_del;94'),
(4831, 1, 'article', 'article_menu_edit;94'),
(4830, 1, 'article', 'article_menu_add;94'),
(4829, 1, 'article', 'category_edit;94'),
(4828, 1, 'article', 'article_del;90'),
(4827, 1, 'article', 'article_edit;90'),
(4826, 1, 'article', 'article_add;90'),
(4825, 1, 'article', 'article_list;90'),
(4824, 1, 'article', 'article_menu_del;90'),
(4823, 1, 'article', 'article_menu_edit;90'),
(4822, 1, 'article', 'article_menu_add;90'),
(4821, 1, 'article', 'category_edit;90'),
(4820, 1, 'article', 'article_del;103'),
(4819, 1, 'article', 'article_edit;103'),
(4818, 1, 'article', 'article_add;103'),
(4817, 1, 'article', 'article_list;103'),
(4816, 1, 'article', 'article_menu_del;103'),
(4815, 1, 'article', 'article_menu_edit;103'),
(4814, 1, 'article', 'article_menu_add;103'),
(4813, 1, 'article', 'category_edit;103'),
(4812, 1, 'article', 'article_del;89'),
(4811, 1, 'article', 'article_edit;89'),
(4810, 1, 'article', 'article_add;89'),
(4809, 1, 'article', 'article_list;89'),
(4808, 1, 'article', 'article_menu_del;89'),
(4807, 1, 'article', 'article_menu_edit;89'),
(4806, 1, 'article', 'article_menu_add;89'),
(4805, 1, 'article', 'category_edit;89'),
(4797, 1, 'gallery', 'gallery_add;102'),
(4798, 1, 'gallery', 'gallery_edit;102'),
(4799, 1, 'gallery', 'gallery_del;102'),
(4804, 1, 'category', 'plugin_page'),
(4851, 1, 'article', 'article_edit;98'),
(4852, 1, 'article', 'article_del;98');

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_core_role`
--

CREATE TABLE IF NOT EXISTS `olala3w_core_role` (
`role_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

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

CREATE TABLE IF NOT EXISTS `olala3w_core_user` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

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

CREATE TABLE IF NOT EXISTS `olala3w_direction` (
`direction_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '1',
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_document`
--

CREATE TABLE IF NOT EXISTS `olala3w_document` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=36 ;

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_document_menu`
--

CREATE TABLE IF NOT EXISTS `olala3w_document_menu` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_gallery`
--

CREATE TABLE IF NOT EXISTS `olala3w_gallery` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=669 ;

--
-- Dumping data for table `olala3w_gallery`
--

INSERT INTO `olala3w_gallery` (`gallery_id`, `gallery_menu_id`, `name`, `slug`, `title`, `description`, `keywords`, `img`, `upload_id`, `comment`, `content`, `link`, `is_active`, `hot`, `views`, `created_time`, `modified_time`, `user_id`) VALUES
(648, 85, 'Kết nối để thành công', 'ket-noi-de-thanh-cong-307hlexpzx', '', '', '', 'ket-noi-de-thanh-cong-1497941402.jpg', 1867, 'V. Starup chú trọng phát triển các nghành dịch vụ như nhà hàng, hostel, spa, cà phê, trung tâm thương mại, văn phòng cho thuê... nhằm mục đích đem đến cho khách hàng những trải nghiệm tốt nhất.', '', '', 1, 0, 1, 1496791800, 1497941408, 1),
(647, 85, 'Kết nối để thành công', 'ket-noi-de-thanh-cong-ud9d71exv6', '', '', '', 'ket-noi-de-thanh-cong-1497941288.jpg', 1866, 'V. Starup chú trọng phát triển các nghành dịch vụ như nhà hàng, hostel, spa, cà phê, trung tâm thương mại, văn phòng cho thuê... nhằm mục đích đem đến cho khách hàng những trải nghiệm tốt nhất.', '', '', 1, 0, 1, 1496793600, 1497941304, 1),
(646, 85, 'Kết nối để thành công', '-no-', '', '', '', 'ket-noi-de-thanh-cong-1496795497.jpg', 1865, 'V. Starup chú trọng phát triển các nghành dịch vụ như nhà hàng, hostel, spa, cà phê, trung tâm thương mại, văn phòng cho thuê... nhằm mục đích đem đến cho khách hàng những trải nghiệm tốt nhất.', '', '', 1, 1, 1, 1496881800, 1497932744, 1),
(649, 85, 'Kết nối để thành công', 'ket-noi-de-thanh-cong-dj18v5z7v6', '', '', '', 'ket-noi-de-thanh-cong-1496822145.jpg', 1877, '', '', '', 1, 1, 1, 1496822040, 1496822185, 1),
(650, 85, 'KẾT NỐI ĐỂ THÀNH CÔNG', 'ket-noi-de-thanh-cong-r5a8a39240', '', '', '', 'ket-noi-de-thanh-cong-1496822290.jpg', 1878, '', '', '', 1, 1, 1, 1496822220, 1496822321, 1),
(661, 85, '.', '', '', '', '', '1497941619.jpg', 1905, '', '', '', 1, 0, 1, 1496992200, 1497941625, 1),
(662, 90, 'Khai Hoan Viet', 'khai-hoan-viet', '', '', '', 'khai-hoan-viet-1497932159.png', 1910, '', '', '', 1, 0, 1, 1497932100, 1497932293, 1),
(663, 90, 'Tulip Restaurant', 'tulip-restaurant', '', '', '', 'tulip-restaurant-1497932239.png', 1911, '', '', '', 1, 0, 1, 1497932160, 1497932238, 1),
(664, 90, 'VietA', 'vieta', '', '', '', 'vieta-1497932275.png', 1912, '', '', '', 1, 0, 1, 1497932220, 1497932274, 1),
(665, 90, '29/3', '29-3', '', '', '', '29-3-1497932328.png', 1913, '', '', '', 1, 0, 1, 1497932280, 1497932328, 1),
(666, 90, 'F.home', 'f-home', '', '', '', 'f-home-1497932387.png', 1914, '', '', '', 1, 0, 1, 1497932280, 1497932384, 1),
(667, 90, 'Hai Van Long', 'hai-van-long', '', '', '', 'hai-van-long-1497932408.png', 1915, '', '', '', 1, 0, 1, 1497932340, 1497932408, 1),
(668, 90, 'Zen Diamond', 'zen-diamond', '', '', '', 'zen-diamond-1497932460.png', 1916, '', '', '', 1, 0, 1, 1497932400, 1497932460, 1);

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_gallery_menu`
--

CREATE TABLE IF NOT EXISTS `olala3w_gallery_menu` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=94 ;

--
-- Dumping data for table `olala3w_gallery_menu`
--

INSERT INTO `olala3w_gallery_menu` (`gallery_menu_id`, `category_id`, `name`, `slug`, `title`, `description`, `keywords`, `parent`, `sort`, `comment`, `is_active`, `hot`, `img`, `created_time`, `modified_time`, `user_id`) VALUES
(85, 91, 'Slide home', 'slide-home', '', '', '', 0, 1, '', 1, 0, 'no', 1495835085, 1495835085, 1),
(90, 102, 'Thành viên', 'thanh-vien', '', '', '', 0, 1, '', 1, 0, 'no', 1496912438, 1496912438, 1),
(91, 102, 'Đối tác', 'doi-tac', '', '', '', 0, 2, '', 1, 0, 'no', 1496912446, 1496912446, 1),
(93, 102, 'Khách hàng', 'khach-hang', '', '', '', 0, 3, '', 1, 0, 'no', 1496912462, 1496912462, 1);

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_gift`
--

CREATE TABLE IF NOT EXISTS `olala3w_gift` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=132 ;

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_gift_menu`
--

CREATE TABLE IF NOT EXISTS `olala3w_gift_menu` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=144 ;

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_link`
--

CREATE TABLE IF NOT EXISTS `olala3w_link` (
`link_id` bigint(20) NOT NULL,
  `link` varchar(255) NOT NULL,
  `category` int(11) NOT NULL DEFAULT '0',
  `menu` int(11) NOT NULL DEFAULT '0',
  `post` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=434 ;

--
-- Dumping data for table `olala3w_link`
--

INSERT INTO `olala3w_link` (`link_id`, `link`, `category`, `menu`, `post`, `modified_time`) VALUES
(1, 'san-pham-dich-vu', 94, 0, 0, 1496823783),
(2, 'slider', 91, 0, 0, 0),
(5, 'gioi-thieu', 89, 0, 0, 1496823589),
(6, 'cong-ty-thanh-vien-lien-ket', 90, 0, 0, 1497944413),
(265, 'thong-tin-nha-dau-tu', 97, 0, 0, 1496824299),
(266, 'tin-tuc', 98, 0, 0, 1496824412),
(269, 'slide-home', 91, 85, 0, 1495835085),
(345, 'lien-he', 0, 0, 0, 0),
(346, 've-chung-toi', 89, 446, 0, 1496992810),
(347, 'v1-startup', 90, 447, 0, 1496820565),
(348, 'v2-startup', 90, 448, 0, 1496820574),
(349, 'phat-trien-du-an', 94, 449, 0, 1496780680),
(350, 'linh-vuc-giao-duc', 94, 450, 0, 1496907311),
(351, 'cong-nghe-thong-tin', 94, 451, 0, 1496780710),
(352, 'thuong-mai-dich-vu', 94, 452, 0, 1496907291),
(353, 'nha-dau-tu-01', 97, 453, 0, 1496820611),
(354, 'nha-dau-tu-02', 97, 454, 0, 1496820621),
(355, 'tin-hoat-dong', 98, 455, 0, 1496820737),
(356, 'su-kien-noi-bat', 98, 456, 0, 1496820749),
(357, 'blog', 98, 457, 0, 1496820766),
(358, 'tuyen-dung', 98, 458, 0, 1496780800),
(359, 'ket-noi-de-thanh-cong', 91, 85, 646, 1496822538),
(360, 'ket-noi-de-thanh-cong-ud9d71exv6', 91, 85, 647, 1497941288),
(361, 'ket-noi-de-thanh-cong-307hlexpzx', 91, 85, 648, 1497941402),
(363, 'nhung-diem-den-khoi-goi-y-tuong-kinh-doanh-cho-startup', 98, 455, 920, 1496815975),
(365, 'startup-gia-tri-nhat-dong-nam-a-chuan-bi-ipo-ty-usd', 98, 455, 922, 1496816185),
(367, 'ly-do-asean-tro-thanh-mien-dat-hua-cho-linh-vuc-iot', 98, 455, 924, 1496816664),
(369, 'so-do-to-chuc', 89, 460, 0, 1496820480),
(370, 'ban-lanh-dao', 89, 461, 0, 1496820497),
(371, 'co-hoi-nghe-nghiep', 89, 462, 0, 1496820536),
(372, 'media', 89, 463, 0, 1496820546),
(373, 'bao-cao-thuong-nien', 97, 464, 0, 1496820638),
(374, 'cong-bo-thong-tin', 97, 465, 0, 1496820678),
(375, 'gioi-thieu-chung', 89, 446, 925, 1497933281),
(376, 'tam-nhin-su-menh-gia-tri', 89, 471, 926, 1497953997),
(377, 'ket-noi-de-thanh-cong-dj18v5z7v6', 91, 85, 649, 1496822145),
(378, 'ket-noi-de-thanh-cong-r5a8a39240', 91, 85, 650, 1496822290),
(379, 'so-do-to-chuc-28qt137wop', 89, 460, 927, 1497925586),
(380, 'ban-lanh-dao-l7ir9sx18n', 89, 461, 928, 1497954967),
(382, 'phat-trien-du-an-jd5801gx44-w3pnl19pdu', 94, 469, 0, 1496995268),
(383, 'thuong-mai-dich-vu-xaf62oxuea', 94, 450, 930, 1496907395),
(384, 'cong-nghe-thong-tin-3ibnxi7zbo', 94, 451, 931, 1496906449),
(385, 'giao-duc', 94, 452, 932, 1496907557),
(386, 'van-hoa-doanh-nghiep-8dt94kyl83', 89, 472, 933, 1497924628),
(387, 'du-an-tieu-bieu', 94, 467, 0, 1497943485),
(389, 'to-hop-van-phong', 94, 467, 934, 1497942340),
(390, 'khach-san', 94, 467, 935, 1497942468),
(391, 'truong-mam-non', 94, 467, 936, 1497942117),
(392, 'du-an-khu-phuc-hop', 94, 467, 937, 1497942087),
(393, 'du-an-khach-san-5-sao-da-nang', 94, 467, 938, 1497942502),
(394, 'phat-trien-du-an-jd5801gx44', 94, 469, 0, 1496911488),
(395, 'thanh-vien', 102, 90, 0, 1496912438),
(396, 'doi-tac', 102, 91, 0, 1496912446),
(398, 'khach-hang', 102, 93, 0, 1496912462),
(399, 'startup-cua-my-goi-von-thanh-cong-1-5-ty-usd', 98, 455, 939, 1496978069),
(405, 'startup-viet-nhan-1-trieu-usd-tu-quy-dau-tu-cua-singapore', 98, 455, 940, 1496913509),
(409, 'admin', 0, 0, 0, 0),
(412, '', 91, 85, 661, 1497941618),
(413, 'thong-diep-hdqt', 89, 470, 0, 1496992953),
(414, 'thong-diep-hdqt-x37swdp8b0', 89, 470, 941, 1497953493),
(415, 'su-menh-tam-nhin-yvohic5frh', 89, 471, 0, 1497003551),
(416, 'van-hoa-doanh-nghiep-d59owk39qi', 89, 472, 0, 1497003614),
(418, 'khai-hoan-viet', 102, 90, 662, 1497932292),
(419, 'tulip-restaurant', 102, 90, 663, 1497932238),
(420, 'vieta', 102, 90, 664, 1497932275),
(421, '29-3', 102, 90, 665, 1497932328),
(422, 'f-home', 102, 90, 666, 1497932386),
(423, 'hai-van-long', 102, 90, 667, 1497932408),
(424, 'zen-diamond', 102, 90, 668, 1497932460),
(425, 'khai-hoan-viet-28x52apfzk', 90, 447, 943, 1497932806),
(426, 'tulip-restaurant-rxzl7rp0be', 90, 447, 944, 1497943639),
(427, 'viet-a', 90, 447, 945, 1497932733),
(428, 'truong-mam-non-29-3', 90, 447, 946, 1497942973),
(429, 'f-home-6jzrk99bzg', 90, 447, 947, 1497943270),
(430, 'hai-van-long-rtsacu39fe', 90, 447, 948, 1497932675),
(431, 'zen-diamond-g3qe7ipsu5', 90, 447, 949, 1497942997),
(433, 'home', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_location`
--

CREATE TABLE IF NOT EXISTS `olala3w_location` (
`location_id` int(11) NOT NULL,
  `location_menu_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_location_menu`
--

CREATE TABLE IF NOT EXISTS `olala3w_location_menu` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_online`
--

CREATE TABLE IF NOT EXISTS `olala3w_online` (
`online_id` bigint(20) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `created_time` int(11) NOT NULL DEFAULT '0',
  `site` varchar(255) NOT NULL,
  `agent` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=381 ;

--
-- Dumping data for table `olala3w_online`
--

INSERT INTO `olala3w_online` (`online_id`, `ip`, `created_time`, `site`, `agent`, `user_id`) VALUES
(380, '127.0.0.1', 1498730419, 'url=tin-tuc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 0);

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_online_daily`
--

CREATE TABLE IF NOT EXISTS `olala3w_online_daily` (
`online_daily_id` bigint(20) NOT NULL,
  `date` date NOT NULL,
  `count` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=666 ;

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
(665, '2017-06-29', 1);

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_order`
--

CREATE TABLE IF NOT EXISTS `olala3w_order` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_others`
--

CREATE TABLE IF NOT EXISTS `olala3w_others` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_others_menu`
--

CREATE TABLE IF NOT EXISTS `olala3w_others_menu` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_page`
--

CREATE TABLE IF NOT EXISTS `olala3w_page` (
`page_id` int(11) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `comment` text CHARACTER SET utf8mb4 NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `views` bigint(20) NOT NULL DEFAULT '1',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=108 ;

--
-- Dumping data for table `olala3w_page`
--

INSERT INTO `olala3w_page` (`page_id`, `alias`, `name`, `comment`, `content`, `is_active`, `views`, `modified_time`, `user_id`) VALUES
(27, 'copyright', 'Copyright', '', '<p>Copyright © 2017 Member of V.Startup. All right reserved.</p>\r\n', 1, 1, 1496815665, 1),
(100, 'contact_maps', 'Bản đồ trang liên hệ', '', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3833.713723661704!2d108.21956131441821!3d16.080338688874107!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3142183b8dc2697d%3A0xc105565d68b6ad90!2zMTYgTMO9IFRoxrDhu51uZyBLaeG7h3QsIEjhuqNpIENow6J1LCDEkMOgIE7hurVuZywgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1496907656248" width="100%" height="250" frameborder="0" style="border:0" allowfullscreen></iframe>', 1, 1, 1496907710, 1),
(101, 'contact_page', 'Thông tin liên hệ', '', '<p><span style="color:#2fb6cc;"><strong>CÔNG TY CỔ PHẦN ĐẦU TƯ TỔNG HỢP KHỞI NGHIỆP VIỆT</strong></span><br />\r\nĐịa chỉ : 16 Lý Thường Kiệt, phường Thạch Thang, quận Hải Châu, Tp Đà Nẵng, Việt Nam<br />\r\nĐiện thoại : (+84) 236 3888 626<br />\r\nFax :<br />\r\nEmail : info@vstartup.com.vn<br />\r\nWebsite : vstartup.com.vn</p>\r\n', 1, 1, 1496907788, 1),
(104, 'info_bottom', 'V Startup', '', '<h4>Công ty CP Đầu tư Tổng hợp Khởi nghiệp Việt - V.Startup</h4>\r\n\r\n<p>Địa chỉ: 16 Lý Thường Kiệt, Phường Thạch Thang, Quận Hải Châu,&nbsp;Tp Đà Nẵng, Việt Nam<br />\r\nĐiện thoại: (+84) 236 3888 626<br />\r\nEmail: info@vstartup.com.vn</p>\r\n', 1, 1, 1496908123, 1);

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_prjname`
--

CREATE TABLE IF NOT EXISTS `olala3w_prjname` (
`prjname_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '1',
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_product`
--

CREATE TABLE IF NOT EXISTS `olala3w_product` (
`product_id` int(11) NOT NULL,
  `product_menu_id` int(11) NOT NULL,
  `owner` int(1) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL DEFAULT 'no',
  `img_note` varchar(255) NOT NULL,
  `upload_id` bigint(20) NOT NULL DEFAULT '0',
  `acreage` double NOT NULL DEFAULT '0',
  `price` float NOT NULL DEFAULT '0',
  `price_unit` varchar(255) NOT NULL,
  `direction` varchar(255) NOT NULL,
  `direction_2` varchar(255) NOT NULL,
  `road` varchar(255) NOT NULL,
  `road_2` varchar(255) NOT NULL,
  `bedroom` int(11) NOT NULL DEFAULT '0',
  `bathroom` int(11) NOT NULL DEFAULT '0',
  `city` varchar(255) NOT NULL,
  `city_2` varchar(255) NOT NULL,
  `district` varchar(255) NOT NULL,
  `district_2` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `address_2` varchar(255) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `type_2` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=638 ;

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_product_menu`
--

CREATE TABLE IF NOT EXISTS `olala3w_product_menu` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=253 ;

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_project`
--

CREATE TABLE IF NOT EXISTS `olala3w_project` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=206 ;

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_project_menu`
--

CREATE TABLE IF NOT EXISTS `olala3w_project_menu` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=217 ;

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_register_email`
--

CREATE TABLE IF NOT EXISTS `olala3w_register_email` (
`register_email_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `created_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_register_try`
--

CREATE TABLE IF NOT EXISTS `olala3w_register_try` (
`register_try_id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL DEFAULT 'no-name',
  `phone` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `note` text NOT NULL,
  `created_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_road`
--

CREATE TABLE IF NOT EXISTS `olala3w_road` (
`road_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '1',
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_street`
--

CREATE TABLE IF NOT EXISTS `olala3w_street` (
`street_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '1',
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_tour`
--

CREATE TABLE IF NOT EXISTS `olala3w_tour` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_tour_menu`
--

CREATE TABLE IF NOT EXISTS `olala3w_tour_menu` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=157 ;

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_uploads_tmp`
--

CREATE TABLE IF NOT EXISTS `olala3w_uploads_tmp` (
`upload_id` bigint(20) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `list_img` text NOT NULL,
  `created_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1932 ;

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
(1931, 0, '', 1498033984);

-- --------------------------------------------------------

--
-- Table structure for table `olala3w_vote`
--

CREATE TABLE IF NOT EXISTS `olala3w_vote` (
`vote_id` bigint(20) NOT NULL,
  `session` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `vote` int(1) NOT NULL DEFAULT '0',
  `created_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

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
 ADD PRIMARY KEY (`user_id`), ADD UNIQUE KEY `user_name` (`user_name`);

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
MODIFY `article_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=950;
--
-- AUTO_INCREMENT for table `olala3w_article_menu`
--
ALTER TABLE `olala3w_article_menu`
MODIFY `article_menu_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=473;
--
-- AUTO_INCREMENT for table `olala3w_car`
--
ALTER TABLE `olala3w_car`
MODIFY `car_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=312;
--
-- AUTO_INCREMENT for table `olala3w_car_menu`
--
ALTER TABLE `olala3w_car_menu`
MODIFY `car_menu_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=188;
--
-- AUTO_INCREMENT for table `olala3w_category`
--
ALTER TABLE `olala3w_category`
MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=104;
--
-- AUTO_INCREMENT for table `olala3w_category_type`
--
ALTER TABLE `olala3w_category_type`
MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `olala3w_constant`
--
ALTER TABLE `olala3w_constant`
MODIFY `constant_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=93;
--
-- AUTO_INCREMENT for table `olala3w_contact`
--
ALTER TABLE `olala3w_contact`
MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `olala3w_core_privilege`
--
ALTER TABLE `olala3w_core_privilege`
MODIFY `privilege_id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4853;
--
-- AUTO_INCREMENT for table `olala3w_core_role`
--
ALTER TABLE `olala3w_core_role`
MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `olala3w_core_user`
--
ALTER TABLE `olala3w_core_user`
MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `olala3w_direction`
--
ALTER TABLE `olala3w_direction`
MODIFY `direction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `olala3w_document`
--
ALTER TABLE `olala3w_document`
MODIFY `document_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `olala3w_document_menu`
--
ALTER TABLE `olala3w_document_menu`
MODIFY `document_menu_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `olala3w_gallery`
--
ALTER TABLE `olala3w_gallery`
MODIFY `gallery_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=669;
--
-- AUTO_INCREMENT for table `olala3w_gallery_menu`
--
ALTER TABLE `olala3w_gallery_menu`
MODIFY `gallery_menu_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=94;
--
-- AUTO_INCREMENT for table `olala3w_gift`
--
ALTER TABLE `olala3w_gift`
MODIFY `gift_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=132;
--
-- AUTO_INCREMENT for table `olala3w_gift_menu`
--
ALTER TABLE `olala3w_gift_menu`
MODIFY `gift_menu_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=144;
--
-- AUTO_INCREMENT for table `olala3w_link`
--
ALTER TABLE `olala3w_link`
MODIFY `link_id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=434;
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
MODIFY `online_id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=381;
--
-- AUTO_INCREMENT for table `olala3w_online_daily`
--
ALTER TABLE `olala3w_online_daily`
MODIFY `online_daily_id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=666;
--
-- AUTO_INCREMENT for table `olala3w_order`
--
ALTER TABLE `olala3w_order`
MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;
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
MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=108;
--
-- AUTO_INCREMENT for table `olala3w_prjname`
--
ALTER TABLE `olala3w_prjname`
MODIFY `prjname_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `olala3w_product`
--
ALTER TABLE `olala3w_product`
MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=638;
--
-- AUTO_INCREMENT for table `olala3w_product_menu`
--
ALTER TABLE `olala3w_product_menu`
MODIFY `product_menu_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=253;
--
-- AUTO_INCREMENT for table `olala3w_project`
--
ALTER TABLE `olala3w_project`
MODIFY `project_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=206;
--
-- AUTO_INCREMENT for table `olala3w_project_menu`
--
ALTER TABLE `olala3w_project_menu`
MODIFY `project_menu_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=217;
--
-- AUTO_INCREMENT for table `olala3w_register_email`
--
ALTER TABLE `olala3w_register_email`
MODIFY `register_email_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `olala3w_register_try`
--
ALTER TABLE `olala3w_register_try`
MODIFY `register_try_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
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
MODIFY `tour_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `olala3w_tour_menu`
--
ALTER TABLE `olala3w_tour_menu`
MODIFY `tour_menu_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=157;
--
-- AUTO_INCREMENT for table `olala3w_uploads_tmp`
--
ALTER TABLE `olala3w_uploads_tmp`
MODIFY `upload_id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1932;
--
-- AUTO_INCREMENT for table `olala3w_vote`
--
ALTER TABLE `olala3w_vote`
MODIFY `vote_id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
