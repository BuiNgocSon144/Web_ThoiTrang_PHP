-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 17, 2023 at 09:01 AM
-- Server version: 8.0.16
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_thoi_trang`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_color`
--

CREATE TABLE `tbl_color` (
  `color_id` int(11) NOT NULL,
  `color_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_color`
--

INSERT INTO `tbl_color` (`color_id`, `color_name`) VALUES
(30, 'Trắng'),
(31, 'Nâu'),
(32, 'Đen'),
(33, 'Đỏ'),
(34, 'Vàng'),
(35, 'Cam'),
(36, 'Xanh lam'),
(37, 'Xanh lục'),
(38, 'Hồng'),
(39, 'Tím');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_country`
--

CREATE TABLE `tbl_country` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_country`
--

INSERT INTO `tbl_country` (`country_id`, `country_name`) VALUES
(1, 'Afghanistan'),
(2, 'Albania'),
(3, 'Algeria'),
(4, 'American Samoa'),
(5, 'Andorra'),
(6, 'Angola'),
(7, 'Anguilla'),
(8, 'Antarctica'),
(9, 'Antigua and Barbuda'),
(10, 'Argentina'),
(11, 'Armenia'),
(12, 'Aruba'),
(13, 'Australia'),
(14, 'Austria'),
(15, 'Azerbaijan'),
(16, 'Bahamas'),
(17, 'Bahrain'),
(18, 'Bangladesh'),
(19, 'Barbados'),
(20, 'Belarus'),
(21, 'Belgium'),
(22, 'Belize'),
(23, 'Benin'),
(24, 'Bermuda'),
(25, 'Bhutan'),
(26, 'Bolivia'),
(27, 'Bosnia and Herzegovina'),
(28, 'Botswana'),
(29, 'Bouvet Island'),
(30, 'Brazil'),
(31, 'British Indian Ocean Territory'),
(32, 'Brunei Darussalam'),
(33, 'Bulgaria'),
(34, 'Burkina Faso'),
(35, 'Burundi'),
(36, 'Cambodia'),
(37, 'Cameroon'),
(38, 'Canada'),
(39, 'Cape Verde'),
(40, 'Cayman Islands'),
(41, 'Central African Republic'),
(42, 'Chad'),
(43, 'Chile'),
(44, 'China'),
(45, 'Christmas Island'),
(46, 'Cocos (Keeling) Islands'),
(47, 'Colombia'),
(48, 'Comoros'),
(49, 'Congo'),
(50, 'Cook Islands'),
(51, 'Costa Rica'),
(52, 'Croatia (Hrvatska)'),
(53, 'Cuba'),
(54, 'Cyprus'),
(55, 'Czech Republic'),
(56, 'Denmark'),
(57, 'Djibouti'),
(58, 'Dominica'),
(59, 'Dominican Republic'),
(60, 'East Timor'),
(61, 'Ecuador'),
(62, 'Egypt'),
(63, 'El Salvador'),
(64, 'Equatorial Guinea'),
(65, 'Eritrea'),
(66, 'Estonia'),
(67, 'Ethiopia'),
(68, 'Falkland Islands (Malvinas)'),
(69, 'Faroe Islands'),
(70, 'Fiji'),
(71, 'Finland'),
(72, 'France'),
(73, 'France, Metropolitan'),
(74, 'French Guiana'),
(75, 'French Polynesia'),
(76, 'French Southern Territories'),
(77, 'Gabon'),
(78, 'Gambia'),
(79, 'Georgia'),
(80, 'Germany'),
(81, 'Ghana'),
(82, 'Gibraltar'),
(83, 'Guernsey'),
(84, 'Greece'),
(85, 'Greenland'),
(86, 'Grenada'),
(87, 'Guadeloupe'),
(88, 'Guam'),
(89, 'Guatemala'),
(90, 'Guinea'),
(91, 'Guinea-Bissau'),
(92, 'Guyana'),
(93, 'Haiti'),
(94, 'Heard and Mc Donald Islands'),
(95, 'Honduras'),
(96, 'Hong Kong'),
(97, 'Hungary'),
(98, 'Iceland'),
(99, 'India'),
(100, 'Isle of Man'),
(101, 'Indonesia'),
(102, 'Iran (Islamic Republic of)'),
(103, 'Iraq'),
(104, 'Ireland'),
(105, 'Israel'),
(106, 'Italy'),
(107, 'Ivory Coast'),
(108, 'Jersey'),
(109, 'Jamaica'),
(110, 'Japan'),
(111, 'Jordan'),
(112, 'Kazakhstan'),
(113, 'Kenya'),
(114, 'Kiribati'),
(115, 'Korea, Democratic People\'s Republic of'),
(116, 'Korea, Republic of'),
(117, 'Kosovo'),
(118, 'Kuwait'),
(119, 'Kyrgyzstan'),
(120, 'Lao People\'s Democratic Republic'),
(121, 'Latvia'),
(122, 'Lebanon'),
(123, 'Lesotho'),
(124, 'Liberia'),
(125, 'Libyan Arab Jamahiriya'),
(126, 'Liechtenstein'),
(127, 'Lithuania'),
(128, 'Luxembourg'),
(129, 'Macau'),
(130, 'Macedonia'),
(131, 'Madagascar'),
(132, 'Malawi'),
(133, 'Malaysia'),
(134, 'Maldives'),
(135, 'Mali'),
(136, 'Malta'),
(137, 'Marshall Islands'),
(138, 'Martinique'),
(139, 'Mauritania'),
(140, 'Mauritius'),
(141, 'Mayotte'),
(142, 'Mexico'),
(143, 'Micronesia, Federated States of'),
(144, 'Moldova, Republic of'),
(145, 'Monaco'),
(146, 'Mongolia'),
(147, 'Montenegro'),
(148, 'Montserrat'),
(149, 'Morocco'),
(150, 'Mozambique'),
(151, 'Myanmar'),
(152, 'Namibia'),
(153, 'Nauru'),
(154, 'Nepal'),
(155, 'Netherlands'),
(156, 'Netherlands Antilles'),
(157, 'New Caledonia'),
(158, 'New Zealand'),
(159, 'Nicaragua'),
(160, 'Niger'),
(161, 'Nigeria'),
(162, 'Niue'),
(163, 'Norfolk Island'),
(164, 'Northern Mariana Islands'),
(165, 'Norway'),
(166, 'Oman'),
(167, 'Pakistan'),
(168, 'Palau'),
(169, 'Palestine'),
(170, 'Panama'),
(171, 'Papua New Guinea'),
(172, 'Paraguay'),
(173, 'Peru'),
(174, 'Philippines'),
(175, 'Pitcairn'),
(176, 'Poland'),
(177, 'Portugal'),
(178, 'Puerto Rico'),
(179, 'Qatar'),
(180, 'Reunion'),
(181, 'Romania'),
(182, 'Russian Federation'),
(183, 'Rwanda'),
(184, 'Saint Kitts and Nevis'),
(185, 'Saint Lucia'),
(186, 'Saint Vincent and the Grenadines'),
(187, 'Samoa'),
(188, 'San Marino'),
(189, 'Sao Tome and Principe'),
(190, 'Saudi Arabia'),
(191, 'Senegal'),
(192, 'Serbia'),
(193, 'Seychelles'),
(194, 'Sierra Leone'),
(195, 'Singapore'),
(196, 'Slovakia'),
(197, 'Slovenia'),
(198, 'Solomon Islands'),
(199, 'Somalia'),
(200, 'South Africa'),
(201, 'South Georgia South Sandwich Islands'),
(202, 'Spain'),
(203, 'Sri Lanka'),
(204, 'St. Helena'),
(205, 'St. Pierre and Miquelon'),
(206, 'Sudan'),
(207, 'Suriname'),
(208, 'Svalbard and Jan Mayen Islands'),
(209, 'Swaziland'),
(210, 'Sweden'),
(211, 'Switzerland'),
(212, 'Syrian Arab Republic'),
(213, 'Taiwan'),
(214, 'Tajikistan'),
(215, 'Tanzania, United Republic of'),
(216, 'Thailand'),
(217, 'Togo'),
(218, 'Tokelau'),
(219, 'Tonga'),
(220, 'Trinidad and Tobago'),
(221, 'Tunisia'),
(222, 'Turkey'),
(223, 'Turkmenistan'),
(224, 'Turks and Caicos Islands'),
(225, 'Tuvalu'),
(226, 'Uganda'),
(227, 'Ukraine'),
(228, 'United Arab Emirates'),
(229, 'United Kingdom'),
(230, 'United States'),
(231, 'United States minor outlying islands'),
(232, 'Uruguay'),
(233, 'Uzbekistan'),
(234, 'Vanuatu'),
(235, 'Vatican City State'),
(236, 'Venezuela'),
(237, 'Vietnam'),
(238, 'Virgin Islands (British)'),
(239, 'Virgin Islands (U.S.)'),
(240, 'Wallis and Futuna Islands'),
(241, 'Western Sahara'),
(242, 'Yemen'),
(243, 'Zaire'),
(244, 'Zambia'),
(245, 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `cust_id` int(11) NOT NULL,
  `cust_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_cname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_phone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_country` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_address` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_state` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_zip` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_b_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_b_cname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_b_phone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_b_country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_b_address` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_b_city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_b_state` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_b_zip` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_s_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_s_cname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_s_phone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_s_country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_s_address` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_s_city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_s_state` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_s_zip` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_datetime` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_timestamp` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`cust_id`, `cust_name`, `cust_cname`, `cust_email`, `cust_phone`, `cust_country`, `cust_address`, `cust_city`, `cust_state`, `cust_zip`, `cust_b_name`, `cust_b_cname`, `cust_b_phone`, `cust_b_country`, `cust_b_address`, `cust_b_city`, `cust_b_state`, `cust_b_zip`, `cust_s_name`, `cust_s_cname`, `cust_s_phone`, `cust_s_country`, `cust_s_address`, `cust_s_city`, `cust_s_state`, `cust_s_zip`, `cust_password`, `cust_token`, `cust_datetime`, `cust_timestamp`, `cust_status`) VALUES
(1, 'Đặng Phương Nam', 'ko', 'nam@gmail.com', '0', 'viet nam', 'vn', 'hn', 'k', 'k', 'k', 'k', 'k', '1', '1', '11', '1', '1', '1', '11', '110', '0', 'vn', 'hn', 'a', 'k', '94e398c2c84347a6f66ecfcae20e2ef1', 'a', 'a', 'a', 1),
(11, 'Nam đại ca', 'ABC', 'adudeobiet@gmail.com', '012345', '237', 'Trái đất', 'hà lội', 'ko', '10000', 'Nam ca', 'ABC', '012345', '237', 'hà nội', 'hà nội', 'ko', '10000', 'Nam ca', 'ABC', '012345', '237', 'hà nội', 'hà nội', 'ko', '10000', '94e398c2c84347a6f66ecfcae20e2ef1', 'f0094bbfd80e5b30be3cb872a5f9b73f', '2023-12-16 02:00:51', '1702720851', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer_message`
--

CREATE TABLE `tbl_customer_message` (
  `customer_message_id` int(11) NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_detail` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_end_category`
--

CREATE TABLE `tbl_end_category` (
  `ecat_id` int(11) NOT NULL,
  `ecat_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mcat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_end_category`
--

INSERT INTO `tbl_end_category` (`ecat_id`, `ecat_name`, `mcat_id`) VALUES
(1, 'mũ nón', 1),
(2, 'Kính râm', 1),
(3, 'Vòng', 1),
(4, 'Sandals', 2),
(5, 'Bốt', 2),
(6, 'Vòng', 3),
(7, 'Áo thun', 7),
(8, 'Bông tai', 4),
(9, 'Kính râm', 4),
(11, 'Giày thể thao', 2),
(12, 'Sandals', 6),
(13, 'Giày phẳng', 6),
(14, 'Hoodies', 7),
(15, 'Áo khoác', 7),
(16, 'Quần dài', 8),
(17, 'Jeans', 8),
(18, 'Quần chạy bộ', 8),
(19, 'Quần short', 8),
(20, 'áo thun', 9),
(21, 'Áo Sơ Mi Thường Ngày', 9),
(22, 'Áo sơ mi trang trọng', 9),
(23, 'Áo polo', 9),
(24, 'Áo Vest', 9),
(25, 'Giày kiểu đơn giản', 2),
(26, 'Trai', 10),
(27, 'Gái', 10),
(28, 'Boys', 11),
(29, 'Gái', 11),
(30, 'Trai', 12),
(31, 'Gái', 12),
(32, 'váy đầm', 7),
(33, 'Craptop', 7),
(34, 'Áo thun & áo vest', 7),
(35, 'Quần Legging', 7),
(36, 'Đồ thể thao', 7),
(37, 'Quần áo ngoại cỡ', 7),
(38, 'Tất & hàng dệt kim', 7),
(39, 'nước hoa', 3),
(40, 'Chăm sóc da', 3),
(41, 'Chăm sóc tóc', 3),
(42, 'Jewellery', 4),
(43, 'Nhẫn', 3),
(44, 'Vòng tay', 3),
(45, 'Dây chuyền', 3),
(46, 'Bộ quà tặng', 3),
(47, 'Khăn quàng cổ & mũ nón', 4),
(48, 'Bộ quần áo', 4),
(49, 'Các phụ kiện khác', 4),
(50, 'Pumps', 6),
(51, 'Sneakers', 6),
(52, 'Giày thể thao', 6),
(53, 'Bốt', 6),
(54, 'Giày thoải mái', 6),
(55, 'Dép & Giày thường', 6),
(56, 'Giày trang trọng', 2),
(57, 'Thắt lưng', 1),
(58, 'Bộ quần áo', 1),
(59, 'Các phụ kiện khác', 1),
(60, 'Túi', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_faq`
--

CREATE TABLE `tbl_faq` (
  `faq_id` int(11) NOT NULL,
  `faq_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_content` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_faq`
--

INSERT INTO `tbl_faq` (`faq_id`, `faq_title`, `faq_content`) VALUES
(1, 'Làm thế nào để tìm thấy một mục?', '<h3 class=\"checkout-complete-box font-bold txt16\" style=\"box-sizing: inherit; text-rendering: optimizeLegibility; margin: 0.2rem 0px 0.5rem; padding: 0px; line-height: 1.4; background-color: rgb(250, 250, 250);\"><font color=\"#222222\" face=\"opensans, Helvetica Neue, Helvetica, Helvetica, Arial, sans-serif\"><span style=\"font-size: 15.7143px;\">Chúng tôi có một loạt các sản phẩm tuyệt vời để lựa chọn.</span></font></h3><h3 class=\"checkout-complete-box font-bold txt16\" style=\"box-sizing: inherit; text-rendering: optimizeLegibility; margin: 0.2rem 0px 0.5rem; padding: 0px; line-height: 1.4; background-color: rgb(250, 250, 250);\"><font color=\"#222222\" face=\"opensans, Helvetica Neue, Helvetica, Helvetica, Arial, sans-serif\"><span style=\"font-size: 15.7143px;\">Mẹo 1: Nếu bạn đang tìm kiếm một sản phẩm cụ thể, hãy sử dụng hộp tìm kiếm từ khóa nằm ở đầu trang. Đơn giản chỉ cần gõ những gì bạn đang tìm kiếm và chuẩn bị ngạc nhiên!</span></font></h3><h3 class=\"checkout-complete-box font-bold txt16\" style=\"box-sizing: inherit; text-rendering: optimizeLegibility; margin: 0.2rem 0px 0.5rem; padding: 0px; line-height: 1.4; background-color: rgb(250, 250, 250);\"><font color=\"#222222\" face=\"opensans, Helvetica Neue, Helvetica, Helvetica, Arial, sans-serif\"><span style=\"font-size: 15.7143px;\">Mẹo 2: Nếu bạn muốn khám phá một danh mục sản phẩm, hãy sử dụng Danh mục cửa hàng ở menu phía trên và điều hướng qua các danh mục yêu thích của bạn, nơi chúng tôi sẽ giới thiệu những sản phẩm tốt nhất trong mỗi danh mục.</span></font></h3><h3 class=\"checkout-complete-box font-bold txt16\" style=\"box-sizing: inherit; text-rendering: optimizeLegibility; margin: 0.2rem 0px 0.5rem; padding: 0px; line-height: 1.4; background-color: rgb(250, 250, 250);\"><br></h3>\r\n'),
(2, 'Chính sách hoàn trả của bạn là gì?', '<p><span style=\"color: rgb(10, 10, 10); font-family: opensans, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" center;\"=\"\">Bạn có 15 ngày để thực hiện yêu cầu hoàn tiền sau khi đơn hàng của bạn đã được giao.</span><br></p>\r\n'),
(3, 'Tôi đã nhận được một mặt hàng bị lỗi/hư hỏng, tôi có thể được hoàn lại tiền không?', '<p>Trong trường hợp mặt hàng bạn nhận được bị hư hỏng hoặc bị lỗi, bạn có thể trả lại mặt hàng trong tình trạng tương tự như khi bạn nhận được nó với hộp và/hoặc bao bì ban đầu còn nguyên vẹn. Sau khi nhận được hàng trả lại, chúng tôi sẽ kiểm tra và nếu phát hiện mặt hàng đó bị lỗi hoặc hư hỏng, chúng tôi sẽ xử lý hoàn tiền cùng với mọi phí vận chuyển phát sinh.<br></p>\r\n'),
(4, 'Khi nào không thể \'Trả lại\'?', '<p class=\"a  \" style=\"box-sizing: inherit; text-rendering: optimizelegibility; line-height: 1.6; margin-bottom: 0.714286rem; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" background-color:=\"\" rgb(250,=\"\" 250,=\"\" 250);\"=\"\"><font color=\"#0a0a0a\"><span style=\"font-size: 14px;\">Có một số trường hợp nhất định mà chúng tôi khó hỗ trợ việc trả lại hàng:</span></font></p><p class=\"a  \" style=\"box-sizing: inherit; text-rendering: optimizelegibility; line-height: 1.6; margin-bottom: 0.714286rem; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" background-color:=\"\" rgb(250,=\"\" 250,=\"\" 250);\"=\"\"><font color=\"#0a0a0a\"><span style=\"font-size: 14px;\"><br></span></font></p><p class=\"a  \" style=\"box-sizing: inherit; text-rendering: optimizelegibility; line-height: 1.6; margin-bottom: 0.714286rem; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" background-color:=\"\" rgb(250,=\"\" 250,=\"\" 250);\"=\"\"><font color=\"#0a0a0a\"><span style=\"font-size: 14px;\">Yêu cầu trả lại được thực hiện ngoài khung thời gian quy định, trong vòng 15 ngày kể từ ngày giao hàng.</span></font></p><p class=\"a  \" style=\"box-sizing: inherit; text-rendering: optimizelegibility; line-height: 1.6; margin-bottom: 0.714286rem; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" background-color:=\"\" rgb(250,=\"\" 250,=\"\" 250);\"=\"\"><font color=\"#0a0a0a\"><span style=\"font-size: 14px;\">Sản phẩm đã qua sử dụng, bị hư hỏng hoặc không ở tình trạng như lúc bạn nhận được.</span></font></p><p class=\"a  \" style=\"box-sizing: inherit; text-rendering: optimizelegibility; line-height: 1.6; margin-bottom: 0.714286rem; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" background-color:=\"\" rgb(250,=\"\" 250,=\"\" 250);\"=\"\"><font color=\"#0a0a0a\"><span style=\"font-size: 14px;\">Các danh mục cụ thể như nội y, đồ lót, tất và quần áo miễn phí, v.v.</span></font></p><p class=\"a  \" style=\"box-sizing: inherit; text-rendering: optimizelegibility; line-height: 1.6; margin-bottom: 0.714286rem; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" background-color:=\"\" rgb(250,=\"\" 250,=\"\" 250);\"=\"\"><font color=\"#0a0a0a\"><span style=\"font-size: 14px;\">Sản phẩm bị lỗi được bảo hành theo chế độ bảo hành của nhà sản xuất.</span></font></p><p class=\"a  \" style=\"box-sizing: inherit; text-rendering: optimizelegibility; line-height: 1.6; margin-bottom: 0.714286rem; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" background-color:=\"\" rgb(250,=\"\" 250,=\"\" 250);\"=\"\"><font color=\"#0a0a0a\"><span style=\"font-size: 14px;\">Bất kỳ vật tư tiêu hao nào đã được sử dụng hoặc lắp đặt.</span></font></p><p class=\"a  \" style=\"box-sizing: inherit; text-rendering: optimizelegibility; line-height: 1.6; margin-bottom: 0.714286rem; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" background-color:=\"\" rgb(250,=\"\" 250,=\"\" 250);\"=\"\"><font color=\"#0a0a0a\"><span style=\"font-size: 14px;\">Sản phẩm bị giả mạo hoặc thiếu số serial.</span></font></p><p class=\"a  \" style=\"box-sizing: inherit; text-rendering: optimizelegibility; line-height: 1.6; margin-bottom: 0.714286rem; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" background-color:=\"\" rgb(250,=\"\" 250,=\"\" 250);\"=\"\"><font color=\"#0a0a0a\"><span style=\"font-size: 14px;\">Bất cứ thứ gì còn thiếu trong gói hàng bạn nhận được, bao gồm thẻ giá, nhãn mác, bao bì gốc, quà tặng miễn phí và phụ kiện.</span></font></p><p class=\"a  \" style=\"box-sizing: inherit; text-rendering: optimizelegibility; line-height: 1.6; margin-bottom: 0.714286rem; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" background-color:=\"\" rgb(250,=\"\" 250,=\"\" 250);\"=\"\"><font color=\"#0a0a0a\"><span style=\"font-size: 14px;\">Các mặt hàng dễ vỡ, các mặt hàng liên quan đến vệ sinh.</span></font></p>\r\n'),
(5, 'Các mặt hàng không thể được trả lại là gì?', '<p>Các mặt hàng không thể trả lại là:</p><p><br></p><p>Các mặt hàng thanh lý được đánh dấu rõ ràng như vậy và hiển thị Chính sách không hoàn trả</p><p><br></p><p>Khi ghi chú ưu đãi nêu cụ thể những mặt hàng không thể trả lại.</p><p><br></p><p>Các mặt hàng thuộc các loại sản phẩm dưới đây-</p><p><br></p><p>Đồ lót</p><p>đồ lót</p><p>Tất</p><p>Đồ bơi</p><p>Làm đẹp &amp; Nước hoa</p><p>hàng dệt kim</p><p>Ngoài ra, bất kỳ vật tư tiêu hao nào đã được sử dụng hoặc lắp đặt đều không thể được trả lại. Như đã nêu trong Quyền Bảo vệ người tiêu dùng và phần liên quan về các mặt hàng không thể trả lại<br></p>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_language`
--

CREATE TABLE `tbl_language` (
  `lang_id` int(11) NOT NULL,
  `lang_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_language`
--

INSERT INTO `tbl_language` (`lang_id`, `lang_name`, `lang_value`) VALUES
(1, 'Currency', 'Đồng'),
(2, 'Search Product', 'Tìm kiếm sản phẩm'),
(3, 'Search', 'Tìm kiếm'),
(4, 'Submit', 'Xác nhận'),
(5, 'Update', 'Cập nhật'),
(6, 'Read More', 'Xem thêm'),
(7, 'Serial', 'Thể loại'),
(8, 'Photo', 'Ảnh'),
(9, 'Login', 'Đăng nhập'),
(10, 'Customer Login', 'Đăng nhập khách hàng'),
(11, 'Click here to login', 'Nhấn vào đây để đăng nhập'),
(12, 'Back to Login Page', 'Quay lại trang đăng nhập'),
(13, 'Logged in as', 'Đăng nhập với'),
(14, 'Logout', 'Đăng xuất'),
(15, 'Register', 'Đăng ký'),
(16, 'Customer Registration', 'Đăng ký khách hàng'),
(17, 'Registration Successful', 'Đăng ký thành công'),
(18, 'Cart', 'Giỏ hàng'),
(19, 'View Cart', 'Xem giỏ hàng'),
(20, 'Update Cart', 'Cập nhật giỏ hàng'),
(21, 'Back to Cart', 'Quay lại giỏ hàng'),
(22, 'Checkout', 'Thủ tục thanh toán'),
(23, 'Proceed to Checkout', 'Tiến hành kiểm tra'),
(24, 'Orders', 'Đơn đặt hàng'),
(25, 'Order History', 'lịch sử đơn hàng'),
(26, 'Order Details', 'Chi tiết đặt hàng'),
(27, 'Payment Date and Time', 'Ngày và giờ thanh toán'),
(28, 'Transaction ID', 'ID giao dịch'),
(29, 'Paid Amount', 'Số tiền thanh toán'),
(30, 'Payment Status', 'Tình trạng thanh toán'),
(31, 'Payment Method', 'Phương thức thanh toán'),
(32, 'Payment ID', 'ID thanh toán'),
(33, 'Payment Section', 'Phần thanh toán'),
(34, 'Select Payment Method', 'Chọn phương thức thanh toán'),
(35, 'Select a Method', 'Chọn một phương pháp'),
(36, 'PayPal', 'PayPal'),
(37, 'Stripe', 'QUét mã'),
(38, 'Bank Deposit', 'Ngân hàng'),
(39, 'Card Number', 'Số thẻ'),
(40, 'CVV', 'CVV'),
(41, 'Month', 'tháng'),
(42, 'Year', 'năm'),
(43, 'Send to this Details', 'Gửi tới chi tiết này'),
(44, 'Transaction Information', 'Thông tin giao dịch'),
(45, 'Include transaction id and other information correctly', 'Bao gồm id giao dịch và thông tin khác một cách chính xác'),
(46, 'Pay Now', 'Thanh toán ngay'),
(47, 'Product Name', 'tên sản phẩm'),
(48, 'Product Details', 'Thông tin chi tiết sản phẩm'),
(49, 'Categories', 'Thể loại'),
(50, 'Category:', 'Loại:'),
(51, 'All Products Under', 'Tất cả sản phẩm dưới'),
(52, 'Select Size', 'Chọn kích cỡ'),
(53, 'Select Color', 'Chọn màu'),
(54, 'Product Price', 'Giá sản phẩm'),
(55, 'Quantity', 'Số lượng'),
(56, 'Out of Stock', 'Hết hàng'),
(57, 'Share This', 'Chia sẻ cái này'),
(58, 'Share This Product', 'Chia sẻ sản phẩm này'),
(59, 'Product Description', 'Mô tả Sản phẩm'),
(60, 'Features', 'Đặc trưng'),
(61, 'Conditions', 'Điều kiện'),
(62, 'Return Policy', 'Chính sách hoàn trả'),
(63, 'Reviews', 'Đánh giá'),
(64, 'Review', 'Đánh giá'),
(65, 'Give a Review', 'Đưa ra đánh giá'),
(66, 'Write your comment (Optional)', 'Viết bình luận của bạn (Tùy chọn)'),
(67, 'Submit Review', 'Gửi đánh giá'),
(68, 'You already have given a rating!', 'Bạn đã đưa ra đánh giá rồi!'),
(69, 'You must have to login to give a review', 'Bạn phải đăng nhập để đưa ra đánh giá'),
(70, 'No description found', 'Không tìm thấy mô tả'),
(71, 'No feature found', 'Không tìm thấy tính năng nào'),
(72, 'No condition found', 'Không tìm thấy điều kiện'),
(73, 'No return policy found', 'Không tìm thấy chính sách hoàn trả'),
(74, 'Review not found', 'Không tìm thấy bài đánh giá'),
(75, 'Customer Name', 'tên khách hàng'),
(76, 'Comment', 'Bình luận'),
(77, 'Comments', 'Bình luận'),
(78, 'Rating', 'Đánh giá'),
(79, 'Previous', 'Trước'),
(80, 'Next', 'Sau'),
(81, 'Sub Total', 'Tạm tính'),
(82, 'Total', 'Tổng'),
(83, 'Action', 'Hành động'),
(84, 'Shipping Cost', 'Phí vận chuyển'),
(85, 'Continue Shopping', 'Tiếp tục mua sắm'),
(86, 'Update Billing Address', 'Cập nhật địa chỉ thanh toán'),
(87, 'Update Shipping Address', 'Cập nhật địa chỉ giao hàng'),
(88, 'Update Billing and Shipping Info', 'Cập nhật thông tin thanh toán và vận chuyển'),
(89, 'Dashboard', 'bảng điều khiển'),
(90, 'Welcome to the Dashboard', 'Chào mừng đến với Bảng điều khiển'),
(91, 'Back to Dashboard', 'Quay lại Trang tổng quan'),
(92, 'Subscribe', 'Đặt mua'),
(93, 'Subscribe To Our Newsletter', 'Theo dõi bản tin của chúng tôi'),
(94, 'Email Address', 'Địa chỉ email'),
(95, 'Enter Your Email Address', 'Nhập địa chỉ email của bạn'),
(96, 'Password', 'Mật khẩu'),
(97, 'Forget Password', 'Quên mật khẩu'),
(98, 'Retype Password', 'Gõ lại mật khẩu'),
(99, 'Update Password', 'Cập nhật mật khẩu'),
(100, 'New Password', 'mật khẩu mới'),
(101, 'Retype New Password', 'Gõ lại mật khẩu mới'),
(102, 'Full Name', 'Họ và tên'),
(103, 'Company Name', 'Tên công ty'),
(104, 'Phone Number', 'Số điện thoại'),
(105, 'Address', 'Địa chỉ'),
(106, 'Country', 'Country'),
(107, 'City', 'Thành phố'),
(108, 'State', 'Tình trạng'),
(109, 'Zip Code', 'Zip Code'),
(110, 'About Us', 'Về chúng tôi'),
(111, 'Featured Posts', 'Các bài viết'),
(112, 'Popular Posts', 'Bài viết phổ biến'),
(113, 'Recent Posts', 'Bài viết gần đây'),
(114, 'Contact Information', 'Thông tin liên lạc'),
(115, 'Contact Form', 'Mâu liên hệ'),
(116, 'Our Office', 'Văn phòng của chúng tôi'),
(117, 'Update Profile', 'Cập nhật hồ sơ'),
(118, 'Send Message', 'Gửi tin nhắn'),
(119, 'Message', 'Tin nhắn'),
(120, 'Find Us On Map', 'Bản đồ'),
(121, 'Congratulation! Payment is successful.', 'Xin chúc mừng! Thanh toán thành công.'),
(122, 'Billing and Shipping Information is updated successfully.', 'Thông tin thanh toán và vận chuyển được cập nhật thành công.'),
(123, 'Customer Name can not be empty.', 'Tên khách hàng không được để trống.'),
(124, 'Phone Number can not be empty.', 'Số điện thoại không được để trống.'),
(125, 'Address can not be empty.', 'Địa chỉ không được để trống.'),
(126, 'You must have to select a country.', 'Bạn phải chọn một quốc gia.'),
(127, 'City can not be empty.', 'Thành phố không thể trống rỗng.'),
(128, 'State can not be empty.', 'Trạng thái không thể trống.'),
(129, 'Zip Code can not be empty.', 'Mã Zip không được để trống.'),
(130, 'Profile Information is updated successfully.', 'Thông tin hồ sơ được cập nhật thành công.'),
(131, 'Email Address can not be empty', 'Địa chỉ Email không được để trống'),
(132, 'Email and/or Password can not be empty.', 'Email và/hoặc Mật khẩu không được để trống.'),
(133, 'Email Address does not match.', 'Địa chỉ email không giống.'),
(134, 'Email address must be valid.', 'Địa chỉ email phải hợp lệ.'),
(135, 'You email address is not found in our system.', 'Địa chỉ email của bạn không được tìm thấy trong hệ thống của chúng tôi.'),
(136, 'Please check your email and confirm your subscription.', 'Vui lòng kiểm tra email của bạn và xác nhận đăng ký của bạn.'),
(137, 'Your email is verified successfully. You can now login to our website.', 'Your email is verified successfully. You can now login to our website.'),
(138, 'Password can not be empty.', 'Password can not be empty.'),
(139, 'Passwords do not match.', 'Mất khẩu không hợp lệ.'),
(140, 'Please enter new and retype passwords.', 'Vui lòng nhập mật khẩu mới và nhập lại.'),
(141, 'Password is updated successfully.', 'Mật khẩu được cập nhật thành công.'),
(142, 'To reset your password, please click on the link below.', 'Để đặt lại mật khẩu của bạn, vui lòng nhấp vào liên kết bên dưới.'),
(143, 'PASSWORD RESET REQUEST - YOUR WEBSITE.COM', 'YÊU CẦU THIẾT LẬP MẬT KHẨU - WEBSITE.COM CỦA BẠN'),
(144, 'The password reset email time (24 hours) has expired. Please again try to reset your password.', 'Thời gian email đặt lại mật khẩu (24 giờ) đã hết hạn. Vui lòng thử đặt lại mật khẩu của bạn một lần nữa.'),
(145, 'A confirmation link is sent to your email address. You will get the password reset information in there.', 'Một liên kết xác nhận được gửi đến địa chỉ email của bạn. Bạn sẽ nhận được thông tin đặt lại mật khẩu trong đó.'),
(146, 'Password is reset successfully. You can now login.', 'Mật khẩu được đặt lại thành công. Bây giờ bạn có thể đăng nhập.'),
(147, 'Email Address Already Exists', 'Địa chỉ email đã tồn tại.'),
(148, 'Sorry! Your account is inactive. Please contact to the administrator.', 'Lấy làm tiếc! Tài khoản của bạn không hoạt động. Vui lòng liên hệ với quản trị viên.'),
(149, 'Change Password', 'Đổi mật khẩu'),
(150, 'Registration Email Confirmation for YOUR WEBSITE', 'Xác nhận email đăng ký cho TRANG WEB CỦA BẠN.'),
(151, 'Thank you for your registration! Your account has been created. To active your account click on the link below:', 'Cám ơn bạn đã ghi danh! Tài khoản của bạn đã được tạo. Để kích hoạt tài khoản của bạn hãy nhấp vào liên kết bên dưới:'),
(152, 'Your registration is completed. Please check your email address to follow the process to confirm your registration.', 'Đăng ký của bạn đã hoàn tất. Vui lòng kiểm tra địa chỉ email của bạn để làm theo quy trình xác nhận đăng ký của bạn.\r\n'),
(153, 'No Product Found', 'Không tìm thấy sản phẩm'),
(154, 'Add to Cart', 'Add to Cart'),
(155, 'Related Products', 'Những sảm phẩm tương tự'),
(156, 'See all related products from below', 'Xem tất cả các sản phẩm liên quan từ bên dưới'),
(157, 'Size', 'Kích cỡ'),
(158, 'Color', 'Màu'),
(159, 'Price', 'Giá'),
(160, 'Please login as customer to checkout', 'Vui lòng đăng nhập với tư cách khách hàng để thanh toán'),
(161, 'Billing Address', 'Địa chỉ thanh toán'),
(162, 'Shipping Address', 'Địa chỉ giao hàng'),
(163, 'Rating is Submitted Successfully!', 'Đánh giá đã được gửi thành công!');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mid_category`
--

CREATE TABLE `tbl_mid_category` (
  `mcat_id` int(11) NOT NULL,
  `mcat_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tcat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_mid_category`
--

INSERT INTO `tbl_mid_category` (`mcat_id`, `mcat_name`, `tcat_id`) VALUES
(1, 'Phụ kiện', 1),
(2, 'Giày', 1),
(3, 'Trang sức', 2),
(4, 'Phụ kiện', 2),
(6, 'Giày', 2),
(7, 'Quần áo', 2),
(8, 'Quần', 1),
(9, 'Áo phông & áo sơ mi', 1),
(10, 'Quần áo', 3),
(11, 'Giày', 3),
(12, 'Phụ kiện', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_price` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `product_id`, `product_name`, `size`, `color`, `quantity`, `unit_price`, `payment_id`) VALUES
(6, 89, 'Quần chạy bộ lông cừu nam', 'M', 'Đen', '1', '99000', '1702721897'),
(7, 87, 'Truck Boys Pyjama Quần áo ngủ trẻ mới biết đi', 'XS', 'Trắng', '1', '80000', '1702722030'),
(8, 89, 'Quần chạy bộ lông cừu nam', 'M', 'Đen', '3', '99000', '1702722819');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_page`
--

CREATE TABLE `tbl_page` (
  `id` int(11) NOT NULL,
  `about_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_content` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_banner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_meta_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_meta_keyword` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_meta_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_banner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_meta_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_meta_keyword` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_meta_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_banner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_meta_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_meta_keyword` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_meta_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_banner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_meta_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_meta_keyword` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_meta_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `pgallery_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pgallery_banner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pgallery_meta_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pgallery_meta_keyword` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `pgallery_meta_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `vgallery_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vgallery_banner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vgallery_meta_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vgallery_meta_keyword` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `vgallery_meta_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_page`
--

INSERT INTO `tbl_page` (`id`, `about_title`, `about_content`, `about_banner`, `about_meta_title`, `about_meta_keyword`, `about_meta_description`, `faq_title`, `faq_banner`, `faq_meta_title`, `faq_meta_keyword`, `faq_meta_description`, `blog_title`, `blog_banner`, `blog_meta_title`, `blog_meta_keyword`, `blog_meta_description`, `contact_title`, `contact_banner`, `contact_meta_title`, `contact_meta_keyword`, `contact_meta_description`, `pgallery_title`, `pgallery_banner`, `pgallery_meta_title`, `pgallery_meta_keyword`, `pgallery_meta_description`, `vgallery_title`, `vgallery_banner`, `vgallery_meta_title`, `vgallery_meta_keyword`, `vgallery_meta_description`) VALUES
(1, 'Về chúng tôi', '<p style=\"border: 0px solid; margin-top: 1.5rem; margin-bottom: 0px;\">Chào mừng bạn đến với web thời trang của nhóm 13</p><p style=\"border: 0px solid; margin-top: 1.5rem; margin-bottom: 0px;\">Lợi ích của khách hàng luôn là ưu tiên hàng đầu của chúng tôi, vì vậy chúng tôi hy vọng bạn sẽ thích thú với các sản phẩm của chúng tôi cũng như việc chúng tôi thích cung cấp chúng cho bạn.</p><p style=\"border: 0px solid; margin-top: 1.5rem; margin-bottom: 0px;\"><br></p><p style=\"border: 0px solid; margin-top: 1.5rem; margin-bottom: 0px;\">Chúng tôi đảm bảo bạn sẽ có được những bộ trang phục chất lượng tốt nhất với chính sách đổi trả và đổi hàng miễn phí. Chúng tôi đảm bảo những gì bạn thấy chính xác là những gì bạn nhận được!</p>\r\n', 'about-banner.jpg', 'Web Thời Trang PHP - Chúng tôi', 'Web Thời Trang PHP', 'Mục tiêu của chúng tôi luôn là mang lại những điều tốt nhất cho bạn, chúng tôi đã mang đến một bộ sưu tập khổng lồ cho dù bạn đang tham dự một bữa tiệc, đám cưới hay tất cả những sự kiện yêu cầu trang phục lộng lẫy.', 'Câu hỏi thường gặp', 'faq-banner.jpg', 'web thời trang - FAQ', '', '', 'Blog', 'blog-banner.jpg', 'Ecommerce - Blog', '', '', 'Liên hệ', 'contact-banner.jpg', 'web thời trang - liên hệ', '', '', 'Photo Gallery', 'pgallery-banner.jpg', 'Ecommerce - Photo Gallery', '', '', 'Video Gallery', 'vgallery-banner.jpg', 'Ecommerce - Video Gallery', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_date` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `txnid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paid_amount` int(11) NOT NULL,
  `card_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_cvv` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_month` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_year` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_transaction_info` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_payment`
--

INSERT INTO `tbl_payment` (`id`, `customer_id`, `customer_name`, `customer_email`, `payment_date`, `txnid`, `paid_amount`, `card_number`, `card_cvv`, `card_month`, `card_year`, `bank_transaction_info`, `payment_method`, `payment_status`, `shipping_status`, `payment_id`) VALUES
(56, 11, 'Nam đại ca', 'adudeobiet@gmail.com', '2023-12-16 02:18:17', '', 99100, '', '', '', '', 'Bank Name: Nhom13PHP\r\nAccount Number: 000011112222\r\nBranch Name: HaUIBANK\r\nCountry: Việt Nam', 'Bank Deposit', 'Pending', 'Pending', '1702721897'),
(57, 11, 'Nam đại ca', 'adudeobiet@gmail.com', '2023-12-16 02:20:30', '', 80100, '', '', '', '', 'Bank Name: Nhom13PHP\r\nAccount Number: 000011112222\r\nBranch Name: HaUIBANK\r\nCountry: Việt Nam', 'Bank Deposit', 'Pending', 'Pending', '1702722030'),
(58, 11, 'Nam đại ca', 'adudeobiet@gmail.com', '2023-12-16 02:33:39', '', 297100, '', '', '', '', 'Bank Name: Nhom13PHP\r\nAccount Number: 000011112222\r\nBranch Name: HaUIBANK\r\nCountry: Việt Nam', 'Bank Deposit', 'Pending', 'Pending', '1702722819');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_photo`
--

CREATE TABLE `tbl_photo` (
  `id` int(11) NOT NULL,
  `caption` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_photo`
--

INSERT INTO `tbl_photo` (`id`, `caption`, `photo`) VALUES
(1, 'Photo 1', 'photo-1.jpg'),
(2, 'Photo 2', 'photo-2.jpg'),
(3, 'Photo 3', 'photo-3.jpg'),
(4, 'Photo 4', 'photo-4.jpg'),
(5, 'Photo 5', 'photo-5.jpg'),
(6, 'Photo 6', 'photo-6.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `post_id` int(11) NOT NULL,
  `post_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_content` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `total_view` int(11) NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keyword` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`post_id`, `post_title`, `post_slug`, `post_content`, `post_date`, `photo`, `category_id`, `total_view`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(1, 'Cu vel choro exerci pri et oratio iisque', 'cu-vel-choro-exerci-pri-et-oratio-iisque', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-1.jpg', 3, 14, 'Cu vel choro exerci pri et oratio iisque', '', ''),
(2, 'Epicurei necessitatibus eu facilisi postulant ', 'epicurei-necessitatibus-eu-facilisi-postulant-', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-2.jpg', 3, 6, 'Epicurei necessitatibus eu facilisi postulant ', '', ''),
(3, 'Mei ut errem legimus periculis eos liber', 'mei-ut-errem-legimus-periculis-eos-liber', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-3.jpg', 3, 1, 'Mei ut errem legimus periculis eos liber', '', ''),
(4, 'Id pro unum pertinax oportere vel', 'id-pro-unum-pertinax-oportere-vel', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-4.jpg', 4, 0, 'Id pro unum pertinax oportere vel', '', ''),
(5, 'Tollit cetero cu usu etiam evertitur', 'tollit-cetero-cu-usu-etiam-evertitur', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-5.jpg', 4, 24, 'Tollit cetero cu usu etiam evertitur', '', ''),
(6, 'Omnes ornatus qui et te aeterno', 'omnes-ornatus-qui-et-te-aeterno', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-6.jpg', 4, 2, 'Omnes ornatus qui et te aeterno', '', ''),
(7, 'Vix tale noluisse voluptua ad ne', 'vix-tale-noluisse-voluptua-ad-ne', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-7.jpg', 2, 0, 'Vix tale noluisse voluptua ad ne', '', ''),
(8, 'Liber utroque vim an ne his brute', 'liber-utroque-vim-an-ne-his-brute', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-8.jpg', 2, 12, 'Liber utroque vim an ne his brute', '', ''),
(9, 'Nostrum copiosae argumentum has', 'nostrum-copiosae-argumentum-has', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-9.jpg', 1, 12, 'Nostrum copiosae argumentum has', '', ''),
(10, 'An labores explicari qui eu', 'an-labores-explicari-qui-eu', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-10.jpg', 1, 4, 'An labores explicari qui eu', '', ''),
(11, 'Lorem ipsum dolor sit amet', 'lorem-ipsum-dolor-sit-amet', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-11.jpg', 1, 18, 'Lorem ipsum dolor sit amet', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_old_price` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_current_price` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_qty` int(10) NOT NULL,
  `p_featured_photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_short_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_feature` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_condition` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_return_policy` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_total_view` int(11) NOT NULL,
  `p_is_featured` int(1) NOT NULL,
  `p_is_active` int(1) NOT NULL,
  `ecat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`p_id`, `p_name`, `p_old_price`, `p_current_price`, `p_qty`, `p_featured_photo`, `p_description`, `p_short_description`, `p_feature`, `p_condition`, `p_return_policy`, `p_total_view`, `p_is_featured`, `p_is_active`, `ecat_id`) VALUES
(83, 'Men\'s Ultra Cotton T-Shirt, Multipack', '250.000', '199.000', 77, 'product-featured-83.jpg', '<p style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Chất rắn: 100% Cotton; Màu xám thể thao và thạch anh cổ: 90% Cotton, 10% Polyester; Màu sắc an toàn và thạch cao: 50% Cotton, 50% Polyester.</span><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\"><br></span><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Có sẵn trong 2 gói và nhiều màu sắc để bạn có thể dự trữ màu sắc yêu thích của mình.</span></span></p>', '<p><span style=\"color: rgb(15, 17, 17); font-family: \"Amazon Ember\", Arial, sans-serif; font-size: 14px;\">Style 20020-Multipack; Solids: 100% Cotton.</span><br></p>', '<ul><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\"><font face=\"Arial\">Vai thả dài hơn, tay áo thẳng hơn và tay áo rộng hơn, ngắn hơn</font></span><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\"><font face=\"Arial\">Khâu đôi ở viền để làm cho nó bền lâu</font></span><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\"><font face=\"Arial\">Vải dày và nặng</font></span></span></li></ul>', '<p><br></p>', '<p><br></p>', 3, 0, 1, 21),
(84, 'Đầm maxi đan sườn một vai dáng rộng vừa vặn', '450.000', '300.000', 26, 'product-featured-84.jpg', 'Một nguồn cảm hứng phong cách cần có từ những người có ảnh hưởng trên toàn cầu. Mua sắm các bộ sưu tập phiên bản giới hạn và khám phá những món đồ cần thiết cho tủ quần áo sang trọng. Hãy tìm kiếm nguồn cảm hứng về xu hướng, sự hợp tác độc quyền của thương hiệu và mẹo tạo kiểu của chuyên gia từ những người hiểu biết<br>', '<p style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">86% Tencel, 14% Elastane</span></p>', '<ul><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Chiếc váy maxi này có chiều dài 48\"/122 cm<br></span><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Loose-Fit: được thiết kế để tạo sự thoải mái</span><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Đường cắt xoắn tinh tế tạo thêm nét lãng mạn cho kiểu váy maxi hoa một vai tối giản này, được cắt từ vải dệt kim có gân pha trộn Tencel nhẹ. Thắt lưng ở thắt lưng để có thêm hình dáng và màu sắc nổi bật</span></span></li></ul>', '', '<p><font color=\"#202124\" face=\"arial, sans-serif\"><span style=\"font-size: 16px;\">15 ngày</span></font></p>', 23, 1, 1, 32),
(85, 'Giày nam da', '500.000', '400.000', 32, 'product-featured-85.jpg', '<p><span style=\"color: rgb(51, 51, 51); font-family: \" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" small;\"=\"\">Mang lại lớp hoàn thiện bằng da sang trọng cho kiểu dáng thoải mái của một chiếc giày mang lại chất lượng và sự thoải mái như nhau Khoen kim loại và miếng vá gót chân tương phản cân bằng sự đồng nhất kiểu dáng đẹp của phong cách. Mặc giày của bạn với quần jean, áo sơ mi Oxford và áo blazer.</span><br></p>', '<p style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Đế tổng hợp, vừa vặn an toàn.</span></p>', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; padding: 0px;\" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\"><font color=\"#0f1111\">Được chế tác bằng da thuộc hoàn thiện thủ công hoặc nubuck chải bóng được sản xuất tại xưởng thuộc da của chúng tôi</font></span><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\"><font color=\"#0f1111\">Lớp lót dệt và đế có thể tháo rời đúc mang lại sự mềm mại và thoáng khí</font></span><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\"><font color=\"#0f1111\">Đế nhẹ mang lại độ bám đệm và tính linh hoạt bằng cách sử dụng Công nghệ thoải mái trực tiếp ECCO FluidForm cải tiến</font></span><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\"><font color=\"#0f1111\">Dây buộc vải có thể dễ dàng điều chỉnh để vừa vặn an toàn</font></span><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\"><font color=\"#0f1111\">Hình dạng cuối cùng về mặt giải phẫu đầy đủ mang lại sự vừa vặn cực kỳ thoải mái</font></span></span></li></ul>', '<p><br></p>', '<p><font color=\"#202124\" face=\"arial, sans-serif\"><span style=\"font-size: 16px;\">ko</span></font></p>', 6, 0, 1, 25),
(87, 'Truck Boys Pyjama Quần áo ngủ trẻ mới biết đi', '100.000', '80.000', 67, 'product-featured-87.jpg', '<p style=\"padding: 0px; margin-bottom: 14px;\" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><font color=\"#0f1111\">Bộ đồ ngủ:</font></p><p style=\"padding: 0px; margin-bottom: 14px;\" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><font color=\"#0f1111\"><br></font></p><p style=\"padding: 0px; margin-bottom: 14px;\" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><font color=\"#0f1111\">Đường viền cổ thuyền rộng, cạp quần co giãn và chất liệu co giãn giúp bạn dễ dàng bật/tắt. Chất liệu thoáng mát, hút ẩm và thiết kế bộ quần giúp bé tản nhiệt nhanh hơn và giữ ấm trong ngày mát</font></p><p style=\"padding: 0px; margin-bottom: 14px;\" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><font color=\"#0f1111\"><br></font></p><p style=\"padding: 0px; margin-bottom: 14px;\" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><font color=\"#0f1111\">Bộ đồ tuyệt vời với họa tiết hoạt hình nhiều màu sắc, thể thao và sành điệu, phù hợp cho cả đồ ngủ và trang phục hàng ngày, đặc biệt là đồ ngủ ngày đi học</font></p>', 'Set áo thun quần dài cho bé Size 1Y - 14Y', '<p></p><p></p><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); padding: 0px; font-family: \" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><ul></ul></ul><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); padding: 0px; font-family: \" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><ul></ul></ul><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); padding: 0px; font-family: \" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><ul></ul></ul><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); padding: 0px; font-family: \" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><ul></ul></ul><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); padding: 0px; font-family: \" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><ul></ul></ul><p></p><ul><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">BỘ PAJAMAS SIÊU ẤM - Cả trên và dưới đều được làm từ 100% cotton tự nhiên cực kỳ mềm mại, thoải mái và giữ mát trong mùa hè</span><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">MẪU ĐÁNG YÊU - Phía trên có họa tiết hoạt hình máy bay và không gian siêu ngầu, phía dưới có rất nhiều hình máy bay nhỏ, được các bé trai yêu thích</span><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">THIẾT KẾ TUYỆT VỜI - Đường viền cổ rộng thông thường, nhãn bán nhiệt ở cổ áo, chân thẳng thoải mái, cho phép cử động không hạn chế và ngủ ngon hơn</span><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">CHĂM SÓC DỄ DÀNG - Là chất liệu bền và chất lượng cao, chỉ cần giặt máy hoặc giặt tay trong nước nhẹ</span><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">VỪA VẶN-Là thiết kế vừa vặn và chất liệu cotton co giãn, tốt hơn hết bạn nên cân nhắc một hoặc hai kích thước lớn hơn</span></span></li></ul>', '', '<p><font color=\"#202124\" face=\"arial, sans-serif\"><span style=\"font-size: 16px;\">ko</span></font></p>', 7, 0, 1, 26),
(88, 'Áo thun nam tay ngắn ngực trái phong cách thể thao Under Armour', '200.000', '150.000', 59, 'product-featured-88.jpg', '<p><span style=\"color: rgb(51, 51, 51); font-family: \" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" small;\"=\"\">Chất liệu vải pha cotton siêu mềm mang lại sự thoải mái cả ngày.</span><br></p>', '<p style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Rộng hơn để mang lại cảm giác thoải mái hoàn toàn.</span></p>', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; padding: 0px;\" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\"><font color=\"#0f1111\">Chất liệu cotton pha cotton siêu mềm mang lại sự thoải mái cả ngày</font></span><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\"><font color=\"#0f1111\">Rộng: Cắt đầy đủ hơn để hoàn toàn thoải mái.</font></span></span></li></ul>', '', '<p><font color=\"#202124\" face=\"arial, sans-serif\"><span style=\"font-size: 16px;\">ko</span></font></p>', 8, 0, 1, 21),
(89, 'Quần chạy bộ lông cừu nam', '100.000', '99.000', 106, 'product-featured-89.jpg', '<p><span style=\"color: rgb(51, 51, 51); font-family: \" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" small;\"=\"\">Ống quần thoải mái và cạp quần co giãn mang lại phong cách thoải mái cho chiếc quần thường ngày cổ điển này</span><br></p>', '<p style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Ống quần thoải mái và dây thắt lưng co giãn, có dây rút mang lại phong cách thoải mái cho chiếc quần thường ngày cổ điển này</span></p>', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; padding: 0px;\" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\"><font color=\"#0f1111\">Mỗi ngày trở nên tốt hơn: chúng tôi lắng nghe phản hồi của khách hàng và tinh chỉnh từng chi tiết để đảm bảo chất lượng, độ vừa vặn và sự thoải mái</font><br></span></li></ul>', '', '<p><font color=\"#202124\" face=\"arial, sans-serif\"><span style=\"font-size: 16px;\">Hoàn trả sau 15 ngày</span></font></p>', 14, 1, 1, 18),
(104, 'Mũ thời trang nữ chữ M', '100.000', '59.000', 100, 'product-featured-104.jpg', '<p><span style=\"color: rgb(1, 46, 66); font-family: system-ui, -apple-system, \"Segoe UI\", Roboto, \"Helvetica Neue\", Arial, \"Noto Sans\", \"Liberation Sans\", sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; font-size: 15px; text-align: justify;\">Mũ Vành rộng chữ M dùng cho mùa hè nắng nóng 💐 Mũ vừa che nắng vừa thời trang cho phái nữ</span><br></p>', '<p><span style=\"color: rgb(1, 46, 66); font-family: system-ui, -apple-system, \"Segoe UI\", Roboto, \"Helvetica Neue\", Arial, \"Noto Sans\", \"Liberation Sans\", sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; font-size: 15px; text-align: justify;\">Mũ đc làm từ chất liệu vải mềm siêu bền</span><br></p>', '', '', '', 0, 1, 1, 49),
(105, 'Áo Khoác Varsity Festive Vibe', '500.000', '400.000', 150, 'product-featured-103.jpg', '<p style=\"margin-bottom: 1rem; font-family: Mulish, sans-serif; font-size: 16px;\">Thiết kế varsity đem đến cảm giác hài hòa, tinh tế và nhẹ nhàng.</p><p style=\"margin-bottom: 1rem; font-family: Mulish, sans-serif; font-size: 16px;\">Vải nỈ&nbsp;mềm mại, có khả năng giữ ấm cũng như bề mặt trong ngoài được bao phủ bởi lớp lông tơ mịn màng, tạo nên sự khác biệt.</p><p style=\"margin-bottom: 1rem; font-family: Mulish, sans-serif; font-size: 16px;\">Phom&nbsp;áo khoác vừa phải,&nbsp;không quá bó sát hay thùng thình&nbsp;mà&nbsp;ôm gọn vào cơ thể người mặc. Cổ áo được bo thun gân nổi bật.</p>', '<ul style=\"margin-bottom: 1rem; font-family: Mulish, sans-serif; font-size: 16px;\"><li><span style=\"font-weight: bolder;\">Chất liệu</span>:&nbsp;Vải Nỉ</li></ul><ul style=\"margin-bottom: 1rem; font-family: Mulish, sans-serif; font-size: 16px;\"><li><span style=\"font-weight: bolder;\">Form áo</span>: Regular&nbsp;</li><li><span style=\"font-weight: bolder;\">Đặc điểm</span>:&nbsp;</li></ul>', '', '', '', 0, 1, 1, 15);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_color`
--

CREATE TABLE `tbl_product_color` (
  `id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_product_color`
--

INSERT INTO `tbl_product_color` (`id`, `color_id`, `p_id`) VALUES
(69, 1, 4),
(70, 4, 4),
(77, 6, 6),
(82, 2, 12),
(83, 9, 13),
(84, 3, 14),
(85, 2, 15),
(86, 6, 15),
(87, 3, 16),
(88, 3, 17),
(89, 2, 18),
(90, 3, 19),
(91, 1, 20),
(92, 8, 21),
(93, 2, 22),
(94, 2, 23),
(95, 2, 25),
(96, 5, 26),
(97, 2, 27),
(98, 4, 27),
(99, 5, 28),
(100, 7, 29),
(101, 10, 30),
(102, 11, 31),
(103, 14, 32),
(105, 2, 34),
(106, 1, 35),
(107, 3, 36),
(109, 6, 38),
(110, 2, 39),
(111, 11, 42),
(149, 3, 10),
(150, 6, 9),
(151, 3, 8),
(152, 7, 7),
(159, 2, 77),
(163, 17, 79),
(164, 2, 78),
(167, 3, 80),
(168, 2, 81),
(172, 1, 82),
(173, 2, 82),
(174, 4, 82),
(276, 32, 89),
(277, 32, 88),
(278, 30, 87),
(279, 37, 87),
(280, 31, 85),
(281, 30, 84),
(282, 32, 84),
(283, 30, 83),
(284, 37, 83),
(287, 30, 103);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_photo`
--

CREATE TABLE `tbl_product_photo` (
  `pp_id` int(11) NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_product_photo`
--

INSERT INTO `tbl_product_photo` (`pp_id`, `photo`, `p_id`) VALUES
(106, '106.jpg', 83),
(107, '107.jpg', 83),
(108, '108.jpg', 84),
(109, '109.jpg', 84),
(110, '110.jpg', 85),
(111, '111.jpg', 85),
(114, '114.jpg', 87),
(115, '115.jpg', 87),
(116, '116.jpg', 88),
(117, '117.jpg', 88),
(118, '118.jpg', 89),
(119, '119.jpg', 89),
(136, '.jpg', 104),
(137, '.jpg', 103);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_size`
--

CREATE TABLE `tbl_product_size` (
  `id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_product_size`
--

INSERT INTO `tbl_product_size` (`id`, `size_id`, `p_id`) VALUES
(44, 1, 6),
(56, 8, 12),
(57, 9, 12),
(58, 10, 12),
(59, 11, 12),
(60, 12, 12),
(61, 13, 12),
(62, 9, 13),
(63, 11, 13),
(64, 13, 13),
(65, 15, 13),
(66, 9, 14),
(67, 11, 14),
(68, 12, 14),
(69, 13, 14),
(70, 9, 15),
(71, 11, 15),
(72, 13, 15),
(73, 15, 16),
(74, 16, 16),
(75, 17, 16),
(76, 16, 17),
(77, 17, 17),
(78, 14, 18),
(79, 15, 18),
(80, 16, 18),
(81, 17, 18),
(82, 15, 19),
(83, 16, 19),
(84, 17, 19),
(85, 14, 20),
(86, 15, 20),
(87, 17, 20),
(88, 15, 21),
(89, 17, 21),
(90, 15, 22),
(91, 16, 22),
(92, 17, 22),
(93, 15, 23),
(94, 16, 23),
(95, 17, 23),
(96, 18, 25),
(97, 19, 25),
(98, 20, 25),
(99, 21, 25),
(100, 19, 26),
(101, 21, 26),
(102, 22, 26),
(103, 23, 26),
(104, 19, 27),
(105, 20, 27),
(106, 21, 27),
(107, 22, 27),
(108, 19, 28),
(109, 20, 28),
(110, 21, 28),
(111, 19, 29),
(112, 20, 29),
(113, 22, 29),
(114, 1, 30),
(115, 2, 30),
(116, 3, 30),
(117, 4, 30),
(118, 23, 31),
(119, 26, 32),
(123, 2, 34),
(124, 2, 35),
(125, 2, 36),
(126, 3, 36),
(129, 2, 38),
(130, 3, 38),
(131, 4, 38),
(132, 5, 38),
(133, 27, 39),
(134, 8, 42),
(210, 3, 10),
(211, 4, 10),
(212, 5, 10),
(213, 6, 10),
(214, 3, 9),
(215, 4, 9),
(216, 3, 8),
(217, 4, 8),
(218, 2, 7),
(219, 3, 7),
(220, 4, 7),
(249, 1, 79),
(250, 2, 79),
(251, 3, 79),
(252, 1, 78),
(253, 2, 78),
(254, 3, 78),
(255, 4, 78),
(256, 5, 78),
(259, 26, 80),
(262, 3, 82),
(263, 4, 82),
(489, 3, 89),
(490, 4, 89),
(491, 5, 89),
(492, 6, 89),
(493, 7, 89),
(494, 3, 88),
(495, 4, 88),
(496, 5, 88),
(497, 6, 88),
(498, 7, 88),
(499, 1, 87),
(500, 2, 87),
(501, 3, 87),
(502, 4, 87),
(503, 5, 87),
(504, 51, 85),
(505, 52, 85),
(506, 53, 85),
(507, 54, 85),
(508, 55, 85),
(509, 56, 85),
(510, 2, 84),
(511, 3, 84),
(512, 4, 84),
(513, 5, 84),
(514, 6, 84),
(515, 1, 83),
(516, 2, 83),
(517, 3, 83),
(518, 4, 83),
(519, 5, 83),
(520, 6, 83),
(521, 7, 83),
(528, 1, 103),
(529, 2, 103),
(530, 3, 103),
(531, 4, 103),
(532, 5, 103),
(533, 6, 103);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rating`
--

CREATE TABLE `tbl_rating` (
  `rt_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `comment` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_service`
--

CREATE TABLE `tbl_service` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_service`
--

INSERT INTO `tbl_service` (`id`, `title`, `content`, `photo`) VALUES
(5, 'Hoàn trả', 'Hoàn trả hàng trước 15 ngày', 'service-5.png'),
(6, 'Miễn phí vận chuyển', 'Miễn phí vận chuyển trong nước', 'service-6.png'),
(7, 'Chuyển phát nhanh', 'Các mặt hàng được vận chuyển trong vòng 24 giờ.', 'service-7.png'),
(8, 'Bảo đảm sự hài lòng', 'Chúng tôi đảm bảo cho bạn sự hài lòng về chất lượng của chúng tôi.', 'service-8.png'),
(9, 'Thanh toán an toàn', 'Cung cấp tùy chọn thanh toán an toàn cho tất cả mọi người', 'service-9.png'),
(10, 'Đảm bảo lại tiền', 'Cung cấp bảo đảm hoàn lại tiền cho các sản phẩm của chúng tôi', 'service-10.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_settings`
--

CREATE TABLE `tbl_settings` (
  `id` int(11) NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `footer_about` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `footer_copyright` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_address` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_fax` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_map_iframe` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `receive_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `receive_email_subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `receive_email_thank_you_message` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `forget_password_message` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_recent_post_footer` int(10) NOT NULL,
  `total_popular_post_footer` int(10) NOT NULL,
  `total_recent_post_sidebar` int(11) NOT NULL,
  `total_popular_post_sidebar` int(11) NOT NULL,
  `total_featured_product_home` int(11) NOT NULL,
  `total_latest_product_home` int(11) NOT NULL,
  `total_popular_product_home` int(11) NOT NULL,
  `meta_title_home` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keyword_home` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description_home` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_login` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_registration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_forget_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_reset_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_search` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_cart` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_checkout` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_product_category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_blog` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cta_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cta_content` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `cta_read_more_text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cta_read_more_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cta_photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured_product_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured_product_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latest_product_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latest_product_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `popular_product_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `popular_product_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `testimonial_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `testimonial_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `testimonial_photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `newsletter_text` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `paypal_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_public_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_secret_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_detail` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `before_head` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `after_body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `before_body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `home_service_on_off` int(11) NOT NULL,
  `home_welcome_on_off` int(11) NOT NULL,
  `home_featured_product_on_off` int(11) NOT NULL,
  `home_latest_product_on_off` int(11) NOT NULL,
  `home_popular_product_on_off` int(11) NOT NULL,
  `home_testimonial_on_off` int(11) NOT NULL,
  `home_blog_on_off` int(11) NOT NULL,
  `newsletter_on_off` int(11) NOT NULL,
  `ads_above_welcome_on_off` int(1) NOT NULL,
  `ads_above_featured_product_on_off` int(1) NOT NULL,
  `ads_above_latest_product_on_off` int(1) NOT NULL,
  `ads_above_popular_product_on_off` int(1) NOT NULL,
  `ads_above_testimonial_on_off` int(1) NOT NULL,
  `ads_category_sidebar_on_off` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_settings`
--

INSERT INTO `tbl_settings` (`id`, `logo`, `favicon`, `footer_about`, `footer_copyright`, `contact_address`, `contact_email`, `contact_phone`, `contact_fax`, `contact_map_iframe`, `receive_email`, `receive_email_subject`, `receive_email_thank_you_message`, `forget_password_message`, `total_recent_post_footer`, `total_popular_post_footer`, `total_recent_post_sidebar`, `total_popular_post_sidebar`, `total_featured_product_home`, `total_latest_product_home`, `total_popular_product_home`, `meta_title_home`, `meta_keyword_home`, `meta_description_home`, `banner_login`, `banner_registration`, `banner_forget_password`, `banner_reset_password`, `banner_search`, `banner_cart`, `banner_checkout`, `banner_product_category`, `banner_blog`, `cta_title`, `cta_content`, `cta_read_more_text`, `cta_read_more_url`, `cta_photo`, `featured_product_title`, `featured_product_subtitle`, `latest_product_title`, `latest_product_subtitle`, `popular_product_title`, `popular_product_subtitle`, `testimonial_title`, `testimonial_subtitle`, `testimonial_photo`, `blog_title`, `blog_subtitle`, `newsletter_text`, `paypal_email`, `stripe_public_key`, `stripe_secret_key`, `bank_detail`, `before_head`, `after_body`, `before_body`, `home_service_on_off`, `home_welcome_on_off`, `home_featured_product_on_off`, `home_latest_product_on_off`, `home_popular_product_on_off`, `home_testimonial_on_off`, `home_blog_on_off`, `newsletter_on_off`, `ads_above_welcome_on_off`, `ads_above_featured_product_on_off`, `ads_above_latest_product_on_off`, `ads_above_popular_product_on_off`, `ads_above_testimonial_on_off`, `ads_category_sidebar_on_off`) VALUES
(1, 'logo.png', 'favicon.png', '<p>Lorem ipsum dolor sit amet, omnis signiferumque in mei, mei ex enim concludaturque. Senserit salutandi euripidis no per, modus maiestatis scribentur est an.Â Ea suas pertinax has.</p>\r\n', 'WEB_BAN_THOI_TRANG_NHOM_13', '298 Cầu Diễn, Hà Nội', 'nhom13@gmail.com', '0900999999', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3094.020958405712!2d-84.39261378514685!3d39.151504939531584!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8841acfb8da30203%3A0x193175e741781f21!2s4293%20Simpson%20Ave%2C%20Cincinnati%2C%20OH%2045227%2C%20USA!5e0!3m2!1sen!2snp!4v1647796779407!5m2!1sen!2snp\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 'nhom13@gmail.com', 'web thoi trang', 'Cảm ơn', 'web thoi trang', 4, 4, 5, 5, 5, 6, 8, 'Web thời trang nhóm 13', 'cửa hàng thời trang trực tuyến, cửa hàng quần áo trực tuyến, quần áo trực tuyến', 'dự án php web thời trang với cơ sở dữ liệu mysql', 'banner_login.jpg', 'banner_registration.jpg', 'banner_forget_password.jpg', 'banner_reset_password.jpg', 'banner_search.jpg', 'banner_cart.jpg', 'banner_checkout.jpg', 'banner_product_category.jpg', 'banner_blog.jpg', 'Welcome To Our Ecommerce Website', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, \r\nat usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. ', 'Read More', '#', 'cta.jpg', 'Sản phẩm nổi bật', 'Danh sách của chúng tôi về các sản phẩm nổi bật hàng đầu', 'Sản phẩm mới nhất', 'Danh sách các sản phẩm được thêm gần đây của chúng tôi', 'Sản phẩm phổ biến', 'Sản phẩm phổ biến dựa trên sự lựa chọn của khách hàng', 'Testimonials', 'See what our clients tell about us', 'testimonial.jpg', 'Latest Blog', 'See all our latest articles and news from below', 'Đăng ký nhận bản tin của chúng tôi để biết các chương trình khuyến mãi và giảm giá mới nhất.', 'admin@gmail.com', 'pk_test_0SwMWadgu8DwmEcPdUPRsZ7b', 'sk_test_TFcsLJ7xxUtpALbDo1L5c1PN', 'Bank Name: Nhom13PHP\r\nAccount Number: 000011112222\r\nBranch Name: HaUIBANK\r\nCountry: Việt Nam', '', '<div id=\"fb-root\"></div>\r\n<script>(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = \"//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.10&appId=323620764400430\";\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n}(document, \'script\', \'facebook-jssdk\'));</script>', '<!--Start of Tawk.to Script-->\r\n<script type=\"text/javascript\">\r\nvar Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n(function(){\r\nvar s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\ns1.async=true;\r\ns1.src=\'https://embed.tawk.to/5ae370d7227d3d7edc24cb96/default\';\r\ns1.charset=\'UTF-8\';\r\ns1.setAttribute(\'crossorigin\',\'*\');\r\ns0.parentNode.insertBefore(s1,s0);\r\n})();\r\n</script>\r\n<!--End of Tawk.to Script-->', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping_cost`
--

CREATE TABLE `tbl_shipping_cost` (
  `shipping_cost_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `amount` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_shipping_cost`
--

INSERT INTO `tbl_shipping_cost` (`shipping_cost_id`, `country_id`, `amount`) VALUES
(1, 228, '11'),
(2, 167, '10'),
(3, 13, '8'),
(4, 230, '0');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping_cost_all`
--

CREATE TABLE `tbl_shipping_cost_all` (
  `sca_id` int(11) NOT NULL,
  `amount` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_shipping_cost_all`
--

INSERT INTO `tbl_shipping_cost_all` (`sca_id`, `amount`) VALUES
(1, '100');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_size`
--

CREATE TABLE `tbl_size` (
  `size_id` int(11) NOT NULL,
  `size_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_size`
--

INSERT INTO `tbl_size` (`size_id`, `size_name`) VALUES
(1, 'XS'),
(2, 'S'),
(3, 'M'),
(4, 'L'),
(5, 'XL'),
(6, 'XXL'),
(7, '3XL'),
(48, '36'),
(49, '37'),
(50, '38'),
(51, '39'),
(52, '40'),
(53, '41'),
(54, '42'),
(55, '43'),
(56, '44'),
(57, '45');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `id` int(11) NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `heading` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `button_text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `button_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`id`, `photo`, `heading`, `content`, `button_text`, `button_url`, `position`) VALUES
(1, 'slider-1.png', 'Chào mừng đến với web thời trang nhóm 13', 'Mua sắm trực tuyến các phụ kiện mới nhất', 'Xem phụ kiện', '', 'Center'),
(2, 'slider-2.jpg', 'Giảm giá 50% cho tất cả sản phẩm', '', 'Xem thêm', '#', 'Center'),
(3, 'slider-3.png', 'Hỗ trợ khách hàng 24 giờ', '', 'Xem thêm', '#', 'Right');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_social`
--

CREATE TABLE `tbl_social` (
  `social_id` int(11) NOT NULL,
  `social_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `social_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `social_icon` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_social`
--

INSERT INTO `tbl_social` (`social_id`, `social_name`, `social_url`, `social_icon`) VALUES
(1, 'Facebook', 'https://www.facebook.com/#', 'fa fa-facebook'),
(2, 'Twitter', 'https://www.twitter.com/#', 'fa fa-twitter'),
(3, 'LinkedIn', '', 'fa fa-linkedin'),
(4, 'Google Plus', '', 'fa fa-google-plus'),
(5, 'Pinterest', '', 'fa fa-pinterest'),
(6, 'YouTube', 'https://www.youtube.com/#', 'fa fa-youtube'),
(7, 'Instagram', 'https://www.instagram.com/#', 'fa fa-instagram'),
(8, 'Tumblr', '', 'fa fa-tumblr'),
(9, 'Flickr', '', 'fa fa-flickr'),
(10, 'Reddit', '', 'fa fa-reddit'),
(11, 'Snapchat', '', 'fa fa-snapchat'),
(12, 'WhatsApp', 'https://www.whatsapp.com/#', 'fa fa-whatsapp'),
(13, 'Quora', '', 'fa fa-quora'),
(14, 'StumbleUpon', '', 'fa fa-stumbleupon'),
(15, 'Delicious', '', 'fa fa-delicious'),
(16, 'Digg', '', 'fa fa-digg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subscriber`
--

CREATE TABLE `tbl_subscriber` (
  `subs_id` int(11) NOT NULL,
  `subs_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subs_date` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subs_date_time` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subs_hash` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subs_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_subscriber`
--

INSERT INTO `tbl_subscriber` (`subs_id`, `subs_email`, `subs_date`, `subs_date_time`, `subs_hash`, `subs_active`) VALUES
(7, 'adas@gmail.com', '2023-12-15', '2023-12-15 19:52:28', '9c7e4015d1048587bb67c646874331ab', 0),
(8, 'nam@gmail.com', '2023-12-16', '2023-12-16 01:44:42', '65a41338e05b94fbfba17d53f6b5814e', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_top_category`
--

CREATE TABLE `tbl_top_category` (
  `tcat_id` int(11) NOT NULL,
  `tcat_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_on_menu` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_top_category`
--

INSERT INTO `tbl_top_category` (`tcat_id`, `tcat_name`, `show_on_menu`) VALUES
(1, 'Nam', 1),
(2, 'Nữ', 1),
(3, 'Trẻ em', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(10) NOT NULL,
  `full_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `full_name`, `email`, `phone`, `password`, `photo`, `role`, `status`) VALUES
(1, 'Administrator', 'admin@mail.com', '7777777777', 'd00f5d5217896fb7fd601412cb890830', 'user-1.png', 'Super Admin', 'Active'),
(2, 'Christine', 'christine@mail.com', '4444444444', '81dc9bdb52d04dc20036dbd8313ed055', 'user-13.jpg', 'Admin', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_video`
--

CREATE TABLE `tbl_video` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iframe_code` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_video`
--

INSERT INTO `tbl_video` (`id`, `title`, `iframe_code`) VALUES
(1, 'Video 1', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/L3XAFSMdVWU\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(2, 'Video 2', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/sinQ06YzbJI\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(4, 'Video 3', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ViZNgU-Yt-Y\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_color`
--
ALTER TABLE `tbl_color`
  ADD PRIMARY KEY (`color_id`);

--
-- Indexes for table `tbl_country`
--
ALTER TABLE `tbl_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `tbl_customer_message`
--
ALTER TABLE `tbl_customer_message`
  ADD PRIMARY KEY (`customer_message_id`);

--
-- Indexes for table `tbl_end_category`
--
ALTER TABLE `tbl_end_category`
  ADD PRIMARY KEY (`ecat_id`);

--
-- Indexes for table `tbl_faq`
--
ALTER TABLE `tbl_faq`
  ADD PRIMARY KEY (`faq_id`);

--
-- Indexes for table `tbl_language`
--
ALTER TABLE `tbl_language`
  ADD PRIMARY KEY (`lang_id`);

--
-- Indexes for table `tbl_mid_category`
--
ALTER TABLE `tbl_mid_category`
  ADD PRIMARY KEY (`mcat_id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_page`
--
ALTER TABLE `tbl_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_photo`
--
ALTER TABLE `tbl_photo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `tbl_product_color`
--
ALTER TABLE `tbl_product_color`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product_photo`
--
ALTER TABLE `tbl_product_photo`
  ADD PRIMARY KEY (`pp_id`);

--
-- Indexes for table `tbl_product_size`
--
ALTER TABLE `tbl_product_size`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_rating`
--
ALTER TABLE `tbl_rating`
  ADD PRIMARY KEY (`rt_id`);

--
-- Indexes for table `tbl_service`
--
ALTER TABLE `tbl_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_shipping_cost`
--
ALTER TABLE `tbl_shipping_cost`
  ADD PRIMARY KEY (`shipping_cost_id`);

--
-- Indexes for table `tbl_shipping_cost_all`
--
ALTER TABLE `tbl_shipping_cost_all`
  ADD PRIMARY KEY (`sca_id`);

--
-- Indexes for table `tbl_size`
--
ALTER TABLE `tbl_size`
  ADD PRIMARY KEY (`size_id`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_social`
--
ALTER TABLE `tbl_social`
  ADD PRIMARY KEY (`social_id`);

--
-- Indexes for table `tbl_subscriber`
--
ALTER TABLE `tbl_subscriber`
  ADD PRIMARY KEY (`subs_id`);

--
-- Indexes for table `tbl_top_category`
--
ALTER TABLE `tbl_top_category`
  ADD PRIMARY KEY (`tcat_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_video`
--
ALTER TABLE `tbl_video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_color`
--
ALTER TABLE `tbl_color`
  MODIFY `color_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `tbl_country`
--
ALTER TABLE `tbl_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_customer_message`
--
ALTER TABLE `tbl_customer_message`
  MODIFY `customer_message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_end_category`
--
ALTER TABLE `tbl_end_category`
  MODIFY `ecat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `tbl_faq`
--
ALTER TABLE `tbl_faq`
  MODIFY `faq_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_language`
--
ALTER TABLE `tbl_language`
  MODIFY `lang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT for table `tbl_mid_category`
--
ALTER TABLE `tbl_mid_category`
  MODIFY `mcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_page`
--
ALTER TABLE `tbl_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `tbl_photo`
--
ALTER TABLE `tbl_photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `tbl_product_color`
--
ALTER TABLE `tbl_product_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=288;

--
-- AUTO_INCREMENT for table `tbl_product_photo`
--
ALTER TABLE `tbl_product_photo`
  MODIFY `pp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `tbl_product_size`
--
ALTER TABLE `tbl_product_size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=534;

--
-- AUTO_INCREMENT for table `tbl_rating`
--
ALTER TABLE `tbl_rating`
  MODIFY `rt_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_service`
--
ALTER TABLE `tbl_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_shipping_cost`
--
ALTER TABLE `tbl_shipping_cost`
  MODIFY `shipping_cost_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_shipping_cost_all`
--
ALTER TABLE `tbl_shipping_cost_all`
  MODIFY `sca_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_size`
--
ALTER TABLE `tbl_size`
  MODIFY `size_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_social`
--
ALTER TABLE `tbl_social`
  MODIFY `social_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_subscriber`
--
ALTER TABLE `tbl_subscriber`
  MODIFY `subs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_top_category`
--
ALTER TABLE `tbl_top_category`
  MODIFY `tcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_video`
--
ALTER TABLE `tbl_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
