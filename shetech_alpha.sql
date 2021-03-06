-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 30, 2016 at 12:23 PM
-- Server version: 5.5.42-37.1
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `shetech_alpha`
--

-- --------------------------------------------------------

--
-- Table structure for table `agent_registration`
--

CREATE TABLE IF NOT EXISTS `agent_registration` (
  `agent_type` varchar(6) NOT NULL,
  `agent_id` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `password` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `area` varchar(100) NOT NULL,
  `landline` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `logo` varchar(200) NOT NULL,
  `status` char(1) NOT NULL,
  `company_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ascii;

--
-- Dumping data for table `agent_registration`
--

INSERT INTO `agent_registration` (`agent_type`, `agent_id`, `name`, `password`, `country`, `city`, `area`, `landline`, `mobile`, `logo`, `status`, `company_name`) VALUES
('AGENT', 'faizan@yahoo.com', 'Faizan', '4444', 'Pakistan', 'Lahore', 'Gulshan e ravi', '03214292014', '03214292014', '', 'A', 'SHE Real Estate'),
('AGENT', 'imran@hotmail.com', 'Imran Nawaz', '12345', 'Pakistan', 'Lahoe', 'G.Ravi', '042-37401143', '03219476093', '', 'A', 'Alpha estates'),
('AGENT', 'javaria@yahoo.com', 'javaria', '3322', 'Pakistan', 'Lahore', 'Gulshan e Ravi', '042-02641223', '0326549842', '', 'A', 'SHE Real Estate'),
('AGENT', 'kashifali@shetechnologies.com', 'Kashif Ali', '4455', 'Pakistan', 'Lahore', 'Gulshan e Ravi', '042-37401143', '03204510272', '', 'A', 'SHE Real Estate'),
('AGENT', 'talha@hotmail.com', 'talha Zafar', '321654', 'pakistan', 'lahore', 'gulshan eravi ', '042-37401143', '03224445737', '', 'A', 'Alpha estates'),
('AGENT', 'umer@hotmail.com', 'Umar tahir', '12345', 'Pakistan', 'lahore', 'Gulshan e Ravi', '042-37401143', '03364175570', '', 'A', 'Alpha estates');

-- --------------------------------------------------------

--
-- Table structure for table `agent_wise_property`
--

CREATE TABLE IF NOT EXISTS `agent_wise_property` (
  `agent_id` varchar(200) NOT NULL,
  `property_id` bigint(20) unsigned NOT NULL,
  `property_type` varchar(100) DEFAULT NULL,
  `property_city` varchar(200) DEFAULT NULL,
  `property_scheme` varchar(500) DEFAULT NULL,
  `property_size` varchar(100) DEFAULT NULL,
  `post_type` varchar(50) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `location` varchar(500) DEFAULT NULL,
  `detail_desc` varchar(500) DEFAULT NULL,
  `deal_by` varchar(500) NOT NULL,
  `contact_no` varchar(100) NOT NULL,
  `picture_1` varchar(100) DEFAULT NULL,
  `picture_2` varchar(100) DEFAULT NULL,
  `picture_3` varchar(100) DEFAULT NULL,
  `posting_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` char(1) DEFAULT NULL,
  `hot` varchar(10) DEFAULT NULL,
  `property_value` char(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=ascii;

--
-- Dumping data for table `agent_wise_property`
--

INSERT INTO `agent_wise_property` (`agent_id`, `property_id`, `property_type`, `property_city`, `property_scheme`, `property_size`, `post_type`, `price`, `location`, `detail_desc`, `deal_by`, `contact_no`, `picture_1`, `picture_2`, `picture_3`, `posting_date`, `status`, `hot`, `property_value`) VALUES
('kashifali@shetechnologies.com', 9, '1', 'Lahore', '29', '20', 'SALE', '30000000', 'Babur Block, Sector A, Bahria Orchard Housing Society, Lahore.', 'It has 5 Beds with attached bath, TV Lounge, Drawing, Dining & Kitchen etc.', '', '', '9_picture_1.jpg', '9_picture_2.jpg', '9_picture_3.jpg', '2015-05-22 13:57:35', 'A', 'Y', 'S'),
('kashifali@shetechnologies.com', 10, '1', 'Lahore', '26', '10', 'SALE', '15000000', 'Bahria Town - Sector E, Lahore.', 'It has 5 bedrooms, TV lounge, D/D, servant quarter and marble flooring.', '', '', '10_picture_1.jpg', '10_picture_2.jpg', '10_picture_3.jpg', '2015-05-22 14:07:55', 'A', 'Y', 'S'),
('kashifali@shetechnologies.com', 11, '2', 'Lahore', '29', '10', 'SALE', '3900000', 'Plot No. 208, Bahria Orchard Lahore.', '', '', '', '11_picture_1.jpg', '11_picture_2.jpg', '11_picture_3.jpg', '2015-05-22 14:36:49', 'A', 'Y', 'S'),
('kashifali@shetechnologies.com', 12, '2', 'Lahore', '26', '10', 'SALE', '5500000', 'Near to World 7th biggest Jamia, Sector E, Bahria Town Lahore.', '', '', '', '12_picture_1.jpg', '12_picture_2.jpg', '12_picture_3.jpg', '2015-05-22 14:45:49', 'A', 'Y', 'S'),
('javaria@yahoo.com', 16, '1', 'Abbottabad', '5', '20', 'SALE', '200000', 'Corner', '', '', '', '16_picture_1.jpg', 'no_image', 'no_image', '2015-06-24 11:10:22', 'A', 'N', 'S'),
('umer@hotmail.com', 18, '2', 'Bahawalpur', '52', '10', 'SALE', '2000000', 'Cornor, Jade Block', '4 Bath, 1 bed', '', '', '18_picture_1.jpg', '18_picture_2.jpg', '18_picture_3.jpg', '2016-05-26 07:06:20', 'A', 'Y', 'S'),
('umer@hotmail.com', 19, '2', 'Bahawalpur', '52', '10', 'SALE', '2000000', 'Cornor, Jade Block', '4 Bath, 1 bed', '', '', '19_picture_1.jpg', '19_picture_2.jpg', '19_picture_3.jpg', '2016-05-26 07:06:50', 'A', 'Y', 'S'),
('umer@hotmail.com', 21, '1', 'Lahore', '80', '20', 'SALE', '500000', 'Normal, B-Block', '5 Bed, 1 Kitchen, 1 Batch', '', '', '21_picture_1.jpg', '21_picture_2.jpg', 'no_image', '2016-05-26 07:14:36', 'A', 'Y', 'S'),
('umer@hotmail.com', 25, '1', 'Lahore', '26', '20', 'SALE', '5000000', 'Normal, D-Block, Sector-E', '5 Bed, 2 Kitchen,', '', '', '25_picture_1.jpg', '25_picture_2.jpg', '25_picture_3.jpg', '2016-05-26 07:32:02', 'A', 'Y', 'S'),
('umer@hotmail.com', 27, '2', 'Lahore', '111', '40', 'SALE', '10000000', 'Main Boulevard, Phase-5, Plot No. 20', '', '', '', '27_picture_1.jpg', '27_picture_2.jpg', '27_picture_3.jpg', '2016-05-26 07:40:14', 'A', 'Y', 'S'),
('umer@hotmail.com', 29, '7', 'Islamabad', '5', '5', 'SALE', '50000', 'Front', '', '', '', '29_picture_1.jpg', 'no_image', 'no_image', '2016-05-26 09:57:05', 'A', 'N', 'R'),
('umer@hotmail.com', 30, '1', 'Multan', '41', '10', 'SALE', '250000', '', '', '', '', 'no_image', '30_picture_2.jpg', 'no_image', '2016-05-26 10:16:38', 'A', 'N', 'R'),
('umer@hotmail.com', 31, '1', 'Lahore', '22', '40', 'SALE', '300000', 'Park Facing', '3 Bed', '', '', '31_picture_1.jpg', '31_picture_2.jpg', '31_picture_3.jpg', '2016-05-26 11:13:49', 'A', 'N', 'R'),
('umer@hotmail.com', 33, '1', 'Lahore', '11', '30', 'SALE', '4000000', 'Normal', '5 Bed, 2 Kitchen', '', '', '33_picture_1.jpg', '33_picture_2.jpg', '33_picture_3.jpg', '2016-05-26 11:26:06', 'A', 'Y', 'S'),
('imran@hotmail.com', 35, '1', 'Lahore', '9', '40', 'SALE', '20000000', 'corner', '4 beds 2 kitchen ', '', '', '35_picture_1.jpg', '35_picture_2.jpg', 'no_image', '2016-05-30 08:57:48', 'A', 'Y', 'S');

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE IF NOT EXISTS `branches` (
  `brn_id` varchar(50) NOT NULL,
  `brn_name` varchar(200) NOT NULL,
  `brn_address` varchar(500) NOT NULL,
  `brn_phone1` varchar(20) NOT NULL,
  `brn_phone2` varchar(20) NOT NULL,
  `brn_mobile` varchar(20) NOT NULL,
  `brn_email1` varchar(150) NOT NULL,
  `brn_email2` varchar(150) NOT NULL,
  `brn_maplat` varchar(100) NOT NULL,
  `brn_maplong` varchar(100) NOT NULL,
  `brn_img` varchar(100) NOT NULL,
  `brn_mobile2` int(11) NOT NULL,
  `order_no` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ascii;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`brn_id`, `brn_name`, `brn_address`, `brn_phone1`, `brn_phone2`, `brn_mobile`, `brn_email1`, `brn_email2`, `brn_maplat`, `brn_maplong`, `brn_img`, `brn_mobile2`, `order_no`) VALUES
('1012', 'Main branch', ' 7/A, Faisal Street, Toheed Park, Gulshan - e - Ravi, Lahore, Pakistan.', '+92 42 3740 1143', '+92 42 3740 2480', '92 333 0444777', 'info@shetechnologies.com', 'support@shetechnologies.com', '31.548115', '74.291819', '6-Marla-01-Shabbar.jpg', 0, 1),
('1013', 'Main branch', ' 7/A, Faisal Street, Toheed Park, Gulshan - e - Ravi, Lahore, Pakistan.', '+92 42 3740 1143', '+92 42 3740 2480', '92 300 8166 876', 'info@shetechnologies.com', 'support@shetechnologies.com', '31.548115', '74.291819', '6-M-01-copy.jpg', 0, 2),
('1014', 'Main branch', ' 7/A, Faisal Street, Toheed Park, Gulshan - e - Ravi, Lahore, Pakistan.', '+92 42 3740 1143', '+92 42 3740 2480', '92 300 8166 876', 'info@shetechnologies.com', 'support@shetechnologies.com', '31.548115', '74.291819', '4-Marla Khalid Rehman 01.jpg.jpg', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE IF NOT EXISTS `city` (
  `city_code` varchar(50) CHARACTER SET ascii NOT NULL,
  `city_name` varchar(100) CHARACTER SET ascii NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_code`, `city_name`) VALUES
('Abbottabad', 'Abbottabad'),
('Attock', 'Attock'),
('Awaran', 'Awaran'),
('Bagh', 'Bagh'),
('Bahawalnagar', 'Bahawalnagar'),
('Bahawalpur', 'Bahawalpur'),
('Bannu', 'Bannu'),
('Bhakkar', 'Bhakkar'),
('Bhimber', 'Bhimber'),
('Burewala', 'Burewala'),
('Chaghi', 'Chaghi'),
('Chakwal', 'Chakwal'),
('Chiniot', 'Chiniot'),
('Chitral', 'Chitral'),
('Chunian', 'Chunian'),
('Dadu', 'Dadu'),
('Daska', 'Daska'),
('Dera Ghazi Khan', 'Dera Ghazi Khan'),
('Faisalabad', 'Faisalabad'),
('FATA', 'FATA'),
('FDA City Faisalabad', 'FDA City Faisalabad'),
('Gilgit', 'Gilgit'),
('Gujranwala', 'Gujranwala'),
('Gujrat', 'Gujrat'),
('Gwadar', 'Gwadar'),
('Hafizabad', 'Hafizabad'),
('Haripur', 'Haripur'),
('Haroonabad', 'Haroonabad'),
('Hasan Abdal', 'Hasan Abdal'),
('Hunza', 'Hunza'),
('Hyderabad', 'Hyderabad'),
('Iran', 'Iran'),
('Islamabad', 'Islamabad'),
('Jacobabad', 'Jacobabad'),
('Jhang', 'Jhang'),
('Jhelum', 'Jhelum'),
('Kalat', 'Kalat'),
('Karachi', 'Karachi'),
('Kasur', 'Kasur'),
('Khanewal', 'Khanewal'),
('Kharian', 'Kharian'),
('Khuzdar', 'Khuzdar'),
('Kohat', 'Kohat'),
('Kotli', 'Kotli'),
('Lahore', 'Lahore'),
('Larkana', 'Larkana'),
('Lasbela', 'Lasbela'),
('Layyah', 'Layyah'),
('Loralai', 'Loralai'),
('Makran', 'Makran'),
('Malakand', 'Malakand'),
('Mandi Bahauddin', 'Mandi Bahauddin'),
('Mardan', 'Mardan'),
('Mingora', 'Mingora'),
('Mirpur', 'Mirpur'),
('Mirpur Khas', 'Mirpur Khas'),
('Multan', 'Multan'),
('Murree', 'Murree'),
('Muzaffarabad', 'Muzaffarabad'),
('Muzaffargarh', 'Muzaffargarh'),
('Nankana Sahib', 'Nankana Sahib'),
('Naran', 'Naran'),
('Narowal', 'Narowal'),
('Nasirabad', 'Nasirabad'),
('Nawabshah', 'Nawabshah'),
('Neelum', 'Neelum'),
('Nowshera', 'Nowshera'),
('Okara', 'Okara'),
('Pakpattan', 'Pakpattan'),
('Peshawar', 'Peshawar'),
('Quetta', 'Quetta'),
('Rahim Yar Khan', 'Rahim Yar Khan'),
('Rawalakot', 'Rawalakot'),
('Rawalpindi', 'Rawalpindi'),
('Rawat', 'Rawat'),
('Rohri', 'Rohri'),
('Sahiwal', 'Sahiwal'),
('Sargodha', 'Sargodha'),
('Sheikhupura', 'Sheikhupura'),
('Sialkot', 'Sialkot'),
('Sibi', 'Sibi'),
('Skardu', 'Skardu'),
('Sudhnoti', 'Sudhnoti'),
('Sukkur', 'Sukkur'),
('Swat', 'Swat'),
('Taxila', 'Taxila'),
('Thatta', 'Thatta'),
('Toba Tek Singh', 'Toba Tek Singh'),
('Vehari', 'Vehari'),
('Wah', 'Wah'),
('Wazirabad', 'Wazirabad'),
('Waziristan', 'Waziristan'),
('Zhob', 'Zhob');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE IF NOT EXISTS `company` (
  `com_id` int(1) NOT NULL,
  `com_name` varchar(30) NOT NULL,
  `status` varchar(1) NOT NULL,
  `com_fb` varchar(500) NOT NULL,
  `com_tw` varchar(500) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=armscii8;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`com_id`, `com_name`, `status`, `com_fb`, `com_tw`) VALUES
(1, 'Alpha estates', 'A', 'https://www.facebook.com/shetechnologies.', 'https://twitter.com/');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE IF NOT EXISTS `events` (
  `event_id` int(4) NOT NULL,
  `event_desc` varchar(30) DEFAULT NULL,
  `event_pic` varchar(20) DEFAULT NULL,
  `event_link` varchar(100) DEFAULT NULL,
  `event_order` int(3) DEFAULT NULL,
  `event_status` char(1) DEFAULT NULL,
  `type` char(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ascii;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`event_id`, `event_desc`, `event_pic`, `event_link`, `event_order`, `event_status`, `type`) VALUES
(1, 'EID ', NULL, '', 1, 'A', 'Picture'),
(2, 'Add', NULL, '', 1, 'A', 'Video');

-- --------------------------------------------------------

--
-- Table structure for table `map`
--

CREATE TABLE IF NOT EXISTS `map` (
  `map_name` varchar(200) NOT NULL,
  `map_link` varchar(200) NOT NULL,
  `map_orderno` varchar(11) NOT NULL,
  `map_id` int(50) NOT NULL,
  `map_pic` varchar(150) NOT NULL,
  `map_city` varchar(150) NOT NULL,
  `map_status` char(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=ascii;

--
-- Dumping data for table `map`
--

INSERT INTO `map` (`map_name`, `map_link`, `map_orderno`, `map_id`, `map_pic`, `map_city`, `map_status`) VALUES
('Omega Villas ', '', '1', 1, 'Omega', 'Lahore', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `news_id` int(3) NOT NULL,
  `ser_no` int(3) NOT NULL,
  `news_desc` varchar(500) DEFAULT NULL,
  `new_order_no` int(3) NOT NULL,
  `news_status` char(1) NOT NULL,
  `pk_no` int(3) NOT NULL,
  `news_detail` varchar(5000) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=ascii;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`news_id`, `ser_no`, `news_desc`, `new_order_no`, `news_status`, `pk_no`, `news_detail`) VALUES
(0, 1, 'she real estate is the on of the best estate in Pakistan', 1, 'A', 17, ''),
(0, 2, 'Search Property according to your needs and contact us if anything interests you.', 2, 'A', 21, ''),
(0, 3, 'Search Property according to your needs and contact us if anything interests you.', 3, 'A', 22, ''),
(0, 5, 'your needs and contact us if anything interests you.your needs and contact us if anything interests you.', 5, 'A', 24, ''),
(0, 6, 'she real estate is the on of the best estate.', 6, 'D', 26, '');

-- --------------------------------------------------------

--
-- Table structure for table `our_team`
--

CREATE TABLE IF NOT EXISTS `our_team` (
  `emp_id` int(6) NOT NULL,
  `emp_name` varchar(100) NOT NULL,
  `emp_desg` varchar(50) NOT NULL,
  `emp_contact` varchar(15) NOT NULL,
  `emp_email` varchar(150) NOT NULL,
  `emp_contact2` varchar(20) NOT NULL,
  `emp_email2` varchar(150) NOT NULL,
  `phone_no` varchar(20) NOT NULL,
  `emp_status` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ascii;

--
-- Dumping data for table `our_team`
--

INSERT INTO `our_team` (`emp_id`, `emp_name`, `emp_desg`, `emp_contact`, `emp_email`, `emp_contact2`, `emp_email2`, `phone_no`, `emp_status`) VALUES
(1, 'Muhammad Asif Malik', 'C.E.O', '0321-4332323', '', '', '', ' 92-42-35695670', ''),
(2, 'Maj (R) Ejaz Saeed ', 'Managing Director ', '0335-4083330', '', '', '', '92-42-35695670', '');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE IF NOT EXISTS `projects` (
  `porj_id` varchar(50) NOT NULL,
  `proj_name` varchar(200) NOT NULL,
  `proj_address` varchar(500) NOT NULL,
  `proj_location` varchar(200) NOT NULL,
  `proj_orderno` int(11) NOT NULL,
  `proj_status` varchar(50) NOT NULL,
  `proj_rec_status` varchar(11) NOT NULL,
  `proj_img` varchar(200) NOT NULL,
  `proj_detail` varchar(5000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ascii;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`porj_id`, `proj_name`, `proj_address`, `proj_location`, `proj_orderno`, `proj_status`, `proj_rec_status`, `proj_img`, `proj_detail`) VALUES
('2014', 'LDA CITY', 'lda.city', 'Lahore', 1, 'finnal', 'A', 'she', ''),
('2015', 'DHA ', 'dha', 'lahore', 2, 'finnal', 'A', 'dha', '');

-- --------------------------------------------------------

--
-- Table structure for table `property_schemes`
--

CREATE TABLE IF NOT EXISTS `property_schemes` (
  `scheme_id` int(5) NOT NULL,
  `scheme_name` varchar(500) CHARACTER SET ascii DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8;

--
-- Dumping data for table `property_schemes`
--

INSERT INTO `property_schemes` (`scheme_id`, `scheme_name`) VALUES
(5, 'Abdalians Housing Society'),
(6, 'Acro Greens Housing Society'),
(7, 'Air Lines Housing Society'),
(8, 'Air Avenue Housing Society'),
(9, 'Al Hamra Housing Society'),
(10, 'Allama Iqbal Town Housing Society'),
(11, 'Alpha Society Housing Society'),
(12, 'Architects and Engineers Housing Society'),
(13, 'Ashrafi Town Housing Society'),
(14, 'Audit and Accounts housing society'),
(15, 'Audit and Accounts Phase 1 Housing Society'),
(16, 'Audit and Accounts Phase 2 Housing Society'),
(17, 'AWT Lahore Housing Society'),
(18, 'AWT Lahore Phase 1 Housing Society'),
(19, ' AWT Lahore Phase 2 Housing Society'),
(20, 'Askari Lahore Housing Society'),
(21, 'Bagh E Eram Housing Society'),
(22, 'Bahria Town Executive Lodges Housing Society'),
(23, 'Bahria Town Meadows Villas Housing Society'),
(24, 'Bahria Town Safari Villas Housing Society'),
(25, ' Bahria Town Lahore Sector A B C D Housing Society'),
(26, 'Bahria Town Lahore Sector E Housing Society'),
(27, ' Bahria Town Lahore Sector B Housing Society'),
(28, 'Bahria Town Lahore Sector C & D Housing Society'),
(29, 'Bahria Orchard Housing Society'),
(30, 'Bahria Town Overseas Enclave Housing Society'),
(31, 'Beacon House Housing Society'),
(32, 'Bankers City Housing Society'),
(33, 'Canal Gardens Housing Society'),
(34, 'Canal View Housing Society'),
(35, 'Cavalry Ground Housing Society'),
(36, 'Central Park Housing Society'),
(37, 'Chinar Courts Housing Society'),
(38, 'Chinnar Bagh Housing Society'),
(39, 'DHA Broadway CommercialHousing Society'),
(40, 'DHA Commercial Areas Housing Society'),
(41, 'DHA Phase 1 Housing Society'),
(42, 'DHA  Phase 2 Housing Society'),
(43, 'DHA Phase 3 Housing Society'),
(44, 'DHA Phase 4 Housing Society'),
(45, 'DHA Phase 5 Housing Society'),
(46, 'DHA Phase 6 Housing Society'),
(47, 'DHA Phase 7 Housing Society'),
(48, 'DHA  Phase 8  Housing Society'),
(49, 'DHA Town  Phase 9 Housing Society'),
(50, 'Haloki Gardens DHA '),
(51, 'Haloki Gardens DHA  Phase 11 Housing Society'),
(52, 'Parkview  DHA Housing Society'),
(53, 'DHA Rahbar Phase 1 Housing Society'),
(54, 'DHA Rahbar Phase 2 Housing Society'),
(55, 'Divine Gardens Housing Society'),
(56, 'DHA EME Sector Housing Society'),
(57, 'Eden City Housing Society'),
(58, 'Elite Town Housing Society'),
(59, 'Engineers Town Housing Society'),
(60, 'Fazaia Housing Society'),
(61, 'Formanites Housing Society'),
(62, 'Faisal Town Housing Society'),
(63, 'GCP Housing Society'),
(64, 'Gosha E AhbabLahore Housing Society'),
(65, 'Govt Officers Housing Society'),
(66, 'Govt Superior Services Housing Society'),
(67, 'Green City Housing Society'),
(68, 'Gulbarg Housing Society'),
(69, 'Gulbahar Housing Society'),
(70, 'Gulshan Ravi Housing Society'),
(71, 'Gulshan E Ravi Housing Society'),
(72, 'Gul E Damin Housing Society'),
(73, 'Inmol Housing Society'),
(74, 'Iqbal Avenue Phase 1 Housing Society'),
(75, 'Iqbal Avenue Phase 2 Housing Society'),
(76, 'GTS Housing Society'),
(77, 'IEP Housing Society'),
(78, 'Izmir Housing Society'),
(79, 'Jubilee Town Housing Society'),
(80, 'Johar Town Phase 1 Housing Society'),
(81, 'Johar Town  Phase 2 Housing Society'),
(82, 'Judicial Colony Housing Society'),
(83, 'KEMCHS Housing Society'),
(84, 'Khayaban E Amin Housing Society'),
(85, 'Lake City Housing Society'),
(86, 'Lahore Ring Road housing Schemes '),
(87, 'Lalazar Housing Society'),
(88, 'Lalazar  Phase 2 Housing Society'),
(89, 'Marghzar Housing Society'),
(90, 'Military Accounts Housing Society'),
(91, 'Model Town Housing Society'),
(92, 'Mustafa Town Housing Society'),
(93, 'Muhafiz Town Phase 1 Housing Society'),
(94, 'Muhafiz Town  Phase 2 Housing Society'),
(95, 'Naz Town  Housing Society'),
(96, 'New Garden Town Housing Society'),
(97, 'Nesheman Iqbal Phase 1 Housing Society'),
(98, 'Nesheman Iqbal Phase 2 Housing Society'),
(99, 'Nespak Phase 1 Housing Society'),
(100, 'Nespak Phase 2 Housing Society'),
(101, 'NFC Phase 1 Housing Society'),
(102, 'NFC Phase 2 Map Housing Society'),
(103, 'Park View Villas Multan Road Housing Society'),
(104, 'Pak Arab Housing Society'),
(105, 'Pakistan Medical Housing Society'),
(106, 'Paragon City Housing Society'),
(107, 'PCSIR Phase 1 Housing Society'),
(108, 'PCSIR Phase 2 Housing Society'),
(109, ' P & D  Housing Society'),
(110, 'Punjab Govt Servants Luxury Homes Housing Society'),
(111, 'Punjab Govt Phase 2 Housing Society'),
(112, 'Punjab Board of Revenue Housing Society'),
(113, 'Punjab Coop Housing Society'),
(114, 'PIA Housing Society'),
(115, 'Punjab University Housing Society'),
(116, 'Rail Town Housing Society'),
(117, 'Revenue Housing Society'),
(118, 'Sabzazar Phase 1 2 Housing Society'),
(119, 'State Cement Housing Society'),
(120, 'State Life  Phase 1 Housing Society'),
(121, 'State Life Phase 2 Housing Society'),
(122, 'Sukh Chayn gardens Housing Society'),
(123, 'Sunny Park Housing Society'),
(124, 'Sui Gas Phase 1 Housing Society'),
(125, 'Sui Gas Phase 2 Housing Society'),
(126, 'Shadman Colony Housing Society'),
(127, 'TIP Housing Society'),
(128, 'Tech Housing Society'),
(129, 'Tariq Gardens Housing Society'),
(130, 'Town Ship Housing Society'),
(131, 'UET Housing Society'),
(132, 'Tricon Village Housing Society'),
(133, 'Valencia Housing Society'),
(134, 'Wapda Town  Phase 1 Housing Society'),
(135, 'Wapda Phase 1 Extension Housing Society'),
(136, 'Wapda Town Phase 2 Housing Society'),
(137, 'Wapda Finance Officer Housing Society');

-- --------------------------------------------------------

--
-- Table structure for table `property_size`
--

CREATE TABLE IF NOT EXISTS `property_size` (
  `size_code` int(11) NOT NULL,
  `size_value` varchar(200) NOT NULL,
  `property_size_value` varchar(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=ascii;

--
-- Dumping data for table `property_size`
--

INSERT INTO `property_size` (`size_code`, `size_value`, `property_size_value`) VALUES
(1, 'Below 1 Marla', '0,1'),
(2, '1 to 5 Marla', '1,5'),
(3, '5 to 10 Marla', '5,10'),
(4, '10 to 15 Marla', '10,15'),
(5, '15 to 20 Marla', '15,20'),
(6, '1 to 2 Kanal', '20,40'),
(7, '2 to 4 Kanal', '40,60');

-- --------------------------------------------------------

--
-- Table structure for table `property_type`
--

CREATE TABLE IF NOT EXISTS `property_type` (
  `type_code` int(5) NOT NULL,
  `type_desc` varchar(50) CHARACTER SET ascii DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8;

--
-- Dumping data for table `property_type`
--

INSERT INTO `property_type` (`type_code`, `type_desc`) VALUES
(0, '<-- Select Property Type -->'),
(1, 'House'),
(2, 'Plot'),
(3, 'File'),
(4, 'Flats'),
(5, 'Villas'),
(6, 'Buildings'),
(7, 'Shop'),
(8, 'Office'),
(9, 'Hotel'),
(10, 'Factories'),
(11, 'Showrooms');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE IF NOT EXISTS `slides` (
  `page_id` varchar(8) NOT NULL,
  `slide_id` int(5) NOT NULL,
  `slide_title` varchar(500) DEFAULT NULL,
  `slide_image` varchar(200) NOT NULL,
  `slide_link` varchar(500) DEFAULT NULL,
  `slide_heights` varchar(10) DEFAULT NULL,
  `slide_width` varchar(10) DEFAULT NULL,
  `order_no` int(5) DEFAULT NULL,
  `status` char(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=ascii;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`page_id`, `slide_id`, `slide_title`, `slide_image`, `slide_link`, `slide_heights`, `slide_width`, `order_no`, `status`) VALUES
('Main', 1, 'slider_01', 'home', '', '330', '700', 1, 'A'),
('Main', 2, 'slider_02', 'home1', '', '330', '700', 2, 'A'),
('Main', 7, 'slider_03', 'Home2', '', '330', '700', 3, 'A'),
('Main', 8, 'Slider6', 'Slider6', '', '330', '700', 4, 'A');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` varchar(10) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_pw` varchar(20) NOT NULL,
  `user_status` char(1) NOT NULL,
  `user_designation` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ascii;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_pw`, `user_status`, `user_designation`) VALUES
('sa', 'super admin', '123', 'A', 'Admin'),
('su', 'super user', '12', 'A', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `version_release`
--

CREATE TABLE IF NOT EXISTS `version_release` (
  `version_no` int(5) NOT NULL,
  `release_no` int(5) NOT NULL,
  `release_date` date DEFAULT NULL,
  `remarks` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ascii COMMENT='Created By Mustafa Khalil';

--
-- Dumping data for table `version_release`
--

INSERT INTO `version_release` (`version_no`, `release_no`, `release_date`, `remarks`) VALUES
(1, 1001, '2015-05-22', 'Updated Map and our team and contact us'),
(1, 1002, '2015-06-22', 'Updated Value Updates on all Real estate');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agent_registration`
--
ALTER TABLE `agent_registration`
  ADD PRIMARY KEY (`agent_id`);

--
-- Indexes for table `agent_wise_property`
--
ALTER TABLE `agent_wise_property`
  ADD PRIMARY KEY (`property_id`), ADD UNIQUE KEY `property_id` (`property_id`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`brn_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_code`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`com_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `map`
--
ALTER TABLE `map`
  ADD PRIMARY KEY (`map_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`pk_no`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`porj_id`);

--
-- Indexes for table `property_schemes`
--
ALTER TABLE `property_schemes`
  ADD PRIMARY KEY (`scheme_id`);

--
-- Indexes for table `property_size`
--
ALTER TABLE `property_size`
  ADD PRIMARY KEY (`size_code`);

--
-- Indexes for table `property_type`
--
ALTER TABLE `property_type`
  ADD PRIMARY KEY (`type_code`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD UNIQUE KEY `slide_id` (`slide_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `version_release`
--
ALTER TABLE `version_release`
  ADD PRIMARY KEY (`version_no`,`release_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agent_wise_property`
--
ALTER TABLE `agent_wise_property`
  MODIFY `property_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `com_id` int(1) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `map`
--
ALTER TABLE `map`
  MODIFY `map_id` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `pk_no` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `property_size`
--
ALTER TABLE `property_size`
  MODIFY `size_code` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `slide_id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
