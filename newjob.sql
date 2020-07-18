-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2020 at 09:57 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.2.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `job`
--

-- --------------------------------------------------------

--
-- Table structure for table `benefit`
--

CREATE TABLE `benefit` (
  `id` int(11) NOT NULL,
  `value` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `benefit`
--

INSERT INTO `benefit` (`id`, `value`) VALUES
(1, 'Bảo hiểm theo quy định'),
(2, 'Du Lịch'),
(3, 'Thưởng'),
(4, 'Chăm sóc sức khỏe'),
(5, 'Đào tạo'),
(6, 'Tăng lương'),
(7, 'Máy tính xách tay'),
(8, 'Phụ cấp'),
(9, 'Xe đưa đón'),
(10, 'Du lịch nước ngoài'),
(11, 'Đồng phục'),
(12, 'Công tác phí'),
(13, 'Phụ cấp thâm niên'),
(14, 'Chế độ nghỉ phép'),
(15, 'Chế độ tập thể dục');

-- --------------------------------------------------------

--
-- Table structure for table `benefit_job`
--

CREATE TABLE `benefit_job` (
  `id` int(11) NOT NULL,
  `id_job` int(11) DEFAULT NULL,
  `id_benefit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `benefit_job`
--

INSERT INTO `benefit_job` (`id`, `id_job`, `id_benefit`) VALUES
(85, 111, 1),
(86, 111, 3),
(87, 111, 5),
(88, 111, 7),
(89, 111, 9),
(90, 111, 11),
(91, 111, 13),
(92, 111, 15),
(99, 118, 1),
(100, 118, 2),
(101, 118, 3),
(102, 118, 4),
(103, 119, 1),
(104, 119, 3),
(105, 120, 1),
(106, 120, 2),
(107, 120, 3),
(108, 120, 4),
(109, 120, 5),
(110, 120, 6),
(111, 120, 7),
(112, 120, 8),
(113, 120, 9),
(114, 120, 10),
(115, 120, 12),
(116, 120, 14),
(119, 122, 1),
(120, 122, 2),
(121, 122, 3),
(122, 122, 4),
(123, 122, 5),
(124, 122, 6),
(125, 122, 7),
(126, 122, 8),
(127, 122, 9),
(128, 122, 10),
(129, 122, 11),
(130, 122, 12),
(131, 122, 13),
(132, 122, 14),
(133, 122, 15),
(134, 123, 1),
(135, 123, 2),
(136, 123, 3),
(137, 123, 4),
(138, 123, 5),
(139, 123, 6),
(140, 123, 7),
(141, 123, 8),
(142, 123, 9),
(143, 123, 10),
(144, 123, 11),
(145, 123, 12),
(146, 123, 13),
(147, 123, 14),
(148, 123, 15);

-- --------------------------------------------------------

--
-- Table structure for table `careerinformation`
--

CREATE TABLE `careerinformation` (
  `id` int(11) NOT NULL,
  `cv_id` int(11) NOT NULL,
  `resumetitle` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salarykind` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position_want` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_id` int(11) NOT NULL,
  `fulltime` tinyint(1) NOT NULL,
  `parttime` tinyint(1) NOT NULL,
  `freelancer` tinyint(1) NOT NULL,
  `internship` tinyint(1) NOT NULL,
  `salaryfrom` float NOT NULL,
  `salaryto` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `careerinformation`
--

INSERT INTO `careerinformation` (`id`, `cv_id`, `resumetitle`, `salarykind`, `position_want`, `location_id`, `fulltime`, `parttime`, `freelancer`, `internship`, `salaryfrom`, `salaryto`) VALUES
(5, 13, 's', 'ltt', 'Sinh viên/ Thực tập sinh', 2, 1, 1, 1, 1, 0, 0),
(6, 14, '1', 'usd', 'Quản lý', 15, 1, 1, 1, 1, 1, 2),
(7, 15, '1', 'vnđ', 'Mới tốt nghiệp', 1, 1, 1, 1, 1, 1, 1),
(8, 16, '1', 'ltt', 'Nhân viên', 1, 1, 1, 1, 1, 0, 0),
(9, 17, '1', 'ltt', 'Mới tốt nghiệp', 17, 1, 1, 1, 1, 0, 0),
(10, 18, 'qq', 'ltt', 'Mới tốt nghiệp', 1, 1, 1, 1, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `careerobjective`
--

CREATE TABLE `careerobjective` (
  `id` int(11) NOT NULL,
  `cv_id` int(11) NOT NULL,
  `content` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `careerobjective`
--

INSERT INTO `careerobjective` (`id`, `cv_id`, `content`) VALUES
(9, 18, 'CEO at Mighty Schools. Marketing and Advertising. Seeking a new job and new opportunities.'),
(10, 14, 'CEO at Mighty Schools. Marketing and Advertising. Seeking a new job and new opportunities.'),
(11, 17, 'CEO at Mighty Schools. Marketing and Advertising. Seeking a new job and new opportunities.');

-- --------------------------------------------------------

--
-- Table structure for table `cate_job`
--

CREATE TABLE `cate_job` (
  `jobID` int(11) NOT NULL,
  `jobName` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cate_job`
--

INSERT INTO `cate_job` (`jobID`, `jobName`) VALUES
(1, 'Chuyên gia bảo mật | IT Security Specialist'),
(3, 'Chuyên gia phân tích SEO/Web | SEO/Web Analytics Specialist'),
(4, 'Chuyên gia quản lý nội dung | Content Management Specialist'),
(5, 'Chuyên gia quản lý SCM | Supply Chain Management Specialist'),
(6, 'Chuyên viên ERP/ CRM | ERP/CRM Specialist'),
(7, 'Chuyên viên phân tích dữ liệu | BI/Data Specialist'),
(8, 'Chuyên viên phân tích kinh doanh | Business Process Analyst'),
(9, 'Chuyên viên phát triển Database | Database Developer'),
(10, 'Chuyên viên quản trị Database | Database Administrator (DBA)'),
(11, 'Chuyên viên quản trị hệ thống | Systems Administrator'),
(12, 'Chuyên viên quản trị mạng | Network Administrator'),
(13, 'Chuyên viên thiết kế giao diện | UI/UX Designer'),
(14, 'Chuyên viên tích hợp hệ thống | Systems Integrator'),
(15, 'Chuyên viên ứng dụng Mobile | Mobile Application Developer'),
(16, 'Chuyên viên viễn thông - Tổng đài | Telephony - VoIP Specialist'),
(17, 'Chuyên viên xử lý số liệu | EDI Specialist'),
(18, 'Giám đốc bảo mật thông tin | Chief Security Officer (CSO)'),
(19, 'Giám đốc bộ phận dự án | PMO Director'),
(20, 'Giám đốc dự án IT | IT Project Manager'),
(21, 'Giám đốc kỹ thuật | Chief Technical Officer (CTO)'),
(22, 'Giám đốc thông tin | Chief Information Officer (CIO)'),
(23, 'Giám đốc vận hành IT | IT System Manager - IT Operation Manager'),
(24, 'Kỹ sư hệ thống mạng | Network System Engineering'),
(25, 'Kỹ thuật viên máy tính | PC Technician'),
(26, 'Lập trình phát triển ứng dụng | Application Developer - Programmer'),
(27, 'Nhân viên dự án IT | Project Officer'),
(28, 'Nhân viên hỗ trợ | Helpdesk Technician'),
(29, 'Nhân viên kiểm tra chất lượng | Application Quality Tester'),
(30, 'Nhân viên kinh doanh IT | Pre-Sales Engineer'),
(31, 'Nhân viên quản trị Website | WebMaster'),
(32, 'Nhân viên thiết kế và phát triển Website | Web Designer & Developer'),
(33, 'Phụ trách quản lý cấu hình và phát hành | Release & Configuration Manager'),
(34, 'Trưởng bộ phận sản phẩm | Product Manager'),
(35, 'Trưởng nhóm bảo mật | IT Security Leader'),
(36, 'Trưởng nhóm hỗ trợ | Helpdesk Leader - SeviceDesk Leader'),
(37, 'Trưởng nhóm phân tích quy trình | Business Process Leader'),
(38, 'Trưởng nhóm phát triển ứng dụng | Application Development Leader'),
(39, 'Trưởng nhóm quản lý Database | DBA Leader'),
(40, 'Trưởng nhóm quản trị mạng | Network System Leader'),
(41, 'Trưởng phòng IT | IT Manager | IT Head | IT Director');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `company_name` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `introduce` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number_of_employees` int(11) NOT NULL,
  `contact` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  ` company_type` int(11) DEFAULT NULL,
  `google+` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `manager` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_phone` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `company_name`, `introduce`, `logo`, `address`, `number_of_employees`, `contact`, `website`, ` company_type`, `google+`, `user_id`, `manager`, `message`, `company_phone`) VALUES
(1, 'Ngân hàng của mọi nhà', 'Hello', 'ct01.gif', '1', 23, 'Trần Văn Sang', 'it.com.vn', 0, '', 273, '', '', ''),
(2, 'Đầu tư bền vững', '1', 'ct02.gif', '2', 1, '1', '1', 1, '1', 289, '', '', ''),
(3, 'phone', '<p>c&ocirc;ng ty</p>', 'ct01.gif', '1', 211, '1', 'it.com.vn', 0, '1', 302, '1', '<p>aaaaaaaaaaaaaaaaaaaaaaaq2qeqeqeq</p>', '0393665795'),
(4, 'Helping The World Thrive', '<p>1</p>', 'ct05.gif', '1', 1, '1', '1', 1, NULL, NULL, '', '', ''),
(5, 'Nắm Bắt Cơ Hội ', '<p>1</p>', 'ct06.gif', '1', 1, '1', '2', 1, NULL, NULL, '', '', ''),
(6, 'Cùng bạn xây hạnh phúc', '<p>d&acirc;dad</p>', 'ct03.gif', '1', 1, '1', '1', 1, NULL, NULL, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `company_view`
--

CREATE TABLE `company_view` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `date_view` int(11) NOT NULL,
  `view` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `name`, `image`, `description`, `sub_id`, `user_id`, `status`, `order`, `alias`, `folder`) VALUES
(50, 'Lập trình C', 'c-programming.png', 'C là ngôn ngữ lập trình bậc cao được phát triển ban đầu bởi Dennis M.Ritchie để phát triển hệ thống lập trình UNIX ở Bell Labs. ..', 42, 18, 1, 1, 'laptrinhc', 'c'),
(51, 'Ngôn ngữ HTML', 'html (1).jpg', 'HTML là chữ viết tắt của HyperText Markup Language, có nghĩa là ngôn ngữ đánh dấu siêu văn bản. Nó dùng để định dạng bố cục, các thuộc tính...', 43, -1, 1, 2, 'ngonnguhtml', 'html'),
(52, 'Ngôn ngữ PHP', 'php.png', 'PHP (Hypertext Preprocessor) là một ngôn ngữ lập trình kịch bản, một loại mã lệnh được dùng để phát triển các ứng dụng viết cho máy chủ...', 44, 18, 1, 3, 'ngonnguphp', 'php'),
(53, 'Lập trình Android', 'android.png', 'Android là một Hệ điều hành mã nguồn mở và là một hệ điều hành dựa trên Linux cho các thiết bị mobile như Smartphone và máy tính bảng', 45, 18, 1, 4, 'laptrinhandroid', 'android'),
(54, 'Ngôn ngữ SQL', 'sql.png', 'SQL là viết tắt của Structured Query Language, là ngôn ngữ truy vấn mang tính cấu trúc. Nó được thiết kế để quản lý dữ liệu', 47, 18, 1, 5, 'ngonngusql', 'sql'),
(55, 'CTDL và giải thuật', 'cautrucdulieu.jpg', 'Trong máy tính, cấu trúc dữ liệu là cách đặt biệt để lưu trữ và tổ chức thông tin trong bộ nhớ máy tính cho việc truy xuất hiệu quả hơn.', 42, 18, 1, 7, 'ctdlvagiaithuat', 'ctdl'),
(56, 'Ngôn ngữ CSS', 'CSS+HTML.png', 'CSS (Cascading Style Sheets) là một ngôn ngữ quy định cách trình bày cho các tài liệu viết bằng HTML, XHTML, XML, SVG, hay UML,…', 43, 18, 1, 7, 'ngonngucss', 'html'),
(57, 'Ngôn ngữ Javascript', 'modular-javascript.png', 'JavaScript là một ngôn ngữ kịch bản được dùng để tạo các script ở máy client và máy server. Các script ở máy client được thực thi tại trình duyệt...', 43, 18, 1, 8, 'ngonngujavascript', 'html'),
(58, 'Ngôn ngữ ASP.NET', 'Su-dung-aspnet-identity-trong-aspnet-(phan-1).jpg', 'ASP.NET là một nền tảng ứng dụng web được phát triển và cung cấp bởi Microsoft, cho phép những người lập trình tạo ra các trang web động......', 44, 18, 1, 9, 'ngonnguasp.net', 'apsnet'),
(59, 'Lập trình C++', '1_YU6BvZKvxivoEnvqxeG5rw.png', 'C++ là một loại ngôn ngữ lập trình, đa mẫu hình tự do có kiểu tĩnh và hỗ trợ lập trình thủ tục, lập trình hướng đối tượng, lập trình đa hình...', 42, 18, 1, 6, 'laptrinhc++', 'ccongcong'),
(60, 'Java Core', 'java.png', 'Java được thiết kế để biên dịch mã nguồn thành bytecode, bytecode sau đó sẽ được môi trường thực thi (runtime environment) chạy.', 48, 36, 1, 10, 'javacore', 'java'),
(61, 'Java String', 'java-la-gi.png', 'String là một kiểu dữ liệu rất cơ bản và thường xuyên được sử dụng trong Java, nhưng cũng có lẽ vì nó quá cơ bản và dễ sử dụng', 48, 36, 1, 11, 'javastring', 'java'),
(62, 'ADO.NET', 'dotnet.png', 'ADO.NET là một bộ thư viện hướng đối tượng (OOP) cho phép tương tác với dữ liệu nguồn. Thông thường  thì dữ liệu nguồn là một cơ sở dữ liệu ...', 44, 18, 1, 12, 'ado.net', 'net'),
(63, 'Hệ quản trị CSDL MySQL', 'tải xuống.png', 'MySQL là một hệ thống quản trị CSDL quan hệ mã nguồn mở dựa trên ngôn ngữ truy vấn có cấu trúc được phát triển, phân phối và hỗ trợ bởi tập đoàn Oracle.', 47, 18, 1, 13, 'hequantricsdlmysql', 'mysql'),
(64, 'Lập trình ASP.NET MVC', 'download.png', 'Nền tảng ASP.NET MVC giúp cho chúng ta có thể tạo được các ứng dụng web áp dụng mô hình MVC thay vì tạo ứng dụng theo mẫu ASP.NET Web Forms.', 44, 18, 1, 14, 'laptrinhasp.netmvc', 'aspxmvc'),
(65, 'ASP.NET Core', 'netcore.png', 'ASP.NET Core là một open-source mới và framework đa nền tảng (cross-platform) cho việc xây dựng những ứng dụng giống như web apps, IoT và backend cho mobile.', 42, 18, 1, 15, 'asp.netcore', 'aspnetcore'),
(66, 'Hệ quản trị SQL Server', 'sql-server-tutorial.jpg', 'Microsoft SQL Server là một hệ quản trị cơ sở dữ liệu quan hệ. Là một máy chủ cơ sở dữ liệu, có chức năng chính là lưu trữ và truy xuất dữ liệu cho các ứng dụng khác.', 47, 18, 1, 16, 'hequantrisqlserver', 'sqlserver');

-- --------------------------------------------------------

--
-- Table structure for table `cv`
--

CREATE TABLE `cv` (
  `cv_id` int(11) NOT NULL,
  `user_id` int(10) NOT NULL,
  `full_name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `interests` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_nationality` int(11) NOT NULL,
  `id_location` int(11) NOT NULL,
  `maritalstatus` tinyint(1) NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_off` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cv`
--

INSERT INTO `cv` (`cv_id`, `user_id`, `full_name`, `birthday`, `address`, `phone`, `images`, `file`, `interests`, `id_nationality`, `id_location`, `maritalstatus`, `gender`, `email`, `show_off`) VALUES
(13, 273, 'trần hồng khánh', '11/11/2019', 'adasdadadasdaaaaaaaasssssssssssssssssssssssssssss', '0913113951', 'ct_1_5defa1f708c07.png', NULL, NULL, 1, 2, 1, 0, 'abc@gmail.com', 0),
(14, 294, 'ungvien1111', '10/07/1998', 'aaaaaa', '01234043547', 'ct_1_5e02a2641d275.png', NULL, NULL, 1, 4, 0, 0, 'uv@gmail.com', 1),
(15, 300, 'tien tahnh', '10/07/1998', 'aaaaaa', '01234043547', 'ct_2.png', NULL, NULL, 1, 1, 1, 0, 'ss@gmail.com', 0),
(16, 301, 'adadadad11', '10/07/1998', 'aaaaaa', '01234043547', 'ct_1_5e13411702296.png', NULL, NULL, 1, 1, 1, 0, 's@gmail.com', 0),
(17, 303, 'Thanh Tiền 1', '10/07/1998', 'aaaaaa', '01234043547', '84771322_521385195172569_1345952092396716032_n.jpg', NULL, NULL, 1, 1, 1, 0, 'mm@gmail.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `doccategory`
--

CREATE TABLE `doccategory` (
  `id` int(11) NOT NULL,
  `catename` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isshow` tinyint(1) NOT NULL DEFAULT 0,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doccategory`
--

INSERT INTO `doccategory` (`id`, `catename`, `image`, `isshow`, `slug`, `created_at`, `updated_at`) VALUES
(2, 'ASP', '', 0, 'asp-2', NULL, '2019-10-22 03:07:46'),
(3, 'WinForm', '', 0, 'winform', NULL, NULL),
(4, 'Android', '', 0, 'android-4', NULL, '2019-10-23 08:00:03'),
(5, 'iOS', '', 0, 'ios', NULL, NULL),
(6, 'cơ sở dữ liệu', '', 0, 'co-so-du-lieu', NULL, NULL),
(7, 'html', '', 0, 'html', NULL, NULL),
(10, 'css', '', 0, 'css-10', '2019-10-22 02:28:12', '2019-10-22 02:30:20'),
(11, 'PHP', '', 0, 'php-11', '2019-10-22 02:30:07', '2019-10-22 02:30:07');

-- --------------------------------------------------------

--
-- Table structure for table `document`
--

CREATE TABLE `document` (
  `id` int(11) NOT NULL,
  `docname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `viewed` int(11) NOT NULL DEFAULT 0,
  `downloaded` int(11) NOT NULL DEFAULT 0,
  `isshow` tinyint(1) NOT NULL DEFAULT 0,
  `cateid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `document`
--

INSERT INTO `document` (`id`, `docname`, `description`, `filename`, `image`, `viewed`, `downloaded`, `isshow`, `cateid`, `userid`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'fff', 'ff', 'Thực tập_02_Đồ án chuyên ngành_5db8d805bd598.pdf', '1-15335480906092030357199_5db8d805bd7e8.jpg', 4, 0, 0, 2, 273, 'fff-1', '2019-10-29 17:23:33', '2019-10-29 22:13:48'),
(2, 'con vịt con', 'aaa', 'Thực tập_02_Đồ án chuyên ngành.pdf', '1-15335480906092030357199.jpg', 46, 0, 0, 2, 273, 'con-vit-con-2', '2019-11-01 07:32:48', '2019-11-04 18:57:30'),
(3, 'vịt còn bé', 'dddd', 'Thực tập_02_Đồ án chuyên ngành_5dbed11fced42.pdf', '1-15335480906092030357199_5dbed11fcf028.jpg', 32, 1, 0, 2, 273, 'vit-con-be-3', '2019-11-03 06:07:44', '2019-11-04 18:56:04');

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `id` int(11) NOT NULL,
  `cv_id` int(11) NOT NULL,
  `course` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `degree_id` int(11) NOT NULL,
  `date` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`id`, `cv_id`, `course`, `degree_id`, `date`, `description`) VALUES
(5, 13, 'xsdad', 3, 'adada', 'adada'),
(6, 14, '1', 0, '', '1'),
(7, 15, '1', 1, '1', '1'),
(8, 16, '1', 2, '1', '1'),
(9, 17, '1', 0, '', '111111111111111'),
(10, 18, '1', 0, '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE `email` (
  `id` int(11) NOT NULL,
  `email_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `email`
--

INSERT INTO `email` (`id`, `email_name`) VALUES
(1, '111'),
(2, '13231');

-- --------------------------------------------------------

--
-- Table structure for table `experience`
--

CREATE TABLE `experience` (
  `id` int(11) NOT NULL,
  `cv_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_day` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_day` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `experience`
--

INSERT INTO `experience` (`id`, `cv_id`, `title`, `company`, `start_day`, `end_day`, `content`) VALUES
(1, 13, '1', '1', '1', 'Hiện tại', '1'),
(2, 14, '1', '1', '1/1/2012', 'Hiện tại', '1'),
(3, 15, '1', '1', '1', 'Hiện tại', '1'),
(4, 16, '1', '1', '1', 'Hiện tại', '1'),
(5, 17, '1', '1', '1/1/2012', 'Hiện tại', 'adadadadada'),
(6, 18, '1', '1', '1', 'Hiện tại', '1');

-- --------------------------------------------------------

--
-- Table structure for table `job_announcement`
--

CREATE TABLE `job_announcement` (
  `id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `job_announcement`
--

INSERT INTO `job_announcement` (`id`, `job_id`, `company_id`, `datetime`, `user_id`) VALUES
(1, 111, 302, '2020-06-28 02:50:35', 294);

-- --------------------------------------------------------

--
-- Table structure for table `job_degree`
--

CREATE TABLE `job_degree` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `job_degree`
--

INSERT INTO `job_degree` (`id`, `title`) VALUES
(1, 'Không yêu cầu bằng cấp'),
(2, 'Trung học'),
(3, 'Trung cấp'),
(4, 'Đại học'),
(5, 'Sau đại học'),
(6, 'Khác');

-- --------------------------------------------------------

--
-- Table structure for table `job_experience`
--

CREATE TABLE `job_experience` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `job_experience`
--

INSERT INTO `job_experience` (`id`, `title`) VALUES
(1, 'Không yêu cầu kinh nghiệm'),
(2, 'Có kinh nghiệm'),
(3, 'Chưa có kinh nghiệm');

-- --------------------------------------------------------

--
-- Table structure for table `job_group`
--

CREATE TABLE `job_group` (
  `id` int(11) NOT NULL,
  `id_group` int(11) NOT NULL,
  `id_job` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_group`
--

INSERT INTO `job_group` (`id`, `id_group`, `id_job`) VALUES
(135, 1, 111),
(140, 3, 114),
(141, 5, 114),
(145, 1, 118),
(146, 3, 118),
(147, 1, 119),
(148, 3, 120),
(149, 5, 120),
(151, 1, 122),
(152, 1, 123);

-- --------------------------------------------------------

--
-- Table structure for table `job_region`
--

CREATE TABLE `job_region` (
  `id` int(11) NOT NULL,
  `id_region` int(11) NOT NULL,
  `id_job` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_region`
--

INSERT INTO `job_region` (`id`, `id_region`, `id_job`) VALUES
(136, 1, 111),
(141, 3, 114),
(142, 5, 114),
(146, 2, 118),
(147, 3, 118),
(148, 4, 118),
(149, 1, 119),
(150, 3, 120),
(151, 5, 120),
(153, 1, 122),
(154, 1, 123);

-- --------------------------------------------------------

--
-- Table structure for table `job_skill`
--

CREATE TABLE `job_skill` (
  `id` int(11) NOT NULL,
  `id_job` int(11) NOT NULL,
  `id_skill` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `job_skill`
--

INSERT INTO `job_skill` (`id`, `id_job`, `id_skill`) VALUES
(25, 111, 2),
(30, 114, 3),
(31, 114, 5),
(35, 118, 2),
(36, 118, 3),
(37, 119, 2),
(38, 120, 3),
(39, 120, 5),
(41, 122, 2),
(42, 123, 2);

-- --------------------------------------------------------

--
-- Table structure for table `job_template`
--

CREATE TABLE `job_template` (
  `id` int(11) NOT NULL,
  `id_template` int(11) NOT NULL,
  `cv_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `job_template`
--

INSERT INTO `job_template` (`id`, `id_template`, `cv_id`, `user_id`) VALUES
(4, 1, 18, 304),
(5, 2, 14, 294);

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `id` int(11) NOT NULL,
  `cv_id` int(11) DEFAULT NULL,
  `value` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `cv_id`, `value`, `level`) VALUES
(1, NULL, 'Tiếng Anh', NULL),
(2, NULL, 'Tiếng Việt', NULL),
(3, NULL, 'Tiếng Pháp', NULL),
(4, NULL, 'Tiếng Trung', NULL),
(5, NULL, 'Tiếng Nhật', NULL),
(6, NULL, 'Tiếng Hàn Quốc', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `language_job`
--

CREATE TABLE `language_job` (
  `id` int(11) NOT NULL,
  `id_job` int(11) DEFAULT NULL,
  `id_language` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `language_job`
--

INSERT INTO `language_job` (`id`, `id_job`, `id_language`) VALUES
(100, 111, 1),
(101, 111, 2),
(102, 111, 3),
(103, 111, 4),
(106, 120, 1),
(107, 120, 2);

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
(5, '2014_10_12_100000_create_password_resets_table', 1),
(6, '2017_05_15_073540_create_courses_table', 1),
(14, '2017_05_15_115610_create_user_table', 2),
(15, '2017_05_15_122209_create_admin_table', 2),
(17, '2017_05_19_113426_create_users_table', 3),
(18, '2017_05_21_032729_create_courses_table', 4),
(19, '2017_05_23_005218_create_subjects_table', 5),
(26, '2017_05_26_063335_create_lessons_table', 6),
(27, '2017_05_26_063427_create_lesson_group_table', 6),
(28, '2017_07_13_030126_create_social_users_table', 7),
(29, '2017_07_21_020604_create_sources_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `myjob`
--

CREATE TABLE `myjob` (
  `id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `myjob`
--

INSERT INTO `myjob` (`id`, `job_id`, `user_id`, `datetime`, `status`) VALUES
(51, 107, 294, '2020-04-06 08:48:57', 1),
(108, 108, 294, '2020-04-06 08:08:15', 0),
(110, 110, 294, '2020-05-05 00:50:43', 0),
(111, 111, 294, '2020-06-21 06:22:10', 1),
(114, 114, 294, '2020-06-21 06:30:31', 0),
(118, 118, 294, '2020-06-21 06:29:30', 1),
(123, 123, 294, '2020-06-21 06:22:18', 1);

-- --------------------------------------------------------

--
-- Table structure for table `national`
--

CREATE TABLE `national` (
  `nation_id` int(11) NOT NULL,
  `nation_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `national`
--

INSERT INTO `national` (`nation_id`, `nation_name`) VALUES
(1, 'Việt Nam'),
(2, 'Lào'),
(3, 'Campuchia');

-- --------------------------------------------------------

--
-- Stand-in structure for view `new_job`
-- (See below for the actual view)
--
CREATE TABLE `new_job` (
`id` int(11)
,`id_company` varchar(255)
,`position` varchar(255)
,`detail` varchar(255)
,`salary_from` varchar(255)
,`salary_to` varchar(255)
,`showsalary` varchar(255)
,`enddate` timestamp
,`skill` varchar(255)
,`gender` int(11)
,`age_from` int(11)
,`age_to` int(11)
,`experience` varchar(255)
,`level` varchar(255)
,`degree` varchar(255)
,`updated_at` timestamp
,`created_at` timestamp
,`status` int(11)
,`logo` varchar(50)
,`company_name` mediumtext
,`rank_name` varchar(50)
,`job_experience` varchar(50)
,`job_degree` varchar(50)
,`region_name` mediumtext
,`skill_name` mediumtext
,`show_off` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hidden` tinyint(1) NOT NULL DEFAULT 0,
  `update_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_ra` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Stand-in structure for view `number_job`
-- (See below for the actual view)
--
CREATE TABLE `number_job` (
`jobID` int(11)
,`jobName` text
,`number` bigint(21)
);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `postjob`
--

CREATE TABLE `postjob` (
  `id` int(11) NOT NULL,
  `id_company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary_unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary_from` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `showsalary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enddate` timestamp NULL DEFAULT current_timestamp(),
  `skill` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `age_from` int(11) DEFAULT NULL,
  `age_to` int(11) DEFAULT NULL,
  `experience` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `degree` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL,
  `show_off` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `postjob`
--

INSERT INTO `postjob` (`id`, `id_company`, `position`, `detail`, `salary_unit`, `salary_from`, `salary_to`, `showsalary`, `enddate`, `skill`, `gender`, `age_from`, `age_to`, `experience`, `level`, `degree`, `updated_at`, `created_at`, `status`, `show_off`) VALUES
(111, '302', '1', 'hi', 'vnd', '1', '100', NULL, '2020-03-26 17:00:00', NULL, 0, 1, 21, '2', '1', '3', '2020-05-05 00:30:41', '2020-05-05 00:30:41', 0, 1),
(114, '302', '43w4', 'hi', 'vnd', '1', '100', NULL, '2020-05-04 17:00:00', NULL, 0, 3, 2, '1', '0', '0', '2020-05-05 02:08:51', '2020-05-05 02:08:51', 0, 0),
(118, '302', '1', 'hi', 'vnd', '1', '100', NULL, '2020-02-29 17:00:00', NULL, 0, NULL, NULL, '0', '0', '0', '2020-05-19 01:42:25', '2020-05-19 01:42:25', 1, 0),
(119, '302', '12356', 'hi', 'vnd', '1', '100', NULL, '2020-05-18 17:00:00', NULL, 0, NULL, NULL, '1', '0', '2', '2020-05-19 01:49:47', '2020-05-19 01:49:47', 1, 0),
(120, '302', '43w4', 'hi', 'vnd', '1', '100', NULL, '2020-06-09 17:00:00', NULL, 0, 3, 2, '2', '2', '0', '2020-06-02 00:46:27', '2020-06-02 00:46:27', 0, 0),
(122, '302', '123', 'hi', 'vnd', '1', '100', NULL, '2020-06-10 17:00:00', NULL, 0, NULL, NULL, '0', '0', '0', '2020-06-02 00:47:36', '2020-06-02 00:47:36', 0, 0),
(123, '302', '123', 'hi', 'vnd', '1', '100', NULL, '2020-05-26 17:00:00', NULL, 0, NULL, NULL, '0', '0', '0', '2020-06-02 00:48:45', '2020-06-02 00:48:45', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `previewimage`
--

CREATE TABLE `previewimage` (
  `id` int(11) NOT NULL,
  `idpost` int(11) DEFAULT NULL,
  `urlimage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `previewimage`
--

INSERT INTO `previewimage` (`id`, `idpost`, `urlimage`, `updated_at`, `created_at`) VALUES
(1, 5, 'pokemon_PNG78_5d9f11b3c5f32.png', '2019-10-10 04:10:43', '2019-10-10 04:01:42'),
(2, 5, '11140373_709241339219227_6399475631325176819_n_5d9f11b3c96a0.jpg', '2019-10-10 04:10:43', '2019-10-10 04:01:42'),
(3, 5, 'pokemon_PNG78_5d9f11b3cb1d3.png', '2019-10-10 04:10:43', '2019-10-10 04:01:42');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `short_question` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `votes` int(10) DEFAULT 0,
  `answers` int(10) DEFAULT 0,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `hide` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `user_id`, `short_question`, `detail`, `tags`, `email`, `votes`, `answers`, `created_at`, `updated_at`, `hide`) VALUES
(4, 273, 'aaa', '<p>aaa</p>', 'hello', NULL, 0, 0, 1572919296, 1572919296, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `id` int(11) NOT NULL,
  `rank_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`id`, `rank_name`) VALUES
(1, 'Sinh viên/ thực tập sinh'),
(2, 'Mới tốt nghiệp'),
(3, 'Nhân viên'),
(4, 'Trưởng nhóm/giám sát'),
(5, 'Quản lý'),
(6, 'Phó giấm đốc'),
(7, 'Giám đốc'),
(8, 'Tổng giấm đốc'),
(9, 'Chủ tịch/Phó chủ tịch');

-- --------------------------------------------------------

--
-- Table structure for table `reference`
--

CREATE TABLE `reference` (
  `id` int(11) NOT NULL,
  `cv_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reference`
--

INSERT INTO `reference` (`id`, `cv_id`, `name`, `position`, `company`, `phone`, `email`) VALUES
(4, 13, '12345', '12123', '1', '01234043547', 'abc@gmail.com'),
(5, 17, '1', '1', '1', '01234043547', 'tien123@gmail.com');

-- --------------------------------------------------------

--
-- Stand-in structure for view `search_job`
-- (See below for the actual view)
--
CREATE TABLE `search_job` (
`id` int(11)
,`id_company` varchar(255)
,`position` varchar(255)
,`detail` varchar(255)
,`salary_unit` varchar(255)
,`salary_from` varchar(255)
,`salary_to` varchar(255)
,`showsalary` varchar(255)
,`enddate` timestamp
,`skill` varchar(255)
,`gender` int(11)
,`age_from` int(11)
,`age_to` int(11)
,`experience` varchar(255)
,`level` varchar(255)
,`degree` varchar(255)
,`updated_at` timestamp
,`created_at` timestamp
,`status` int(11)
,`logo` varchar(50)
,`company_name` mediumtext
,`address` varchar(50)
,`rank_name` varchar(50)
,`job_experience` varchar(50)
,`job_degree` varchar(50)
,`region_name` varchar(100)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `selected_cv`
-- (See below for the actual view)
--
CREATE TABLE `selected_cv` (
`id` int(11)
,`link` varchar(50)
,`address` text
,`id_template` int(11)
,`cv_id` int(11)
,`user_id` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `show_job_group`
-- (See below for the actual view)
--
CREATE TABLE `show_job_group` (
`id` int(11)
,`id_company` varchar(255)
,`position` varchar(255)
,`detail` varchar(255)
,`salary_from` varchar(255)
,`salary_to` varchar(255)
,`showsalary` varchar(255)
,`enddate` timestamp
,`skill` varchar(255)
,`gender` int(11)
,`age_from` int(11)
,`age_to` int(11)
,`experience` varchar(255)
,`level` varchar(255)
,`degree` varchar(255)
,`updated_at` timestamp
,`created_at` timestamp
,`status` int(11)
,`logo` varchar(50)
,`company_name` mediumtext
,`rank_name` varchar(50)
,`job_experience` varchar(50)
,`job_degree` varchar(50)
,`region_name` mediumtext
,`skill_name` mediumtext
,`jobID` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `show_myjob`
-- (See below for the actual view)
--
CREATE TABLE `show_myjob` (
`id` int(11)
,`id_company` varchar(255)
,`position` varchar(255)
,`detail` varchar(255)
,`salary_unit` varchar(255)
,`salary_from` varchar(255)
,`salary_to` varchar(255)
,`showsalary` varchar(255)
,`enddate` timestamp
,`skill` varchar(255)
,`gender` int(11)
,`age_from` int(11)
,`age_to` int(11)
,`experience` varchar(255)
,`level` varchar(255)
,`degree` varchar(255)
,`updated_at` timestamp
,`created_at` timestamp
,`status` int(11)
,`logo` varchar(50)
,`company_name` mediumtext
,`address` varchar(50)
,`job_id` int(11)
,`user_id` int(11)
,`trangthai` int(11)
,`region_name` varchar(100)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `show_notification`
-- (See below for the actual view)
--
CREATE TABLE `show_notification` (
`cv_id` int(11)
,`user_id` int(10)
,`full_name` varchar(45)
,`birthday` varchar(20)
,`address` varchar(100)
,`phone` varchar(45)
,`images` varchar(255)
,`file` varchar(500)
,`interests` varchar(45)
,`id_nationality` int(11)
,`id_location` int(11)
,`maritalstatus` tinyint(1)
,`gender` tinyint(1)
,`email` varchar(100)
,`show_off` int(11)
,`datetime` timestamp
,`job_id` int(11)
,`id_company` varchar(255)
,`position` varchar(255)
,`company_id` int(11)
,`company_name` mediumtext
,`company_phone` varchar(10)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `show_recruitment`
-- (See below for the actual view)
--
CREATE TABLE `show_recruitment` (
`cv_id` int(11)
,`user_id` int(10)
,`full_name` varchar(45)
,`birthday` varchar(20)
,`address` varchar(100)
,`phone` varchar(45)
,`images` varchar(255)
,`file` varchar(500)
,`interests` varchar(45)
,`id_nationality` int(11)
,`id_location` int(11)
,`maritalstatus` tinyint(1)
,`gender` tinyint(1)
,`email` varchar(100)
,`show_off` int(11)
,`datetime` timestamp
,`job_id` int(11)
,`id_company` varchar(255)
,`position` varchar(255)
,`company_id` int(11)
,`company_name` mediumtext
,`company_phone` varchar(10)
);

-- --------------------------------------------------------

--
-- Table structure for table `skill`
--

CREATE TABLE `skill` (
  `id` int(11) NOT NULL,
  `cv_id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `level` varchar(50) NOT NULL,
  `description` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `skill`
--

INSERT INTO `skill` (`id`, `cv_id`, `title`, `level`, `description`) VALUES
(8, 18, '1', '1', '1'),
(9, 14, '1', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `skill_it`
--

CREATE TABLE `skill_it` (
  `id` int(11) NOT NULL,
  `skill_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `skill_it`
--

INSERT INTO `skill_it` (`id`, `skill_name`) VALUES
(1, 'Agile'),
(2, '\r\nAndroid'),
(3, '\r\nAngular'),
(4, '\r\nAngularJS'),
(5, 'ASP.NET'),
(6, '\r\nAWS'),
(7, '\r\nBlockchain'),
(8, '\r\nBridge Engineer'),
(9, 'Business Analyst'),
(10, '\r\nC#'),
(11, '\r\nC++\r\n'),
(12, '\r\nC language'),
(13, '\r\nCSS'),
(14, '\r\nDatabase'),
(15, '\r\nDesigner'),
(16, 'DevOps'),
(17, '\r\nDjango'),
(18, '\r\nDrupal'),
(19, '\r\nEmbedded'),
(20, 'English'),
(21, '\r\nERP'),
(22, '\r\nGames'),
(23, '\r\nGolang'),
(24, 'HTML5'),
(25, ' Hybrid'),
(26, ' \r\niOS'),
(27, ' \r\nIT Support'),
(28, ' J2EE\r\n\r\n\r\n'),
(29, ' Japanese'),
(30, ' Java'),
(31, ' JavaScript'),
(32, ' JQuery\r\n\r\n\r\n'),
(33, ' JSON'),
(34, ' Kotlin'),
(35, ' Laravel'),
(36, ' Linux\r\n\r\n\r\n'),
(37, ' Magento'),
(38, ' Manager'),
(39, ' MVC'),
(40, 'MySQL'),
(41, 'MySQL\r\n\r\n\r\n'),
(42, '.NET'),
(43, 'Networking'),
(44, 'NodeJS'),
(45, 'NoSQL\r\n\r\n\r\n'),
(46, 'Objective C'),
(47, 'OOP'),
(48, 'Oracle'),
(49, 'PHP\r\n\r\n\r\n'),
(50, 'PostgreSql'),
(51, 'Product Manager'),
(52, 'Project Manager'),
(53, 'Python\r\n\r\n\r\n'),
(54, 'QA QC'),
(55, 'ReactJS'),
(56, 'React Native'),
(57, 'Ruby\r\n\r\n\r\n'),
(58, 'Ruby on Rails'),
(59, 'SAP'),
(60, 'Scala'),
(61, 'Sharepoint\r\n\r\n\r\n'),
(62, 'Software Architect'),
(63, 'Spring'),
(64, 'SQL'),
(65, 'Swift\r\n\r\n\r\n'),
(66, 'System Admin'),
(67, 'System Engineer'),
(68, 'Team Leader'),
(69, 'Tester\r\n\r\n\r\n'),
(70, 'UI-UX'),
(71, 'Unity'),
(72, 'VueJS'),
(73, 'Wordpress\r\n\r\n\r\n'),
(74, 'Xamarin'),
(75, 'Full Stack'),
(76, 'Front End'),
(77, 'Back End\r\n\r\n'),
(78, 'QA'),
(79, 'QC');

-- --------------------------------------------------------

--
-- Table structure for table `social_users`
--

CREATE TABLE `social_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` int(11) NOT NULL DEFAULT 0,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_users`
--

INSERT INTO `social_users` (`id`, `username`, `name`, `avatar`, `role`, `provider`, `provider_id`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(16, 'vinhnguyen208@gmail.com', 'Vĩnh Nguyễn Hữu', 'https://graph.facebook.com/v2.9/1289628981150142/picture?type=normal', 0, 'facebook', '1289628981150142', 'fdkneEuhZXgIjsxyYDBb8SF1Es5DtclQkdoiWVJLurILwTcENuw19tGCSL4oZxGL', NULL, NULL, NULL),
(17, 'hiepsiit', 'Nguyn Huu Vinh', 'http://abs.twimg.com/sticky/default_profile_images/default_profile_normal.png', 0, 'twitter', '999266942', '0ogJbDRNpz92Rk6dcy1j931dLjb46ckgRPU34fCQ5ZEnQhf4lDOksK4ms3F3v5bg', NULL, NULL, NULL),
(18, 'vinhnguyen208@gmail.com', 'Vinh Nguyen', 'https://lh3.googleusercontent.com/-XdUIqdMkCWA/AAAAAAAAAAI/AAAAAAAAAAA/4252rscbv5M/photo.jpg?sz=50', 0, 'google', '102174513922259372611', 'Dc257XeyJZbb6V4JhCqGPtnutjeCEi9tSUa50dtfmWI684ratT8ANUS5tvgWXRiu', NULL, NULL, NULL),
(20, 'vinhnguyen208@gmail.com', 'vuaviet', 'https://avatars7.githubusercontent.com/u/10508219?v=4', 0, 'github', '10508219', 'tvSP7ZBEiyZFBIUNKwj2XLSdlhDBYH207ZagV54lXjGrJfbpEFmZRkMitszJqEEW', NULL, NULL, NULL),
(21, 'khoizzz123@gmail.com', 'Nguyễn Văn Khởi', 'https://graph.facebook.com/v2.9/1166866543417671/picture?type=normal', 0, 'facebook', '1166866543417671', 'FsyaLMyPYgAM4UsNV6oeLySRnIeNzbauiSFWtKQVZ3p7sdqqkDjmlwaLJhGz9X9o', NULL, NULL, NULL),
(22, 'vqluongsp@gmail.com', 'Luong Vo Quoc', 'https://lh3.googleusercontent.com/-XdUIqdMkCWA/AAAAAAAAAAI/AAAAAAAAAAA/4252rscbv5M/photo.jpg?sz=50', 0, 'google', '110665621269690376888', 'zIznXRe83IcZW73Ne5LbvSOHZRnF62Vi7LziDNxVsQjKc4xsKLlKbxA33uihSwKK', NULL, NULL, NULL),
(23, 'yuri.shop.08@gmail.com', 'Serena Nguyễn', 'https://graph.facebook.com/v2.9/488288248193663/picture?type=normal', 0, 'facebook', '488288248193663', 'DMis7ihYn0NltBvSJ6HoCiv1dKv0C3cx3q9mXCJgwImNr1aaGVYC48FQQUUrqn3B', NULL, NULL, NULL),
(24, 'linhnguyen1998125@gmail.com', 'Nguyen Quang Linh', 'https://graph.facebook.com/v2.9/1935380010070186/picture?type=normal', 0, 'facebook', '1935380010070186', '2ZxxQXXSbAjxim1s6dSiGWiPU8hJbYxaZkKDVELI9kQYwgrpzKiLnjP4Oo9toBxE', NULL, NULL, NULL),
(25, 'tranhobaohoang@gmail.com', 'Trần Hồ Bảo Hoàng', 'https://graph.facebook.com/v2.9/1417548975030235/picture?type=normal', 0, 'facebook', '1417548975030235', 'meuHOuVluWT3BrGyuvK6bo9Ql10tWIR64R2CQJ99aVESbuFZmErVs8ErykdGLm8U', NULL, NULL, NULL),
(26, 'satthuhaohoa.hexat_com@yahoo.com.vn', 'Dũng Trịnh', 'https://graph.facebook.com/v2.9/1017428411733183/picture?type=normal', 0, 'facebook', '1017428411733183', 'dIkkbT0X8JIanDwJJZCbMbhR1n3wwHEFoW654JubhWz2Dd2fQ3spggOeJTM15hPM', NULL, NULL, NULL),
(27, NULL, 'Lê Nhớ', 'https://graph.facebook.com/v2.9/502429406800579/picture?type=normal', 0, 'facebook', '502429406800579', 'bsmnHJJksVfWTieX6lgiJ3HeBdsyXqrJqNxkPcUSWy8nT3xYDKOIxyeytn95VeHS', NULL, NULL, NULL),
(28, 'thong13474@gmail.com', 'Thong Nguyen', 'https://lh3.googleusercontent.com/-Q3JhdL31SOE/AAAAAAAAAAI/AAAAAAAAC_g/6X0Idh4lLvM/photo.jpg?sz=50', 0, 'google', '113777476557439423334', 'KLyrclFCGsyVLfFOYLqumUffpZxoPznZCQjKX6o6SBj707sxxGSwrJdnlj7EsTT4', NULL, NULL, NULL),
(29, 'thuha24101995@gmail.com', 'Nguyen Ha', 'https://graph.facebook.com/v2.9/776963422494404/picture?type=normal', 0, 'facebook', '776963422494404', 'Ny0py7Q4jt5dFHGgXQZGzwRID5isszhR6s2TRLmIXSAAkWH2QoGeHrAlm9NZaSRi', NULL, NULL, NULL),
(30, NULL, 'Quốc Bảo', 'https://graph.facebook.com/v2.9/2083002518587636/picture?type=normal', 0, 'facebook', '2083002518587636', '8fiqvJhCfbP6wsnZ5SHTSdHarm5YNqBG5VJ4n4i076aZz7v95LOIPpf3FjbvfE4Y', NULL, NULL, NULL),
(31, 'votoanhuy95@gmail.com', 'Võ Toàn Huy', 'https://graph.facebook.com/v2.9/1884443654907974/picture?type=normal', 0, 'facebook', '1884443654907974', 'YelRuqUKwIVLDJzmTE2WG91HrtkN7uChekBaZP5yiaRJ3yeu8kshaVxmUpDqtWRp', NULL, NULL, NULL),
(32, 'nguyen7696@gmail.com', 'Hùng Nguyễn', 'https://lh3.googleusercontent.com/-XdUIqdMkCWA/AAAAAAAAAAI/AAAAAAAAAAA/4252rscbv5M/photo.jpg?sz=50', 0, 'google', '101035662182298679763', '16jnBj43bPQLpLIVd1Wf3fPJgfXFsEmKplWRaLCvknipxts3QKt3fwZ7TYJL2cb9', NULL, NULL, NULL),
(33, 'camminh2809@gmail.com', 'minh cam', 'https://lh6.googleusercontent.com/-Y4jwCQoepWg/AAAAAAAAAAI/AAAAAAAAAAA/AB6qoq2cLyKF1ppAKnLyUcYLqnaCkQkx6w/mo/photo.jpg?sz=50', 0, 'google', '102603552581195551324', '3ENyeU2iMGHME95QFi9JRxXuedI2uVUTA7Mi4QgYYOO7jumvjEFiaECknjzBG1kR', NULL, NULL, NULL),
(34, 'nguyendai2171998@gmail.com', 'nguyễn đại', 'https://lh5.googleusercontent.com/-B8ka4_SiQI4/AAAAAAAAAAI/AAAAAAAAC7A/pPs-QQNckfo/photo.jpg?sz=50', 0, 'google', '103210863953084441191', '4h5RJKxcgAVUYmagCQa0oOK8wbZlcN1kHT5VJcMQiDz3OW6GKYCTvBvQkZ38bFcJ', NULL, NULL, NULL),
(35, 'trancanh011@gmail.com', 'canh tran', 'https://lh5.googleusercontent.com/-LinZfL-Gruk/AAAAAAAAAAI/AAAAAAAAACI/HeaHjYgeTRk/photo.jpg?sz=50', 0, 'google', '111386026861517705654', 'ElmLy8WYTIrkDoFyEpSvrPa52OHtfNaXrG7y8P9LtTmqZiLboZXaBRZqpFMGiuSW', NULL, NULL, NULL),
(36, 'tienlenngovantien@gmail.com', 'TIẾN NGÔ VĂN', 'https://lh6.googleusercontent.com/-VEDf7MenkBw/AAAAAAAAAAI/AAAAAAAAADo/VedqynQaPQs/photo.jpg?sz=50', 0, 'google', '102176785438816743309', 'KhkdabYRVzt1P8h6j2e0z3732RURZfGDWJVqYWHcLJaYTxS9zI5tQmqx5itERsO1', NULL, NULL, NULL),
(37, 'ngocanh7575@gmail.com', 'nguyen thi ngoc anh', 'https://lh3.googleusercontent.com/-DFAKoDAtRdQ/AAAAAAAAAAI/AAAAAAAAAAA/AGDgw-jjTAen8llm5x6gWS9mohWjmERjyw/mo/photo.jpg?sz=50', 0, 'google', '109018344806805768112', 'qd0QZeMLFXzm5NVdnPLBZUQMjaoGzGdJQPsrM0fTdaopT2PYdYwVAHISnVgfkwkf', NULL, NULL, NULL),
(38, 'dinhhunghia2397@gmail.com', 'Đinh Hữu Nghĩa', 'https://lh3.googleusercontent.com/-eCR8ejr9TkI/AAAAAAAAAAI/AAAAAAAAAWI/Pjncp-eSaZg/photo.jpg?sz=50', 0, 'google', '111137277477145273621', 'ENnGNoaBa1WPMEGVvbpJsboxKlGY7Sm1lUDl6s3OPFIpImstINY0bRStdwsF1GlW', NULL, NULL, NULL),
(39, 'lehoanghai171098@gmail.com', 'Hai Le', 'https://lh5.googleusercontent.com/-mOBk_xjcs8M/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rfB3-Qf3cRRn09OqIXfG44PqbXXJw/s50-mo/photo.jpg', 0, 'google', '101045249222212903329', 'THaygi4wM7Wz2iruDuV3yOEfzddkSHnSZQNEi16g0eqrPsakR5IcbvmiqeBkl1Ai', NULL, NULL, NULL),
(40, 'yuebm123@gmail.com', 'kirito kurosaki', 'https://lh5.googleusercontent.com/-4oWrEohjD_g/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rf6L7VyhPyKFNTNLkYB0BgapH_VZQ/s50-mo/photo.jpg', 0, 'google', '106083572970533139007', 'pPNHa9jbqqCWRisF5V9BFJHUfEE8SvcQWhZqn29KndRZr85Z10RAqFiPUkfkWbab', NULL, NULL, NULL),
(41, 'hoangphi.2101.pt@gmail.com', 'Phi Nguyễn Hoàng', 'https://lh3.googleusercontent.com/-Hamfawah7Js/AAAAAAAAAAI/AAAAAAAAAA8/RKUIjh-DjLw/s50/photo.jpg', 0, 'google', '109287450331376458634', 'h4D4v9R5SGGMQbdMo22sPMOkR1NZ3KxeyGgPTq6aWr0tJdSJyUfTcpiPv6oOxkUc', NULL, NULL, NULL),
(42, 'nhan7875@gmail.com', 'Lê Hữu Nhân', 'https://lh5.googleusercontent.com/-NGFs6yPrCOU/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rcxukVB6x2QL5nXLt2nXkbiRmgfjw/s50-mo/photo.jpg', 0, 'google', '107364418444209449450', 'KeIgvM2uCO2kALIDTZT2ka6EUVrT5TxcGOtWaLavdbbvEflkukt7uo3mVNfhoEIW', NULL, NULL, NULL),
(43, 's2kirbys2@gmail.com', 'Rin -', 'https://lh5.googleusercontent.com/-Bfklr7GIq8U/AAAAAAAAAAI/AAAAAAAAAEI/YhfHzhdzmvI/s50/photo.jpg', 0, 'google', '104103770087091705686', 'j7bx7A83HnvDtIpAgn8JRbfuMkOapcoAST53YcKgBI1JmZF7pUq0qCpoqhwe2uwl', NULL, NULL, NULL),
(44, 'id.huyhieu@gmail.com', 'Huy Hiếu', 'https://lh4.googleusercontent.com/-7JA3S3YCtrY/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3re-nS8HIeoNdXFC9BtcmhumgJN9TQ/s50-mo/photo.jpg', 0, 'google', '106384549306976858459', 'TXgoyLtko1dG4QD0WQVTm3wTjITPxlJXh8m2DEHjxkzaGq96HJZzLRx0DPIs3Gnl', NULL, NULL, NULL),
(45, 'it.repair77@gmail.com', 'huan vo', 'https://lh5.googleusercontent.com/-gKjaOe4cl78/AAAAAAAAAAI/AAAAAAAAABQ/jFiIbhxO1Ms/s50/photo.jpg', 0, 'google', '116035701396908613450', 'DymoT6GndteCQ6FwVG94p835zT1W1HXZqMwxIBts1sfvFvVipca7LmZBgdvkSbBs', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sourcecode`
--

CREATE TABLE `sourcecode` (
  `id` int(11) NOT NULL,
  `ten` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loaisourcecode` int(11) DEFAULT 1,
  `mota` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `noidung` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iduser` int(11) DEFAULT NULL,
  `linkdemo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hinh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `luotxem` int(11) DEFAULT 0,
  `luottai` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hide` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sourcecode`
--

INSERT INTO `sourcecode` (`id`, `ten`, `loaisourcecode`, `mota`, `noidung`, `iduser`, `linkdemo`, `source`, `document`, `hinh`, `luotxem`, `luottai`, `created_at`, `updated_at`, `slug`, `hide`) VALUES
(1, 'Thiện test nè', 5, 'mô tả nè', '<p style=\"text-align:center\">Đ&acirc;y l&agrave; nội dung</p>', 255, NULL, 'https://www.facebook.com/', 'Android_OnThi.pdf', 'studying.jpg', 273, 0, '2019-09-24 19:26:32', '2019-11-05 18:39:57', 'thien-test-ne-1', 0),
(2, 'Cuộc chiến tranh giành quyền lực như trong phim gi', 1, 'Cuộc chiến tranh giành quyền lực như trong phim giữa hai nhà sáng lập của công ty đào tiền số trị gi', NULL, 254, NULL, 'hiepsiit.sql.zip', 'Score1_5d92a3e92717a.pdf', '11140373_709241339219227_6399475631325176819_n_5db8f90f76067.jpg', 188, 0, '2019-09-25 20:01:53', '2019-11-04 07:55:14', 'cuoc-chien-tranh-gianh-quyen-luc-nhu-trong-phim-gi-2', 0),
(3, 'Thiện test', 1, 'thêm mới', '<p>abc</p>', 254, NULL, 'http://thien.com', 'Virtual machine for MSP430 development_5d9eff3c8b7e5.pdf', '17408419_1077945255682165_1092168560_o_5db8f6a392478.png', 2, 0, '2019-10-10 02:51:56', '2019-11-04 19:11:06', 'thien-test-3', 0),
(4, 'thêm thử thôi', 1, NULL, NULL, 254, NULL, NULL, 'cert-HTML-PhamNguyenHuuThien.pdf', '27438723-kingdom-hearts-wallpapers_5db8f8a9c557c.jpg', 9, 0, '2019-10-10 02:55:47', '2019-10-31 18:02:23', 'them-thu-thoi-4', 0),
(5, 'Thiện lại test', 1, NULL, NULL, 254, NULL, 'http://google.com', 'WEB101x_Assignment2.pdf', 'T_5db8f6b7ba0b5.jpg', 16, 0, '2019-10-10 03:07:04', '2019-10-29 19:35:02', 'thien-lai-test-5', 0),
(7, 'aaaaaaaaaaaaaaaaaaaaaaaaaaaa', 1, 'aaa', '<p>a</p>', 273, NULL, NULL, 'Thực tập_02_Đồ án chuyên ngành_5da328e8480d2.pdf', 'DOAX-VenusVacation_190930_190755_5da328e847d93.jpg', 12, 0, '2019-10-13 06:38:48', '2019-10-29 20:16:49', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaa-7', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sources`
--

CREATE TABLE `sources` (
  `id` int(10) UNSIGNED NOT NULL,
  `lesson_id` int(11) NOT NULL,
  `code` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sources`
--

INSERT INTO `sources` (`id`, `lesson_id`, `code`, `code_id`, `created_at`, `updated_at`) VALUES
(140, 20, '<?php\r\n$a = 8;\r\n$b = -5;\r\n$c = 6;\r\n\r\necho \"a=\" . $a . \", b=\" .$b . \", c=\" . $c;\r\necho \"<br/>\";\r\n\r\necho \"(a + c > 0) && (b + c > 0) \";\r\nvar_dump(($a + $c > 0) && ($b + $c > 0));\r\necho \"<br/>\";\r\n\r\necho \"(a + c > 0) && (b + c < 0) \";\r\nvar_dump(($a + $c > 0) && ($b + $c < 0));\r\necho \"<br/>\";\r\n\r\necho \"(a + c > 0) || (b + c > 0) \";\r\nvar_dump(($a + $c > 0) || ($b + $c > 0));\r\necho \"<br/>\";\r\n\r\necho \"(a + c > 0) || (b + c < 0) \";\r\nvar_dump(($a + $c > 0) || ($b + $c < 0));\r\necho \"<br/>\";\r\n\r\necho \"!(a + c > 0) \";\r\nvar_dump(!($a + $c > 0));\r\necho \"<br/>\";\r\n?>', NULL, NULL, NULL),
(146, 19, '<?php\r\n $a = 8;\r\n $b=4;\r\n echo $a .\"</br>\";\r\n $a += $b; //$a=$a+$b;\r\n echo $a .\"</br>\";\r\n $a-=$b;	//$a=$a-$b;\r\n echo $a .\"</br>\";\r\n $a/=$b;	//$a= $a/$b;\r\n echo $a .\"</br>\";\r\n $b>>=2; //$b =$b >>2\r\n echo $b .\"</br>\";\r\n $b<<=2; //$b =$b <<2;\r\n echo $b .\"</br>\";\r\n?>', NULL, NULL, NULL),
(147, 18, '<?php\r\n$a = 40;\r\n$b = 20;\r\necho \"a=\" . $a . \", b=\" .$b . \" (a va b deu la kieu int)\";\r\necho \"<br/>\";\r\n\r\necho \"a > b \";\r\nvar_dump($a > $b);\r\necho \"<br/>\";\r\n\r\necho \"a < b \";\r\nvar_dump($a < $b);\r\necho \"<br/><br/>\";\r\n\r\n\r\n$a = 9;\r\n$b = 9.0;\r\necho \"a=\" . $a . \", b=\" .$b . \" (a=9 la kieu int, b=9.0 la kieu float)\";\r\necho \"<br/>\";\r\n\r\necho \"a >= b \";\r\nvar_dump($a >= $b);\r\necho \"<br/>\";\r\necho \"a <= b \";\r\nvar_dump($a <= $b);\r\necho \"<br/>\";\r\necho \"a == b \";\r\nvar_dump($a == $b);\r\necho \"<br/>\";\r\necho \"a != b \";\r\nvar_dump($a != $b);\r\necho \"<br/><br/>\";\r\n?>', NULL, NULL, NULL),
(148, 18, '<?php\r\n$a = 18;\r\n$b = 18.0; //Bien b co gia tri la kieu float\r\necho \"a=\" . $a . \", b=\" .$b . \" (a=9 là kieu int, b=9.0 la kieu float)\";\r\necho \"<br/>\";\r\n\r\necho \"a === b \";\r\nvar_dump($a === $b);\r\necho \"<br/>\";\r\necho \"a !== b \";\r\nvar_dump($a !== $b);\r\n/*\r\nCác bạn thấy kết quả phép so sánh === là false và !== là true, do là cùng giá trị là 9 nhưng $a là kiểu int và $b là kiều float.\r\n*/\r\n?>', NULL, NULL, NULL),
(201, 26, '<!--registration.php-->\r\n\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n\r\n<title>Form đăng ký thông tin</title>\r\n</head>\r\n\r\n<body>\r\n<?php\r\nif(isset($_POST[\'Submit\'])){\r\n\r\n$emp_name=trim($_POST[\"emp_name\"]);\r\n$emp_address=trim($_POST[\"emp_address\"]);\r\n$emp_email=trim($_POST[\"emp_email\"]);\r\n\r\nif($emp_name ==\"\") {\r\n  $errorMsg=  \"Lỗi : Xin vui lòng nhập tên của bạn.\";\r\n  $code= \"1\" ;\r\n}\r\n//check if email field is empty\r\nelseif($emp_email == \"\"){\r\n  $errorMsg=  \"Lỗi : Xin vui lòng nhập Email.\";\r\n  $code= \"2\";\r\n} //check for valid email \r\n  elseif(!preg_match(\"/^[_\\.0-9a-zA-Z-]+@([0-9a-zA-Z][0-9a-zA-Z-]+\\.)+[a-zA-Z]{2,6}$/i\", $emp_email)){\r\n  $errorMsg= \'Lỗi : Email của bạn không đúng.\';\r\n  $code= \"2\";\r\n}\r\n\r\nelseif($emp_address == \"\") {\r\n  $errorMsg=  \"Lỗi : Xin vui lòng nhập địa chỉ.\";\r\n  $code= \"3\";\r\n}\r\nelse{\r\n  echo \"Success\";\r\n  //final code will execute here.\r\n}\r\n\r\n}\r\n?>\r\n\r\n<style type=\"text/css\" >\r\n.errorMsg{border:1px solid red; }\r\n.message{color: red; font-weight:bold; }\r\n</style>\r\n\r\n<form name= \"registration\" id= \"registration\" method= \"post\" action= \"\" >\r\n<table width= \"400\" border= \"0\" align=\"center\" cellpadding= \"4\" cellspacing= \"1\">\r\n<tr><th colspan=\"2\" align=\"center\"> Đăng ký thông tin\r\n</th></tr>\r\n<tr><td colspan=\"2\"><?php if (isset($errorMsg)) { echo \"<p class=\'message\'>\" .$errorMsg. \"</p>\" ;} ?>\r\n</td></tr>\r\n<tr>\r\n<td>Tên của bạn:</td>\r\n<td><input name= \"emp_name\" type= \"text\" id=\"emp_name\" value=\"<?php if(isset($emp_name)){echo $emp_name;} ?>\"\r\n <?php if(isset($code) && $code == 1){echo \"class=errorMsg\" ;} ?> ></td>\r\n</tr>\r\n<tr>\r\n<td>Email: </td>\r\n<td><input name= \"emp_email\" type= \"text\" id= \"emp_email\" value=\"<?php if(isset($emp_email)){echo $emp_email; }?>\"\r\n<?php if(isset($code) && $code == 2){echo \"class=errorMsg\" ;}?> ></td>\r\n</tr>\r\n<tr>\r\n<td>Địa chỉ: </td>\r\n<td><input name== \"emp_address\" <?php if(isset($code) && $code == 3){echo \"class=errorMsg\" ;}?> \r\n <?php if(isset($emp_address)){echo $emp_address;} ?>>\r\n </td>\r\n</tr>\r\n\r\n<tr>\r\n<td> </td>\r\n<td><input type= \"submit\" name= \"Submit\" value= \"Submit\" ></td>\r\n</tr>\r\n</table>\r\n</form>\r\n</body>\r\n</html>', NULL, NULL, NULL),
(211, 13, '<?php\r\nfunction addCounter(){\r\n    $counter = 0;\r\n    $counter++;\r\n    echo \"Local counter: {$counter}\"; \r\n}\r\n$counter = 14;\r\naddCounter();\r\necho \"counter: {$counter}\"; \r\n?>', NULL, NULL, NULL),
(212, 13, '<?php\r\nfunction addCounter(){\r\n    global $counter;\r\n    $counter++;\r\n}\r\n$counter = 14;\r\naddCounter();\r\necho \"Global counter: {$counter}\";\r\n?>', NULL, NULL, NULL),
(213, 13, '<?php\r\nfunction addCounter(){\r\n    static $counter = 4;\r\n    $counter++;\r\n    echo \"Static counter: {$counter} \";\r\n}\r\n$counter = 12;\r\naddCounter();//Gọi lần một\r\naddCounter();//Gọi lần hai\r\naddCounter();//Gọi lần ba\r\necho \"Global counter: {$counter}\";\r\n?>', NULL, NULL, NULL),
(214, 13, '<?php\r\nfunction addCounter(){\r\n    static $counter = 4;\r\n    $counter++;\r\n    echo \"Static counter: {$counter} \";\r\n}\r\n$counter = 12;\r\naddCounter();//Gọi lần một\r\naddCounter();//Gọi lần hai\r\naddCounter();//Gọi lần ba\r\necho \"Global counter: {$counter}\";\r\n?>', NULL, NULL, NULL),
(223, 16, '<?php	\r\nclass Student{\r\n    function list_student(){\r\n        //Code php&mysql select news in database\r\n        echo \"Hiển thị danh sách sinh viên\";\r\n    }\r\n}\r\n\r\n$student= new Student();\r\n$student->list_student();\r\n?>', NULL, NULL, NULL),
(233, 25, '<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title>Untitled Document</title>\r\n</head>\r\n<body>\r\n<form action=\"registration_get.php\" method=\"get\"> \r\nName: <input type=\"text\" name=\"name\"> <br />\r\nEmail: <input type=\"text\" name=\"email\"> <br/>\r\n<input type=\"submit\"> \r\n</form> \r\n</body> \r\n</html>', NULL, NULL, NULL),
(234, 25, '\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title>Untitled Document</title>\r\n</head>\r\n<body> \r\n<form action=\"registration_post.php\" method=\"post\"> \r\nName: <input type=\"text\" name=\"name\"> <br />\r\nEmail: <input type=\"text\" name=\"email\"> <br/>\r\n<input type=\"submit\"> \r\n</form> \r\n</body> \r\n</html>', NULL, NULL, NULL),
(246, 29, '<?php\r\n    Function myFunc(){\r\n	Echo \"Hello tô mì gõ\";\r\n}\r\nmyFunc();\r\nMyFUNC(); //  gọi hàm, không phân biệt chữ hoa, chữ thường\r\n?>\r\n', NULL, NULL, NULL),
(247, 29, '<?php\r\n    function Hello() \r\n    {\r\n        function Welcome() \r\n        {\r\n            echo \"Welcome to Hiep SI IT.\";\r\n        }\r\n    }\r\n \r\n    // Không thể gọi hàm Welcome vì nó được định nghĩa ở trong hàm Hello.\r\n		Hello();\r\n \r\n    // Tại đây có thể gọi hàm Welcome.\r\n		Welcome();\r\n?>', NULL, NULL, NULL),
(248, 29, '<?php\r\n    function Hello() \r\n    {\r\n        function Welcome() \r\n        {\r\n            echo \"Welcome to Hiep SI IT.\";\r\n        }\r\n    }\r\n \r\n    // Không thể gọi hàm Welcome vì nó được định nghĩa ở trong hàm Hello.\r\n		Hello();\r\n \r\n    // Tại đây có thể gọi hàm Welcome.\r\n		Welcome();\r\n?>', NULL, NULL, NULL),
(251, 30, '<?php  \r\n        //Adding two numbers  \r\n         function sum($a, $b) {  \r\n            $sum = $a + $b;  \r\n            echo \"Tổng hai số $a + $b  = $sum <br><br>\";  \r\n         }   \r\n         sum(10, 10);  \r\n  \r\n         //Subtracting two numbers  \r\n         function sub($a, $b) {  \r\n            $diff = $a - $b;  \r\n            echo \"Trừ hai số $a - $b = $diff\";  \r\n         }   \r\n         sub(10, 5);  \r\n?>  \r\n', NULL, NULL, NULL),
(252, 30, '<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title>Demo Cộng trừ hai số động Hiệp sĩ IT</title>\r\n</head>\r\n\r\n<body>  \r\n\r\n  <?php  \r\n        //Adding two numbers  \r\n         function sum($a, $b) {  \r\n            $sum = $a + $b;  \r\n            echo \"Tổng hai số $a + $b  = $sum <br><br>\";  \r\n         }   \r\n        \r\n  \r\n         //Subtracting two numbers  \r\n         function sub($a, $b) {  \r\n            $diff = $a - $b;  \r\n            echo \"Trừ hai số $a - $b = $diff\";  \r\n         }   \r\n        \r\n      ?>\r\n\r\n<form name=\"form1\" method=\"post\" action=\"\">\r\n\r\n  <table width=\"1000\" border=\"1\" cellpadding=\"0\" cellspacing=\"0\">\r\n    <tr>\r\n      <td colspan=\"2\" align=\"center\"><strong>Công trừ hai số</strong></td>\r\n    </tr>\r\n    <tr>\r\n      <td width=\"181\">Nhập số a:</td>\r\n      <td width=\"807\"><label for=\"txta\"></label>\r\n        <input type=\"text\" name=\"txta\" id=\"txta\"></td>\r\n    </tr>\r\n    <tr>\r\n      <td>Nhập số b:</td>\r\n      <td><input type=\"text\" name=\"txtb\" id=\"txtb\"></td>\r\n    </tr>\r\n    <?php \r\n	if(isset($_POST[\"btnadd\"])){\r\n  	?>\r\n    <tr>\r\n      <td colspan=\"2\"><?php sub($_POST[\"txta\"],$_POST[\"txtb\"]); ?></td>\r\n    <?php \r\n	}\r\n	?>\r\n    <?php \r\n	if(isset($_POST[\"btnadd\"])){\r\n  	?>\r\n    <tr>\r\n      <td colspan=\"2\"><?php sum($_POST[\"txta\"],$_POST[\"txtb\"]); ?></td>\r\n    <?php \r\n	}\r\n	?>\r\n    </tr>\r\n    <tr>\r\n      <td> </td>\r\n      <td><input type=\"submit\" name=\"btnadd\" id=\"button\" value=\"Cộng\">\r\n        <input type=\"submit\" name=\"btnsub\" id=\"btnsub\" value=\"Trừ\"></td>\r\n    </tr>\r\n  </table>\r\n  \r\n</form>\r\n\r\n</body> \r\n</html>', NULL, NULL, NULL),
(259, 32, '<?php  \r\nfunction hello(&$str2){  \r\n    $str2 .= \'Tèo\';  \r\n}  \r\n$str = \'Xin Chào\';  \r\nhello($str);  \r\necho $str;  \r\n?>   \r\n', NULL, NULL, NULL),
(260, 32, '<?php\r\n    $numberFirst = 10;\r\n    $numberSecond = 20;\r\n \r\n    function swap(&$numFirst, &$numSecond)\r\n    {\r\n        $tmp       = $numberFirst;\r\n        $numFirst  = $numSecond;\r\n        $numSecond = $tmp;\r\n    }\r\n \r\n    swap($numberFirst, $numberSecond);\r\n \r\n    echo $numberFirst;\r\n    echo $numberSecond;\r\n?>', NULL, NULL, NULL),
(261, 31, '<?php  \r\nfunction hello($str2){  \r\n    $str2 .= \'Tèo\';  \r\n}  \r\n$str = \'Xin Chào\';  \r\nhello($str);  \r\necho $str;  \r\n?>   \r\n', NULL, NULL, NULL),
(262, 31, '<?php\r\nfunction increment ($i){\r\n  $i++;\r\n}\r\n$i=100;\r\nincrement($i);\r\necho $i;\r\n?>', NULL, NULL, NULL),
(263, 33, '<?php\r\nfunction FunctionWithParameters($str = \"Hello\"){\r\necho $str.\" HiepSIIT. <br/>\";\r\n }\r\nFunctionWithParameters();\r\nFunctionWithParameters(null);\r\nFunctionWithParameters(\"Welcome to \");\r\n?>\r\n\r\n', NULL, NULL, NULL),
(264, 33, '<?php    \r\nfunction greeting($first=\"Sonoo\",$last=\"Jaiswal\"){    \r\necho \"Greeting: $first $last<br/>\";    \r\n}    \r\ngreeting();  \r\ngreeting(\"Rahul\");  \r\ngreeting(\"Michael\",\"Clark\");  \r\n?>', NULL, NULL, NULL),
(267, 34, '<?php  \r\nfunction add(...$numbers) {  \r\n    $sum = 0;  \r\n    foreach ($numbers as $n) {  \r\n        $sum += $n;  \r\n    }  \r\n    return $sum;  \r\n}  \r\n echo add(1,2,3,4,5)\r\n?>', NULL, NULL, NULL),
(279, 36, '<?php  \r\n$friends[0] = \'Tý\'; \r\n$friends[1] = \'Cúm\'; \r\n$friends[2] = \'Beo\';\r\n \r\nvar_dump($friends);\r\n\r\n?>  \r\n', NULL, NULL, NULL),
(280, 36, '<?php  \r\n$friends = array(Tý,\'Cúm\',\'Beo\'); \r\nvar_dump($friends);\r\n?>  \r\n', NULL, NULL, NULL),
(281, 36, '<?php  \r\n$salary[\'Ty\'] = 15000; \r\n $salary[\'Cum\'] = 25000;  \r\n$salary[\'Beo\'] = 27000; \r\nvar_dump($salary);\r\n?>  \r\n', NULL, NULL, NULL),
(282, 36, '<?php \r\n$salary = array(\'Ty\'=>15000, \'Cum\'=>25000, \'Beo\'=>27000);  \r\n print_r($salary);\r\n?>', NULL, NULL, NULL),
(283, 36, '<?php \r\n$multiDArray = array( \"A\" => array(0 => \"red\", \r\n2 => \"blue\", 3 => \"green\"), \r\n\"B\" => array(1 => \"orange\", 2 => \"black\"),\r\n \"C\" => array(0 => \"white\", 4 => \"purple\", 8 => \"grey\") ); \r\necho $multiDArray[\"A\"][3]; // Outputs green \r\necho \"<br>\"; \r\necho $multiDArray[\"C\"][8]; // Outputs grey\r\n?>', NULL, NULL, NULL),
(302, 28, '<?php\r\n$x = 6;\r\n$y = 9;\r\nfunction cong() {\r\n$GLOBALS[\"z\"] = $GLOBALS[\"x\"] + $GLOBALS[\"y\"];\r\n}\r\ncong();\r\necho $z; //kết quả là 15\r\n?>\r\n', NULL, NULL, NULL),
(303, 28, '<?php\r\necho $_SERVER[\"PHP_SELF\"];\r\necho \"<br>\";\r\necho $_SERVER[\"SERVER_NAME\"];\r\necho \"<br>\";\r\necho $_SERVER[\"HTTP_HOST\"];\r\necho \"<br>\";\r\necho $_SERVER[\"HTTP_REFERER\"];\r\necho \"<br>\";\r\necho $_SERVER[\"HTTP_USER_AGENT\"];\r\necho \"<br>\";\r\necho $_SERVER[\"SCRIPT_NAME\"];\r\n?>', NULL, NULL, NULL),
(304, 28, '\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title>Untitled Document</title>\r\n</head>\r\n\r\n<body>\r\n<body><form method=\"post\" action=\"<?php echo $_SERVER[\'PHP_SELF\'];?>\">\r\nName: <input type=\"text\" name=\"fname\">\r\n<input type=\"submit\" value=\"test\">\r\n</form>\r\n<?php\r\nif ($_SERVER[\"REQUEST_METHOD\"] == \"POST\"){\r\n// Thu thập dữ liệu từ input\r\n$name = $_REQUEST[\"fname\"];\r\nif (empty($name)) {\r\n	echo \"Truong ten khong duoc dien\";\r\n}\r\nelse {\r\necho \"Tên của bạn:\".$name;\r\n}\r\n}\r\n?>\r\n</body>\r\n</body>\r\n</html>', NULL, NULL, NULL),
(305, 38, '<?php\r\n $str =\'Tôi tên là Thích Lung Tung\';\r\n echo $str;\r\n?>\r\n', NULL, NULL, NULL),
(306, 38, '<?php\r\n $str1 =\'Thi rớt xưa nay cũng sự thường, \r\nTa nay thi rớt nghĩ mà thương. \r\nMẹ trông tin trẻ ngồi van vái, \r\nChị đọ tên em ngó tỏ tường.\' ;\r\n$str2=\'Cay đắng mười năm công sĩ khó, \r\nRủi may một chữ bút quan trường. \r\nKhoa này không đỗ chờ khoa khác, \r\nCái nợ bình sanh hãy vấn vương./\';\r\n$str3=\'Nguồn: \"Thượng Tân Thị với 10 bài Khuê phụ thán, \\n Phan Đình Liễu, NXB Văn Mới, CA, Hoa Kỳ\"\';\r\n echo \"$str1 <br/> $str2 <br/> $str3\"; \r\n?>\r\n', NULL, NULL, NULL),
(307, 38, '<?php  \r\n$num1=10;   \r\n$str1=\'Xem thử $num1\';  \r\necho $str1\r\n?>  \r\n', NULL, NULL, NULL),
(308, 38, '<?php\r\n $str =\"Tôi tên là Thích Lung Tung\";\r\n echo $str;\r\n?>\r\n', NULL, NULL, NULL),
(309, 38, '<?php  \r\n$num1=10;   \r\n$str1=\"Xem thử $num1\";  \r\necho $str1\r\n?>  \r\n', NULL, NULL, NULL),
(310, 38, '<?php\r\n$str=\"Nguồn: \\\"Thượng Tân Thị với 10 bài Khuê phụ thán, \\n Phan Đình Liễu, NXB Văn Mới, CA, Hoa Kỳ\\\"\";\r\n echo \"$str\"; \r\n?>\r\n', NULL, NULL, NULL),
(311, 38, '<?php\r\n$str1 =\"Thi rớt xưa nay cũng sự thường, \r\nTa nay thi rớt nghĩ mà thương. \r\nMẹ trông tin trẻ ngồi van vái, \r\nChị đọ tên em ngó tỏ tường.\" ;\r\n$str2=\"Cay đắng mười năm công sĩ khó, \r\nRủi may một chữ bút quan trường. \r\nKhoa này không đỗ chờ khoa khác, \r\nCái nợ bình sanh hãy vấn vương./\";\r\n$str3=\"Nguồn: \\\"Thượng Tân Thị với 10 bài Khuê phụ thán, \\n Phan Đình Liễu, NXB Văn Mới, CA, Hoa Kỳ\\\"\";\r\n echo \"$str1 <br/> $str2 <br/> $str3\"; \r\n?>', NULL, NULL, NULL),
(344, 40, '<?php    \r\necho date(\"Y/m/d\"),\'<br>\'; //kết quả trả ra có dạng như 2015/07/22\r\necho date(\"d/m/Y\"),\'<br>\'; //kết quả trả ra có dạng như 22/07/2015\r\necho date(\"d/m/Y H:i:s\"),\'<br>\'; //kết quả trả ra có dạng như 22/07/2015 08:30:30 \r\n?>', NULL, NULL, NULL),
(345, 40, '<?php\r\n echo date(\"Y/m/d\"),\'<br>\'; //kết quả: 2015/07/22\r\n echo date(\"Y:m:d\"),\'<br>\'; //kết quả: 2015:07:22\r\n echo date(\"Y-m-d\"),\'<br>\'; //kết quả: 2015-07-22\r\n echo date(\"Y m d h:i:s\"),\'<br>\'; //kết quả 2015 07 22 08:30:30\r\n?>', NULL, NULL, NULL),
(346, 40, '<?php\r\n    //kết quả trả ra có dạng như 1077913162\r\n    echo time(),\'<br>\';   \r\n     //thời điểm hiện tại cộng thêm 300 giây\r\n    $after_5min = time() + 5*60;     \r\n    $after_hour = time()+ 60*60;\r\n    echo \'5 phút nữa sẽ là: \',$after_5min,\'<br>\';\r\n    echo \'1 giờ sau sẽ là: \',$after_hour,\'<br>\';\r\n    //tính khoảng thời gian giữa 2 thời điểm\r\n    $dist = $after_hour-$after_5min;\r\n    echo \'cách nhau: \',$dist,\' giây - tương ứng: \',($dist/60),\' phút\';\r\n?>', NULL, NULL, NULL),
(347, 40, '<?php\r\n    //đặt thời điểm bắt đầu tính mốc thời gian\r\n    $time_start = microtime();\r\n    for($i = 0; $i < 1000; $i++)\r\n    {\r\n     echo \'hello world\';\r\n    }\r\n    //hiệu thời gian hiện tại và thời điểm tính mốc là khoảng thời gian chạy code\r\n    echo \'<br>thoi gian xuat cua echo: <b>\',microtime()-$time_start,\'</b><br>\';\r\n    $time_start = microtime();\r\n    for($i = 0; $i < 1000; $i++)\r\n    {\r\n        print \'hello world\';\r\n    }\r\n    echo \'<br>thoi gian xuat cua ham print: <b>\',microtime()-$time_start,\'</b><br>\';\r\n?>\r\n', NULL, NULL, NULL),
(348, 40, '<?php\r\ndate_default_timezone_set(\"Asia/Ho_Chi_Minh\");\r\necho \"VietNam: \".date(\"Y-m-d H:i:s\"). \"<br>\";\r\ndate_default_timezone_set(\"Asia/Tokyo\");\r\necho \"Japan: \".date(\"Y-m-d H:i:s\");\r\n?>', NULL, NULL, NULL),
(349, 40, '<?php\r\n$time = mktime(\"8\",\"30\",\"00\",\"07\",\"22\",\"2017\");\r\n//$time là timestamp, bạn có thể sử dụng nó trong hàm date()\r\necho date(\"Y-m-d H:i:s\",$time),\'<br>\';\r\n//sau 15 phút\r\n$time += 900;\r\necho \'15 phút sau: \',date(\"Y-m-d H:i:s\",$time),\'<br>\';\r\n//3 ngày sau\r\necho \' 3 ngày sau: \',date(\"Y-m-d H:i:s\",($time+3*60*60*24));\r\n?>', NULL, NULL, NULL),
(350, 40, '<?php\r\n$time = getdate();\r\nprint_r($time);\r\necho \"Ngày: \",$time[\"mday\"],\" tháng: \",$time[\"Mon\"],\" năm: \",$time[\"year\"];\r\n?>\r\n', NULL, NULL, NULL),
(351, 40, '<?php\r\n$time = strtotime(\"2017-07-22 10:01:10\");\r\necho date(\"Y-m-d h:i:s\",$time).\"<br>\";\r\necho \"5 phút sau: \",date(\"Y-m-d h:i:s\",$time+300);\r\n?>', NULL, NULL, NULL),
(352, 17, '<?php\r\n  $k=1;			// xuất ra giá trị 1,  gắn $k=1;\r\n  echo $k++;	// xuất ra giá trị 1,  $k bây giờ có giá trị 2;\r\n  echo ++$k;	// xuất ra giá trị 3,  $k bây giờ có giá trị 3;\r\n  echo $k--;	// xuất ra giá trị 3,  $k bây giờ có giá trị 2;\r\n  echo --$k;	// xuất ra giá trị 1,  $k bây giờ có giá trị 1;\r\n?>', NULL, NULL, NULL),
(353, 17, '<?php\r\n    $a = 5;\r\n    $b = $a;\r\n    $b = 10;\r\n    echo $a; // Print 5\r\n?>\r\n', NULL, NULL, NULL),
(354, 17, '<?php\r\n    $a = 5;\r\n    $b = &$a; // Reference\r\n    $b = 10;\r\n    echo $a; // Print 10 \r\n?>', NULL, NULL, NULL),
(366, 41, '<?php include \"file1.php\"; ?>\r\n<!DOCTYPE html>\r\n<html>\r\n<head>\r\n<title>Demo - Require và Include</title>\r\n</head>\r\n<body>\r\n<?php\r\n    //Sử dụng hàm TinhTong đã được khai báo trong include.php\r\n    echo \"Tổng 2 số 10 và 63 là: \".sum(10,63);\r\n?>\r\n</body>\r\n</html>\r\n', NULL, NULL, NULL),
(367, 41, '<?php require \"file1.php\"; ?>\r\n<!DOCTYPE html>\r\n<html>\r\n<head>\r\n<title>Demo - Require và Include</title>\r\n</head>\r\n<body>\r\n <?php\r\n    //Sử dụng hàm TinhTong đã được khai báo trong include.php\r\n    echo \"Tổng 2 số 10 và 63 là: \".sum(10,63);\r\n?>\r\n </body>\r\n</html>\r\n', NULL, NULL, NULL),
(368, 41, '<?php\r\n  require\'fileA.php\';\r\n  require_once\'fileA.php\'; //gọi filea 2 lần,\r\n?>\r\n', NULL, NULL, NULL),
(369, 41, '<?php\r\n  require_once \'fileA.php\';\r\n  require_once \'fileA.php\';\r\n?>\r\n', NULL, NULL, NULL),
(370, 41, '	<!DOCTYPE html>\r\n\r\n<html>\r\n<head>\r\n	<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n	<title>3 Column Layout</title>\r\n	<style type=\"text/css\">\r\n\r\n		/* Layout */\r\n		body {\r\n			min-width: 630px;\r\n		}\r\n\r\n		#container {\r\n			padding-left: 200px;\r\n			padding-right: 190px;\r\n		}\r\n		\r\n		#container .column {\r\n			position: relative;\r\n			float: left;\r\n		}\r\n		\r\n		#center {\r\n			padding: 10px 20px;\r\n			width: 100%;\r\n		}\r\n		\r\n		#left {\r\n			width: 180px;\r\n			padding: 0 10px;\r\n			right: 240px;\r\n			margin-left: -100%;\r\n		}\r\n		\r\n		#right {\r\n			width: 130px;\r\n			padding: 0 10px;\r\n			margin-right: -100%;\r\n		}\r\n		\r\n		#footer {\r\n			clear: both;\r\n		}\r\n		\r\n		/* IE hack */\r\n		* html #left {\r\n			left: 150px;\r\n		}\r\n\r\n		/* Make the columns the same height as each other */\r\n		#container {\r\n			overflow: hidden;\r\n		}\r\n\r\n		#container .column {\r\n			padding-bottom: 1001em;\r\n			margin-bottom: -1000em;\r\n		}\r\n\r\n		/* Fix for the footer */\r\n		* html body {\r\n			overflow: hidden;\r\n		}\r\n		\r\n		* html #footer-wrapper {\r\n			float: left;\r\n			position: relative;\r\n			width: 100%;\r\n			padding-bottom: 10010px;\r\n			margin-bottom: -10000px;\r\n			background: #fff;\r\n		}\r\n\r\n		/* Aesthetics */\r\n		body {\r\n			margin: 0;\r\n			padding: 0;\r\n			font-family:Sans-serif;\r\n			line-height: 1.5em;\r\n		}\r\n		\r\n		p {\r\n			color: #555;\r\n		}\r\n\r\n		nav ul {\r\n			list-style-type: none;\r\n			margin: 0;\r\n			padding: 0;\r\n		}\r\n		\r\n		nav ul a {\r\n			color: darkgreen;\r\n			text-decoration: none;\r\n		}\r\n\r\n		#header, #footer {\r\n			font-size: large;\r\n			padding: 0.3em;\r\n			background: #BCCE98;\r\n		}\r\n\r\n		#left {\r\n			background: #DAE9BC;\r\n		}\r\n		\r\n		#right {\r\n			background: #F7FDEB;\r\n		}\r\n\r\n		#center {\r\n			background: #fff;\r\n		}\r\n\r\n		#container .column {\r\n			padding-top: 1em;\r\n		}\r\n		\r\n	</style>\r\n	\r\n	\r\n</head>\r\n\r\n<body>\r\n\r\n	<header id=\"header\"><?php include \"header.php\"; ?></header>\r\n\r\n	<div id=\"container\">\r\n\r\n		<main id=\"center\" class=\"column\">\r\n			<article>\r\n			\r\n				<h1>Heading</h1>\r\n				<p>Trăm năm trong cõi người ta<br>\r\nNếu không thi lại đâu là sinh viên<br/>\r\nHọc đi học lại liên miên<br/>\r\nChắc là em lại có duyên với thầy<br/>\r\nMình mà bỏ học như Tây<br/>\r\nChỉ còn cái nước đi xây phụ hồ<br/>\r\nChứ còn toan tính đề lô<br/>\r\nChỉ nuôi mấy quán cầm đồ mà thôi<br/>\r\nPhao đâu cứu nổi thân tôi<br/>\r\nĐắng cay vẫn nở trên môi nụ cười<br/>\r\nSinh viên cũng chỉ là người<br/>\r\nCó qua có lại có mười có không<br/>\r\nĐời đâu chỉ có màu hồng<br/>\r\nMì tôm cơm nguội ngày đông ấm lòng<br/>\r\nĐề rối như mớ bòng bong<br/>\r\nRặn ra chữ viết vài dòng khi thi<br/>\r\nDẫu rằng thầy có từ bi<br/>\r\nThì em vẫn phải lượt đi lượt về<br/>\r\nThôi thì F ghét A,B<br/>\r\nThi lại chắc cũng là nghề sinh viên.<br/>\r\n<br>\r\nNguồn : Lượm trên Internet\r\n</p>\r\n			\r\n			</article>								\r\n		</main>\r\n\r\n		<nav id=\"left\" class=\"column\">\r\n			<?php include \"left.php\"; ?>\r\n\r\n		</nav>\r\n\r\n		<div id=\"right\" class=\"column\">\r\n			<?php include \"right.php\"; ?>\r\n		</div>\r\n\r\n	</div>\r\n\r\n	<div id=\"footer-wrapper\">\r\n		<?php include \"footer.php\"; ?>\r\n	</div>\r\n\r\n</body>\r\n\r\n</html>', NULL, NULL, NULL),
(371, 41, ' <!DOCTYPE html>\r\n<!-- Template by html.am -->\r\n<html>\r\n<head>\r\n	<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n	<title>3 Column Layout</title>\r\n	<style type=\"text/css\">\r\n\r\n		/* Layout */\r\n		body {\r\n			min-width: 630px;\r\n		}\r\n\r\n		#container {\r\n			padding-left: 200px;\r\n			padding-right: 190px;\r\n		}\r\n		\r\n		#container .column {\r\n			position: relative;\r\n			float: left;\r\n		}\r\n		\r\n		#center {\r\n			padding: 10px 20px;\r\n			width: 100%;\r\n		}\r\n		\r\n		#left {\r\n			width: 180px;\r\n			padding: 0 10px;\r\n			right: 240px;\r\n			margin-left: -100%;\r\n		}\r\n		\r\n		#right {\r\n			width: 130px;\r\n			padding: 0 10px;\r\n			margin-right: -100%;\r\n		}\r\n		\r\n		#footer {\r\n			clear: both;\r\n		}\r\n		\r\n		/* IE hack */\r\n		* html #left {\r\n			left: 150px;\r\n		}\r\n\r\n		/* Make the columns the same height as each other */\r\n		#container {\r\n			overflow: hidden;\r\n		}\r\n\r\n		#container .column {\r\n			padding-bottom: 1001em;\r\n			margin-bottom: -1000em;\r\n		}\r\n\r\n		/* Fix for the footer */\r\n		* html body {\r\n			overflow: hidden;\r\n		}\r\n		\r\n		* html #footer-wrapper {\r\n			float: left;\r\n			position: relative;\r\n			width: 100%;\r\n			padding-bottom: 10010px;\r\n			margin-bottom: -10000px;\r\n			background: #fff;\r\n		}\r\n\r\n		/* Aesthetics */\r\n		body {\r\n			margin: 0;\r\n			padding: 0;\r\n			font-family:Sans-serif;\r\n			line-height: 1.5em;\r\n		}\r\n		\r\n		p {\r\n			color: #555;\r\n		}\r\n\r\n		nav ul {\r\n			list-style-type: none;\r\n			margin: 0;\r\n			padding: 0;\r\n		}\r\n		\r\n		nav ul a {\r\n			color: darkgreen;\r\n			text-decoration: none;\r\n		}\r\n\r\n		#header, #footer {\r\n			font-size: large;\r\n			padding: 0.3em;\r\n			background: #BCCE98;\r\n		}\r\n\r\n		#left {\r\n			background: #DAE9BC;\r\n		}\r\n		\r\n		#right {\r\n			background: #F7FDEB;\r\n		}\r\n\r\n		#center {\r\n			background: #fff;\r\n		}\r\n\r\n		#container .column {\r\n			padding-top: 1em;\r\n		}\r\n		\r\n	</style>\r\n	\r\n	\r\n</head>\r\n\r\n<body>\r\n\r\n	<header id=\"header\"><?php include \"header.php\"; ?></header>\r\n\r\n	<div id=\"container\">\r\n\r\n		<main id=\"center\" class=\"column\">\r\n			<article>\r\n			\r\n				<h1>Heading</h1>\r\n				<p>Trăm năm trong cõi người ta<br>\r\nNếu không thi lại đâu là sinh viên<br/>\r\nHọc đi học lại liên miên<br/>\r\nChắc là em lại có duyên với thầy<br/>\r\nMình mà bỏ học như Tây<br/>\r\nChỉ còn cái nước đi xây phụ hồ<br/>\r\nChứ còn toan tính đề lô<br/>\r\nChỉ nuôi mấy quán cầm đồ mà thôi<br/>\r\nPhao đâu cứu nổi thân tôi<br/>\r\nĐắng cay vẫn nở trên môi nụ cười<br/>\r\nSinh viên cũng chỉ là người<br/>\r\nCó qua có lại có mười có không<br/>\r\nĐời đâu chỉ có màu hồng<br/>\r\nMì tôm cơm nguội ngày đông ấm lòng<br/>\r\nĐề rối như mớ bòng bong<br/>\r\nRặn ra chữ viết vài dòng khi thi<br/>\r\nDẫu rằng thầy có từ bi<br/>\r\nThì em vẫn phải lượt đi lượt về<br/>\r\nThôi thì F ghét A,B<br/>\r\nThi lại chắc cũng là nghề sinh viên.<br/>\r\n<br>\r\nNguồn : Lượm trên Internet\r\n</p>\r\n			\r\n			</article>								\r\n		</main>\r\n\r\n		<nav id=\"left\" class=\"column\">\r\n			<?php include \"left.php\"; ?>\r\n\r\n		</nav>\r\n\r\n		<div id=\"right\" class=\"column\">\r\n			<?php include \"right.php\"; ?>\r\n		</div>\r\n\r\n	</div>\r\n\r\n	<div id=\"footer-wrapper\">\r\n		<?php include \"footer.php\"; ?>\r\n	</div>\r\n\r\n</body>\r\n\r\n</html>', NULL, NULL, NULL),
(422, 46, '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html>\r\n<head>\r\n<title>Tiêu đề trang web</title>\r\n</head>\r\n<body>\r\n<h1>Đây là tiêu đề quan trọng nhất (lớn nhất)</h1>\r\n<h2>Đây là tiêu đề quan trọng thứ nhì (lớn thứ nhì)</h2>\r\n<h3>Đây là tiêu đề quan trọng thứ ba (lớn thứ ba)</h3>\r\n<h4>Đây là tiêu đề quan trọng thứ tư (lớn thứ tư)</h4>\r\n<h5>Đây là tiêu đề quan trọng thứ năm (lớn thứ năm)</h5>\r\n<h6>Đây là tiêu đề ít quan trọng nhất (nhỏ nhất)</h6>\r\n</body>\r\n</html>', NULL, NULL, NULL),
(423, 47, '<p>Hướng dẫn học thiết kế web 1.</p>\r\n<p> Hướng dẫn học thiết kế web 2.</p>\r\n<p> Hướng dẫn học thiết kế web 3.</p>\r\n', NULL, NULL, NULL),
(424, 47, '<p align=\"left\">Hiệp Si IT</p>\r\n<p align=\"center\"> Hiệp Si IT </p>\r\n<p align=\"right\"> Hiệp Si IT </p>\r\n<p align=\"justify\"> Hiệp Si IT </p>', NULL, NULL, NULL),
(425, 47, '<p>H                  bản hướng         dẫn \r\n          học lập trình     web từ A           đến Z</p>', NULL, NULL, NULL),
(426, 47, '<p>Hiep Sĩ &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;It hướng&nbsp;&nbsp;&nbsp;dẫn<br>\r\n&nbsp;&nbsp;&nbsp;học lập trình&nbsp;&nbsp;&nbsp;web từ A&nbsp;&nbsp;&nbsp;&nbsp;đến Z</p>', NULL, NULL, NULL),
(432, 48, '<!-- Câu này là chú thích nên KHÔNG được hiển thị -->\r\n<p>Đoạn này không phải chú thích nên được hiển thị</p>\r\n<!--<p>Đoạn này là chú thích nên KHÔNG được hiển thị</p>-->', NULL, NULL, NULL),
(433, 48, '<!--<p>Câu này là chú thích nên KHÔNG được hiển thị</p>\r\n<p>Câu này là chú thích nên KHÔNG được hiển thị</p>\r\n<p>Câu này là chú thích nên KHÔNG được hiển thị</p>-->\r\n<p>Câu này không phải chú thích nên được hiển thị</p>', NULL, NULL, NULL),
(434, 48, '<!DOCTYPE html>\r\n<html>\r\n<body>\r\n<!--[if IE 8]>\r\n   <p>BẠN ĐANG SỬ DỤNG TRÌNH DUYỆT Internet Explorer 8</p>\r\n<![endif]-->\r\n</body>\r\n</html>', NULL, NULL, NULL),
(435, 48, '<!DOCTYPE html>\r\n<html>\r\n<body>\r\n<!--[if lt IE 9]>\r\n   <p>BẠN ĐANG SỬ DỤNG TRÌNH DUYỆT Internet Explorer phiên bản cũ hơn 9</p>\r\n<![endif]-->\r\n</body>\r\n</html>', NULL, NULL, NULL),
(449, 49, '<table>  \r\n<tr><th>Họ và tên</th><th>Giới tính</th><th>Lương</th></tr>  \r\n<tr><td>Thích Học Lại</td><td>Nam</td><td>10000000</td></tr>  \r\n<tr><td>Thích Ăn Chơi</td><td>Nữ</td><td>3000000</td></tr>  \r\n<tr><td>Thích Thi Lại</td><td>Nam</td><td>4000000</td></tr>  \r\n<tr><td>Thích Không Thích</td><td>Nữ</td><td>500000</td></tr>  \r\n</table>  \r\n', NULL, NULL, NULL),
(450, 49, '<table border=2 bordercolordark=\"#999\" bordercolorlight=\"#333\">  \r\n<tr><th>Họ và tên</th><th>Giới tính</th><th>Lương</th></tr>  \r\n<tr><td>Thích Học Lại</td><td>Nam</td><td>10000000</td></tr>  \r\n<tr><td>Thích Ăn Chơi</td><td>Nữ</td><td>3000000</td></tr>  \r\n<tr><td>Thích Thi Lại</td><td>Nam</td><td>4000000</td></tr>  \r\n<tr><td>Thích Không Thích</td><td>Nữ</td><td>500000</td></tr>  \r\n</table>  \r\n', NULL, NULL, NULL),
(451, 49, '<HTML><HEAD> <TITLE> Định dạng Table</TITLE> </HEAD>\r\n<BODY>\r\n<TABLE  Border=1 BorderColor= \"Purple\" CellSpacing=0  Width=650>\r\n   <Caption><H2> KẾT QUẢ HỌC TẬP</Caption>\r\n   <TR VAlign=Middle Align=Center BgColor=\"Lime\">\r\n       <TH RowSpan=2 Width=150>Họ và Tên<BR>Học Sinh</TH>\r\n       <TH ColSpan=2 Width=150> Năm Sinh</TH>\r\n        <TH RowSpan=2 Width=70>Điểm<BR>TB</TH>\r\n        <TH RowSpan=2 Width=130> Xếp Lọai</TH>\r\n   </TR>\r\n  <TR Align=Center BgColor=\"Lime\">\r\n         <TH  Width=75> Nam </TH>\r\n         <TH  Width=75>Nữ </TH>\r\n   </TR>   \r\n   <TR Align=Center>\r\n         <TD Align=\"Left\"> Lê Thanh Xuân </TD>\r\n         <TD> &nbsp; </TD>\r\n         <TD> 1950 </TD>\r\n         <TD> 8.5 </TD>\r\n         <TD> Giỏi</TD>            \r\n   </TR>\r\n     . . . . .\r\n   <TR Align=Center>\r\n        <TD Align=\"Left\"> Lưu Thế Mạc</TD>\r\n        <TD>1985 </TD>\r\n         <TD> &nbsp; </TD>\r\n        <TD> 4.5 </TD>\r\n        <TD> Kém </TD>            \r\n   </TR>\r\n   <TR Align=\"Center\" BgColor=\"Lime\">\r\n        <TD ColSpan=3> <B>Tổng số học sinh đạt:</B></TD>\r\n        <TD ColSpan=2> <B>4 Học sinh<B></TD>\r\n   </TR>\r\n</TABLE></BODY>\r\n</HTML>', NULL, NULL, NULL),
(458, 51, '<ul>\r\n	<li> Ngôn ngữ HTML &amp FrontPage </li>\r\n	<li> DreamWeaver MX </li>\r\n	<li> Khai thác và Quản trị Domain, Hostting</li>\r\n	<li> Ngôn ngữ kịch bản JavaScript;</li>\r\n	<li> Ngôn ngữ lập trình ASP & SQLServer</li>\r\n </ul>', NULL, NULL, NULL),
(459, 51, '<HTML>\r\n<HEAD><TITLE>  Thay Đổi Kiểu Dáng Chỉ Mục</TITLE></HEAD>\r\n<BODY>\r\n     <H3> CHƯƠNG TRÌNH ĐÀO TẠO THIẾT KẾ WEB</H3>\r\n     <ul TYPE=\"circle\">\r\n         <li> Ngôn ngữ HTML & FrontPage </li>\r\n         <li> DreamWeaver MX </li>\r\n         <li TYPE=\"square\">Quản trị Domain, Hosting</li>\r\n         <li TYPE=\"square\"> Ngôn ngữ kịch bản JavaScript;</li>\r\n         <li TYPE=\"disc\"> Ngôn ngữ ASP & SQLServer</li>\r\n     </ul>\r\n</BODY>\r\n</HTML>', NULL, NULL, NULL),
(462, 52, '<HTML>\r\n<HEAD><TITLE> Chương Trình Đào Tạo </TITLE></HEAD>\r\n<BODY>\r\n     <H3> CHƯƠNG TRÌNH ĐÀO TẠO THIẾT KẾ WEB </H3>\r\n   <ol>\r\n	<li> Ngôn ngữ HTML &amp FrontPage </li>\r\n	<li> DreamWeaver MX </li>\r\n	<li> Khai thác và Quản trị Domain,Hostting</li>\r\n	<li> Ngôn ngữ kịch bản JavaScript;</li>\r\n	<li> Ngôn ngữ lập trình ASP &amp; SQLServer</li>\r\n   </ol>\r\n</BODY></HTML>\r\n', NULL, NULL, NULL),
(463, 52, '<HTML>\r\n<HEAD>\r\n<TITLE> Chương Trình Đào Tạo</TITLE>\r\n</HEAD>\r\n<BODY >\r\n<H3> CHƯƠNG TRÌNH ĐÀO TẠO THIẾT KẾ WEB </H3>\r\n   <ol TYPE=\"A\">\r\n	<li> Ngơn ngữ HTML &amp FrontPage</li>\r\n	<li> DreamWeaver MX </li>\r\n	<li> Ngơn ngữ kịch bản JavaScript;</li>\r\n	<li> Ngơn ngữ ASP &amp; SQLServer</li>\r\n   </ol>\r\n</BODY>\r\n</HTML>', NULL, NULL, NULL),
(464, 52, '<HTML>\r\n<HEAD><TITLE> Chương Trình Đào Tạo </TITLE></HEAD>\r\n<BODY >\r\n<H3> CHƯƠNG TRÌNH ĐÀO TẠO THIẾT KẾ WEB </H3>\r\n   <ol Type=\"1\">\r\n	<li> Ngôn ngữ HTML &amp FrontPage </li>\r\n	<li> DreamWeaver MX </li>\r\n	<li> Ngôn ngữ kịch bản JavaScript;</li>\r\n	<li> Ngôn ngữ ASP &amp; SQLServer</li>\r\n   </ol>\r\n<H3> CHƯƠNG TRÌNH ĐÀO TẠO THIẾT KẾ WEB NC</H3>\r\n   <ol Type=\"1\" START=\"5\">\r\n	<li> Ngôn ngữ XML </li>\r\n	<li> Ngôn ngữ Visual Basic.Net</li>\r\n	<li> Công nghệ ASP.Net </li>\r\n   </ol>\r\n</BODY>\r\n</HTML>', NULL, NULL, NULL),
(466, 50, '<ol>\r\n        <li> Ngôn ngữ HTML &amp FrontPage </li>\r\n        <li> DreamWeaver MX </li>\r\n        <li> Khai thác và Quản trị Domain, Hostting</li>\r\n        <li> Ngôn ngữ kịch bản JavaScript;</li>\r\n        <li> Ngôn ngữ lập trình ASP & SQLServer</li>\r\n   </ol>', NULL, NULL, NULL),
(467, 50, '<ul>\r\n        <li> Ngôn ngữ HTML &amp FrontPage </li>\r\n        <li> DreamWeaver MX </li>\r\n        <li> Khai thác và Quản trị Domain, Hostting</li>\r\n        <li> Ngôn ngữ kịch bản JavaScript;</li>\r\n        <li> Ngôn ngữ lập trình ASP & SQLServer</li>\r\n   </ul>', NULL, NULL, NULL),
(468, 50, '<DL> \r\n   <DT> Khai báo thuật ngữ \r\n      <DD> Định nghĩa thuật ngữ 1 </DD>\r\n      <DD> Định nghĩa thuật ngữ 2 </DD>\r\n	. . . . . . .\r\n   </DT>\r\n	. . . . . . .\r\n</DL>\r\n', NULL, NULL, NULL),
(469, 50, '<HTML>\r\n<HEAD><TITLE> Chuong Trinh DT</TITLE></HEAD>\r\n<BODY Text=\"Blue\">\r\n   <B>CHƯƠNG TRÌNH ĐÀO TẠO </B>\r\n   <DL>\r\n      <DT><Font Color=\"Red\">TIN HỌC VĂN PHỊNG</FONT>\r\n          <DD> Tin học căn bản & WindowsXP\r\n   	<DD> Sọan Thảo văn bản MicroSoft Word</DD>\r\n	<DD> Xử lý bảng tính MicroSoft Excel\r\n       <DT><FONT Color=\"Red\"> TIN HỌC QUẢN LÝ </FONT>\r\n	 <DD> Lập trình CSDL MicroSoft Access 2003</DD>\r\n	 <DD> Thiết kế trình chiếu MicroSoft PowerPoint</DD>\r\n   </DT>\r\n        </DL>\r\n</BODY>\r\n</HTML>', NULL, NULL, NULL),
(471, 53, '<dl>  \r\n  <dt> Bạch Dương </dt>  \r\n  <dd> - Một trong 12 cung tử vi. </dd>  \r\n  <dt> Bingo </dt>  \r\n  <dd> - Là một món ăn </dd>  \r\n  <dt> Leo </dt>  \r\n  <dd> - Là một trong 12 cung tử vi. </dd>  \r\n  <dt> Oracle </dt>  \r\n  <dd> - Là một tập đoàn công nghệ đa quốc gia. </dd>   \r\n</dl>', NULL, NULL, NULL),
(473, 54, '<HTML>\r\n<HEAD><TITLE> Tạo Danh Sách Lồng Nhau</TITLE></HEAD>\r\n<BODY >\r\n    <H3>CHƯƠNG TRÌNH ĐÀO TẠO NGÀNH WEBSITE</H3>\r\n  <OL TYPE=\"I\"> \r\n	<LI><B> THIẾT KẾ WEBSITE </B> \r\n	     <OL TYPE = \"1\">\r\n            <LI> Ngôn ngữ HTML & ForntPage</LI>\r\n            <LI> Ngôn ngữ kịch bản JavaScript </LI>\r\n            <LI> Media Flash MX</LI>\r\n            <LI> Thiết kế giao diện PhotoShop</LI>\r\n            <LI> Thiết kế WebSite Dreamweaver MX</LI>\r\n	     </OL>	\r\n     </LI>\r\n	<LI><B> LẬP TRÌNH WEBSITE </B>\r\n	      <OL TYPE = \"1\">\r\n             <LI> Phân tích & Thiết kế CSDL</LI>\r\n             <LI> Lập trình CSDL ASP.NET & SQL Sever</LI>\r\n             <LI> Quản trị Website</LI> \r\n             <LI><B>Đề tài tốt nghiệp </B></LI>\r\n	      </OL>\r\n      </LI>\r\n   </OL>\r\n</BODY>\r\n</HTML>', NULL, NULL, NULL),
(476, 56, '<HTML>\r\n<HEAD><TITLE> </TITLE></HEAD>\r\n<BODY  >\r\n <H3 Align=Center>Máy tính \"bó tay\" với tài sản của Bill Gates</H3> \r\n<Img src=\"images/billgates.jpg\" Align=Right Width=120\r\n 	title=\"Bill Gates (trái) và Tổng thống Bồ Đào Nha\" Border=1>\r\n<P Align=Justify>\r\nBill Gates, người sáng lập Công ty phần mềm Microsoft và là người giàu nhất thế giới, cho biết cơ quan thuế của Mỹ phải lưu trữ các dữ liệu tài chính của ông vào một máy tính đặc biệt, bởi tài sản của ông quá nhiều.<BR>Phát biểu tại một hội nghị do Microsoft tổ chức ở Lisbon, thủ đô Bồ Đào Nha, ông nói rằng một máy tính thông thường không thể xử lý đúng các số liệu tài chính của ông ...</P>\r\n</BODY>\r\n</HTML>', NULL, NULL, NULL),
(503, 57, '<HTML>\r\n<HEAD><TITLE>  </TITLE></HEAD>\r\n<BODY Background=\"images/bg.jpg\" Bgproperties =Fixed>\r\n	<a Name=\"#Dau\"><H3 Align=\"center\">CHƯƠNG TRÌNH ĐÀO TẠO</H3></a>\r\n	 1.Kỹ thuật viên tin học<BR>\r\n	<a Href=\"vidu13.html\"> \r\n	2. Chuyên ngành website </a>	<HR>\r\n	 <Font Size=4 Color=Red>Kỹ thuật viên tin học </Font><BR> \r\n	<a Href=\"#HP1\"> Học phần I </a><BR>\r\n	<a Href=\"#HP2\"> Học phần II </a><BR>\r\n	<a Href=\"#HP3\"> Học phần III </a>	\r\n	<ol Type=\"I\">\r\n	    <a Name=\"#HP1\">\r\n	    <li> Tin Học Căn Bản\r\n            <ol>\r\n                <li>Tổng quan cấu trúc máy tính</li>\r\n                <li>Hệ điều hành Windows &amp;Internet</li>\r\n            </ol>\r\n         </li>\r\n         </a>\r\n    \r\n	    <a Name=\"#HP2\">\r\n	    <li> Tin Học Văn Phòng\r\n		<ol>\r\n			<li> Microsoft Word</li>\r\n			<li> MicroSoft Excel</li>\r\n		</ol>\r\n        </li>\r\n        </a>\r\n        \r\n	    <a Name=\"#HP3\">	    \r\n<li>Tin Học Quản Lý \r\n		<ol>\r\n			<li> Microsoft Access </li>\r\n			<li> MicroSoft PowerPoint</li>\r\n		</ol>\r\n        </li>\r\n        </a>\r\n	</ol></P>\r\n	<P align=Right><a Href=\"#Dau\">Đầu trang </a></P>\r\n</BODY>\r\n</HTML> ', NULL, NULL, NULL),
(504, 57, ' <a href=\"http://www.vietnamnet.vn\"> Website tin tức việt nam</a> ', NULL, NULL, NULL),
(505, 57, ' <a href=\"Mailto:vinhnguyen208@gmail.com\">  Gởi Mail cho tôi </a>', NULL, NULL, NULL),
(506, 57, ' <a href =\"http://www.vietnamnet.vn\"> <img Src=images/vietnamnet.jpg> </a>', NULL, NULL, NULL),
(507, 57, '<a href=\"http://www.vietnamnet.vn\"  targer=\"_Blank\" > \r\n<img src=images/vietnamnet.jpg> </a>', NULL, NULL, NULL),
(508, 57, '<HTML>\r\n<HEAD>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<TITLE> Hiep sĩ IT demo các thiết lập liên kết</TITLE>\r\n</HEAD>\r\n<BODY Background =\"images/bg.jpg\" bgproperties=Fixed Link=\"Black\" link=\"Blue\"> \r\n    <p align=\"center\">\r\n          <font Size=4 color=\"blue\"> <B>DANH BẠ WEBSITE</B> </Font>\r\n    </P>\r\n    <dl>\r\n         <dt><B>Tin Tức</B>\r\n	  <dd><a href=\"http://www.vietnamnet.vn\"> Tin tức việt nam</A>\r\n	   <dd> <a href=\"http://www.Tuoitre.com.vn\"> Báo tuổi trẻ</A>\r\n          <dt> <B>Giải trí</B>\r\n	   <dd> <a href=\"http://www.nhacso.net\"   target=\"_balnk\"> Nhạc số Online</A>\r\n	   <dd> <a href=\"http://www.ngoisao.net\"    target=\"_balnk\">Giới thiệu ngôi sao</A>\r\n          </dl>\r\n<B>Liên kết quảng cáo</B><BR>\r\n    <a href=\"http://www.echip.com.vn\" target=\"_balnk\"> \r\n      <img Src=\"images/echip.png\" width=\"130\" heigh=\"60\"> </A>\r\n    <a href=\"http://www.vietnamnet.vn\" target=\"_balnk\">\r\n      <img Src=\"images/vietnamnet.png\" width=\"130\" heigh=\"60\"></A><HR>\r\n    Liên hệ:<a href=\"Mailto:info@', NULL, NULL, NULL),
(509, 57, '.com\">Gởi mail </A>\r\n</BODY>\r\n</HTML>', NULL, NULL, NULL),
(510, 57, '<HTML>\r\n<HEAD><TITLE> </TITLE></HEAD>\r\n<Body>\r\n<H3> Nhạc Onlie</H3>\r\n<a href=\"demchiaxa.mp3\"   target=\"_blank\"> Đêm chia xa </a><br/>\r\n<a href=\"chieuvan.mp3\">Chiều vắng</a> \r\n<Body>\r\n</HTML>', NULL, NULL, NULL),
(512, 58, '<html>\r\n<head><title></title></head>\r\n<frameset rows=\"100,500\" framespacing=\"0\" border=\"0\" frameborder=\"0\" >\r\n  <frame name=\"Top\" scrolling=\"no\" noresize  src=\"images/banner.jpg\" marginwidth=\"0\" marginheight=\"0\">\r\n  <frameset cols=\"150,600\">\r\n    <frame name=\"Left\"   src=\"dmtintuc.html\">\r\n    <frame name=\"Right\"  noresize  src=\"tincn.html\">\r\n  </frameset>\r\n  </frameset><noframes></noframes>\r\n</html>', NULL, NULL, NULL),
(557, 62, '<form>\r\n     \r\n <table  border=\"1\" cellpadding=\"0\" cellspacing=\"0\">\r\n   <tr>\r\n     <td colspan=\"2\" align=\"center\"><p><strong>ĐĂNG NHẬP DIỄN ĐÀN</strong></p></td>\r\n    </tr>\r\n   <tr>\r\n     <td width=\"156\">Username: </td>\r\n     <td width=\"832\"><input type=\"text\" size=\"40\" name=\"txtusername\" maxlength=\"40\"/></td>\r\n   </tr>\r\n   <tr>\r\n     <td>Mật khẩu:</td>\r\n     <td><input type=\"text\" size=\"40\" name=\"txtpassword\" maxlength=\"50\"/></td>\r\n   </tr>\r\n   <tr>\r\n     <td>&nbsp;</td>\r\n     <td><input type=\"submit\" value=\"Đăng nhập\" name=\"btnlogin\"/>\r\n      <input type=\"reset\" value=\"Làm lại\" name=\"btnreset\"/></td>\r\n   </tr>\r\n </table>\r\n \r\n</form>\r\n</body>', NULL, NULL, NULL),
(558, 62, '<html><head><title></title></head>\r\n<body>\r\n<fORM name=f action=\"http://www.google.com.vn/search?+q\"> \r\n<img src=\"images/google.jpg\" Width=80> <INPUT size=20 name=q>\r\n<input type=\"submit\" value=\"Tìm kiếm\">\r\n</form>\r\n</body></html>\r\n', NULL, NULL, NULL),
(559, 62, '\r\n <h3 align=\"center\">PHIẾU THĂM DỊ Ý KIẾN</h3> \r\n<form>    \r\nTên đăng nhập:<input type=\"text\" name=\"Ten\" size=\"20\"> \r\nGiới tính : \r\n   <input type=\"radio\" value=\"1\" name=\"phai\" checked >Nam      \r\n   <input type=\"radio\" value=\"0\" name=\"phai\" >Nữ\r\n   <input type=\"radio\" value=\"0\" name=\"phai\" >Khác<BR><BR>\r\nNhững mục bạn thường quan tâm trên Internet :\r\n   <input type=\"checkbox\" name=\"C1\" value=\"1\">Tin tức<br>   \r\n   <input type=\"checkbox\" name=\"C3\" value=\"1\">Giải  trí<br>   \r\n   <input type=\"checkbox\" name=\"C2\" value=\"1\">Học tập<br>   \r\n   <input type=\"checkbox\" name=\"C4\" value=\"1\">Mục khác<br>\r\n<input type=\"submit\" value=\"Gửi đi\">\r\n<input type=\"reset\" value=\"Phục Hồi\">\r\n</form>', NULL, NULL, NULL),
(576, 64, '<select name=\"browser\">\r\n\r\n    <optgroup label=\"Firefox\">\r\n      <option value=\"2.0 or higher\">\r\n        Firefox 2.0 or higher\r\n      </option>\r\n      <option value=\"1.5.x\">Firefox 1.5.x</option>\r\n      <option value=\"1.0.x\">Firefox 1.0.x</option>\r\n    </optgroup>\r\n\r\n    <optgroup label=\"Microsoft Internet Explorer\">\r\n      <option value=\"7.0 or higher\">\r\n        Microsoft Internet Explorer 7.0 or higher\r\n      </option>\r\n      <option value=\"6.x\">Microsoft Internet Explorer 6.x</option>\r\n      <option value=\"5.x\">Microsoft Internet Explorer 5.x</option>\r\n      <option value=\"4.x\">Microsoft Internet Explorer 4.x</option>\r\n    </optgroup>\r\n\r\n    <optgroup label=\"Opera\">\r\n      <option value=\"9.0 or higher\">Opera 9.0 or higher</option>\r\n      <option value=\"8.x\">Opera 8.x</option>\r\n      <option value=\"7.x\">Opera 7.x</option>\r\n    </optgroup>\r\n\r\n    <option>Safari</option>\r\n    <option>Other</option>\r\n\r\n</select>', NULL, NULL, NULL),
(592, 68, '<HTML>\r\n  <HEAD><TITLE> > BÀI THƠ CÔ HÁI MƠ </TITLE></HEAD>\r\n      <BODY>\r\n	CÔ HÁI MƠ\r\n	\r\n	Thơ thẩn đường chiều một khách thơ<br/>\r\n	Say nhìn xa rặng núi xanh lơ<br/>\r\n	Khí trời lặng lẽ và trong trẻo<br/>\r\n	Thấp thoáng rừng mơ, cô hái mơ\r\n</BODY></HTML>', NULL, NULL, NULL),
(621, 70, '<div style=\"border:1px solid pink;padding:20px;font-size:20px\">  \r\n<p>Đoạn văn thứ nhất.</p>  \r\n<p>Đoạn văn thứ hai</p>\r\n<p>Đoạn văn thứ n </p>\r\n</div>  \r\n', NULL, NULL, NULL),
(622, 70, '<div style=\"border:10px solid crimson;background-color:#f1f1f1;padding:20px;\">\r\n    <h1>Tài liệu hướng dẫn học lập trình web:</h1>\r\n    <ul>\r\n        <li>Tài liệu học HTML</li>\r\n        <li>Tài liệu học CSS</li>\r\n        <li>Tài liệu học JavaScript</li>\r\n    </ul>\r\n</div>\r\n', NULL, NULL, NULL),
(623, 70, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n    <style type=\"text/css\">\r\n        body{\r\n            margin:0px;\r\n        }\r\n        #container{\r\n            width:800px;\r\n            border:1px solid gray;\r\n            margin-left:auto;\r\n            margin-right:auto;\r\n        }\r\n        #container > div:nth-child(1){\r\n            background-color:#73ad21;\r\n            color:white;\r\n            font-size:25px;\r\n            text-align:center;\r\n            padding:20px;\r\n        }\r\n        #container > div:nth-child(2){\r\n            margin:15px;\r\n        }\r\n        #container > div:nth-child(3){\r\n            background-color:#ddd;\r\n            font-size:18px;\r\n            text-align:center;\r\n            padding:15px;\r\n        }\r\n    </style>\r\n</head>\r\n<body>\r\n    <div id=\"container\">\r\n        <div>\r\n            <div>Hiệp Sĩ It</div>\r\n            <div>Hướng dẫn học lập trình web từ cơ bản đến nâng cao</div>\r\n        </div>\r\n        <div>\r\n            <h2>Layout là gì?</h2>\r\n            <p>Layout có thể tạm hiểu là cách mà chúng ta bố trí các thành\r\n            phần chính trên một trang web.</p>\r\n            <p>Một trang web thường gồm các thành phần chính như:</p>\r\n            <ul>\r\n                <li>Header: Giới thiệu logo, một vài khẩu hiệu của trang web</li>\r\n                <li>Footer: Thông tin bản quyền của trang web</li>\r\n                <li>Menu: Thanh chức năng</li>\r\n                <li>Nội dung</li>\r\n                <li>....</li>\r\n            </ul>\r\n        </div>\r\n        <div>©2017 ', NULL, NULL, NULL),
(624, 70, '<html>\r\n<head>\r\n\r\n</head>\r\n<style type=\"text/css\">\r\n.loginform{  \r\n    padding:10px;  \r\n    border:1px solid pink;  \r\n    border-radius:10px;  \r\n    float:right;  \r\n    margin-top:10px;  \r\n}  \r\n.formheading{  \r\n    background-color:red;  \r\n    color:white;  \r\n    padding:4px;  \r\n    text-align:center;  \r\n}  \r\n.sub{  \r\nbackground-color:blue;  \r\npadding: 7px 40px 7px 40px;  \r\ncolor:white;  \r\nfont-weight:bold;  \r\nmargin-left:70px;  \r\nborder-radius:5px;  \r\n}  \r\n</style>\r\n<body>\r\n<div class=\"loginform\">\r\n  <h3 class=\"formheading\">Please Login</h3>\r\n  <form action=\"LoginServlet\" method=\"post\">\r\n    <table>\r\n      <tr>\r\n        <td>Email:</td>\r\n        <td><input type=\"email\" name=\"email\"/></td>\r\n      </tr>\r\n      <tr>\r\n        <td>Password:</td>\r\n        <td><input type=\"password\" name=\"password\"/></td>\r\n      </tr>\r\n      <tr>\r\n        <td colspan=\"2\" style=\"text-align:center\"><input class=\"sub\" type=\"submit\" value=\"login\"/></td>\r\n      </tr>\r\n    </table>\r\n  </form>\r\n</div> \r\n\r\n</body>\r\n</html>', NULL, NULL, NULL),
(626, 63, '<html><head><title></title></head>\r\n<body>\r\n<form>\r\n<h3 align=\"center\">ĐÓNG GÓP Ý KIẾN</h3>     \r\nHọ và Tên:<input type=\"text\" size=\"40\"><br/>\r\nNội dung góp ý:<textarea rows=\"3\" cols=\"30\">\r\n</textarea></br>\r\n<input type=\"submit\" value=\"Gửi đi\">\r\n<input type=\"reset\" value=\"Phục Hồi\">  \r\n</form>\r\n</body>\r\n</html>', NULL, NULL, NULL),
(627, 63, '<html><head><title></title></head>\r\n<body>\r\n<form >\r\n <h3 align=\"center\">PHIẾU THĂM DÒ Ý KIẾN</h3>     \r\n <Font size=2>\r\n<Table>\r\n<TR><TD>Tên đăng nhập:</TD>\r\n <TD>    <input type=\"text\" name=\"Ten\" size=\"40\"> Giới tính : \r\n<input type=\"radio\" value=\"V1\" name=\"phai\" checked >Nam      \r\n <input type=\"radio\" value=\"V2\" name=\"phai\" >Nữ</TD>\r\n</TR>\r\n<TR><TD>Mật khẩu:</TD>\r\n<TD> <input type=\"password\" name=\"T2\" size=\"30\"></TD>\r\n</TR>\r\n<TR><TD Colspan=2> Sở thích của bạn</TD> \r\n</TR>\r\n<TR><TD></TD>\r\n<TD> <select size=\"4\" name=\"Sothich\">\r\n	  <option selected>Truy cập Internet</option>	  <option>Đọc sách báo</option>\r\n	  <option>Xem Tivai</option>			  <option>Tham quan du lịch</option>\r\n	  <option>Dạo phố & Shopping</option>\r\n        </select></TD>\r\n</TR>\r\n<TR> \r\n<TD COLSPAN=2> Những mục bạn thường quan tâm trên internet</TD>   \r\n</TR>\r\n<TR><TD></TD>\r\n<TD>	<input type=\"checkbox\" name=\"C1\" value=\"ON\">Tin tức<br>   \r\n	 <input type=\"checkbox\" name=\"C3\" value=\"ON\">Giải  trí<br>   \r\n	 <input type=\"checkbox\" name=\"C2\" value=\"ON\">Góc học tập<br>   \r\n	 <input type=\"checkbox\" name=\"C4\" value=\"ON\">Chuyên mục khác</TD>\r\n</TR>\r\n<TR><TD Colspan=2> Nội dung góp ý để website tốt hơn</TD>    \r\n</TR>\r\n<TR><TD></TD>\r\n<TD>  <textarea rows=\"3\" name=\"Noidung\" cols=\"30\"></textarea></TD>\r\n</TR>\r\n<TR><TD></TD>\r\n<TD> 	<input type=\"submit\" value=\"Gửi đi\" name=\"Gui\">\r\n<input type=\"reset\" value=\"Phục Hồi\" name=\"Phuchoi\">  \r\n</TD>\r\n</TR></Form></Font>\r\n</body></html>', NULL, NULL, NULL),
(628, 71, '<pre>  \r\nDay la van ban da duoc dinh dang   \r\nBoi viec su dung the HTML pre. Cac khoang trong\r\n    va dau xuong dong khong bi mat di khi hien thi.  \r\n</pre>  \r\n', NULL, NULL, NULL),
(629, 71, '<pre>  \r\npackage vn.viettuts;\r\n \r\npublic class FirstJava {\r\n    public static void main(String args[]) {\r\n        System.out.println(\"hello java\");\r\n    }\r\n}\r\n</pre>', NULL, NULL, NULL),
(630, 72, '<em>Nội dung bên trong thẻ em.</em><br>\r\n<strong>Nội dung bên trong thẻ strong.</strong><br>\r\n<dfn>Nội dung bên trong thẻ dfn.</dfn><br>\r\n<code>Nội dung bên trong thẻ code.</code><br>\r\n<samp>Nội dung bên trong thẻ samp.</samp><br>\r\n<kbd>Nội dung bên trong thẻ kbd.</kbd><br>\r\n<var>Nội dung bên trong thẻ var.</var>', NULL, NULL, NULL),
(631, 73, '<html>\r\n  <head>\r\n    <meta charset=\"UTF-8\"/>\r\n  </head>\r\n  <body>\r\n    <script type=\"text/javascript\">  \r\n      document.write(\"JavaScript là một ngôn ngữ đơn giản!\");  \r\n    </script>  \r\n  </body>\r\n</html>\r\n', NULL, NULL, NULL),
(632, 73, '<html>\r\n  <head>\r\n    <script type=\"text/javascript\">  \r\n      function msg(){  \r\n       alert(\"Hello TÔ Mì Gõ!\");  \r\n      }  \r\n    </script>  \r\n  </head>\r\n  <body>\r\n    <p>Welcome to Javascript</p>\r\n    <form>  \r\n      <input type=\"button\" value=\"click here\" onclick=\"msg()\"/>  \r\n    </form>\r\n  </body>\r\n</html>', NULL, NULL, NULL);
INSERT INTO `sources` (`id`, `lesson_id`, `code`, `code_id`, `created_at`, `updated_at`) VALUES
(633, 74, '<!DOCTYPE html>\r\n<html>\r\n  <body>\r\n    <script>  \r\n      document.write(\"Welcome to Hiepsiit.com\")  \r\n    </script>  \r\n    <noscript>Sorry! Your browser does not support JavaScript.!</noscript>\r\n  </body>\r\n</html>', NULL, NULL, NULL),
(634, 75, '<!DOCTYPE html>\r\n<html>\r\n<body>\r\n    <p><b>Tài liệu học </b><strong>Lập Trình</strong> Web</p>\r\n</body>\r\n</html>', NULL, NULL, NULL),
(635, 65, '<marquee>Chào mừng các bạn đến website</marquee>\r\n', NULL, NULL, NULL),
(636, 65, '<marquee width=\"100%\" behavior=\"scroll\" bgcolor=\"pink\">  \r\n    Chuỗi này được cuộn từ phải sang trái\r\n</marquee>\r\n', NULL, NULL, NULL),
(637, 65, '<marquee width=\"100%\" behavior=\"slide\" bgcolor=\"pink\">  \r\n   Chuỗi này được cuộn từ phải sang trái, dừng lại bên trái.\r\n</marquee>\r\n', NULL, NULL, NULL),
(638, 65, '<marquee width=\"100%\" behavior=\"alternate\" bgcolor=\"pink\">  \r\nChuỗi này được cuộn từ phải sang trái rồi lại cuộn ngược lại từ trái sang phải.\r\n</marquee>\r\n', NULL, NULL, NULL),
(639, 65, '<marquee width=\"100%\" direction=\"right\">\r\n   Chuỗi này di chuyển từ trái sang phải\r\n</marquee>', NULL, NULL, NULL),
(640, 66, '<!DOCTYPE html>\r\n<html>\r\n\r\n   <head>\r\n      <title>Hiep Si IT Demo</title>\r\n   </head>\r\n    \r\n   <body>\r\n      <h1>Tiêu đề</h1>\r\n      <p>Định nghĩa đoạn văn bản</p>\r\n   </body>\r\n    \r\n</html>', NULL, NULL, NULL),
(641, 76, '<q> Mọi người đều là thiên tài. Nhưng nếu bạn đánh giá con cá dựa vào khả năng leo cây, cả cuộc đời nó sẽ tin nó là đồ đần độn</q>', NULL, NULL, NULL),
(642, 76, '<blockquote>Bạn đứng thứ mấy trong lớp không quan trọng, nhưng phải thể hiện được đẳng cấp khi bước chân ra xã hội</blockquote> BILL. GATE.\r\n\r\n<blockquote>Cuộc sống không được chia thành những học kỳ đâu. Bạn cũng chẳng có mùa hè để nghỉ ngơi và rất ít ông chủ nào quan tâm đến việc giúp bạn nhận ra đâu là khả năng thực sự của bạn. Hãy tự khám phá điều đó trong những khỏang thời gian của riêng mình</blockquote> BILL. GATE', NULL, NULL, NULL),
(644, 79, '<!DOCTYPE> \r\n<html>\r\n<head>\r\n<style>  \r\nh1{  \r\ncolor:white;  \r\nbackground-color:red;  \r\npadding:5px;  \r\n}  \r\np{  \r\ncolor:blue;  \r\n}  \r\n</style>  \r\n</head>  \r\n<body>  \r\n<h1>Đây là CSS đầu tiên</h1>  \r\n<p>Đây là một đoạn văn bản gọi CSS.</p>  \r\n</body>  \r\n</html>', NULL, NULL, NULL),
(662, 82, '<html> \r\n<head> <title>Ví dụ</title> </head> \r\n<body style=\"background-color:#000;\"> \r\n<p style=\"color:white\">^_^ Welcome To MyWebsite ^_^</p> \r\n</body> \r\n</html> \r\n', NULL, NULL, NULL),
(663, 82, '<html>\r\n <head> <title>Ví dụ</title> \r\n<style type=\"text/css\"> \r\nbody { background-color:#000 } \r\np { color:white } \r\n</style> \r\n</head> \r\n<body> \r\n<p>^_^ Welcome To MyWebsite ^_^</p> \r\n</body> \r\n</html>', NULL, NULL, NULL),
(664, 81, '<html>\r\n  <head>\r\n    <style>  \r\n      p{  \r\n      text-align: center;  \r\n      color: blue;  \r\n      }   \r\n    </style>\r\n  </head>\r\n  <body>\r\n    <p>Đây là một đoạn văn bản.</p>\r\n    <p id=\"para1\">Đây cũng là đoạn văn bản!</p>\r\n    <p>And me!</p>\r\n  </body>\r\n</html>\r\n', NULL, NULL, NULL),
(665, 81, '<html> \r\n<head> <title>Ví dụ</title> \r\n<style type=\"text/css\">\r\n.tp { color:FF0000 } \r\n.tinh { color:0000FF } \r\n\r\n</style> \r\n</head> \r\n<body> \r\n<p>Danh Sách Các Tỉnh, Thành Phố Của Việt Nam</p> \r\n<ul> \r\n<li class=\"tp\">Hà Nội</li> \r\n<li class=\"tp\">TP. Hồ Chí Minh</li> \r\n<li class=\"tp\">Đà Nẵng</li> \r\n<li class=\"tinh\">Thừa Thiên Huế</li> \r\n<li class=\"tinh\">Khánh Hòa</li> \r\n<li class=\"tinh\">Quãng Ninh</li> \r\n<li class=\"tinh\">Tiền Giang</li> \r\n</ul> \r\n</body> \r\n</html> \r\n', NULL, NULL, NULL),
(666, 81, '<html> \r\n<head> <title>Ví dụ</title> \r\n<style type=\"text/css\">\r\nli.tp { color:FF0000 } \r\nli.tinh { color:0000FF } \r\n\r\n</style> \r\n</head> \r\n<body> \r\n<p>Danh Sách Các Tỉnh, Thành Phố Của Việt Nam</p> \r\n<ul> \r\n<li class=\"tp\">Hà Nội</li> \r\n<li class=\"tp\">TP. Hồ Chí Minh</li> \r\n<li class=\"tp\">Đà Nẵng</li> \r\n<li class=\"tinh\">Thừa Thiên Huế</li> \r\n<li class=\"tinh\">Khánh Hòa</li> \r\n<li class=\"tinh\">Quãng Ninh</li> \r\n<li class=\"tinh\">Tiền Giang</li> \r\n</ul> \r\n</body> \r\n</html> \r\n', NULL, NULL, NULL),
(667, 81, '<html> \r\n<head> <title>Ví dụ</title> \r\n<style type=\"text/css\">\r\n#hanoi { color:# 790000 } \r\n#hcmc { color:#FF0000 } \r\n#danang { color:#FF00FF } \r\n.tinh { color:#0000FF } \r\n</style>\r\n</head> \r\n<body> \r\n<p>Danh Sách Các Tỉnh, Thành Phố Của Việt Nam</p> \r\n<ul> \r\n<li id=\"hanoi\">Hà Nội</li> \r\n<li id=\"hcmc\">TP. Hồ Chí Minh</li> \r\n<li id=\"danang\">Đà Nẵng</li> \r\n<li class=\"tinh\">Thừa Thiên Huế</li> \r\n<li class=\"tinh\">Khánh Hòa</li> \r\n<li class=\"tinh\">Quãng Ninh</li> \r\n<li class=\"tinh\">Tiền Giang</li> \r\n</ul> \r\n\r\n</body> \r\n</html> \r\n', NULL, NULL, NULL),
(668, 81, '<html>\r\n<head>\r\n<style>\r\n* {\r\n    color: green;\r\n    font-size: 20px;\r\n}\r\n</style>\r\n</head>\r\n<body>\r\n  <h2>Đây là thẻ định dạng tiêu đề</h2>\r\n  <p>Thẻ này dùng định dạng đoạn văn bản.</p>\r\n  <p id=\"para1\">Thẻ này dùng định dạng đoạn văn bản.</p>\r\n  <p>Thẻ này dùng định dạng đoạn văn bản.</p>\r\n</body>\r\n</html>\r\n', NULL, NULL, NULL),
(669, 81, '<html>\r\n<head>\r\n<meta charset=\"UTF-8\">\r\n<style>\r\nh1, h2, h3 { color:#0000FF; text-transform:uppercase; } \r\n</style>\r\n</head>\r\n<body>\r\n  <h1>Welcome to HiepsiIt</h1>\r\n  <h2>Trang web hướng dẫn lập trình</h2>\r\n  <h3>Chúc các bạn thành công </h3>\r\n</body>\r\n</html>', NULL, NULL, NULL),
(670, 84, '<html>\r\n<head>\r\n<meta charset=\"UTF-8\">\r\n<style>\r\np {\r\n  color: blue;\r\n  /* Comment duoc viet tren 1 dong */\r\n  text-align: center;\r\n  font-size: 17px;\r\n}\r\n/* Comment nay \r\n * duoc viet tren \r\n * nhieu dong \r\n*/\r\n</style>\r\n</head>\r\n<body>\r\n  <p>Hello CSS</p>\r\n  <p>Ví dụ về comment trong CSS.</p>\r\n  <p>Những dòng comment không được hiển thị lên trình duyệt.</p>\r\n</body>\r\n</html>', NULL, NULL, NULL),
(845, 91, '<html> \r\n<head> <title>Ví dụ</title> \r\n<style>\r\na { border:1px solid #000; font-size:14px } \r\na:link { color:#00FF00; } \r\na:hover{background-color:#00BFF3;color:#FF00FF;font-size:1.2em;text-ecoration:blink } \r\na:visited { background-color:#FFF568; color:#FF0000; text-decoration:none } \r\na:active { color:#662D91; font-variant:small-caps } \r\n</style>\r\n</head> \r\n<body> \r\n<a href=index.htm>^_^ Welcome To MyWebsite ^_^</a> \r\n</body> \r\n</html>', NULL, NULL, NULL),
(848, 92, '<html>\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title>Untitled Document</title>\r\n<style type=\"text/css\">\r\np{line-height:50px}\r\n</style>\r\n</head>\r\n\r\n<body>\r\n<body>\r\n<p>Một thành phần rất quan trọng trong mọi website chính là liên kết. \r\nCũng như một đối tượng văn bản thông thường, chúng ta hoàn \r\ntoàn có thể áp dụng các thuộc tính định dạng văn bản thông\r\n thường cho một liên kết. Hơn nữa, CSS còn cung cấp một điều \r\nkhiển đặc biệt được gọi là pseudo-classes. \r\n\r\nPseudo-classes cho phép bạn xác định các hiệu ứng định dạng \r\ncho một đối tượng liên kết ở một trạng thái xác định như khi \r\nliên kết chưa được thăm (a:link), khi rê chuột lên liên kết (a:hover), \r\nkhi liên kết được thăm (a:visited) hay khi liên kết đang được kích hoạt\r\n – đang giữ nhấn chuột (a:active). \r\n\r\nVới điều khiển pseudo-classes cùng với các thuộc tính CSS đã \r\nhọc chắc chắn sẽ mang lại rất nhiều ý tưởng về trang trí liên kết cho trang web. \r\nSau đây chúng ta sẽ tiến hành một số ví dụ để tìm hiểu \r\nthêm về các khả năng trang trí cho một liên kết dựa trên pseudo-classes. </p>\r\n</body>\r\n</html>', NULL, NULL, NULL),
(865, 87, '<html>\r\n<head>\r\n<style type=\"text/css\">\r\nspan {\r\n    background: red;\r\n    display: inline;\r\n}\r\n</style>\r\n</head>\r\n\r\n<body>\r\n<p>Đây là ví dụ cho <span>display</span> sử dụng giá trị inline.</p>\r\n</body>\r\n</html>', NULL, NULL, NULL),
(866, 87, '<html>\r\n<head>\r\n<style type=\"text/css\">\r\nspan {\r\n    background: red;\r\n    display: block;\r\n}\r\n</style>\r\n</head>\r\n\r\n<body>\r\n<p>Đây là ví dụ cho <span>display</span> sử dụng giá trị block.</p>\r\n</body>\r\n</html>', NULL, NULL, NULL),
(867, 87, '<html>\r\n<head>\r\n<style type=\"text/css\">\r\nspan {\r\n    background: red;\r\n    display: inline-block;\r\n}\r\n</style>\r\n</head>\r\n\r\n<body>\r\n<p>Đây là ví dụ cho <span>display</span> sử dụng giá trị inline-block.</p>\r\n</body>\r\n</html>', NULL, NULL, NULL),
(868, 87, '<html>\r\n<head>\r\n<style type=\"text/css\">\r\nspan {\r\n    background: red;\r\n    display: none;\r\n}\r\n</style>\r\n</head>\r\n\r\n<body>\r\n<p>Đây là ví dụ cho <span>display</span> sử dụng giá trị none.</p>\r\n</body>\r\n</html>', NULL, NULL, NULL),
(869, 87, '<html>\r\n<head>\r\n<style type=\"text/css\">\r\nspan {\r\n    background: red;\r\n    display: inline-table;\r\n}\r\n</style>\r\n</head>\r\n\r\n<body>\r\n<p>Đây là ví dụ cho <span>display</span> sử dụng giá trị inline-table.</p>\r\n</body>\r\n</html>', NULL, NULL, NULL),
(870, 87, '<html>\r\n<head>\r\n<style type=\"text/css\">\r\nspan {\r\n    background: red;\r\n    display: list-item;\r\n}\r\n</style>\r\n</head>\r\n\r\n<body>\r\n<p>Đây là ví dụ cho <span>display</span> sử dụng giá trị list-item.</p>\r\n</body>\r\n</html>', NULL, NULL, NULL),
(871, 87, '<html>\r\n<head>\r\n<style type=\"text/css\">\r\nspan {\r\n    background: red;\r\n    display: table;\r\n}\r\n</style>\r\n</head>\r\n\r\n<body>\r\n<p>Đây là ví dụ cho <span>display</span> sử dụng giá trị table.</p>\r\n</body>\r\n</html>', NULL, NULL, NULL),
(872, 87, '<html>\r\n<head>\r\n<style type=\"text/css\">\r\ndiv.table {\r\n    border-collapse: collapse;\r\n    display: table;\r\n    width: 200px;\r\n}\r\n\r\ndiv.caption {\r\n    display: table-caption;\r\n}\r\n\r\ndiv.tHead {\r\n    display: table-header-group;\r\n    font-weight: bold;\r\n}\r\n\r\ndiv.tCell {\r\n    border: 1px solid #ccc;\r\n    display: table-cell;\r\n}\r\n\r\ndiv.tRow {\r\n    display: table-row;\r\n}\r\n\r\ndiv.tFoot {\r\n    display: table-footer-group;\r\n}\r\n</style>\r\n</head>\r\n\r\n<body>\r\n<div class=\"table\">\r\n<div class=\"caption\">Caption của table</div>\r\n<div class=\"tHead\">\r\n<div class=\"tCell\">A1</div>\r\n<div class=\"tCell\">A2</div>\r\n</div>\r\n\r\n<div class=\"tRow\">\r\n<div class=\"tCell\">B1</div>\r\n<div class=\"tCell\">B2</div>\r\n</div>\r\n\r\n<div class=\"tRow\">\r\n<div class=\"tCell\">C1</div>\r\n<div class=\"tCell\">C2</div>\r\n</div>\r\n\r\n<div class=\"tFoot\">\r\n<div class=\"tCell\">D1</div>\r\n<div class=\"tCell\">D2</div>\r\n</div>\r\n</div>\r\n</body>\r\n</html>', NULL, NULL, NULL),
(873, 87, '<html>\r\n<head>\r\n<style type=\"text/css\">\r\ntable {\r\n    border-collapse: collapse;\r\n    width: 200px;\r\n}\r\n\r\ntable caption {\r\n    text-align: left;\r\n}\r\n\r\ntable th {\r\n    border: 1px solid #ccc;\r\n    text-align: left;\r\n}\r\n\r\ntable td {\r\n    border: 1px solid #ccc;\r\n}\r\n</style>\r\n</head>\r\n\r\n<body>\r\n<table>\r\n<caption>Caption của table</caption>\r\n<thead>\r\n<tr>\r\n<th>A1</th>\r\n<th>A2</th>\r\n</tr>\r\n</thead>\r\n\r\n<tr>\r\n<td>B1</td>\r\n<td>B2</td>\r\n</tr>\r\n\r\n<tr>\r\n<td>C1</td>\r\n<td>C2</td>\r\n</tr>\r\n\r\n<tfoot>\r\n<tr>\r\n<td>D1</td>\r\n<td>D2</td>\r\n</tr>\r\n</tfoot>\r\n</table>\r\n</body>\r\n</html>', NULL, NULL, NULL),
(874, 88, '<html>  \r\n<head>  \r\n<style>  \r\nimg {  \r\n    float: right;  \r\n}  \r\n</style>  \r\n</head>  \r\n<body>  \r\n<p>The following paragraph contains an image with style   \r\n<b>float:right</b>. The result is that the image will float to the right in the paragraph.</p>  \r\n<img src=\"images/bg.jpg\" title=\"Chào mừng các bạn đến website hiệp Sĩ IT\"/>   \r\nThis is some text. This is some text. This is some text.  \r\nThis is some text. This is some text. This is some text.  \r\nThis is some text. This is some text. This is some text.  \r\nThis is some text. This is some text. This is some text.  \r\nThis is some text. This is some text. This is some text.  \r\nThis is some text. This is some text. This is some text.  \r\nThis is some text. This is some text. This is some text.  \r\nThis is some text. This is some text. This is some text.  \r\nThis is some text. This is some text. This is some text.  \r\nThis is some text. This is some text. This is some text.  \r\nThis is some text. This is some text. This is some text.  \r\nThis is some text. This is some text. This is some text.  \r\nThis is some text. This is some text. This is some text.  \r\n</p>  \r\n</body>  \r\n</html>  ', NULL, NULL, NULL),
(875, 88, '<html>\r\n\r\n<head>\r\n<title>Tiêu đề trang web</title>\r\n\r\n</head>\r\n\r\n<body>\r\n<div>\r\n<p class=\"first\">Thành phần A.</p>\r\n<p class=\"second\">Thành phần B.</p>\r\n<p class=\"third\">Thành phần C.</p>\r\n</div>\r\n</body>\r\n</html>', NULL, NULL, NULL),
(876, 88, '<html>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<head>\r\n<title>Tiêu đề trang web</title>\r\n<style>\r\n* {\r\n    margin: 0;\r\n    padding: 0;\r\n}\r\n\r\ndiv {\r\n    border: 1px solid red;\r\n}\r\n\r\np.first {\r\n    background: #f3f3cf;\r\n    float: left;\r\n    height: 100px;\r\n}\r\n\r\np.second {\r\n    background: #e0e0fc;\r\n    height: 100px;\r\n}\r\n\r\np.third {\r\n    background: #befcc9;\r\n    height: 100px;\r\n}\r\n</style>\r\n</head>\r\n\r\n<body>\r\n<div>\r\n<p class=\"first\">Thành phần A.</p>\r\n<p class=\"second\">Thành phần B.</p>\r\n<p class=\"third\">Thành phần C.</p>\r\n</div>\r\n</body>\r\n</html>', NULL, NULL, NULL),
(877, 88, '<html>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<head>\r\n<title>Tiêu đề trang web</title>\r\n<style>\r\n* {\r\n    margin: 0;\r\n    padding: 0;\r\n}\r\n\r\ndiv {\r\n    border: 1px solid red;\r\n}\r\n\r\np.first {\r\n    background: #f3f3cf;\r\n    float: left;\r\n    height: 100px;\r\n}\r\n\r\np.second {\r\n    background: #e0e0fc;\r\n    clear: left;\r\n    height: 100px;\r\n}\r\n\r\np.third {\r\n    background: #befcc9;\r\n    height: 100px;\r\n}\r\n</style>\r\n</head>\r\n\r\n<body>\r\n<div>\r\n<p class=\"first\">Thành phần A.</p>\r\n<p class=\"second\">Thành phần B.</p>\r\n<p class=\"third\">Thành phần C.</p>\r\n</div>\r\n</body>\r\n</html>', NULL, NULL, NULL),
(878, 88, '<html>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<head>\r\n<title>Tiêu đề trang web</title>\r\n<style>\r\n* {\r\n    margin: 0;\r\n    padding: 0;\r\n}\r\n\r\ndiv {\r\n    border: 1px solid red;\r\n}\r\n\r\np.first {\r\n    background: #f3f3cf;\r\n    float: right;\r\n    height: 100px;\r\n}\r\n\r\np.second {\r\n    background: #e0e0fc;\r\n    clear: right;\r\n    height: 100px;\r\n}\r\n\r\np.third {\r\n    background: #befcc9;\r\n    height: 100px;\r\n}\r\n</style>\r\n</head>\r\n\r\n<body>\r\n<div>\r\n<p class=\"first\">Thành phần A.</p>\r\n<p class=\"second\">Thành phần B.</p>\r\n<p class=\"third\">Thành phần C.</p>\r\n</div>\r\n</body>\r\n</html>', NULL, NULL, NULL),
(879, 88, '<html>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<head>\r\n<title>Tiêu đề trang web</title>\r\n<style>\r\n* {\r\n    margin: 0;\r\n    padding: 0;\r\n}\r\n\r\ndiv {\r\n    border: 1px solid red;\r\n}\r\n\r\np.first {\r\n    background: #f3f3cf;\r\n    float: left;\r\n    height: 100px;\r\n}\r\n\r\np.second {\r\n    background: #e0e0fc;\r\n    float: right;\r\n    height: 100px;\r\n}\r\n\r\np.third {\r\n    background: #befcc9;\r\n    clear: both;\r\n    height: 100px;\r\n}\r\n</style>\r\n</head>\r\n\r\n<body>\r\n<div>\r\n<p class=\"first\">Thành phần A.</p>\r\n<p class=\"second\">Thành phần B.</p>\r\n<p class=\"third\">Thành phần C.</p>\r\n</div>\r\n</body>\r\n</html>', NULL, NULL, NULL),
(880, 88, '<html>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<head>\r\n<title>Tiêu đề trang web</title>\r\n<style>\r\n* {\r\n    margin: 0;\r\n    padding: 0;\r\n}\r\n\r\ndiv {\r\n    border: 1px solid red;\r\n}\r\n\r\np.first {\r\n    background: #f3f3cf;\r\n    float: left;\r\n    height: 100px;\r\n}\r\n\r\np.second {\r\n    background: #e0e0fc;\r\n    float: right;\r\n    height: 100px;\r\n}\r\n\r\np.third {\r\n    background: #befcc9;\r\n    clear: both;\r\n    clear: none;\r\n    height: 100px;\r\n}\r\n</style>\r\n</head>\r\n\r\n<body>\r\n<div>\r\n<p class=\"first\">Thành phần A.</p>\r\n<p class=\"second\">Thành phần B.</p>\r\n<p class=\"third\">Thành phần C.</p>\r\n</div>\r\n</body>\r\n</html>', NULL, NULL, NULL),
(884, 89, '<html>\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title>Untitled Document</title>\r\n<style type=\"text/css\">\r\np { font-weight:bold } \r\n\r\n</style>\r\n</head>\r\n<body>\r\n<p>\r\nThẻ tiêu đề của HTML dùng để  định nghĩa các tiêu đề hoặc \r\nphụ đề muốn hiển thị trên trang web. Khi đặt văn bản trong thẻ tiêu đề\r\n <h1> Nội dung </ h1>, nó được hiển thị trên trình duyệt ở dạng đậm và kích thước của văn bản\r\nphụ thuộc thẻ tiêu đề đang sử dụng.</p>\r\n\r\n<h1>Đây là tiêu đề quan trọng nhất (lớn nhất)</h1>\r\n<h2>Đây là tiêu đề quan trọng thứ nhì (lớn thứ nhì)</h2>\r\n<h3>Đây là tiêu đề quan trọng thứ ba (lớn thứ ba)</h3>\r\n</body>\r\n</html>\r\n', NULL, NULL, NULL),
(885, 89, '<html>\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title>Untitled Document</title>\r\n<style type=\"text/css\">\r\nbody { font-family:\"Times New Roman\",Tohama,sans-serif } \r\nh1, h2, h3 { font-family:arial,verdana,serif }\r\n</style>\r\n</head>\r\n<body>\r\nThẻ tiêu đề của HTML dùng để  định nghĩa các tiêu đề hoặc \r\nphụ đề muốn hiển thị trên trang web. Khi đặt văn bản trong thẻ tiêu đề\r\n <h1> Nội dung </ h1>, nó được hiển thị trên trình duyệt ở dạng đậm và kích thước của văn bản\r\nphụ thuộc thẻ tiêu đề đang sử dụng.\r\n\r\n<h1>Đây là tiêu đề quan trọng nhất (lớn nhất)</h1>\r\n<h2>Đây là tiêu đề quan trọng thứ nhì (lớn thứ nhì)</h2>\r\n<h3>Đây là tiêu đề quan trọng thứ ba (lớn thứ ba)</h3>\r\n</body>\r\n</html>\r\n', NULL, NULL, NULL),
(886, 89, '<html>\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title>Untitled Document</title>\r\n<style type=\"text/css\">\r\nbody { font-size:20px } \r\nh1 { font-size:3em } \r\nh2 { font-size:2em}\r\n</style>\r\n</head>\r\n<body>\r\nThẻ tiêu đề của HTML dùng để  định nghĩa các tiêu đề hoặc \r\nphụ đề muốn hiển thị trên trang web. Khi đặt văn bản trong thẻ tiêu đề\r\n <h1> Nội dung </ h1>, nó được hiển thị trên trình duyệt ở dạng đậm và kích thước của văn bản\r\nphụ thuộc thẻ tiêu đề đang sử dụng.\r\n\r\n<h1>Đây là tiêu đề quan trọng nhất (lớn nhất)</h1>\r\n<h2>Đây là tiêu đề quan trọng thứ nhì (lớn thứ nhì)</h2>\r\n<h3>Đây là tiêu đề quan trọng thứ ba (lớn thứ ba)</h3>\r\n</body>\r\n</html>\r\n', NULL, NULL, NULL),
(887, 89, '<html>\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title>Untitled Document</title>\r\n<style type=\"text/css\">\r\nh1 { font-style:italic; } \r\nh2 { font-style:oblique; } \r\n\r\n</style>\r\n</head>\r\n<body>\r\nThẻ tiêu đề của HTML dùng để  định nghĩa các tiêu đề hoặc \r\nphụ đề muốn hiển thị trên trang web. Khi đặt văn bản trong thẻ tiêu đề\r\n <h1> Nội dung </ h1>, nó được hiển thị trên trình duyệt ở dạng đậm và kích thước của văn bản\r\nphụ thuộc thẻ tiêu đề đang sử dụng.\r\n\r\n<h1>Đây là tiêu đề quan trọng nhất (lớn nhất)</h1>\r\n<h2>Đây là tiêu đề quan trọng thứ nhì (lớn thứ nhì)</h2>\r\n<h3>Đây là tiêu đề quan trọng thứ ba (lớn thứ ba)</h3>\r\n</body>\r\n</html>\r\n', NULL, NULL, NULL),
(888, 89, '<html>\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title>Untitled Document</title>\r\n<style type=\"text/css\">\r\nbody { color:#000 } \r\nh1 { color:#0000FF } \r\nh2 { color:#00FF00 }\r\n\r\n</style>\r\n</head>\r\n<body>\r\nThẻ tiêu đề của HTML dùng để  định nghĩa các tiêu đề hoặc \r\nphụ đề muốn hiển thị trên trang web. Khi đặt văn bản trong thẻ tiêu đề\r\n <h1> Nội dung </ h1>, nó được hiển thị trên trình duyệt ở dạng đậm và kích thước của văn bản\r\nphụ thuộc thẻ tiêu đề đang sử dụng.\r\n\r\n<h1>Đây là tiêu đề quan trọng nhất (lớn nhất)</h1>\r\n<h2>Đây là tiêu đề quan trọng thứ nhì (lớn thứ nhì)</h2>\r\n<h3>Đây là tiêu đề quan trọng thứ ba (lớn thứ ba)</h3>\r\n</body>\r\n</html>\r\n', NULL, NULL, NULL),
(889, 89, '<html>\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title>Untitled Document</title>\r\n<style type=\"text/css\">\r\nh1 { font-variant:small-caps } \r\n\r\n</style>\r\n</head>\r\n<body>\r\nThẻ tiêu đề của HTML dùng để  định nghĩa các tiêu đề hoặc \r\nphụ đề muốn hiển thị trên trang web. Khi đặt văn bản trong thẻ tiêu đề\r\n <h1> Nội dung </ h1>, nó được hiển thị trên trình duyệt ở dạng đậm và kích thước của văn bản\r\nphụ thuộc thẻ tiêu đề đang sử dụng.\r\n\r\n<h1>Đây là tiêu đề quan trọng nhất (lớn nhất)</h1>\r\n<h2>Đây là tiêu đề quan trọng thứ nhì (lớn thứ nhì)</h2>\r\n<h3>Đây là tiêu đề quan trọng thứ ba (lớn thứ ba)</h3>\r\n</body>\r\n</html>\r\n', NULL, NULL, NULL),
(890, 89, '\r\n<html>\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title>Untitled Document</title>\r\n<style type=\"text/css\">\r\np { text-indent:30px } \r\n</style>\r\n</head>\r\n<body>\r\n<p>Sau khi tiễn Myanmar rời khỏi cuộc chơi, thầy trò HLV\r\n Mai Đức Chung sẵn sàng làm buồn lòng một đối thủ khác\r\n nữa là Thái Lan để hoàn thành chỉ tiêu chinh phục Vàng tại SEA Games 2017.</p>\r\n</body>\r\n</html>\r\n', NULL, NULL, NULL),
(891, 89, '<html>\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title>Untitled Document</title>\r\n<style type=\"text/css\">\r\np { font-weight:bold } \r\n\r\n</style>\r\n</head>\r\n<body>\r\n<p>\r\nThẻ tiêu đề của HTML dùng để  định nghĩa các tiêu đề hoặc \r\nphụ đề muốn hiển thị trên trang web. Khi đặt văn bản trong thẻ tiêu đề\r\n <h1> Nội dung </ h1>, nó được hiển thị trên trình duyệt ở dạng đậm và kích thước của văn bản\r\nphụ thuộc thẻ tiêu đề đang sử dụng.</p>\r\n\r\n<h1>Đây là tiêu đề quan trọng nhất (lớn nhất)</h1>\r\n<h2>Đây là tiêu đề quan trọng thứ nhì (lớn thứ nhì)</h2>\r\n<h3>Đây là tiêu đề quan trọng thứ ba (lớn thứ ba)</h3>\r\n</body>\r\n</html>\r\n', NULL, NULL, NULL),
(892, 89, '<html>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title>Untitled Document</title>\r\n<style type=\"text/css\">\r\nh1, h2 { text-align:right } \r\np { text-align:justify } \r\n</style>\r\n</head>\r\n<body>\r\n<p>Sau khi tiễn Myanmar rời khỏi cuộc chơi, thầy trò HLV\r\n Mai Đức Chung sẵn sàng làm buồn lòng một đối thủ khác\r\n nữa là Thái Lan để hoàn thành chỉ tiêu chinh phục Vàng tại SEA Games 2017.</p>\r\n<h1>Đây là tiêu đề quan trọng thứ nhất(lớn thứ nhất)</h1>\r\n<h2>Đây là tiêu đề quan trọng thứ nhì (lớn thứ nhì)</h2>\r\n<h3>Đây là tiêu đề quan trọng thứ ba (lớn thứ ba)</h3>\r\n</body>\r\n</html>\r\n', NULL, NULL, NULL),
(893, 89, '<html>\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title>Untitled Document</title>\r\n<style type=\"text/css\">\r\nbody { font-size:20px } \r\nh1 { font-size:3em } \r\nh2 { font-size:2em}\r\n</style>\r\n</head>\r\n<body>\r\nThẻ tiêu đề của HTML dùng để  định nghĩa các tiêu đề hoặc \r\nphụ đề muốn hiển thị trên trang web. Khi đặt văn bản trong thẻ tiêu đề\r\n <h1> Nội dung </ h1>, nó được hiển thị trên trình duyệt ở dạng đậm và kích thước của văn bản\r\nphụ thuộc thẻ tiêu đề đang sử dụng.\r\n\r\n<h1>Đây là tiêu đề quan trọng nhất (lớn nhất)</h1>\r\n<h2>Đây là tiêu đề quan trọng thứ nhì (lớn thứ nhì)</h2>\r\n<h3>Đây là tiêu đề quan trọng thứ ba (lớn thứ ba)</h3>\r\n</body>\r\n</html>\r\n', NULL, NULL, NULL),
(894, 89, '<html>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title>Untitled Document</title>\r\n<style type=\"text/css\">\r\nh1, h2 { letter-spacing:7px } \r\np { letter-spacing:5px }\r\n</style>\r\n</head>\r\n<body>\r\n<p>Sau khi tiễn Myanmar rời khỏi cuộc chơi, thầy trò HLV\r\n Mai Đức Chung sẵn sàng làm buồn lòng một đối thủ khác\r\n nữa là Thái Lan để hoàn thành chỉ tiêu chinh phục Vàng tại SEA Games 2017.</p>\r\n<h1>Đây là tiêu đề quan trọng thứ nhất(lớn thứ nhất)</h1>\r\n<h2>Đây là tiêu đề quan trọng thứ nhì (lớn thứ nhì)</h2>\r\n<h3>Đây là tiêu đề quan trọng thứ ba (lớn thứ ba)</h3>\r\n</body>\r\n</html>\r\n', NULL, NULL, NULL),
(895, 89, '<html>\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title>Untitled Document</title>\r\n<style type=\"text/css\">\r\nbody { color:#000 } \r\nh1 { color:#0000FF } \r\nh2 { color:#00FF00 }\r\n\r\n</style>\r\n</head>\r\n<body>\r\nThẻ tiêu đề của HTML dùng để  định nghĩa các tiêu đề hoặc \r\nphụ đề muốn hiển thị trên trang web. Khi đặt văn bản trong thẻ tiêu đề\r\n <h1> Nội dung </ h1>, nó được hiển thị trên trình duyệt ở dạng đậm và kích thước của văn bản\r\nphụ thuộc thẻ tiêu đề đang sử dụng.\r\n\r\n<h1>Đây là tiêu đề quan trọng nhất (lớn nhất)</h1>\r\n<h2>Đây là tiêu đề quan trọng thứ nhì (lớn thứ nhì)</h2>\r\n<h3>Đây là tiêu đề quan trọng thứ ba (lớn thứ ba)</h3>\r\n</body>\r\n</html>\r\n', NULL, NULL, NULL),
(896, 89, '<html>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title>Untitled Document</title>\r\n<style type=\"text/css\">\r\nh1 { text-decoration:underline } \r\nh2 { text-decoration:overline } \r\n</style>\r\n</head>\r\n<body>\r\n<h1>Đây là tiêu đề quan trọng thứ nhất(lớn thứ nhất)</h1>\r\n<h2>Đây là tiêu đề quan trọng thứ nhì (lớn thứ nhì)</h2>\r\n<h3>Đây là tiêu đề quan trọng thứ ba (lớn thứ ba)</h3>\r\n</html>\r\n', NULL, NULL, NULL),
(897, 89, '<html>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title>Untitled Document</title>\r\n<style type=\"text/css\">\r\nh1 { text-transform:uppercase } \r\nh2 { text-transform:capitalize } \r\n</style>\r\n</head>\r\n<body>\r\n<h1>Đây là tiêu đề quan trọng thứ nhất(lớn thứ nhất)</h1>\r\n<h2>Đây là tiêu đề quan trọng thứ nhì (lớn thứ nhì)</h2>\r\n<h3>Đây là tiêu đề quan trọng thứ ba (lớn thứ ba)</h3>\r\n</html>', NULL, NULL, NULL),
(898, 89, '\r\n<html>\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title>Untitled Document</title>\r\n<style type=\"text/css\">\r\np { text-indent:30px } \r\n</style>\r\n</head>\r\n<body>\r\n<p>Sau khi tiễn Myanmar rời khỏi cuộc chơi, thầy trò HLV\r\n Mai Đức Chung sẵn sàng làm buồn lòng một đối thủ khác\r\n nữa là Thái Lan để hoàn thành chỉ tiêu chinh phục Vàng tại SEA Games 2017.</p>\r\n</body>\r\n</html>\r\n', NULL, NULL, NULL),
(899, 89, '<html>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title>Untitled Document</title>\r\n<style type=\"text/css\">\r\nh1, h2 { text-align:right } \r\np { text-align:justify } \r\n</style>\r\n</head>\r\n<body>\r\n<p>Sau khi tiễn Myanmar rời khỏi cuộc chơi, thầy trò HLV\r\n Mai Đức Chung sẵn sàng làm buồn lòng một đối thủ khác\r\n nữa là Thái Lan để hoàn thành chỉ tiêu chinh phục Vàng tại SEA Games 2017.</p>\r\n<h1>Đây là tiêu đề quan trọng thứ nhất(lớn thứ nhất)</h1>\r\n<h2>Đây là tiêu đề quan trọng thứ nhì (lớn thứ nhì)</h2>\r\n<h3>Đây là tiêu đề quan trọng thứ ba (lớn thứ ba)</h3>\r\n</body>\r\n</html>\r\n', NULL, NULL, NULL),
(900, 89, '<html>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title>Untitled Document</title>\r\n<style type=\"text/css\">\r\nh1, h2 { letter-spacing:7px } \r\np { letter-spacing:5px }\r\n</style>\r\n</head>\r\n<body>\r\n<p>Sau khi tiễn Myanmar rời khỏi cuộc chơi, thầy trò HLV\r\n Mai Đức Chung sẵn sàng làm buồn lòng một đối thủ khác\r\n nữa là Thái Lan để hoàn thành chỉ tiêu chinh phục Vàng tại SEA Games 2017.</p>\r\n<h1>Đây là tiêu đề quan trọng thứ nhất(lớn thứ nhất)</h1>\r\n<h2>Đây là tiêu đề quan trọng thứ nhì (lớn thứ nhì)</h2>\r\n<h3>Đây là tiêu đề quan trọng thứ ba (lớn thứ ba)</h3>\r\n</body>\r\n</html>\r\n', NULL, NULL, NULL),
(901, 89, '<html>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title>Untitled Document</title>\r\n<style type=\"text/css\">\r\nh1 { text-decoration:underline } \r\nh2 { text-decoration:overline } \r\n</style>\r\n</head>\r\n<body>\r\n<h1>Đây là tiêu đề quan trọng thứ nhất(lớn thứ nhất)</h1>\r\n<h2>Đây là tiêu đề quan trọng thứ nhì (lớn thứ nhì)</h2>\r\n<h3>Đây là tiêu đề quan trọng thứ ba (lớn thứ ba)</h3>\r\n</html>\r\n', NULL, NULL, NULL),
(902, 89, '<html>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title>Untitled Document</title>\r\n<style type=\"text/css\">\r\nh1 { text-transform:uppercase } \r\nh2 { text-transform:capitalize } \r\n</style>\r\n</head>\r\n<body>\r\n<h1>Đây là tiêu đề quan trọng thứ nhất(lớn thứ nhất)</h1>\r\n<h2>Đây là tiêu đề quan trọng thứ nhì (lớn thứ nhì)</h2>\r\n<h3>Đây là tiêu đề quan trọng thứ ba (lớn thứ ba)</h3>\r\n</html>', NULL, NULL, NULL),
(903, 90, '<html> \r\n<head> <title>Ví dụ</title> \r\n<style>\r\na { border:1px solid #000; font-size:14px } \r\na:link { color:#00FF00; } \r\na:hover{background-color:#00BFF3;color:#FF00FF;font-size:1.2em;text-ecoration:blink } \r\na:visited { background-color:#FFF568; color:#FF0000; text-decoration:none } \r\na:active { color:#662D91; font-variant:small-caps } \r\n</style>\r\n</head> \r\n<body> \r\n<a href=index.htm>^_^ Welcome To MyWebsite ^_^</a> \r\n</body> \r\n</html>', NULL, NULL, NULL),
(904, 93, '<html>  \r\n<head>  \r\n<style>  \r\np {  \r\n    background-color: pink;  \r\n}  \r\np.ex {  \r\n    margin-top: 50px;  \r\n    margin-bottom: 50px;  \r\n    margin-right: 100px;  \r\n    margin-left: 100px;  \r\n}  \r\n</style>  \r\n</head>  \r\n<body>  \r\n<p>Đoạn văn bản này không sử dụng thuộc tính margin. </p>  \r\n<p class=\"ex\">Đoạn văn bản này canh lề trên 50px, dưới 50px, phải 100px, trái 100px.</p>  \r\n</body>  \r\n</html>', NULL, NULL, NULL),
(905, 93, '<html>\r\n<body>\r\n<style>\r\np {\r\nmargin: 100px 150px 100px 80px;\r\n}\r\n</style>\r\n<h2>Sử dụng thuộc tính margin</h2>\r\n\r\n<div>Phần tử này có lề trên 100px, lề phải 150px, lề dưới 100px và lề trái 80px.</div>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL),
(906, 93, '<html>  \r\n<head>  \r\n<style>  \r\np {  \r\n    background-color: pink;  \r\n}  \r\np.ex {  \r\n   margin: 50px 100px 150px 200px; \r\n}  \r\n</style>  \r\n</head>  \r\n<body>  \r\n<p>Đoạn văn bản này không sử dụng thuộc tính margin. </p>  \r\n<p class=\"ex\">Đoạn văn bản này canh lề trên 50px, phải 100px, dưới 150px, trái 200px.</p>  \r\n</body>  \r\n</html>', NULL, NULL, NULL),
(907, 93, '<html>  \r\n<head>  \r\n<style>  \r\np {  \r\n    background-color: pink;  \r\n}  \r\np.ex {  \r\n   margin: 50px 100px 150px; \r\n}  \r\n</style>  \r\n</head>  \r\n<body>  \r\n<p>Đoạn văn bản này không sử dụng thuộc tính margin. </p>  \r\n<p class=\"ex\">Đoạn văn bản này canh lề trên 50px, phải 100px, dưới 150px, trái 100px.</p>  \r\n</body>  \r\n</html>', NULL, NULL, NULL),
(908, 93, '<html>  \r\n<head>  \r\n<style>  \r\np {  \r\n    background-color: pink;  \r\n}  \r\np.ex {  \r\n   margin: 50px 100px; \r\n}  \r\n</style>  \r\n</head>  \r\n<body>  \r\n<p>Đoạn văn bản này không sử dụng thuộc tính margin. </p>  \r\n<p class=\"ex\">Đoạn văn bản này canh lề trên 50px, phải 100px, dưới 50px, trái 100px.</p>  \r\n</body>  \r\n</html>', NULL, NULL, NULL),
(909, 93, '<html>  \r\n<head>  \r\n<style>  \r\np {  \r\n    background-color: pink;  \r\n}  \r\np.ex {  \r\n   margin: 50px; \r\n}  \r\n</style>  \r\n</head>  \r\n<body>  \r\n<p>Đoạn văn bản này không sử dụng thuộc tính margin. </p>  \r\n<p class=\"ex\">Đoạn văn bản này canh lề trên 50px, phải 100px, dưới 50px, trái 100px.</p>  \r\n</body>  \r\n</html>', NULL, NULL, NULL),
(912, 94, '<html>\r\n<head>\r\n   <style type=\"text/css\">\r\n      p{\r\n         font-size:20px;\r\n         padding:20px;\r\n         background-color:red;\r\n      }\r\n   </style>\r\n</head>\r\n<body>\r\n   <p style=\"opacity:1\">Opacity: 1</p>\r\n   <p style=\"opacity:0.8\">Opacity: 0.8</p>\r\n   <p style=\"opacity:0.6\">Opacity: 0.6</p>\r\n   <p style=\"opacity:0.4\">Opacity: 0.4</p>\r\n   <p style=\"opacity:0.2\">Opacity: 0.2</p>\r\n   <p style=\"opacity:0\">Opacity: 0</p>\r\n</body>\r\n</html>', NULL, NULL, NULL),
(913, 94, '<!DOCTYPE html>  \r\n<html>  \r\n<head>  \r\n<style>  \r\nimg.trans {  \r\n    opacity: 0.4;  \r\n    filter: alpha(opacity=40); /* For IE8 and earlier */  \r\n}  \r\n</style>  \r\n</head>  \r\n<body>  \r\n<p>Hình ban đầu</p>  \r\n<img src=\"images/rose.jpg\" title=\"normal rose\">  \r\n<p>Hình Transparent</p>  \r\n<img class=\"trans\" src=\"images/rose.jpg\" alt=\"transparent rose\">  \r\n</body>  \r\n</html>', NULL, NULL, NULL),
(914, 95, '<!DOCTYPE html>  \r\n<html>  \r\n<head>  \r\n<style>  \r\ndiv.scroll {  \r\n    background-color: #00ffff;  \r\n    width: 100px;  \r\n    height: 100px;  \r\n    overflow: scroll;  \r\n}  \r\n  \r\ndiv.hidden {  \r\n    background-color: #00FF00;  \r\n    width: 100px;  \r\n    height: 170px;  \r\n    overflow: hidden;  \r\n}  \r\n</style>  \r\n</head>  \r\n<body>  \r\n<p>Thuộc tính tràn xác định phải làm gì nếu nội dung của một phần tử vượt quá kích thước của hộp của phần tử.</p>  \r\n<p>overflow:scroll</p>  \r\n<div class=\"scroll\">Bạn có thể sử dụng thuộc tính tràn khi muốn kiểm soát bố cục tốt hơn. Giá trị mặc định hiển thị.</div>  \r\n<p>overflow:hidden</p>  \r\n<div class=\"hidden\">You can use the overflow property when you want to have better control of the layout.   \r\nThe default value is visible.</div>  \r\n</body>  \r\n</html>', NULL, NULL, NULL),
(918, 96, '<style>\r\ndiv.ex1 {\r\npadding: 25px 50px 75px 100px;\r\n}div.ex2 {\r\npadding: 25px 50px 75px;\r\n}div.ex3 {\r\npadding: 25px 50px;\r\n}div.ex4 {\r\npadding: 25px;\r\n}\r\n</style>\r\n<h2>Sử dụng thuộc tính padding rút gọn</h2>\r\n\r\n<div class=\"ex1\">Phần tử div này có padding top là 25px, padding right là 50px, padding bottom là 75px và padding left là 100px.</div><br>\r\n\r\n<div class=\"ex2\">Phần tử div này có padding top là 25px, padding right và left là 50px, padding bottom là 75px.</div><br>\r\n\r\n<div class=\"ex3\">Phần tử div này có padding top và bottom là 25px, padding left và right là 50px.</div><br>', NULL, NULL, NULL),
(923, 97, '<style>\r\np{\r\n    background-color: orange;\r\n    width: 200px;\r\n    padding: 10px;\r\n    position: static;\r\n    top: 15px;\r\n    left: 15px;\r\n}\r\n</style>\r\n<body>\r\n<p> Đoạn văn bản này được định vị trí tĩnh</p>\r\n</body>', NULL, NULL, NULL),
(924, 97, '<html>  \r\n<head>  \r\n<style>  \r\nh2.pos_left {  \r\n    position: relative;  \r\n    left: -30px;  \r\n}  \r\nh2.pos_right {  \r\n    position: relative;  \r\n    left: 30px;  \r\n}  \r\n</style>  \r\n</head>  \r\n<body>  \r\n<h2>Tiêu đề này không định vị trí</h2>  \r\n<h2 class=\"pos_left\">Tiều đề này được định vị trí bên trái so với thông thường </h2>  \r\n<h2 class=\"pos_right\">Tiều đề này được định vị trí bên phải so với thông thường</h2>  \r\n<p>\"left:-30px\" Trừ 30 pixel từ vị trí trái ban đầu.</p>  \r\n<p> \"left:30px\" cộng 30 pixel từ vị trí trái ban đầu.</p>  \r\n</body>  \r\n</html>  ', NULL, NULL, NULL),
(925, 97, '<html>  \r\n<head>  \r\n<style>  \r\nh2 {  \r\n    position: absolute;  \r\n    left: 150px;  \r\n    top: 250px;  \r\n}  \r\n</style>  \r\n</head>  \r\n<body>  \r\n<h2>Tiêu đề này định vị trí tuyệ đối</h2>  \r\n<p> Tiêu đề đặt tọa độ (150,250).</p>  \r\n</body>  \r\n</html>  ', NULL, NULL, NULL),
(926, 97, 'html>\r\n<head>\r\n<style type=\"text/css\">\r\np.fixed {\r\n    background: blue;\r\n    position: fixed;\r\n	right: 40px;\r\n	top: 50px;\r\n}\r\n</style>\r\n</head>\r\n\r\n<body>\r\n<div>\r\n<p class=\"fixed\">Định vị trí fix fixed</p>\r\n<p>text text text ...</p>\r\n</div>\r\n</body>\r\n</html>', NULL, NULL, NULL),
(927, 97, '<html>\r\n<head>\r\n<title>Ví Dụ Về Layers</title>\r\n<style>\r\n#logo1 { position:absolute; top:70px; left:50px; z-index:1 } \r\n#logo2 { position:absolute; top:140px; left:100px; z-index:2 } \r\n#logo3 { position:absolute; top:210px; left:150px; z-index:3 } \r\n#logo4 { position:absolute; top:280px; left:200px; z-index:4 } \r\n#logo5 { position:absolute; top:350px; left:250px; z-index:5 } \r\n</style>\r\n</head>\r\n<body>\r\n<img id=\"logo1\" src=\"images/h1.jpg\" >\r\n<img id=\"logo2\" src=\"images/h2.jpg\" >\r\n<img id=\"logo3\" src=\"images/h3.jpg\" >\r\n<img id=\"logo4\" src=\"images/h4.jpg\" >\r\n<img id=\"logo5\" src=\"images/h5.jpg\" >\r\n</body>\r\n</html>', NULL, NULL, NULL),
(928, 98, '<html>\r\n<head>\r\n    <meta charset=\"utf-8\">\r\n    <meta httspan-equiv=\"X-UA-Comspanatible\" content=\"IE=edge\">\r\n    <title>Toidiocde.com  demo vertical-align</title>\r\n</head>\r\n<style tyspane=\"text/css\">\r\n    p{\r\n        background-color: green;\r\n    }\r\n    span{\r\n        background-color: orange;\r\n    }\r\n</style>\r\n<body>\r\n    <p>giá trị là <span style=\"vertical-align: 15px;\"> đơn vị đo đọ dài</span></p>    \r\n    <p>giá trị là <span style=\"vertical-align: baseline;\"> baseline</span></p>    \r\n    <p>giá trị là <span style=\"vertical-align: sub;\"> sub</span></p>    \r\n    <p>giá trị là <span style=\"vertical-align: super;\"> suspaner</span></p>    \r\n    <p>giá trị là <span style=\"vertical-align: top;\"> tospan</span></p>    \r\n    <p>giá trị là <span style=\"vertical-align: text-top\"> text-tospan</span></p>    \r\n    <p>giá trị là <span style=\"vertical-align: middle;\"> middle</span></p>    \r\n    <p>giá trị là <span style=\"vertical-align: bottom;\"> bottom</span></p>    \r\n    <p>giá trị là <span style=\"vertical-align: text-bottom;\"> text-bottom</span> </p>   \r\n</body>\r\n</html>', NULL, NULL, NULL),
(929, 99, '<html>\r\n\r\n<head>\r\n    <meta charset=\"utf-8\">\r\n    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n    <title>Học CSS toidicode.com</title>\r\n</head>\r\n<style type=\"text/css\" media=\"screen\">\r\n    p {\r\n        width: 300px;\r\n        padding: 10px;\r\n        background-color: orange;\r\n        white-space: normal;\r\n    }\r\n</style>\r\n\r\n<body>\r\n    <span>\r\n        <input type=\"radio\" name=\"white-space\" value=\"normal\" onclick=\"changeProperties(this)\" checked=\"\"> normal\r\n        <input type=\"radio\" name=\"white-space\" value=\"nowrap\" onclick=\"changeProperties(this)\"> nowrap  \r\n        <input type=\"radio\" name=\"white-space\" value=\"pre\" onclick=\"changeProperties(this)\"> pre  \r\n        <input type=\"radio\" name=\"white-space\" value=\"pre-line\" onclick=\"changeProperties(this)\"> pre-line\r\n        <input type=\"radio\" name=\"white-space\" value=\"pre-wrap\" onclick=\"changeProperties(this)\"> pre-wrap\r\n    </span>\r\n    <p>\r\n        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n    </p>\r\n    <script type=\"text/javascript\">\r\n        function changeProperties(el) {\r\n            document.getElementsByTagName(\'p\')[0].style.whiteSpace = el.value;\r\n        }\r\n    </script>\r\n</body>\r\n\r\n</html>', NULL, NULL, NULL),
(930, 86, '<html>\r\n<head>\r\n<meta charset=\"UTF-8\">\r\n<style>\r\n  p.none {border-style: none;}\r\n  p.dotted {border-style: dotted;}\r\n  p.dashed {border-style: dashed;}\r\n  p.solid {border-style: solid;}\r\n  p.double {border-style: double;}\r\n  p.groove {border-style: groove;}\r\n  p.ridge {border-style: ridge; border-color: #FFCC00;}  \r\n  p.inset {border-style: inset;border-color: #FFCC00;}  \r\n  p.outset {border-style: outset;}\r\n  p.hidden {border-style: hidden;}\r\n</style>\r\n</head>\r\n<body>\r\n  <p class=\"none\">No border.</p>\r\n  <p class=\"dotted\">A dotted border.</p>\r\n  <p class=\"dashed\">A dashed border.</p>\r\n  <p class=\"solid\">A solid border.</p>\r\n  <p class=\"double\">A double border.</p>\r\n  <p class=\"groove\">A groove border.</p>\r\n  <p class=\"ridge\">A ridge border.</p>\r\n  <p class=\"inset\">An inset border.</p>\r\n  <p class=\"outset\">An outset border.</p>\r\n  <p class=\"hidden\">A hidden border.</p>\r\n</body>\r\n</html>\r\n', NULL, NULL, NULL),
(931, 86, '<html>\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title>Ví dụ borcer-color</title>\r\n</head>\r\n\r\n<body>\r\n<style type=\"text/css\">\r\nh1 { border-width:thin; border-color:#FF0000; border-style:solid }  \r\nh2 { border-width:thick; border-color:#CCC; border-style:dotted } \r\np { border-width:5px; border-color:#FF00FF; border-style:double } \r\n</style>\r\n<h1>Ví dụ border solid có màu #FF0000</h1>\r\n<h2>Ví dụ border dotted có màu #CCC</h2>\r\n<p>Ví dụ border double có màu #FF00FF</p>\r\n</body>\r\n</html>\r\n', NULL, NULL, NULL),
(932, 86, '<html>\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title>Ví dụ border-top, left, right</title>\r\n</head>\r\n<style type=\"text/css\">\r\nh1 { \r\nborder-top-width:thin; border-top-color:#FF0000; border-top-style:solid; \r\nborder-right-width:thick; border-right-color:#AFAFAF; border-right-style:dotted; \r\nborder-bottom-width:2px; border-bottom-color:blue; border-bottom-style:double; \r\nborder-left-width:5px; border-left-color:violet; border-left-style:groove } \r\n\r\n</style>\r\n<body>\r\n\r\n<h1>Ngoài ra, chúng ta cũng có thể dùng riêng các thuộc tính border-top,\r\n border-right, border-bottom hay border-left\r\n để chỉ định viền riêng cho các đối tượng. </h1>\r\n\r\n</body>\r\n\r\n</html>\r\n', NULL, NULL, NULL),
(933, 86, '<html>\r\n<head>\r\n<meta charset=\"UTF-8\">\r\n<style>\r\n  p.one {border-style: solid; border-width: 5px;}\r\n  p.two {border-style: solid; border-width: medium;}\r\n  p.three {border-style: solid; border-width: 1px;}\r\n</style>\r\n</head>\r\n<body>\r\n  <p class=\"one\">Write your text here.</p>\r\n  <p class=\"two\">Write your text here.</p>\r\n  <p class=\"three\">Write your text here.</p>\r\n</body>\r\n</html>\r\n', NULL, NULL, NULL),
(934, 86, '<html>\r\n<head>\r\n<meta charset=\"UTF-8\">\r\n<style>\r\n  p.one {border-style: solid; border-color: red; border-radius: 5px;}\r\n  p.two {border-style: solid; border-width: 1px; border-radius: 10px;}\r\n</style>\r\n</head>\r\n<body>\r\n  <p class=\"one\">This is a border with radius</p>\r\n  <p class=\"two\">This is a border with radius</p>\r\n</body>\r\n</html>\r\n', NULL, NULL, NULL),
(935, 86, '<html>\r\n<head>\r\n<meta charset=\"UTF-8\">\r\n<style>\r\n  p.one {border: 1px solid #66CC66; border-radius: 5px;}\r\n  p.two {border: 1px solid red}\r\n</style>\r\n</head>\r\n<body>\r\n  <p class=\"one\">This is a border with radius</p>\r\n  <p class=\"two\">This is a red border example</p>\r\n</body>\r\n</html>', NULL, NULL, NULL),
(936, 101, '<html>\r\n<head></head>\r\n<style>\r\np {\r\n    border: 1px solid #cc0000;\r\n    width: 150px;\r\n}\r\n</style>\r\n\r\n<body>\r\n<p>Hiệp SIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIĨ IT</p>\r\n</body>\r\n</html>', NULL, NULL, NULL),
(937, 101, '<html>\r\n<head></head>\r\n<style>\r\np {\r\n    border: 1px solid #cc0000;\r\n    width: 150px;\r\n    word-wrap: break-word;\r\n}\r\n</style>\r\n\r\n<body>\r\n<p>Hiệp SIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIĨ IT</p>\r\n</body>\r\n</html>', NULL, NULL, NULL),
(938, 102, '<html>\r\n<head></head>\r\n<style>\r\np {\r\n    border: 1px solid #cc0000;\r\n    width: 150px;\r\n}\r\n</style>\r\n\r\n<body>\r\n<p>Hiệp SIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIĨ IT</p>\r\n</body>\r\n</html>', NULL, NULL, NULL),
(939, 102, '<html>\r\n<head></head>\r\n<style>\r\np {\r\n    border: 1px solid #cc0000;\r\n    width: 150px;\r\n    word-wrap: break-word;\r\n}\r\n</style>\r\n\r\n<body>\r\n<p>Hiệp SIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIĨ IT</p>\r\n</body>\r\n</html>', NULL, NULL, NULL),
(942, 103, '<html>  \r\n<style type=\"text/css\">  \r\n.box {  \r\n        background-color: #eee;  \r\n        outline: 3px solid red;  \r\n        border: 3px solid lightgreen;  \r\n        padding: 5px 10px;  \r\n}  \r\n</style>  \r\n<div class=\"box\">Welcome to Hiệp Sĩ IT</div>  \r\n</body>  \r\n</html>  ', NULL, NULL, NULL),
(943, 103, '<html>  \r\n<style type=\"text/css\">  \r\n.box {  \r\n        background-color: #eee;  \r\n        border: 3px solid Lightgreen;  \r\n        padding: 5px 10px;  \r\n        outline-width: 3px;  \r\n        outline-style: solid;  \r\n        outline-color: red;  \r\n}  \r\n</style>  \r\n<div class=\"box\">Welcome to Hiệp Sĩ It</div>  \r\n</body>  \r\n</html>  ', NULL, NULL, NULL),
(944, 103, '<html>  \r\n<style type=\"text/css\">  \r\n.box {  \r\n        outline-color: red;  \r\n        outline-width: 4px;  \r\n        margin: 10px;  \r\n        float: left;  \r\n        border: 2px solid lightgreen;  \r\n        padding: 5px 10px;  \r\n}  \r\n</style>  \r\n<div class=\"box\" style=\"outline-style: dashed;\">Đây là outline dashed.</div>  \r\n<div class=\"box\" style=\"outline-style: dotted;\">Đây là outline dotted.</div>  \r\n<div class=\"box\" style=\"outline-style: double;\">Đây là outline double.</div>  \r\n<div class=\"box\" style=\"outline-style: groove;\">Đây là outline groove.</div>  \r\n<div class=\"box\" style=\"outline-style: inset;\">Đây là outline inset.</div>  \r\n<div class=\"box\" style=\"outline-style: outset;\">Đây là outline outset.</div>  \r\n<div class=\"box\" style=\"outline-style: ridge;\">Đây là outline ridge.</div>  \r\n<div class=\"box\" style=\"outline-style: solid;\">Đây là outline solid.</div>  \r\n</body>  \r\n</html>  ', NULL, NULL, NULL),
(945, 103, '<html>  \r\n<style type=\"text/css\">  \r\n.box {  \r\n        background-color: #eee;  \r\n        outline: 3px solid red;  \r\n        outline-offset: 6px;  \r\n        border: 3px solid Lightgreen;  \r\n        padding: 5px 10px;  \r\n}  \r\n</style>  \r\n<div class=\"box\">Welcome to Hiệp Sĩ It</div>  \r\n</body>  \r\n</html>', NULL, NULL, NULL),
(952, 104, '\r\n<html>\r\n<head>\r\n    <meta charset=\"utf-8\">\r\n    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n    <title>Học CSS toidicode.com</title>\r\n</head>\r\n<style type=\"text/css\" media=\"screen\">\r\n    div{\r\n        background-color: gray;\r\n        width: 100%;\r\n        height: 70px;\r\n        margin-top: 2px;\r\n    }\r\n    table{\r\n        background-color: orange;\r\n        width: 250px;\r\n        padding: 10px;\r\n        visibility: visible;\r\n    }\r\n</style>\r\n<body>\r\n    <span>\r\n        <input type=\"radio\" name=\"visibility\" value=\"visible\" onclick=\"changeProperties(this)\" checked=\"\"> visible \r\n        <input type=\"radio\" name=\"visibility\" value=\"hidden\" onclick=\"changeProperties(this)\"> hidden \r\n        <input type=\"radio\" name=\"visibility\" value=\"collapse\" onclick=\"changeProperties(this)\"> collapse \r\n    </span>\r\n    <table border=\"1\">\r\n        <thead>\r\n            <tr>\r\n                <th>Họ và Tên</th>\r\n                <th>Giới tính</th>\r\n            </tr>\r\n        </thead>\r\n        <tbody>\r\n            <tr>\r\n                <td>Nguyễn Thị Như Nhộng</td>\r\n                <td>Nữ</td>\r\n            </tr>\r\n        </tbody>\r\n    </table>\r\n    <script type=\"text/javascript\">\r\n        function changeProperties(el)\r\n        {\r\n            document.getElementsByTagName(\'table\')[0].style.visibility = el.value;\r\n        }\r\n    </script>\r\n</body>\r\n</html>', NULL, NULL, NULL),
(956, 105, '<html>\r\n<head>\r\n<style>\r\nbody {\r\n    counter-reset: section;\r\n}\r\n\r\nh2::before {\r\n    counter-increment: section;\r\n    content: \"Section \" counter(section) \": \";\r\n}\r\n</style>\r\n</head>\r\n<body>\r\n\r\n<h1>Using CSS Counters:</h1>\r\n<h2>HTML Tutorial</h2>\r\n<h2>CSS Tutorial</h2>\r\n<h2>JavaScript Tutorial</h2>\r\n\r\n<p><b>Note:</b> IE8 supports these properties only if a !DOCTYPE is specified.</p>\r\n\r\n</body>\r\n</html>\r\n', NULL, NULL, NULL),
(957, 105, '<html>\r\n   <head>\r\n   \r\n      <style>\r\n         body {\r\n            counter-reset: section;\r\n         }\r\n         h1 {\r\n            counter-reset: subsection;\r\n         }\r\n         h1:before {\r\n            counter-increment: section;\r\n            content: \"Section \" counter(section) \". \";\r\n         }\r\n         h2:before {\r\n            counter-increment: subsection;\r\n            content: counter(section) \".\" counter(subsection) \" \";\r\n         }\r\n      </style>\r\n      \r\n   </head>\r\n   <body>\r\n   \r\n      <h1>Học CSS cơ bản tại hiệp sĩ IT</h1>\r\n      <h2>Giới thiệu về CSS</h2>\r\n      <h2>CSS là gì?</h2>\r\n      <h2>Cú pháp CSS</h2>\r\n      \r\n      <h1>Ngôn ngữ lập trình</h1>\r\n      <h2>Java</h2>\r\n      <h2>C++</h2>\r\n      \r\n   </body>\r\n</html>', NULL, NULL, NULL);
INSERT INTO `sources` (`id`, `lesson_id`, `code`, `code_id`, `created_at`, `updated_at`) VALUES
(958, 105, '<html>\r\n<head>\r\n<style>\r\nol {\r\n    counter-reset: section;\r\n    list-style-type: none;\r\n}\r\n\r\nli::before {\r\n    counter-increment: section;\r\n    content: counters(section,\".\") \" \";\r\n}\r\n</style>\r\n</head>\r\n<body>\r\n\r\n<ol>\r\n  <li>item</li>\r\n  <li>item     \r\n    <ol>\r\n      <li>item</li>\r\n      <li>item</li>\r\n      <li>item\r\n        <ol>\r\n          <li>item</li>\r\n          <li>item</li>\r\n          <li>item</li>\r\n        </ol>\r\n      </li>\r\n      <li>item</li>\r\n    </ol>\r\n  </li>\r\n  <li>item</li>\r\n  <li>item</li>\r\n</ol>\r\n\r\n<ol>\r\n  <li>item</li>\r\n  <li>item</li>\r\n</ol>\r\n\r\n<p><b>Note:</b> IE8 supports these properties only if a !DOCTYPE is specified.</p>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL),
(963, 107, '<html>\r\n   <head>\r\n   \r\n      <style>\r\n         #rcorners1 {\r\n            border-radius: 15px 50px 30px 5px;\r\n            background: #a44170;\r\n            padding: 20px; \r\n            width: 100px;\r\n            height: 100px; \r\n         }\r\n         #rcorners2 {\r\n            border-radius: 15px 50px 30px;\r\n            background: #a44170;\r\n            padding: 20px;\r\n            width: 100px;\r\n            height: 100px; \r\n         }\r\n         #rcorners3 {\r\n            border-radius: 15px 50px;\r\n            background: #a44170;\r\n            padding: 20px; \r\n            width: 100px;\r\n            height: 100px; \r\n         }\r\n      </style>\r\n      \r\n   </head>\r\n   <body>\r\n      <p id=\"rcorners1\"></p>\r\n      <p id=\"rcorners2\"></p>\r\n      <p id=\"rcorners3\"></p>\r\n   </body>\r\n<body>', NULL, NULL, NULL),
(964, 109, '<html>\r\n<head>\r\n<style>\r\n#borderimg1 {\r\n    border: 10px solid transparent;\r\n    padding: 15px;\r\n    -webkit-border-image: url(images/border.png) 50 round; /* Safari 3.1-5 */\r\n    -o-border-image: url(images/border.png) 50 round; /* Opera 11-12.1 */\r\n    border-image: url(images/border.png) 50 round;\r\n}\r\n\r\n#borderimg2 {\r\n    border: 10px solid transparent;\r\n    padding: 15px;\r\n    -webkit-border-image: url(images/border.png) 20% round; /* Safari 3.1-5 */\r\n    -o-border-image: url(images/border.png) 20% round; /* Opera 11-12.1 */\r\n    border-image: url(images/border.png) 20% round;\r\n}\r\n\r\n#borderimg3 {\r\n    border: 10px solid transparent;\r\n    padding: 15px;\r\n    -webkit-border-image: url(images/border.png) 30% round; /* Safari 3.1-5 */\r\n    -o-border-image: url(images/border.png) 30% round; /* Opera 11-12.1 */\r\n    border-image: url(images/border.png) 30% round;\r\n}\r\n</style>\r\n</head>\r\n<body>\r\n\r\n<p id=\"borderimg1\">border-image: url(images/border.png) 50 round;</p>\r\n<p id=\"borderimg2\">border-image: url(images/border.png) 20% round;</p>\r\n<p id=\"borderimg3\">border-image: url(images/border.png) 30% round;</p>\r\n\r\n<p><strong>Note:</strong> IE 10, Và các phiên bản trước đó không hỗ trợ thuộc tính này.</p>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL),
(965, 109, '<html>\r\n<head>\r\n<style>\r\n#borderimg1 {\r\n    border: 10px solid transparent;\r\n    padding: 15px;\r\n    -webkit-border-image: url(images/border.png) 50 round; /* Safari 3.1-5 */\r\n    -o-border-image: url(images/border.png) 50 round; /* Opera 11-12.1 */\r\n    border-image: url(images/border.png) 50 round;\r\n}\r\n\r\n#borderimg2 {\r\n    border: 10px solid transparent;\r\n    padding: 15px;\r\n    -webkit-border-image: url(images/border.png) 20% round; /* Safari 3.1-5 */\r\n    -o-border-image: url(images/border.png) 20% round; /* Opera 11-12.1 */\r\n    border-image: url(images/border.png) 20% round;\r\n}\r\n\r\n#borderimg3 {\r\n    border: 10px solid transparent;\r\n    padding: 15px;\r\n    -webkit-border-image: url(images/border.png) 30% round; /* Safari 3.1-5 */\r\n    -o-border-image: url(images/border.png) 30% round; /* Opera 11-12.1 */\r\n    border-image: url(images/border.png) 30% round;\r\n}\r\n</style>\r\n</head>\r\n<body>\r\n\r\n<p id=\"borderimg1\">border-image: url(images/border.png) 50 round;</p>\r\n<p id=\"borderimg2\">border-image: url(images/border.png) 20% round;</p>\r\n<p id=\"borderimg3\">border-image: url(images/border.png) 30% round;</p>\r\n\r\n<p><strong>Note:</strong> IE 10, Và các phiên bản trước đó không hỗ trợ thuộc tính này.</p>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL),
(967, 110, '<html>\r\n<head>\r\n<style> \r\n#example1 {\r\n    background: url(images/img_flwr.gif) left top no-repeat, url(images/img_flwr.gif) right bottom no-repeat, url(images/paper.gif) left top repeat;\r\n    padding: 15px;\r\n    background-size: 50px, 130px, auto;\r\n}\r\n</style>\r\n</head>\r\n<body>\r\n\r\n<div id=\"example1\">\r\n<h1>Lorem Ipsum Dolor</h1>\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\r\n<p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</p>\r\n</div>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL),
(972, 111, '<html>\r\n<head>\r\n<style>\r\n#p1 {background-color:rgba(255,0,0,0.3);}\r\n#p2 {background-color:rgba(0,255,0,0.3);}\r\n#p3 {background-color:rgba(0,0,255,0.3);}\r\n#p4 {background-color:rgba(192,192,192,0.3);}\r\n#p5 {background-color:rgba(255,255,0,0.3);}\r\n#p6 {background-color:rgba(255,0,255,0.3);}\r\n</style>\r\n</head>\r\n<body>\r\n\r\n<p>RGBA colors:</p>\r\n<p id=\"p1\">Red</p>\r\n<p id=\"p2\">Green</p>\r\n<p id=\"p3\">Blue</p>\r\n<p id=\"p4\">Grey</p>\r\n<p id=\"p5\">Yellow</p>\r\n<p id=\"p6\">Cerise</p>\r\n\r\n</body>\r\n</html>\r\n', NULL, NULL, NULL),
(973, 111, '<html>\r\n<head>\r\n<style>\r\n#p1 {background-color:hsl(120,100%,50%);}\r\n#p2 {background-color:hsl(120,100%,75%);}\r\n#p3 {background-color:hsl(120,100%,25%);}\r\n#p4 {background-color:hsl(120,60%,70%);}\r\n#p5 {background-color:hsl(290,100%,50%);}\r\n#p6 {background-color:hsl(290,60%,70%);}\r\n</style>\r\n</head>\r\n<body>\r\n\r\n<p>HSL colors:</p>\r\n<p id=\"p1\">Green</p>\r\n<p id=\"p2\">Light green</p>\r\n<p id=\"p3\">Dark green</p>\r\n<p id=\"p4\">Pastel green</p>\r\n<p id=\"p5\">Violet</p>\r\n<p id=\"p6\">Pastel violet</p>\r\n\r\n</body>\r\n</html>\r\n', NULL, NULL, NULL),
(974, 111, '<html>\r\n<head>\r\n<style>\r\n#p1 {background-color:hsla(60,100%,50%,0.3);}\r\n#p2 {background-color:hsla(120,100%,75%,0.3);}\r\n#p3 {background-color:hsla(120,100%,25%,0.3);}\r\n#p4 {background-color:hsla(120,60%,70%,0.3);}\r\n#p5 {background-color:hsla(290,100%,50%,0.3);}\r\n#p6 {background-color:hsla(290,60%,70%,0.3);}\r\n</style>\r\n</head>\r\n<body>\r\n\r\n<p>HSLA colors:</p>\r\n<p id=\"p1\">Green</p>\r\n<p id=\"p2\">Light green</p>\r\n<p id=\"p3\">Dark green</p>\r\n<p id=\"p4\">Pastel green</p>\r\n<p id=\"p5\">Violet</p>\r\n<p id=\"p6\">Pastel violet</p>\r\n\r\n</body>\r\n</html>\r\n', NULL, NULL, NULL),
(975, 111, '\r\n<html>\r\n<head>\r\n<style>\r\n#p1 {background-color:rgb(255,0,0);opacity:0.6;}\r\n#p2 {background-color:rgb(0,255,0);opacity:0.6;}\r\n#p3 {background-color:rgb(0,0,255);opacity:0.6;}\r\n#p4 {background-color:rgb(192,192,192);opacity:0.6;}\r\n#p5 {background-color:rgb(255,255,0);opacity:0.6;}\r\n#p6 {background-color:rgb(255,0,255);opacity:0.6;}\r\n</style>\r\n</head>\r\n<body>\r\n\r\n<p>Elements with opacity:</p>\r\n<p id=\"p1\">Red</p>\r\n<p id=\"p2\">Green</p>\r\n<p id=\"p3\">Blue</p>\r\n<p id=\"p4\">Grey</p>\r\n<p id=\"p5\">Yellow</p>\r\n<p id=\"p6\">Cerise</p>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL),
(982, 112, '<html>\r\n<head>\r\n<style>\r\n#grad1 {\r\n    height: 200px;\r\n    background: red; /* For browsers that do not support gradients */\r\n    background: -webkit-linear-gradient(red, yellow); /* For Safari 5.1 to 6.0 */\r\n    background: -o-linear-gradient(red, yellow); /* For Opera 11.1 to 12.0 */\r\n    background: -moz-linear-gradient(red, yellow); /* For Firefox 3.6 to 15 */\r\n    background: linear-gradient(red, yellow); /* Standard syntax (must be last) */\r\n}\r\n</style>\r\n</head>\r\n<body>\r\n\r\n<h3>Linear Gradient - Từ trên xuống dưới</h3>\r\n<p>Ví dụ: cho thấy một linear gradient  bắt đầu ở phía trên. Nó bắt đầu màu đỏ, chuyển sang màu vàng:</p>\r\n\r\n<div id=\"grad1\"></div>\r\n\r\n<p><strong>Chú ý:</strong> Thuộc tính này Internet Explorer 9 và các phiên bản trước đó không hỗ trợ.</p>\r\n\r\n</body>\r\n</html>\r\n', NULL, NULL, NULL),
(983, 112, '\r\n<html>\r\n<head>\r\n<style>\r\n#grad1 {\r\n    height: 200px;\r\n    background: red; /* For browsers that do not support gradients */    \r\n    background: -webkit-linear-gradient(left, red , yellow); /* For Safari 5.1 to 6.0 */\r\n    background: -o-linear-gradient(right, red, yellow); /* For Opera 11.1 to 12.0 */\r\n    background: -moz-linear-gradient(right, red, yellow); /* For Firefox 3.6 to 15 */\r\n    background: linear-gradient(to right, red , yellow); /* Standard syntax (must be last) */\r\n}\r\n</style>\r\n</head>\r\n<body>\r\n\r\n<h3>Linear Gradient - Từ trái sang phải</h3>\r\n<p>Ví dụ: cho thấy một linear gradient  bắt đầu ở bên trái. Nó bắt đầu màu đỏ, chuyển sang màu vàng:</p>\r\n\r\n<div id=\"grad1\"></div>\r\n\r\n<p><strong>Chú ý:</strong> Thuộc tính này. Internet Explorer 9 và các phiên bản trước đó không hỗ trợ.</p>\r\n\r\n</body>\r\n</html>\r\n', NULL, NULL, NULL),
(984, 112, '<html>\r\n<head>\r\n<style>\r\n#grad1 {\r\n    height: 200px;\r\n    background: red; /* For browsers that do not support gradients */    \r\n    background: -webkit-linear-gradient(left top, red, yellow); /* For Safari 5.1 to 6.0 */\r\n    background: -o-linear-gradient(bottom right, red, yellow); /* For Opera 11.1 to 12.0 */\r\n    background: -moz-linear-gradient(bottom right, red, yellow); /* For Firefox 3.6 to 15 */\r\n    background: linear-gradient(to bottom right, red, yellow); /* Standard syntax (must be last) */\r\n}\r\n</style>\r\n</head>\r\n<body>\r\n\r\n<h3>Linear Gradient - Diagonal</h3>\r\n<p>Ví dụ: cho thấy một linear gradient  bắt đầu ở phía trên, bên trái. Nó bắt đầu màu đỏ, chuyển sang màu vàng:</p>\r\n\r\n<div id=\"grad1\"></div>\r\n\r\n<p><strong>Chú ý:</strong> Thuộc tính này. Internet Explorer 9 và các phiên bản trước đó không hỗ trợ.</p\r\n\r\n</body>\r\n</html>\r\n', NULL, NULL, NULL),
(985, 112, '\r\n<html>\r\n   <head>\r\n      <style>\r\n         #grad2 {\r\n            height: 100px;\r\n            background: -webkit-linear-gradient(red, orange, yellow, red, blue, green,pink); \r\n            background: -o-linear-gradient(red, orange, yellow, red, blue, green,pink); \r\n            background: -moz-linear-gradient(red, orange, yellow, red, blue, green,pink); \r\n            background: linear-gradient(red, orange, yellow, red, blue, green,pink); \r\n         }\r\n      </style>\r\n   </head>\r\n   <body>\r\n      <div id=\"grad2\"></div>\r\n   </body>\r\n</html> \r\n', NULL, NULL, NULL),
(986, 112, '\r\n<html>\r\n   <head>\r\n      <style>\r\n         #grad1 {\r\n            height: 100px;\r\n            width: 550px;\r\n            background: -webkit-radial-gradient(red 5%, green 15%, pink 60%); \r\n            background: -o-radial-gradient(red 5%, green 15%, pink 60%); \r\n            background: -moz-radial-gradient(red 5%, green 15%, pink 60%); \r\n            background: radial-gradient(red 5%, green 15%, pink 60%); \r\n         }\r\n      </style>\r\n   </head>\r\n   <body>\r\n      <div id=\"grad1\"></div>\r\n   </body>\r\n</html> \r\n', NULL, NULL, NULL),
(987, 112, '\r\n<html>\r\n   <head>\r\n      <style>\r\n         #grad1 {\r\n            height: 100px;\r\n            width: 550px;\r\n            background: -webkit-repeating-radial-gradient(blue, yellow 10%, green 15%); \r\n            background: -o-repeating-radial-gradient(blue, yellow 10%, green 15%);\r\n            background: -moz-repeating-radial-gradient(blue, yellow 10%, green 15%);\r\n            background: repeating-radial-gradient(blue, yellow 10%, green 15%); \r\n         }\r\n      </style>\r\n   </head>\r\n   <body>\r\n      <div id=\"grad1\"></div>\r\n   </body>\r\n</html>', NULL, NULL, NULL),
(1004, 113, '<html>\r\n   <head>\r\n   \r\n      <style>\r\n         h1 {\r\n            text-shadow: 2px 2px;\r\n         }\r\n         h2 {\r\n            text-shadow: 2px 2px red;\r\n         }\r\n         h3 {\r\n            text-shadow: 2px 2px 5px red;\r\n         }\r\n         h4 {\r\n            color: white;\r\n            text-shadow: 2px 2px 4px #000000;\r\n         }\r\n         h5 {\r\n            text-shadow: 0 0 3px #FF0000;\r\n         }\r\n         h6 {\r\n            text-shadow: 0 0 3px #FF0000, 0 0 5px #0000FF;\r\n         }\r\n         p {\r\n            color: white;\r\n            text-shadow: 1px 1px 2px black, 0 0 25px blue, 0 0 5px darkblue;\r\n         }\r\n      </style>\r\n      \r\n   </head>\r\n   <body>\r\n   \r\n      <h1>Chào mừng các bạn đến website Hiệp Sĩ It dot com</h1>\r\n      <h2>Chào mừng các bạn đến website Hiệp Sĩ It dot com</h2>\r\n      <h3>Chào mừng các bạn đến website Hiệp Sĩ It dot com</h3>\r\n      <h4>Chào mừng các bạn đến website Hiệp Sĩ It dot com</h4>\r\n      <h5>Chào mừng các bạn đến website Hiệp Sĩ It dot com</h5>\r\n      <h6>Chào mừng các bạn đến website Hiệp Sĩ It dot com</h6>\r\n      <p>Chào mừng các bạn đến website Hiệp Sĩ It dot com</p>\r\n      \r\n   </body>\r\n</html>', NULL, NULL, NULL),
(1005, 113, '<html>\r\n<head>\r\n<style> \r\ndiv {\r\n    width: 300px;\r\n    height: 100px;\r\n    padding: 15px;\r\n    background-color: yellow;\r\n    box-shadow: 10px 10px;\r\n}\r\n</style>\r\n</head>\r\n<body>\r\n\r\n<div>Phần tử Div có Box shadow</div>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL),
(1006, 113, '<html>\r\n<head>\r\n<style>\r\ndiv.card {\r\n  width: 250px;\r\n  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);\r\n  text-align: center;\r\n}\r\n\r\ndiv.header {\r\n    background-color: #4CAF50;\r\n    color: white;\r\n    padding: 10px;\r\n    font-size: 40px;\r\n}\r\n\r\ndiv.container {\r\n    padding: 10px;\r\n}\r\n</style>\r\n</head>\r\n<body>\r\n\r\n<h2>Cards</h2>\r\n\r\n<p>Sử dụng thuộc tính box-show tạo trang giống thẻ (card):</p>\r\n\r\n<div class=\"card\">\r\n  <div class=\"header\">\r\n    <h1>1</h1>\r\n  </div>\r\n\r\n  <div class=\"container\">\r\n    <p>Tháng 1, 2016</p>\r\n  </div>\r\n</div>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL),
(1007, 113, '<html>\r\n<head>\r\n<style>\r\ndiv.polaroid {\r\n  width: 250px;\r\n  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);\r\n  text-align: center;\r\n}\r\n\r\ndiv.container {\r\n  padding: 10px;\r\n}\r\n</style>\r\n</head>\r\n<body>\r\n\r\n<h2>Hình thông tin chứng khoán</h2>\r\n\r\n\r\n<div class=\"polaroid\">\r\n  <img src=\"images/tinchungkhoan.jpg\"  style=\"width:100%\">\r\n  <div class=\"container\">\r\n    <p>Thông tin chứng khoán</p>\r\n  </div>\r\n</div>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL),
(1015, 114, '<html>\r\n    <head>\r\n        <meta charset=\"UTF-8\">        \r\n        <style type=\"text/css\">\r\n            p{\r\n                white-space: nowrap;\r\n                border: solid 1px;\r\n                width: 100px;\r\n                height: 18px;\r\n                text-overflow: ellipsis;\r\n                overflow: hidden;\r\n            }\r\n        </style>\r\n    </head>\r\n    <body>\r\n        <p>Chào mừng các bạn đến website Hiệp Sĩ It do Com</p>\r\n    </body>\r\n</html>', NULL, NULL, NULL),
(1016, 114, '<!DOCTYPE html>\r\n<html>\r\n    <head>\r\n        <meta charset=\"UTF-8\"> \r\n        <style type=\"text/css\">\r\n            div{\r\n                border: solid 1px;\r\n                width: 100px;\r\n            }\r\n            .breakword{\r\n                word-wrap: break-word;\r\n            }\r\n        </style>\r\n    </head>\r\n    <body>\r\n        <h5>No break-word</h5>\r\n        <div>Chào mừng các bạn đến website Hiệp Sĩ IT dot Com</div>\r\n        <h5>Break-word</h5>\r\n          <div>Chào mừng các bạn đến website Hiệp Sĩ IT dot Com</div>\r\n    </body>\r\n</html>', NULL, NULL, NULL),
(1017, 114, '<html>\r\n    <head>\r\n        <meta charset=\"UTF-8\">\r\n      \r\n        <style type=\"text/css\">\r\n            div{\r\n                border: solid 1px;\r\n                width: 120px;\r\n            }\r\n            .break-all{\r\n                word-break: break-all;\r\n            }\r\n            .keep-all{\r\n                word-break: keep-all;\r\n            }\r\n        </style>\r\n    </head>\r\n    <body>\r\n        <h5>Break All</h5>\r\n        <div class=\"keep-all\">Chào mừng các bạn đến với website Hiệp Sĩ IT dot Com</div>\r\n        <h5>Keep All</h5>\r\n        <div class=\"break-all\">Chào mừng các bạn đến với website Hiệp Sĩ IT dot Com</div>\r\n    </body>\r\n</html>', NULL, NULL, NULL),
(1025, 115, '<html>\r\n<head>\r\n<style> \r\n@font-face {\r\n   font-family: myFirstFont;\r\n   src: url(sansation_light.woff);\r\n}\r\n\r\ndiv {\r\n   font-family: myFirstFont;\r\n}\r\n</style>\r\n</head>\r\n<body>\r\n\r\n<div>\r\nVới CSS3, các trang web cuối cùng có thể sử dụng fonts chữ khác với các fonts chữ \"web-safe\" đã được chọn trước.\r\n</div>\r\n\r\n<p><b>Chú ý:</b> Internet Explorer 8 và các phiên bản trước đó không hỗ trợ @font-face.</p>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL),
(1026, 115, '<html>\r\n<head>\r\n<style> \r\n@font-face {\r\n   font-family: myFirstFont;\r\n   src: url(sansation_light.woff);\r\n}\r\n\r\n@font-face {\r\n   font-family: myFirstFont;\r\n   src: url(sansation_bold.woff);\r\n   font-weight: bold;\r\n}\r\n\r\ndiv {\r\n   font-family: myFirstFont;\r\n}\r\n</style>\r\n</head>\r\n<body>\r\n\r\n<div>\r\nVới CSS3, các trang web <b>cuối cùng </b>có thể sử dụng fonts chữ khác với các fonts chữ \"web-safe\" đã được chọn trước.\r\n</div>\r\n\r\n<p><b>Chú ý:</b> Internet Explorer 8 và các phiên bản trước đó không hỗ trợ @font-face.</p>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL),
(1039, 116, '<html>\r\n   <head>\r\n   \r\n      <style>\r\n         div {\r\n            width: 300px;\r\n            height: 100px;\r\n            background-color: pink;\r\n            border: 1px solid black;\r\n         }\r\n         div#myDiv {\r\n            /* IE 9 */\r\n            -ms-transform: rotate(20deg);\r\n            \r\n            /* Safari */\r\n            -webkit-transform: rotate(20deg);\r\n            \r\n            /* Cu phap chuan */\r\n            transform: rotate(20deg);\r\n         }\r\n      </style>\r\n      \r\n   </head>\r\n   <body>\r\n      <div>\r\n      Vi du 2D Transform trong CSS.\r\n      </div>\r\n      \r\n      <div id=\"myDiv\">\r\n      Vi du 2D Transform trong CSS\r\n      </div>\r\n   </body>\r\n</html>', NULL, NULL, NULL),
(1040, 116, '\r\n<html>\r\n   <head>\r\n   \r\n      <style>\r\n         div {\r\n            width: 300px;\r\n            height: 100px;\r\n            background-color: pink;\r\n            border: 1px solid black;\r\n         }\r\n         div#myDiv {\r\n            /* IE 9 */\r\n            -ms-transform: rotate(-20deg); \r\n         \r\n            /* Safari */\r\n            -webkit-transform: rotate(-20deg);\r\n         \r\n            /* Cu phap chuan */	\r\n            transform: rotate(-20deg);\r\n         }\r\n      </style>\r\n      \r\n   </head>\r\n   <body>\r\n      <div>\r\n      Vi du 2D Transform trong CSS.\r\n      </div>\r\n      \r\n      <div id=\"myDiv\">\r\n      Vi du 2D Transform trong CSS\r\n      </div>\r\n   </body>\r\n</html>\r\n', NULL, NULL, NULL),
(1041, 116, '<html>\r\n   <head>\r\n   \r\n      <style>\r\n         div {\r\n            width: 300px;\r\n            height: 100px;\r\n            background-color: pink;\r\n            border: 1px solid black;\r\n         }\r\n         div#skewDiv {\r\n            /* IE 9 */\r\n            -ms-transform: skewX(20deg); \r\n            \r\n            /* Safari */\r\n            -webkit-transform: skewX(20deg);\r\n            \r\n            /* Cu phap chuan */	\r\n            transform: skewX(20deg);\r\n         }\r\n      </style>\r\n      \r\n   </head>\r\n   <body>\r\n      <div>\r\n      Vi du 2D Transform trong CSS.\r\n      </div>\r\n      \r\n      <div id=\"skewDiv\">\r\n      Vi du 2D Transform trong CSS\r\n      </div>\r\n   </body>\r\n</html>', NULL, NULL, NULL),
(1042, 116, '<html>\r\n   <head>\r\n   \r\n      <style>\r\n         div {\r\n            width: 300px;\r\n            height: 100px;\r\n            background-color: pink;\r\n            border: 1px solid black;\r\n         }\r\n         div#skewDiv {\r\n            /* IE 9 */\r\n            -ms-transform: skewY(20deg); \r\n            \r\n            /* Safari */\r\n            -webkit-transform: skewY(20deg); \r\n            \r\n            /* Cu phap chuan */	\r\n            transform: skewY(20deg);\r\n         }\r\n      </style>\r\n      \r\n   </head>\r\n   <body>\r\n      <div>\r\n      Vi du 2D Transform trong CSS.\r\n      </div>\r\n      \r\n      <div id=\"skewDiv\">\r\n      Vi du 2D Transform trong CSS\r\n      </div>\r\n   </body>\r\n</html>', NULL, NULL, NULL),
(1043, 116, '<html>\r\n   <head>\r\n   \r\n      <style>\r\n         div {\r\n            width: 300px;\r\n            height: 100px;\r\n            background-color: pink;\r\n            border: 1px solid black;\r\n         }\r\n         div#myDiv1 {\r\n            /* IE 9 */\r\n            -ms-transform: matrix(1, -0.3, 0, 1, 0, 0);\r\n            \r\n            /* Safari */\r\n            -webkit-transform: matrix(1, -0.3, 0, 1, 0, 0); \r\n            \r\n            /* Cu phap chuan */\r\n            transform: matrix(1, -0.3, 0, 1, 0, 0); \r\n         }\r\n      </style>\r\n      \r\n   </head>\r\n   <body>\r\n      <div>\r\n      Vi du 2D Transform trong CSS.\r\n      </div>\r\n      \r\n      <div id=\"myDiv1\">\r\n      Vi du 2D Transform trong CSS\r\n      </div>\r\n   </body>\r\n</html>', NULL, NULL, NULL),
(1044, 116, '<html>\r\n   <head>\r\n   \r\n      <style>\r\n         div {\r\n            width: 300px;\r\n            height: 100px;\r\n            background-color: pink;\r\n            border: 1px solid black;\r\n         }\r\n         div#myDiv2 {\r\n            /* IE 9 */\r\n            -ms-transform: matrix(1, 0, 0.5, 1, 150, 0);\r\n            \r\n            /* Safari */	\r\n            -webkit-transform: matrix(1, 0, 0.5, 1, 150, 0);\r\n            \r\n            /* Cu phap chuan */\r\n            transform: matrix(1, 0, 0.5, 1, 150, 0); \r\n         }\r\n      </style>\r\n      \r\n   </head>\r\n   <body>\r\n      <div>\r\n      Vi du 2D Transform trong CSS.\r\n      </div>\r\n      \r\n      <div id=\"myDiv2\">\r\n      Vi du 2D Transform trong CSS\r\n      </div>\r\n   </body>\r\n</html>', NULL, NULL, NULL),
(1052, 118, '<html>\r\n   <head>\r\n   \r\n      <style type=\"text/css\">\r\n         h1 {\r\n            -moz-animation-duration: 3s;\r\n            -webkit-animation-duration: 3s;\r\n            -moz-animation-name: slidein;\r\n            -webkit-animation-name: slidein;\r\n         }\r\n         @-moz-keyframes slidein {\r\n            from {\r\n               margin-left:100%;\r\n               width:300%\r\n            }\r\n            to {\r\n               margin-left:0%;\r\n               width:100%;\r\n            }\r\n         }\r\n         @-webkit-keyframes slidein {\r\n            from {\r\n               margin-left:100%;\r\n               width:300%\r\n            }\r\n            to {\r\n               margin-left:0%;\r\n               width:100%;\r\n            }\r\n         }\r\n      </style>\r\n      \r\n   </head>\r\n   <body>\r\n      <h1>Hoc CSS co ban tai Hiep Sĩ It</h1>\r\n      <p>Vi du hieu ung di chuyen tu trai qua phai.</p>\r\n	  <button onclick=\"myFunction()\">Reload page</button>\r\n      <script>\r\n           function myFunction() {\r\n           location.reload();\r\n           }\r\n      </script>\r\n   </body>\r\n</html>', NULL, NULL, NULL),
(1053, 118, '<html>\r\n   <head>\r\n   \r\n      <style type=\"text/css\">\r\n         h1 {\r\n            -moz-animation-duration: 3s;\r\n            -webkit-animation-duration: 3s;\r\n            -moz-animation-name: slidein;\r\n            -webkit-animation-name: slidein;\r\n         }\r\n         @-moz-keyframes slidein {\r\n            from {\r\n               margin-left:100%;\r\n               width:300%\r\n            }\r\n            75% {\r\n               font-size:300%;\r\n               margin-left:25%;\r\n               width:150%;\r\n            }\r\n            to {\r\n               margin-left:0%;\r\n               width:100%;\r\n            }\r\n         }\r\n         @-webkit-keyframes slidein {\r\n            from {\r\n               margin-left:100%;\r\n               width:300%\r\n            }\r\n            75% {\r\n               font-size:300%;\r\n               margin-left:25%;\r\n               width:150%;\r\n            }\r\n            to {\r\n               margin-left:0%;\r\n               width:100%;\r\n            }\r\n         }\r\n      </style>\r\n      \r\n   </head>\r\n   <body>\r\n      <h1>Hoc CSS co ban tai Hiệp Sĩ It</h1>\r\n      \r\n      <p>Vi du hieu ung di chuyen tu phai qua trai.</p>\r\n	  <button onclick=\"myFunction()\">Reload page</button>\r\n      <script>\r\n           function myFunction() {\r\n           location.reload();\r\n           }\r\n      </script>\r\n   </body>\r\n</html>', NULL, NULL, NULL),
(1054, 117, '<html>  \r\n<head>  \r\n<style>  \r\ndiv {  \r\n    width: 300px;  \r\n    height: 100px;  \r\n    background-color: lightpink;  \r\n    border: 1px solid black;  \r\n}  \r\ndiv#myDiv {  \r\n    -webkit-transform: rotateX(150deg); /* Safari */  \r\n    transform: rotateX(150deg); /* Standard syntax */  \r\n}  \r\n</style>  \r\n</head>  \r\n<body>  \r\n<div>  \r\nThis is Hiệp Sĩ IT!\r\n</div>  \r\n<div id=\"myDiv\">  \r\nThis is Hiệp Sĩ IT! \r\n</div>  \r\n<p><b>Chú ý:</b> Internet Explorer 9 (Và các phiên bản trước đó) không hỗ trợ phương thức rotateX() .</p>  \r\n</body>  \r\n</html>', NULL, NULL, NULL),
(1055, 117, '\r\n<html>  \r\n<head>  \r\n<style>  \r\ndiv {  \r\n    width: 300px;  \r\n    height: 100px;  \r\n    background-color:lightpink;  \r\n    border: 1px solid black;  \r\n}  \r\n  \r\ndiv#myDiv {  \r\n    -webkit-transform: rotateY(150deg); /* Safari */  \r\n    transform: rotateY(150deg); /* Standard syntax */  \r\n}  \r\n</style>   \r\n</head>  \r\n<body>  \r\n<div>  \r\nThis is Hiệp Sĩ IT!\r\n</div>  \r\n<div id=\"myDiv\">  \r\nThis is Hiệp Sĩ IT! \r\n</div>  \r\n<p><b>Chú ý:</b> Internet Explorer 9 (Và các phiên bản trước đó) không hỗ trợ phương thức rotateX() .</p>  \r\n</body>  \r\n</html>', NULL, NULL, NULL),
(1056, 117, '\r\n<html>  \r\n<head>  \r\n<style>  \r\ndiv {  \r\n    width: 300px;  \r\n    height: 100px;  \r\n    background-color: yellow;  \r\n    border: 1px solid black;  \r\n}  \r\ndiv#myDiv {  \r\n    -webkit-transform: rotateZ(90deg); /* Safari */  \r\n    transform: rotateZ(90deg); /* Standard syntax */  \r\n}  \r\n</style>     \r\n</head>  \r\n<body>  \r\n<div>  \r\nThis is Hiệp Sĩ IT!\r\n</div>  \r\n<div id=\"myDiv\">  \r\nThis is Hiệp Sĩ IT! \r\n</div>  \r\n<p><b>Chú ý:</b> Internet Explorer 9 (Và các phiên bản trước đó) không hỗ trợ phương thức rotateX() .</p>  \r\n</body>  \r\n</html>', NULL, NULL, NULL),
(1057, 119, '<html>\r\n   <head>\r\n   \r\n      <style>\r\n         .multi {\r\n            /* Thuoc tinh column-count */\r\n            -webkit-column-count: 4;\r\n            -moz-column-count: 4;\r\n            column-count: 4;\r\n            \r\n            /* Thuoc tinh column-gap */\r\n            -webkit-column-gap: 40px; \r\n            -moz-column-gap: 40px; \r\n            column-gap: 40px;\r\n            \r\n            /* Thuoc tinh column-style */\r\n            -webkit-column-rule-style: solid; \r\n            -moz-column-rule-style: solid; \r\n            column-rule-style: solid;\r\n         }\r\n      </style>\r\n      \r\n   </head>\r\n   <body>\r\n   \r\n      <div class=\"multi\">\r\n      	Tra loi bao chi hoi dau thang, Pho chu tich thuong truc VFF Tran Quoc Tuan va HLV Nguyen Huu Thang tung de cap toi \r\n		kha nang mo cua cho cau thu nhap tich len tuyen. Theo ong Tran Quoc Tuan, nhung cau thu nay neu dap ung duoc yeu cau \r\n		ve chuyen mon do HLV Nguyen Huu Thang dat rat hi deu co kha nang len tuyen.\r\n		Tra loi bao chi hoi dau thang, Pho chu tich thuong truc VFF Tran Quoc Tuan va HLV Nguyen Huu Thang tung de cap toi \r\n		kha nang mo cua cho cau thu nhap tich len tuyen. Theo ong Tran Quoc Tuan, nhung cau thu nay neu dap ung duoc yeu cau \r\n		ve chuyen mon do HLV Nguyen Huu Thang dat rat hi deu co kha nang len tuyen.\r\n      </div>\r\n      \r\n   </body>\r\n</html>', NULL, NULL, NULL),
(1058, 119, '\r\n<html>\r\n   <head>\r\n   \r\n       <style>\r\n .multi {\r\n   /* Thuoc tinh column-count */\r\n   -webkit-column-count: 4;\r\n   -moz-column-count: 4;\r\n   column-count: 4;\r\n   \r\n   /* Thuoc tinh column-gap */\r\n   -webkit-column-gap: 40px; \r\n   -moz-column-gap: 40px; \r\n   column-gap: 40px;\r\n}\r\n</style>\r\n      \r\n   </head>\r\n   <body>\r\n   \r\n      <div class=\"multi\">\r\n      	Tra loi bao chi hoi dau thang, Pho chu tich thuong truc VFF Tran Quoc Tuan va HLV Nguyen Huu Thang tung de cap toi \r\n		kha nang mo cua cho cau thu nhap tich len tuyen. Theo ong Tran Quoc Tuan, nhung cau thu nay neu dap ung duoc yeu cau \r\n		ve chuyen mon do HLV Nguyen Huu Thang dat rat hi deu co kha nang len tuyen.\r\n		Tra loi bao chi hoi dau thang, Pho chu tich thuong truc VFF Tran Quoc Tuan va HLV Nguyen Huu Thang tung de cap toi \r\n		kha nang mo cua cho cau thu nhap tich len tuyen. Theo ong Tran Quoc Tuan, nhung cau thu nay neu dap ung duoc yeu cau \r\n		ve chuyen mon do HLV Nguyen Huu Thang dat rat hi deu co kha nang len tuyen.\r\n      </div>\r\n         </body>\r\n</html>', NULL, NULL, NULL),
(1063, 120, '<html>  \r\n<head>  \r\n<style>  \r\ndiv {  \r\n    border: 2px solid;  \r\n    padding: 20px;  \r\n    width: 300px;  \r\n    resize: horizontal;  \r\n    overflow: auto;  \r\n}  \r\n</style>  \r\n</head>  \r\n<body>  \r\n<p><b>Chú ý:</b> Internet Explorer không hỗ trợ thuộc tính resize.</p>  \r\n<div>Ví dụ này đặt lại kích thước chiều rộng của phần tử div.</div>  \r\n</body>  \r\n</html>', NULL, NULL, NULL),
(1064, 120, '\r\n<html>  \r\n<head>  \r\n<style>  \r\ndiv {  \r\n    border: 2px solid;  \r\n    padding: 20px;  \r\n    width: 300px;  \r\n    resize: vertical;  \r\n    overflow: auto;  \r\n}  \r\n</style>    \r\n</head>  \r\n<body>  \r\n<p><b>Chú ý:</b> Internet Explorer không hỗ trợ thuộc tính resize.</p>  \r\n<div>Ví dụ này đặt lại kích thước chiều cao của phần tử div.</div>  \r\n</body>  \r\n</html>', NULL, NULL, NULL),
(1065, 120, '\r\n<html>  \r\n<head>  \r\n<style>  \r\ndiv {  \r\n    border: 2px solid;  \r\n    padding: 20px;  \r\n    width: 300px;  \r\n    resize: both;  \r\n    overflow: auto;  \r\n}  \r\n</style> \r\n</head>  \r\n<body>  \r\n<p><b>Chú ý:</b> Internet Explorer không hỗ trợ thuộc tính resize.</p>  \r\n<div>Ví dụ này đặt lại kích thước chiều rộng và chiều cao của phần tử div.</div>  \r\n</body>  \r\n</html>', NULL, NULL, NULL),
(1066, 120, '\r\n<html>  \r\n<head>  \r\n<style>  \r\ndiv {  \r\n    margin: 20px;  \r\n    padding: 10px;  \r\n    width: 300px;  \r\n    height: 100px;  \r\n    border: 1px solid black;  \r\n    outline: 1px solid red;  \r\n    outline-offset: 10px;  \r\n}  \r\n</style>  \r\n</head>  \r\n<body>  \r\n<p><b>Chú ý:</b> Internet Explorer không hỗ trợ thuộc tính resize.</p>  \r\n<div>Ví dụ này khoảng cách từ đường viền với nội dung 10px.</div>  \r\n</body>  \r\n</html>', NULL, NULL, NULL),
(1067, 121, '<html>\r\n   <head>\r\n   \r\n      <style>\r\n         .div1 {\r\n            width: 200px;\r\n            height: 100px;\r\n            border: 1px solid green;\r\n         }\r\n         .div2 {\r\n            width: 200px;\r\n            height: 100px;    \r\n            padding: 50px;\r\n            border: 1px solid pink;\r\n         }\r\n      </style>\r\n      \r\n   </head>\r\n   <body>\r\n      <div class=\"div1\">Hiệp Sĩ IT dot Com</div></br>\r\n      <div class=\"div2\">Hiệp Sĩ IT dot Com</div>\r\n   </body>\r\n</html>', NULL, NULL, NULL),
(1068, 121, '\r\n<html>\r\n   <head>\r\n   \r\n      <style>\r\n         .div1 {\r\n            width: 300px;\r\n            height: 100px;\r\n            border: 1px solid blue;\r\n            box-sizing: border-box;\r\n         }\r\n         .div2 {\r\n            width: 300px;\r\n            height: 100px;\r\n            padding: 50px;\r\n            border: 1px solid red;\r\n            box-sizing: border-box;\r\n         }\r\n      </style>\r\n      \r\n   </head>\r\n   <body>\r\n      <div class=\"div1\">Hiệp Sĩ IT dot Com</div></br>\r\n      <div class=\"div2\">Hiệp Sĩ IT dot Com</div>\r\n   </body>\r\n</html>', NULL, NULL, NULL),
(1070, 122, '<html>  \r\n<head>  \r\n<style>  \r\n.header{margin:-8px -8px 0px;background-image:linear-gradient(145deg,#7379ff,#b524ef);color:white;text-align:center;padding:10px;}  \r\n.container{width:100%}  \r\n.left{width:15%;float:left;background:#F00}  \r\n.body{width:65%;float:left;background-color:pink;padding:5px;}  \r\n.right{width:15%;float:left;border:#3FC}  \r\n.footer{margin:-8px;clear:both;background-image:linear-gradient(145deg,#7379ff,#b524ef);color:white;text-align:center;padding:10px;}  \r\n</style>  \r\n</head>  \r\n<body>  \r\n<div class=\"header\"><h2>Hiệp Sĩ IT dot com</h2></div>  \r\n  \r\n<div class=\"container\">  \r\n<div class=\"left\">  \r\n<p>Left Page</p>  \r\n</div>  \r\n<div class=\"body\">  \r\n<h1>Body Page</h1>  \r\n<p>Page Content goes here</p><p>Page Content goes here</p><p>Page Content goes here</p>  \r\n<p>Page Content goes here</p><p>Page Content goes here</p><p>Page Content goes here</p>  \r\n<p>Page Content goes here</p><p>Page Content goes here</p><p>Page Content goes here</p>  \r\n<p>Page Content goes here</p><p>Page Content goes here</p><p>Page Content goes here</p>  \r\n<p>Page Content goes here</p>  \r\n</div>  \r\n<div class=\"right\">  \r\n<p>Right Page</p>  \r\n</div>  \r\n</div>  \r\n  \r\n<div class=\"footer\">  \r\n<p>Footer</p>  \r\n</div>  \r\n  \r\n</body>  \r\n</html>', NULL, NULL, NULL),
(1080, 123, '<html>  \r\n<head>\r\n<style>  \r\ntable, th, td {  \r\n    border: 1px solid black;  \r\n}  \r\n</style>  \r\n</head>\r\n<body>  \r\n<table>  \r\n<tr><th>Họ và tên</th><th>Giới tính</th><th>Lương</th></tr>  \r\n<tr><td>Thích Học Lại</td><td>Nam</td><td>10000000</td></tr>  \r\n<tr><td>Thích Ăn Chơi</td><td>Nữ</td><td>3000000</td></tr>  \r\n<tr><td>Thích Thi Lại</td><td>Nam</td><td>4000000</td></tr>  \r\n<tr><td>Thích Không Thích</td><td>Nữ</td><td>500000</td></tr>  \r\n</table>  \r\n</body>\r\n</html>  \r\n', NULL, NULL, NULL),
(1081, 123, '\r\n<html>  \r\n<head>\r\n<style>  \r\ntable, th, td {  \r\n    border: 1px solid black;  \r\n    border-collapse: collapse;  \r\n}  \r\n</style>  \r\n</head>\r\n<body>  \r\n<table>  \r\n<tr><th>Họ và tên</th><th>Giới tính</th><th>Lương</th></tr>  \r\n<tr><td>Thích Học Lại</td><td>Nam</td><td>10000000</td></tr>  \r\n<tr><td>Thích Ăn Chơi</td><td>Nữ</td><td>3000000</td></tr>  \r\n<tr><td>Thích Thi Lại</td><td>Nam</td><td>4000000</td></tr>  \r\n<tr><td>Thích Không Thích</td><td>Nữ</td><td>500000</td></tr>  \r\n</table>  \r\n</body>\r\n</html>  \r\n', NULL, NULL, NULL),
(1082, 123, '\r\n<html>  \r\n<head>\r\n<style>  \r\ntable, th, td {  \r\n    border: 1px solid black;  \r\n    border-collapse: collapse;  \r\n}  \r\nth, td {\r\n    padding: 10px;\r\n}\r\n</style>  \r\n</head>\r\n<body>  \r\n<table>  \r\n<tr><th>Họ và tên</th><th>Giới tính</th><th>Lương</th></tr>  \r\n<tr><td>Thích Học Lại</td><td>Nam</td><td>10000000</td></tr>  \r\n<tr><td>Thích Ăn Chơi</td><td>Nữ</td><td>3000000</td></tr>  \r\n<tr><td>Thích Thi Lại</td><td>Nam</td><td>4000000</td></tr>  \r\n<tr><td>Thích Không Thích</td><td>Nữ</td><td>500000</td></tr>  \r\n</table>  \r\n</body>\r\n</html>\r\n', NULL, NULL, NULL),
(1083, 123, '\r\n<html>  \r\n<head>\r\n<style>  \r\ntable, th, td {  \r\n    border: 1px solid black;  \r\n    border-collapse: collapse;  \r\n}  \r\nth, td {  \r\n    padding: 10px;  \r\n}  \r\ntable#alter tr:nth-child(even) {  \r\n    background-color: #eee;  \r\n}  \r\ntable#alter tr:nth-child(odd) {  \r\n    background-color: #fff;  \r\n}  \r\ntable#alter th {  \r\n    color: white;  \r\n    background-color: gray;  \r\n}  \r\n</style>  \r\n</head>\r\n<body>  \r\n<table id=\"alter\"> \r\n<tr><th>Họ và tên</th><th>Giới tính</th><th>Lương</th></tr>  \r\n<tr><td>Thích Học Lại</td><td>Nam</td><td>10000000</td></tr>  \r\n<tr><td>Thích Ăn Chơi</td><td>Nữ</td><td>3000000</td></tr>  \r\n<tr><td>Thích Thi Lại</td><td>Nam</td><td>4000000</td></tr>  \r\n<tr><td>Thích Không Thích</td><td>Nữ</td><td>500000</td></tr>  \r\n</table>  \r\n</body>\r\n</html>\r\n', NULL, NULL, NULL),
(1104, 124, '<html>\r\n<head>\r\n	<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n	<title>3 Column Layout</title>\r\n	<style type=\"text/css\">\r\n\r\n		/* Layout */\r\n		body {\r\n			min-width: 630px;\r\n		}\r\n\r\n		#container {\r\n			padding-left: 200px;\r\n			padding-right: 190px;\r\n		}\r\n		\r\n		#container .column {\r\n			position: relative;\r\n			float: left;\r\n		}\r\n		\r\n		#center {\r\n			padding: 10px 20px;\r\n			width: 100%;\r\n		}\r\n		\r\n		#left {\r\n			width: 180px;\r\n			padding: 0 10px;\r\n			right: 240px;\r\n			margin-left: -100%;\r\n		}\r\n		\r\n		#right {\r\n			width: 130px;\r\n			padding: 0 10px;\r\n			margin-right: -100%;\r\n		}\r\n		\r\n		#footer {\r\n			clear: both;\r\n		}\r\n		\r\n		/* IE hack */\r\n		* html #left {\r\n			left: 150px;\r\n		}\r\n\r\n		/* Make the columns the same height as each other */\r\n		#container {\r\n			overflow: hidden;\r\n		}\r\n\r\n		#container .column {\r\n			padding-bottom: 1001em;\r\n			margin-bottom: -1000em;\r\n		}\r\n\r\n		/* Fix for the footer */\r\n		* html body {\r\n			overflow: hidden;\r\n		}\r\n		\r\n		* html #footer-wrapper {\r\n			float: left;\r\n			position: relative;\r\n			width: 100%;\r\n			padding-bottom: 10010px;\r\n			margin-bottom: -10000px;\r\n			background: #fff;\r\n		}\r\n\r\n		/* Aesthetics */\r\n		body {\r\n			margin: 0;\r\n			padding: 0;\r\n			font-family:Sans-serif;\r\n			line-height: 1.5em;\r\n		}\r\n		\r\n		p {\r\n			color: #555;\r\n		}\r\n\r\n		nav ul {\r\n			list-style-type: none;\r\n			margin: 0;\r\n			padding: 0;\r\n		}\r\n		\r\n		nav ul a {\r\n			color: darkgreen;\r\n			text-decoration: none;\r\n		}\r\n\r\n		#header, #footer {\r\n			font-size: large;\r\n			padding: 0.3em;\r\n			background: #BCCE98;\r\n		}\r\n\r\n		#left {\r\n			background: #DAE9BC;\r\n		}\r\n		\r\n		#right {\r\n			background: #F7FDEB;\r\n		}\r\n\r\n		#center {\r\n			background: #fff;\r\n		}\r\n\r\n		#container .column {\r\n			padding-top: 1em;\r\n		}\r\n		\r\n	</style>\r\n	\r\n	<script type=\"text/javascript\">\r\n		/* =============================\r\n		This script generates sample text for the body content. \r\n		You can remove this script and any reference to it. \r\n		 ============================= */\r\n		var bodyText=[\"The smaller your reality, the more convinced you are that you know everything.\", \"If the facts don\'t fit the theory, change the facts.\", \"The past has no power over the present moment.\", \"This, too, will pass.\", \"</p><p>You will not be punished for your anger, you will be punished by your anger.\", \"Peace comes from within. Do not seek it without.\", \"<h3>Heading</h3><p>The most important moment of your life is now. The most important person in your life is the one you are with now, and the most important activity in your life is the one you are involved with now.\"]\r\n		function generateText(sentenceCount){\r\n			for (var i=0; i<sentenceCount; i++)\r\n			document.write(bodyText[Math.floor(Math.random()*7)]+\" \")\r\n		}\r\n	</script>	\r\n</head>\r\n\r\n<body>\r\n\r\n	<header id=\"header\"><p>Header...</p></header>\r\n\r\n	<div id=\"container\">\r\n\r\n		<main id=\"center\" class=\"column\">\r\n			<article>\r\n			\r\n				<h1>Heading</h1>\r\n				<p><script>generateText(50)</script></p>\r\n			\r\n			</article>								\r\n		</main>\r\n\r\n		<nav id=\"left\" class=\"column\">\r\n			<h3>Left heading</h3>\r\n			<ul>\r\n				<li><a href=\"#\">Link 1</a></li>\r\n				<li><a href=\"#\">Link 2</a></li>\r\n				<li><a href=\"#\">Link 3</a></li>\r\n				<li><a href=\"#\">Link 4</a></li>\r\n				<li><a href=\"#\">Link 5</a></li>\r\n			</ul>\r\n			<h3>Left heading</h3>\r\n			<ul>\r\n				<li><a href=\"#\">Link 1</a></li>\r\n				<li><a href=\"#\">Link 2</a></li>\r\n				<li><a href=\"#\">Link 3</a></li>\r\n				<li><a href=\"#\">Link 4</a></li>\r\n				<li><a href=\"#\">Link 5</a></li>\r\n			</ul>\r\n\r\n		</nav>\r\n\r\n		<div id=\"right\" class=\"column\">\r\n			<h3>Right heading</h3>\r\n			<p><script>generateText(1)</script></p>\r\n		</div>\r\n\r\n	</div>\r\n\r\n	<div id=\"footer-wrapper\">\r\n		<footer id=\"footer\"><p>Footer...</p></footer>\r\n	</div>\r\n\r\n</body>\r\n\r\n</html>', NULL, NULL, NULL),
(1105, 124, '\r\n<html>\r\n	<head>\r\n		<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n		<title>3 Column, Right Menus</title>\r\n		<style type=\"text/css\">\r\n		\r\n			body{\r\n				margin:0;\r\n				padding:0;\r\n				font-family: Sans-Serif;\r\n				line-height: 1.5em;\r\n			}\r\n			\r\n			#header {\r\n				background: #BCCE98;\r\n				height: 100px;\r\n			}\r\n			\r\n			#header h1 {\r\n				margin: 0;\r\n				padding-top: 15px;\r\n			}\r\n			\r\n			#mainwrapper {\r\n				overflow: hidden;\r\n			}\r\n			\r\n			#contentwrapper{\r\n				float: left;\r\n				width: 100%;\r\n			}\r\n			\r\n			#content {\r\n				margin-right: 460px; /* Width of \'#rightmenu\' and \'#leftmenu\' combined. */\r\n				padding-bottom: 10010px;\r\n				margin-bottom: -10000px;\r\n			}\r\n			\r\n			#leftmenu {\r\n				float: left;\r\n				width: 250px;\r\n				margin-left: -460px; /* Width of \'#rightmenu\' and \'#leftmenu\' combined. */\r\n				padding-bottom: 10010px;\r\n				margin-bottom: -10000px;\r\n				background: #F7FDEB;\r\n			}\r\n			\r\n			#rightmenu {\r\n				float: left;\r\n				width: 210px;\r\n				margin-left: -210px;\r\n				padding-bottom: 10010px;\r\n				margin-bottom: -10000px;\r\n				background: #DAE9BC;\r\n			}\r\n			\r\n			#footer{\r\n				clear: left;\r\n				width: 100%;\r\n				background: #BCCE98;\r\n				text-align: center;\r\n				padding: 5px 0;\r\n			}\r\n			\r\n			.innertube{\r\n				margin: 15px; /* Padding for content */\r\n				margin-top: 0;\r\n			}\r\n		\r\n		\r\n			p {\r\n				color: #555;\r\n			}\r\n	\r\n			nav ul {\r\n				list-style-type: none;\r\n				margin: 0;\r\n				padding: 0;\r\n			}\r\n			\r\n			nav ul a {\r\n				color: darkgreen;\r\n				text-decoration: none;\r\n			}\r\n			\r\n		</style>\r\n		\r\n		<script type=\"text/javascript\">\r\n			/* =============================\r\n			This script generates sample text for the body content. \r\n			You can remove this script and any reference to it. \r\n			 ============================= */\r\n			var bodyText=[\"The smaller your reality, the more convinced you are that you know everything.\", \"If the facts don\'t fit the theory, change the facts.\", \"The past has no power over the present moment.\", \"This, too, will pass.\", \"</p><p>You will not be punished for your anger, you will be punished by your anger.\", \"Peace comes from within. Do not seek it without.\", \"<h3>Heading</h3><p>The most important moment of your life is now. The most important person in your life is the one you are with now, and the most important activity in your life is the one you are involved with now.\"]\r\n			function generateText(sentenceCount){\r\n				for (var i=0; i<sentenceCount; i++)\r\n				document.write(bodyText[Math.floor(Math.random()*7)]+\" \")\r\n			}\r\n		</script>	\r\n	</head>\r\n	\r\n	<body>\r\n			<header id=\"header\">\r\n				<div class=\"innertube\">\r\n					<h1>Header...</h1>\r\n				</div>\r\n			</header>\r\n		<div id=\"mainwrapper\">\r\n		\r\n			<div id=\"contentwrapper\">\r\n				<div id=\"content\">\r\n					<div class=\"innertube\">\r\n						<h1>Heading</h1>\r\n						<p><script>generateText(15)</script></p></div>\r\n				</div>\r\n			</div>\r\n			\r\n			<nav id=\"leftmenu\">\r\n				<div class=\"innertube\">\r\n					<p><script type=\"text/javascript\">generateText(5)</script></p>\r\n				</div>\r\n			</nav>\r\n			\r\n			<nav id=\"rightmenu\">\r\n				<div class=\"innertube\">\r\n					<h3>Right heading</h3>\r\n					<ul>\r\n						<li><a href=\"#\">Link 1</a></li>\r\n						<li><a href=\"#\">Link 2</a></li>\r\n						<li><a href=\"#\">Link 3</a></li>\r\n						<li><a href=\"#\">Link 4</a></li>\r\n						<li><a href=\"#\">Link 5</a></li>\r\n					</ul>\r\n					<h3>Right heading</h3>\r\n					<ul>\r\n						<li><a href=\"#\">Link 1</a></li>\r\n						<li><a href=\"#\">Link 2</a></li>\r\n						<li><a href=\"#\">Link 3</a></li>\r\n						<li><a href=\"#\">Link 4</a></li>\r\n						<li><a href=\"#\">Link 5</a></li>\r\n					</ul>\r\n					<h3>Right heading</h3>\r\n					<ul>\r\n						<li><a href=\"#\">Link 1</a></li>\r\n						<li><a href=\"#\">Link 2</a></li>\r\n						<li><a href=\"#\">Link 3</a></li>\r\n						<li><a href=\"#\">Link 4</a></li>\r\n						<li><a href=\"#\">Link 5</a></li>\r\n					</ul>\r\n				</div>\r\n			</nav>\r\n		</div>\r\n			<footer id=\"footer\">\r\n				<div class=\"innertube\">\r\n					<p>Footer...</p>\r\n				</div>\r\n			</footer>\r\n	\r\n	</body>\r\n\r\n</html>', NULL, NULL, NULL),
(1106, 124, '\r\n<html>\r\n	<head>\r\n		<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n		<title>2 Column Layout — Left Menu with Header & Footer</title>\r\n		<style type=\"text/css\">\r\n		\r\n			body {\r\n				margin:0;\r\n				padding:0;\r\n				font-family: Sans-Serif;\r\n				line-height: 1.5em;\r\n			}\r\n			\r\n			#header {\r\n				background: #ccc;\r\n				height: 100px;\r\n			}\r\n			\r\n			#header h1 {\r\n				margin: 0;\r\n				padding-top: 15px;\r\n			}\r\n			\r\n			main {\r\n				padding-bottom: 10010px;\r\n				margin-bottom: -10000px;\r\n				float: left;\r\n				width: 100%;\r\n			}\r\n			\r\n			#nav {\r\n				padding-bottom: 10010px;\r\n				margin-bottom: -10000px;\r\n				float: left;\r\n				width: 230px;\r\n				margin-left: -100%;\r\n				background: #eee;\r\n			}\r\n			\r\n			#footer {\r\n				clear: left;\r\n				width: 100%;\r\n				background: #ccc;\r\n				text-align: center;\r\n				padding: 4px 0;\r\n			}\r\n	\r\n			#wrapper {\r\n				overflow: hidden;\r\n			}\r\n						\r\n			#content {\r\n				margin-left: 230px; /* Same as \'nav\' width */\r\n			}\r\n			\r\n			.innertube {\r\n				margin: 15px; /* Padding for content */\r\n				margin-top: 0;\r\n			}\r\n		\r\n			p {\r\n				color: #555;\r\n			}\r\n	\r\n			nav ul {\r\n				list-style-type: none;\r\n				margin: 0;\r\n				padding: 0;\r\n			}\r\n			\r\n			nav ul a {\r\n				color: darkgreen;\r\n				text-decoration: none;\r\n			}\r\n		\r\n		</style>\r\n		\r\n		<script type=\"text/javascript\">\r\n			/* =============================\r\n			This script generates sample text for the body content. \r\n			You can remove this script and any reference to it. \r\n			 ============================= */\r\n			var bodyText=[\"The smaller your reality, the more convinced you are that you know everything.\", \"If the facts don\'t fit the theory, change the facts.\", \"The past has no power over the present moment.\", \"This, too, will pass.\", \"</p><p>You will not be punished for your anger, you will be punished by your anger.\", \"Peace comes from within. Do not seek it without.\", \"<h3>Heading</h3><p>The most important moment of your life is now. The most important person in your life is the one you are with now, and the most important activity in your life is the one you are involved with now.\"]\r\n			function generateText(sentenceCount){\r\n				for (var i=0; i<sentenceCount; i++)\r\n				document.write(bodyText[Math.floor(Math.random()*7)]+\" \")\r\n			}\r\n		</script>	\r\n	\r\n	</head>\r\n	\r\n	<body>		\r\n\r\n		<header id=\"header\">\r\n			<div class=\"innertube\">\r\n				<h1>Header...</h1>\r\n			</div>\r\n		</header>\r\n		\r\n		<div id=\"wrapper\">\r\n		\r\n			<main>\r\n				<div id=\"content\">\r\n					<div class=\"innertube\">\r\n						<h1>Heading</h1>\r\n						<p><script>generateText(20)</script></p>\r\n					</div>\r\n				</div>\r\n			</main>\r\n			\r\n			<nav id=\"nav\">\r\n				<div class=\"innertube\">\r\n					<h3>Left heading</h3>\r\n					<ul>\r\n						<li><a href=\"#\">Link 1</a></li>\r\n						<li><a href=\"#\">Link 2</a></li>\r\n						<li><a href=\"#\">Link 3</a></li>\r\n						<li><a href=\"#\">Link 4</a></li>\r\n						<li><a href=\"#\">Link 5</a></li>\r\n					</ul>\r\n					<h3>Left heading</h3>\r\n					<ul>\r\n						<li><a href=\"#\">Link 1</a></li>\r\n						<li><a href=\"#\">Link 2</a></li>\r\n						<li><a href=\"#\">Link 3</a></li>\r\n						<li><a href=\"#\">Link 4</a></li>\r\n						<li><a href=\"#\">Link 5</a></li>\r\n					</ul>\r\n					<h3>Left heading</h3>\r\n					<ul>\r\n						<li><a href=\"#\">Link 1</a></li>\r\n						<li><a href=\"#\">Link 2</a></li>\r\n						<li><a href=\"#\">Link 3</a></li>\r\n						<li><a href=\"#\">Link 4</a></li>\r\n						<li><a href=\"#\">Link 5</a></li>\r\n					</ul>\r\n				</div>\r\n			</nav>\r\n		\r\n		</div>\r\n		\r\n		<footer id=\"footer\">\r\n			<div class=\"innertube\">\r\n				<p>Footer...</p>\r\n			</div>\r\n		</footer>\r\n	\r\n	</body>\r\n</html>', NULL, NULL, NULL);
INSERT INTO `sources` (`id`, `lesson_id`, `code`, `code_id`, `created_at`, `updated_at`) VALUES
(1107, 124, '\r\n<html>\r\n	<head>\r\n		<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n		<title>2 Column Layout — Right Menu with Header & Footer</title>\r\n		<style type=\"text/css\">\r\n		\r\n			body {\r\n				margin:0;\r\n				padding:0;\r\n				font-family: Sans-Serif;\r\n				line-height: 1.5em;\r\n			}\r\n			\r\n			header {\r\n				background: #ccc;\r\n				height: 100px;\r\n			}\r\n			\r\n			header h1 {\r\n				margin: 0;\r\n				padding-top: 15px;\r\n			}\r\n			\r\n			main {\r\n				padding-bottom: 10010px;\r\n				margin-bottom: -10000px;\r\n				float: left;\r\n				width: 100%;\r\n			}\r\n			\r\n			nav {\r\n				padding-bottom: 10010px;\r\n				margin-bottom: -10000px;\r\n				float: left;\r\n				width: 230px;\r\n				margin-left: -230px;\r\n				background: #eee;\r\n			}\r\n			\r\n			footer {\r\n				clear: left;\r\n				width: 100%;\r\n				background: #ccc;\r\n				text-align: center;\r\n				padding: 4px 0;\r\n			}\r\n	\r\n			#wrapper {\r\n				overflow: hidden;\r\n			}\r\n						\r\n			#content {\r\n				margin-right: 230px; /* Same as \'nav\' width */\r\n			}\r\n			\r\n			.innertube {\r\n				margin: 15px; /* Padding for content */\r\n				margin-top: 0;\r\n			}\r\n		\r\n			p {\r\n				color: #555;\r\n			}\r\n	\r\n			nav ul {\r\n				list-style-type: none;\r\n				margin: 0;\r\n				padding: 0;\r\n			}\r\n			\r\n			nav ul a {\r\n				color: darkgreen;\r\n				text-decoration: none;\r\n			}\r\n		\r\n		</style>\r\n		\r\n		<script type=\"text/javascript\">\r\n			/* =============================\r\n			This script generates sample text for the body content. \r\n			You can remove this script and any reference to it. \r\n			 ============================= */\r\n			var bodyText=[\"The smaller your reality, the more convinced you are that you know everything.\", \"If the facts don\'t fit the theory, change the facts.\", \"The past has no power over the present moment.\", \"This, too, will pass.\", \"</p><p>You will not be punished for your anger, you will be punished by your anger.\", \"Peace comes from within. Do not seek it without.\", \"<h3>Heading</h3><p>The most important moment of your life is now. The most important person in your life is the one you are with now, and the most important activity in your life is the one you are involved with now.\"]\r\n			function generateText(sentenceCount){\r\n				for (var i=0; i<sentenceCount; i++)\r\n				document.write(bodyText[Math.floor(Math.random()*7)]+\" \")\r\n			}\r\n		</script>	\r\n	\r\n	</head>\r\n	\r\n	<body>		\r\n\r\n		<header>\r\n			<div class=\"innertube\">\r\n				<h1>Header...</h1>\r\n			</div>\r\n		</header>\r\n		\r\n		<div id=\"wrapper\">\r\n		\r\n			<main>\r\n				<div id=\"content\">\r\n					<div class=\"innertube\">\r\n						<h1>Heading</h1>\r\n						<p><script>generateText(20)</script></p>\r\n					</div>\r\n				</div>\r\n			</main>\r\n			\r\n			<nav>\r\n				<div class=\"innertube\">\r\n					<h3>Right heading</h3>\r\n					<ul>\r\n						<li><a href=\"#\">Link 1</a></li>\r\n						<li><a href=\"#\">Link 2</a></li>\r\n						<li><a href=\"#\">Link 3</a></li>\r\n						<li><a href=\"#\">Link 4</a></li>\r\n						<li><a href=\"#\">Link 5</a></li>\r\n					</ul>\r\n					<h3>Right heading</h3>\r\n					<ul>\r\n						<li><a href=\"#\">Link 1</a></li>\r\n						<li><a href=\"#\">Link 2</a></li>\r\n						<li><a href=\"#\">Link 3</a></li>\r\n						<li><a href=\"#\">Link 4</a></li>\r\n						<li><a href=\"#\">Link 5</a></li>\r\n					</ul>\r\n					<h3>Right heading</h3>\r\n					<ul>\r\n						<li><a href=\"#\">Link 1</a></li>\r\n						<li><a href=\"#\">Link 2</a></li>\r\n						<li><a href=\"#\">Link 3</a></li>\r\n						<li><a href=\"#\">Link 4</a></li>\r\n						<li><a href=\"#\">Link 5</a></li>\r\n					</ul>\r\n				</div>\r\n			</nav>\r\n		\r\n		</div>\r\n		\r\n		<footer>\r\n			<div class=\"innertube\">\r\n				<p>Footer...</p>\r\n			</div>\r\n		</footer>\r\n	\r\n	</body>\r\n</html>', NULL, NULL, NULL),
(1108, 124, '\r\n<html>\r\n	<head>\r\n		<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n		<title>2 Column Layout — Left Menu</title>\r\n		<style type=\"text/css\">\r\n		\r\n			body{\r\n				margin:0;\r\n				padding:0;\r\n				font-family: Sans-Serif;\r\n				line-height: 1.5em;\r\n			}\r\n			\r\n			main {\r\n				padding-bottom: 10010px;\r\n				margin-bottom: -10000px;\r\n				float: left;\r\n				width: 100%;\r\n			}\r\n			\r\n			#nav {\r\n				float: left;\r\n				width: 230px;\r\n				margin-left: -100%;\r\n				padding-bottom: 10010px;\r\n				margin-bottom: -10000px;\r\n				background: #eee;\r\n			}\r\n			\r\n			#wrapper {\r\n				overflow: hidden;\r\n			}\r\n			\r\n			#content {\r\n				margin-left: 230px; /* Same as \'nav\' width */\r\n			}\r\n			\r\n			.innertube{\r\n				margin: 15px; /* Padding for content */\r\n				margin-top: 0;\r\n			}\r\n			\r\n			p {\r\n				color: #555;\r\n			}\r\n	\r\n			nav ul {\r\n				list-style-type: none;\r\n				margin: 0;\r\n				padding: 0;\r\n			}\r\n			\r\n			nav ul a {\r\n				color: darkgreen;\r\n				text-decoration: none;\r\n			}\r\n	\r\n		</style>\r\n		\r\n		<script type=\"text/javascript\">\r\n			/* =============================\r\n			This script generates sample text for the body content. \r\n			You can remove this script and any reference to it. \r\n			 ============================= */\r\n			var bodyText=[\"The smaller your reality, the more convinced you are that you know everything.\", \"If the facts don\'t fit the theory, change the facts.\", \"The past has no power over the present moment.\", \"This, too, will pass.\", \"</p><p>You will not be punished for your anger, you will be punished by your anger.\", \"Peace comes from within. Do not seek it without.\", \"<h3>Heading</h3><p>The most important moment of your life is now. The most important person in your life is the one you are with now, and the most important activity in your life is the one you are involved with now.\"]\r\n			function generateText(sentenceCount){\r\n				for (var i=0; i<sentenceCount; i++)\r\n				document.write(bodyText[Math.floor(Math.random()*7)]+\" \")\r\n			}\r\n		</script>	\r\n	\r\n	</head>\r\n	\r\n	<body>\r\n		<div id=\"wrapper\">\r\n		\r\n			<main>\r\n				<div id=\"content\">\r\n					<div class=\"innertube\">\r\n						<h1>Heading</h1>\r\n						<p><script>generateText(30)</script></p>\r\n					</div>\r\n				</div>\r\n			</main>\r\n			\r\n			<nav id=\"nav\">\r\n				<div class=\"innertube\">\r\n					<h3>Left heading</h3>\r\n					<ul>\r\n						<li><a href=\"#\">Link 1</a></li>\r\n						<li><a href=\"#\">Link 2</a></li>\r\n						<li><a href=\"#\">Link 3</a></li>\r\n						<li><a href=\"#\">Link 4</a></li>\r\n						<li><a href=\"#\">Link 5</a></li>\r\n					</ul>\r\n					<h3>Left heading</h3>\r\n					<ul>\r\n						<li><a href=\"#\">Link 1</a></li>\r\n						<li><a href=\"#\">Link 2</a></li>\r\n						<li><a href=\"#\">Link 3</a></li>\r\n						<li><a href=\"#\">Link 4</a></li>\r\n						<li><a href=\"#\">Link 5</a></li>\r\n					</ul>\r\n					<h3>Left heading</h3>\r\n					<ul>\r\n						<li><a href=\"#\">Link 1</a></li>\r\n						<li><a href=\"#\">Link 2</a></li>\r\n						<li><a href=\"#\">Link 3</a></li>\r\n						<li><a href=\"#\">Link 4</a></li>\r\n						<li><a href=\"#\">Link 5</a></li>\r\n					</ul>\r\n				</div>\r\n			</nav>\r\n			\r\n		</div>\r\n	</body>\r\n</html>\r\n', NULL, NULL, NULL),
(1109, 124, '\r\n<html>\r\n	<head>\r\n		<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n		<title>2 Column Layout — Right Menu</title>\r\n		<style type=\"text/css\">\r\n		\r\n			body{\r\n				margin:0;\r\n				padding:0;\r\n				font-family: Sans-Serif;\r\n				line-height: 1.5em;\r\n			}\r\n			\r\n			main {\r\n				padding-bottom: 10010px;\r\n				margin-bottom: -10000px;\r\n				float: left;\r\n				width: 100%;\r\n			}\r\n			\r\n			#nav {\r\n				float: left;\r\n				width: 230px;\r\n				margin-left: -230px;\r\n				padding-bottom: 10010px;\r\n				margin-bottom: -10000px;\r\n				background: #eee;\r\n			}\r\n			\r\n			#wrapper {\r\n				overflow: hidden;\r\n			}\r\n			\r\n			#content {\r\n				margin-right: 230px; /* Same as \'nav\' width */\r\n			}\r\n			\r\n			.innertube{\r\n				margin: 15px; /* Padding for content */\r\n				margin-top: 0;\r\n			}\r\n			\r\n			p {\r\n				color: #555;\r\n			}\r\n	\r\n			nav ul {\r\n				list-style-type: none;\r\n				margin: 0;\r\n				padding: 0;\r\n			}\r\n			\r\n			nav ul a {\r\n				color: darkgreen;\r\n				text-decoration: none;\r\n			}\r\n	\r\n		</style>\r\n		\r\n		<script type=\"text/javascript\">\r\n			/* =============================\r\n			This script generates sample text for the body content. \r\n			You can remove this script and any reference to it. \r\n			 ============================= */\r\n			var bodyText=[\"The smaller your reality, the more convinced you are that you know everything.\", \"If the facts don\'t fit the theory, change the facts.\", \"The past has no power over the present moment.\", \"This, too, will pass.\", \"</p><p>You will not be punished for your anger, you will be punished by your anger.\", \"Peace comes from within. Do not seek it without.\", \"<h3>Heading</h3><p>The most important moment of your life is now. The most important person in your life is the one you are with now, and the most important activity in your life is the one you are involved with now.\"]\r\n			function generateText(sentenceCount){\r\n				for (var i=0; i<sentenceCount; i++)\r\n				document.write(bodyText[Math.floor(Math.random()*7)]+\" \")\r\n			}\r\n		</script>	\r\n	\r\n	</head>\r\n	\r\n	<body>\r\n		<div id=\"wrapper\">\r\n		\r\n			<main>\r\n				<div id=\"content\">\r\n					<div class=\"innertube\">\r\n						<h1>Heading</h1>\r\n						<p><script>generateText(30)</script></p>\r\n					</div>\r\n				</div>\r\n			</main>\r\n			\r\n			<nav id=\"nav\">\r\n				<div class=\"innertube\">\r\n					<h3>Right heading</h3>\r\n					<ul>\r\n						<li><a href=\"#\">Link 1</a></li>\r\n						<li><a href=\"#\">Link 2</a></li>\r\n						<li><a href=\"#\">Link 3</a></li>\r\n						<li><a href=\"#\">Link 4</a></li>\r\n						<li><a href=\"#\">Link 5</a></li>\r\n					</ul>\r\n					<h3>Right heading</h3>\r\n					<ul>\r\n						<li><a href=\"#\">Link 1</a></li>\r\n						<li><a href=\"#\">Link 2</a></li>\r\n						<li><a href=\"#\">Link 3</a></li>\r\n						<li><a href=\"#\">Link 4</a></li>\r\n						<li><a href=\"#\">Link 5</a></li>\r\n					</ul>\r\n					<h3>Right heading</h3>\r\n					<ul>\r\n						<li><a href=\"#\">Link 1</a></li>\r\n						<li><a href=\"#\">Link 2</a></li>\r\n						<li><a href=\"#\">Link 3</a></li>\r\n						<li><a href=\"#\">Link 4</a></li>\r\n						<li><a href=\"#\">Link 5</a></li>\r\n					</ul>\r\n				</div>\r\n			</nav>\r\n			\r\n		</div>\r\n	</body>\r\n</html>', NULL, NULL, NULL),
(1118, 126, '<html>\r\n   <head>\r\n   </head>\r\n   \r\n      <style>\r\n         body {\r\n            font: 600 14px/24px \"Open Sans\", \"HelveticaNeue-Light\", \"Helvetica Neue Light\", \"Helvetica Neue\", Helvetica, Arial, \"Lucida Grande\", Sans-Serif;\r\n         }\r\n         h1 {\r\n            color: #9799a7;\r\n            font-size: 14px;\r\n            font-weight: bold;\r\n            margin-bottom: 6px;\r\n         }\r\n         .container:before, .container:after {\r\n            content: \"\";\r\n            display: table;\r\n         }\r\n         .container:after {\r\n            clear: both;\r\n         }\r\n         .container {\r\n            background: #eaeaed;\r\n            margin-bottom: 24px;\r\n            *zoom: 1;\r\n         }\r\n         .container-75 {\r\n            width: 75%;\r\n         }\r\n         .container-50 {\r\n            margin-bottom: 0;\r\n            width: 50%;\r\n         }\r\n         .container, section, aside {\r\n            border-radius: 6px;\r\n         }\r\n         section, aside {\r\n            background: #2db34a;\r\n            color: #fff;\r\n            margin: 1.858736059%;\r\n            padding: 20px 0;\r\n            text-align: center;\r\n         }\r\n         section {\r\n            float: left;\r\n            width: 63.197026%;\r\n         }\r\n         aside {\r\n            float: right;\r\n            width: 29.3680297%;\r\n         }\r\n      </style>\r\n   <body>\r\n   \r\n      <h1>100% do rong cua Container</h1>\r\n      \r\n      <div class=\"container\">\r\n         <section>Section</section>\r\n         <aside>Aside</aside>\r\n      </div>\r\n      \r\n      <h1>75% do rong cua Container</h1>\r\n      \r\n      <div class=\"container container-75\">\r\n         <section>Section</section>\r\n         <aside>Aside</aside>\r\n      </div>\r\n      \r\n      <h1>50% do rong cua Container</h1>\r\n      \r\n      <div class=\"container container-50\">\r\n         <section>Section</section>\r\n         <aside>Aside</aside>\r\n      </div>\r\n      \r\n   </body>\r\n</html>', NULL, NULL, NULL),
(1119, 126, '<html>\r\n   <head>\r\n      <style>\r\n         body {\r\n            background-color: lightpink;\r\n         }\r\n         @media screen and (max-width: 420px) {\r\n            body {\r\n               background-color: lightblue;\r\n            }\r\n         }\r\n      </style>\r\n   </head>\r\n   <body>\r\n      <p>Neu man hinh nho hon 420px, thi no se hien thi Lightblue color, neu khong no se hien thi Lightpink color</p>\r\n   </body>\r\n</html>', NULL, NULL, NULL),
(1120, 126, '<html>\r\n   <head>\r\n      <meta charset=\"utf-8\">\r\n      <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n      <link rel=\"stylesheet\" href=\"http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css\">\r\n      <style>\r\n         body{\r\n            color:green;\r\n         }\r\n      </style>\r\n   </head>\r\n   <body>\r\n   \r\n      <div class=\"container\">\r\n      \r\n         <div class=\"jumbotron\">\r\n            <h1>VietNam vo dich</h1> \r\n            <p>Tra loi bao chi hoi dau thang, Pho chu tich thuong truc VFF Tran Quoc Tuan va HLV Nguyen Huu Thang tung de cap toi \r\n      kha nang mo cua cho cau thu nhap tich len tuyen. Theo ong Tran Quoc Tuan, nhung cau thu nay neu dap ung duoc yeu cau \r\n      ve chuyen mon do HLV Nguyen Huu Thang dat rat hi deu co kha nang len tuyen.</p> \r\n         </div>\r\n      \r\n         <div class=\"row\">\r\n            <div class=\"col-md-4\">\r\n               <h2>VietNam van vo dich</h2>\r\n               <p>Tra loi bao chi hoi dau thang, Pho chu tich thuong truc VFF Tran Quoc Tuan va HLV Nguyen Huu Thang tung de cap toi \r\n      kha nang mo cua cho cau thu nhap tich len tuyen. Theo ong Tran Quoc Tuan, nhung cau thu nay neu dap ung duoc yeu cau \r\n      ve chuyen mon do HLV Nguyen Huu Thang dat rat hi deu co kha nang len tuyen.</p>\r\n         </div>\r\n         \r\n         <div class=\"col-md-4\">\r\n            <h2>Neu VietNam tham du World Cup</h2>\r\n            <p>Tra loi bao chi hoi dau thang, Pho chu tich thuong truc VFF Tran Quoc Tuan va HLV Nguyen Huu Thang tung de cap toi \r\n      kha nang mo cua cho cau thu nhap tich len tuyen. Theo ong Tran Quoc Tuan, nhung cau thu nay neu dap ung duoc yeu cau \r\n      ve chuyen mon do HLV Nguyen Huu Thang dat rat hi deu co kha nang len tuyen.</p>\r\n         </div>\r\n      \r\n         <div class=\"col-md-4\">\r\n            <h2>Neu VietNam la cuong quoc so 1 The Gioi</h2>\r\n            <p>Tra loi bao chi hoi dau thang, Pho chu tich thuong truc VFF Tran Quoc Tuan va HLV Nguyen Huu Thang tung de cap toi \r\n      kha nang mo cua cho cau thu nhap tich len tuyen. Theo ong Tran Quoc Tuan, nhung cau thu nay neu dap ung duoc yeu cau \r\n      ve chuyen mon do HLV Nguyen Huu Thang dat rat hi deu co kha nang len tuyen.</p>\r\n         </div>\r\n      </div>\r\n      \r\n   </body>\r\n</html>', NULL, NULL, NULL),
(1123, 137, '<?php\r\n// tạo class\r\nclass Person\r\n{\r\n	//khởi tạo thuộc tính động\r\n	var $name ;\r\n	var $mat;\r\n	var $mui;\r\n	//khởi tạo thuộc tính cố định constant\r\n	const sochan = 2;\r\n	//khởi tạo phương thức\r\n	function an()\r\n	{\r\n		//code\r\n	}\r\n	function noi($caunoi)\r\n	{\r\n		//gọi phương thức trong class\r\n		echo $caunoi;\r\n	}\r\n	function di()\r\n	{\r\n		//code\r\n	}\r\n	function getName()\r\n	{\r\n		//gọi thuộc tính động trong class\r\n		return $this->name;\r\n	}\r\n	function getSoChan()\r\n	{\r\n		//gọi thuộc tính constant trong class\r\n		return self::sochan;\r\n	}\r\n}\r\n//khởi tạo class\r\n$per= new Person();\r\n//gọi thuộc tính ngoài class và đồng thười gán giá trị mới cho thuộc tính\r\n$per->name = \'Nguyễn Văn PHP\';\r\n//gọi lại thuộc tính để xem thay đổi\r\necho \"Họ và Tên:\".$per->name.\" có tổng cộng\".$per->getSoChan().\" chân . Than thở rằng:\";\r\n//gọi phương thức\r\necho $per->noi(\'Học PHP mệt quá!\');\r\n?>', NULL, NULL, NULL),
(1162, 138, '<?php\r\nclass Animal {\r\n    public $height;\r\n    public $weight;\r\n    // Định nghĩa phương thức contructor\r\n    public function __construct($height,$weight) {\r\n        $this->height = $height;\r\n        $this->weight = $weight;\r\n    }\r\n}\r\n// Khởi tạo đối tượng Animal với 2 thuộc tính chiều cao và cân nặng\r\n$animal = new Animal(2,100);\r\necho \"Chiều cao là: \".$animal->height; // Kết quả: 2\r\necho \"Cân nặng là: \".$animal->weight; // Kết quả: 100\r\n?>', NULL, NULL, NULL),
(1163, 138, '<?php\r\nclass Animal {\r\n    public $height;\r\n    public $weight;\r\n    // Định nghĩa phương thức magic contructor\r\n    public function __construct($height,$weight) {\r\n        echo \"Tôi là phương thức khởi tạo\";\r\n    }\r\n    public function __destruct(){\r\n        echo \"Tôi là phương thức hủy\";\r\n    }\r\n}\r\n// Khởi tạo đối tượng animal\r\n$animal = new Animal(10,10);\r\n?>', NULL, NULL, NULL),
(1164, 138, '<?php\r\nclass Animal{\r\n  public $weight = \'100\';\r\n  \r\n  public function __toString() {\r\n      return $this->weight;\r\n  }\r\n}\r\n$animal = new Animal;\r\necho $animal;// Kết quả: 100\r\n?>', NULL, NULL, NULL),
(1179, 142, '<?php\r\nclass Person \r\n{\r\n	const salary = 100000;\r\n	\r\n	public function __construct()\r\n	{\r\n	//Your logic for constructor\r\n	}\r\n  function __call($nameMethod,$hour){\r\n    if($nameMethod == \'caculateSalary\')// Tên phương khi gọi\r\n        switch(count($hour))\r\n	{\r\n            case 0 : return self::salary ;	// Không truyền tham số cho hàm		\r\n            case 1 : return self::salary * $hour[0] ;//Truyền 1 tham số\r\n            \r\n        }\r\n    }\r\n \r\n} \r\n $per = new Person();\r\n echo \"\".$per->caculateSalary();			\r\n $per1 = new Person();\r\n echo \"\".$per1->caculateSalary(10);\r\n\r\n ?>', NULL, NULL, NULL),
(1180, 142, '<?php\r\nclass Person \r\n{\r\n		private $fullName;\r\n		private $address;\r\n		private $phone;\r\n		private $email;\r\n		//override trong lớp con\r\n		function caculationSalary()\r\n		{\r\n			return 0;\r\n		}\r\n		function Person($fullName, $address, $phone, $email)\r\n		{\r\n			$this->fullName = 	$fullName;\r\n			$this->address	=	$address;\r\n			$this->phone	= 	$phone;\r\n			$this->email	=	$email;\r\n		}\r\n		//override trong lớp con\r\n		function inputInfo()\r\n		{\r\n			$this->fullName = 	\"Thích Học Lại\";\r\n			$this->address	=	\"Sao Hỏa\";\r\n			$this->phone	= 	\"XXX898800000\";\r\n			$this->email	=	\"saohoa@saohoa.com\";\r\n		}\r\n		//override trong lớp con\r\n		function showInfo()\r\n		{\r\n			echo \"Họ và Tên:\".$this->fullName.\"<br>\";\r\n			echo \"Địa chỉ: \".$this->address.\"<br>\";\r\n			echo \"Điện thoại: \".$this->phone.\"<br>\";\r\n			echo \"Email: \".$this->email.\"<br>\";\r\n		}\r\n} \r\n	\r\n	\r\nclass Employee extends Person\r\n{\r\n	\r\n	const price= 5000;\r\n	private $baseSalary;\r\n	private $numOfProduct;\r\n	\r\n	/*function __construct()\r\n	{\r\n\r\n	}*/\r\n	 //  phương thức thiết lập có tham số\r\n 	function __construct($fullName, $address, $phone, $email, $baseSalary, $numOfProduct)\r\n	{\r\n		// Dùng từ khóa Parent truy cập vào phương thức cha\r\n		Parent::Person($fullName, $address, $phone, $email);\r\n		$this->baseSalary = $baseSalary;\r\n		$this->numOfProduct =	$numOfProduct;\r\n	}\r\n	\r\n	function inputInfo()\r\n	{\r\n		\r\n		// Dùng từ khóa Parent truy cập vào phương thức cha\r\n		Parent::inputInfo();\r\n		$this->baseSalary = 1230000;\r\n		$this->numOfProduct =10;\r\n	}\r\n	function showInfo()\r\n	{\r\n		// // Dùng từ khóa Parent truy cập vào phương thức cha\r\n		Parent::showInfo();\r\n		echo \"Lương cơ bản:\".$this->baseSalary;\r\n		echo \"<br> Số lượng sản phẩm:\".$this->numOfProduct;\r\n		\r\n		\r\n	}\r\n	function caculationSalary()\r\n	{\r\n		return $this->baseSalary+$this->numOfProduct*self::price;\r\n	}\r\n	\r\n}\r\n $per[] = new  Employee(\"Trần Văn Lười\", \"Cung Trăng\", \"098884\", \"vinaskype@saohoa.com\", \"100\", \"20\");; \r\n $per[0]->inputInfo(); // nhập nhân vien mới\r\n \r\n \r\n $per[] = new  Employee(\"Trần Văn Lười\", \"Cung Trăng\", \"098884\", \"vinaskype@saohoa.com\", \"100\", \"20\");\r\n \r\n echo \"<h1>Danh sách nhân viên</h1><hr/>\";\r\n foreach($per as $pers)\r\n {\r\n   $pers->showInfo();\r\n   echo \"Tiền lương là:\".$pers->caculationSalary();\r\n   echo \"<hr/>\";\r\n }\r\n  \r\n?>', NULL, NULL, NULL),
(1183, 143, '<?php\r\nclass Person \r\n{\r\n		// Phạm vi truy cập\r\n		public  $fullName = \"Nguyễn Hữu PHP\";\r\n		public $age ;\r\n		 // Các phương thức\r\n		public static function getFullName()\r\n		{\r\n			  return $this->fullName;\r\n		}\r\n		\r\n} \r\n$per  = new Person();\r\necho $per->fullName = \"Nguyễn Văn PHP <br/>\";\r\necho $per->age = 24;\r\n?>', NULL, NULL, NULL),
(1184, 143, '\r\n<?php\r\nclass Person \r\n{\r\n		// Phạm vi truy cập\r\n		private  $fullName ;\r\n		private $age ;\r\n		 // Các phương thức\r\n		function __construct($age, $fullName)\r\n		{\r\n			$this->age = $age;\r\n			$this->fullName = $fullName;\r\n		}\r\n		function setAge($age)\r\n		{\r\n			if($age>=1 && $age<=120)\r\n				$this->age = $age;\r\n			else\r\n				echo \"Xin vui lòng nhập tuổi trong khoảng:1->120\";\r\n			\r\n		}\r\n		function getAge()\r\n		{\r\n			return $this->age;\r\n		}\r\n		\r\n		function setFullName($fullName)\r\n		{\r\n			$this->fullName = $fullName;\r\n		}\r\n		\r\n		function getFullName()\r\n		{\r\n			  return $this->fullName;\r\n		}\r\n		\r\n} \r\n$per  = new Person(24, \"Nguyễn Hữu PHP\");\r\necho $per->getFullName() .\"<br/>\";\r\necho $per->getage();\r\n?>', NULL, NULL, NULL),
(1193, 145, '<?php\r\nabstract class Person \r\n{\r\n		private $fullName;\r\n		private $address;\r\n		private $phone;\r\n		private $email;\r\n		abstract function job();\r\n		\r\n		function inputInfo()\r\n		{\r\n			$this->fullName = 	\"Thích Học Lại\";\r\n			$this->address	=	\"Sao Hỏa\";\r\n			$this->phone	= 	\"XXX898800000\";\r\n			$this->email	=	\"saohoa@saohoa.com\";\r\n		}\r\n		function showInfo()\r\n		{\r\n			echo \"Họ và Tên:\".$this->fullName.\"<br>\";\r\n			echo \"Địa chỉ: \".$this->address.\"<br>\";\r\n			echo \"Điện thoại: \".$this->phone.\"<br>\";\r\n			echo \"Email: \".$this->email.\"<br>\";\r\n		}\r\n} \r\nclass Employee extends Person\r\n{\r\n	function inputInfo()\r\n	{\r\n		parent::inputInfo();\r\n	}\r\n	function showInfo()\r\n	{\r\n		parent::showInfo();\r\n	}\r\n	//override phương thức trừu tượng\r\n	function job ()\r\n	{\r\n		echo \"Làm công ăn lương\";\r\n	}\r\n	\r\n}\r\n$emp  = new Employee();\r\n$emp->inputInfo();\r\n$emp->showInfo();\r\n$emp->job();\r\n\r\n\r\n?>', NULL, NULL, NULL),
(1197, 125, '<html>\r\n	<head>\r\n		<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n		<title>Fixed Width 1 Red</title>\r\n		<style type=\"text/css\">\r\n			html, #page { padding:0; margin:0;}\r\n			body { margin:0; padding:0; width:100%; color:#959595; font:normal 12px/2.0em Sans-Serif;} \r\n			h1, h2, h3, h4, h5, h6 {color:darkred;}\r\n			#page { background:#fff;}\r\n			#header, #footer, #top-nav, #content, #content #contentbar, #content #sidebar { margin:0; padding:0;}\r\n						\r\n			/* Logo */\r\n			#logo { padding:0; width:auto; float:left;}\r\n			#logo h1 a, h1 a:hover { color:darkred; text-decoration:none;}\r\n			#logo h1 span { color:#f8dbdb;}\r\n\r\n			/* Header */\r\n			#header { background:#fff; }\r\n			#header-inner { margin:0 auto; padding:0; width:970px;}\r\n			\r\n			/* Feature */\r\n			.feature { background:red;padding:18px;}\r\n			.feature-inner { margin:auto;width:970px; }\r\n			.feature-inner h1 {color:#f8dbdb;font-size:32px;}\r\n			\r\n			/* Menu */\r\n			#top-nav { margin:0 auto; padding:0px 0 0; height:37px; float:right;}\r\n			#top-nav ul { list-style:none; padding:0; height:37px; float:left;}\r\n			#top-nav ul li { margin:0; padding:0 0 0 8px; float:left;}\r\n			#top-nav ul li a { display:block; margin:0; padding:8px 20px; color:red; text-decoration:none;}\r\n			#top-nav ul li.active a, #top-nav ul li a:hover { color:#f8dbdb;}\r\n			\r\n			/* Content */\r\n			#content-inner { margin:0 auto; padding:10px 0; width:970px;background:#fff;}\r\n			#content #contentbar { margin:0; padding:0; float:right; width:760px;}\r\n			#content #contentbar .article { margin:0 0 24px; padding:0 20px 0 15px; }\r\n			#content #sidebar { padding:0; float:left; width:200px;}\r\n			#content #sidebar .widget { margin:0 0 12px; padding:8px 8px 8px 13px;line-height:1.4em;}\r\n			#content #sidebar .widget h3 a { text-decoration:none;}\r\n			#content #sidebar .widget ul { margin:0; padding:0; list-style:none; color:#959595;}\r\n			#content #sidebar .widget ul li { margin:0;}\r\n			#content #sidebar .widget ul li { padding:4px 0; width:185px;}\r\n			#content #sidebar .widget ul li a { color:red; text-decoration:none; margin-left:-16px; padding:4px 8px 4px 16px;}\r\n			#content #sidebar .widget ul li a:hover { color:#f8dbdb; font-weight:bold; text-decoration:none;}\r\n			\r\n			/* Footerblurb */\r\n			#footerblurb { background:#f8dbdb;color:red;}\r\n			#footerblurb-inner { margin:0 auto; width:922px; padding:24px;}\r\n			#footerblurb .column { margin:0; text-align:justify; float:left;width:250px;padding:0 24px;}\r\n			\r\n			/* Footer */\r\n			#footer { background:#fff;}\r\n			#footer-inner { margin:auto; text-align:center; padding:12px; width:922px;}\r\n			#footer a {color:red;text-decoration:none;}\r\n			\r\n			/* Clear both sides to assist with div alignment  */\r\n			.clr { clear:both; padding:0; margin:0; width:100%; font-size:0px; line-height:0px;}\r\n		</style>\r\n		<script type=\"text/javascript\">\r\n			/* =============================\r\n			This script generates sample text for the body content. \r\n			You can remove this script and any reference to it. \r\n			 ============================= */\r\n			var bodyText=[\"The smaller your reality, the more convinced you are that you know everything.\", \"If the facts don\'t fit the theory, change the facts.\", \"The past has no power over the present moment.\", \"This, too, will pass.\", \"</p><p>You will not be punished for your anger, you will be punished by your anger.\", \"Peace comes from within. Do not seek it without.\", \"<h2>Heading</h2><p>The most important moment of your life is now. The most important person in your life is the one you are with now, and the most important activity in your life is the one you are involved with now.\"]\r\n			function generateText(sentenceCount){\r\n				for (var i=0; i<sentenceCount; i++)\r\n				document.write(bodyText[Math.floor(Math.random()*7)]+\" \")\r\n			}\r\n		</script>\r\n	</head>\r\n	<body>\r\n		<div id=\"page\">\r\n			<header id=\"header\">\r\n				<div id=\"header-inner\">	\r\n					<div id=\"logo\">\r\n						<h1><a href=\"#\">Cool<span>Logo</span></a></h1>\r\n					</div>\r\n					<div id=\"top-nav\">\r\n						<ul>\r\n						<li><a href=\"#\">About</a></li>\r\n						<li><a href=\"#\">Contact</a></li>\r\n						<li><a href=\"#\">FAQ</a></li>\r\n						<li><a href=\"#\">Help</a></li>\r\n						</ul>\r\n					</div>\r\n					<div class=\"clr\"></div>\r\n				</div>\r\n			</header>\r\n			<div class=\"feature\">\r\n				<div class=\"feature-inner\">\r\n				<h1>Heading</h1>\r\n				</div>\r\n			</div>\r\n		\r\n	\r\n			<div id=\"content\">\r\n				<div id=\"content-inner\">\r\n				\r\n					<main id=\"contentbar\">\r\n						<div class=\"article\">\r\n							<p><script>generateText(12)</script></p>\r\n						</div>\r\n					</main>\r\n					\r\n					<nav id=\"sidebar\">\r\n						<div class=\"widget\">\r\n							<h3>Left heading</h3>\r\n							<ul>\r\n							<li><a href=\"#\">Link 1</a></li>\r\n							<li><a href=\"#\">Link 2</a></li>\r\n							<li><a href=\"#\">Link 3</a></li>\r\n							<li><a href=\"#\">Link 4</a></li>\r\n							<li><a href=\"#\">Link 5</a></li>\r\n							</ul>\r\n						</div>\r\n					</nav>\r\n					\r\n					<div class=\"clr\"></div>\r\n				</div>\r\n			</div>\r\n		\r\n			<div id=\"footerblurb\">\r\n				<div id=\"footerblurb-inner\">\r\n				\r\n					<div class=\"column\">\r\n						<h2><span>Heading</span></h2>\r\n						<p><script>generateText(2)</script></p>\r\n					</div>	\r\n					<div class=\"column\">\r\n						<h2><span>Heading</span></h2>\r\n						<p><script>generateText(2)</script></p>\r\n					</div>\r\n					<div class=\"column\">\r\n						<h2><span>Heading</span></h2>\r\n						<p><script>generateText(2)</script></p>\r\n					</div>	\r\n					\r\n					<div class=\"clr\"></div>\r\n				</div>\r\n			</div>\r\n			<footer id=\"footer\">\r\n				<div id=\"footer-inner\">\r\n					<p>© Copyright <a href=\"#\">Your Site</a> | <a href=\"#\">Terms of Use</a> | <a href=\"#\">Privacy Policy</a></p>\r\n					<div class=\"clr\"></div>\r\n				</div>\r\n			</footer>\r\n		</div>\r\n	</body>\r\n</html>\r\n', NULL, NULL, NULL),
(1198, 125, '\r\n<html>\r\n	<head>\r\n		<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n		<title>Fixed Width 1 Green</title>\r\n		<style type=\"text/css\">\r\n			html, #page { padding:0; margin:0;}\r\n			body { margin:0; padding:0; width:100%; color:#959595; font:normal 12px/2.0em Sans-Serif;} \r\n			h1, h2, h3, h4, h5, h6 {color:darkgreen;}\r\n			#page { background:#fff;}\r\n			#header, #footer, #top-nav, #content, #content #contentbar, #content #sidebar { margin:0; padding:0;}\r\n						\r\n			/* Logo */\r\n			#logo { padding:0; width:auto; float:left;}\r\n			#logo h1 a, h1 a:hover { color:darkgreen; text-decoration:none;}\r\n			#logo h1 span { color:#BCCE98;}\r\n\r\n			/* Header */\r\n			#header { background:#fff; }\r\n			#header-inner { margin:0 auto; padding:0; width:970px;}\r\n			\r\n			/* Feature */\r\n			.feature { background:green;padding:18px;}\r\n			.feature-inner { margin:auto;width:970px; }\r\n			.feature-inner h1 {color:#DAE9BC;font-size:32px;}\r\n			\r\n			/* Menu */\r\n			#top-nav { margin:0 auto; padding:0px 0 0; height:37px; float:right;}\r\n			#top-nav ul { list-style:none; padding:0; height:37px; float:left;}\r\n			#top-nav ul li { margin:0; padding:0 0 0 8px; float:left;}\r\n			#top-nav ul li a { display:block; margin:0; padding:8px 20px; color:green; text-decoration:none;}\r\n			#top-nav ul li.active a, #top-nav ul li a:hover { color:#BCCE98;}\r\n			\r\n			/* Content */\r\n			#content-inner { margin:0 auto; padding:10px 0; width:970px;background:#fff;}\r\n			#content #contentbar { margin:0; padding:0; float:right; width:760px;}\r\n			#content #contentbar .article { margin:0 0 24px; padding:0 20px 0 15px; }\r\n			#content #sidebar { padding:0; float:left; width:200px;}\r\n			#content #sidebar .widget { margin:0 0 12px; padding:8px 8px 8px 13px;line-height:1.4em;}\r\n			#content #sidebar .widget h3 a { text-decoration:none;}\r\n			#content #sidebar .widget ul { margin:0; padding:0; list-style:none; color:#959595;}\r\n			#content #sidebar .widget ul li { margin:0;}\r\n			#content #sidebar .widget ul li { padding:4px 0; width:185px;}\r\n			#content #sidebar .widget ul li a { color:green; text-decoration:none; margin-left:-16px; padding:4px 8px 4px 16px;}\r\n			#content #sidebar .widget ul li a:hover { color:#BCCE98; font-weight:bold; text-decoration:none;}\r\n			\r\n			/* Footerblurb */\r\n			#footerblurb { background:#DAE9BC;color:green;}\r\n			#footerblurb-inner { margin:0 auto; width:922px; padding:24px;}\r\n			#footerblurb .column { margin:0; text-align:justify; float:left;width:250px;padding:0 24px;}\r\n			\r\n			/* Footer */\r\n			#footer { background:#fff;}\r\n			#footer-inner { margin:auto; text-align:center; padding:12px; width:922px;}\r\n			#footer a {color:green;text-decoration:none;}\r\n			\r\n			/* Clear both sides to assist with div alignment  */\r\n			.clr { clear:both; padding:0; margin:0; width:100%; font-size:0px; line-height:0px;}\r\n		</style>\r\n		<script type=\"text/javascript\">\r\n			/* =============================\r\n			This script generates sample text for the body content. \r\n			You can remove this script and any reference to it. \r\n			 ============================= */\r\n			var bodyText=[\"The smaller your reality, the more convinced you are that you know everything.\", \"If the facts don\'t fit the theory, change the facts.\", \"The past has no power over the present moment.\", \"This, too, will pass.\", \"</p><p>You will not be punished for your anger, you will be punished by your anger.\", \"Peace comes from within. Do not seek it without.\", \"<h2>Heading</h2><p>The most important moment of your life is now. The most important person in your life is the one you are with now, and the most important activity in your life is the one you are involved with now.\"]\r\n			function generateText(sentenceCount){\r\n				for (var i=0; i<sentenceCount; i++)\r\n				document.write(bodyText[Math.floor(Math.random()*7)]+\" \")\r\n			}\r\n		</script>\r\n	</head>\r\n	<body>\r\n		<div id=\"page\">\r\n			<header id=\"header\">\r\n				<div id=\"header-inner\">	\r\n					<div id=\"logo\">\r\n						<h1><a href=\"#\">Cool<span>Logo</span></a></h1>\r\n					</div>\r\n					<div id=\"top-nav\">\r\n						<ul>\r\n						<li><a href=\"#\">About</a></li>\r\n						<li><a href=\"#\">Contact</a></li>\r\n						<li><a href=\"#\">FAQ</a></li>\r\n						<li><a href=\"#\">Help</a></li>\r\n						</ul>\r\n					</div>\r\n					<div class=\"clr\"></div>\r\n				</div>\r\n			</header>\r\n			<div class=\"feature\">\r\n				<div class=\"feature-inner\">\r\n				<h1>Heading</h1>\r\n				</div>\r\n			</div>\r\n		\r\n	\r\n			<div id=\"content\">\r\n				<div id=\"content-inner\">\r\n				\r\n					<main id=\"contentbar\">\r\n						<div class=\"article\">\r\n							<p><script>generateText(12)</script></p>\r\n						</div>\r\n					</main>\r\n					\r\n					<nav id=\"sidebar\">\r\n						<div class=\"widget\">\r\n							<h3>Left heading</h3>\r\n							<ul>\r\n							<li><a href=\"#\">Link 1</a></li>\r\n							<li><a href=\"#\">Link 2</a></li>\r\n							<li><a href=\"#\">Link 3</a></li>\r\n							<li><a href=\"#\">Link 4</a></li>\r\n							<li><a href=\"#\">Link 5</a></li>\r\n							</ul>\r\n						</div>\r\n					</nav>\r\n					\r\n					<div class=\"clr\"></div>\r\n				</div>\r\n			</div>\r\n		\r\n			<div id=\"footerblurb\">\r\n				<div id=\"footerblurb-inner\">\r\n				\r\n					<div class=\"column\">\r\n						<h2><span>Heading</span></h2>\r\n						<p><script>generateText(2)</script></p>\r\n					</div>	\r\n					<div class=\"column\">\r\n						<h2><span>Heading</span></h2>\r\n						<p><script>generateText(2)</script></p>\r\n					</div>\r\n					<div class=\"column\">\r\n						<h2><span>Heading</span></h2>\r\n						<p><script>generateText(2)</script></p>\r\n					</div>	\r\n					\r\n					<div class=\"clr\"></div>\r\n				</div>\r\n			</div>\r\n			<footer id=\"footer\">\r\n				<div id=\"footer-inner\">\r\n					<p>© Copyright <a href=\"#\">Your Site</a> | <a href=\"#\">Terms of Use</a> | <a href=\"#\">Privacy Policy</a></p>\r\n					<div class=\"clr\"></div>\r\n				</div>\r\n			</footer>\r\n		</div>\r\n	</body>\r\n</html>\r\n', NULL, NULL, NULL),
(1199, 125, '\r\n<html>\r\n	<head>\r\n		<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n		<title>Fixed Width 1 Blue</title>\r\n		<style type=\"text/css\">\r\n			html, #page { padding:0; margin:0;}\r\n			body { margin:0; padding:0; width:100%; color:#959595; font:normal 12px/2.0em Sans-Serif;} \r\n			h1, h2, h3, h4, h5, h6 {color:darkblue;}\r\n			#page { background:#fff;}\r\n			#header, #footer, #top-nav, #content, #content #contentbar, #content #sidebar { margin:0; padding:0;}\r\n						\r\n			/* Logo */\r\n			#logo { padding:0; width:auto; float:left;}\r\n			#logo h1 a, h1 a:hover { color:darkblue; text-decoration:none;}\r\n			#logo h1 span { color:#d3d3f9;}\r\n\r\n			/* Header */\r\n			#header { background:#fff; }\r\n			#header-inner { margin:0 auto; padding:0; width:970px;}\r\n			\r\n			/* Feature */\r\n			.feature { background:blue;padding:18px;}\r\n			.feature-inner { margin:auto;width:970px; }\r\n			.feature-inner h1 {color:#d3d3f9;font-size:32px;}\r\n			\r\n			/* Menu */\r\n			#top-nav { margin:0 auto; padding:0px 0 0; height:37px; float:right;}\r\n			#top-nav ul { list-style:none; padding:0; height:37px; float:left;}\r\n			#top-nav ul li { margin:0; padding:0 0 0 8px; float:left;}\r\n			#top-nav ul li a { display:block; margin:0; padding:8px 20px; color:blue; text-decoration:none;}\r\n			#top-nav ul li.active a, #top-nav ul li a:hover { color:#d3d3f9;}\r\n			\r\n			/* Content */\r\n			#content-inner { margin:0 auto; padding:10px 0; width:970px;background:#fff;}\r\n			#content #contentbar { margin:0; padding:0; float:right; width:760px;}\r\n			#content #contentbar .article { margin:0 0 24px; padding:0 20px 0 15px; }\r\n			#content #sidebar { padding:0; float:left; width:200px;}\r\n			#content #sidebar .widget { margin:0 0 12px; padding:8px 8px 8px 13px;line-height:1.4em;}\r\n			#content #sidebar .widget h3 a { text-decoration:none;}\r\n			#content #sidebar .widget ul { margin:0; padding:0; list-style:none; color:#959595;}\r\n			#content #sidebar .widget ul li { margin:0;}\r\n			#content #sidebar .widget ul li { padding:4px 0; width:185px;}\r\n			#content #sidebar .widget ul li a { color:blue; text-decoration:none; margin-left:-16px; padding:4px 8px 4px 16px;}\r\n			#content #sidebar .widget ul li a:hover { color:#d3d3f9; font-weight:bold; text-decoration:none;}\r\n			\r\n			/* Footerblurb */\r\n			#footerblurb { background:#d3d3f9;color:blue;}\r\n			#footerblurb-inner { margin:0 auto; width:922px; padding:24px;}\r\n			#footerblurb .column { margin:0; text-align:justify; float:left;width:250px;padding:0 24px;}\r\n			\r\n			/* Footer */\r\n			#footer { background:#fff;}\r\n			#footer-inner { margin:auto; text-align:center; padding:12px; width:922px;}\r\n			#footer a {color:blue;text-decoration:none;}\r\n			\r\n			/* Clear both sides to assist with div alignment  */\r\n			.clr { clear:both; padding:0; margin:0; width:100%; font-size:0px; line-height:0px;}\r\n		</style>\r\n		<script type=\"text/javascript\">\r\n			/* =============================\r\n			This script generates sample text for the body content. \r\n			You can remove this script and any reference to it. \r\n			 ============================= */\r\n			var bodyText=[\"The smaller your reality, the more convinced you are that you know everything.\", \"If the facts don\'t fit the theory, change the facts.\", \"The past has no power over the present moment.\", \"This, too, will pass.\", \"</p><p>You will not be punished for your anger, you will be punished by your anger.\", \"Peace comes from within. Do not seek it without.\", \"<h2>Heading</h2><p>The most important moment of your life is now. The most important person in your life is the one you are with now, and the most important activity in your life is the one you are involved with now.\"]\r\n			function generateText(sentenceCount){\r\n				for (var i=0; i<sentenceCount; i++)\r\n				document.write(bodyText[Math.floor(Math.random()*7)]+\" \")\r\n			}\r\n		</script>\r\n	</head>\r\n	<body>\r\n		<div id=\"page\">\r\n			<header id=\"header\">\r\n				<div id=\"header-inner\">	\r\n					<div id=\"logo\">\r\n						<h1><a href=\"#\">Cool<span>Logo</span></a></h1>\r\n					</div>\r\n					<div id=\"top-nav\">\r\n						<ul>\r\n						<li><a href=\"#\">About</a></li>\r\n						<li><a href=\"#\">Contact</a></li>\r\n						<li><a href=\"#\">FAQ</a></li>\r\n						<li><a href=\"#\">Help</a></li>\r\n						</ul>\r\n					</div>\r\n					<div class=\"clr\"></div>\r\n				</div>\r\n			</header>\r\n			<div class=\"feature\">\r\n				<div class=\"feature-inner\">\r\n				<h1>Heading</h1>\r\n				</div>\r\n			</div>\r\n		\r\n	\r\n			<div id=\"content\">\r\n				<div id=\"content-inner\">\r\n				\r\n					<main id=\"contentbar\">\r\n						<div class=\"article\">\r\n							<p><script>generateText(12)</script></p>\r\n						</div>\r\n					</main>\r\n					\r\n					<nav id=\"sidebar\">\r\n						<div class=\"widget\">\r\n							<h3>Left heading</h3>\r\n							<ul>\r\n							<li><a href=\"#\">Link 1</a></li>\r\n							<li><a href=\"#\">Link 2</a></li>\r\n							<li><a href=\"#\">Link 3</a></li>\r\n							<li><a href=\"#\">Link 4</a></li>\r\n							<li><a href=\"#\">Link 5</a></li>\r\n							</ul>\r\n						</div>\r\n					</nav>\r\n					\r\n					<div class=\"clr\"></div>\r\n				</div>\r\n			</div>\r\n		\r\n			<div id=\"footerblurb\">\r\n				<div id=\"footerblurb-inner\">\r\n				\r\n					<div class=\"column\">\r\n						<h2><span>Heading</span></h2>\r\n						<p><script>generateText(2)</script></p>\r\n					</div>	\r\n					<div class=\"column\">\r\n						<h2><span>Heading</span></h2>\r\n						<p><script>generateText(2)</script></p>\r\n					</div>\r\n					<div class=\"column\">\r\n						<h2><span>Heading</span></h2>\r\n						<p><script>generateText(2)</script></p>\r\n					</div>	\r\n					\r\n					<div class=\"clr\"></div>\r\n				</div>\r\n			</div>\r\n			<footer id=\"footer\">\r\n				<div id=\"footer-inner\">\r\n					<p>© Copyright <a href=\"#\">Your Site</a> | <a href=\"#\">Terms of Use</a> | <a href=\"#\">Privacy Policy</a></p>\r\n					<div class=\"clr\"></div>\r\n				</div>\r\n			</footer>\r\n		</div>\r\n	</body>\r\n</html>', NULL, NULL, NULL),
(1200, 125, '\r\n<html>\r\n	<head>\r\n		<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n		<title>Fixed Width 1 Orange</title>\r\n		<style type=\"text/css\">\r\n			html, #page { padding:0; margin:0;}\r\n			body { margin:0; padding:0; width:100%; color:#959595; font:normal 12px/2.0em Sans-Serif;} \r\n			h1, h2, h3, h4, h5, h6 {color:darkorange;}\r\n			#page { background:#fff;}\r\n			#header, #footer, #top-nav, #content, #content #contentbar, #content #sidebar { margin:0; padding:0;}\r\n						\r\n			/* Logo */\r\n			#logo { padding:0; width:auto; float:left;}\r\n			#logo h1 a, h1 a:hover { color:darkorange; text-decoration:none;}\r\n			#logo h1 span { color:#f9ebdb;}\r\n\r\n			/* Header */\r\n			#header { background:#fff; }\r\n			#header-inner { margin:0 auto; padding:0; width:970px;}\r\n			\r\n			/* Feature */\r\n			.feature { background:orange;padding:18px;}\r\n			.feature-inner { margin:auto;width:970px; }\r\n			.feature-inner h1 {color:#f9ebdb;font-size:32px;}\r\n			\r\n			/* Menu */\r\n			#top-nav { margin:0 auto; padding:0px 0 0; height:37px; float:right;}\r\n			#top-nav ul { list-style:none; padding:0; height:37px; float:left;}\r\n			#top-nav ul li { margin:0; padding:0 0 0 8px; float:left;}\r\n			#top-nav ul li a { display:block; margin:0; padding:8px 20px; color:orange; text-decoration:none;}\r\n			#top-nav ul li.active a, #top-nav ul li a:hover { color:#f9ebdb;}\r\n			\r\n			/* Content */\r\n			#content-inner { margin:0 auto; padding:10px 0; width:970px;background:#fff;}\r\n			#content #contentbar { margin:0; padding:0; float:right; width:760px;}\r\n			#content #contentbar .article { margin:0 0 24px; padding:0 20px 0 15px; }\r\n			#content #sidebar { padding:0; float:left; width:200px;}\r\n			#content #sidebar .widget { margin:0 0 12px; padding:8px 8px 8px 13px;line-height:1.4em;}\r\n			#content #sidebar .widget h3 a { text-decoration:none;}\r\n			#content #sidebar .widget ul { margin:0; padding:0; list-style:none; color:#959595;}\r\n			#content #sidebar .widget ul li { margin:0;}\r\n			#content #sidebar .widget ul li { padding:4px 0; width:185px;}\r\n			#content #sidebar .widget ul li a { color:orange; text-decoration:none; margin-left:-16px; padding:4px 8px 4px 16px;}\r\n			#content #sidebar .widget ul li a:hover { color:#f9ebdb; font-weight:bold; text-decoration:none;}\r\n			\r\n			/* Footerblurb */\r\n			#footerblurb { background:#f9ebdb;color:orange;}\r\n			#footerblurb-inner { margin:0 auto; width:922px; padding:24px;}\r\n			#footerblurb .column { margin:0; text-align:justify; float:left;width:250px;padding:0 24px;}\r\n			\r\n			/* Footer */\r\n			#footer { background:#fff;}\r\n			#footer-inner { margin:auto; text-align:center; padding:12px; width:922px;}\r\n			#footer a {color:orange;text-decoration:none;}\r\n			\r\n			/* Clear both sides to assist with div alignment  */\r\n			.clr { clear:both; padding:0; margin:0; width:100%; font-size:0px; line-height:0px;}\r\n		</style>\r\n		<script type=\"text/javascript\">\r\n			/* =============================\r\n			This script generates sample text for the body content. \r\n			You can remove this script and any reference to it. \r\n			 ============================= */\r\n			var bodyText=[\"The smaller your reality, the more convinced you are that you know everything.\", \"If the facts don\'t fit the theory, change the facts.\", \"The past has no power over the present moment.\", \"This, too, will pass.\", \"</p><p>You will not be punished for your anger, you will be punished by your anger.\", \"Peace comes from within. Do not seek it without.\", \"<h2>Heading</h2><p>The most important moment of your life is now. The most important person in your life is the one you are with now, and the most important activity in your life is the one you are involved with now.\"]\r\n			function generateText(sentenceCount){\r\n				for (var i=0; i<sentenceCount; i++)\r\n				document.write(bodyText[Math.floor(Math.random()*7)]+\" \")\r\n			}\r\n		</script>\r\n	</head>\r\n	<body>\r\n		<div id=\"page\">\r\n			<header id=\"header\">\r\n				<div id=\"header-inner\">	\r\n					<div id=\"logo\">\r\n						<h1><a href=\"#\">Cool<span>Logo</span></a></h1>\r\n					</div>\r\n					<div id=\"top-nav\">\r\n						<ul>\r\n						<li><a href=\"#\">About</a></li>\r\n						<li><a href=\"#\">Contact</a></li>\r\n						<li><a href=\"#\">FAQ</a></li>\r\n						<li><a href=\"#\">Help</a></li>\r\n						</ul>\r\n					</div>\r\n					<div class=\"clr\"></div>\r\n				</div>\r\n			</header>\r\n			<div class=\"feature\">\r\n				<div class=\"feature-inner\">\r\n				<h1>Heading</h1>\r\n				</div>\r\n			</div>\r\n		\r\n	\r\n			<div id=\"content\">\r\n				<div id=\"content-inner\">\r\n				\r\n					<main id=\"contentbar\">\r\n						<div class=\"article\">\r\n							<p><script>generateText(12)</script></p>\r\n						</div>\r\n					</main>\r\n					\r\n					<nav id=\"sidebar\">\r\n						<div class=\"widget\">\r\n							<h3>Left heading</h3>\r\n							<ul>\r\n							<li><a href=\"#\">Link 1</a></li>\r\n							<li><a href=\"#\">Link 2</a></li>\r\n							<li><a href=\"#\">Link 3</a></li>\r\n							<li><a href=\"#\">Link 4</a></li>\r\n							<li><a href=\"#\">Link 5</a></li>\r\n							</ul>\r\n						</div>\r\n					</nav>\r\n					\r\n					<div class=\"clr\"></div>\r\n				</div>\r\n			</div>\r\n		\r\n			<div id=\"footerblurb\">\r\n				<div id=\"footerblurb-inner\">\r\n				\r\n					<div class=\"column\">\r\n						<h2><span>Heading</span></h2>\r\n						<p><script>generateText(2)</script></p>\r\n					</div>	\r\n					<div class=\"column\">\r\n						<h2><span>Heading</span></h2>\r\n						<p><script>generateText(2)</script></p>\r\n					</div>\r\n					<div class=\"column\">\r\n						<h2><span>Heading</span></h2>\r\n						<p><script>generateText(2)</script></p>\r\n					</div>	\r\n					\r\n					<div class=\"clr\"></div>\r\n				</div>\r\n			</div>\r\n			<footer id=\"footer\">\r\n				<div id=\"footer-inner\">\r\n					<p>© Copyright <a href=\"#\">Your Site</a> | <a href=\"#\">Terms of Use</a> | <a href=\"#\">Privacy Policy</a></p>\r\n					<div class=\"clr\"></div>\r\n				</div>\r\n			</footer>\r\n		</div>\r\n	</body>\r\n</html>\r\n', NULL, NULL, NULL);
INSERT INTO `sources` (`id`, `lesson_id`, `code`, `code_id`, `created_at`, `updated_at`) VALUES
(1201, 125, '\r\n<html>\r\n	<head>\r\n		<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n		<title>Fixed Width 2 Red</title>\r\n		<style type=\"text/css\">\r\n			html, #page { padding:0; margin:0;}\r\n			body { margin:0; padding:0; width:100%; color:#959595; font:normal 12px/2.0em Sans-Serif;} \r\n			h1, h2, h3, h4, h5, h6 {color:darkred;}\r\n			#page { background:#eee;}\r\n			#header, #footer, #top-nav, #content, #content #contentbar, #content #sidebar { margin:0; padding:0;}\r\n						\r\n			/* Logo */\r\n			#logo { padding:10px; width:auto; float:left;}\r\n			#logo h1 a, h1 a:hover { color:darkred; text-decoration:none;}\r\n			#logo h1 span { color:#f8dbdb;}\r\n\r\n			/* Header */\r\n			#header { background:#eee; }\r\n			#header-inner { margin:0 auto; padding:10px; width:970px;background:#fff;}\r\n			\r\n			/* Feature */\r\n			.feature { background:#eee;padding:0;}\r\n			.feature-inner { margin:auto;padding:10px;width:970px;background:red; }\r\n			.feature-inner h1 {color:#f8dbdb;font-size:32px;}\r\n			\r\n			/* Menu */\r\n			#top-nav { margin:0 auto; padding:0px 0 0; height:37px; float:right;}\r\n			#top-nav ul { list-style:none; padding:0; height:37px; float:left;}\r\n			#top-nav ul li { margin:0; padding:0 0 0 8px; float:left;}\r\n			#top-nav ul li a { display:block; margin:0; padding:8px 20px; color:red; text-decoration:none;}\r\n			#top-nav ul li.active a, #top-nav ul li a:hover { color:#f8dbdb;}\r\n			\r\n			/* Content */\r\n			#content-inner { margin:0 auto; padding:10px; width:970px;background:#fff;}\r\n			#content #contentbar { margin:0; padding:0; float:right; width:760px;}\r\n			#content #contentbar .article { margin:0 0 24px; padding:0 20px 0 15px; }\r\n			#content #sidebar { padding:0; float:left; width:200px;}\r\n			#content #sidebar .widget { margin:0 0 12px; padding:8px 8px 8px 13px;line-height:1.4em;}\r\n			#content #sidebar .widget h3 a { text-decoration:none;}\r\n			#content #sidebar .widget ul { margin:0; padding:0; list-style:none; color:#959595;}\r\n			#content #sidebar .widget ul li { margin:0;}\r\n			#content #sidebar .widget ul li { padding:4px 0; width:185px;}\r\n			#content #sidebar .widget ul li a { color:red; text-decoration:none; margin-left:-16px; padding:4px 8px 4px 16px;}\r\n			#content #sidebar .widget ul li a:hover { color:#f8dbdb; font-weight:bold; text-decoration:none;}\r\n			\r\n			/* Footerblurb */\r\n			#footerblurb { background:#eee;color:red;}\r\n			#footerblurb-inner { margin:0 auto; width:970px; padding:10px;background:#f8dbdb;border-bottom-right-radius:15px;border-bottom-left-radius:15px;}\r\n			#footerblurb .column { margin:0; text-align:justify; float:left;width:250px;padding:0 24px;}\r\n			\r\n			/* Footer */\r\n			#footer { background:#eee;}\r\n			#footer-inner { margin:auto; text-align:center; padding:12px; width:970px;}\r\n			#footer a {color:red;text-decoration:none;}\r\n			\r\n			/* Clear both sides to assist with div alignment  */\r\n			.clr { clear:both; padding:0; margin:0; width:100%; font-size:0px; line-height:0px;}\r\n		</style>\r\n		<script type=\"text/javascript\">\r\n			/* =============================\r\n			This script generates sample text for the body content. \r\n			You can remove this script and any reference to it. \r\n			 ============================= */\r\n			var bodyText=[\"The smaller your reality, the more convinced you are that you know everything.\", \"If the facts don\'t fit the theory, change the facts.\", \"The past has no power over the present moment.\", \"This, too, will pass.\", \"</p><p>You will not be punished for your anger, you will be punished by your anger.\", \"Peace comes from within. Do not seek it without.\", \"<h2>Heading</h2><p>The most important moment of your life is now. The most important person in your life is the one you are with now, and the most important activity in your life is the one you are involved with now.\"]\r\n			function generateText(sentenceCount){\r\n				for (var i=0; i<sentenceCount; i++)\r\n				document.write(bodyText[Math.floor(Math.random()*7)]+\" \")\r\n			}\r\n		</script>\r\n	</head>\r\n	<body>\r\n		<div id=\"page\">\r\n			<header id=\"header\">\r\n				<div id=\"header-inner\">	\r\n					<div id=\"logo\">\r\n						<h1><a href=\"#\">Cool<span>Logo</span></a></h1>\r\n					</div>\r\n					<div id=\"top-nav\">\r\n						<ul>\r\n						<li><a href=\"#\">About</a></li>\r\n						<li><a href=\"#\">Contact</a></li>\r\n						<li><a href=\"#\">FAQ</a></li>\r\n						<li><a href=\"#\">Help</a></li>\r\n						</ul>\r\n					</div>\r\n					<div class=\"clr\"></div>\r\n				</div>\r\n			</header>\r\n			<div class=\"feature\">\r\n				<div class=\"feature-inner\">\r\n				<h1>Heading</h1>\r\n				</div>\r\n			</div>\r\n		\r\n	\r\n			<div id=\"content\">\r\n				<div id=\"content-inner\">\r\n				\r\n					<main id=\"contentbar\">\r\n						<div class=\"article\">\r\n							<p><script>generateText(12)</script></p>\r\n						</div>\r\n					</main>\r\n					\r\n					<nav id=\"sidebar\">\r\n						<div class=\"widget\">\r\n							<h3>Left heading</h3>\r\n							<ul>\r\n							<li><a href=\"#\">Link 1</a></li>\r\n							<li><a href=\"#\">Link 2</a></li>\r\n							<li><a href=\"#\">Link 3</a></li>\r\n							<li><a href=\"#\">Link 4</a></li>\r\n							<li><a href=\"#\">Link 5</a></li>\r\n							</ul>\r\n						</div>\r\n					</nav>\r\n					\r\n					<div class=\"clr\"></div>\r\n				</div>\r\n			</div>\r\n		\r\n			<div id=\"footerblurb\">\r\n				<div id=\"footerblurb-inner\">\r\n				\r\n					<div class=\"column\">\r\n						<h2><span>Heading</span></h2>\r\n						<p><script>generateText(2)</script></p>\r\n					</div>	\r\n					<div class=\"column\">\r\n						<h2><span>Heading</span></h2>\r\n						<p><script>generateText(2)</script></p>\r\n					</div>\r\n					<div class=\"column\">\r\n						<h2><span>Heading</span></h2>\r\n						<p><script>generateText(2)</script></p>\r\n					</div>	\r\n					\r\n					<div class=\"clr\"></div>\r\n				</div>\r\n			</div>\r\n			<footer id=\"footer\">\r\n				<div id=\"footer-inner\">\r\n					<p>© Copyright <a href=\"#\">Your Site</a> | <a href=\"#\">Terms of Use</a> | <a href=\"#\">Privacy Policy</a></p>\r\n					<div class=\"clr\"></div>\r\n				</div>\r\n			</footer>\r\n		</div>\r\n	</body>\r\n</html>\r\n', NULL, NULL, NULL),
(1202, 125, '\r\n<html>\r\n	<head>\r\n		<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n		<title>Fixed Width 2 Green</title>\r\n		<style type=\"text/css\">\r\n			html, #page { padding:0; margin:0;}\r\n			body { margin:0; padding:0; width:100%; color:#959595; font:normal 12px/2.0em Sans-Serif;} \r\n			h1, h2, h3, h4, h5, h6 {color:darkgreen;}\r\n			#page { background:#eee;}\r\n			#header, #footer, #top-nav, #content, #content #contentbar, #content #sidebar { margin:0; padding:0;}\r\n						\r\n			/* Logo */\r\n			#logo { padding:10px; width:auto; float:left;}\r\n			#logo h1 a, h1 a:hover { color:darkgreen; text-decoration:none;}\r\n			#logo h1 span { color:#BCCE98;}\r\n\r\n			/* Header */\r\n			#header { background:#eee; }\r\n			#header-inner { margin:0 auto; padding:10px; width:970px;background:#fff;}\r\n			\r\n			/* Feature */\r\n			.feature { background:#eee;padding:0;}\r\n			.feature-inner { margin:auto;padding:10px;width:970px;background:green; }\r\n			.feature-inner h1 {color:#DAE9BC;font-size:32px;}\r\n			\r\n			/* Menu */\r\n			#top-nav { margin:0 auto; padding:0px 0 0; height:37px; float:right;}\r\n			#top-nav ul { list-style:none; padding:0; height:37px; float:left;}\r\n			#top-nav ul li { margin:0; padding:0 0 0 8px; float:left;}\r\n			#top-nav ul li a { display:block; margin:0; padding:8px 20px; color:green; text-decoration:none;}\r\n			#top-nav ul li.active a, #top-nav ul li a:hover { color:#BCCE98;}\r\n			\r\n			/* Content */\r\n			#content-inner { margin:0 auto; padding:10px; width:970px;background:#fff;}\r\n			#content #contentbar { margin:0; padding:0; float:right; width:760px;}\r\n			#content #contentbar .article { margin:0 0 24px; padding:0 20px 0 15px; }\r\n			#content #sidebar { padding:0; float:left; width:200px;}\r\n			#content #sidebar .widget { margin:0 0 12px; padding:8px 8px 8px 13px;line-height:1.4em;}\r\n			#content #sidebar .widget h3 a { text-decoration:none;}\r\n			#content #sidebar .widget ul { margin:0; padding:0; list-style:none; color:#959595;}\r\n			#content #sidebar .widget ul li { margin:0;}\r\n			#content #sidebar .widget ul li { padding:4px 0; width:185px;}\r\n			#content #sidebar .widget ul li a { color:green; text-decoration:none; margin-left:-16px; padding:4px 8px 4px 16px;}\r\n			#content #sidebar .widget ul li a:hover { color:#BCCE98; font-weight:bold; text-decoration:none;}\r\n			\r\n			/* Footerblurb */\r\n			#footerblurb { background:#eee;color:green;}\r\n			#footerblurb-inner { margin:0 auto; width:970px; padding:10px;background:#DAE9BC;border-bottom-right-radius:15px;border-bottom-left-radius:15px;}\r\n			#footerblurb .column { margin:0; text-align:justify; float:left;width:250px;padding:0 24px;}\r\n			\r\n			/* Footer */\r\n			#footer { background:#eee;}\r\n			#footer-inner { margin:auto; text-align:center; padding:12px; width:970px;}\r\n			#footer a {color:green;text-decoration:none;}\r\n			\r\n			/* Clear both sides to assist with div alignment  */\r\n			.clr { clear:both; padding:0; margin:0; width:100%; font-size:0px; line-height:0px;}\r\n		</style>\r\n		<script type=\"text/javascript\">\r\n			/* =============================\r\n			This script generates sample text for the body content. \r\n			You can remove this script and any reference to it. \r\n			 ============================= */\r\n			var bodyText=[\"The smaller your reality, the more convinced you are that you know everything.\", \"If the facts don\'t fit the theory, change the facts.\", \"The past has no power over the present moment.\", \"This, too, will pass.\", \"</p><p>You will not be punished for your anger, you will be punished by your anger.\", \"Peace comes from within. Do not seek it without.\", \"<h2>Heading</h2><p>The most important moment of your life is now. The most important person in your life is the one you are with now, and the most important activity in your life is the one you are involved with now.\"]\r\n			function generateText(sentenceCount){\r\n				for (var i=0; i<sentenceCount; i++)\r\n				document.write(bodyText[Math.floor(Math.random()*7)]+\" \")\r\n			}\r\n		</script>\r\n	</head>\r\n	<body>\r\n		<div id=\"page\">\r\n			<header id=\"header\">\r\n				<div id=\"header-inner\">	\r\n					<div id=\"logo\">\r\n						<h1><a href=\"#\">Cool<span>Logo</span></a></h1>\r\n					</div>\r\n					<div id=\"top-nav\">\r\n						<ul>\r\n						<li><a href=\"#\">About</a></li>\r\n						<li><a href=\"#\">Contact</a></li>\r\n						<li><a href=\"#\">FAQ</a></li>\r\n						<li><a href=\"#\">Help</a></li>\r\n						</ul>\r\n					</div>\r\n					<div class=\"clr\"></div>\r\n				</div>\r\n			</header>\r\n			<div class=\"feature\">\r\n				<div class=\"feature-inner\">\r\n				<h1>Heading</h1>\r\n				</div>\r\n			</div>\r\n		\r\n	\r\n			<div id=\"content\">\r\n				<div id=\"content-inner\">\r\n				\r\n					<main id=\"contentbar\">\r\n						<div class=\"article\">\r\n							<p><script>generateText(12)</script></p>\r\n						</div>\r\n					</main>\r\n					\r\n					<nav id=\"sidebar\">\r\n						<div class=\"widget\">\r\n							<h3>Left heading</h3>\r\n							<ul>\r\n							<li><a href=\"#\">Link 1</a></li>\r\n							<li><a href=\"#\">Link 2</a></li>\r\n							<li><a href=\"#\">Link 3</a></li>\r\n							<li><a href=\"#\">Link 4</a></li>\r\n							<li><a href=\"#\">Link 5</a></li>\r\n							</ul>\r\n						</div>\r\n					</nav>\r\n					\r\n					<div class=\"clr\"></div>\r\n				</div>\r\n			</div>\r\n		\r\n			<div id=\"footerblurb\">\r\n				<div id=\"footerblurb-inner\">\r\n				\r\n					<div class=\"column\">\r\n						<h2><span>Heading</span></h2>\r\n						<p><script>generateText(2)</script></p>\r\n					</div>	\r\n					<div class=\"column\">\r\n						<h2><span>Heading</span></h2>\r\n						<p><script>generateText(2)</script></p>\r\n					</div>\r\n					<div class=\"column\">\r\n						<h2><span>Heading</span></h2>\r\n						<p><script>generateText(2)</script></p>\r\n					</div>	\r\n					\r\n					<div class=\"clr\"></div>\r\n				</div>\r\n			</div>\r\n			<footer id=\"footer\">\r\n				<div id=\"footer-inner\">\r\n					<p>© Copyright <a href=\"#\">Your Site</a> | <a href=\"#\">Terms of Use</a> | <a href=\"#\">Privacy Policy</a></p>\r\n					<div class=\"clr\"></div>\r\n				</div>\r\n			</footer>\r\n		</div>\r\n	</body>\r\n</html>\r\n', NULL, NULL, NULL),
(1203, 125, '\r\n<html>\r\n	<head>\r\n		<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n		<title>Fixed Width 2 Blue</title>\r\n		<style type=\"text/css\">\r\n			html, #page { padding:0; margin:0;}\r\n			body { margin:0; padding:0; width:100%; color:#959595; font:normal 12px/2.0em Sans-Serif;} \r\n			h1, h2, h3, h4, h5, h6 {color:darkblue;}\r\n			#page { background:#eee;}\r\n			#header, #footer, #top-nav, #content, #content #contentbar, #content #sidebar { margin:0; padding:0;}\r\n						\r\n			/* Logo */\r\n			#logo { padding:10px; width:auto; float:left;}\r\n			#logo h1 a, h1 a:hover { color:darkblue; text-decoration:none;}\r\n			#logo h1 span { color:#d3d3f9;}\r\n\r\n			/* Header */\r\n			#header { background:#eee; }\r\n			#header-inner { margin:0 auto; padding:10px; width:970px;background:#fff;}\r\n			\r\n			/* Feature */\r\n			.feature { background:#eee;padding:0;}\r\n			.feature-inner { margin:auto;padding:10px;width:970px;background:blue; }\r\n			.feature-inner h1 {color:#d3d3f9;font-size:32px;}\r\n			\r\n			/* Menu */\r\n			#top-nav { margin:0 auto; padding:0px 0 0; height:37px; float:right;}\r\n			#top-nav ul { list-style:none; padding:0; height:37px; float:left;}\r\n			#top-nav ul li { margin:0; padding:0 0 0 8px; float:left;}\r\n			#top-nav ul li a { display:block; margin:0; padding:8px 20px; color:blue; text-decoration:none;}\r\n			#top-nav ul li.active a, #top-nav ul li a:hover { color:#d3d3f9;}\r\n			\r\n			/* Content */\r\n			#content-inner { margin:0 auto; padding:10px; width:970px;background:#fff;}\r\n			#content #contentbar { margin:0; padding:0; float:right; width:760px;}\r\n			#content #contentbar .article { margin:0 0 24px; padding:0 20px 0 15px; }\r\n			#content #sidebar { padding:0; float:left; width:200px;}\r\n			#content #sidebar .widget { margin:0 0 12px; padding:8px 8px 8px 13px;line-height:1.4em;}\r\n			#content #sidebar .widget h3 a { text-decoration:none;}\r\n			#content #sidebar .widget ul { margin:0; padding:0; list-style:none; color:#959595;}\r\n			#content #sidebar .widget ul li { margin:0;}\r\n			#content #sidebar .widget ul li { padding:4px 0; width:185px;}\r\n			#content #sidebar .widget ul li a { color:blue; text-decoration:none; margin-left:-16px; padding:4px 8px 4px 16px;}\r\n			#content #sidebar .widget ul li a:hover { color:#d3d3f9; font-weight:bold; text-decoration:none;}\r\n			\r\n			/* Footerblurb */\r\n			#footerblurb { background:#eee;color:blue;}\r\n			#footerblurb-inner { margin:0 auto; width:970px; padding:10px;background:#d3d3f9;border-bottom-right-radius:15px;border-bottom-left-radius:15px;}\r\n			#footerblurb .column { margin:0; text-align:justify; float:left;width:250px;padding:0 24px;}\r\n			\r\n			/* Footer */\r\n			#footer { background:#eee;}\r\n			#footer-inner { margin:auto; text-align:center; padding:12px; width:970px;}\r\n			#footer a {color:blue;text-decoration:none;}\r\n			\r\n			/* Clear both sides to assist with div alignment  */\r\n			.clr { clear:both; padding:0; margin:0; width:100%; font-size:0px; line-height:0px;}\r\n		</style>\r\n		<script type=\"text/javascript\">\r\n			/* =============================\r\n			This script generates sample text for the body content. \r\n			You can remove this script and any reference to it. \r\n			 ============================= */\r\n			var bodyText=[\"The smaller your reality, the more convinced you are that you know everything.\", \"If the facts don\'t fit the theory, change the facts.\", \"The past has no power over the present moment.\", \"This, too, will pass.\", \"</p><p>You will not be punished for your anger, you will be punished by your anger.\", \"Peace comes from within. Do not seek it without.\", \"<h2>Heading</h2><p>The most important moment of your life is now. The most important person in your life is the one you are with now, and the most important activity in your life is the one you are involved with now.\"]\r\n			function generateText(sentenceCount){\r\n				for (var i=0; i<sentenceCount; i++)\r\n				document.write(bodyText[Math.floor(Math.random()*7)]+\" \")\r\n			}\r\n		</script>\r\n	</head>\r\n	<body>\r\n		<div id=\"page\">\r\n			<header id=\"header\">\r\n				<div id=\"header-inner\">	\r\n					<div id=\"logo\">\r\n						<h1><a href=\"#\">Cool<span>Logo</span></a></h1>\r\n					</div>\r\n					<div id=\"top-nav\">\r\n						<ul>\r\n						<li><a href=\"#\">About</a></li>\r\n						<li><a href=\"#\">Contact</a></li>\r\n						<li><a href=\"#\">FAQ</a></li>\r\n						<li><a href=\"#\">Help</a></li>\r\n						</ul>\r\n					</div>\r\n					<div class=\"clr\"></div>\r\n				</div>\r\n			</header>\r\n			<div class=\"feature\">\r\n				<div class=\"feature-inner\">\r\n				<h1>Heading</h1>\r\n				</div>\r\n			</div>\r\n		\r\n	\r\n			<div id=\"content\">\r\n				<div id=\"content-inner\">\r\n				\r\n					<main id=\"contentbar\">\r\n						<div class=\"article\">\r\n							<p><script>generateText(12)</script></p>\r\n						</div>\r\n					</main>\r\n					\r\n					<nav id=\"sidebar\">\r\n						<div class=\"widget\">\r\n							<h3>Left heading</h3>\r\n							<ul>\r\n							<li><a href=\"#\">Link 1</a></li>\r\n							<li><a href=\"#\">Link 2</a></li>\r\n							<li><a href=\"#\">Link 3</a></li>\r\n							<li><a href=\"#\">Link 4</a></li>\r\n							<li><a href=\"#\">Link 5</a></li>\r\n							</ul>\r\n						</div>\r\n					</nav>\r\n					\r\n					<div class=\"clr\"></div>\r\n				</div>\r\n			</div>\r\n		\r\n			<div id=\"footerblurb\">\r\n				<div id=\"footerblurb-inner\">\r\n				\r\n					<div class=\"column\">\r\n						<h2><span>Heading</span></h2>\r\n						<p><script>generateText(2)</script></p>\r\n					</div>	\r\n					<div class=\"column\">\r\n						<h2><span>Heading</span></h2>\r\n						<p><script>generateText(2)</script></p>\r\n					</div>\r\n					<div class=\"column\">\r\n						<h2><span>Heading</span></h2>\r\n						<p><script>generateText(2)</script></p>\r\n					</div>	\r\n					\r\n					<div class=\"clr\"></div>\r\n				</div>\r\n			</div>\r\n			<footer id=\"footer\">\r\n				<div id=\"footer-inner\">\r\n					<p>© Copyright <a href=\"#\">Your Site</a> | <a href=\"#\">Terms of Use</a> | <a href=\"#\">Privacy Policy</a></p>\r\n					<div class=\"clr\"></div>\r\n				</div>\r\n			</footer>\r\n		</div>\r\n	</body>\r\n</html>\r\n', NULL, NULL, NULL),
(1204, 125, '\r\n<html>\r\n	<head>\r\n		<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n		<title>Fixed Width 2 Orange</title>\r\n		<style type=\"text/css\">\r\n			html, #page { padding:0; margin:0;}\r\n			body { margin:0; padding:0; width:100%; color:#959595; font:normal 12px/2.0em Sans-Serif;} \r\n			h1, h2, h3, h4, h5, h6 {color:darkorange;}\r\n			#page { background:#eee;}\r\n			#header, #footer, #top-nav, #content, #content #contentbar, #content #sidebar { margin:0; padding:0;}\r\n						\r\n			/* Logo */\r\n			#logo { padding:10px; width:auto; float:left;}\r\n			#logo h1 a, h1 a:hover { color:darkorange; text-decoration:none;}\r\n			#logo h1 span { color:#f9ebdb;}\r\n\r\n			/* Header */\r\n			#header { background:#eee; }\r\n			#header-inner { margin:0 auto; padding:10px; width:970px;background:#fff;}\r\n			\r\n			/* Feature */\r\n			.feature { background:#eee;padding:0;}\r\n			.feature-inner { margin:auto;padding:10px;width:970px;background:orange; }\r\n			.feature-inner h1 {color:#f9ebdb;font-size:32px;}\r\n			\r\n			/* Menu */\r\n			#top-nav { margin:0 auto; padding:0px 0 0; height:37px; float:right;}\r\n			#top-nav ul { list-style:none; padding:0; height:37px; float:left;}\r\n			#top-nav ul li { margin:0; padding:0 0 0 8px; float:left;}\r\n			#top-nav ul li a { display:block; margin:0; padding:8px 20px; color:orange; text-decoration:none;}\r\n			#top-nav ul li.active a, #top-nav ul li a:hover { color:#f9ebdb;}\r\n			\r\n			/* Content */\r\n			#content-inner { margin:0 auto; padding:10px; width:970px;background:#fff;}\r\n			#content #contentbar { margin:0; padding:0; float:right; width:760px;}\r\n			#content #contentbar .article { margin:0 0 24px; padding:0 20px 0 15px; }\r\n			#content #sidebar { padding:0; float:left; width:200px;}\r\n			#content #sidebar .widget { margin:0 0 12px; padding:8px 8px 8px 13px;line-height:1.4em;}\r\n			#content #sidebar .widget h3 a { text-decoration:none;}\r\n			#content #sidebar .widget ul { margin:0; padding:0; list-style:none; color:#959595;}\r\n			#content #sidebar .widget ul li { margin:0;}\r\n			#content #sidebar .widget ul li { padding:4px 0; width:185px;}\r\n			#content #sidebar .widget ul li a { color:orange; text-decoration:none; margin-left:-16px; padding:4px 8px 4px 16px;}\r\n			#content #sidebar .widget ul li a:hover { color:#f9ebdb; font-weight:bold; text-decoration:none;}\r\n			\r\n			/* Footerblurb */\r\n			#footerblurb { background:#eee;color:orange;}\r\n			#footerblurb-inner { margin:0 auto; width:970px; padding:10px;background:#f9ebdb;border-bottom-right-radius:15px;border-bottom-left-radius:15px;}\r\n			#footerblurb .column { margin:0; text-align:justify; float:left;width:250px;padding:0 24px;}\r\n			\r\n			/* Footer */\r\n			#footer { background:#eee;}\r\n			#footer-inner { margin:auto; text-align:center; padding:12px; width:970px;}\r\n			#footer a {color:orange;text-decoration:none;}\r\n			\r\n			/* Clear both sides to assist with div alignment  */\r\n			.clr { clear:both; padding:0; margin:0; width:100%; font-size:0px; line-height:0px;}\r\n		</style>\r\n		<script type=\"text/javascript\">\r\n			/* =============================\r\n			This script generates sample text for the body content. \r\n			You can remove this script and any reference to it. \r\n			 ============================= */\r\n			var bodyText=[\"The smaller your reality, the more convinced you are that you know everything.\", \"If the facts don\'t fit the theory, change the facts.\", \"The past has no power over the present moment.\", \"This, too, will pass.\", \"</p><p>You will not be punished for your anger, you will be punished by your anger.\", \"Peace comes from within. Do not seek it without.\", \"<h2>Heading</h2><p>The most important moment of your life is now. The most important person in your life is the one you are with now, and the most important activity in your life is the one you are involved with now.\"]\r\n			function generateText(sentenceCount){\r\n				for (var i=0; i<sentenceCount; i++)\r\n				document.write(bodyText[Math.floor(Math.random()*7)]+\" \")\r\n			}\r\n		</script>\r\n	</head>\r\n	<body>\r\n		<div id=\"page\">\r\n			<header id=\"header\">\r\n				<div id=\"header-inner\">	\r\n					<div id=\"logo\">\r\n						<h1><a href=\"#\">Cool<span>Logo</span></a></h1>\r\n					</div>\r\n					<div id=\"top-nav\">\r\n						<ul>\r\n						<li><a href=\"#\">About</a></li>\r\n						<li><a href=\"#\">Contact</a></li>\r\n						<li><a href=\"#\">FAQ</a></li>\r\n						<li><a href=\"#\">Help</a></li>\r\n						</ul>\r\n					</div>\r\n					<div class=\"clr\"></div>\r\n				</div>\r\n			</header>\r\n			<div class=\"feature\">\r\n				<div class=\"feature-inner\">\r\n				<h1>Heading</h1>\r\n				</div>\r\n			</div>\r\n		\r\n	\r\n			<div id=\"content\">\r\n				<div id=\"content-inner\">\r\n				\r\n					<main id=\"contentbar\">\r\n						<div class=\"article\">\r\n							<p><script>generateText(12)</script></p>\r\n						</div>\r\n					</main>\r\n					\r\n					<nav id=\"sidebar\">\r\n						<div class=\"widget\">\r\n							<h3>Left heading</h3>\r\n							<ul>\r\n							<li><a href=\"#\">Link 1</a></li>\r\n							<li><a href=\"#\">Link 2</a></li>\r\n							<li><a href=\"#\">Link 3</a></li>\r\n							<li><a href=\"#\">Link 4</a></li>\r\n							<li><a href=\"#\">Link 5</a></li>\r\n							</ul>\r\n						</div>\r\n					</nav>\r\n					\r\n					<div class=\"clr\"></div>\r\n				</div>\r\n			</div>\r\n		\r\n			<div id=\"footerblurb\">\r\n				<div id=\"footerblurb-inner\">\r\n				\r\n					<div class=\"column\">\r\n						<h2><span>Heading</span></h2>\r\n						<p><script>generateText(2)</script></p>\r\n					</div>	\r\n					<div class=\"column\">\r\n						<h2><span>Heading</span></h2>\r\n						<p><script>generateText(2)</script></p>\r\n					</div>\r\n					<div class=\"column\">\r\n						<h2><span>Heading</span></h2>\r\n						<p><script>generateText(2)</script></p>\r\n					</div>	\r\n					\r\n					<div class=\"clr\"></div>\r\n				</div>\r\n			</div>\r\n			<footer id=\"footer\">\r\n				<div id=\"footer-inner\">\r\n					<p>© Copyright <a href=\"#\">Your Site</a> | <a href=\"#\">Terms of Use</a> | <a href=\"#\">Privacy Policy</a></p>\r\n					<div class=\"clr\"></div>\r\n				</div>\r\n			</footer>\r\n		</div>\r\n	</body>\r\n</html>', NULL, NULL, NULL),
(1216, 148, '	<?php\r\n// Hàm bình thường\r\nfunction helloWorld()\r\n{\r\n  return \"Hello world\";\r\n}\r\necho helloWorld();\r\n// \"Hello world\"\r\n \r\n// Hàm ẩn danh\r\n// gán cho 1 biến\r\n\r\n//gán biến bằng hàm ẩn danh.\r\n$lambda = function () {\r\n	return \'Học lập trình PHP\';\r\n};\r\n//gọi biến\r\necho $lambda();\r\n?>', NULL, NULL, NULL),
(1217, 148, '<?php\r\n$Toast = function($message)\r\n{\r\n    echo \'Hello \'.$message;\r\n};\r\n// Call function\r\n$Toast(\'PHP\');\r\n?>', NULL, NULL, NULL),
(1218, 148, '<?php\r\nfunction Toast ($message){\r\n  echo $message();\r\n}\r\n \r\n// Call function\r\nToast(function() {\r\n  return \"Hello world\";\r\n});\r\n?>', NULL, NULL, NULL),
(1219, 149, '<?php\r\nclass X {\r\n    private $non_static_member = 1;\r\n    private static $static_member = 2;\r\n \r\n    function __construct() {\r\n        echo $this->non_static_member . \' \'\r\n           . self::$static_member;\r\n    }\r\n}\r\n \r\nnew X();\r\n?>', NULL, NULL, NULL),
(1220, 149, '<?php\r\nclass X {\r\n    function foo() {\r\n        echo \'X::foo()\';\r\n    }\r\n \r\n    function bar() {\r\n        $this->foo();\r\n    }\r\n}\r\n \r\nclass Y extends X {\r\n    function foo() {\r\n        echo \'Y::foo()\';\r\n    }\r\n}\r\n \r\n$x = new Y();\r\n$x->bar();\r\n?>', NULL, NULL, NULL),
(1221, 149, '<?php\r\nclass X {\r\n    function foo() {\r\n        echo \'X::foo()\';\r\n    }\r\n \r\n    function bar() {\r\n        self::foo();\r\n    }\r\n}\r\n \r\nclass Y extends X {\r\n    function foo() {\r\n        echo \'Y::foo()\';\r\n    }\r\n}\r\n \r\n$x = new Y();\r\n$x->bar();\r\n?>', NULL, NULL, NULL),
(1222, 146, '<?php\r\ninterface IA{\r\n    public function pa();\r\n}\r\ninterface IB{\r\n    public function pb();\r\n}\r\nclass C{\r\n    public function pc(){\r\n        echo \'phuong thuc pc cua lop c\';\r\n    }\r\n}\r\n// extend dc 1 class, nhưng implements nhiều interface\r\nclass D extends C implements IA,IB{\r\n    public function pa(){\r\n        echo \'phuong thuc pa duoc khai bao interface\';\r\n    }\r\n    public function pb(){\r\n        echo \'phuong thuc pb duoc khai bao interface\';\r\n    }\r\n    public function pd(){\r\n        echo \'phuong thuc pc cua lop d\';\r\n    }\r\n}\r\n$s = new D();\r\n$s->pc();\r\n?>', NULL, NULL, NULL),
(1223, 146, '<?php\r\n//Ví dụ 2\r\ninterface IDrawable\r\n{  \r\n	function draw();  \r\n}  \r\n//Implementation: by second user  \r\nclass Rectangle implements IDrawable\r\n{  \r\n function draw()\r\n	{\r\n		echo\"drawing rectangle\";\r\n	}  \r\n}  \r\nclass Circle implements IDrawable\r\n{  \r\n	public function draw()\r\n	{\r\n		echo\"drawing circle\";\r\n	}  \r\n}  \r\n\r\n $circle = new Circle();\r\n $circle->draw();\r\n?> ', NULL, NULL, NULL),
(1224, 146, '<?php\r\ninterface IPrintable\r\n{  \r\n	function printMe();  \r\n}  \r\ninterface IShowable\r\n{  \r\n	function show();  \r\n}  \r\n\r\nclass A7 implements IPrintable, IShowable\r\n{  \r\n	public function printMe()\r\n	{\r\n		echo \"Hello\";\r\n	}  \r\n	public function show()\r\n	{\r\n		echo \"Welcome\";\r\n	}  \r\n}\r\n$a7 = new A7();\r\n$a7->printMe();\r\n$a7->show();\r\n?>', NULL, NULL, NULL),
(1241, 153, '<script>  \r\n// It is single line comment  \r\ndocument.write(\"hello javascript\");  \r\n</script>  \r\n', NULL, NULL, NULL),
(1242, 153, '<script>  \r\nvar a=10;  \r\nvar b=20;  \r\nvar c=a+b;//It adds values of a and b variable  \r\ndocument.write(c);//prints sum of 10 and 20  \r\n</script>  \r\n', NULL, NULL, NULL),
(1243, 153, '<script>  \r\n/* Đây là ghi chú trên nhiều dòng.  \r\nĐoạn mã sau không thực thi */  \r\ndocument.write(\"Học Javascript (JS) không khó, mà khổ\");  \r\n</script>', NULL, NULL, NULL),
(1257, 155, '<script>  \r\nvar x = 10;  \r\nvar y = 20;  \r\nvar z=x+y;  \r\ndocument.write(z);  \r\n</script>  ', NULL, NULL, NULL),
(1258, 155, '<script>  \r\nvar value=50;//global variable  \r\nfunction a(){  \r\ndocument.write(value);  \r\n}  \r\nfunction b(){  \r\ndocument.write(value);  \r\n}  \r\n//gọi hàm\r\na();\r\nb();\r\n</script>  ', NULL, NULL, NULL),
(1259, 155, '<script>\r\nfunction m(){  \r\nwindow.value=100;//declaring global variable by window object  \r\n}  \r\nfunction n(){  \r\ndocument.write(window.value);//accessing global variable from other function  \r\n}  \r\n//phải gọi hàm m() trước\r\nm();\r\nn();\r\n</script>', NULL, NULL, NULL),
(1280, 152, '<script type=\"text/javascript\">  \r\n   document.write(\"JavaScript là ngôn ngữ đơn giản, dễ học.\");  \r\n</script>  \r\n', NULL, NULL, NULL),
(1281, 152, '<html >\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title>Ví dụ javascript</title>\r\n</head>\r\n\r\n<body>\r\n<script type=\"text/javascript\">  \r\n alert(\"Học javascript không khó, mà khổ\");  \r\n</script>\r\n\r\n\r\n</body>\r\n</html>\r\n', NULL, NULL, NULL),
(1282, 152, '<html>  \r\n<head>  \r\n<script type=\"text/javascript\">  \r\nfunction msg(){  \r\n  alert(\"Học javascript không khó, mà khổ\"); \r\n \r\n}  \r\n</script>  \r\n</head>  \r\n<body>  \r\n<p>Welcome to JavaScript</p>  \r\n<form>  \r\n<input type=\"button\" value=\"click\" onclick=\"msg()\"/>  \r\n</form>  \r\n</body>  \r\n</html>  ', NULL, NULL, NULL),
(1283, 152, '<html>  \r\n<head>  \r\n<script type=\"text/javascript\" src=\"test.js\"></script>  \r\n</head>  \r\n<body>  \r\n<p>Welcome to JavaScript</p>  \r\n<form>  \r\n<input type=\"button\" value=\"click\" onclick=\"msg()\"/>  \r\n</form>  \r\n</body>  \r\n</html>', NULL, NULL, NULL),
(1289, 157, '<html>\r\n<body>\r\n\r\n<p>Toán tử typeof trả về kiểu dữ liệu của biến, đối tượng, hàm hoặc biểu thức.</p>\r\n\r\n<p id=\"demo\"></p>\r\n\r\n<script>\r\ndocument.getElementById(\"demo\").innerHTML = \r\n    typeof \"John\" + \"<br>\" +\r\n    typeof 3.14 + \"<br>\" +\r\n    typeof NaN + \"<br>\" +\r\n    typeof false + \"<br>\" +\r\n    typeof [1, 2, 3, 4] + \"<br>\" +\r\n    typeof {name:\'John\', age:34} + \"<br>\" +\r\n    typeof new Date() + \"<br>\" +\r\n    typeof function () {} + \"<br>\" +\r\n    typeof myCar + \"<br>\" +\r\n    typeof null;\r\n</script>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL),
(1290, 157, '<html>\r\n<body>\r\n\r\n<p>Toán tử delete xóa thuộc tính của đối tượng.</p>\r\n\r\n<p id=\"demo\"></p>\r\n\r\n<script>\r\nvar person = {\r\n    firstname:\"John\",\r\n    lastname:\"Doe\",\r\n    age:50,\r\n    eyecolor:\"blue\"\r\n};\r\ndelete person.age;\r\ndocument.getElementById(\"demo\").innerHTML =\r\nperson.firstname + \" is \" + person.age + \" years old.\";\r\n</script>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL),
(1291, 157, '<html>\r\n<body>\r\n\r\n<p>Toán tử này trả về giá trị true nếu thuộc tính đó thuộc đối tượng.</p>\r\n\r\n<p id=\"demo\"></p>\r\n\r\n<script>\r\n// Arrays\r\nvar cars = [\"Saab\", \"Volvo\", \"BMW\"];\r\n// Objects\r\nvar person = {firstName:\"John\", lastName:\"Doe\", age:50};\r\n\r\ndocument.getElementById(\"demo\").innerHTML =\r\n    (\"Saab\" in cars) + \"<br>\" + \r\n    (0 in cars) + \"<br>\" +\r\n    (1 in cars) + \"<br>\" +\r\n    (4 in cars) + \"<br>\" +\r\n    (\"length\" in cars) + \"<br>\" +\r\n\r\n    (\"firstName\" in person) + \"<br>\" +\r\n    (\"age\" in person) + \"<br>\" +\r\n\r\n    // Predefined objects\r\n    (\"PI\" in Math) + \"<br>\" +\r\n    (\"NaN\" in Number) + \"<br>\" +\r\n    (\"length\" in String);\r\n</script>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL),
(1292, 157, '<html>\r\n<body>\r\n\r\n<p>Toán tử instanceof trả về true nếu đối tượng được đang sử dụng là một thể hiện của đối tượng đang sử dụng.</p>\r\n\r\n<p id=\"demo\"></p>\r\n\r\n<script>\r\nvar cars = [\"Saab\", \"Volvo\", \"BMW\"];\r\n\r\ndocument.getElementById(\"demo\").innerHTML =\r\n    (cars instanceof Array) + \"<br>\" + \r\n    (cars instanceof Object) + \"<br>\" +\r\n    (cars instanceof String) + \"<br>\" +\r\n    (cars instanceof Number);\r\n</script>\r\n\r\n</body>\r\n</html>\r\n', NULL, NULL, NULL),
(1293, 157, '<html>\r\n<body>\r\n\r\n\r\n<p>\r\n<a href=\"javascript:void(0);\">\r\n  Useless link\r\n</a>\r\n</p>\r\n\r\n<p>\r\n<a href=\"javascript:void(document.body.style.backgroundColor=\'red\');\">\r\n  Click vào đây thay đổi màu của <body> sang màu đỏ.\r\n</a>\r\n</p>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL),
(1294, 154, '<script>\r\ndocument.write(\"Chào các bạn!<BR>\");\r\n</script>', NULL, NULL, NULL),
(1295, 154, '<script>\r\ndocument.write(\"Chào các bạn\");\r\ndocument.writeln(\"Chúc các bạn vui vẻ!\");  \r\n</script>', NULL, NULL, NULL),
(1296, 154, '<html>\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title>Lập trình JS</title>\r\n</head>\r\n\r\n<body>\r\n<PRE>\r\n<script Language=\"JavaScript\">\r\ndocument.writeln(\"One,\");\r\ndocument.write(\"Two,\\n\");\r\ndocument.write(\"Three \");\r\ndocument.write(\"...\");\r\n</script>\r\n</PRE>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL),
(1300, 158, '<Body> \r\n<script Language=\"JavaScript\">\r\nalert(\"Chào mừng bạn đến với JavaScript!. \\n Nhấn Ok để tiếp tục\");\r\n</script>\r\nChúc bạn thành công!!!\r\n</Body> ', NULL, NULL, NULL),
(1301, 158, '<Body>\r\n<script Language=\"JavaScript\">\r\nvar   name=window.prompt(\"Xin chào!Bạn tên gì?\",\"\");\r\ndocument.write(\"Xin chào bạn \" + name + \" ! Chúc bạn học tốt JavaScript \");\r\n</script>\r\n</Body>\r\n   ', NULL, NULL, NULL),
(1302, 158, '<html><head>\r\n<script>\r\nfunction Hoidap(){\r\n    question = confirm(\"Bạn thật sự muốn truy cập Website\")\r\n    if (question !=\"0\"){\r\n        top.location = \"http://www.tuoitre.com.vn/\"\r\n    }\r\n}\r\n</script>\r\n</head>\r\n<body>\r\nHãy click vào đây để truy cập website:<a href=\"\"onClick=\"Hoidap();return false;\">Báo Tuổi Trẻ </a> \r\n</body></html>', NULL, NULL, NULL),
(1309, 159, '<script>\r\nfunction check_number(number)\r\n{\r\n    if (number % 2 == 0){\r\n        alert(number + \' là số chẵn\');\r\n    }\r\n    else {\r\n        alert(number + \'Số lẻ\');\r\n    }\r\n}\r\n \r\n// Sử dụng hàm kiểm tra cho 5 số\r\ncheck_number(1);\r\ncheck_number(2);\r\ncheck_number(3);\r\ncheck_number(4);\r\ncheck_number(5);\r\n</script>', NULL, NULL, NULL),
(1310, 159, '<script>\r\n// Khai báo hàm\r\nfunction sum(a, b)\r\n{\r\n    // trả về kết quả là a + b\r\n    return a + b;\r\n}\r\n \r\n// Sử dụng\r\nvar a= 1;\r\nvar b= 2;\r\n \r\n// truyền so1 và so2 vào hàm\r\nvar result= sum(a, b);\r\n \r\ndocument.write(result);\r\n</script>', NULL, NULL, NULL),
(1311, 159, '<script>\r\nfunction sum(a, b)\r\n{\r\n    document.write(\'Tổng là \' + (a + b));\r\n}\r\n \r\n// Sử dụng\r\nvar a= 1;\r\nvar b= 2;\r\n \r\n// truyền so1 và so2 vào hàm\r\nsum(a, b);\r\n</script>', NULL, NULL, NULL),
(1312, 159, '<script>\r\nfunction showMessage(message)\r\n{\r\n   // Nếu message không được truyền vào hoặc giá trị nó là rỗng\r\n   // thì sẽ được thay thế bằng giá trị \'Không có tin nhắn\'\r\n   message = message || \'Không có tin nhắn <br/>\';\r\n   document.write(message);\r\n}\r\n \r\n// Cách 1: không truyền tham số\r\nshowMessage();\r\n \r\n// Cách 2: Truyền tham số\r\nshowMessage(\'Chào mừng bạn đến với hiệp sĩ it dot com\');\r\n</script>', NULL, NULL, NULL),
(1313, 159, '<script>    \r\nfunction display(number) {    \r\n    if(number<=5){    \r\n     document.write(number+\"<br>\");    \r\n     display(number+1);    \r\n    }  \r\n}    \r\n    \r\ndisplay(1);    \r\n</script>    ', NULL, NULL, NULL),
(1314, 159, '<HTML> <Head><Title>Eval Example </Title>\r\n<script Language= \"JavaScript\">\r\n	var string=\"10+ Math.sqrt(64)\";\r\n	document.write(string+ \"=\"+ eval(string));\r\n</script>\r\n</Head>\r\n<Body> </Body>\r\n</HTML>', NULL, NULL, NULL),
(1315, 159, '<HTML> <Head><Title>ParserInt Example </Title><Body>\r\n<Script Language= \"JavaScript\">\r\ndocument.write(\"Converting 0xC hex to base-10: \" + parseInt(0xC,10) + \"<BR>\");\r\ndocument.write(\"Converting 1100 binary to base-10:\" + parseInt(1100,2) + \"<BR>\");\r\n</Script>\r\n</Body></HTML>', NULL, NULL, NULL),
(1316, 159, '<Body> \r\n<script language= \"JavaScript\">\r\ndocument.write(\"This script will show how diffrent strings are \");\r\ndocument.write(\"Converted using parseFloat<BR>\");\r\ndocument.write(\"137= \" + parseFloat(\"137\") + \"<BR>\");\r\ndocument.write(\"137abc= \" + parseFloat(\"137abc\") + \"<BR>\");\r\ndocument.write(\"abc137= \" + parseFloat(\"abc137\") + \"<BR>\");\r\ndocument.write(\"1abc37= \" + parseFloat(\"1abc37\") + \"<BR>\");\r\n</Script>\r\n</Body>', NULL, NULL, NULL),
(1323, 21, '<?php\r\n$date = date(\"D\");\r\nif($date==\"Sun\")\r\n  	echo\"Hôm nay chủ nhật chiều lai rai.\";\r\n?>', NULL, NULL, NULL),
(1324, 21, '<?php\r\n $date = date(\"D\");\r\n  if($date==\"Sun\")\r\n  	echo\"Hôm nay chủ nhật chiều lai rai.\";\r\n  else\r\n  	echo \"Mong đến ngày chủ nhật.\";\r\n?>', NULL, NULL, NULL),
(1325, 21, '<?php \r\n	$date = date(\"D\");	\r\n	if($date==\"Mon\")\r\n	 echo\"Thứ 2 là ngày đầu tuần bé hứa cố gắng chăm ngoan\";\r\n	else if($date == \"Tue\" || $date == \"Wed\"||$date == \"Thu\")\r\n	 echo \"Thứ 3, thứ 4 , thứ 5 ngày nào cũng luôn cố gắng\";\r\n	else if($date==\"Fri\" || $date==\"Sat\")\r\n	 echo\"Thứ sáu rồi đến thứ bảy Cô cho bé phiếu bé ngoan \";\r\n	else\r\n	 echo\"Chủ nhật cả nhà đều vui. Vì bé ngoan suốt tuần.\";\r\n	\r\n?>', NULL, NULL, NULL),
(1326, 160, '<script>  \r\nvar a=20;  \r\nif(a>10){  \r\ndocument.write(\"Giá trị lớn hơn 10\");  \r\n}  \r\n</script> ', NULL, NULL, NULL),
(1327, 160, '<script>  \r\nvar a=20;  \r\nif(a%2==0){  \r\ndocument.write(\"a là số chẵn\");  \r\n}  \r\nelse{  \r\ndocument.write(\"a là số lẻ\");  \r\n}  \r\n</script>  ', NULL, NULL, NULL),
(1328, 160, '<script>  \r\nvar a=20;  \r\nif(a==10){  \r\ndocument.write(\"a bằng  10\");  \r\n}  \r\nelse if(a==15){  \r\ndocument.write(\"a bằng 15\");  \r\n}  \r\nelse if(a==20){  \r\ndocument.write(\"a bằng 20\");  \r\n}  \r\nelse{  \r\ndocument.write(\"a không bằng 10, 15 hoặc 20\");  \r\n}  \r\n</script>', NULL, NULL, NULL),
(1329, 161, '<script>\r\n date = new Date();\r\n month = date.getMonth();\r\n switch(month){\r\n 	case 0 :\r\n	 document.write(\"Tháng giêng là tháng ăn chơi\");\r\n	 break;	\r\n	case 1:\r\n	case 2:\r\n	 document.write(\"Tháng hai cờ bạc, tháng ba rượu chè\");\r\n	 break;	\r\n	case 3:\r\n	document.write(\"Tháng tư là tháng lè phè\");\r\n	 break;\r\n	case 4:\r\n	case 5:\r\n	document.write(\"Tháng năm, tháng sáu hội hè vui chơi\");\r\n	 break;\r\n	case 6:\r\n	document.write(\"Tháng bảy là tháng nghĩ ngơi (tháng cô hồn)\");\r\n	 break;\r\n	case 7:	\r\n	case 8:\r\n	document.write(\"Tháng tám, tháng chín xả hơi bạn bè\");\r\n	 break;\r\n	case 9:\r\n	case 10:\r\n	document.write(\"Tháng mười, tháng chín xôi chè\");\r\n	 break;\r\n	case 11:\r\n	document.write(\"Tháng chạp cá chép, cá mè vớt lên\");\r\n	 break;\r\n	default:\r\n	 document.write(\"Hết đời!\"); 	\r\n }\r\n</script>', NULL, NULL, NULL),
(1330, 22, '<?php\r\n $month = date(\"M\");\r\n switch($month){\r\n 	case \"Jan\" :\r\n	 echo \"Tháng giêng là tháng ăn chơi\";\r\n	 break;	\r\n	case \"Feb\":\r\n	case \"Mar\":\r\n	 echo \"Tháng hai cờ bạc, tháng ba rượu chè\";\r\n	 break;	\r\n	case \"Apr\":\r\n	echo \"Tháng tư là tháng lè phè\";\r\n	 break;\r\n	case \"May\":\r\n	case \"Jun\":\r\n	echo \"Tháng năm, tháng sáu hội hè vui chơi\";\r\n	 break;\r\n	case \"Jul\":\r\n	echo \"Tháng bảy là tháng nghĩ ngơi (tháng cô hồn)\";\r\n	 break;\r\n	case \"Aug\":	\r\n	case \"Sep\":\r\n	echo \"Tháng tám, tháng chín xả hơi bạn bè\";\r\n	 break;\r\n	case \"Oct\":\r\n	case \"Nov\":\r\n	echo \"Tháng mười, tháng chín xôi chè\";\r\n	 break;\r\n	case \"Dec\":\r\n	echo \"Tháng chạp cá chép, cá mè vớt lên\";\r\n	 break;\r\n	default:\r\n	 echo\"Hết đời!\"; 	\r\n }\r\n?>', NULL, NULL, NULL),
(1331, 23, '<?php\r\n    $i=1;\r\n	while($i<=5){\r\n		echo \"<h1>$i năm chờ đợi </h1> \\n\"; // \\n xuống dòng\r\n		$i++;\r\n	}\r\n?>', NULL, NULL, NULL),
(1332, 23, '<?php\r\n    $i=1;\r\n	while($i<=5):\r\n		echo \"<h1>$i năm chờ đợi </h1> \\n\"; // \\n xuống dòng\r\n		$i++;\r\n	endwhile\r\n?>', NULL, NULL, NULL),
(1333, 23, '<?php\r\n    $i=1;\r\n	do{\r\n		echo \"<h1>$i năm yêu em! </h1> \\n\"; // \\n xuống dòng\r\n		$i++;\r\n	}while($i<=10);\r\n?>', NULL, NULL, NULL),
(1334, 23, '<?php\r\nfor($i=0;$i<10;$i++)\r\n  echo \"<h1>$i năm yêu em! </h1> \\n\";\r\n?>', NULL, NULL, NULL),
(1335, 23, '<?php\r\n for($i=0;$i<10;$i++):\r\n   echo \"<h1>$i năm yêu em! </h1> \\n\";\r\n endfor;\r\n?>', NULL, NULL, NULL),
(1336, 23, '<?php \r\n$shapes = array(\"circle\",\"square\",\"rectangle\",\"oval\"); \r\nforeach ($shapes as $value)\r\n   {\r\n   echo \"Shape : $value <br>\";\r\n   }\r\n?>  ', NULL, NULL, NULL),
(1337, 23, '<?php \r\n$shapes = array(\"circle\",\"square\",\"rectangle\",\"oval\"); \r\nforeach ($shapes as $key=>$value)\r\n   {\r\n   echo \"Shape : $value <br>\";\r\n   }\r\n?>  ', NULL, NULL, NULL),
(1338, 23, '<?php\r\n$number = array(\'one\' => 1, \'two\' => 2, \'thre\' => 3, \'four\' => 4, \'five\' => 5);\r\nforeach ($number as $value) {\r\n    echo $value;\r\n}\r\n?>', NULL, NULL, NULL),
(1339, 23, '<?php\r\n$number = array(\'one\' => 1, \'two\' => 2, \'three\' => 3, \'four\' => 4, \'five\' => 5);\r\nforeach ($number as $key => $value) {\r\n    echo \"Key: $key; Value: $value </br>\";\r\n}\r\n?>', NULL, NULL, NULL),
(1343, 162, '<script>\r\n  i=1;\r\n	while(i<=5){\r\n		document.writeln(\"<h1> \"+ i +\" năm chờ đợi </h1> \\n\"); // \\n xuống dòng\r\n		i++;\r\n	}\r\n</script>', NULL, NULL, NULL),
(1344, 162, '<script>\r\n    i=1;\r\n	do{\r\n		document.writeln(\"<h1> \"+i+\" năm yêu em! </h1> \\n\"); // \\n xuống dòng\r\n		i++;\r\n	}while(i<=10);\r\n</script>', NULL, NULL, NULL),
(1345, 162, '<script>\r\nfor(i=0;i<10;i++){\r\n   document.write(\"<h1> \"+i+\"năm yêu em! </h1> \\n\");\r\n}\r\n</script>', NULL, NULL, NULL),
(1346, 162, '<Body><SCRIPT LANGUAGE= \"JavaScript\"><BODY>\r\ndocument.write(\"The properties of the Window  object are: <BR>\");\r\nfor (var x in window)\r\n	document.write(\"     \"+ x + \", \");\r\n</SCRIPT></Body', NULL, NULL, NULL),
(1347, 24, '<html>\r\n<body>\r\n<?php\r\n$array = array(1, 2, 3, 4, 5, 6, 7, 8, 9, 0);\r\nforeach( $array as $value )\r\n{\r\n  if( $value == 3 )\r\n	break;\r\n\r\n  echo \"Giá trị $value <br />\";\r\n}\r\n?>\r\n\r\n</body>\r\n</html>\r\n', NULL, NULL, NULL),
(1348, 24, '<html>\r\n<body>\r\n<?php\r\n$array = array(1, 2, 3, 4, 5, 6, 7, 8, 9, 0);\r\nforeach( $array as $value )\r\n{\r\n  if( $value == 3 )\r\n	continue;\r\n\r\n  echo \"Giá trị $value <br />\";\r\n}\r\n?>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL),
(1351, 163, '<script>\r\narr = new Array(1, 2, 3, 4, 5, 6, 7, 8, 9, 0);\r\nfor(i=0;i<arr.length;  i++ )\r\n{\r\n  if( arr[i] == 3 )\r\n	break;\r\n\r\n  document.write(\"Giá trị \"+ arr[i] +\" <br />\");\r\n}\r\n</script>', NULL, NULL, NULL),
(1352, 163, '<script>\r\narr = new Array(1, 2, 3, 4, 5, 6, 7, 8, 9, 0);\r\nfor(i=0;i<arr.length;  i++ )\r\n{\r\n  if( arr[i] == 3 )\r\n	continue;\r\n\r\n  document.write(\"Giá trị \"+ arr[i] +\" <br />\");\r\n}\r\n</script>', NULL, NULL, NULL),
(1353, 85, '<html>\r\n<head>  \r\n<style type=\"text/css\">\r\nbody { background-color:cyan }\r\nh1 { background-color:red }\r\nh2 { background-color:orange}\r\n</style>  \r\n</head>\r\n<body>  \r\n<h1>Welcome to my hiep si it</h1>  \r\n<h2>Học CSS rất nhức đầu.</h2>  \r\n</body>  \r\n</html>', NULL, NULL, NULL),
(1354, 85, '<html>\r\n<head>\r\n<style>\r\nbody{\r\nbackground-image:url(images/bg.jpg);\r\n}\r\nh1{\r\nbackground-color: red;\r\n}\r\nh2 {\r\nbackground-color: orange;\r\n}\r\n</style>\r\n</head>\r\n<body>\r\n<h1>Đây là CSS đầu tiên</h1>\r\n<h2>Học CSS rất nhức đầu.</h2> \r\n</body>\r\n</html>', NULL, NULL, NULL),
(1355, 85, '<html>\r\n<head>\r\n<style>\r\nbody{\r\nbackground-image:url(images/bg.jpg);\r\n}\r\nh1{\r\nbackground-color: red;\r\n}\r\nh2 {\r\nbackground-color: orange;\r\n}\r\n</style>\r\n</head>\r\n<body>\r\n<h1>Đây là CSS đầu tiên</h1>\r\n<h2>Học CSS rất nhức đầu.</h2> \r\n</body>\r\n</html>', NULL, NULL, NULL),
(1356, 85, '<html>\r\n<head>\r\n<meta charset=\"UTF-8\">\r\n<style>\r\nbody {\r\n  background-image:url(images/bg.jpg);\r\n  background-repeat: no-repeat;\r\n  background-attachment: fixed;\r\n  margin-left: 200px;\r\n}\r\n</style>\r\n</head>\r\n<body>\r\n  <p>This is a fixed background-image. Scroll down the page.</p>\r\n  <p>This is a fixed background-image. Scroll down the page.</p>\r\n  <p>This is a fixed background-image. Scroll down the page.</p>\r\n  <p>This is a fixed background-image. Scroll down the page.</p>\r\n  <p>This is a fixed background-image. Scroll down the page.</p>\r\n  <p>This is a fixed background-image. Scroll down the page.</p>\r\n  <p>This is a fixed background-image. Scroll down the page.</p>\r\n  <p>This is a fixed background-image. Scroll down the page.</p>\r\n  <p>This is a fixed background-image. Scroll down the page.</p>\r\n  <p>This is a fixed background-image. Scroll down the page.</p>\r\n  <p>This is a fixed background-image. Scroll down the page.</p>\r\n  <p>This is a fixed background-image. Scroll down the page.</p>\r\n  <p>This is a fixed background-image. Scroll down the page.</p>\r\n  <p>This is a fixed background-image. Scroll down the page.</p>\r\n  <p>This is a fixed background-image. Scroll down the page.</p>\r\n  <p>If you do not see any scrollbars, Resize the browser window.</p>\r\n</body>\r\n</html>', NULL, NULL, NULL),
(1357, 85, '<html>\r\n<head>\r\n\r\n<style>\r\nbody {\r\n  background-image:url(images/bg.jpg);\r\n  background-repeat: no-repeat; \r\n  background-attachment: fixed; \r\n  background-position: right bottom; \r\n  background-color:transparent; \r\n}\r\n</style>\r\n</head>\r\n<body>\r\n  \r\n  <p>This is a fixed background-image. Scroll down the page.</p>\r\n  <p>This is a fixed background-image. Scroll down the page.</p>\r\n  <p>If you do not see any scrollbars, Resize the browser window.</p>\r\n</body>\r\n</html>', NULL, NULL, NULL),
(1358, 85, '<html>\r\n<head>\r\n<meta charset=\"UTF-8\">\r\n<style>\r\nbody {\r\n  background-image:url(images/bg.jpg);\r\n  background-repeat: no-repeat;\r\n  background-attachment: fixed;\r\n  margin-left: 200px;\r\n}\r\n</style>\r\n</head>\r\n<body>\r\n  <p>This is a fixed background-image. Scroll down the page.</p>\r\n  <p>This is a fixed background-image. Scroll down the page.</p>\r\n  <p>This is a fixed background-image. Scroll down the page.</p>\r\n  <p>This is a fixed background-image. Scroll down the page.</p>\r\n  <p>This is a fixed background-image. Scroll down the page.</p>\r\n  <p>This is a fixed background-image. Scroll down the page.</p>\r\n  <p>This is a fixed background-image. Scroll down the page.</p>\r\n  <p>This is a fixed background-image. Scroll down the page.</p>\r\n  <p>This is a fixed background-image. Scroll down the page.</p>\r\n  <p>This is a fixed background-image. Scroll down the page.</p>\r\n  <p>This is a fixed background-image. Scroll down the page.</p>\r\n  <p>This is a fixed background-image. Scroll down the page.</p>\r\n  <p>This is a fixed background-image. Scroll down the page.</p>\r\n  <p>This is a fixed background-image. Scroll down the page.</p>\r\n  <p>This is a fixed background-image. Scroll down the page.</p>\r\n  <p>If you do not see any scrollbars, Resize the browser window.</p>\r\n</body>\r\n</html>\r\n', NULL, NULL, NULL),
(1359, 85, '<html>\r\n<head>\r\n\r\n<style>\r\nbody {\r\n  background-image:url(images/bg.jpg);\r\n  background-repeat: no-repeat; \r\n  background-attachment: fixed; \r\n  background-position: right bottom; \r\n  background-color:transparent; \r\n}\r\n</style>\r\n</head>\r\n<body>\r\n  \r\n  <p>This is a fixed background-image. Scroll down the page.</p>\r\n  <p>This is a fixed background-image. Scroll down the page.</p>\r\n  <p>If you do not see any scrollbars, Resize the browser window.</p>\r\n</body>\r\n</html>\r\n', NULL, NULL, NULL),
(1360, 85, '<html>\r\n<head>\r\n<meta charset=\"UTF-8\">\r\n<style>\r\nbody {\r\n background-image:url(images/bg.jpg);\r\n  background-repeat: no-repeat; \r\n  background-attachment: fixed; \r\n  background-position: right bottom; \r\n  background-color:transparent; \r\n}\r\n</style>\r\n</head>\r\n<body>\r\n  <p>Demo viết rút gọn CSS.</p>\r\n  <p>Demo viết rút gọn CSS.</p>\r\n  <p>Demo viết rút gọn CSS.</p>\r\n  <p>Demo viết rút gọn CSS.</p>\r\n\r\n</body>\r\n</html>\r\n', NULL, NULL, NULL),
(1361, 85, '<html>\r\n<head>\r\n<meta charset=\"UTF-8\">\r\n<style>\r\nbody {\r\nbackground:url(images/bg.jpg) no-repeat fixed right bottom; \r\n}\r\n</style>\r\n</head>\r\n<body>\r\n  <p>Demo viết rút gọn CSS.</p>\r\n  <p>Demo viết rút gọn CSS.</p>\r\n  <p>Demo viết rút gọn CSS.</p>\r\n  <p>Demo viết rút gọn CSS.</p>\r\n</body>\r\n</html>', NULL, NULL, NULL),
(1370, 164, '<script>  \r\nemp={id:102,name:\"Shyam Kumar\",salary:40000}  \r\ndocument.write(emp.id+\" \"+emp.name+\" \"+emp.salary);  \r\n</script>  ', NULL, NULL, NULL);
INSERT INTO `sources` (`id`, `lesson_id`, `code`, `code_id`, `created_at`, `updated_at`) VALUES
(1371, 164, '<script>  \r\nvar emp=new Object();  \r\nemp.id=101;  \r\nemp.name=\"Ravi Malik\";  \r\nemp.salary=50000;  \r\ndocument.write(emp.id+\" \"+emp.name+\" \"+emp.salary);  \r\n</script>  ', NULL, NULL, NULL),
(1372, 164, '<script>  \r\nfunction Emp(id,name,salary){  \r\nthis.id=id;  \r\nthis.name=name;  \r\nthis.salary=salary;  \r\n}  \r\ne=new Emp(103,\"BillGate\",30000);  \r\n  \r\ndocument.write(e.id+\" \"+e.name+\" \"+e.salary);  \r\n</script>  ', NULL, NULL, NULL),
(1373, 164, '<script>\r\nvar peter = {\r\n    name: \"Peter\",\r\n    age: 24,\r\n};\r\ndocuemnt.write(\"Tên: \"+peter.name+ \" Tuổi:\"+peter.age);\r\n</script>', NULL, NULL, NULL),
(1374, 164, '<script>  \r\nfunction Emp(id,name,salary){  \r\nthis.id=id;  \r\nthis.name=name;  \r\nthis.salary=salary;  \r\n  \r\nthis.changeSalary=changeSalary; // Tên hàm cùng tên thuộc tính của phương thức  \r\nfunction changeSalary(otherSalary){  \r\nthis.salary=otherSalary;  \r\n}  \r\n}  \r\ne=new Emp(103,\"Steve Job\",30000);  \r\ndocument.write(e.id+\" \"+e.name+\" \"+e.salary);  \r\ne.changeSalary(45000);  \r\ndocument.write(\"<br>\"+e.id+\" \"+e.name+\" \"+e.salary);  \r\n</script>', NULL, NULL, NULL),
(1375, 165, '<script>  \r\nvar emp=[\"Tý\",\"Tèo\",\"Tôm\"];  \r\nfor (i=0;i<emp.length;i++){  \r\ndocument.write(emp[i] + \"<br/>\");  \r\n}  \r\n</script>', NULL, NULL, NULL),
(1376, 165, '<script>  \r\nvar i;  \r\nvar emp = new Array();  \r\nemp[0] = \"Arun\";  \r\nemp[1] = \"Varun\";  \r\nemp[2] = \"John\";  \r\n  \r\nfor (i=0;i<emp.length;i++){  \r\ndocument.write(emp[i] + \"<br>\");  \r\n}  \r\n</script>  ', NULL, NULL, NULL),
(1377, 165, '<script>  \r\nvar emp=new Array(\"Mì\",\"Tôm\",\"Thịt\");  \r\nfor (i=0;i<emp.length;i++){  \r\ndocument.write(emp[i] + \"<br>\");  \r\n}  \r\n</script>', NULL, NULL, NULL),
(1419, 166, '<script>  \r\nvar str=\"Đây là chuỗi literal\";  \r\ndocument.write(str);  \r\n</script>  ', NULL, NULL, NULL),
(1420, 166, '<script>  \r\nvar stringname=new String(\"hello tô mì gõ\");  \r\ndocument.write(stringname);  \r\n</script>  ', NULL, NULL, NULL),
(1421, 166, '<script>  \r\nvar s1=\"Hello\";  \r\nvar s2=\" tô mì gõ\";  \r\nvar s3=s1.concat(s2);  \r\ndocument.write(s3);  \r\n</script>  ', NULL, NULL, NULL),
(1422, 166, '<script>  \r\nvar s1=\"javascript from Hiep si IT indexof\";  \r\nvar n=s1.lastIndexOf(\"IT\");  \r\ndocument.write(n);  \r\n</script>  ', NULL, NULL, NULL),
(1423, 166, '<script>  \r\nvar s1=\"ĐÂY LÀ VÍ DỤ CHUYỂN TỪ CHỮ HOA SANG CHỮ THƯỜNG\";  \r\nvar s2=s1.toLowerCase();  \r\ndocument.write(s2);  \r\n</script>  ', NULL, NULL, NULL),
(1424, 166, '<script>  \r\nvar s1=\"Đây là ví dụ chuyển từ chuỗi thường sang chuỗi hoa\";  \r\nvar s2=s1.toUpperCase();  \r\ndocument.write(s2);  \r\n</script>  ', NULL, NULL, NULL),
(1425, 166, '<script>  \r\nvar s1=\"abcdefgh\";  \r\nvar s2=s1.slice(2,5);  \r\ndocument.write(s2);  \r\n</script>  ', NULL, NULL, NULL),
(1426, 166, '<script>  \r\nvar s1=\"     javascript trim    \";  \r\nvar s2=s1.trim();  \r\ndocument.write(s2);  \r\n</script>  ', NULL, NULL, NULL),
(1427, 166, '<script>\r\nvar message = \"Học lập trình tại \\\"hiep si it \\\" quá sướng\";\r\nvar domain = \'hiep si it - \\\'học lập trình web\\\'\';\r\ndocument.write(message)\r\ndocument.write(domain)\r\n</script>', NULL, NULL, NULL),
(1445, 168, 'Căn bậc 2 của là: <span id=\"p1\"></span>    \r\n<script>    \r\ndocument.getElementById(\'p1\').innerHTML=Math.sqrt(4);    \r\n</script>', NULL, NULL, NULL),
(1446, 168, 'Số random: <span id=\"p2\"></span>    \r\n<script>    \r\ndocument.getElementById(\'p2\').innerHTML=Math.random();    \r\n</script>   ', NULL, NULL, NULL),
(1447, 168, '3 mũ 4 là: <span id=\"p3\"></span>    \r\n<script>    \r\ndocument.getElementById(\'p3\').innerHTML=Math.pow(3,4);    \r\n</script>    ', NULL, NULL, NULL),
(1448, 168, 'N=4.6: <span id=\"p4\"></span>    \r\n<script>    \r\ndocument.getElementById(\'p4\').innerHTML=Math.floor(4.6);    \r\n</script>    ', NULL, NULL, NULL),
(1449, 168, '4.6 là: <span id=\"p5\"></span>    \r\n<script>    \r\ndocument.getElementById(\'p5\').innerHTML=Math.ceil(4.6);    \r\n</script>    ', NULL, NULL, NULL),
(1450, 168, 'Làm tròn 4.3 là: <span id=\"p6\"></span><br>    \r\nLàm tròn 4.7 là: <span id=\"p7\"></span>    \r\n<script>    \r\ndocument.getElementById(\'p6\').innerHTML=Math.round(4.3);   \r\ndocument.getElementById(\'p7\').innerHTML=Math.round(4.7);    \r\n</script>', NULL, NULL, NULL),
(1453, 169, '<script>\r\nvar x=102;//integer value  \r\nvar y=102.7;//floating point value  \r\nvar z=13e4;//exponent value, output: 130000  \r\nvar n=new Number(16);//integer value by number object  \r\n</script>', NULL, NULL, NULL),
(1459, 170, '<script>  \r\ndocument.write(10<20);//true  \r\ndocument.write(10<5);//false  \r\n</script>', NULL, NULL, NULL),
(1466, 171, '<HTML>\r\n<Head><Title>button Example</Title>\r\n<Script Language=\"JavaScript\">\r\nfunction calculate() {\r\n	document.frm.results.value = eval(document.frm.entry.value);\r\n}\r\n</Script>\r\n</Head>\r\n<Body>\r\n<form Method=\"POST\" name=\"frm\">\r\nNhập biểu thức:\r\n<INPUT TYPE=\"text\" NAME=\"entry\" VALUE=\"3+5+6\"> <BR>\r\nKết quả:\r\n<INPUT TYPE=text NAME=\"results\" onFocus=\"this.blur();\"> <BR>\r\n<INPUT TYPE=\"button\" VALUE=\"Calculate\" onClick=\"calculate();\">\r\n</form>\r\n</Body></HTML>', NULL, NULL, NULL),
(1467, 171, '<HTML><Head><Title>Radio button Example</Title>\r\n<Script>\r\nfunction calculate(callingField) {\r\n       if (callingField == \"result\") {\r\n         if (document.frm.action[1].checked) {\r\n           document.frm.entry.value = Math.sqrt(document.frm.result.value); \r\n         } else {\r\n           document.frm.entry.value = document.frm.result.value / 2;\r\n         }\r\n       } else {\r\n         if (document.frm.action[1].checked) {\r\n           document.frm.result.value=document.frm.entry.value*document.frm.entry.value;\r\n         } else {\r\n           document.frm.result.value = document.frm.entry.value * 2;\r\n         }\r\n       }\r\n     }\r\n</Script>\r\n</Head>\r\n<BODY><form METHOD=POST name=\"frm\">\r\nValue: <INPUT TYPE=\"text\" NAME=\"entry\" VALUE=0 \r\nonChange=\"calculate(this.name);\"> <BR>\r\nAction:<BR>\r\n<INPUT TYPE=\"radio\" NAME=\"action\" VALUE=\"twice\"\r\nonClick=\"calculate(this.name);\"> Double<BR>\r\n<INPUT TYPE=\"radio\" NAME=\"action\" VALUE=\"square\" \r\nonClick=\"calculate(this.name);\"> \r\nSquare <BR> Result: <INPUT TYPE=text NAME=\"result\" VALUE=0  \r\n onChange=\"calculate(this.name);\"> \r\n</document.frm>\r\n</Body></HTML>\r\n', NULL, NULL, NULL),
(1468, 171, '<HTML>\r\n<Head>\r\n<Title>reset Example</Title>\r\n<Script Language=\"JavaScript\">\r\nfunction clearForm(form) {\r\n	form.value1.value = \"Form\";\r\n	form.value2.value = \"Cleared\";\r\n}\r\n</Script>\r\n</Head>\r\n<Body>\r\n<Form Method=Post>\r\n<Input Type=\"text\" NAME=\"value1\"><BR> \r\n<Input Type=\"text\" NAME=\"value2\"><BR> \r\n<Input Type=\"reset\" VALUE=\"Clear Form\" onClick=\"clearForm(this.form);\">\r\n</Form>\r\n</Body></HTML>', NULL, NULL, NULL),
(1469, 171, '<html>\r\n<body>\r\n<script>\r\nfunction testCbo(){\r\n	\r\n	id= document.frm.cbotest.options[document.frm.cbotest.selectedIndex].value\r\n	name= document.frm.cbotest.options[document.frm.cbotest.selectedIndex].text\r\n	alert(\"ID: \"+id+\"Tên: \"+name)\r\n}\r\n</script>\r\n<Form method=post name=\"frm\" >\r\n  <select  name=\"cbotest\" onchange=\"testCbo()\">\r\n  <option value=\"1\">Tý</option>\r\n  <option value=\"2\">Tèo</option>\r\n  <option value=\"3\">Tủn</option>\r\n  <option value=\"4\">Tửng</option>\r\n  </select>\r\n</Form>\r\n</body>\r\n</html>\r\n', NULL, NULL, NULL),
(1470, 171, '<TITLE>TextField Example</TITLE>\r\n<SCRIPT LANGUAGE=\"JavaScript\">\r\n	function echo(currentField){\r\n       if (currentField == \"first\")\r\n         document.frm.second.value = document.frm.first.value; \r\n       else\r\n         document.frm.first.value = document.frm.second.value; \r\n     }\r\n</SCRIPT>\r\n</HEAD>\r\n<BODY>\r\n<FORM name=\"frm\">\r\n	<INPUT TYPE=text NAME=\"first\" onChange=\"echo(this.name);\"> \r\n	<INPUT TYPE=text NAME=\"second\"  onChange=\"echo(this.name);\"> \r\n</FORM>\r\n</BODY>\r\n</HTML>', NULL, NULL, NULL),
(1473, 172, '<Body><SCRIPT LANGUAGE= \"JavaScript\">\r\ndocument.write(\"The properties of the Window  object are: <BR>\");\r\nfor (var x in window)\r\n	document.write(\"     \"+ x + \", \");\r\n</SCRIPT></Body>\r\n', NULL, NULL, NULL),
(1474, 172, '<HTML> \r\n<HEAD><TITLE>Function Example </TITLE>\r\n<Script Language= \"JavaScript\">\r\nfunction person(first_name, last_name, age, sex){\r\n	this.first_name=first_name;\r\n	this.last_name=last_name;\r\n	this.age=age;\r\n	this.sex=sex;\r\n	this.printStats=printStats;\r\n}\r\nfunction printStats() {\r\n	with (document) {\r\nwrite (\" Name :\" + this.last_name + \" \" + this.first_name + \"<BR>\" );\r\n	write(\"Age :\"+this.age+\"<BR>\");\r\n	write(\"Sex :\"+this.sex+\"<BR>\");\r\n	}\r\n}\r\nperson1= new person(\"Thuy\", \"Dau Bich\", \"23\", \"Female\");\r\nperson2= new person(\"Chung\", \"Nguyen Bao\", \"24\", \"Male\");\r\nperson3= new person(\"Binh\", \"Nguyen Nhat\", \"24\", \"Male\");\r\nperson4= new person(\"Hoan\", \"Do Van\", \"23\", \"Male\");\r\nperson1.printStats();\r\nperson2.printStats();\r\nperson3.printStats();\r\nperson4.printStats();\r\n</SCRIPT>\r\n</HEAD>\r\n<BODY> </BODY>\r\n</HTML>', NULL, NULL, NULL),
(1475, 175, '<Body> \r\n<script Language=\"JavaScript\">\r\nalert(\"Chào mừng bạn đến với JavaScript!. \\n Nhấn Ok để tiếp tục\");\r\n</script>\r\nChúc bạn thành công!!!\r\n</Body> ', NULL, NULL, NULL),
(1476, 175, 'html><head>\r\n<script>\r\nfunction Hoidap(){\r\n    question = confirm(\"Bạn thật sự muốn truy cập Website\")\r\n    if (question !=\"0\"){\r\n        top.location = \"http://www.tuoitre.com.vn/\"\r\n    }\r\n}\r\n</script>\r\n</head>\r\n<body>\r\nHãy click vào đây để truy cập website:<a href=\"\" onClick=\"Hoidap();return false;\">\r\nBáo Tuổi Trẻ </a> \r\n</body></html>', NULL, NULL, NULL),
(1477, 175, '<Body>\r\n<script Language=\"JavaScript\">\r\nvar   name=window.prompt(\"Xin chào!Bạn tên gì?\",\"\");\r\ndocument.write(\"Xin chào bạn \" + name + \" ! Chúc bạn học tốt JavaScript \");\r\n</script>\r\n</Body>', NULL, NULL, NULL),
(1478, 175, '<HTML>\r\n<HEAD>\r\n<TITLE>Frame Example </TITLE>\r\n</HEAD>\r\n<BODY> \r\n<FORM>\r\n<INPUT TYPE=\"button\" VALUE=\"Open Second Window\"  onClick=\"msgWindow=window.open(\'http://www.google.com.vn\',\'window2\',\'resizable=no,width=200,height=200\')\">\r\n<P>\r\n<A HREF=\"doc2.html\" TARGET=\"window2\"> \r\nLoad a file into window2 </A>\r\n</P>\r\n<INPUT TYPE=\"button\" VALUE=\"Close Second Window\"\r\n	onClick=\"msgWindow.close()\">\r\n</FORM>\r\n</BODY>\r\n</HTML>', NULL, NULL, NULL),
(1479, 175, '<script type=\"text/javascript\">  \r\nfunction msg(){  \r\nsetTimeout(  \r\nfunction(){  \r\nalert(\"Welcome to Javatpoint after 2 seconds\")  \r\n},2000);  \r\n  \r\n}  \r\n</script>  \r\n  \r\n<input type=\"button\" value=\"click\" onclick=\"msg()\"/>', NULL, NULL, NULL),
(1495, 176, '<Body> \r\n<script Language=\"JavaScript\">\r\nalert(\"Chào mừng bạn đến với JavaScript!. \\n Nhấn Ok để tiếp tục\");\r\n</script>\r\nChúc bạn thành công!!!\r\n</Body> ', NULL, NULL, NULL),
(1496, 176, 'html><head>\r\n<script>\r\nfunction Hoidap(){\r\n    question = confirm(\"Bạn thật sự muốn truy cập Website\")\r\n    if (question !=\"0\"){\r\n        top.location = \"http://www.tuoitre.com.vn/\"\r\n    }\r\n}\r\n</script>\r\n</head>\r\n<body>\r\nHãy click vào đây để truy cập website:<a href=\"\" onClick=\"Hoidap();return false;\">\r\nBáo Tuổi Trẻ </a> \r\n</body></html>', NULL, NULL, NULL),
(1497, 176, '<Body>\r\n<script Language=\"JavaScript\">\r\nvar   name=window.prompt(\"Xin chào!Bạn tên gì?\",\"\");\r\ndocument.write(\"Xin chào bạn \" + name + \" ! Chúc bạn học tốt JavaScript \");\r\n</script>\r\n</Body>', NULL, NULL, NULL),
(1498, 176, '<HTML>\r\n<HEAD>\r\n<TITLE>Frame Example </TITLE>\r\n</HEAD>\r\n<BODY> \r\n<FORM>\r\n<INPUT TYPE=\"button\" VALUE=\"Open Second Window\"  onClick=\"msgWindow=window.open(\'http://www.google.com.vn\',\'window2\',\'resizable=no,width=200,height=200\')\">\r\n<P>\r\n<A HREF=\"doc2.html\" TARGET=\"window2\"> \r\nLoad a file into window2 </A>\r\n</P>\r\n<INPUT TYPE=\"button\" VALUE=\"Close Second Window\"\r\n	onClick=\"msgWindow.close()\">\r\n</FORM>\r\n</BODY>\r\n</HTML>', NULL, NULL, NULL),
(1499, 176, '<script type=\"text/javascript\">  \r\nfunction msg(){  \r\nsetTimeout(  \r\nfunction(){  \r\nalert(\"Welcome to Hiệp Sĩ IT sau 2 giây\")  \r\n},2000);  \r\n  \r\n}  \r\n</script>  \r\n  \r\n<input type=\"button\" value=\"click\" onclick=\"msg()\"/>', NULL, NULL, NULL),
(1501, 178, '<script>  \r\ndocument.writeln(\"<br/>navigator.appCodeName: \"+navigator.appCodeName);  \r\ndocument.writeln(\"<br/>navigator.appName: \"+navigator.appName);  \r\ndocument.writeln(\"<br/>navigator.appVersion: \"+navigator.appVersion);  \r\ndocument.writeln(\"<br/>navigator.cookieEnabled: \"+navigator.cookieEnabled);  \r\ndocument.writeln(\"<br/>navigator.language: \"+navigator.language);  \r\ndocument.writeln(\"<br/>navigator.userAgent: \"+navigator.userAgent);  \r\ndocument.writeln(\"<br/>navigator.platform: \"+navigator.platform);  \r\ndocument.writeln(\"<br/>navigator.onLine: \"+navigator.onLine);  \r\n</script>', NULL, NULL, NULL),
(1502, 179, '<script>  \r\ndocument.writeln(\"<br/>screen.width: \"+screen.width);  \r\ndocument.writeln(\"<br/>screen.height: \"+screen.height);  \r\ndocument.writeln(\"<br/>screen.availWidth: \"+screen.availWidth);  \r\ndocument.writeln(\"<br/>screen.availHeight: \"+screen.availHeight);  \r\ndocument.writeln(\"<br/>screen.colorDepth: \"+screen.colorDepth);  \r\ndocument.writeln(\"<br/>screen.pixelDepth: \"+screen.pixelDepth);  \r\n</script>', NULL, NULL, NULL),
(1503, 180, '<script>\r\n    var x = location.href;\r\n    document.write(x);\r\n</script>', NULL, NULL, NULL),
(1504, 180, '<script>\r\n    var x = location.hostname;\r\n    document.write(x);\r\n</script>', NULL, NULL, NULL),
(1505, 180, '<script>\r\n location.href =\"http://www.google.com.vn\"\r\n</script>\r\n', NULL, NULL, NULL),
(1506, 180, '<html>\r\n<body>\r\n    <button type=\"button\" onclick=\"tai_lai_trang()\">Tải lại trang</button>\r\n    <script>\r\n        function tai_lai_trang(){\r\n            location.reload();\r\n        }\r\n    </script>\r\n</body>\r\n</html>', NULL, NULL, NULL),
(1510, 182, '<script type=\"text/javascript\">  \r\nfunction getcube(){  \r\nvar number=document.getElementById(\"number\").value;  \r\nalert(number*number*number);  \r\n}  \r\n</script>  \r\n<form>  \r\nEnter No:<input type=\"text\" id=\"number\" name=\"number\"/><br/>  \r\n<input type=\"button\" value=\"cube\" onclick=\"getcube()\"/>  \r\n</form>', NULL, NULL, NULL),
(1511, 181, '<html>\r\n\r\n<head>\r\n    <meta charset=\"utf-8\">\r\n    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n    <title>Hiep si IT javascript</title>\r\n</head>\r\n\r\n<body>\r\n    <div id=\"hello\">Chào mừng các bạn đến với website học lập trình online </div>\r\n    <div id=\"hiepsi\">Hiep SI IT</div>\r\n\r\n    <script type=\"text/javascript\">\r\n        var element = document.getElementById(\'hiepsi\');\r\n        var content = element.innerHTML;\r\n        alert(content);\r\n    </script>\r\n</body>\r\n\r\n</html>', NULL, NULL, NULL),
(1512, 181, '<html>\r\n\r\n<head>\r\n    <meta charset=\"utf-8\">\r\n    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n    <title>Hiệp Sĩ IT javascript</title>\r\n</head>\r\n\r\n<body>\r\n    <div class=\"hello\">Chào mừng các bạn đến với website học lập trình online </div>\r\n    <div class=\"hiepsi\">Hiệp Sĩ IT</div>\r\n\r\n<script type=\"text/javascript\">\r\n     var element = document.getElementsByClassName(\'hello\');\r\n     //Lấy ra nội dung của thẻ đầu tiên\r\n     var content = element[0].innerHTML;\r\n     alert(content);\r\n</script>\r\n</body>\r\n\r\n</html>', NULL, NULL, NULL),
(1513, 181, '<script type=\"text/javascript\">  \r\nfunction printvalue(){  \r\nvar name=document.form1.name.value;  \r\nalert(\"Welcome: \"+name);  \r\n}  \r\n</script>  \r\n  \r\n<form name=\"form1\">  \r\nEnter Name:<input type=\"text\" name=\"name\"/>  \r\n<input type=\"button\" onclick=\"printvalue()\" value=\"print name\"/>  \r\n</form>', NULL, NULL, NULL),
(1516, 183, '<script type=\"text/javascript\">  \r\nfunction totalelements()  \r\n{  \r\nvar allgenders=document.getElementsByName(\"gender\");  \r\nalert(\"Total Genders:\"+allgenders.length);  \r\n}  \r\n</script>  \r\n<form>  \r\nMale:<input type=\"radio\" name=\"gender\" value=\"male\">  \r\nFemale:<input type=\"radio\" name=\"gender\" value=\"female\">  \r\n  \r\n<input type=\"button\" onclick=\"totalelements()\" value=\"Total Genders\">  \r\n</form>', NULL, NULL, NULL),
(1523, 185, '<script type=\"text/javascript\" >  \r\nfunction showcommentform() {  \r\nvar data=\"Name:<input type=\'text\' name=\'name\'><br>Comment:<br><textarea rows=\'5\' cols=\'80\'></textarea>  <br><input type=\'submit\' value=\'Post Comment\'>\";  \r\ndocument.getElementById(\'mylocation\').innerHTML=data;  \r\n}  \r\n</script>  \r\n<form name=\"myForm\">  \r\n<input type=\"button\" value=\"comment\" onclick=\"showcommentform()\">  \r\n<div id=\"mylocation\"></div>  \r\n</form>  \r\n					', NULL, NULL, NULL),
(1524, 185, '   <html>  \r\n<head>  \r\n<title>First JS</title>  \r\n<script>  \r\nvar flag=true;  \r\nfunction commentform(){  \r\nvar cform=\"<form action=\'Comment\'>Enter Name:<br><input type=\'text\' name=\'name\'/><br/>\"  \r\ncform+=\"Enter Email:<br><input type=\'email\' name=\'email\'/><br>Enter Comment:<br/>\"  \r\ncform+=\"<textarea rows=\'5\' cols=\'70\'></textarea><br><input type=\'submit\' value=\'Post Comment\'/></form>\";  \r\nif(flag){  \r\ndocument.getElementById(\"mylocation\").innerHTML=cform;  \r\nflag=false;  \r\n}else{  \r\ndocument.getElementById(\"mylocation\").innerHTML=\"\";  \r\nflag=true;  \r\n}  \r\n}  \r\n</script>  \r\n</head>  \r\n<body>  \r\n<button onclick=\"commentform()\">Comment</button>  \r\n<div id=\"mylocation\"></div>  \r\n</body>  \r\n</html>', NULL, NULL, NULL),
(1525, 184, '<script type=\"text/javascript\">  \r\nfunction countpara(){  \r\nvar totalpara=document.getElementsByTagName(\"p\");  \r\nalert(\"total p tags are: \"+totalpara.length);  \r\n  \r\n}  \r\n</script>  \r\n<p>This is a pragraph</p>  \r\n<p>Here we are going to count total number of paragraphs by getElementByTagName() method.</p>  \r\n<p>Let\'s see the simple example</p>  \r\n<button onclick=\"countpara()\">count paragraph</button>  ', NULL, NULL, NULL),
(1526, 184, '<script type=\"text/javascript\">  \r\nfunction counth2(){  \r\nvar totalh2=document.getElementsByTagName(\"h2\");  \r\nalert(\"total h2 tags are: \"+totalh2.length);  \r\n}  \r\nfunction counth3(){  \r\nvar totalh3=document.getElementsByTagName(\"h3\");  \r\nalert(\"total h3 tags are: \"+totalh3.length);  \r\n}  \r\n</script>  \r\n<h2>This is h2 tag</h2>  \r\n<h2>This is h2 tag</h2>  \r\n<h3>This is h3 tag</h3>  \r\n<h3>This is h3 tag</h3>  \r\n<h3>This is h3 tag</h3>  \r\n<button onclick=\"counth2()\">count h2</button>  \r\n<button onclick=\"counth3()\">count h3</button>', NULL, NULL, NULL),
(1527, 186, '<script type=\"text/javascript\" >  \r\nfunction validate() {  \r\nvar msg;  \r\nif(document.myForm.userPass.value.length>5){  \r\nmsg=\"good\";  \r\n}  \r\nelse{  \r\nmsg=\"poor\";  \r\n}  \r\ndocument.getElementById(\'mylocation\').innerText=msg;  \r\n }  \r\n  \r\n</script>  \r\n<form name=\"myForm\">  \r\n<input type=\"password\" value=\"\" name=\"userPass\" onkeyup=\"validate()\">  \r\nStrength:<span id=\"mylocation\">no strength</span>  \r\n</form>', NULL, NULL, NULL),
(1530, 188, '<HTML>\r\n<HEAD><Title> An Event Handler Exemple </Title>\r\n<Script Language= \"JavaScript\">\r\nfunction CheckAge() {\r\nif ( (document.frmDieutra.AGE.value<0)||(document.frmDieutra.AGE.value>120) ) {\r\nalert(\"Tuổi nhập vào không hợp lệ! Mời bạn nhập  lại\");\r\n	document.frmDieutra.AGE.value=0;\r\n	}\r\n}\r\n</Script>\r\n</Head><Body>\r\n<Form NAME=\"frmDieutra\">\r\nNhập vào tên của bạn:<BR>\r\nTên <Input Type=Text Name=\"TEN\" ><BR>\r\nĐệm <Input Type=Text Name=\"DEM\" ><BR>\r\nHọ  <Input Type=Text Name=\"HO\" ><BR>\r\nAge <Input Type=Text Name=\"AGE\" onChange=\"CheckAge()\"><BR>\r\n<Input Type=\"button\" Value=\"Submit\">\r\n<Input Type=\"Reset\" Value=\"Reset\">\r\n</Form>\r\n</Body></HTML>', NULL, NULL, NULL),
(1531, 188, '<HTML> \r\n<HEAD> <TITLE>Event Handler</TITLE> \r\n</HEAD> \r\n<BODY onLoad=\"alert(\'Welcome to my page!\');\" onUnload=\"alert(\'Goodbye! \');\"> \r\n<IMG SRC=\"Logo.jpg\"> \r\n</BODY> \r\n</HTML>', NULL, NULL, NULL),
(1553, 189, '<script>\r\nvar str = \'Xin chào!, tôi là Nguyen Hữu PHP 777\';\r\nvar str1 = str.replace(/n/gi, \'*\');\r\ndocument.write(str1);\r\nvar str2 = str.replace(/n/,\'*\');\r\ndocument.write(str2);\r\n</script>', NULL, NULL, NULL),
(1554, 189, '<script>\r\nvar str = \'Nguyen Van Toan\';\r\nvar str3 = str.replace(/n\\b/, \'*\');\r\ndocument.write(str3);\r\nvar str4 = str.replace(/n\\B/, \'*\');\r\ndocument.write(str4);\r\n</script>', NULL, NULL, NULL),
(1555, 189, '<script>\r\nvar str = \'Xin chào!, tôi là VANKHUONG 777\';\r\nvar str5 = str.replace(/\\w/g, \'*\');\r\ndocument.write(str5)\r\n</script>', NULL, NULL, NULL),
(1556, 189, '<script>\r\nvar str = \'good night, godgad, gd, gooogle\';\r\nvar str6 = str.replace(/go?d/gi, \'*\');\r\ndocument.write(str6);\r\nvar str7 = str.replace(/g(oo)?d/gi, \'*\');\r\ndocument.write(str7);\r\nvar str8 = str.replace(/go*d/gi, \'*\');\r\ndocument.write(str8);\r\nvar str9 = str.replace(/go+/gi, \'*\');\r\ndocument.write(str9);\r\nvar str10 = str.replace(/o{2}/gi, \'*\');\r\ndocument.write(str10);\r\nvar str11 = str.replace(/o{2,}/gi, \'*\');\r\ndocument.write(str11);\r\nvar str12 = str.replace(/go{1,3}d/gi, \'*\');\r\ndocument.write(str12);\r\n</script>', NULL, NULL, NULL),
(1557, 189, '<script>\r\nvar str =\'ABCDEF, abcdef, 12345\';\r\nvar str13 = str.replace(/[Ab1]/g, \'*\');\r\ndocument.write(str13);\r\nvar str14 = str.replace(/[A-Cd-f1-35]/g, \'*\');\r\ndocument.write(str14);\r\nvar str15 = str.replace(/[^A-f4-5]/g, \'*\');\r\ndocument.write(str15);\r\n</script>', NULL, NULL, NULL),
(1558, 189, '<html>\r\n<body>\r\n    <p id=\"demo\"></p>\r\n    <script>\r\n        var str = \"Hiep si it huong dan hoc lap trinh web\";\r\n        var reg = /Hiep/; // kiem tra xem trong str có chữ Hiep?\r\n        var result = reg.test(str);\r\n        document.getElementById(\"demo\").innerHTML = result;\r\n    </script>\r\n</body>\r\n</html>', NULL, NULL, NULL),
(1559, 190, '<script>  \r\nfunction validateform(){  \r\nvar name=document.myform.name.value;  \r\nvar password=document.myform.password.value;  \r\n  \r\nif (name==null || name==\"\"){  \r\n  alert(\"Name can\'t be blank\");  \r\n  return false;  \r\n}else if(password.length<6){  \r\n  alert(\"Password must be at least 6 characters long.\");  \r\n  return false;  \r\n  }  \r\n}  \r\n</script>  \r\n<body>  \r\n<form name=\"myform\" method=\"post\" action=\"abc.jsp\" onsubmit=\"return validateform()\" >  \r\nName: <input type=\"text\" name=\"name\"><br/>  \r\nPassword: <input type=\"password\" name=\"password\"><br/>  \r\n<input type=\"submit\" value=\"register\">  \r\n</form>  ', NULL, NULL, NULL),
(1560, 190, '<script type=\"text/javascript\">  \r\nfunction matchpass(){  \r\nvar firstpassword=document.f1.password.value;  \r\nvar secondpassword=document.f1.password2.value;  \r\n  \r\nif(firstpassword==secondpassword){  \r\nreturn true;  \r\n}  \r\nelse{  \r\nalert(\"password must be same!\");  \r\nreturn false;  \r\n}  \r\n}  \r\n</script>  \r\n  \r\n<form name=\"f1\" action=\"register.jsp\" onsubmit=\"return matchpass()\">  \r\nPassword:<input type=\"password\" name=\"password\" /><br/>  \r\nRe-enter Password:<input type=\"password\" name=\"password2\"/><br/>  \r\n<input type=\"submit\">  \r\n</form>  ', NULL, NULL, NULL),
(1561, 190, '<script>  \r\nfunction validate(){  \r\nvar num=document.myform.num.value;  \r\nif (isNaN(num)){  \r\n  document.getElementById(\"numloc\").innerHTML=\"Enter Numeric value only\";  \r\n  return false;  \r\n}else{  \r\n  return true;  \r\n  }  \r\n}  \r\n</script>  \r\n<form name=\"myform\" onsubmit=\"return validate()\" >  \r\nNumber: <input type=\"text\" name=\"num\"><span id=\"numloc\"></span><br/>  \r\n<input type=\"submit\" value=\"submit\">  \r\n</form>', NULL, NULL, NULL),
(1565, 191, '<html>\r\n<head>\r\n<title>Check Form Register</title>\r\n<META name=\"Author\" content=\"Scorpion\">\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<script language=\"JavaScript\">\r\n    function checkinput(){\r\n        username=document.myform.username;\r\n        password=document.myform.password;\r\n        password1=document.myform.password1;\r\n        hoten=document.myform.hoten;\r\n        diachi=document.myform.diachi;\r\n        email=document.myform.email;\r\n        dienthoai=document.myform.dienthoai;\r\n        reg1=/^[0-9A-Za-z]+[0-9A-Za-z_]*@[\\w\\d.]+.\\w{2,4}$/;\r\n        testmail=reg1.test(email.value);\r\n        if(username.value==\"\"){\r\n            alert(\"Hãy chọn tên đăng nhập\");\r\n            username.focus();\r\n            return false;\r\n        }\r\n        if(password.value==\"\"){\r\n            alert(\"Chưa nhập mật khẩu\");\r\n            password.focus();\r\n            return false;\r\n        }\r\n        if(password1.value==\"\"||password1.value!==password.value){\r\n            alert(\"Mật khẩu lần 2 chưa khớp\");\r\n            password1.focus();\r\n            return false;\r\n        }\r\n        if(hoten.value==\"\"){\r\n            alert(\"Hãy nhập vào họ tên của bạn\");\r\n            hoten.focus();\r\n            return false;\r\n        }\r\n        if(diachi.value==\"\"){\r\n            alert(\"Chưa nhập địa chỉ\");\r\n            diachi.focus();\r\n            return false;\r\n        }\r\n        if(!testmail){\r\n            alert(\"Địa chỉ email không hợp lệ\");\r\n            email.focus();\r\n            return false;\r\n        }\r\n        if(isNaN(dienthoai.value)){\r\n            alert(\"Số điện thoại chưa chính xác\");\r\n            dienthoai.focus();\r\n            return false;\r\n        }\r\n        else alert(\'OK, đã nhập đúng dữ liệu\');\r\n        return true;\r\n    }\r\n</script>\r\n</head>\r\n\r\n<body>\r\n<form name=\"myform\" method=\"post\" action=\"#\" onsubmit=\"return checkinput();\">\r\n        <table align=\"center\">\r\n          <p><strong><font color=\"#FF0000\">Đăng ký thành viên</font></strong>\r\n             </p>\r\n          <tr>\r\n            <td>Xin vui lòng nhập đúng<br />\r\n              các thông tin cá nhân</td>\r\n          </tr>\r\n          <p></p>\r\n          <tr>\r\n            <td><b>Tên đăng nhập:</b></td>\r\n            <td><input type=\"text\" name=\"username\" /></td>\r\n          </tr>\r\n          <tr>\r\n            <td><b>Mật khẩu:</b></td>\r\n            <td><input type=\"password\" name=\"password\" /></td>\r\n          </tr>\r\n          <tr>\r\n            <td><b>Nhập lại Mật khẩu:</b></td>\r\n            <td><input type=\"password\" name=\"password1\" /></td>\r\n          </tr>\r\n          <tr>\r\n            <td><b>Họ tên:</b></td>\r\n            <td><input type=\"text\" size=\"30\" name=\"hoten\" /></td>\r\n          </tr>\r\n          <tr>\r\n            <td><b>Địa chỉ:</b></td>\r\n            <td><input type=\"text\" size=\"30\" name=\"diachi\" /></td>\r\n          </tr>\r\n          <tr>\r\n            <td><b>Email:</b></td>\r\n            <td><input type=\"text\" size=\"30\" name=\"email\" /></td>\r\n          </tr>\r\n          <tr>\r\n            <td><b>Số điện thoại:</b></td>\r\n            <td><input type=\"text\" size=\"20\" name=\"dienthoai\" /></td>\r\n          </tr>\r\n          <p align=\"center\"> </p>\r\n        </table>\r\n        <p align=\"center\">\r\n            <input type=\"submit\" value=\"Đăng ký\" style=\"color:yellow;background:green\">\r\n            <input type=\"reset\" value=\"Làm lại\" style=\"color:yellow;background:green\">\r\n        </p>\r\n      </form>\r\n</body>\r\n</html>', NULL, NULL, NULL),
(1571, 9, '<?php\r\n    echo \" <b>Ngày còn em bên tôi đời là xuân với vạn câu cười </b> <br>\";\r\n    ECHO \" <b>ngày còn em bên tôi trăm năm niềm vui nhớ thương hờn dỗi </b></br>\";\r\n    Echo \"ngày còn em bên tôi, ngày còn nghe yêu dấu lên môi </br>\";\r\n?>\r\n', NULL, NULL, NULL),
(1572, 9, '<?php\r\n  $age=1;\r\n  Echo \"Tôi là Hiệp Sĩ IT. Tuổi tôi là $age </br>\";\r\n  Echo \"Tôi là Hiệp Sĩ IT. Tuổi tôi là $Age </br>\";\r\n  Echo \"Tôi là Hiệp Sĩ IT. Tuổi tôi là $aGe </br>\";\r\n\r\n?>', NULL, NULL, NULL),
(1573, 27, '<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title>Hiệp Sĩ IT Demo Upload Tập tin</title>\r\n</head>\r\n\r\n<?php\r\n\r\nif(isset($_POST[\'up\'])){ // Người dùng đã ấn submit\r\n    if($_FILES[\'file\'][\'name\'] != NULL){ // Đã chọn file\r\n        // Tiến hành code upload file\r\n        if($_FILES[\'file\'][\'type\'] == \"image/jpeg\"\r\n        || $_FILES[\'file\'][\'type\'] == \"image/png\"\r\n        || $_FILES[\'file\'][\'type\'] == \"image/gif\"){\r\n        // là file ảnh\r\n        // Tiến hành code upload    \r\n            if($_FILES[\'file\'][\'size\'] > 1048576){\r\n                echo \"File không được lớn hơn 1mb\";\r\n            }else{\r\n                // file hợp lệ, tiến hành upload\r\n                $path = \"uploads/\"; // file sẽ lưu vào thư mục data\r\n                $tmp_name = $_FILES[\'file\'][\'tmp_name\'];\r\n                $name = $_FILES[\'file\'][\'name\'];\r\n                $type = $_FILES[\'file\'][\'type\']; \r\n                $size = $_FILES[\'file\'][\'size\']; \r\n                // Upload file\r\n                move_uploaded_file($tmp_name,$path.$name);\r\n                echo \"File uploaded! <br />\";\r\n                echo \"Tên file : \".$name.\"<br />\";\r\n                echo \"Kiểu file : \".$type.\"<br />\";\r\n                echo \"File size : \".$size;\r\n				$path.=$name;\r\n				echo \"Hình bạn upload <img src=\\\"  $path\\\">\";\r\n           }\r\n        }else{\r\n           // không phải file ảnh\r\n           echo \"Kiểu file không hợp lệ\";\r\n        }\r\n   }else{\r\n        echo \"Vui lòng chọn file\";\r\n   }\r\n}\r\n?>\r\n\r\n<body>\r\n<form  method=\"post\" enctype=\"multipart/form-data\">\r\n Chọn tập tin : <input type=\"file\" name=\"file\"  size=\"20\"/><br/>\r\n <input type=\"submit\" value=\"Upload\"  name=\"up\"/>\r\n</form>\r\n</body>\r\n</html>', NULL, NULL, NULL),
(1574, 12, '<?php \r\n   $fullName =\"Nguyễn Hữu PHP\";\r\n   echo $fullName;\r\n?>', NULL, NULL, NULL),
(1575, 12, '<?php\r\n    $fullName = \"Nguyễn Hữu PHP\";\r\n    $job= \"web Developer\";\r\n    $math = 5+ 8 - 2 * 7 /5;\r\n?>\r\n', NULL, NULL, NULL),
(1576, 12, '<?php\r\n   echo \"Xin chào, \";\r\n    $fullName = \"Nguyễn Hữu PHP\";\r\n    echo $fullName;\r\n?>', NULL, NULL, NULL),
(1577, 12, '<?php\r\n    $fullName = \"Nguyễn Hữu PHP\";\r\n    echo \"Ông A quen biết \" . $fullName;\r\n    echo \"<br>\";\r\n    echo $fullName . \" quen biết bà B\";\r\n    echo \"<br>\";\r\n    echo \"Chị C biết \" . $fullName . \" nhờ anh D\";\r\n?>\r\n?>', NULL, NULL, NULL),
(1578, 12, '<?php\r\n$a = \'hello\';\r\n\r\n$$a= \'world\';//$hello=\'world\'\r\necho $hello;\r\n?>', NULL, NULL, NULL),
(1579, 14, '<?php\r\ndefine(\'MINSIZE\', 50);\r\n// Xuất dữ liệu của hằng MINSIZE\r\necho MINSIZE;\r\n?>', NULL, NULL, NULL),
(1592, 150, '<h2>Welcome to JavaScript</h2>  \r\n<script>  \r\ndocument.write(\"Học Javascript không khó, mà khổ\");  \r\n</script>', NULL, NULL, NULL),
(1593, 42, '<!DOCTYPE html>\r\n<html>\r\n\r\n   <head>\r\n      <title>Hiep Si IT Demo</title>\r\n   </head>\r\n    \r\n   <body>\r\n      <h1>Tiêu đề</h1>\r\n      <p>Định nghĩa đoạn văn bản</p>\r\n   </body>\r\n    \r\n</html>', NULL, NULL, NULL),
(1594, 330, 'package ', NULL, NULL, NULL),
(1595, 330, '.com;\r\n\r\nimport android.app.Activity;\r\nimport android.os.Bundle;\r\nimport android.view.Menu;\r\nimport android.view.MenuItem;\r\nimport android.view.View;\r\nimport android.widget.Toast;\r\n\r\npublic class MainActivity extends Activity {\r\n\r\n	@Override\r\n	protected void onCreate(Bundle savedInstanceState) {\r\n		super.onCreate(savedInstanceState);\r\n		setContentView(R.layout.activity_main);\r\n	}\r\n\r\n	@Override\r\n	public boolean onCreateOptionsMenu(Menu menu) {\r\n		// Inflate the menu; this adds items to the action bar if it is present.\r\n		getMenuInflater().inflate(R.menu.main, menu);\r\n		return true;\r\n	}\r\n// Thêm sự kiện tại đây có tham số là View\r\n	public void clickMe(View v){\r\n		// Hiện thị thông báo trong vòng vài giây\r\n		Toast.makeText(getApplication(), \"Hiệp Sĩ IT: Bạn đang Click vào Butto Login\", Toast.LENGTH_LONG).show();\r\n	}\r\n	@Override\r\n	public boolean onOptionsItemSelected(MenuItem item) {\r\n		// Handle action bar item clicks here. The action bar will\r\n		// automatically handle clicks on the Home/Up button, so long\r\n		// as you specify a parent activity in AndroidManifest.xml.\r\n		int id = item.getItemId();\r\n		if (id == R.id.action_settings) {\r\n			return true;\r\n		}\r\n		return super.onOptionsItemSelected(item);\r\n	}\r\n}\r\n', NULL, NULL, NULL),
(1596, 330, '<RelativeLayout xmlns:android=\"http://schemas.android.com/apk/res/android\"\r\n    xmlns:tools=\"http://schemas.android.com/tools\"\r\n    android:layout_width=\"match_parent\"\r\n    android:layout_height=\"match_parent\"\r\n    android:paddingBottom=\"@dimen/activity_vertical_margin\"\r\n    android:paddingLeft=\"@dimen/activity_horizontal_margin\"\r\n    android:paddingRight=\"@dimen/activity_horizontal_margin\"\r\n    android:paddingTop=\"@dimen/activity_vertical_margin\"\r\n    tools:context=\"', NULL, NULL, NULL),
(1597, 330, '.com.MainActivity\" >\r\n\r\n<Button\r\n    android:id=\"@+id/btnLogout\"\r\n    android:layout_width=\"wrap_content\"\r\n    android:layout_height=\"wrap_content\"\r\n    android:layout_alignBaseline=\"@+id/btnLogin\"\r\n    android:layout_alignBottom=\"@+id/btnLogin\"\r\n    android:layout_centerHorizontal=\"true\"\r\n    android:onClick=\"clickMe\"\r\n    android:text=\"Logout\" />\r\n\r\n<Button\r\n    android:id=\"@+id/btnLogin\"\r\n    android:layout_width=\"wrap_content\"\r\n    android:layout_height=\"wrap_content\"\r\n    android:layout_alignParentLeft=\"true\"\r\n    android:layout_alignParentTop=\"true\"\r\n    android:layout_marginLeft=\"21dp\"\r\n    android:onClick=\"clickMe\"\r\n    android:text=\"Login\" />\r\n\r\n</RelativeLayout>\r\n', NULL, NULL, NULL),
(1598, 330, 'package ', NULL, NULL, NULL),
(1599, 330, '.com;\r\n\r\nimport android.app.Activity;\r\nimport android.os.Bundle;\r\nimport android.view.Menu;\r\nimport android.view.MenuItem;\r\nimport android.view.View;\r\nimport android.widget.Toast;\r\n\r\npublic class MainActivity extends Activity {\r\n\r\n	@Override\r\n	protected void onCreate(Bundle savedInstanceState) {\r\n		super.onCreate(savedInstanceState);\r\n		setContentView(R.layout.activity_main);\r\n	}\r\n\r\n	@Override\r\n	public boolean onCreateOptionsMenu(Menu menu) {\r\n		// Inflate the menu; this adds items to the action bar if it is present.\r\n		getMenuInflater().inflate(R.menu.main, menu);\r\n		return true;\r\n	}\r\n// Thêm sự kiện tại đây có tham số là View\r\n	public void clickMe(View v){\r\n		// kiem tra bằng dùng phương thức getID() của view so sánh với id của button\r\n		switch(v.getId()){\r\n		case R.id.btnLogin:\r\n			// Hiện thị thông báo trong vòng vài giây\r\n			Toast.makeText(getApplication(), \"Hiệp Sĩ IT: Bạn đang Click vào Button Login\", Toast.LENGTH_LONG).show();\r\n			break;\r\n		case R.id.btnLogout:\r\n			Toast.makeText(getApplication(), \"Hiệp Sĩ IT: Bạn đang Click vào Button Logout\", Toast.LENGTH_LONG).show();\r\n			break;\r\n		}\r\n	}\r\n	@Override\r\n	public boolean onOptionsItemSelected(MenuItem item) {\r\n		// Handle action bar item clicks here. The action bar will\r\n		// automatically handle clicks on the Home/Up button, so long\r\n		// as you specify a parent activity in AndroidManifest.xml.\r\n		int id = item.getItemId();\r\n		if (id == R.id.action_settings) {\r\n			return true;\r\n		}\r\n		return super.onOptionsItemSelected(item);\r\n	}\r\n}\r\n', NULL, NULL, NULL),
(1600, 330, 'package ', NULL, NULL, NULL),
(1601, 330, '.com;\r\n\r\nimport android.app.Activity;\r\nimport android.os.Bundle;\r\nimport android.view.Menu;\r\nimport android.view.MenuItem;\r\nimport android.view.View;\r\nimport android.widget.Toast;\r\n\r\npublic class MainActivity extends Activity {\r\n\r\n	@Override\r\n	protected void onCreate(Bundle savedInstanceState) {\r\n		super.onCreate(savedInstanceState);\r\n		setContentView(R.layout.activity_main);\r\n	}\r\n\r\n	@Override\r\n	public boolean onCreateOptionsMenu(Menu menu) {\r\n		// Inflate the menu; this adds items to the action bar if it is present.\r\n		getMenuInflater().inflate(R.menu.main, menu);\r\n		return true;\r\n	}\r\n// Thêm sự kiện tại đây có tham số là View\r\n	public void clickMe(View v){\r\n		// kiem tra bằng dùng phương thức getID() của view so sánh với id của button\r\n		switch(v.getId()){\r\n		case R.id.btnLogin:\r\n			// Hiện thị thông báo trong vòng vài giây\r\n			Toast.makeText(getApplication(), \"Hiệp Sĩ IT: Bạn đang Click vào Button Login\", Toast.LENGTH_LONG).show();\r\n			break;\r\n		case R.id.btnLogout:\r\n			Toast.makeText(getApplication(), \"Hiệp Sĩ IT: Bạn đang Click vào Button Logout\", Toast.LENGTH_LONG).show();\r\n			break;\r\n		}\r\n	}\r\n	@Override\r\n	public boolean onOptionsItemSelected(MenuItem item) {\r\n		// Handle action bar item clicks here. The action bar will\r\n		// automatically handle clicks on the Home/Up button, so long\r\n		// as you specify a parent activity in AndroidManifest.xml.\r\n		int id = item.getItemId();\r\n		if (id == R.id.action_settings) {\r\n			return true;\r\n		}\r\n		return super.onOptionsItemSelected(item);\r\n	}\r\n}', NULL, NULL, NULL),
(1602, 69, '<HTML><HEAD><TITLE> </TITLE></HEAD>\r\n<BODY Bgcolor=Aqua>\r\n	<P Align=Center><H3>Các ký hiệu đặc biệt:</H3><P>\r\n<HR><Font Color=Blue>\r\n	Bản quyền: &#169; <BR>\r\n	Thương hiệu: &#153; <BR>\r\n	Thương hiệu đ đăng ký: &reg; <BR>\r\n	 Email: alibaba&#64;yahoo.com <BR></Font>\r\n	<HR SIZE=3 WIDTH=50% NOSHADE>\r\n</BODY></HTML>', NULL, NULL, NULL),
(1605, 1, '<html>\r\n   <head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n\r\n      <title>Thực thi script online!!</title>      \r\n   </head>\r\n   \r\n   <body>\r\n      \r\n      <?php\r\n         echo \"<h6>Xin Chào, Tôi người mới học PHP!</h6>\";\r\n      ?>\r\n   \r\n   </body>\r\n</html>', NULL, NULL, NULL),
(1606, 1, '<html>\r\n   <head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n\r\n      <title>Thực thi script online!!</title>      \r\n   </head>\r\n   \r\n   <body>\r\n      \r\n      <?php\r\n         echo \"<h6>Xin Chào, Tôi người mới học PHP!</h6>\";\r\n      ?>\r\n   \r\n   </body>\r\n</html>', NULL, NULL, NULL),
(1608, 139, '<?php\r\nclass Person\r\n{\r\n	var $name;\r\n	var $age;\r\n	var $address;\r\n	const eyes =2;\r\n  function Person(){\r\n	Echo \"Lớp Person được khỏi tạo\"; \r\n  }\r\n}\r\nnew Person();\r\n?>', NULL, NULL, NULL),
(1609, 139, '<?php\r\nclass Person\r\n{\r\n	var $name;\r\n	var $age;\r\n	var $address;\r\n	const eyes =2;\r\n  function  __construct (){\r\n	echo \"Lớp Person được khỏi tạo\"; \r\n  }\r\n}\r\nnew  Person(\"Nguyễn Văn Tý\");\r\n?>\r\n', NULL, NULL, NULL),
(1610, 139, '<?php\r\nclass Person\r\n{\r\n    public function __destruct()\r\n    {\r\n        echo \'Class Person được hủy\';\r\n    }\r\n}\r\n$per = new Person();\r\n?>', NULL, NULL, NULL),
(1611, 139, '<?php\r\nclass Person\r\n{\r\n   var $name; \r\n  public function __construct()\r\n    {\r\n        echo \'Class Person được khởi tạo\'; \r\n    }\r\n    public function getMessage()\r\n    {\r\n        echo \'Đây là class Person\';\r\n    }\r\n    public function __destruct()\r\n    {\r\n        echo \'Class Person được hủy\';\r\n    }\r\n}\r\n$per = new Person();\r\n//kết quả: Class Person được khởi tạo\r\n$per->getMessage();\r\n\r\n?>', NULL, NULL, NULL),
(1619, 140, '<?php\r\nclass Person \r\n{\r\n		// Phạm vi truy cập\r\n		public $fullName = \"Nguyễn Hữu PHP\";\r\n		 // Các phương thức\r\n		  public function getFullName(){\r\n			  return $this->fullName;\r\n		  }\r\n	} \r\n	$per = new Person();\r\n	$per->fullName = \"Nguyễn Văn Code\";\r\n	echo $per->getFullName();\r\n ?>', NULL, NULL, NULL),
(1620, 140, '<?php\r\nclass Person \r\n{\r\n		// Phạm vi truy cập\r\n		protected $fullName = \"Nguyễn Hữu PHP\";\r\n		 // Các phương thức\r\n		  public function getFullName()\r\n          {\r\n			  return $this->fullName;\r\n		  }\r\n} \r\n	$per = new Person();\r\n	$per->fullName = \"Nguyễn Văn Code\";\r\n	echo $per->getFullName();\r\n ?>', NULL, NULL, NULL),
(1621, 140, '<?php\r\nclass Person \r\n{\r\n		// Phạm vi truy cập\r\n		protected $fullName = \"Nguyễn Hữu PHP\";\r\n		 // Các phương thức\r\n		protected function getFullName()\r\n		{\r\n			  return $this->fullName;\r\n		}\r\n} \r\nclass Employee extends Person\r\n{\r\n	public function getFullNameParent()\r\n	{\r\n		return $this->fullName; // Lấy thuộc tính cha\r\n	}\r\n}	\r\n	$per = new Employee();\r\n	echo $per->getFullNameParent();\r\n ?>', NULL, NULL, NULL),
(1622, 140, '<?php\r\nclass Person \r\n{\r\n		// Phạm vi truy cập\r\n		private $fullName = \"Nguyễn Hữu PHP\";\r\n		 // Các phương thức\r\n		private function getFullName()\r\n		{\r\n			  return $this->fullName;\r\n		}\r\n} \r\n	$per = new Person();\r\n	echo $per->getFullName();\r\n?>', NULL, NULL, NULL),
(1623, 140, '<?php\r\nclass Person \r\n{\r\n		// Phạm vi truy cập\r\n		private $fullName = \"Nguyễn Hữu PHP\";\r\n		 // Các phương thức\r\n		private function getFullName()\r\n		{\r\n			  return $this->fullName;\r\n		}\r\n} \r\nclass Employee extends Person\r\n{\r\n	public function getFullNameParent()\r\n	{\r\n		return $this->fullName; // Lấy thuộc tính cha\r\n	}\r\n}	\r\n	$per = new Employee();\r\n	echo $per->getFullNameParent();\r\n ?>', NULL, NULL, NULL),
(1624, 140, '<?php\r\nclass Person \r\n{\r\n		// Phạm vi truy cập\r\n		private $fullName = \"Nguyễn Hữu PHP\";\r\n		 // Các phương thức\r\n		private function getFullName()\r\n		{\r\n			  return $this->fullName;\r\n		}\r\n		public function getFullName1()\r\n		{\r\n			  return $this->fullName;\r\n		}\r\n} \r\n	$per = new Person();\r\n	echo $per->getFullName1();\r\n?>', NULL, NULL, NULL),
(1625, 140, '<?php\r\nclass Person \r\n{\r\n		// Phạm vi truy cập\r\n		public static $fullName = \"Nguyễn Hữu PHP\";\r\n		 // Các phương thức\r\n		public static function getFullName()\r\n		{\r\n			  return self::$fullName;\r\n		}\r\n		\r\n} \r\n	\r\n	echo \"Truy cập thuộc tính\".Person::$fullName.\"<br/>\";\r\n	echo \"Truy cập thông qua phương thức\".Person::getFullName();\r\n?>', NULL, NULL, NULL),
(1626, 141, '<?php\r\nclass Person \r\n{\r\n		protected $fullName;\r\n		protected $address;\r\n		protected $phone;\r\n		protected $email;\r\n		function Person($fullName, $address, $phone, $email)\r\n		{\r\n			$this->fullName = 	$fullName;\r\n			$this->address	=	$address;\r\n			$this->phone	= 	$phone;\r\n			$this->email	=	$email;\r\n		}\r\n		function inputInfo()\r\n		{\r\n			$this->fullName = 	\"Thích Học Lại\";\r\n			$this->address	=	\"Sao Hỏa\";\r\n			$this->phone	= 	\"XXX898800000\";\r\n			$this->email	=	\"saohoa@saohoa.com\";\r\n		}\r\n		function showInfo()\r\n		{\r\n			echo \"Họ và Tên:\".$this->fullName.\"<br>\";\r\n			echo \"Địa chỉ: \".$this->address.\"<br>\";\r\n			echo \"Điện thoại\".$this->phone.\"<br>\";\r\n			echo \"Email \".$this->email.\"<br>\";\r\n		}\r\n} \r\n	\r\n// Lớp Employee kế thừa Person	\r\nclass Employee extends Person\r\n{\r\n	\r\n	private $certificate;// bằng cấp\r\n	// Phương thức thiết lập\r\n	 function  __construct ()\r\n	 {\r\n	 }\r\n	 //  phương thức thiết lập có tham số\r\n 	function Employee($fullName, $address, $phone, $email, $certificate)\r\n	{\r\n		// Dùng từ khóa Parent truy cập vào phương thức cha\r\n		Parent::Person($fullName, $address, $phone, $email);\r\n		$this->certificate = $certificate;\r\n	}\r\n	\r\n	function inputInfo()\r\n	{\r\n		\r\n		// Dùng từ khóa Parent truy cập vào phương thức cha\r\n		Parent::inputInfo();\r\n		$this->certificate = \"Tốt nghiệp trường làng nhàng\";\r\n	}\r\n	function showInfo()\r\n	{\r\n		// // Dùng từ khóa Parent truy cập vào phương thức cha\r\n		Parent::showInfo();\r\n		echo \"Bằng tốt nghiệp\".$this->certificate;\r\n	}\r\n}\r\n// Customer kế thừa Person\r\nclass Customer extends Person\r\n{\r\n	\r\n	private $kind;// Loại khách hàng\r\n	// Phương thức thiết lập không tham số\r\n	function  __construct ()\r\n	{\r\n	}\r\n	\r\n	function Customer($fullName, $address, $phone, $email, $kind)\r\n	{\r\n		// Dùng tên Class giống c++ truy cập vào phương cha\r\n		Person::Person($fullName, $address, $phone, $email);\r\n		$this->kind =$kind;\r\n	}\r\n 	function inputInfo()\r\n	{\r\n		// Dùng tên Class giống c++ truy cập vào phương cha\r\n		Person::inputInfo();\r\n		$this->kind = \"Vip\";\r\n	}\r\n	function showInfo()\r\n	{\r\n		// Dùng tên Class giống c++ truy cập vào phương cha\r\n		Person::showInfo();\r\n		echo \"Khách hàng thuộc loại:\".$this->kind;\r\n	}\r\n}\r\n $customer = new Customer();\r\n $customer->inputInfo();\r\n $customer->showInfo();\r\n \r\n \r\n ?>', NULL, NULL, NULL),
(1627, 141, '<?php\r\nclass Person \r\n{\r\n		private $fullName;\r\n		private $address;\r\n		private $phone;\r\n		private $email;\r\n		function Person($fullName, $address, $phone, $email)\r\n		{\r\n			$this->fullName = 	$fullName;\r\n			$this->address	=	$address;\r\n			$this->phone	= 	$phone;\r\n			$this->email	=	$email;\r\n		}\r\n		function inputInfo()\r\n		{\r\n			$this->fullName = 	\"Thích Học Lại\";\r\n			$this->address	=	\"Sao Hỏa\";\r\n			$this->phone	= 	\"XXX898800000\";\r\n			$this->email	=	\"saohoa@saohoa.com\";\r\n		}\r\n		function showInfo()\r\n		{\r\n			echo \"Họ và Tên:\".$this->fullName.\"<br>\";\r\n			echo \"Địa chỉ: \".$this->address.\"<br>\";\r\n			echo \"Điện thoại: \".$this->phone.\"<br>\";\r\n			echo \"Email: \".$this->email.\"<br>\";\r\n		}\r\n} \r\n	\r\n	\r\nclass Employee extends Person\r\n{\r\n	\r\n	private $certificate;// bằng cấp\r\n	\r\n	 //  phương thức thiết lập có tham số\r\n 	function Employee($fullName, $address, $phone, $email, $certificate)\r\n	{\r\n		// Dùng từ khóa Parent truy cập vào phương thức cha\r\n		Parent::Person($fullName, $address, $phone, $email);\r\n		$this->certificate = $certificate;\r\n	}\r\n	\r\n	function inputInfo()\r\n	{\r\n		\r\n		// Dùng từ khóa Parent truy cập vào phương thức cha\r\n		Parent::inputInfo();\r\n		$this->certificate = \"Tốt nghiệp trường làng nhàng <br/>\";\r\n	}\r\n	function showInfo()\r\n	{\r\n		// // Dùng từ khóa Parent truy cập vào phương thức cha\r\n		Parent::showInfo();\r\n		echo \"Bằng tốt nghiệp:\".$this->certificate;\r\n	}\r\n}\r\nclass Customer extends Person\r\n{\r\n	\r\n	private $kind;// Loại khách hàng\r\n	// Phương thức thiết lập không tham số\r\n	function  __construct ()\r\n	{\r\n	}\r\n	\r\n	function Customer($fullName, $address, $phone, $email, $kind)\r\n	{\r\n		// Dùng tên Class giống c++ truy cập vào phương cha\r\n		Person::Person($fullName, $address, $phone, $email);\r\n		$this->kind =$kind;\r\n	}\r\n 	function inputInfo()\r\n	{\r\n		// Dùng tên Class giống c++ truy cập vào phương cha\r\n		Person::inputInfo();\r\n		$this->kind = \"Vip\";\r\n	}\r\n	function showInfo()\r\n	{\r\n		// Dùng tên Class giống c++ truy cập vào phương cha\r\n		Person::showInfo();\r\n		echo \"Khách hàng thuộc loại:\".$this->kind;\r\n	}\r\n}\r\n//Demo Class Employeee \r\n $emp = new Employee(\"Trần Như Nhau\",\"Sao Kim\",\"YYY9099\",\"nhunhau@gmail.com\",\"Tiểu Học\");  \r\n $emp->showInfo();\r\n\r\n ?>', NULL, NULL, NULL),
(1629, 35, '<?php    \r\nfunction display($number) {    \r\n    if($number<=5){    \r\n     echo \"$number <br/>\";    \r\n     display($number+1);    \r\n    }  \r\n}    \r\n    \r\ndisplay(1);    \r\n?>', NULL, NULL, NULL),
(1632, 78, '<html>\r\n<head>  \r\n<style>  \r\nh1{  \r\ncolor:white;  \r\nbackground-color:red;  \r\npadding:5px;  \r\n}  \r\np{  \r\ncolor:blue;  \r\n}  \r\n</style>  \r\n</head>  \r\n<body>  \r\n<h1>Đây là CSS đầu tiên</h1>  \r\n<p>Đây là một đoạn văn bản gọi CSS.</p>  \r\n</body>  \r\n</html>', NULL, NULL, NULL),
(1633, 167, 'Ngày và giờ hiện tại: <span id=\"txt\"></span>  \r\n<script>  \r\nvar today=new Date();  \r\ndocument.getElementById(\'txt\').innerHTML=today;  \r\n</script>  ', NULL, NULL, NULL),
(1634, 167, '<script>  \r\nvar date=new Date();  \r\nvar day=date.getDate();  \r\nvar month=date.getMonth()+1;  \r\nvar year=date.getFullYear();  \r\ndocument.write(\"<br>Ngày/tháng/năm: \"+day+\"/\"+month+\"/\"+year);  \r\n</script>  ', NULL, NULL, NULL);
INSERT INTO `sources` (`id`, `lesson_id`, `code`, `code_id`, `created_at`, `updated_at`) VALUES
(1635, 167, '<head><meta content=\"charset=utf-8\"></head>\r\n<Script Language=\"JavaScript\"> \r\nmydate = new Date(); \r\nmyday = mydate.getDay() ;  \r\nmymonth = mydate.getMonth()+1; \r\nmyweekday= mydate.getDate(); \r\nweekday= myweekday; \r\nmyyear= 1900  + mydate.getYear(); \r\nmyhours = mydate.getHours(); \r\nampmhour = (myhours > 12) ? myhours - 12 : myhours; \r\nampm = (myhours >= 12) ? \'Buổi chiều \' : \' Buổi sáng \'; \r\nmyminutes = mydate.getMinutes(); \r\nmyminutes = ((mytime < 10) ? \':0\' : \':\') + mytime; \r\nif(myday == 0) 	\r\nday = \" Chủ nhật , \"; \r\nelse if(myday == 1) \r\n			day = \" Thứ hai , \"; \r\n		else if(myday == 2) \r\n			day = \" Thứ ba, \"; \r\n				else if(myday == 3) \r\n					day = \" Thứ tư, \"; \r\n					else if(myday == 4) \r\n						day = \" Thứ năm , \"; \r\n						else if(myday == 5) \r\n							day = \" Thứ sáu , \"; \r\n							else if(myday == 6) \r\n								day = \" Thứ bảy , \"; \r\n</script> \r\n<body> 	\r\n<script> \r\ndocument.write(\"<b>\" +\"Bây giờ là: \"+ ampmhour + \"\" + myminutes +\"  \"+ ampm) \r\ndocument.write(\" - \" + day + \" Ngày \" + myweekday +\" \"); \r\ndocument.write( \" Tháng \" + mymonth + \"  Năm \" + year + \"</font>\"); \r\n</script> \r\n</body>\r\n \r\n', NULL, NULL, NULL),
(1636, 167, 'Thời gian hiện tại: <span id=\"txt\"></span>  \r\n<script>  \r\nvar today=new Date();  \r\nvar h=today.getHours();  \r\nvar m=today.getMinutes();  \r\nvar s=today.getSeconds();  \r\ndocument.getElementById(\'txt\').innerHTML=h+\":\"+m+\":\"+s;  \r\n</script>  ', NULL, NULL, NULL),
(1637, 167, 'Thời gian hiện tại: <span id=\"txt\"></span>  \r\n<script>  \r\nwindow.onload=function(){getTime();}  \r\nfunction getTime(){  \r\nvar today=new Date();  \r\nvar h=today.getHours();  \r\nvar m=today.getMinutes();  \r\nvar s=today.getSeconds();  \r\n// add a zero in front of numbers<10  \r\nm=checkTime(m);  \r\ns=checkTime(s);  \r\ndocument.getElementById(\'txt\').innerHTML=h+\":\"+m+\":\"+s;  \r\nsetTimeout(function(){getTime()},1000);  \r\n}  \r\n//setInterval(\"getTime()\",1000);//another way  \r\nfunction checkTime(i){  \r\nif (i<10){  \r\n  i=\"0\" + i;  \r\n }  \r\nreturn i;  \r\n}  \r\n</script>', NULL, NULL, NULL),
(1638, 45, '<p> <b>Đoạn văn bản này được In Đậm.</b></p>   \r\n', NULL, NULL, NULL),
(1639, 45, '<p> <i>Đoạn văn bản này được In nghiêng.</i></p>   ', NULL, NULL, NULL),
(1640, 45, '<h2>  Tôi muốn đóng <mark> dấu</mark>lên khuông mặt của bạn</h2>  ', NULL, NULL, NULL),
(1641, 45, '<p> <u> Đoạn văn bản này được gạch chân.</u></p>   ', NULL, NULL, NULL),
(1642, 45, '<p> <strike>Đoạn văn bản sau được gạch ngang</strike>.</p>   ', NULL, NULL, NULL),
(1643, 45, '<p>AX <sup>3.</sup>+BX<sub>2</sup>+CX+B=0</p> ', NULL, NULL, NULL),
(1644, 45, '<p>H <sub>2</sub>O</p>  \r\n', NULL, NULL, NULL),
(1645, 45, '<p> <del>Xóa một đoạn văn bản.</del></p>  ', NULL, NULL, NULL),
(1646, 45, '<p> <del>Xóa một đoạn văn bản.</del><ins>Viết thêm đoạn văn bản khác.</ins></p>   \r\n', NULL, NULL, NULL),
(1647, 45, '<p>Xin chào <big>Đoạn văn bản có font chữ lớn.</big></p>  ', NULL, NULL, NULL),
(1648, 45, '<p>Xin chào < small>Đoạn văn bản có font chữ nhỏ.</ small></p>   ', NULL, NULL, NULL),
(1650, 43, '<!DOCTYPE html>\r\n<html>\r\n<head></head>\r\n<body>\r\n\r\n<h1>Tiêu đề 1</h1>\r\n\r\n<p>Đoạn văn bản.</p>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL),
(1651, 15, '<?php\r\nif(print \'em yêu anh\'){ \r\nprint \'mình đi công viên chơi...\'; \r\n}\r\n?>', NULL, NULL, NULL),
(1652, 15, '<?php\r\necho \"<h2>Tán gái</h2>\";\r\necho \"Chào em!<br>\";\r\necho \"Mình làm quen nha<br>\";\r\necho \"Em \", \"bao \", \"nhiêu tuổi \", \"nhà ở đâu \", \"em có bạn trai chưa.\"; \r\n?>', NULL, NULL, NULL),
(1653, 15, '<?php\r\n$txt1 = \"Chào bạn\";\r\n$txt2 = \"Tý Chuột\";\r\n$x = 5;\r\n$y = 4;\r\n \r\necho \"<h2>$txt1</h2>\";\r\necho \"Chào bạn $txt2<br>\";\r\necho $x + $y;\r\n?>', NULL, NULL, NULL),
(1654, 15, '<?php\r\n$name = \"Tý Mèo\";\r\n$city = \"Cần Thơ\";\r\n$age = 50;\r\n$x = 100;\r\n$y = 50;\r\necho \"Tôi tên là \".$name.\" năm nay \".$age.\" tuổi\";\r\necho \"<br>\";\r\necho $age.\" tuổi sống ở \".$city;\r\necho \"<br>\";\r\necho $x.$y;\r\necho \"<br>\";\r\necho $x + $y;\r\n?>', NULL, NULL, NULL),
(1655, 15, '<?php\r\nprint \"<h2>Câu lệnh print!</h2>\";\r\nprint \"Chào bạn!<br>\";\r\nprint \"Mình rất đẹp trai!\";\r\n?>', NULL, NULL, NULL),
(1656, 15, '<?php\r\n$txt1 = \"Tôi thích học \";\r\n$txt2 = \"Lập trình PHP\";\r\n$x = 1;\r\n$y = 2;\r\n \r\nprint \"<h2>$txt1</h2>\";\r\nprint \"Tôi đang học $txt2<br>\";\r\nprint $x + $y;\r\n?>', NULL, NULL, NULL),
(1657, 15, '<?php\r\n  $myArray = array(\"Tôi\", \'là\', \'ai\',\'?\');\r\n  Echo \"<pre>\";\r\n  print_r($myArray) ;\r\n  Echo \"</pre>\";\r\n?>', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(2) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `menu` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `status`, `order`, `menu`) VALUES
(42, 'Ngôn ngữ lập trình', 1, 1, 1),
(43, 'Thiết kế website', 1, 2, 1),
(44, 'Phát triển Web', 1, 3, 1),
(45, 'Phát triển Mobile', 1, 4, 1),
(47, 'Cơ sở dữ liệu', 1, 5, 1),
(48, 'Công nghệ Java', 1, 6, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `submit_job`
--

CREATE TABLE `submit_job` (
  `id` int(11) NOT NULL,
  `id_job` int(11) NOT NULL,
  `date_submit` date NOT NULL,
  `status` int(1) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `template_cv`
--

CREATE TABLE `template_cv` (
  `id` int(11) NOT NULL,
  `link` varchar(50) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `template_cv`
--

INSERT INTO `template_cv` (`id`, `link`, `address`) VALUES
(1, 'cv1.png', 'viewCV'),
(2, 'cv2.png', 'viewCV1'),
(3, 'cv3.png', 'viewCV2');

-- --------------------------------------------------------

--
-- Stand-in structure for view `top_company`
-- (See below for the actual view)
--
CREATE TABLE `top_company` (
`logo` varchar(50)
,`company_name` mediumtext
,`user_id` int(11)
,`number` bigint(21)
);

-- --------------------------------------------------------

--
-- Table structure for table `typeofjob_job`
--

CREATE TABLE `typeofjob_job` (
  `id` int(11) NOT NULL,
  `id_typeofjob` int(11) DEFAULT NULL,
  `id_job` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `typeofjob_job`
--

INSERT INTO `typeofjob_job` (`id`, `id_typeofjob`, `id_job`) VALUES
(5, 1, 31),
(6, 4, 31),
(7, 1, 32),
(8, 1, 33),
(9, 1, 36),
(10, 3, 36),
(11, 1, 48),
(12, 3, 48),
(13, 1, 53),
(14, 1, 95),
(15, 1, 96),
(16, 1, 97),
(17, 3, 97),
(18, 1, 100),
(19, 3, 100),
(22, 1, 103),
(23, 3, 103),
(26, 1, 105),
(27, 3, 105),
(28, 1, 106),
(31, 1, 111),
(32, 3, 111),
(39, 1, 118),
(40, 1, 119),
(41, 3, 119),
(42, 1, 120),
(43, 2, 120),
(44, 3, 120),
(47, 1, 122),
(48, 3, 122),
(49, 1, 123),
(50, 3, 123);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postpermission` int(11) DEFAULT 1,
  `downloadpermission` int(11) DEFAULT 1,
  `hidepost` int(11) DEFAULT 0,
  `isbanned` int(11) DEFAULT 0,
  `isemployer` tinyint(1) NOT NULL DEFAULT 0,
  `verified` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `name`, `avatar`, `role`, `remember_token`, `provider_id`, `postpermission`, `downloadpermission`, `hidepost`, `isbanned`, `isemployer`, `verified`) VALUES
(1, 'vinhnguyen208@gmail.com', '$2y$10$hmgKNSLmvj9MPr7RYcVfze4EBLe37oZdQWNuwjMjzKqB7pFZ/RYP2', 'Hiep Sĩ IT', '1a.jpg', 1, '4zQFl8G5sarMnCwfMbetIT4SKEpDvXwzKBSA8vYOB0sOxnj4qvlwTCnEXJPE', NULL, 1, 1, 0, 0, 0, 1),
(18, 'vinhnguyen2081@gmail.com', '$2y$10$6m9gVJxvUr/nydCM6Ga./OTarebAo24d6pc6l2mb9uG5/yHcaNzAe', 'Nguyễn Hữu Vĩnh', 'null', 1, 'IwjTEzBTkKpFeUDu0fWrVHahzUaklB9puz7JhRENo7xnon0sj9dieYTMmnEG', 'mFoafEOYDAqTdLm7lEA0kvqTHMTrKxHKZBtiZgUPMY8FZee6xOBPtHkT8eLV7AtC', 1, 1, 0, 0, 0, 1),
(19, 'voanhdat@gmail.com', '$2y$10$sjhmPTbdRTcLWUn/mFe1G.IWK7prTrCYZ37hd/vLf.65YonNATirq', 'anh dat', 'null', 0, NULL, '1kovu0XrHMs355N2RwR0dif3YIEqAP9C2BRX9E9R576oFt8tin65k67wBreEqg2X', 1, 1, 0, 0, 0, 1),
(20, 'voanhdat2008@gmail.com', '$2y$10$q5cQuKoiB7FEyvadUJEKEO7hzZJ5s02VQYf4kKHheP22d/xvOfgaq', 'anh dat', 'null', 0, NULL, 'CbbrKu0KNwqHESSNSbY6UduVdjm3h9qY6LPiDp0LGGQ67OXfIXV7mj0BFjsfrzoI', 1, 1, 0, 0, 0, 1),
(21, 'vqluongsp@gmail.com', '$2y$10$eaZsS.IT.rFpnl1cBPo/degcoRhimGnOm6GoB9BqY7wsEOtG3017W', 'Luong Vo Quoc', 'https://lh3.googleusercontent.com/-XdUIqdMkCWA/AAAAAAAAAAI/AAAAAAAAAAA/4252rscbv5M/photo.jpg?sz=50', 0, NULL, '110665621269690376888', 1, 1, 0, 0, 0, 1),
(22, 'vanphongtyphu@gmail.com', '$2y$10$oA/jSJuQloCixypEmS7ScuqgYWM3EAD6CEpHahVEYX8jh1JT7tmiu', 'tran van phong', 'null', 0, NULL, 'd2bjw7eV3WDykrbLa7qZT2zjxApzLEH1byXILXqccX10htOBWj0Tu4nnAFSHbTdn', 1, 1, 0, 0, 0, 1),
(23, 'nhoklong741997@gmail.com', '$2y$10$4cOqJVrtktZfcak9BxGgjur./VcB8AAcohoYhLojLBtmqDHBtJlUa', 'Phan Thành Tài', 'null', 0, 'coJHczSS2AfG2fLnpovoKRPUbIgE3qg1lDOmvspwkHHjKLCFTfoMgzp1RdEV', '9QFXtlZP2b1N8IJ1rRyi0dkSF7fk9Zg8ek4AQN4T20MdgdE7xnO77Vxq1dMnUk0C', 1, 1, 0, 0, 0, 1),
(24, 'anhpnt@gmail.com', '$2y$10$uTnAbOEOl0Zm4G7NsKloOuta63ZVDwrcSgWGiH4q/5SV3.EoEYt.i', 'Anh Pham', 'https://graph.facebook.com/v2.9/1102450346552126/picture?type=normal', 0, 'HKAAbJcaKXk8eAToF7Sib0m1ZJcvuzA7s2xJ3MPW7n3lYYOB5uRMoh3FmfRY', '1102450346552126', 1, 1, 0, 0, 0, 1),
(25, 'hothanhvu1997@gmail.com', '$2y$10$t8ma1ZluCQAL0aGZw11AleS0kWXDA.Ehdck1PwKQivtUJiML5Wvxe', 'hothanhvu', 'null', 0, NULL, 'IXFeK4CwIycSKQ3AQfjYDAUTqmYDJXeRirFNzPKGloT7Kt8xnVoRI4XbehEybjdk', 1, 1, 0, 0, 0, 1),
(26, 'Shamanspid1996@gmail.com', '$2y$10$U4WQuPz30IlrugpCv.2yT.pzowBcvCavKV5hmV4azPoanETNnJraO', 'Phạm Minh Đức', '2622811527_1923668094620436_1316086369_n.jpg', 0, NULL, '73fMYqtFNOguAVqVOt0VXLCigp3kKqKtILdUnXqBhB3b4eYjahPFMQnuPSu7GxxK', 1, 1, 0, 0, 0, 1),
(27, 'huyenngtng@gmail.com', '$2y$10$vydK03sK77mwjGtfP5GqIuULEDfLyUAMbOQHWQADZ1V8zgCLbOftq', 'nguyễn thị ngọc huyền', 'null', 0, NULL, 'BoVpMdWiYmDIWe9Xi0cUJGEGBIfqbzfDVX3LMF8UFPWfbVJXQmNLOCUXa4wdSF6C', 1, 1, 0, 0, 0, 1),
(28, 'nguyenhaidangit97@gmail.com', '$2y$10$5.Gx/Uo6qzr0oZxOrQDGCe8Ogirlg7EgQMaOI4F3hCLZ/ga5.fodG', 'Hải Đăng', 'https://graph.facebook.com/v2.9/418181831931622/picture?type=normal', 0, 'ohAwSFEWcejHxdqICk4JgIDAFLN2SesyOVx7NkmywnbOxu8JKyiPXv1CjVQ2', '418181831931622', 1, 1, 0, 0, 0, 1),
(29, 'dcthao@gmail.com', '$2y$10$gwb1rmR3IL0EL/1knTq3y.dZGkFjCABk1ZixXayv6CzXaUHmIrbwa', 'Đào Công Thảo', 'null', 0, 'VaKtmaeE7K8cK0Whe5U9UBIJFSkEAkWQSKcRQqzPs3KvgXhRuZgKUz3aUSwW', 'rFAQuH5siiVCgo64LiZ0cqjHqJXQuphXKcuRx1dIS7tqSyJZkWeyrRBvhGUEBFqJ', 1, 1, 0, 0, 0, 1),
(30, 'dangcuong.hoangduc@gmail.com', '$2y$10$bRMJFceY3ilLzvAlVbzxPOMXxfBMDIS0hwg.WVPgczQav9Dae.4tC', 'Trần Đăng Cường', 'null', 0, NULL, '6NlFLy2puVw6W6wUOW2klI8sSofEviHL2LzJkL1gPoFMRFAfpltzGXgyHDRgVAZM', 1, 1, 0, 0, 0, 1),
(31, 'chuataotaikhoanhehe@gmail.com', '$2y$10$PAlo1Sjd1479s3PCNnwOVOAbz6RbrOP08CpWNialT3u5Li5oHk/YO', 'hiepsinuiphusi', 'null', 0, NULL, 'oRt82YeiyhKQ292ZPaIWEbXmfBmaXuN3qItWjPkgM7SbpAnWbhymY0Bkrs5HxDYp', 1, 1, 0, 0, 0, 1),
(32, 'dungtrinh2701@gmail.com', '$2y$10$agMwRktiJSe5jWNVePR.yemfnXkT0NUVQyE/aWDSiU.DxPFfN4qL.', 'Trịnh Văn Dũng', 'null', 0, '2KLaugqXZSJaF2IW1lYUxOHEBuBMAiUAXsHs2YNsudVFLHkzD7fOMOd0hWjt', 'LeqLp5guP2YREv5WaFHkogs9Nx7ZemF8mUETnqBoCWdLJhhwT17JgQY0TeXKASoW', 1, 1, 0, 0, 0, 1),
(33, 'svdung94@gmail.com', '$2y$10$vZXg3c30A9OMywJ0iNyOlOjicoUVPJNrW50UyCiYptw9zhWKYbOL2', 'Dung van Nguyen', 'https://graph.facebook.com/v2.9/2044965119079589/picture?type=normal', 0, '9JRmCqJ3l80pJ9GhtGfVRuCdT8ATWopm5JgzLEZHk4xSwg9monY3e3WgLNE3', '2044965119079589', 1, 1, 0, 0, 0, 1),
(34, 'trinhnu1809@gmail.com', '$2y$10$ai8a/Tc3siiy3lJyFMp0Z.7DTWkzRLAeQ9O8IetoxtMUW2TvqYj.2', 'Trần Thị Trinh', 'null', 0, NULL, 'V4MJCYowp8bcPYqAbcZ9bJeZ7fe2Nde7e5r2Q1kGvA4muyrhh7m4XCIsfMlPzd7B', 1, 1, 0, 0, 0, 1),
(35, 'lclanh.dth@gmail.com', '$2y$10$ZLPsPqaS/CRq3VTUbewwJeXnuLLOey3Fr/BXX5Gu6M2vqlc65B49e', 'lechilanh', 'null', 0, 'ZZ4xUYuiYUR9GpiJ9vb6V9fCyolxqH48QLEb9dd6u5AuGCvqV2GOznlCayb4', 'dOfsYT0e73sHiR7XyxVxwA7fUQ3X6Wy9GEbhs4X6rTZERdIU8FQK3yIFqajSZ5Kf', 1, 1, 0, 0, 0, 1),
(36, 'tranthanhquang0712@gmail.com', '$2y$10$AEVIOGa5y8V9P5jpWWihiOOcX2a6HTtGOeCqN3yYbRpzfBWtd3KqO', 'Trần Thanh Quang', 'null', 0, 'e1KftnNx0Sc7R38U8qra1kS986aov5yg716lgYrf0Tg24Xww6odXWR467me7', 'Zkn0SnVz4gz7lqNGx4mvKUgQuL77Fi8oDDYiEHD199RjgHnZ4LOVRonmGEjpQA1Y', 1, 1, 0, 0, 0, 1),
(37, 'Ngochoang16091998@gmail.com', '$2y$10$muYSt7hqIUjE7pz2dO9QK.ioxVJmK5Q8N6JLnybQGZ286/9vhjNhm', 'Lương Thị Ngọc Hoàng', 'null', 0, '8lmnoExOvUWWWfhCHII4VMXXF7meNiRwUoCwyewV28iNsfbeUPvXaGGOUt6K', 'dp7qbBIH9DaHucgO9BVxBRQcpcSnax1FrFiD3I4KTnVcmQVhiV1zWgpU5UYnvSVq', 1, 1, 0, 0, 0, 1),
(38, 'Phi141a020023@gmail.com', '$2y$10$8cH6FKMLKQLgUgxbFDl3VuFy0VNcwNbtt5KwkhGS4NIrFZ8s6a63.', 'Nguyễn hoàng phi', 'null', 0, NULL, 'q8usmBFWoCw59efNXWMKa1ExHJIEss0BqO9zdJV3xl7kUJEMp4sVXYUmrcLaRWsx', 1, 1, 0, 0, 0, 1),
(39, 'vanhuyngo@gmail.com', '$2y$10$c1IvCH9iyYlBlr5PQrKq7eH6SBtETedIgzw7mTUmygUNFrisu7Nf2', 'Huy Ngo', 'https://lh3.googleusercontent.com/-JXtdwieu4uo/AAAAAAAAAAI/AAAAAAAAAmc/lxhsJE55qg8/photo.jpg?sz=50', 0, 'wR7Wst76Li641CSxRroBOm22ssn51qGMEzYoZ3G39UU6YsCiRPZHEHxvMrYu', '100065215412935481991', 1, 1, 0, 0, 0, 1),
(40, 'nghiatrung01.nl@gmail.com', '$2y$10$d9sRDHVNPLzcgZvVyjWo7uBR26eS0fmmOSemGGh8rgRahQ7XHE5la', 'Lý Quang Nghĩa', '40unnamed (1).jpg', 0, NULL, '5Rpcc5jdKFtXtNpOFwVTCv4IBOX5xDYwjDh3KVzqDMwaDLydfYOxseo07WNjjfIE', 1, 1, 0, 0, 0, 1),
(41, 'thuydiemchau1617@gmail.com', '$2y$10$cmJGzWDK82NS5ugip34h0u7T55y4XucDVC/x0hg1QiS/dDhw8s.Xq', 'nguyen thuy', 'null', 0, 'jJf54ZtkViLbPIp6KYcez53GhLPSrW3imxK9zKTqXwTRqQyN9yg90PrXH0Ck', 'zS3eCUhZiRbGbnVTLz6ZlrR7ALYNjSqZDnbFa4XQJlEZnwHMZHl7ZIbl21nbmws8', 1, 1, 0, 0, 0, 1),
(42, 'tutien1000@gmail.com', '$2y$10$z7lMJZZaKPkuP1kzzn9O4.prkqZr5TEbU8Wa8Bz1VgyrESX7.FgTO', 'an hoai', 'https://lh6.googleusercontent.com/-1jK1bMX3x-8/AAAAAAAAAAI/AAAAAAAAAPg/ErfJmTDpcjU/photo.jpg?sz=50', 0, 'HhWS4NtGUzFoygKm5szKdDoZuQSq75KNDgewLPG57UC9fOivj3odl1GCUe9V', '101697215843406664207', 1, 1, 0, 0, 0, 1),
(43, 'phuonganh01235@gmail.com', '$2y$10$YnHiW5l73oPnOqmF8UqpzekZQVWXENo2FgeVS4YrOFTRfD2YsA5mK', 'Nguyễn Thị Phương Anh', 'null', 0, 'H6PjH7S7uhF3tWFyfJZ019GDgct0rhulo6DpEYw6xojYYfSlAVflah7Ue24m', 'eGWc3ug1aXTWyI0KXuXamaEopfBO5SQ7mDKQwEk79KEwdZ2IFJtKAj2DvPkvYLuv', 1, 1, 0, 0, 0, 1),
(44, 'Lethanhvang1999@gmail.com', '$2y$10$IhOl9wosR0kPP.5ow09aR.Z2ODBTSJZUlLtpxAnGBqdRY2InDR0Ny', 'Zoro06', 'null', 0, NULL, 'CAI0LEVRfXkXXiy6FQKYyPpqr8n6dur5lb07NT6LmWzNdcXNtjihb4Zih3yYu78s', 1, 1, 0, 0, 0, 1),
(45, 'lyhuynh.24102000@gmail.com', '$2y$10$zZEqENLm/TqzCjBy0ag.3uNqzFqd2CySdCirEJQeAyFhf6QGWbDZ2', 'huỳnh thị kim ly', 'null', 0, NULL, 'ZnaFEvn9oHrwvtAoCUyAwbRzCfwrsfpLNwPoins27coeT4AbmXPwGr5rHpet17xz', 1, 1, 0, 0, 0, 1),
(46, 'memorygja96@gmail.com', '$2y$10$YDn7qHDnRv5lBg.ntSuZ9.GEcFIRyb5Nk.0gj57N7hFar7/JWAfVm', 'giaho', 'null', 0, NULL, '4G9GlRijaGIOTym6efejeSqGgTx13jwqrnGEe4JRWclcjGhiNxcjZHNEQF5wADtJ', 1, 1, 0, 0, 0, 1),
(47, 'trinhngocquan731990@gmail.com', '$2y$10$.rBB1Nq.pyA9A5TidtPQTO2PPgvP/Hpa3O6HUl8ZrDKpWCP4uO0NS', 'quan', 'null', 0, NULL, 'ThlSpGAfJ5lZ7pQzkKIcD5Pt0MAQfGQOJBc4zQ9wAvzx56sUDhbkkK5PFJJ9j2PQ', 1, 1, 0, 0, 0, 1),
(48, '29tung98@gmail.com', '$2y$10$iWW.kFTnSX3OJxqalpy.I.qsfn5QfkUopIIkoMVU/nipHTelUnrDG', 'Nguyễn Thanh Tùng', 'null', 0, NULL, '1RQCp9GfdY3fOZc5bq0EDfruA72RuAHv2H10hoLzJ7s4gcDgtU2B4zMCxkqYSGd5', 1, 1, 0, 0, 0, 1),
(49, 'daylaptrinhnangcao@gmail.com', '$2y$10$wqXZO8S1ticvy5HKB2mQhuLD.eViAoVZoaiJOe9QFFLo7oV2.LgWe', 'Đặng Văn Hùng', 'null', 0, NULL, 'SwdhZThno0sRZm6TWvL27TqKgBC3l8Bc20qDulxSStkLUDmY21HpZgWPkata0Uqj', 1, 1, 0, 0, 0, 1),
(50, 'loanyang1999@gmail.com', '$2y$10$PecyOpr4FfZPlT0xC9vdfOUaEjSuQ0vmghRlQ8Wl0Vx0F9Cr0wccm', 'Loan Hoàng', '50Nguy_Anh.jpg', 0, 'ORsz9WH9XlxSz1umMK7EATb7qv5QpwoOSQYWdZCg7jAB85YeSfZB7JmRhUqa', '1qksHM5Vqeyo9krxmMaUFKMqrnzP00MKAaha09BPwEclRMPDdkgPEGxGs0lDbKyQ', 1, 1, 0, 0, 0, 1),
(51, 'vannguyenthuyhong@gmail.com', '$2y$10$Ocfq1VozUO8m.f75Lfditevt2Z3uHMBsgGwUw/I7xL5GypbkCo1h.', 'Van Nguyen Thuy Hong', 'https://lh3.googleusercontent.com/-Zob2iSUcFtU/AAAAAAAAAAI/AAAAAAAAAAA/AGDgw-joh_qFn39280WlrTVAv_o1I3Nj5A/mo/photo.jpg?sz=50', 0, NULL, '103998118412678876821', 1, 1, 0, 0, 0, 1),
(52, 'u.caca96@gmail.com', '$2y$10$Vo1cicJ9Df0.dB2VTlzQQu.X9PL/TYhvOo21aShqJpf9R8YXkXC52', 'Phạm Nguyễn Trường An', 'null', 0, NULL, 'Yq4uc2bPsqtfg6Z2h9CIINyje44U2ygmn8BraWnRsx8utl0xmjbXZnb373NJiBda', 1, 1, 0, 0, 0, 1),
(53, 'phuthinhla98@gmail.com', '$2y$10$/ULVV83M5ArTeUuhcLpbn.rJZFetRVRiR1SUrjcrU50wiXiyl3Mce', 'La Ngọc Phú Thịnh', 'null', 0, NULL, 'Tijqp03SWPcyunTJSmWidj8DB99hLbNeUB4bznm2V4AjPyIMSgceCAhtPniIrt4R', 1, 1, 0, 0, 0, 1),
(54, 'trantthien2503@gmail.com', '$2y$10$Gnb3CCOHaXasCeXPUJ1wbO2gxky.GQ9dvQS9yoLMPO9G2DAVf2Dby', 'Thiên Trần Thanh', 'https://lh6.googleusercontent.com/-tAP0mxXCtaI/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rf49mqJAmSwxSG2Jd_KvCje32_Rhg/s50-mo/photo.jpg', 0, 'G3iqRMvUJOqGvwathUZVOVnawUu7dnvOk6l8OnzXL7GR1jMrgbpFxTa0Tzru', '102693005736032674438', 1, 1, 0, 0, 0, 1),
(55, 'anhthu.qng1@gmail.com', '$2y$10$9DifMASUffP7QGUGXp3KFeBIvE15LsnU0t2ctwZpCnPSthci2OdPK', 'Nguyen Thi Anh Thu', 'null', 0, NULL, 'tb3eOiyY0If4ifxgZg5XQCec1GeYpq9k2c8I1YYDuL2qHhXVEH0CH8Wr6TBqnJx2', 1, 1, 0, 0, 0, 1),
(56, 'vuphamtiendung@gmail.com', '$2y$10$g5rRouNP7/P7lKWjV.9DLe4h1Oun2Al056E29lo5DZH.X57nwLUre', 'Vũ Phạm Tiến Dũng', 'null', 0, NULL, '1CZxmyk09kr0HwX1qpFpItbKshwMj1LY4L7aEbJbAscbDO6WsrMdVF16OzEor35k', 1, 1, 0, 0, 0, 1),
(57, 'vhy281199142679@gmail.com', '$2y$10$NShFPqfiF7Td06EmDhRXyO8.bNaoave2OE1zVByySh73qZOAlCf8m', 'Nguyễn Ngọc hoài Thương', 'null', 0, NULL, 'KK3WNwC6DEF8GWDBIBK82A7BvM29l63OQ0rwEOxZpDNhJhRpRA4qanswbX3nnTjp', 1, 1, 0, 0, 0, 1),
(58, 'Phutung709@gmail.com', '$2y$10$9vRIXp0R/kcAPayLf6udLORA4fU05cqSfdjQiO..7Mpc2ulQu/3Pe', 'Tranhieu', 'null', 0, NULL, 'RclPuv88Tdit8y1IJnpUbbARXXFVIxcUA9lsdYvvqJigQoUqzi7CuVCJmxG6Y7TK', 1, 1, 0, 0, 0, 1),
(59, 'robotone1997@gmail.com', '$2y$10$bFt3fXrBSuBrfobHXoh6K.mJ/pb0ajO1HCpc2k0WkZ5uFSk4qO7p.', 'Tư Mã Bất Bình', 'https://lh4.googleusercontent.com/-Dacr_q8hsFI/AAAAAAAAAAI/AAAAAAAAAAc/ubJFDD7_6To/s50/photo.jpg', 0, NULL, '103115549839036318319', 1, 1, 0, 0, 0, 1),
(60, 'Aba@gmail.com', '$2y$10$diIhbhPjuQaQEdwhZuOdlutz726RJeG/PGmmgn9okr8mEePuyXZM6', 'a’', 'null', 0, NULL, 'wAH4omQVVK3z51odcOFkbqDH3A0P58Ha6LErxy9AYEEUONAsokWXEdeQ0i54lU0w', 1, 1, 0, 0, 0, 1),
(61, 'letrunghieu1921997@gmail.com', '$2y$10$tGo4J52N2NY.iz9oaxFHk.aywU4sHp4tCF6kiMvpcmUNBWUlm1x.G', 'Hieu Le', 'https://lh3.googleusercontent.com/-KR9cnHFdFLU/AAAAAAAAAAI/AAAAAAAAFUk/2Fzk7J9LWxY/s50/photo.jpg', 0, 'G7KIceXaQwInbt50Mrbq0d1TBqZ1J6CiCZbNppIlmpvXIpKMlna91SOptzAY', '107430951769538769205', 1, 1, 0, 0, 0, 1),
(62, 'linhnguyen1998125@gmail.com', '$2y$10$0VblMchydTM9i54POuNw9uTLXpUicu231hSUDa82Mfvik5MbO2Zce', 'Nguyễn Quang Linh', 'null', 0, 'OlCPGkimFs2Mp8yeUG0hwPeWV50jNkfpD3qExiN19KYHHlb90iUGA1AiE0oE', 'RrE3fppnF3SYP93ezqVZ897UA0AHq2RtnjeJGR0fZ4KKEskdF3HDhJXqEmkiPWLR', 1, 1, 0, 0, 0, 1),
(63, 'phan.sang.199888@gmail.com', '$2y$10$n.0RIQBhms0daTx.tU4.LuJMgq/jieutZVuC2/Bn64NgmZ/BJcTAC', 'Sang Phan', 'https://lh3.googleusercontent.com/-AKY6UXt9aT0/AAAAAAAAAAI/AAAAAAAAAXY/4tJOw8b9tQY/s50/photo.jpg', 0, NULL, '110789016179154152032', 1, 1, 0, 0, 0, 1),
(64, 'tuongvytrang@gmail.com', '$2y$10$SKm9KZMF7Wcll5GLx8bwe.jz2MzXwJ4sjUkqaOo3HEUk1xUx92rqu', 'Dang Thanh Vi', 'null', 0, NULL, 'Qmuyh1TQXxMlunKRnGQF5BUz04YW8CQzNboTAqyjL2ZrjS4P0BCsqt3tIGrctpMF', 1, 1, 0, 0, 0, 1),
(65, 'futler55@gmail.com', '$2y$10$/ROtkeZE9/DMfmnj.mb9FeS8hagGdLMSwJm5f7bS0dAbWmn.yIP8G', 'GardagarOraphon', 'null', 0, NULL, 'vvKv4oWVPyErhPdjlJxLzLRUzvYfKbx49bCV4Ya7tsCToI5X8HzsWSOxbXa20G9P', 1, 1, 0, 0, 0, 1),
(66, 'trestnano@gmail.com', '$2y$10$7HZQtFUtD2DMRDcZhjCgL.BBaY3c/FJDdR2mlDlNpFm7RzbQouOxm', 'dfyczOraphon', 'null', 0, NULL, 'yklLKfFePAEUKLgzR4lj0kvOru3teknSVW9PAbZr5YdC1opxNcLYaQpgnIxlZ53W', 1, 1, 0, 0, 0, 1),
(67, 'anhthudinh1220@gmail.com', '$2y$10$zWFzxhRYmk4ieW8w7LYOmOpIf5ynz1gwhdxNNcyi/ZU8ohjmYyJUu', 'nguyễn an nhiên', 'null', 0, NULL, '9cWe1udLzcVFv3TzbUzrn3TGS8l8xCVlxDUdpfwN5OjpHZuIKb0aFE0zpwperFGL', 1, 1, 0, 0, 0, 1),
(68, 'mrbipbean@gmail.com', '$2y$10$xocbYbBuZfAxC3YKpKU20uwhJefI9kuvtGSB/Jml1d58wfI0nApXG', 'Phuong', 'null', 0, NULL, 'D5bNfIpcEQXvXr6m7HqVh5D6waWDrQceIDVv1BsCpICNUXVG4ZIr1ZJ4VUcA1qj5', 1, 1, 0, 0, 0, 1),
(69, 'quachtieulong@gmail.com', '$2y$10$r/ZBCoVimpGvlja/bNJMheAmK1lbgVr7Z4.BGseCYQawv9Mze6D.G', 'quach long', 'null', 0, NULL, 'p5XNh5MTM3svrBK5kwTUpSvJ0bIiIimjFDgijsLGECPfFxYsJX3B1MRXCIaMlNvi', 1, 1, 0, 0, 0, 1),
(70, 'flovertoreto@gmail.com', '$2y$10$8ddLcEDZsFlsN/GypjxsEus59cDu9R0Z3SQEW.QiuTrAV1bZ5acQ2', 'bujhzifOraphon', 'null', 0, NULL, 'FReZHLWvYLb0M0UGrVQI81cq5BszdfpWW8pV1WvooNFCPnf07QZfCZLbZPgC6IYx', 1, 1, 0, 0, 0, 1),
(71, 'namvu01022000@gmail.com', '$2y$10$lQb06vLGqLNU6BFPbnvMJOy7HWGAIOq0yx8XyQa.vlM6/LJlSF8sG', 'Vũ Lê Hoài Nam', 'null', 0, NULL, 'o9mcVVoYxIEMVxdNEM6ABVMeAJpc2s3y4IAVB3NxoXtwg8hHoDkHVNYxjuAyS5Zp', 1, 1, 0, 0, 0, 1),
(72, 'hahuuthuong20071997@gmail.com', '$2y$10$jeMtfcAlCLQvhdWEi3ECL.M/H67x8PCULDplPhQKw9xT7sKbx.R4C', 'thuong koi web', 'https://lh4.googleusercontent.com/-nBPpX135SJA/AAAAAAAAAAI/AAAAAAAAH3g/pEOLHbcoddM/s50/photo.jpg', 0, NULL, '104395540060120360007', 1, 1, 0, 0, 0, 1),
(73, 'dichvan827@gmail.com', '$2y$10$toXQylkE0ufyqTXQIpq8euq/t4DpNNbS2wSNtZbpJ3vqewguwHAlG', 'Lão Nông', 'null', 0, NULL, '3VdRLxwrNRXo6rnXbsRCfcPBfI8DE6lQt3M0V4E1ozxNJ41N4Mw8AvwzRlMPAqtV', 1, 1, 0, 0, 0, 1),
(74, 'tungnt6620@gmail.com', '$2y$10$KkT9S.qrZ2qSZqOmeWYz4ujIDM68.qsRszeoug8aatmFj5Mo/WaXK', 'nguyễn tiến tùng', 'null', 0, '4ArauAZNYtraEoRjL21djFHd0SnacyIDWJlNK3GHJJspCrn86e0FoaCl0Lsk', '6cGQsNOaWl65ZHNEsM7rEb3kLqCGI4P10WIh0Qe8b47bvgSXWnyZvMQVUUEczqiP', 1, 1, 0, 0, 0, 1),
(75, 'buitrang150220@gmail.com', '$2y$10$T8BxhZQ.fUyQSTN25Y.RN.XdbdUr6eA1Mk4FjdgT9ympZfcewO5xS', 'bui thi huyen trang', 'null', 0, NULL, 'AJ0DX4FzIqrRs6slUIBkOkrO4DoiVI39FHL0LU63Wr5vkGgIn4i85upml9ZEx4Jm', 1, 1, 0, 0, 0, 1),
(76, 'vydau30@gmail.com', '$2y$10$yLjzbNtQRLHtSg.w2BKr3./bPo6g0i3j661jAZKL91.1PvHmNs7WC', 'tran thi thao vy', 'null', 0, NULL, 'y03kQbwxMF6PHjiA9ueW7wXBqOjYst3uWjM7pLg4IwP6VBpETRKd2qlsMMyauHIX', 1, 1, 0, 0, 0, 1),
(77, 'triquoc1402@yahoo.com', '$2y$10$NNmr8tAh9jdUovDpozoTTONl/UDLJYpfB5Hjx0Nip7jwGDgiM59Hq', 'Nguyễn HT Quốc', 'null', 0, 'Z1AjTKsIqx4NN7GH9OFv9A5duyQ2961lBXyNJ3xD3FDXw63qFqZrZ9fFup2Y', 'hkcO7wrUAUAk00MNfGQhw07VTgKQWIfp7qKT5baXFY9VwRyPOnOnzW2RHYifyUBC', 0, 1, 0, 0, 0, 1),
(78, 'roylee7773@gmail.com', '$2y$10$DA61w8GcjxUlg6FKmy2c0er9eAx4kspFwkoQo5zhYBJd2F88bxQPy', 'aMQYBGAtmVuo', 'null', 0, NULL, 'AFNkImtsiRtynUOMsfNS17puOkvmP2AB7e33BIAUWQMVCEMzVrjnPjHOsVjcgSIg', 1, 1, 0, 0, 0, 1),
(79, 'karenowens1605@gmail.com', '$2y$10$2ulpFQONFWwEZb.1oN37oOj7QJCG51jcf0F/6tiMg/M5rcAFbH7um', 'jXqNAQfIrZxU', 'null', 0, NULL, 'K9Q0uI6DmGMF1wE9dimJqL3KHdaJeus8jmuwUl2U4pJdrvUEoSOu73tHAzcPTaUc', 1, 1, 0, 0, 0, 1),
(80, 'cooklockwood@comcast.net', '$2y$10$4vBo4nHd1Q1Gmt9px1yP8.0xpmoRS2OHRmnZynNZ8w9fc5REwayQq', 'nNyVAarjZUYB', 'null', 0, NULL, 'ciUaluIQ8kveCvvPrGevgIc1DXo0WGVxqExPfNRVjq7ppYCjiHK0u17Fpr2Sm3oL', 1, 1, 0, 0, 0, 1),
(81, 'lhebert@equitycol.com', '$2y$10$QgGJQekMPwOe1GSLGw412.6/f.wJoaJ8FTaB9zEt/Fdppwr2ySmUe', 'RjHMpQuUTWms', 'null', 0, NULL, 'oFXMeRFpwbR6ozAHtEGNPW2WwtG665iS9GeRH1VvmhHmcT0zItRus06rNUBCTKdq', 1, 1, 0, 0, 0, 1),
(82, 'ryanh@smcnational.com', '$2y$10$RFTJjvClHUlfAXdM7Dsi8eAQOUQaGzqADmkacF3BPNMK3EmYqdwwq', 'QGhRiOZsMBnW', 'null', 0, NULL, 'aU2kr4NrIQUtERY7WXb3bf2pGfvwuw7HVcV6or9VQK1pNpZ2cIxWGuwo6EFhc5ds', 1, 1, 0, 0, 0, 1),
(83, 'hgurley@rjgurley.com', '$2y$10$sIXNFxERlgv9CEzyifiPSuzEjElglJpjfwhqIY8rWBurG8m3jFNhq', 'faByLseKFqrw', 'null', 0, NULL, 'vA24V4zi8Z2ExHr0coL1pGTj2X6BMPO4bHDzG7CmoBeLOJkY67LR59T7UuWFsJ2d', 1, 1, 0, 0, 0, 1),
(84, 'tcape@renovia.com', '$2y$10$UpiFagQ5Rm/iil.ESw54h.8IMrBNUOT6/3GXORWIWm3uiNpwjq4Ye', 'WHhvLDtQrMOK', 'null', 0, NULL, 'nIxAbz1gIdC3mKodAPreZCX875LFAidFfc5SzThxp10kAi9RyPsEFwZXZwUHxYSL', 1, 1, 0, 0, 0, 1),
(85, 'michelle@dl-industrial.com', '$2y$10$cVLhwXjV0wusLfmsuXMmLu63MSMU6s7ojGT4uM4qIWdk4UTO0i0VK', 'XCRoSsPGWfyv', 'null', 0, NULL, 'ivCiwDFxMZUoU5vlB62snlcfL7QkZxuX4HK52rn5yMLr75RS781Kk3yiyjKcHU0e', 1, 1, 0, 0, 0, 1),
(86, 'ldorseytillman@rockfordha.org', '$2y$10$YVLCE1R6Dvlyqsx.XqGB1OVGfSacu7d.kxof7XxWuYfbEAJZX9cvW', 'AbBDqzmuxQah', 'null', 0, NULL, 'mkkadKNM6NUWMBsv5SrY6YDhvjNrxhK7zigdPXpG5ca9eABzauN0rCZ4JsYv4bKG', 1, 1, 0, 0, 0, 1),
(87, 'mccallbourke@yahoo.com', '$2y$10$QGUtTA9a/vTywL06YuFYouVv.8YVLsjb6yQvsZatRi/blqa8bDDoi', 'wYNCdtZmfhWb', 'null', 0, NULL, 'qhq8449dq2YWMHBr3HYxYVpJKwpECl6MOcnCqFwSglKcQSKLRpnSKwZKGteE0Xdz', 1, 1, 0, 0, 0, 1),
(88, 'hallenbeck.gavin@yahoo.com', '$2y$10$05as2mmn/8RJ4cOZDOXRqe70J2fE/o7u7OD4iF6hN6KG/OmN0TlMS', 'CwExVIySdjNZ', 'null', 0, NULL, 'IPv1GXnV4e4Y75yi4poG04iU885OR3lnG4oXLVjAd0Cj2dIGX87eX8DNEvjy12Hb', 1, 1, 0, 0, 0, 1),
(89, 'ap@illumitex.com', '$2y$10$uNgz5LIMc1WJuuo0F4eLU.I69Av4v2THdbHDq6dzVVyMdFe9bAT46', 'ZMpGroeNiTXu', 'null', 0, NULL, 'Ijj6Qgr9fB86ZP6UAE7HDMC04RIoWDpJB0iLIyQYYwLCbznGDPgcArvjEiiJjm1U', 1, 1, 0, 0, 0, 1),
(90, 'schnepfinc@cox.net', '$2y$10$Q4NwVeWB6GMjRCVJeXcFMeQfM6WtvVr25HzS9L9q5TCIpU9Svtzp.', 'UbIrJmugjkSy', 'null', 0, NULL, 'CBgSO4hfVkHyGtmGF79iVK6ztLwiHsBe7ICFLumBt4ua2WQdEXUYK3f4G4HCtKtm', 1, 1, 0, 0, 0, 1),
(91, 'mlee_2103@att.net', '$2y$10$p3syP.d1MNPmhZ3a7IOTxuBHoWUUF1wrn2Dbcj7B7ovsQcXf2hlbq', 'FesKGiQkyWPV', 'null', 0, NULL, 'WfhdcuWT429fOg6MBkHQDPPz5KyzVuZHGyzQWKn5927F1qprgwwR6CFALx1WhHvj', 1, 1, 0, 0, 0, 1),
(92, 'rosasuggs@ymail.com', '$2y$10$TtOKQjdXD9HYJWfFlPCtjeYwpkVJO6mtFOelQXmRNIVaNOsRI1Qry', 'mKHGQCWXvOzy', 'null', 0, NULL, '7DbjdkTFdIGR5yjjTjXceBVCR1zqU01udZIjUloAiAvw3bCKWf98hdklpoOLzwo7', 1, 1, 0, 0, 0, 1),
(93, 'bedlamite@sbcglobal.net', '$2y$10$4WwtYrThCsp3izdPPLHkOOGPMkxZ9y5rFChYMMap5s4jNCiCJCpc6', 'HQXYjOBtEhFA', 'null', 0, NULL, '4AxqF5ui8DyeXcVf3h7P6Ryn1ED0UFYk2VDmPsZfLfkHZ6JB71nRB3OPJVW5iGYg', 1, 1, 0, 0, 0, 1),
(94, 'jennyoung912@sbcglobal.net', '$2y$10$QXdM6.vOJMtYir/NFWoFo.Uz9CbZVqO5QuGiPbgcQVpqHJJEVSlXq', 'KQsRZeHWLpkU', 'null', 0, NULL, 'xyEhjViOUJm9LkmOf2eWJxglzYoocfd15ELRzwN6UhB3M8qS6hxfUbxLhinfcUmE', 1, 1, 0, 0, 0, 1),
(95, 'mrvocal18@yahoo.com', '$2y$10$kVAsrh7F6LD/S3FEPHT5MOJ.S3kpr/9NIahbMSEwoeihnNP6zSX5G', 'BpbqufcZlLWi', 'null', 0, NULL, 'gDrXCPMvqT2ibyphGRGmY4Tva0xXCywhWf36JWv8He6aT3rziGGwgRU7DkickIPT', 1, 1, 0, 0, 0, 1),
(96, 'zulgonz@aol.com', '$2y$10$3KWMWZYtRByE9Jm6ivQ.QeuTA8rAIy7UO6fYr2ygxQpR5PeTeWZp.', 'EQvZLuOiUDyX', 'null', 0, NULL, 'HFg4riI4QzZhDjNJ5eJfGI6tlhLy2J28ae1f5c1ViUm7agnOIHMNFoxf35FCzL1l', 1, 1, 0, 0, 0, 1),
(97, 'howard_m2@yahoo.com', '$2y$10$xIVIzN.xkTgS5PKd3ianq.B7L0By28HFMxP/smrF3Nams5na8mO4S', 'VvxACzofqQZw', 'null', 0, NULL, 'n3ZFhsUFF4KehgYZcv1FBBjDq7g9Q7K2gLZdNvbIaTDzrtKR3T0b0ZwgsoxyNudZ', 1, 1, 0, 0, 0, 1),
(98, 'pedromarrufo@sbcglobal.net', '$2y$10$fI2rx1T1w/icrIcGtWM7HeO82taH0FIzekd3MoIsCJIHmw88KglLe', 'whsTqFonZugP', 'null', 0, NULL, '2PWoWIK3UtAk4HLGN3bdldXFIBFsdwcrMuPswdBBl4p1aTP0cq6FYWBTeuJsylyh', 1, 1, 0, 0, 0, 1),
(99, 'robschuh13@yahoo.com', '$2y$10$HA5ve0YoG5bVxqjRH3AxFOeaHBRz8nh4TEKeD9CFy3GhXdo1XkAU6', 'tFJpHnSLslyV', 'null', 0, NULL, 'WPS6VFrjnM5Kp8LMUMZG9AbgDm0e7RY5BraErO9JAIc21zcG36L0Z2pmF1ZMKSeq', 1, 1, 0, 0, 0, 1),
(100, 'jrschneii@sbcglobal.net', '$2y$10$cb5usze6gnTOH0eqbxnCM.RtM77o1u/pLmfhErrbTY9oFCa64HYEm', 'QKvjyWTtrPCY', 'null', 0, NULL, 'pMD8oatSleqNw4D0wdopXAAVv4geROasSgAA5PuUwG1qW7KbCHyWr1JE8F1OIc28', 1, 1, 0, 0, 0, 1),
(101, 'carolfnny@att.net', '$2y$10$ZK1HEK3jOtVaTzgx15/cNeqWbOttzqj8AxjZPqhc9wszxvabTbyWm', 'cXEyYJawtrvH', 'null', 0, NULL, 'jJFiZ2mNecPwGaKKOYfB1sHURF68nduA3Xxrg41jC4tR95LsCorSphjUSq2MjCMQ', 1, 1, 0, 0, 0, 1),
(102, 'yvette.borrego@yahoo.com', '$2y$10$3L7k6hxiYQKBkkCtJvUMhuWlAptZwMWvOOZxzmq3W60mZWmDuRA62', 'HUvEdWNgPGTA', 'null', 0, NULL, 'qZ63kuGICfBWxlsmS5IMMh9GovG0VUAbTOtMzTF87I5NgIla8YSkVJdgmSOCiWUc', 1, 1, 0, 0, 0, 1),
(103, 'morin.victor@gmail.com', '$2y$10$Qm0RK/KNEZqTtv3FITQ9ouZFQ/jKuAIHoAFKu7ZKr5VWdZmvpjs4S', 'CZKrSofRMibx', 'null', 0, NULL, '5rr2BtM7iUsBcFWTap7GCZwivS2nnVdYAXSAOFUtfbdYQfXQ6phEDVHvxUivkjKe', 1, 1, 0, 0, 0, 1),
(104, 'somjitbarat@yahoo.com', '$2y$10$KfR1e59KmOaMkj5qYYL/JOlYd29g/oSoA1ju8kVkar6L68w774r5a', 'KsrWqlQexJFk', 'null', 0, NULL, '5hXNLSSOMN47mbUDeV22xPCnAlvW0jIKn39S0IO1JA0CJSuAZLrVTJ37ssM8x7kZ', 1, 1, 0, 0, 0, 1),
(105, 'christiesherbahn@yahoo.com', '$2y$10$pB..32PIibtkjPQmd7stAuykLY4EtyMfWFU7pHBDg6YdXzRLBHQI6', 'aMefjhyEsXuU', 'null', 0, NULL, 'kQUYThEabEQfM5aj9HNYKfdpUmcGw6PhI9ggSfxhNbmjU4H14V243WjbiepE9Cdu', 1, 1, 0, 0, 0, 1),
(106, 'gtlthe3rd@sbcglobal.net', '$2y$10$jcGmpxLzVbto0VY0uspPGemnboHi1e2Z3HlIe3ntU//6RFXPx6VMO', 'aQdcTYJDBiLv', 'null', 0, NULL, 'MEDyP7ZI63MFdk0RZoS5yLpR1qwek0No3EfNOkek6sFYP60MTKtnhc6bi0Ch7PX4', 1, 1, 0, 0, 0, 1),
(107, 'miami305u@yahoo.com', '$2y$10$u7cq7D5P/Ofjb0jjst/GvuW0qP8jGpQnqKWL1EsyH1bOgjUXFdepu', 'tkLCOqMwjKVT', 'null', 0, NULL, 'ePfuQ1MqloXSRXkfRQJkla1crnOSxrWU0iwAteY2xyveNy81AihNfydpwNOY9Js4', 1, 1, 0, 0, 0, 1),
(108, 'ron.hunley@yahoo.com', '$2y$10$PU74dYSNT3iQ0NenxDQdTOPZLTttTUVPMkx1ro9/l6DFXVi/Wx966', 'lpxtikHeANEX', 'null', 0, NULL, '6ThCc2HmBBoudtSm3p7mC43BOoFZni9miryTQRAZCYlayhMNYX6BLMWF5ZryLVv5', 1, 1, 0, 0, 0, 1),
(109, 'brandonfriend@sbcglobal.net', '$2y$10$3cm5Cz2KZ/P6SZYC9/x3S.7w16LtF7iLi6bZzRExFqrl8T9hePBYa', 'alZdWUvLkTCM', 'null', 0, NULL, 'QuNvYVotc5oR0Wuv2y49Zhtkozw3ym05zPfWNMtEBtGSjf2dovoxpNebmXgvPleD', 1, 1, 0, 0, 0, 1),
(110, 'moises.molina@sbcglobal.net', '$2y$10$Tuiplu3YAgHA.AvAj1emeeLebvxqomCwt/A1GkyfagjXHIJkQiQPe', 'hwLuVerIHnDp', 'null', 0, NULL, 'ZjKSbAm8BqfOdsNIO18k7EF7pSCo6CfJO7mbirmNamC9rH7NUCDKK2RcaGTct3FX', 1, 1, 0, 0, 0, 1),
(111, 'wilder_barrera@att.net', '$2y$10$TXaNWaU1loaE6kNwfVRcROUNnM9QCcg.IfPnLjbs7gZAtAIvcSsX2', 'JtqdBOazAcWf', 'null', 0, NULL, 'OADwfI8dIBoveOPm5Mn1CN2xaBtb2Fx06u9e6x5l63Ffx2HlhTk9U7GoVCR9MfJX', 1, 1, 0, 0, 0, 1),
(112, 'ggorgone@citizant.com', '$2y$10$irK4IIQasNNwo2UFyBkSMuSZbe.pEfgMeRmmnR8J51dwtJqogSI3e', 'GpoczEIZgSOP', 'null', 0, NULL, 'G71hvjG3Ro0U4L9ktxhS1kkIJFiuLDBYbS1ZDKZUdF5nV1muUf9BwdRHG7rDSvgS', 1, 1, 0, 0, 0, 1),
(113, 'denchri6@aol.com', '$2y$10$AlkoNhZ9bxIjWqmXgG7OB.RJJpRII6Bw178oyJleA5lVRJs2ih9jG', 'FelLAcpsqvNH', 'null', 0, NULL, 'JrVHz6Kzy0nF4KQ9g5NyemfOEtaFcJObvTcAmdgrRcbe6p08Mb1k2cohUZbzGvtw', 1, 1, 0, 0, 0, 1),
(114, 'turn2page9@aol.com', '$2y$10$BKYUsyCMUC0ava2b8eGQQ.69hBRakvgJhmTpyebHDqek8s/HVnvQm', 'fdPWvmUjJnOe', 'null', 0, NULL, 'Mt4t6wsR0hu6mcG4oT6MTESPVzVPjtNogSj1VurbT2aNGPGv8OBt4bmqWKeRrRsw', 1, 1, 0, 0, 0, 1),
(115, 'marykaye1212@sbcglobal.net', '$2y$10$lFDpFtthy4qQTHC7f7u5GuxScbaoRITZbasNX8NuGrU5kkbxu215u', 'WyqMpLYoKhZF', 'null', 0, NULL, 'riCV3q2WqMx5vZi6O3CIu4tanfpV9RGRMyR1nc9Xcole6956qnLzOu1h4VjMsxri', 1, 1, 0, 0, 0, 1),
(116, 'dale7xchamp21801@aol.com', '$2y$10$RfU87sZgP3X6YobTx3Amdu7HRyH8x1p4.FnXMSW9ZZgS2N8nR.gXe', 'TqjyGOUXltWr', 'null', 0, NULL, 'YYpekun0iRBtBVn4SpP4AhWEnda8RewHD8acp7Ofvpye78O4traNofNXXshTZLVj', 1, 1, 0, 0, 0, 1),
(117, 'wedge0123@sbcglobal.net', '$2y$10$l304hZz/YH7RIjCSInOJZeChR5N2Ac8qJJEssvXB0fjF9lBsqD/YO', 'hNdSJCKLnQWj', 'null', 0, NULL, 'aPpHk0jC44AYyNf7paOB8Ij7ygE7QsZ9acQhzNfzDANokKXop4F041tvgFS6iwwH', 1, 1, 0, 0, 0, 1),
(118, 'dawnj11@sbcglobal.net', '$2y$10$CnLqi5SetJfTAgUNPCmsOOAX3e0O7hlWK2jX2ud2lu8m1ivr9rmYS', 'EszukygiLOZf', 'null', 0, NULL, 'yDzzXVDEKEtlkIyVLMgWGWQYRaQUpN7VgzbeHyxgA7MnDUnIzLpCO7nyOIpNVLIH', 1, 1, 0, 0, 0, 1),
(119, 'kim31977@verizon.net', '$2y$10$A23sG2382k1Y8FVFPl5Uveb5gpxh59QvDN/qYNmSeDpoG5fHvwDY.', 'SVAPLKcIUBjC', 'null', 0, NULL, 'WcC1bEsrv6V365wwkusQQTGK54zxhPo1UB1pZ28s7irohXEG8gFz7p8CDWSEwGh9', 1, 1, 0, 0, 0, 1),
(120, 'troxlerkaren@aol.com', '$2y$10$CCu/GwfI.HEt5yyccJIhzuihomljzqiGLkhfQpTU8b06wdfB520XS', 'GEnDOZxWrcou', 'null', 0, NULL, 'Iol58rV0vgQsLG2BHPAkfVyAMlG5jgeOMf4YBUMv1kedbAqYQWMHbh6AljI3PEK5', 1, 1, 0, 0, 0, 1),
(121, 'jlee42971@aol.com', '$2y$10$/v1t6NBLnUN8wSCkQN8L9e2mOHjWet8K5VpT8ZUZVcIKDVN1iQb1a', 'MizFZrEdgHXo', 'null', 0, NULL, 'iY3I2GgEKNChbqIkfWo7W6EdbbPVGD8KvQaxB881UxhTsO1tDHSFKM7cSsQ2YvQy', 1, 1, 0, 0, 0, 1),
(122, 'mturner88@aol.com', '$2y$10$7rjv3vi5jAlwGUPXKFfFju..VGjr94ixsKPLVMbqwWTR91G7xJI1.', 'DxEFpqktrGng', 'null', 0, NULL, 'SOnatSk8NRbERFUg8sNhKZBMtNcEwPwyiQGBAJQgJcdiCknqGwnyQ11EPiITSIcn', 1, 1, 0, 0, 0, 1),
(123, 'madchen930@sbcglobal.net', '$2y$10$EKX4C.8pM0R013wZwducBOMXeCsSQJCyciXmlX5fJOBs0Sr5jVa4G', 'PAutOxWdYeTb', 'null', 0, NULL, 'tKW0OuPDI11tfTZGSiU3U6txmOTJyrbgvq5XjWMdWejhpUFymLgvAtvemzbXzfth', 1, 1, 0, 0, 0, 1),
(124, 'outdoorsmancs92@sbcglobal.net', '$2y$10$Q8PZISN5JnNHoD8J4wHvguUfi6iwzIunInANMkj0l0h6SjTqg0DTK', 'sxzRGqlQijFc', 'null', 0, NULL, 'ugCbp0NRWjWhX85oi8buQUjbtDLQVPRTYQL5nXV5cVRClMXTGfvrYWFVHIpRkTJf', 1, 1, 0, 0, 0, 1),
(125, 'cperlitz@sbcglobal.net', '$2y$10$ttTY9g9Q2VKriK7qP6xaE.zWECee2E2ANnB1sF7mL/SqcjdOeOZg2', 'hfvFYCawHiyK', 'null', 0, NULL, '2fpZJXKZASjKlZJkvt5sYxRZRSoUjErKvweCBtIKnMpsVPyDQVkDUvnEKhqAsQVQ', 1, 1, 0, 0, 0, 1),
(126, 'lalka_ak@yahoo.com', '$2y$10$.D.x5NRHs3XeYE1xHXNhneavPc2i73iDCt.KjnzVFCCTYw9owvSoy', 'rPTIJGeasnDi', 'null', 0, NULL, 'HqEP9LHgf6EKlYRYllAkUaPapWEuRGRLI2EoW8wpau3eD7lnGO5H6Ewwzf9Z71ca', 1, 1, 0, 0, 0, 1),
(127, 'blessed_by_da_best@sbcglobal.net', '$2y$10$HVouGHDAwdzxjCAWmacNl.YNTU4dZvpJzigS9NBUuuqKfnetNmtrC', 'hLTzEqDGtxil', 'null', 0, NULL, 'LwlL6f4p6XacXmG9DcqXtd8vo4MET3OgdMnGE3VTh7pGNuaNSNlff7aWdrrgZj8I', 1, 1, 0, 0, 0, 1),
(128, 'mdcartin@sbcglobal.net', '$2y$10$1S69M3FCPz1dX8dljrq07.PG1NZZSBVO5gioORgWmnw636QH2PV56', 'zNHusigwTBbl', 'null', 0, NULL, '4ndI33ytUeZP5eSsx0ZGj4fRZFKJytxcBZih41JUgX3Eb5kxFlWXMVKnBdMfm6DS', 1, 1, 0, 0, 0, 1),
(129, 'icslack@sbcglobal.net', '$2y$10$PNb3rYO7XWn0f6zYqNPybeypwlyqqv5gBzO1b2QqeZg3oe5JN/xOq', 'wcIphUOuWBfi', 'null', 0, NULL, 'UKs2nl4TDQ8dWh9EXeo9xR3wvtSdLnlYS0wdtF4qT1tVvCG2aRnxQKkVPC1jOnHq', 1, 1, 0, 0, 0, 1),
(130, 'stevocc91@sbcglobal.net', '$2y$10$xuD7xCwOYiepj8A5pQ8LH.p/EoA1lNHWlX7ZiSUkEqnwtu04GQ5JC', 'iWcKtlgzOIPC', 'null', 0, NULL, 'n20yKDMX3bsUU5YT6xNPSGLSBWQJgF2w27aEWn8xlDLL8OdDgEJSA5tR1FlguW6B', 1, 1, 0, 0, 0, 1),
(131, 'jrn123@sbcglobal.net', '$2y$10$r6PN/FVlxz6tEctqplQ69.L2JICiMFhGOyxmKS4mFGguyqJdrNIKm', 'aJCenjNzdEht', 'null', 0, NULL, 'eR7NMhpzP7eilqoim68pNXsMmSY3iBgRWJAHBI9OMTGQ1TS5d419m1Bvy3H7MSo9', 1, 1, 0, 0, 0, 1),
(132, 'soonersaints@sbcglobal.net', '$2y$10$FOGBKGifjyNYeuj6.7LzWud0rUVU98XX2j4TRsPGRyHmyCiL4Sso6', 'uUOyfPRgChtK', 'null', 0, NULL, '6sWqj21t9eFNLEIQR2mkPazHxqILDo5qGBCTYVVsxlxFdt5Qgi4C56FooZMezpEo', 1, 1, 0, 0, 0, 1),
(133, 'aprilmorgan1964@yahoo.com', '$2y$10$37wgN4iCbQ85H4IVtmnxluVjChwtIKIVfdGDtjysCzBvi9ANR8bF6', 'OQvfGXLotaSK', 'null', 0, NULL, 'I48geoHGYmzvj0Wmd1iSEjKUeNQpOOkNWcu18OlL1aXamUQ2lhIBcbikCOdL3gjC', 1, 1, 0, 0, 0, 1),
(134, 't.ashbrooke@yahoo.com', '$2y$10$lauFpm/DT5mGsznV1.U5E.wDAHu5A0N6p7Yz.swgEoSP/6Vj0Ucxe', 'YrnkJpoRtfdC', 'null', 0, NULL, 'NeSFhvwaJeZKnfIRYiZLHX0YxPPg1KroVGlvoD4lxZ9KFIhDwJLdVBQP4GhsnFaC', 1, 1, 0, 0, 0, 1),
(135, 'mdaboub@sbcglobal.net', '$2y$10$bpQ1lmATD6k9Hx29uiSbiuPpVlvgFrfIUf.3wpPVGgHGaok2mvwDm', 'xLmJNFViBdZw', 'null', 0, NULL, 'A2MPE7xzXtgVe5TNoijmgtwY8UNzV85IeAKJDzaSYfVr8gc2GUgxdIDV24ohibEz', 1, 1, 0, 0, 0, 1),
(136, 'merle.messick@sbcglobal.net', '$2y$10$VoAK9z9/.3V4hkY3pqpFW.LlREFFc2FUq8RoCS666sIWhwMSYTzhS', 'GjUsXbxcNuln', 'null', 0, NULL, 'PjxOwLZC92Yh8sS9DgN7VqwOTO3inmLB8C0tCggFbCPY2evU8ue8RxYxka6MB53J', 1, 1, 0, 0, 0, 1),
(137, 'hlcunning2@sbcglobal.net', '$2y$10$5r8lk1kUt3EQ2JBKnUl8iOmIo9nAJdtoMjaNTW4KeMoFy7MYEYn2m', 'EbypuXhtlUjc', 'null', 0, NULL, '4sPb0Orp1qnpbpORphi1mkB9kfA6QMdCNZww77rDTL2hHJTKjN8I6iw0XNg88PlG', 1, 1, 0, 0, 0, 1),
(138, 'jordan904641@bellsouth.net', '$2y$10$RkBdPbmYLgLIJZgLZOJxY.JH6Gs8YGSexMJ.ZfWNx0rQ97RxXDKCO', 'jcIeQfGbTsJa', 'null', 0, NULL, 'G0C1YD8VbA29YKMlJFbm2hy4sbaRUHh8mrLecgzwfbKeAHfa1JUzsBA6ds9zHAzT', 1, 1, 0, 0, 0, 1),
(139, 'jevelynne@sbcglobal.net', '$2y$10$elp.nRua.B440UCFq6abZOMyOsZEzbR6OUR3tKCdmV2ohbzP.t5wi', 'dTGUBSVQhKsE', 'null', 0, NULL, 'IDJYOkvgAJ0gR8MgwejVycyP6KpvfmiXz4Rxu4rt46tamk4UxaqSARiyGKu1YkuL', 1, 1, 0, 0, 0, 1),
(140, 'mclaughlindana@att.net', '$2y$10$xQNqm4ZKMcGd6HLMIoxzG.sM9/U4e1Oa/H2YBkGlG1p6scA85dtHe', 'HIWnYmpqCFyz', 'null', 0, NULL, 'PUwpS6iYNutq6FB9Rbze5lgwOIGhosLoahFDTNZhxr9G2y9lU7zUvKfdFJLcs1Kl', 1, 1, 0, 0, 0, 1),
(141, 'rjleavitt@yahoo.com', '$2y$10$XAbT8o6lhAfPL3n24BvDje2Ff.YzevOaHxvCCC06ZXNeLGSndzDNi', 'CdVtjQNXBbGI', 'null', 0, NULL, 'iM9e8HmFe7OirPODMobWimTiLA8ADKTo8NjSLHHmaJQ9tp3vw73uw1mVmLIxVRnD', 1, 1, 0, 0, 0, 1),
(142, 'kbranger@sbcglobal.net', '$2y$10$rTjdi2/MIzVrZ4Zh5Ez4heHzIRJQ9mv10T3U2SMn.nGzwd2.d3EDS', 'pRGLJXHcIkYw', 'null', 0, NULL, 'bFLJOVMnGUaveZ0sBwdaK1x32WpTpQ0otHUEXNCglJURksvu1qWmmXk8zht83Ed8', 1, 1, 0, 0, 0, 1),
(143, 'kendra.schaap@gmail.com', '$2y$10$L2eDbZNNzECA24z2V7bUY.OwnruttkJh.g6YjnyiIRnoDeZuTxXlW', 'AuZEULblYhnD', 'null', 0, NULL, '220SKu75TNH04jRxtOPPzwVLNRkgX9jXXKxihKyUFFLNnk1AXsArxe7d15pWwd6q', 1, 1, 0, 0, 0, 1),
(144, 'darlene.hepp@sbcglobal.net', '$2y$10$5hLsk8ndy/ELMR3SbxIZ4.4AFRexrBrNl5mdJ9Y3HlM5/Wg2t7fJS', 'FXSGUBzCZWod', 'null', 0, NULL, 'jyIS0ybhrjsY26mzMfzxdRdQ3KQga59RfSQH3b46DBoqV7zUqIpmexk1gRbWgGLU', 1, 1, 0, 0, 0, 1),
(145, 'mcko@sbcglobal.net', '$2y$10$Dx1cuZmI1AARPg3OLtJJre99A40B6kBriFhmwrTR1RJkYsEDw/Ofi', 'nomGqHkKPUCy', 'null', 0, NULL, '9ePEO3j70xaRLexsyJlsEYu6f5unkhK2nJhGR8a53uN6yXY0bBCK1GQbzAPBVYIv', 1, 1, 0, 0, 0, 1),
(146, 'bglass1@rocketmail.com', '$2y$10$XvB.n.k6ud67Xc9dwNnMZela5xg44pFflj6rSODhPolX54z2b4t92', 'bDXIslrkixgu', 'null', 0, NULL, 'CJyqJtat4nfTax6lR6d4cUNAGmJvLNDmKJ50crdDuW9AMebc83qQbcq1VrsqolLE', 1, 1, 0, 0, 0, 1),
(147, 'keeza913@hotmail.com', '$2y$10$xT1iu6Fs2/8g3l6ZJi9Ul.ETC2icBlWZi74gW3XIpBKxcyIlTzHue', 'gMCFPVdUuGyN', 'null', 0, NULL, 'FFX24PurbHIsOWRPKe3oawekNDgRukVXXJOQbIaNu36lrWVo9MZJuqMYRAVVHag4', 1, 1, 0, 0, 0, 1),
(148, 'bg921@sbcglobal.net', '$2y$10$TqwpcDKz.WXp0ourxe/CD.vcdstoSIlwxcH5lzQcTDZuLXtsV3DpW', 'TswkSKZjXAqU', 'null', 0, NULL, 'cnN3bWCeB3Mt3EvC7sDIYGhOBMQSqWiqLQv2ob9fK9jgWEJArnkhCaNs97vgmbjv', 1, 1, 0, 0, 0, 1),
(149, 'qak180@cox.net', '$2y$10$oaONtUaQbripBoScuIXame8zjwOm4EkmWFyNTFZF3HcKzwZoELFOC', 'xbVEzqpvLXcU', 'null', 0, NULL, 'Kp5NfakKbNGmHEHqIR0XCKlj7QbjNlkGHdVTO203HrpVHL4Pd6tGCYhEZ7bOiSVm', 1, 1, 0, 0, 0, 1),
(150, 'irishnymo1@aol.com', '$2y$10$fhXMONma593uPeSeCL5IMOjOg9.tnjHLIyeo2y7dR0n0.2joE716u', 'lbpThezDwPJS', 'null', 0, NULL, 'JvdtJMRy8mBkO11GS5V9mschRH4cXdIQIeaNdsduS9va1Qfke45qxL23Zi5PZATm', 1, 1, 0, 0, 0, 1),
(151, 'jerbullitt@aol.com', '$2y$10$tVYWqfda5v7TeoPYSsiLRuxjiL0xU8xklfGfcfDBh42spohGzHEPO', 'fYBRxXlLCeHr', 'null', 0, NULL, 'qa0gWskeAFa0ovvZbJY4EbJqcO1vC42lRbxw37jhAlG8MiF6l1Hp9ji81rx1KtBD', 1, 1, 0, 0, 0, 1),
(152, 'periwinklepear@yahoo.com', '$2y$10$hmltK9iw2M25KOO1XUU8POYbXKsDH9eePSarkgwdpZ9aiv4Nd22J6', 'kjIsyuBYaZXf', 'null', 0, NULL, 'nkAKChsUYU0puNat4aPC5O0fXB9xw1zxJsq5WsTw62xN4jlU1KcMpvPmzo6vshFl', 1, 1, 0, 0, 0, 1),
(153, 'hobbes0333@yahoo.com', '$2y$10$YV8IH1.H0Z8QWxPIv9wlf.Pzxz8r9yWOASWa/tjPBDvw8UCOl0If6', 'MaCtnIcYoLWz', 'null', 0, NULL, 'bG0lrjuHJRvim9prgSfTdi7uq9GdCtROKKhySxlNL7GO3P0Ic70o32lN5z554nDZ', 1, 1, 0, 0, 0, 1),
(154, 'harlan.lundstrom@centennialfire.org', '$2y$10$YYvBTfectGxzf6xqZZEveeguMx.w3Uq5bJcbKbpSrtociFmFb3pra', 'klMDwBmjWFAC', 'null', 0, NULL, '1xALvIdacw6Er9KWySloo9ILoYfEay113ahRKSyoTJZHTLuM8ERXGH1kbsNKrRDI', 1, 1, 0, 0, 0, 1),
(155, 'thai1on58@gmail.com', '$2y$10$qrDD0oQvyunLOKhmEtFfj.m8gYGPkzGoahoWaNRVePLxRzzlue.Wm', 'LvWDczZbmfXg', 'null', 0, NULL, 'SMkn5TMi6cVXxuWgpp1GBT8M6URYoycAQb0KVDH3qwIOgaNLHk6arR4rbggj3keo', 1, 1, 0, 0, 0, 1),
(156, 'brendagibbons65@yahoo.com', '$2y$10$lx/zwy/c8mf3FFrkXEiu7uIei4f3xXn4AOm/9yTsVLj8UcKXCPp0K', 'FABjVuoShYQK', 'null', 0, NULL, 'uw1clJbRZ6aCfQi6GSFPifXUjcTiXSiEUoNNHUp8r65S938wD6gTZ8JaY9hBTHKy', 1, 1, 0, 0, 0, 1),
(157, 'natalietx@att.net', '$2y$10$sAkuROYv0W/NatnUGCtqNO0B45HXKPJJ7yBk6JLpN.Sd.KsdF98sa', 'uaZmtbjsSJFr', 'null', 0, NULL, 'w8qJiYNpY6m0impeYr6It7CpbyMdhvqOBu1VU1zrSc5cX2xbdWlz27oYKuH62CnN', 1, 1, 0, 0, 0, 1),
(158, 'jphigg51@aol.com', '$2y$10$b3PEF/O1Vr9NhYZq5qhju.N6XkbwNGyl9nl42t/kyBbndZPR0JesS', 'fYVmklyACMiL', 'null', 0, NULL, 'lcPyOLJNCOqy6Vy6QAzOEJXnPRmSYt2PG0BgEgRmOgSSr223gevVtvHmRnxseSTg', 1, 1, 0, 0, 0, 1),
(159, 'akoplin@illumitex.com', '$2y$10$OEXeZnStZ1Uzhl774JE9puFZ/nHtDUCWf.q2kxmCqC2ohcLv8F9bO', 'wTfmaSGxDzFQ', 'null', 0, NULL, 'neBACJ89RVMaD2IklW7qVOho896Ovw4L22MlDoIsYJe9nDjfuJpjBJuTY3M2I1Tp', 1, 1, 0, 0, 0, 1),
(160, 'libera5555@sbcglobal.net', '$2y$10$XlG22WDCc/WV/4Tk8LTV..5JvtGXHMnI73xHmH5aN7poZ2zEdwvmS', 'sKgMoyvfiBhN', 'null', 0, NULL, 'D6laXaXyBeqf8ryKRg8uuK99WCL9PjCLdUrGrJNlc2EhjvNRb8ZFIncsQQOD61b5', 1, 1, 0, 0, 0, 1),
(161, 'iozeuf@gmail.com', '$2y$10$F.8xtPln3k4rG8NOH/xKTOd5Na9DGkKwjeqxZnf9McoDCk553533G', 'eGNjcXJEfDnO', 'null', 0, NULL, 'sDGaXUTG9IjFBhRkv7WksEYSzcOTgjzPz3wZi6bamwBaV0uOaaOMbo9lxHABmqbP', 1, 1, 0, 0, 0, 1),
(162, 'inthanongsak@yahoo.com', '$2y$10$bvmAiS55HIliibqCa0UnQOQtsyzzeyMiRCrGFNldqOe7U/nRi0Oem', 'OuGUcEbBZMiC', 'null', 0, NULL, '8gLpxjbSWfuuDuJsBQnodznPW5eQPPuOophoZ1L3QQHLeiFL2w9p2nwF3PW0JVji', 1, 1, 0, 0, 0, 1),
(163, 'breckinridgesmith@yahoo.com', '$2y$10$MxVaIC1j1Pk6NhqePrlbHucALG5RpefTuQoyEA01AF8CykVF6R1jW', 'IyjqWnrCVBgF', 'null', 0, NULL, 'qcPRhKQrVPKvFsD7cKfPknRkMR9wyjlU6w8iF78SGJlpbKboxbKVd8YAvpRTL9tv', 1, 1, 0, 0, 0, 1),
(164, 'akscsr11574@yahoo.com', '$2y$10$HT0F5MWugjA5ts9Z.YoVnOU85CumFXA2HQ2kvtD/1TqUw826heSCK', 'pjknLgflArNB', 'null', 0, NULL, 'NunJQ8dREkXKuY9CzfrovrHVUnsM46sRuRPwnMUYPPGNmtZEdu52cuFyhqY4w3lC', 1, 1, 0, 0, 0, 1),
(165, 'goemaples@aol.com', '$2y$10$9refVArlF6nlN3AHPNsBmepyLWeLN/BM9cowy.A9e6x8dfLIiqZUy', 'fUcdQWyFwrPm', 'null', 0, NULL, 'FW8fM8NO8v0FIoGHNol69h7sMTkf67vsvdjmfnNpJclDJ9QBq1DPLUvLKTDa0yNv', 1, 1, 0, 0, 0, 1),
(166, 'royalpalmautotri@bellsouth.net', '$2y$10$pGMukBt5C/xvCNWkdfvKx.cJ2gmUBOxzc1TduHVIaRpm6vw.UqaEi', 'lixGBMdkgFyZ', 'null', 0, NULL, 'obxOMZ7mfuX058AjEC7qbWSfSfEJ4kVE53epvjgKlJ0cpwOkWXEuYLZ5MWmAfXfP', 1, 1, 0, 0, 0, 1),
(167, 'asote01@aol.com', '$2y$10$u4p.iD8McqfNuHM7J0J0YemgJb85jovGsdsO5xVSjozfE9kI2KLFG', 'LDnfArIiMPyp', 'null', 0, NULL, '8uxcoiYNCPzrH5E09U93ZEhrr5V4muEgfkikHrWIdzwDDCetOJ46N2lP9qJH4zvX', 1, 1, 0, 0, 0, 1),
(168, 'r.wideopenspace@sbcglobal.net', '$2y$10$jLrwxAzG2bUrOmhxfQFSiOZwVO.WmzPafZWuyA9FfpdusnA1O8YxW', 'zmxHRNOJuLSy', 'null', 0, NULL, 'tUsBmVgbwJX59vjHeR4MVREz2Utmq0Ud1owiUFEJaGnNCQgC8l26Tp3D7eRg6mSd', 1, 1, 0, 0, 0, 1),
(169, 'bones2100@sbcglobal.net', '$2y$10$z/kHvcS1zDaLqzvLgDt3JO7rNfSYLaNfYiwSXs8Ck.KzdGT5qWZL.', 'FfUiIeNEpqrV', 'null', 0, NULL, 'm0je9RoqUu9op97igfR1McaxBIbK3hUjhrOC3WOyEXHWZW7ixAQmCuz0li6Loyqa', 1, 1, 0, 0, 0, 1),
(170, 'crazyforthebud420@sbcglobal.net', '$2y$10$DVbQZavvSd6go7hojXVa3uEZYsPk7xukw.PeU.ejd3KYOqlqXV8KC', 'eVZKXNimkCAc', 'null', 0, NULL, 'MAyHZJCMkeY1bcCBMnrJUw2NOLhKiV4titD9RZJmBNfyJE1MkQeuUtVz2fISAbAK', 1, 1, 0, 0, 0, 1),
(171, 'mannyalote@aol.com', '$2y$10$WbleJUznMZ9WGmFqRYsNOeZe6Ya9GKwL99z8qVCmq1yE7ssWooQN.', 'IZSVUcoRzbQi', 'null', 0, NULL, 'yICnGnmvRWscYsBuwLLGbAouGXLwrnZ0wCJnMaIaUBdA4DvE8Yxdcn1AIrWFEhFe', 1, 1, 0, 0, 0, 1),
(172, 'ugo.warden@yahoo.com', '$2y$10$oOcWyF/YZaEUqKsJVUqRxeQ9nVMttHMSd9H9F5zvdp9WLYpQzocX2', 'JVDfrdhNBmjC', 'null', 0, NULL, 'fZvCLyzL09y5ZV5ZnGjAKUVohTEbg5tyNd28FB5ZuCTObQiIMrfyMH4qOdvgDcKI', 1, 1, 0, 0, 0, 1),
(173, 'rollandrhoades@sbcglobal.net', '$2y$10$RGtKAWsDmP3BQX3PpHzAD.1vdD880WfMoITc2mpdvdacKpC8FyIoq', 'RxEcAwiKOUso', 'null', 0, NULL, 'taqMfQXCmV5VYf5dQcjFuodGtbQz2myQfvsuAkhjcqBS0n8Z2bOjStCNDoXqFRaH', 1, 1, 0, 0, 0, 1),
(174, 'march.ramsay@yahoo.com', '$2y$10$YqBtqZZdB49qTJFHxRXoVetHSugFrv5vkCkvbGPYlYE4OxRBY7mny', 'mlHLiIbnXPov', 'null', 0, NULL, 'hPgzT6Z4z9flliNYvRjXcZvjVHXC6rdneDocHmDvNWDL44O1NMPYtMdmkNAwqVVC', 1, 1, 0, 0, 0, 1),
(175, 'gavin_paule@sbcglobal.net', '$2y$10$viyN59m1bznDkbmdZr0JXe1LoTTEDmc3stqeUTp1uWcHqpROHCdoa', 'GEPWTxfpVBkX', 'null', 0, NULL, 'mZi1xDGti9bw7nDOf7U7ShEqAxiVsjewtWWTxsgt89FL1w1kELcKhq63RJkN4hHA', 1, 1, 0, 0, 0, 1),
(176, 'tinawchester@aol.com', '$2y$10$oN50dUjbkBSC1jlUkBhuVecFj9.QYQZ2rTV9xKkVVTwdNKISI4hF2', 'dxRZITuNFetf', 'null', 0, NULL, 'gjz4gyyyQVTwLd7Ybqk6L1rJTbGGMyyNpMRdGoJtmKx8je1jmVMYWHOeVmgL7mj1', 1, 1, 0, 0, 0, 1),
(177, 'haydenbrown95@hotmail.com', '$2y$10$3NjVaG4PfFRaJ6USXmo7luPcNFnmVgEI1/g3LepHDD9KbWBV6FjdC', 'AWuJzMQenYgb', 'null', 0, NULL, 'x8xA4niHRlHbnY5ZlRrGOmC0xRCJjaAXmaAKXLUP8ddJZGHrn1DRkBmYr40Xu2Ku', 1, 1, 0, 0, 0, 1),
(178, 'jim.smiley@sbcglobal.net', '$2y$10$pvpPkNKISaMjh6sWw1Mho.jDdgtmpu1Zd/gZI1j7cXION43xm3cPG', 'xCJXRQVUAyfP', 'null', 0, NULL, 'dtLQIDBfs8Mvo0sPx4YZVRzaBa8LhA0q6TLMtCPHsiq9QE2BJpDO27lAiyGfxrff', 1, 1, 0, 0, 0, 1),
(179, 'salcam2007@yahoo.com', '$2y$10$zw92S2hTJtbS6NdUp3fxpetal2kJsuoLX4nFzkk4qGBBEedyPRJKC', 'FaDBxcRiKXAM', 'null', 0, NULL, '95nlWF2l5bVUN0v3NBaK5w741sWVPUuxICRnGMFl0jLYHgkGhUqwceLaJL1RvVLo', 1, 1, 0, 0, 0, 1),
(180, 'brandon@legion-investments.com', '$2y$10$6Xp4TSrbCqXZgyD5Ho0XseX0MzXu/xKl0WTXp46/urs7APdA5Aqo.', 'yULxSovZmudl', 'null', 0, NULL, 'SV5eTUBi5RXJ1dlzLT9xLfCUEZawZZs4XLP7nzYvOqpP1fpw7fNjgHFUHCMTvunf', 1, 1, 0, 0, 0, 1),
(181, 'cash_dutch2@yahoo.com', '$2y$10$FBiilq6oiCQwgn7NZ9/rYeIFwrZ8n6ZWt2Lt6/y6iLssTLA9yWoGW', 'gZnByrYAkMLz', 'null', 0, NULL, '6ZJJqQxO5xQ23WTH2Uz4A1DdxMu3l5mcDYZOFHvU6S1lUhm4kF410lwpfNkl9FZ9', 1, 1, 0, 0, 0, 1),
(182, 'mikedes@sbcglobal.net', '$2y$10$F1viotsAeGpG1sHsRoCeTu4BrnOxmHPIl7Ej8PxHWIjq1YxVZSbA6', 'iKoqrxFGPhyW', 'null', 0, NULL, 't02Pi8xaTndq1RvLHatuMLdT7TpzzfpXvK5WIwfx4EAqA74YbKm5mA3AJtj7awNM', 1, 1, 0, 0, 0, 1),
(183, 'shanescallan@sbcglobal.net', '$2y$10$pYV314GU.W4nTZtCdWEjluF43LGxyZltO00ahSM4bzP.Lk5jARho.', 'wWAkuxhpdrzH', 'null', 0, NULL, 'TQgFsJUh8jDJvnw8DL31ac4CR9XDtlxt7JfMhRWbhLc4B3qCWQl1lmdzuK0Z0Smv', 1, 1, 0, 0, 0, 1),
(184, 'aaron_scott96@yahoo.com', '$2y$10$PSBVN3uJGx1qmzpLCSLjG.p9TYrzKkhgAk/Y10n3ZM8mV//XHmfCS', 'uqfopiMwkPDr', 'null', 0, NULL, 'SvaTBlfAahUguAMz64HzfNfpN0x2vcDwXGSmISExJr4srgxHZmwI0W48cYuPtCvG', 1, 1, 0, 0, 0, 1),
(185, 'jamacdonald@speedrack.net', '$2y$10$yOBEIRXbRXyjtRem3CdRFumAVAJ7kLRUsC5XCqXtscYMhr4mI0kKa', 'PjNZoDFIuAgk', 'null', 0, NULL, 'kgNNSNAVtFCiBBfbMQDC5MPlqEKQCa9zotK2m1pyPMKWhOsu967KRC8wgvkRyuJ3', 1, 1, 0, 0, 0, 1),
(186, 'jman1078@ymail.com', '$2y$10$vAbRL3fGV25Zw1IjBQDjh.o1gzOsp/vdejdw61VOOqSoQ3vT0nbdi', 'dTxIPrGezqho', 'null', 0, NULL, 'MUvfNWv5YAUG0VmpVAKzktr2lRD6aWaIcySwAwjoaZF0IeBsWhAQHUUYuGYVjsYZ', 1, 1, 0, 0, 0, 1),
(187, 'nicknizz@sbcglobal.net', '$2y$10$247DloeMEP6.VDKoAUR8wOs6V8OU6W256aVU5LFK8.pJHGFuucXBq', 'jGNHAkOMIPEs', 'null', 0, NULL, 'LjrxJeLHfwy7Be0gCcqqUrcCmLw7fXCCDgvxB0FYezhsYb7N0Scz1EhhHzxIK1pk', 1, 1, 0, 0, 0, 1),
(188, 'wnavarro91@att.net', '$2y$10$4fYIVFbAtsNG0C3BDJqgmuMS0cJBNXhL52hAErnZpHZw9qf7KGUPi', 'XEdJsrQCAoyO', 'null', 0, NULL, 'yY0XgRL7HfVsn6hJtR5cgaym5QWX2F1SGPomgopaTZ7MIcF73w212CWign35CPAS', 1, 1, 0, 0, 0, 1),
(189, 'fernandosala@bellsouth.net', '$2y$10$gSSpe484Ejhy.ysA40byhut5MfVwrO4CubavJReeSXeJLCuPR5FIe', 'ZLwAxFvilsPE', 'null', 0, NULL, '0NKrbgc2Sf3o3Ph8KSvlgFjnwRDknSCOdxQfgf2OHT3KXfkSxaKg1qlMEMK8cKp6', 1, 1, 0, 0, 0, 1),
(190, 'ccarde1887@sbcglobal.net', '$2y$10$saSZcL1gyPDTYrebWKC6aOAFm5Ady4iB3WwYZjvC5AG3J4aScJzyS', 'MmqdltVaKsSp', 'null', 0, NULL, 'erQyQ6FyVEH98qtO4xGFHyemwk7FGOEh6vF88S22wEr8xhRvb4Hs3YxwkYBQfsKz', 1, 1, 0, 0, 0, 1),
(191, 'gina.stroud-murphy@fluor.com', '$2y$10$bBSIcgsTgXAf5l6lwaVmr.3r0naMa4GYzcIaV50BmOjPAnYnAzD4q', 'reuHoOGTDbmn', 'null', 0, NULL, 'Wjvw6RUxIrXbBIo7Osqs54bEiy33mSWuIme5y4lKRvYoxaKggtvsl3gpKURAL3qT', 1, 1, 0, 0, 0, 1),
(192, 'rickhannah97@yahoo.com', '$2y$10$tx31WjNiuIkfWYXNwsyEAuYDg9/a66zXfHL/W8L/7n2s2E8DPIGDe', 'aHmLlhPtcjyR', 'null', 0, NULL, 'Ey6F8nicHq14hxpl6pDBOR1B3Tk85cQ0Hkh1VL6fOk18efyEiYu9L3MWj8B0XC2W', 1, 1, 0, 0, 0, 1),
(193, 'theturtle93@sbcglobal.net', '$2y$10$GQlQ8NSE/hvze8brrjvkzONPunM2SjAJI5H6x7IhGKSAjXjHuveCW', 'qYXUclKFreOw', 'null', 0, NULL, 'dS6zM02oCGoMLNC2aqfkxh2MMC4QmVGrzoYDLcPj3yXrPqB59cZ3np1jIngC8WCr', 1, 1, 0, 0, 0, 1),
(194, 'mraaront@sbcglobal.net', '$2y$10$1IZKM32v3edacL8IKO2o/OKMCqlq.Kf4.TJq.U.PBImuSHsL3jtYi', 'HsEFdlupIKWG', 'null', 0, NULL, 'GBcT0kNt8eh6m9zrItA2ngDbP7z8kYLQpF1JwsXkcRZnLr2qf2NvfhqklEARDU0z', 1, 1, 0, 0, 0, 1),
(195, 'sandcreekenergy@gmail.com', '$2y$10$xkY8hvEMYkq3T4Vl31s1u.oYr5P/iWUf1ALjUWlcwb7hFaqUtevQi', 'sBbcfAYImRZg', 'null', 0, NULL, 'xT5IbBMbJEG9RQkemiXAIFbPxAYFP2PWVzCt0EViT8RuTzRTdfPvlkIBOH6mtoT0', 1, 1, 0, 0, 0, 1),
(196, 'fnlhouse@aol.com', '$2y$10$d3BEj8ANo65gCppkkfAfhOKNcLNRZuPMEdsX/xroiK/fLr99SoGj2', 'WEPBUAtCgnlj', 'null', 0, NULL, 'zyimw1ttryjBKvUHaw5gvRbNe35k9ZZCPxtP7uFN4IylUib0o1YfWtzYqsg2uk7z', 1, 1, 0, 0, 0, 1),
(197, 'csslzt13@hotmail.com', '$2y$10$ZBScgKomcOxa4rlzy.tdVOBf/WYs8NZGXNglwSxHsDv4xNVVoTZ7S', 'kGOQbHAeqNxm', 'null', 0, NULL, 'KYQQDhV9ymsWEOpp7zQ8pEn6xbpBqfxZW9UNVeNcjCVK3ytYq0XB4ehLHwSHK9DW', 1, 1, 0, 0, 0, 1),
(198, 'cmg10044@sbcglobal.net', '$2y$10$ZF0IeDb2jBMi84jE/X9n4eTyFHNoAORGIPb675PyVtlVRRU9H33Gu', 'gWaXyNnMOmxK', 'null', 0, NULL, '79KHj7MOhkibz3qk36XsI5zTpWyfTOzvqjAUSXf2iBd695hANrcJn3r5BJRk9w1B', 1, 1, 0, 0, 0, 1),
(199, 'jmvoors@sbcglobal.net', '$2y$10$bUBsVpCGfyoePaTz6A4CVOypMAb15bymv/81DBmuw.3fZ3cnGHtya', 'KzFYMaigpWhv', 'null', 0, NULL, 'Fzx4gunzC9t2Cnp2319fKjAE9FnMrHqQpF84UkJKhuVIRY9kuqfvmlcQkUsEotIK', 1, 1, 0, 0, 0, 1),
(200, 'wmhronek@aol.com', '$2y$10$ALg1dY5./BR48RNQxSn1hO23Q0cCDwM07rTVVGv2fFEuZpAcprzG6', 'aZwhmCXuysqV', 'null', 0, NULL, 'xfO23ek9wvBZTf1IaZgVsYKIZWMRtxaE7jOjvtyfwVCWjqSiBPVR7eJQ3pacIlvY', 1, 1, 0, 0, 0, 1),
(201, 'toby.hosterman@prospirapc.com', '$2y$10$znETmQ9dLDG/nwEgLSKIPOh6wzLUyzyFHkoknBug.vb41/FbN7D4q', 'iuUWBVGMPtfH', 'null', 0, NULL, '7WcKkQdfLJR4IbgxeYv37sKj1G0BX5kpjuN1eIfHikdQJnTqw9JfpFiQuYaLso60', 1, 1, 0, 0, 0, 1),
(202, 'cmccorkindale@att.net', '$2y$10$ltVVcDAnieoBkhJcKp1szeCPE8BS/o1.Vxmzn.5GlkqEBw8/KNNh6', 'ZtGemxjaKiCo', 'null', 0, NULL, '7t4P5Eti2DlGoLzHWxxox7qA8n3RsRPsNXVwr8tvD1nfFPtoZu7FYhkegFjz94Nk', 1, 1, 0, 0, 0, 1),
(203, 'kpsatbiz@yahoo.com', '$2y$10$/lTmx5zEVoV4CSurXcUMGODbgwijobaurk.Zep9q8wobtdphBMxIy', 'xvmJfuORXDGT', 'null', 0, NULL, 'qSd7RTU40CGWb6WC0LUqWZQgaaH6oHstwfXUuJGKYGT4R73FpsbsrXxCM77GvHKJ', 1, 1, 0, 0, 0, 1),
(204, 'monotnusc@gmail.com', '$2y$10$j2676L.0NBCa09nayPI5ROU5ZOCtUoVV5GEin.b17soy3SYyorHia', 'jCxULeJicwbl', 'null', 0, NULL, 'cdYORCJPAptvCgBGuYrx8kBK6VIqyZz6GWu4rgStGjQsOiH3OvwocXgmqbdvwWYH', 1, 1, 0, 0, 0, 1),
(205, 'aron.woodruff@yahoo.com', '$2y$10$j36URFiuLDx3EM8Q.67RUuTimObHUadbZUys0ZoBpyUXK2XhmrCMK', 'UqudfrvVFbgY', 'null', 0, NULL, 'l1NgjlaaeIL0tCQd9WWCCg8LNZW9oUC8jkntd1oUgcAFMM3Jbv4uhpF0QrqE1bLE', 1, 1, 0, 0, 0, 1),
(206, 'fairleigh_coggan@yahoo.com', '$2y$10$rToDL9qNiLOuR9CLb/L1bOuv5b6RdYf4XqvQ1GT0kTg8s0HkmJEfm', 'vZaOzbRKsMhB', 'null', 0, NULL, 'HWHinlPsvKXRqgfM795YCIhg410NDYhCN79Jr04ebtUcNvEvtNWwOaaoBU23znfS', 1, 1, 0, 0, 0, 1),
(207, 'magictweetybird@bellsouth.net', '$2y$10$F/LrjpjsAc9A1JWG7xR5OO4qwtqi8SVriqABc2e4mGby5.YBe17PO', 'GslpdEMLPzRA', 'null', 0, NULL, '18yLlEDKTyxRhWlUP0qeld2zhWSYhXRWQSMOW7VUe5GbR0nHnyrmPnnEBof2CuHx', 1, 1, 0, 0, 0, 1),
(208, 'merle.oflancaster@yahoo.com', '$2y$10$GT9clEAsM2CP6YkEOf9BuOiwuq.MpMIeV8Ssz4yg0DL39bFU4xIW.', 'GAZDJCuSFnqa', 'null', 0, NULL, 'rqvXGkV5Wo4ShI1JDE2qribP4fsvqp97EgVfwZoExoLST03VeXsaynfRZLWCjbHi', 1, 1, 0, 0, 0, 1),
(209, 'rwittmann64@yahoo.com', '$2y$10$3T4nDC4kHxvm8q7FX3j4nO2p/hCY.6pwdbRicRzQg9ix4ZUUl/jYa', 'HISTiJCckDRy', 'null', 0, NULL, '1pZt0Sb9maVYTn08NTVtYsWFNx2QVAWwuFZz9ZlANCYCMHLrlAUMNftEdg2VyB2T', 1, 1, 0, 0, 0, 1),
(210, 'rsuddeth@hotmail.com', '$2y$10$Dfq2GVK47zJYd8nSZFRV..AwokGw4.xxlHoFgi8zOiLHMmlgmUmEC', 'CVbuzaBFcpHd', 'null', 0, NULL, 'O58ryIp5so2jVU9h3oy1P17eZzfnon6sb5lQQLxcNGonsjmwzZkiq3ZsbrdprdV3', 1, 1, 0, 0, 0, 1),
(211, 'ashlin.hartley@yahoo.com', '$2y$10$nb9YjopKuDy1qSDAha5CMOYHbXCHvsKJ110n1A4XsWU7Y1U1hWbDS', 'cCEsVSZAYFfD', 'null', 0, NULL, 'CZn3ZR3yvq6mfC9Fj7tXDPBK2nDLl4gisuLBYb148Vjyolj4kmY1BpZRS0ioli27', 1, 1, 0, 0, 0, 1),
(212, 'irshad9in@gmail.com', '$2y$10$HQiyayUKPGSgozbhoMDSW.ddx5ymtDpIcyXKTWV/YCZG90B.0nyO.', 'pXDbcVTfodlM', 'null', 0, NULL, '58V7qPLykfBn4fmGXeTS5KE6uEXgrFVbXLPmAyD7pofu3r14D4alEIMlhWbBTzLY', 1, 1, 0, 0, 0, 1),
(213, 'louie_bravo@hotmail.com', '$2y$10$nWXGTMLZU9rBPEbrCIzWku.0NNA5kG1HfRaeq1mzdux0cSyDuOCYS', 'BvFRVlMhbfst', 'null', 0, NULL, 'YdLc12ufz9fUYq9YpBIkg4kyqhl9zXCR5syh4Qwlunz0Ge9dnMl4UtpdqyVigzmP', 1, 1, 0, 0, 0, 1),
(214, 'aaronbroumas@hotmail.com', '$2y$10$bIfk8mYGXf8qcBh6/WclkehCWV3M9OIaDJRyo4PaZ8grLqz3sOz.2', 'ochZBDILelSj', 'null', 0, NULL, 'kRCK8gwWlGRXo10xVmEaMzzGgapodLgHR4gT4lCzNP7KpdiIq9wnfjC9cxEICgte', 1, 1, 0, 0, 0, 1),
(215, 'dex.flather@yahoo.com', '$2y$10$aBx2g0bqw72M72DhQveRKuPQQbHVG1Iyb3bhwBI2iAqPIwE29/Yqy', 'NZIOWwkPKgsL', 'null', 0, NULL, '6TgxI3Na1awjWHCfkUgY1MctojDEBw6OPob5hY27CeA0pdBs5rK7ISGGw3DomXD0', 1, 1, 0, 0, 0, 1),
(216, 'vanhaolfc@gmail.com', '$2y$10$3n./XPjKIl8n4RcLggpaE.G.tS6GQkPLBi2b.z9I14xnr2cgp0KDi', 'Nguyễn Văn Hào', 'null', 0, NULL, 'iofJ9e5CNYu4WGcwxNBFMJUnxlYRwaNgh24R5CW9rrMI6Kpl6RLKGnoX1FXuf3w2', 1, 1, 0, 0, 0, 1),
(254, 'bibi9768@gmail.com', '$2y$10$322xVDXwwssdUxFKPpw9peBK5lBTeJC0UZekfxdHftUyRJIgH3XOS', 'Phạm Nguyễn Hữu Thiện', '1a.jpg', 1, '7IyNDaZCPtnGkeKh9ibXavkt4cZiJwjaWF4Rg29QwGKbMhNrCGOWJuQx2VFJ', NULL, 1, 1, 0, 0, 0, 1),
(255, 'phamhoaihung@gmail.com', '$2y$10$y253HgZ9UtEJRFUBUIrrD.v2LK1zyPiU6LQUts/1Mu1XCI/KL/z/m', 'Phạm Hoài Hưng', 'null', 0, NULL, 'cfazZ1cBn6DMiGIs32pZG1W5RwwfGBw0RxWpk2zzpNGC8NEjiFIcaNQYo5My2V5l', 1, 1, 0, 0, 0, 1),
(273, 'abc@gmail.com', 'tien11111111', 'trần hồng khánh', 'unknown-user.png', 1, 'os7KAQTnDHlp4MYnFXOJ0wvQ5yhIqj9MLhKiHrS3eF0LfdzPqYVEWKTvscQK', 'QUdoXFxTXuvZEVzfpGZAnXNrWGEzMfOIoEVnGt6azJTeLcRMpiDBEd04rsYpeK8e', 1, 1, 1, 0, 1, 1),
(283, 'bibi9768@gmail.comssss', '$2y$10$jPipqr9XzvwE3Fzp/nd/6O2kYo7bZ5AXuQ7n1hYQLjnSPy9VWlSLq', 'ssssssssssssssssssssssssssssssssss', 'null', 0, NULL, 'MZHUWtsnvuq3gqgN65ROSgMtJ5SLWTWtTgdrei2IJatGv4HioFCP4OyCYC5huC3m', 1, 1, 1, 0, 0, 1),
(288, 'tien1@gmail.com', '$2y$10$AswAwfBquADCMvAbU.T5q.RrJZUlAMqX5T/2YXByQOjW9HwtZnKe.', 'ádasadadađâ', 'pikachu.png', 0, 'rnpvOSOrSUd3jCILIAlXMY7wUKmJderO3hwmYPibYV4OTdEIMW1xQL1ThR38', 'j4zO4QhdxNSQ1Lo65DMqrSkRtEmha3MVQBvsebWoAFpVbUaiSSepEdq8Tmss5Os6', 1, 1, 0, 0, 0, 1),
(289, 'aa@gmail.com', '$2y$10$T1jlvFhwkOcWX6U/5L54POLkDIBed7vBXnBd6d490/c3yZ2/18vs6', '1312e123131', 'unknown-user.png', 0, NULL, 'kRKxzSO9TEZ6wGWsMstRCD3rLNIq6lfoisUQgCx6SfDRgJAau5Ey6Yrrznx4z1HG', 1, 1, 0, 0, 0, 1),
(290, 'tien123@gmail.com', '12345678', 'Tiền111111111111111', 'unknown-user.png', 0, NULL, '', 1, 1, 0, 0, 0, 1),
(291, 'tien998@gmail.com', '999999999', 'Tiền111111111111111', 'unknown-user.png', 0, NULL, '', 1, 1, 0, 0, 0, 1),
(292, 'xyz@gmail.com', '12345678', 'Tiền111111111111111', 'unknown-user.png', 0, NULL, '', 1, 1, 0, 0, 0, 1),
(293, 'a@gmail.com', '$2y$10$luii2hQr7hsH339cVIM2burWhHSa2lmt1Xhf/G9sQJuGPyTkjCtXi', 'Thanh Tiền1111', 'unknown-user.png', 0, NULL, '', 1, 1, 0, 0, 1, 1),
(294, 'uv@gmail.com', '$2y$10$Zfb73OmW58erZuXTUOJwse9bIf9k.Q1tUwjjS9et0CiG7kjQg42XG', 'ungvien1111', 'unknown-user.png', 1, NULL, '', 1, 1, 0, 0, 0, 1),
(295, 'tien11@gmail.com', '$2y$10$fczqxPx2zHzQPr4vcQNzH.5J4zSLlYL/d8FYXqvwRDMzuQYoIFiT6', 'tien tahnh', 'unknown-user.png', 0, NULL, '', 1, 1, 0, 0, 1, 1),
(296, 'tien12@gmail.com', '$2y$10$NqpGpCiWIRDFAVUkZCm6jegP5fIpMECW6D9lVkHtinT.SGjARvn3a', 'aaaaaaaaaaaaaaaaa', 'unknown-user.png', 0, NULL, '', 1, 1, 0, 0, 0, 1),
(297, 'tienct@gmail.com', '$2y$10$5Kk/9Xzu94BSOEWXgFY53Ow0OiuIL79SSSINt7LDRD2MGF2BTFLg2', 'Thanh Tiền', 'unknown-user.png', 0, NULL, '', 1, 1, 0, 0, 0, 1),
(298, 'v@gmail.com', '$2y$10$xEsaZIaYaM9leXYN9Xh/kO3/ofve7vZD1xBz4kYbPdCgNyPqgKpvq', 'aaaaaaaaaaaaaa', 'unknown-user.png', 0, NULL, '', 1, 1, 0, 0, 0, 1),
(299, 't@gmail.com', '$2y$10$V08BzahBNAk8POkRNvMHqOWnzbxZVb4cL3PNJFdst3xcr.5xKvNPm', 'Tiền111111111111111', 'unknown-user.png', 0, NULL, '', 1, 1, 0, 0, 0, 1),
(300, 'ss@gmail.com', '$2y$10$38CiYSCfDLGJB91crm87XuDbPTKqJSXSZRCpUJQfo4zVno53hEYEW', 'tien tahnh', 'unknown-user.png', 0, NULL, '', 1, 1, 0, 0, 0, 1),
(301, 's@gmail.com', '$2y$10$VMbjVal0Jb1dJ5XgNa6EBe1JtuN3ptAOpSzA4yf4GJ/w9AxcOpDTO', 'adadadad11', 'unknown-user.png', 0, NULL, '', 1, 1, 0, 0, 0, 1),
(302, 'm@gmail.com', '$2y$10$s0F0NE1Q1n/uzX.IRouMXuooz4NdhzkamznogwQwSmPGzQXXOpjQa', 'Thanh Tiền1007', 'unknown-user.png', 0, NULL, '', 1, 1, 0, 0, 1, 1),
(303, 'mm@gmail.com', '$2y$10$CTRUHXVVIkdsZQUmG0/MYuDO2rtpmr1dFBj/sVAVBwWgSFM5C9Mi.', 'Thanh Tiền', 'unknown-user.png', 0, NULL, '', 1, 1, 0, 0, 0, 1),
(304, 'ungvien1007@gmail.com', '$2y$10$KmL8v1aqo1Snn.1cnLHgd.gzl.U6qIPbAMWnW6FMV5l1YWp6IRpmS', 'Nguyễn Thanh Tiền', 'unknown-user.png', 0, NULL, '', 1, 1, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `verifyemail`
--

CREATE TABLE `verifyemail` (
  `id` int(11) NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vietnam`
--

CREATE TABLE `vietnam` (
  `region_id` int(10) UNSIGNED NOT NULL,
  `region_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sort_order` tinyint(3) UNSIGNED NOT NULL DEFAULT 255,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vietnam`
--

INSERT INTO `vietnam` (`region_id`, `region_name`, `parent_id`, `sort_order`, `status`) VALUES
(1, 'An Giang', 1, 255, 0),
(2, 'Bà Rịa Vũng Tàu', 1, 255, 0),
(3, 'Bắc Giang', 1, 255, 0),
(4, 'Bắc Ninh', 1, 255, 0),
(5, 'Bình Dương', 1, 255, 0),
(6, 'Hà Nam', 1, 255, 0),
(7, 'Hải Dương', 1, 255, 0),
(8, 'Hòa Bình', 1, 255, 0),
(9, 'Hưng Yên', 1, 255, 0),
(10, 'Long An', 1, 255, 0),
(11, 'Quảng Nam', 1, 255, 0),
(12, 'Thừa Thiên Huế', 1, 255, 0),
(13, 'tp. Cần Thơ', 1, 255, 0),
(14, 'tp. Hà Nội', 1, 255, 0),
(15, 'tp. Hải Phòng', 1, 255, 0),
(16, 'tp. Đà Nẵng', 1, 255, 0),
(17, 'tp. Hồ Chí Minh', 1, 255, 0),
(18, 'Đắk Lắk', 1, 255, 0),
(19, 'Đồng Nai', 1, 255, 0);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_careinfo`
-- (See below for the actual view)
--
CREATE TABLE `view_careinfo` (
`id` int(11)
,`cv_id` int(11)
,`resumetitle` varchar(100)
,`salarykind` varchar(11)
,`position_want` varchar(100)
,`location_id` int(11)
,`fulltime` tinyint(1)
,`parttime` tinyint(1)
,`freelancer` tinyint(1)
,`internship` tinyint(1)
,`salaryfrom` float
,`salaryto` float
,`region_name` varchar(100)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_cv`
-- (See below for the actual view)
--
CREATE TABLE `view_cv` (
`cv_id` int(11)
,`user_id` int(10)
,`full_name` varchar(45)
,`birthday` varchar(20)
,`address` varchar(100)
,`phone` varchar(45)
,`images` varchar(255)
,`file` varchar(500)
,`interests` varchar(45)
,`id_nationality` int(11)
,`id_location` int(11)
,`maritalstatus` tinyint(1)
,`gender` tinyint(1)
,`email` varchar(100)
,`region_name` varchar(100)
,`nation_name` varchar(255)
);

-- --------------------------------------------------------

--
-- Structure for view `new_job`
--
DROP TABLE IF EXISTS `new_job`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `new_job`  AS  select distinct `postjob`.`id` AS `id`,`postjob`.`id_company` AS `id_company`,`postjob`.`position` AS `position`,`postjob`.`detail` AS `detail`,`postjob`.`salary_from` AS `salary_from`,`postjob`.`salary_to` AS `salary_to`,`postjob`.`showsalary` AS `showsalary`,`postjob`.`enddate` AS `enddate`,`postjob`.`skill` AS `skill`,`postjob`.`gender` AS `gender`,`postjob`.`age_from` AS `age_from`,`postjob`.`age_to` AS `age_to`,`postjob`.`experience` AS `experience`,`postjob`.`level` AS `level`,`postjob`.`degree` AS `degree`,`postjob`.`updated_at` AS `updated_at`,`postjob`.`created_at` AS `created_at`,`postjob`.`status` AS `status`,`company`.`logo` AS `logo`,`company`.`company_name` AS `company_name`,`rank`.`rank_name` AS `rank_name`,`job_experience`.`title` AS `job_experience`,`job_degree`.`title` AS `job_degree`,group_concat(distinct `vietnam`.`region_name` separator ',') AS `region_name`,group_concat(distinct `skill_it`.`skill_name` separator ',') AS `skill_name`,`postjob`.`show_off` AS `show_off` from ((((((((`postjob` left join `company` on(`company`.`user_id` = `postjob`.`id_company`)) left join `job_region` on(`job_region`.`id_job` = `postjob`.`id`)) left join `vietnam` on(`vietnam`.`region_id` = `job_region`.`id_region`)) left join `job_degree` on(`postjob`.`degree` = `job_degree`.`id`)) left join `job_experience` on(`postjob`.`experience` = `job_experience`.`id`)) left join `rank` on(`postjob`.`level` = `rank`.`id`)) left join `job_skill` on(`postjob`.`id` = `job_skill`.`id_job`)) left join `skill_it` on(`skill_it`.`id` = `job_skill`.`id_skill`)) group by `postjob`.`id`,`postjob`.`id_company`,`postjob`.`position`,`postjob`.`detail`,`postjob`.`salary_from`,`postjob`.`salary_to`,`postjob`.`showsalary`,`postjob`.`enddate`,`postjob`.`skill`,`postjob`.`skill`,`postjob`.`gender`,`postjob`.`age_from`,`postjob`.`age_to`,`postjob`.`experience`,`postjob`.`level`,`postjob`.`degree`,`postjob`.`updated_at`,`postjob`.`created_at`,`postjob`.`status`,`company`.`logo`,`company`.`company_name`,`rank`.`rank_name`,`job_experience`.`title`,`job_degree`.`title`,`postjob`.`show_off` ;

-- --------------------------------------------------------

--
-- Structure for view `number_job`
--
DROP TABLE IF EXISTS `number_job`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `number_job`  AS  select `cate_job`.`jobID` AS `jobID`,`cate_job`.`jobName` AS `jobName`,count(`job_group`.`id_group`) AS `number` from (`cate_job` left join `job_group` on(`cate_job`.`jobID` = `job_group`.`id_group`)) group by `cate_job`.`jobID`,`cate_job`.`jobName` ;

-- --------------------------------------------------------

--
-- Structure for view `search_job`
--
DROP TABLE IF EXISTS `search_job`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `search_job`  AS  select distinct `postjob`.`id` AS `id`,`postjob`.`id_company` AS `id_company`,`postjob`.`position` AS `position`,`postjob`.`detail` AS `detail`,`postjob`.`salary_unit` AS `salary_unit`,`postjob`.`salary_from` AS `salary_from`,`postjob`.`salary_to` AS `salary_to`,`postjob`.`showsalary` AS `showsalary`,`postjob`.`enddate` AS `enddate`,`postjob`.`skill` AS `skill`,`postjob`.`gender` AS `gender`,`postjob`.`age_from` AS `age_from`,`postjob`.`age_to` AS `age_to`,`postjob`.`experience` AS `experience`,`postjob`.`level` AS `level`,`postjob`.`degree` AS `degree`,`postjob`.`updated_at` AS `updated_at`,`postjob`.`created_at` AS `created_at`,`postjob`.`status` AS `status`,`company`.`logo` AS `logo`,`company`.`company_name` AS `company_name`,`company`.`address` AS `address`,`rank`.`rank_name` AS `rank_name`,`job_experience`.`title` AS `job_experience`,`job_degree`.`title` AS `job_degree`,`vietnam`.`region_name` AS `region_name` from (((((`company` join `postjob`) join `vietnam`) join `job_degree`) join `job_experience`) join `rank`) where `vietnam`.`region_id` = `company`.`address` and `company`.`user_id` = `postjob`.`id_company` and `postjob`.`degree` = `job_degree`.`id` and `postjob`.`level` = `rank`.`id` and `postjob`.`experience` = `job_experience`.`id` ;

-- --------------------------------------------------------

--
-- Structure for view `selected_cv`
--
DROP TABLE IF EXISTS `selected_cv`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `selected_cv`  AS  select `template_cv`.`id` AS `id`,`template_cv`.`link` AS `link`,`template_cv`.`address` AS `address`,`job_template`.`id_template` AS `id_template`,`job_template`.`cv_id` AS `cv_id`,`job_template`.`user_id` AS `user_id` from (`template_cv` join `job_template`) where `template_cv`.`id` = `job_template`.`id_template` ;

-- --------------------------------------------------------

--
-- Structure for view `show_job_group`
--
DROP TABLE IF EXISTS `show_job_group`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `show_job_group`  AS  select distinct `postjob`.`id` AS `id`,`postjob`.`id_company` AS `id_company`,`postjob`.`position` AS `position`,`postjob`.`detail` AS `detail`,`postjob`.`salary_from` AS `salary_from`,`postjob`.`salary_to` AS `salary_to`,`postjob`.`showsalary` AS `showsalary`,`postjob`.`enddate` AS `enddate`,`postjob`.`skill` AS `skill`,`postjob`.`gender` AS `gender`,`postjob`.`age_from` AS `age_from`,`postjob`.`age_to` AS `age_to`,`postjob`.`experience` AS `experience`,`postjob`.`level` AS `level`,`postjob`.`degree` AS `degree`,`postjob`.`updated_at` AS `updated_at`,`postjob`.`created_at` AS `created_at`,`postjob`.`status` AS `status`,`company`.`logo` AS `logo`,`company`.`company_name` AS `company_name`,`rank`.`rank_name` AS `rank_name`,`job_experience`.`title` AS `job_experience`,`job_degree`.`title` AS `job_degree`,group_concat(distinct `vietnam`.`region_name` separator ',') AS `region_name`,group_concat(distinct `skill_it`.`skill_name` separator ',') AS `skill_name`,`job_group`.`id_group` AS `jobID` from ((((((((((`postjob` left join `company` on(`company`.`user_id` = `postjob`.`id_company`)) left join `job_region` on(`job_region`.`id_job` = `postjob`.`id`)) left join `vietnam` on(`vietnam`.`region_id` = `job_region`.`id_region`)) left join `job_degree` on(`postjob`.`degree` = `job_degree`.`id`)) left join `job_experience` on(`postjob`.`experience` = `job_experience`.`id`)) left join `rank` on(`postjob`.`level` = `rank`.`id`)) left join `job_skill` on(`postjob`.`id` = `job_skill`.`id_job`)) left join `skill_it` on(`skill_it`.`id` = `job_skill`.`id_skill`)) left join `job_group` on(`postjob`.`id` = `job_group`.`id_job`)) left join `cate_job` on(`job_group`.`id_group` = `cate_job`.`jobID`)) group by `postjob`.`id`,`postjob`.`id_company`,`postjob`.`position`,`postjob`.`detail`,`postjob`.`salary_from`,`postjob`.`salary_to`,`postjob`.`showsalary`,`postjob`.`enddate`,`postjob`.`skill`,`postjob`.`skill`,`postjob`.`gender`,`postjob`.`age_from`,`postjob`.`age_to`,`postjob`.`experience`,`postjob`.`level`,`postjob`.`degree`,`postjob`.`updated_at`,`postjob`.`created_at`,`postjob`.`status`,`company`.`logo`,`company`.`company_name`,`rank`.`rank_name`,`job_experience`.`title`,`job_degree`.`title`,`job_group`.`id_group` ;

-- --------------------------------------------------------

--
-- Structure for view `show_myjob`
--
DROP TABLE IF EXISTS `show_myjob`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `show_myjob`  AS  select `postjob`.`id` AS `id`,`postjob`.`id_company` AS `id_company`,`postjob`.`position` AS `position`,`postjob`.`detail` AS `detail`,`postjob`.`salary_unit` AS `salary_unit`,`postjob`.`salary_from` AS `salary_from`,`postjob`.`salary_to` AS `salary_to`,`postjob`.`showsalary` AS `showsalary`,`postjob`.`enddate` AS `enddate`,`postjob`.`skill` AS `skill`,`postjob`.`gender` AS `gender`,`postjob`.`age_from` AS `age_from`,`postjob`.`age_to` AS `age_to`,`postjob`.`experience` AS `experience`,`postjob`.`level` AS `level`,`postjob`.`degree` AS `degree`,`postjob`.`updated_at` AS `updated_at`,`postjob`.`created_at` AS `created_at`,`postjob`.`status` AS `status`,`company`.`logo` AS `logo`,`company`.`company_name` AS `company_name`,`company`.`address` AS `address`,`myjob`.`job_id` AS `job_id`,`myjob`.`user_id` AS `user_id`,`myjob`.`status` AS `trangthai`,`vietnam`.`region_name` AS `region_name` from (((`company` join `postjob`) join `myjob`) join `vietnam`) where `vietnam`.`region_id` = `company`.`address` and `company`.`user_id` = `postjob`.`id_company` and `postjob`.`id` = `myjob`.`job_id` ;

-- --------------------------------------------------------

--
-- Structure for view `show_notification`
--
DROP TABLE IF EXISTS `show_notification`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `show_notification`  AS  select `cv`.`cv_id` AS `cv_id`,`cv`.`user_id` AS `user_id`,`cv`.`full_name` AS `full_name`,`cv`.`birthday` AS `birthday`,`cv`.`address` AS `address`,`cv`.`phone` AS `phone`,`cv`.`images` AS `images`,`cv`.`file` AS `file`,`cv`.`interests` AS `interests`,`cv`.`id_nationality` AS `id_nationality`,`cv`.`id_location` AS `id_location`,`cv`.`maritalstatus` AS `maritalstatus`,`cv`.`gender` AS `gender`,`cv`.`email` AS `email`,`cv`.`show_off` AS `show_off`,`myjob`.`datetime` AS `datetime`,`postjob`.`id` AS `job_id`,`postjob`.`id_company` AS `id_company`,`postjob`.`position` AS `position`,`company`.`id` AS `company_id`,`company`.`company_name` AS `company_name`,`company`.`company_phone` AS `company_phone` from (((((`users` join `cv`) join `myjob`) join `postjob`) join `company`) join `job_announcement`) where `cv`.`user_id` = `users`.`id` and `users`.`id` = `myjob`.`user_id` and `myjob`.`job_id` = `postjob`.`id` and `postjob`.`id_company` = `company`.`user_id` and `job_announcement`.`job_id` = `myjob`.`job_id` and `myjob`.`status` = 1 ;

-- --------------------------------------------------------

--
-- Structure for view `show_recruitment`
--
DROP TABLE IF EXISTS `show_recruitment`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `show_recruitment`  AS  select `cv`.`cv_id` AS `cv_id`,`cv`.`user_id` AS `user_id`,`cv`.`full_name` AS `full_name`,`cv`.`birthday` AS `birthday`,`cv`.`address` AS `address`,`cv`.`phone` AS `phone`,`cv`.`images` AS `images`,`cv`.`file` AS `file`,`cv`.`interests` AS `interests`,`cv`.`id_nationality` AS `id_nationality`,`cv`.`id_location` AS `id_location`,`cv`.`maritalstatus` AS `maritalstatus`,`cv`.`gender` AS `gender`,`cv`.`email` AS `email`,`cv`.`show_off` AS `show_off`,`myjob`.`datetime` AS `datetime`,`postjob`.`id` AS `job_id`,`postjob`.`id_company` AS `id_company`,`postjob`.`position` AS `position`,`company`.`id` AS `company_id`,`company`.`company_name` AS `company_name`,`company`.`company_phone` AS `company_phone` from ((((`users` join `cv`) join `myjob`) join `postjob`) join `company`) where `cv`.`user_id` = `users`.`id` and `users`.`id` = `myjob`.`user_id` and `myjob`.`job_id` = `postjob`.`id` and `postjob`.`id_company` = `company`.`user_id` and `myjob`.`status` = 1 ;

-- --------------------------------------------------------

--
-- Structure for view `top_company`
--
DROP TABLE IF EXISTS `top_company`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `top_company`  AS  select `company`.`logo` AS `logo`,`company`.`company_name` AS `company_name`,`company`.`user_id` AS `user_id`,count(`postjob`.`id_company`) AS `number` from ((`company` left join `postjob` on(`company`.`user_id` = `postjob`.`id_company`)) left join `vietnam` on(`vietnam`.`region_id` = `company`.`address`)) group by `company`.`logo`,`company`.`company_name`,`company`.`user_id` ;

-- --------------------------------------------------------

--
-- Structure for view `view_careinfo`
--
DROP TABLE IF EXISTS `view_careinfo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_careinfo`  AS  select `careerinformation`.`id` AS `id`,`careerinformation`.`cv_id` AS `cv_id`,`careerinformation`.`resumetitle` AS `resumetitle`,`careerinformation`.`salarykind` AS `salarykind`,`careerinformation`.`position_want` AS `position_want`,`careerinformation`.`location_id` AS `location_id`,`careerinformation`.`fulltime` AS `fulltime`,`careerinformation`.`parttime` AS `parttime`,`careerinformation`.`freelancer` AS `freelancer`,`careerinformation`.`internship` AS `internship`,`careerinformation`.`salaryfrom` AS `salaryfrom`,`careerinformation`.`salaryto` AS `salaryto`,`vietnam`.`region_name` AS `region_name` from (`careerinformation` join `vietnam`) where `careerinformation`.`location_id` = `vietnam`.`region_id` ;

-- --------------------------------------------------------

--
-- Structure for view `view_cv`
--
DROP TABLE IF EXISTS `view_cv`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_cv`  AS  select `cv`.`cv_id` AS `cv_id`,`cv`.`user_id` AS `user_id`,`cv`.`full_name` AS `full_name`,`cv`.`birthday` AS `birthday`,`cv`.`address` AS `address`,`cv`.`phone` AS `phone`,`cv`.`images` AS `images`,`cv`.`file` AS `file`,`cv`.`interests` AS `interests`,`cv`.`id_nationality` AS `id_nationality`,`cv`.`id_location` AS `id_location`,`cv`.`maritalstatus` AS `maritalstatus`,`cv`.`gender` AS `gender`,`cv`.`email` AS `email`,`vietnam`.`region_name` AS `region_name`,`national`.`nation_name` AS `nation_name` from ((`cv` join `vietnam`) join `national`) where `cv`.`id_location` = `vietnam`.`region_id` and `national`.`nation_id` = `cv`.`id_nationality` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `benefit`
--
ALTER TABLE `benefit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `benefit_job`
--
ALTER TABLE `benefit_job`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `careerinformation`
--
ALTER TABLE `careerinformation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `careerobjective`
--
ALTER TABLE `careerobjective`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cate_job`
--
ALTER TABLE `cate_job`
  ADD PRIMARY KEY (`jobID`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_view`
--
ALTER TABLE `company_view`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cv`
--
ALTER TABLE `cv`
  ADD PRIMARY KEY (`cv_id`);

--
-- Indexes for table `doccategory`
--
ALTER TABLE `doccategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `document` ADD FULLTEXT KEY `docname` (`docname`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experience`
--
ALTER TABLE `experience`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_announcement`
--
ALTER TABLE `job_announcement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_degree`
--
ALTER TABLE `job_degree`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_experience`
--
ALTER TABLE `job_experience`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_group`
--
ALTER TABLE `job_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_region`
--
ALTER TABLE `job_region`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_skill`
--
ALTER TABLE `job_skill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_template`
--
ALTER TABLE `job_template`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language_job`
--
ALTER TABLE `language_job`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `myjob`
--
ALTER TABLE `myjob`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `datetime` (`id`);

--
-- Indexes for table `national`
--
ALTER TABLE `national`
  ADD PRIMARY KEY (`nation_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `postjob`
--
ALTER TABLE `postjob`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `previewimage`
--
ALTER TABLE `previewimage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rank`
--
ALTER TABLE `rank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reference`
--
ALTER TABLE `reference`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skill`
--
ALTER TABLE `skill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skill_it`
--
ALTER TABLE `skill_it`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_users`
--
ALTER TABLE `social_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sourcecode`
--
ALTER TABLE `sourcecode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sources`
--
ALTER TABLE `sources`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `submit_job`
--
ALTER TABLE `submit_job`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `template_cv`
--
ALTER TABLE `template_cv`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `typeofjob_job`
--
ALTER TABLE `typeofjob_job`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `verifyemail`
--
ALTER TABLE `verifyemail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vietnam`
--
ALTER TABLE `vietnam`
  ADD PRIMARY KEY (`region_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `benefit`
--
ALTER TABLE `benefit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `benefit_job`
--
ALTER TABLE `benefit_job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `careerinformation`
--
ALTER TABLE `careerinformation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `careerobjective`
--
ALTER TABLE `careerobjective`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `cate_job`
--
ALTER TABLE `cate_job`
  MODIFY `jobID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `company_view`
--
ALTER TABLE `company_view`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `cv`
--
ALTER TABLE `cv`
  MODIFY `cv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `doccategory`
--
ALTER TABLE `doccategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `document`
--
ALTER TABLE `document`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `email`
--
ALTER TABLE `email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `experience`
--
ALTER TABLE `experience`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `job_announcement`
--
ALTER TABLE `job_announcement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `job_degree`
--
ALTER TABLE `job_degree`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `job_experience`
--
ALTER TABLE `job_experience`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `job_group`
--
ALTER TABLE `job_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT for table `job_region`
--
ALTER TABLE `job_region`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `job_skill`
--
ALTER TABLE `job_skill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `job_template`
--
ALTER TABLE `job_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `language_job`
--
ALTER TABLE `language_job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `myjob`
--
ALTER TABLE `myjob`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `postjob`
--
ALTER TABLE `postjob`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `rank`
--
ALTER TABLE `rank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `reference`
--
ALTER TABLE `reference`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `skill`
--
ALTER TABLE `skill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `skill_it`
--
ALTER TABLE `skill_it`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `template_cv`
--
ALTER TABLE `template_cv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `typeofjob_job`
--
ALTER TABLE `typeofjob_job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=305;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
