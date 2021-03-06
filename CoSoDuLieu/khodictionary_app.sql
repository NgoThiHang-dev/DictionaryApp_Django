-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2021 at 03:40 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `khodictionary_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add dictionary', 7, 'add_dictionary'),
(26, 'Can change dictionary', 7, 'change_dictionary'),
(27, 'Can delete dictionary', 7, 'delete_dictionary'),
(28, 'Can view dictionary', 7, 'view_dictionary'),
(29, 'Can add course', 8, 'add_course'),
(30, 'Can change course', 8, 'change_course'),
(31, 'Can delete course', 8, 'delete_course'),
(32, 'Can view course', 8, 'view_course'),
(33, 'Can add chep bai_ client', 9, 'add_chepbai_client'),
(34, 'Can change chep bai_ client', 9, 'change_chepbai_client'),
(35, 'Can delete chep bai_ client', 9, 'delete_chepbai_client'),
(36, 'Can view chep bai_ client', 9, 'view_chepbai_client'),
(37, 'Can add chep bai', 10, 'add_chepbai'),
(38, 'Can change chep bai', 10, 'change_chepbai'),
(39, 'Can delete chep bai', 10, 'delete_chepbai'),
(40, 'Can view chep bai', 10, 'view_chepbai'),
(41, 'Can add hoi va tra loi', 11, 'add_hoivatraloi'),
(42, 'Can change hoi va tra loi', 11, 'change_hoivatraloi'),
(43, 'Can delete hoi va tra loi', 11, 'delete_hoivatraloi'),
(44, 'Can view hoi va tra loi', 11, 'view_hoivatraloi'),
(45, 'Can add dam thoai', 12, 'add_damthoai'),
(46, 'Can change dam thoai', 12, 'change_damthoai'),
(47, 'Can delete dam thoai', 12, 'delete_damthoai'),
(48, 'Can view dam thoai', 12, 'view_damthoai'),
(49, 'Can add viet doan van', 13, 'add_vietdoanvan'),
(50, 'Can change viet doan van', 13, 'change_vietdoanvan'),
(51, 'Can delete viet doan van', 13, 'delete_vietdoanvan'),
(52, 'Can view viet doan van', 13, 'view_vietdoanvan'),
(53, 'Can add tu vung', 14, 'add_tuvung'),
(54, 'Can change tu vung', 14, 'change_tuvung'),
(55, 'Can delete tu vung', 14, 'delete_tuvung'),
(56, 'Can view tu vung', 14, 'view_tuvung'),
(57, 'Can add dat cau', 15, 'add_datcau'),
(58, 'Can change dat cau', 15, 'change_datcau'),
(59, 'Can delete dat cau', 15, 'delete_datcau'),
(60, 'Can view dat cau', 15, 'view_datcau'),
(61, 'Can add cau hoi kiem tra', 16, 'add_cauhoikiemtra'),
(62, 'Can change cau hoi kiem tra', 16, 'change_cauhoikiemtra'),
(63, 'Can delete cau hoi kiem tra', 16, 'delete_cauhoikiemtra'),
(64, 'Can view cau hoi kiem tra', 16, 'view_cauhoikiemtra'),
(65, 'Can add bai kiem tra', 17, 'add_baikiemtra'),
(66, 'Can change bai kiem tra', 17, 'change_baikiemtra'),
(67, 'Can delete bai kiem tra', 17, 'delete_baikiemtra'),
(68, 'Can view bai kiem tra', 17, 'view_baikiemtra'),
(69, 'Can add contact', 18, 'add_contact'),
(70, 'Can change contact', 18, 'change_contact'),
(71, 'Can delete contact', 18, 'delete_contact'),
(72, 'Can view contact', 18, 'view_contact');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$JWg3Z0ITbBmOWeoFgcD1kI$FRIqbgpWnkk5aP1VDnifplI0bDNfEXAtPM+XCf6/qYk=', '2021-12-07 03:42:27.125724', 1, 'HangNgo', '', '', '1710166@dlu.edu.vn', 1, 1, '2021-11-14 12:37:42.207031');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `baikiemtra`
--

CREATE TABLE `baikiemtra` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `baikiemtra`
--

INSERT INTO `baikiemtra` (`id`, `title`, `description`) VALUES
(1, 'B??i ki???m tra b??i h???c s??? 1', 'Ki???m tra t??? v???ng, c???u tr??c b??i h???c s??? 1'),
(2, 'B??i ki???m tra b??i h???c s??? 2', 'Ki???m tra t??? v???ng, c???u tr??c b??i h???c s??? 2'),
(3, 'B??i ki???m tra b??i h???c s??? 3', 'Ki???m tra t??? v???ng, c???u tr??c b??i h???c s??? 3'),
(4, 'B??i ki???m tra b??i h???c s??? 4', 'Ki???m tra t??? v???ng, c???u tr??c b??i h???c s??? 4'),
(5, 'B??i ki???m tra b??i h???c s??? 5', 'Ki???m tra t??? v???ng, c???u tr??c b??i h???c s??? 5'),
(6, 'B??i ki???m tra b??i h???c s??? 6', 'Ki???m tra t??? v???ng, c???u tr??c b??i h???c s??? 6'),
(7, 'B??i ki???m tra b??i h???c s??? 7', 'Ki???m tra t??? v???ng, c???u tr??c b??i h???c s??? 7'),
(8, 'B??i ki???m tra b??i h???c s??? 8', 'Ki???m tra t??? v???ng, c???u tr??c b??i h???c s??? 8');

-- --------------------------------------------------------

--
-- Table structure for table `cauhoikiemtra`
--

CREATE TABLE `cauhoikiemtra` (
  `id` bigint(20) NOT NULL,
  `question` varchar(200) NOT NULL,
  `option1` varchar(100) DEFAULT NULL,
  `option2` varchar(100) DEFAULT NULL,
  `option3` varchar(100) DEFAULT NULL,
  `option4` varchar(100) DEFAULT NULL,
  `trueanswer` varchar(100) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `idbai_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cauhoikiemtra`
--

INSERT INTO `cauhoikiemtra` (`id`, `question`, `option1`, `option2`, `option3`, `option4`, `trueanswer`, `created_at`, `updated_at`, `idbai_id`) VALUES
(1, 'Ngh??a c???a t??? ncau?', 'Ai', 'C??i g??', '??? ????u', 'L??m g??', 'Ai', '2021-12-05 20:01:56.739650', '2021-12-05 20:01:56.740626', 1),
(2, 'Ngh??a c???a t??? Tr??yang?', 'ch??m ch???, si??ng n??ng, c???n c??', 'ng???c ngh???ch', 'th??ng minh', 'nhanh nh???n', 'ch??m ch???, si??ng n??ng, c???n c??', '2021-12-05 20:44:03.479936', '2021-12-06 08:31:42.687882', 3),
(3, '\"??chi K??n??m d???t l??h? t?? gam d???t? \". C??u n??y c?? ngh??a l?? g???', 'Tr??? em l??m vi???c g?? khi c??n l???n?', 'Tr??? em l??m vi???c g?? khi c??n nh????', 'Gia ????nh c?? tr??? nh????', 'Gia ????nh ?????u ???? l???n tu???i?', 'Tr??? em l??m vi???c g?? khi c??n nh????', '2021-12-06 08:33:50.345172', '2021-12-06 08:33:50.345172', 3),
(4, 'T??? sau ????y c?? ?? ngh??a g??? \"Dong k???l\"', 'c???u gi??p', 's??? chia', 'b???o v???', 'gi??p ?????', 'gi??p ?????', '2021-12-06 08:34:52.367788', '2021-12-06 08:34:52.367788', 3);

-- --------------------------------------------------------

--
-- Table structure for table `chepbai_client`
--

CREATE TABLE `chepbai_client` (
  `id` bigint(20) NOT NULL,
  `bainguoidung` varchar(100) DEFAULT NULL,
  `chamdiem` varchar(100) DEFAULT NULL,
  `idchepbai_id` bigint(20) DEFAULT NULL,
  `iduser_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `contact_contact`
--

CREATE TABLE `contact_contact` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(254) NOT NULL,
  `subject` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` longtext DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `title`, `description`, `image`) VALUES
(1, 'YAL BRO?? L??H', 'Gi???i thi???u c??ng vi???c', 'image/bai6_gioithieucongviec.jpg'),
(2, 'J??I N??I K\'BIM', 'D??ng h??? K\'Bim', 'image/bai7_donghokbim.jpg'),
(3, 'K\'BIM M??NG GEH B??R N?? K??N', 'K???Bim ch??? c?? 2 ng?????i con', 'image/8.jpg'),
(4, 'H??U ??M, SU??N CHI', 'Nh?? ??? v?????n c??y', 'image/9.jfif'),
(5, 'YAL J??NAU B??N L??GAR', 'C??u chuy???n x??m l??ng', 'image/10.jpg'),
(6, 'CAU P??A B??N', 'Tr?????ng th??n', 'image/11-tr?????ng-th??n.jpg'),
(7, 'CH??? H???P T??M BRO?? L??H', 'Ni???m vui trong lao ?????ng', 'image/12.jfif'),
(8, 'B??SRAM W??L', 'H???c l???i', 'image/13.jfif'),
(9, 'M??U C??L', 'Th???i ti???t', 'image/14.jpg'),
(10, 'BR?? M?? TR??? TIAH', 'R???ng v?? m??i tr?????ng', 'image/15.jpg'),
(11, 'TAM CHI T??NG G??R BR??', 'Tr???ng c??y g??y r???ng', 'image/16.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `courses_chepbai`
--

CREATE TABLE `courses_chepbai` (
  `id` bigint(20) NOT NULL,
  `tiengkho` longtext DEFAULT NULL,
  `tiengviet` longtext DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `idbai_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courses_chepbai`
--

INSERT INTO `courses_chepbai` (`id`, `tiengkho`, `tiengviet`, `image`, `created_at`, `updated_at`, `idbai_id`) VALUES
(1, 'K\'Bim m??ng geh b??r n?? k??n: K\'Br???m m?? Ka D??p.\r\nNam do, K\'Br???m neh 13 s??nam. Oh b??sram ad?? 8 kl???ng trung h???c c?? s??? t??m s??h. K\'Br???m tr??yang b??sram. T??m kl???ng b??sram, K\'Br???m jak dong k???l g??p b??y??, oh k????? ngan al?? b??ta l??h b??d??h.\r\nOh ??r t???m K\'Br???m l??h Ka D??p. Nam do, Ka D??p neh j??t s??nam. Oh pa mut b??sram ad?? pram kl???ng ti???u h???c t??m b??n. Ka D??p b??sram jak r??lau K\'Br???m, s??m di ti??ng k??n??m b??sram jak. Ka D??p ????s crih r??m, t??nia ch??i, tr??yang l??h bru?? ?????i. Ka D??p tr??yang l??h bru??  h??u, dong k???l m??.', 'K\'Bim ch??? c?? hai ng?????i con:  K\'Br???m v???i Ka D??p.\r\n	N??m nay, K\'Br???m ???? 13 tu???i. Em h???c l???p 8 tr?????ng trung h???c c?? s??? ??? x??. K\'Br???m ch??m ch??? h???c, ??? tr?????ng h???c, K\'Br???m h???c gi???i, gi??p ????? b???n b??, em th??ch l???m t???t c??? c??ng vi???c ??? ngo??i tr???i.\r\n	Em g??i ru???t l?? ka D??p. N??m nay, Ka D??p ???? 10 tu???i. Em m???i v??o h???c l???p 5 tr?????ng ti???u h???c ??? bu??n. Ka D??p h???c gi???i h??n K\'Br???m, th?????ng ???????c khen h???c sinh gi???i. Ka D??p h??t hay, m??a kh??o, ch??m ch??? l??m vi???c ?????i. Ka D??p ch??m ch??? l??m vi???c nh??, gi??p ????? m???./.', 'image/2.jpg', '2021-11-19 01:40:16.767414', '2021-12-06 06:36:21.655962', 3),
(2, 'C', 'D', 'image/post-picture-2-1533185445121303908248.png', '2021-11-19 01:41:28.285469', '2021-12-06 06:36:11.660562', 2);

-- --------------------------------------------------------

--
-- Table structure for table `courses_damthoai`
--

CREATE TABLE `courses_damthoai` (
  `id` bigint(20) NOT NULL,
  `cauhoitiengkho` longtext DEFAULT NULL,
  `cauhoitiengviet` longtext DEFAULT NULL,
  `traloitiengkho` longtext DEFAULT NULL,
  `traloitiengviet` longtext DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `idbai_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courses_damthoai`
--

INSERT INTO `courses_damthoai` (`id`, `cauhoitiengkho`, `cauhoitiengviet`, `traloitiengkho`, `traloitiengviet`, `image`, `created_at`, `updated_at`, `idbai_id`) VALUES
(1, 'Bi geh n????? n?? k??n?', '\'', 'An geh pe n?? k??n', '\'', 'image/3_HFeCbCR.jpg', '2021-12-06 08:06:00.730397', '2021-12-06 08:06:00.730397', 3),
(2, 'K??n d???ng bi b??sram ad??  n??????', '\'', 'Khai b??sram ad?? pram.', '\'', 'image/3_Hxqtqqh.jpg', '2021-12-06 08:12:27.818039', '2021-12-06 08:12:27.818039', 3),
(3, 'Khai b??sram mbe g??l??h?', '\'', 'Khai l??h k??n??m b??sram jak.', '\'', 'image/3_ymxVLrF.jpg', '2021-12-06 08:12:58.846561', '2021-12-06 08:12:58.846561', 3);

-- --------------------------------------------------------

--
-- Table structure for table `courses_datcau`
--

CREATE TABLE `courses_datcau` (
  `id` bigint(20) NOT NULL,
  `tu` varchar(50) DEFAULT NULL,
  `tiengkho` varchar(50) DEFAULT NULL,
  `tiengviet` varchar(50) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `idbai_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courses_datcau`
--

INSERT INTO `courses_datcau` (`id`, `tu`, `tiengkho`, `tiengviet`, `image`, `created_at`, `updated_at`, `idbai_id`) VALUES
(1, 'K??n??m', '??chi K??n??m d???t l??h? t?? gam d???t?', 'Tr??? em l??m vi???c g?? khi c??n nh????', 'image/download_1.jpg', '2021-11-19 03:05:59.210311', '2021-11-19 03:05:59.210311', 3),
(2, 'ad??', 'K\'Br???m nam do b??sram ad?? pham.', 'K\'Br???m n??m nay h???c l???p pham.', 'image/5aba8bc94c7870c64a3d24ed4354f4c9.jpg', '2021-11-19 03:06:50.641205', '2021-11-19 03:06:50.641205', 3),
(3, 'kl???ng', 'K\'Br???m b??sram Kl???ng Trung h???c c?? s??? Tr???n Ph??.', 'K\'Br???m h???c ??? tr?????ng trung h???c c?? s??? Tr???n Ph??.', 'image/17.jpg', '2021-12-06 08:16:29.295877', '2021-12-06 08:16:29.295877', 3),
(4, 'tr??yang', 'T??m h??u khai tr??yang l??h bru?? dong k???l m?? b??p.', '??? nh?? n?? ch??m ch??? l??m vi???c gi??p ????? cha m???.', 'image/post-picture-2-1533185445121303908248_eOpnv7Q.png', '2021-12-06 08:17:45.278200', '2021-12-06 08:17:45.278200', 3),
(5, 'm??ng', '??r b??lau KBim m??ng geh d??l n?? k??n ??r.', 'V??? ch???ng K\'Bim ch??? c?? m???t ?????a con g??i.', 'image/hinh-nen-powerpoint-dep-50.jpg', '2021-12-06 08:19:02.464919', '2021-12-06 08:19:02.464919', 3);

-- --------------------------------------------------------

--
-- Table structure for table `courses_tuvung`
--

CREATE TABLE `courses_tuvung` (
  `id` bigint(20) NOT NULL,
  `tiengkho` varchar(50) DEFAULT NULL,
  `tiengviet` varchar(50) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `phienam` varchar(100) DEFAULT NULL,
  `vidu` varchar(200) DEFAULT NULL,
  `fileaudio` varchar(100) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `idbai_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courses_tuvung`
--

INSERT INTO `courses_tuvung` (`id`, `tiengkho`, `tiengviet`, `image`, `phienam`, `vidu`, `fileaudio`, `created_at`, `updated_at`, `idbai_id`) VALUES
(1, 'L??h l??ng', 'N??ng d??n', 'image/5aba8bc94c7870c64a3d24ed4354f4c9_w3yMOnF.jpg', 'L?? l??ng', 'L??h l??ng A', 'audio/download_SsosF5J.mp3', '2021-11-19 03:25:53.422172', '2021-11-19 03:25:53.422172', 1),
(2, 'P??gru', 'Gi??o vi??n', 'image/6.2.jpg', 'p?? g??? ru', 'P??gru DLU', 'audio/download_1_aZiEcQW.mp3', '2021-12-04 13:48:47.036155', '2021-12-04 13:48:47.036155', 1),
(3, 'Bak s??h', 'B??c s??', 'image/6.3.jfif', 'Ba s??nh', 'Bak s??h Nguy???n V??n A', 'audio/download_u0TktrV.mp3', '2021-12-04 13:50:29.786971', '2021-12-04 13:50:29.786971', 1),
(4, 'H??u', 'Nh??', 'image/6.4.jpg', 'H??u', 'H??u R??ng', 'audio/download_1_Rs6rTl9.mp3', '2021-12-04 13:51:20.449524', '2021-12-04 13:51:20.449524', 1),
(5, 'B??ta l??h b??d??h', 'ho???t ?????ng, c??ng vi???c ??? ngo??i tr???i', 'image/2_QcPXtMK.jpg', 'B??ta l??h b??d??h', 'B??ta l??h b??d??h', 'audio/download_fI8dlS2.mp3', '2021-12-06 06:38:05.337797', '2021-12-06 06:38:05.337797', 3),
(6, 'G??p b??y??', 'b???n b??', 'image/8.1_dF8mfhc.jfif', 'G??p b??y??', 'G??p b??y?? A', 'audio/download_s4H3srD.mp3', '2021-12-06 06:39:38.953397', '2021-12-06 06:39:38.953397', 3),
(7, 'K??n??m', 'tr???', 'image/8.1.jfif', 'K?? n??m', 'K?? n??m A', 'audio/download_T0cBbxe.mp3', '2021-12-06 07:52:23.414570', '2021-12-06 07:52:23.414570', 3),
(8, 'K??n??m b??s??ram', 'h???c sinh', 'image/30.jpg', 'K??n??m b??s??ram', 'K??n??m b??s??ram Nguyen Du', 'audio/download_WvkAhRo.mp3', '2021-12-06 07:54:38.253080', '2021-12-06 07:54:38.253080', 3);

-- --------------------------------------------------------

--
-- Table structure for table `courses_vietdoanvan`
--

CREATE TABLE `courses_vietdoanvan` (
  `id` bigint(20) NOT NULL,
  `tiengkho` longtext DEFAULT NULL,
  `tiengviet` longtext DEFAULT NULL,
  `chude` longtext DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `idbai_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courses_vietdoanvan`
--

INSERT INTO `courses_vietdoanvan` (`id`, `tiengkho`, `tiengviet`, `chude`, `image`, `created_at`, `updated_at`, `idbai_id`) VALUES
(1, 'B??n a?? l??i ??r r??bah h??u gam krung gal k??n ngan, k??n??m t??m b??n o?? khai ??? di l??t b??sram, ??? git crih, t??ng pal l??h bro?? sre, l??h m??r. Ngai do, h??u ???ng cau p??a b??n sap r??ndap sa ch??? g???m b??r n?? k??n in l??t kl???ng ?????i H???c, al?? n?? cau  tus ch??? g???m. T?? do gam krung w?? deh du??t n?? k??n h??u nh?? khat g??boh al?? n?? k??n di l??t b??sram, r??i kis h??u nh?? t??ng guh. L??ng bol t??m b??n ndr???m jat h??u nh?? ??ng cau p??a b??n deh b??h d??l tus b??r n?? con.', 'Th??n t??i tr?????c ????y ngh??o nh?? ai c??ng ????ng con l???m, tr??? con trong th??n nhi???u ????a kh??ng ???????c ??i h???c, kh??ng bi???t ch??? n??n ph???i l??m n????ng l??m r??y. H??m nay, nh?? ??ng tr?????ng th??n t??? ch???c ??n m???ng cho hai ?????a con ??ng ???????c v??o tr?????ng ?????i h???c. M???i ng?????i ?????n ch??c m???ng, l??c n??y ai c??ng bi???t sinh ??t con gia ????nh h???nh ph??c c??c con ???????c h???c h??nh ?????y ?????, kinh t??? gia ????nh ph??t tri???n. B?? con trong th??n ?????u h???c theo gia ????nh ??ng tr?????ng th??n sinh t??? 1 ?????n 2 con.', 'm???i gia ????nh c?? t??? 1 ?????n 2 con', 'image/6.6.jpg', '2021-12-06 08:20:39.542435', '2021-12-06 08:20:39.542435', 3);

-- --------------------------------------------------------

--
-- Table structure for table `courses_whquestion`
--

CREATE TABLE `courses_whquestion` (
  `id` bigint(20) NOT NULL,
  `cauhoitiengkho` longtext DEFAULT NULL,
  `cauhoitiengviet` longtext DEFAULT NULL,
  `traloitiengkho` longtext DEFAULT NULL,
  `traloitiengviet` longtext DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `idbai_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courses_whquestion`
--

INSERT INTO `courses_whquestion` (`id`, `cauhoitiengkho`, `cauhoitiengviet`, `traloitiengkho`, `traloitiengviet`, `image`, `created_at`, `updated_at`, `idbai_id`) VALUES
(1, 'N??m do, K\'Br???m n????? s??nam?', '\'\'', 'Nam do, K\'Br???m neh j??t pe s??nam.', '\'\'', 'image/3_KO836gS.jpg', '2021-12-06 07:58:39.455644', '2021-12-06 07:58:48.850575', 3),
(2, 'K\'Br???m b??sram ad?? l??i?', '\'', 'K\'Br???m b??sram ad?? ph??m.', '\'', 'image/3_i55kEfr.jpg', '2021-12-06 07:59:39.992955', '2021-12-06 07:59:39.992955', 3),
(3, '??cau do', '\' d', '\'  f', 'Ng?????i n??y l?? ai?', 'image/hinh-nen-powerpoint-dep-50_Y4FV8vx.jpg', '2021-12-06 08:24:05.460655', '2021-12-06 08:27:39.480547', 1);

-- --------------------------------------------------------

--
-- Table structure for table `dictionary`
--

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL,
  `tiengkho` varchar(100) DEFAULT NULL,
  `phienamtiengkho` varchar(100) DEFAULT NULL,
  `fileaudiotiengkho` varchar(100) DEFAULT NULL,
  `vidutiengkho` varchar(200) DEFAULT NULL,
  `tiengviet` varchar(100) DEFAULT NULL,
  `phienamtiengviet` varchar(100) DEFAULT NULL,
  `fileaudiotiengviet` varchar(100) DEFAULT NULL,
  `vidutiengviet` varchar(200) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dictionary`
--

INSERT INTO `dictionary` (`id`, `tiengkho`, `phienamtiengkho`, `fileaudiotiengkho`, `vidutiengkho`, `tiengviet`, `phienamtiengviet`, `fileaudiotiengviet`, `vidutiengviet`, `image`, `created_at`, `updated_at`) VALUES
(2, 'L??h l??ng', 'L?? l??ng', 'audio/download_EOj6tj8.mp3', 'L??h l??ng A', 'N??ng d??n', 'n??ng d??n', 'audio/download_1.mp3', 'C??c b??c n??ng d??n ??ang l??m ru???ng', NULL, '2021-11-15 14:07:00.654280', '2021-11-15 14:07:00.654280'),
(3, 'P??gru', 'P?? g??? ru', 'audio/download_eCz3Ehl.mp3', 'P??gru H\'re', 'Gi??o vi??n', 'Gi??o vi??n', 'audio/download_1_VT9L9gs.mp3', 'Gi??o vi??n ?????ng tr??n b???c gi???ng h?????ng d???n b??i cho c??c em h???c sinh', NULL, '2021-11-15 14:09:30.775432', '2021-11-15 14:09:30.775432'),
(4, 'Bak s??h', 'Ba ka s?? h???', 'audio/download_AdeRXvy.mp3', 'Bak s??h ?????i An', 'B??c s??', 'B??c s??', 'audio/download_1_2Pq73wi.mp3', 'B??c s?? ??ang trong ph??ng m???', NULL, '2021-11-15 14:12:03.985153', '2021-11-15 14:12:03.985153'),
(5, 'h??u', 'h??u', 'audio/download_9Cuf6xR.mp3', 'H??u R??ng', 'Nh??', 'Nh??', 'audio/download_1_ddvHAHw.mp3', 'Nh?? l?? n??i b??nh y??n nh???t', NULL, '2021-11-22 08:57:36.921824', '2021-12-06 02:36:07.240022'),
(6, 'l??h s??n??m', 'l??h s??n??m', 'audio/download_vh0uHeQ.mp3', 'Gak l??h s??n??m', 'y', 'y', 'audio/cogang.mp3', 'Ng??nh y', NULL, '2021-12-06 01:15:56.327310', '2021-12-06 02:30:27.575082'),
(7, 'khai', 'khai', 'audio/download_2tOjDxC.mp3', 'Khai k??ldang n??s ngan', 'y', 'y', 'audio/download_dJl7RKO.mp3', 'Y r???t ngoan c???', NULL, '2021-12-06 02:31:16.243772', '2021-12-06 02:31:47.197980'),
(8, 'ndr???m ve', 'n??? d r???m ve', 'audio/download_RGM6ikj.mp3', 'K??n ndr???m ve v??p', 'y h???t', 'y h???t', 'audio/download_y7cTd8v.mp3', 'Con y h???t cha', NULL, '2021-12-06 02:32:53.228891', '2021-12-06 02:32:53.228891'),
(9, 'l??h s??n??m', 'l??h s?? n??m', 'audio/download_k4kMLhB.mp3', 'Vi ??r l??h S??n??m', 'y t??', 'y t??', 'audio/download_0gtROv7.mp3', 'Ch??? y t??', NULL, '2021-12-06 02:33:59.128206', '2021-12-06 02:33:59.128206'),
(10, 'vru?? s??n??m', 'vru ?? s??n??m', 'audio/download_i2KbqMB.mp3', 'Anili vru?? s??n??m', 'y t???', 'y t???', 'audio/download_GK95u4K.mp3', 'Ph??ng y t???', NULL, '2021-12-06 02:35:18.619247', '2021-12-06 02:35:18.619247'),
(11, 'vl??t', 'v??? l??t', 'audio/download_gfsEZSb.mp3', 'Nggui vl??t', '???', '???', 'audio/download_KOxLRvx.mp3', 'Ng???i ???', NULL, '2021-12-06 02:37:08.712054', '2021-12-06 02:37:08.712054'),
(12, 'ih l??-ah', 'ih l??-ah', 'audio/download_w5PpKU4.mp3', 'T??ng ih l??-ah', '??? ???ch', '??? ???ch', 'audio/download_uecr138.mp3', 'Khi??ng ??? ???ch', NULL, '2021-12-06 02:38:22.868203', '2021-12-06 02:38:22.868203'),
(13, 'K??l????ng', 'K??l ????nh', 'audio/download_fmohlvO.mp3', 'K??l????ng i??h geh g??nuar', '???', '???', 'audio/download_3g16uDK.mp3', '??? th??? c?? c????ng v???', NULL, '2021-12-06 02:40:17.285875', '2021-12-06 02:40:17.285875'),
(14, 'nj???c', 'n??? j???c', 'audio/download_IN2vF8H.mp3', 'nj???c r??ndeh', 'x??c', 'x??c', 'audio/download_2TqEPfE.mp3', 'x??c ?? t??', NULL, '2021-12-06 02:42:06.365016', '2021-12-06 02:42:06.365998'),
(15, 's??l??', 's?? l??', 'audio/download_Hnzzb70.mp3', 's??l?? n???ha b??i', 'x??c', 'x??c', 'audio/download_wfKJ6cd.mp3', 'x??c b??i', NULL, '2021-12-06 02:43:04.194236', '2021-12-06 02:43:04.194236'),
(16, 'l??', 'l??', 'audio/download_l1zVVy0.mp3', 'l?? t??', 'x??e', 'x??e', 'audio/download_1Yn634l.mp3', 'x??e tay', NULL, '2021-12-06 02:43:51.187898', '2021-12-06 02:43:51.187898');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-11-14 12:38:30.565669', '1', 'Course object (1)', 1, '[{\"added\": {}}]', 8, 1),
(2, '2021-11-14 12:40:22.527913', '1', 'Dictionary object (1)', 1, '[{\"added\": {}}]', 7, 1),
(3, '2021-11-15 08:20:55.107507', '2', '2', 1, '[{\"added\": {}}]', 8, 1),
(4, '2021-11-15 13:36:13.589794', '1', 'B??i 6: YAL BRO?? L??H', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Description\", \"Image\"]}}]', 8, 1),
(5, '2021-11-15 13:37:02.804735', '2', 'B??I 7: J??I N??I K\'BIM', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Description\", \"Image\"]}}]', 8, 1),
(6, '2021-11-15 13:45:09.732509', '3', 'B??I 8: K\'BIM M??NG GEH B??R N?? K??N', 1, '[{\"added\": {}}]', 8, 1),
(7, '2021-11-15 13:49:12.021348', '4', 'B??I 9:  H??U ??M, SU??N CHI', 1, '[{\"added\": {}}]', 8, 1),
(8, '2021-11-15 13:49:57.780590', '5', 'B??I 10: YAL J??NAU B??N L??GAR', 1, '[{\"added\": {}}]', 8, 1),
(9, '2021-11-15 13:52:38.681964', '6', 'B??I 11: CAU P??A B??N', 1, '[{\"added\": {}}]', 8, 1),
(10, '2021-11-15 13:53:31.648498', '7', 'B??I 12: CH??? H???P T??M BRO?? L??H', 1, '[{\"added\": {}}]', 8, 1),
(11, '2021-11-15 13:55:01.357511', '8', 'B??I 13: B??SRAM W??L', 1, '[{\"added\": {}}]', 8, 1),
(12, '2021-11-15 13:55:40.898069', '9', 'B??I 14: M??U C??L', 1, '[{\"added\": {}}]', 8, 1),
(13, '2021-11-15 13:56:08.123507', '10', 'B??I 15: BR?? M?? TR??? TIAH', 1, '[{\"added\": {}}]', 8, 1),
(14, '2021-11-15 13:57:04.881008', '11', 'B??I 16: TAM CHI T??NG G??R BR??', 1, '[{\"added\": {}}]', 8, 1),
(15, '2021-11-15 13:58:52.017732', '1', 'YAL BRO?? L??H', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 8, 1),
(16, '2021-11-15 13:58:57.784624', '2', 'J??I N??I K\'BIM', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 8, 1),
(17, '2021-11-15 13:59:03.298612', '3', 'K\'BIM M??NG GEH B??R N?? K??N', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 8, 1),
(18, '2021-11-15 13:59:08.268830', '4', 'H??U ??M, SU??N CHI', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 8, 1),
(19, '2021-11-15 13:59:15.990749', '5', 'YAL J??NAU B??N L??GAR', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 8, 1),
(20, '2021-11-15 13:59:28.919214', '6', 'CAU P??A B??N', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 8, 1),
(21, '2021-11-15 13:59:48.842373', '7', 'CH??? H???P T??M BRO?? L??H', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 8, 1),
(22, '2021-11-15 13:59:54.705607', '8', 'B??SRAM W??L', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 8, 1),
(23, '2021-11-15 14:00:00.200809', '9', 'M??U C??L', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 8, 1),
(24, '2021-11-15 14:00:05.070076', '10', 'BR?? M?? TR??? TIAH', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 8, 1),
(25, '2021-11-15 14:00:09.660611', '11', 'TAM CHI T??NG G??R BR??', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 8, 1),
(26, '2021-11-15 14:02:23.765782', '1', 'Dictionary object (1)', 3, '', 7, 1),
(27, '2021-11-15 14:07:00.656232', '2', 'Dictionary object (2)', 1, '[{\"added\": {}}]', 7, 1),
(28, '2021-11-15 14:09:30.777382', '3', 'Dictionary object (3)', 1, '[{\"added\": {}}]', 7, 1),
(29, '2021-11-15 14:12:03.986128', '4', 'Dictionary object (4)', 1, '[{\"added\": {}}]', 7, 1),
(30, '2021-11-19 01:40:16.769365', '1', 'ChepBai object (1)', 1, '[{\"added\": {}}]', 10, 1),
(31, '2021-11-19 01:41:28.286445', '2', 'ChepBai object (2)', 1, '[{\"added\": {}}]', 10, 1),
(32, '2021-11-19 03:05:59.212262', '1', 'DatCau object (1)', 1, '[{\"added\": {}}]', 15, 1),
(33, '2021-11-19 03:06:50.642181', '2', 'DatCau object (2)', 1, '[{\"added\": {}}]', 15, 1),
(34, '2021-11-19 03:25:53.424124', '1', 'TuVung object (1)', 1, '[{\"added\": {}}]', 14, 1),
(35, '2021-11-22 08:57:36.932560', '5', 'Dictionary object (5)', 1, '[{\"added\": {}}]', 7, 1),
(36, '2021-12-04 10:55:06.467003', '1', 'BaiKiemTra object (1)', 1, '[{\"added\": {}}]', 17, 1),
(37, '2021-12-04 10:55:36.968069', '2', 'BaiKiemTra object (2)', 1, '[{\"added\": {}}]', 17, 1),
(38, '2021-12-04 10:56:02.171505', '3', 'BaiKiemTra object (3)', 1, '[{\"added\": {}}]', 17, 1),
(39, '2021-12-04 10:56:29.381097', '4', 'BaiKiemTra object (4)', 1, '[{\"added\": {}}]', 17, 1),
(40, '2021-12-04 10:57:05.278738', '5', 'BaiKiemTra object (5)', 1, '[{\"added\": {}}]', 17, 1),
(41, '2021-12-04 10:57:21.747422', '6', 'BaiKiemTra object (6)', 1, '[{\"added\": {}}]', 17, 1),
(42, '2021-12-04 10:57:35.640757', '7', 'BaiKiemTra object (7)', 1, '[{\"added\": {}}]', 17, 1),
(43, '2021-12-04 10:57:48.172164', '8', 'BaiKiemTra object (8)', 1, '[{\"added\": {}}]', 17, 1),
(44, '2021-12-04 10:59:07.915251', '1', 'CauHoiKiemTra object (1)', 1, '[{\"added\": {}}]', 16, 1),
(45, '2021-12-04 13:48:47.039119', '2', 'TuVung object (2)', 1, '[{\"added\": {}}]', 14, 1),
(46, '2021-12-04 13:50:29.788925', '3', 'TuVung object (3)', 1, '[{\"added\": {}}]', 14, 1),
(47, '2021-12-04 13:51:20.450502', '4', 'TuVung object (4)', 1, '[{\"added\": {}}]', 14, 1),
(48, '2021-12-04 14:05:52.654728', '2', 'CauHoiKiemTra object (2)', 1, '[{\"added\": {}}]', 16, 1),
(49, '2021-12-05 20:01:56.741623', '1', 'CauHoiKiemTra object (1)', 1, '[{\"added\": {}}]', 16, 1),
(50, '2021-12-05 20:44:03.481859', '2', 'CauHoiKiemTra object (2)', 1, '[{\"added\": {}}]', 16, 1),
(51, '2021-12-06 01:15:56.330237', '6', 'Dictionary object (6)', 1, '[{\"added\": {}}]', 7, 1),
(52, '2021-12-06 01:17:03.310061', '6', 'Dictionary object (6)', 2, '[{\"changed\": {\"fields\": [\"Tiengkho\", \"Tiengviet\"]}}]', 7, 1),
(53, '2021-12-06 01:47:35.639054', '6', 'Dictionary object (6)', 2, '[]', 7, 1),
(54, '2021-12-06 02:30:27.577039', '6', 'Dictionary object (6)', 2, '[{\"changed\": {\"fields\": [\"Tiengkho\", \"Phienamtiengkho\", \"Fileaudiotiengkho\", \"Vidutiengkho\", \"Tiengviet\", \"Phienamtiengviet\", \"Vidutiengviet\"]}}]', 7, 1),
(55, '2021-12-06 02:31:16.246700', '7', 'Dictionary object (7)', 1, '[{\"added\": {}}]', 7, 1),
(56, '2021-12-06 02:31:47.199899', '7', 'Dictionary object (7)', 2, '[{\"changed\": {\"fields\": [\"Vidutiengviet\"]}}]', 7, 1),
(57, '2021-12-06 02:32:53.230842', '8', 'Dictionary object (8)', 1, '[{\"added\": {}}]', 7, 1),
(58, '2021-12-06 02:33:59.129183', '9', 'Dictionary object (9)', 1, '[{\"added\": {}}]', 7, 1),
(59, '2021-12-06 02:35:18.621198', '10', 'Dictionary object (10)', 1, '[{\"added\": {}}]', 7, 1),
(60, '2021-12-06 02:36:07.241974', '5', 'Dictionary object (5)', 2, '[{\"changed\": {\"fields\": [\"Vidutiengkho\", \"Tiengviet\", \"Phienamtiengviet\", \"Vidutiengviet\"]}}]', 7, 1),
(61, '2021-12-06 02:37:08.714006', '11', 'Dictionary object (11)', 1, '[{\"added\": {}}]', 7, 1),
(62, '2021-12-06 02:38:22.870158', '12', 'Dictionary object (12)', 1, '[{\"added\": {}}]', 7, 1),
(63, '2021-12-06 02:40:17.287808', '13', 'Dictionary object (13)', 1, '[{\"added\": {}}]', 7, 1),
(64, '2021-12-06 02:42:06.366967', '14', 'Dictionary object (14)', 1, '[{\"added\": {}}]', 7, 1),
(65, '2021-12-06 02:43:04.195212', '15', 'Dictionary object (15)', 1, '[{\"added\": {}}]', 7, 1),
(66, '2021-12-06 02:43:51.189850', '16', 'Dictionary object (16)', 1, '[{\"added\": {}}]', 7, 1),
(67, '2021-12-06 06:35:40.902197', '1', 'ChepBai object (1)', 2, '[{\"changed\": {\"fields\": [\"Tiengkho\", \"Tiengviet\", \"Idbai\"]}}]', 10, 1),
(68, '2021-12-06 06:36:11.662514', '2', 'ChepBai object (2)', 2, '[]', 10, 1),
(69, '2021-12-06 06:36:21.658054', '1', 'ChepBai object (1)', 2, '[{\"changed\": {\"fields\": [\"Tiengviet\"]}}]', 10, 1),
(70, '2021-12-06 06:38:05.338774', '5', 'TuVung object (5)', 1, '[{\"added\": {}}]', 14, 1),
(71, '2021-12-06 06:39:38.954373', '6', 'TuVung object (6)', 1, '[{\"added\": {}}]', 14, 1),
(72, '2021-12-06 07:52:23.416521', '7', 'TuVung object (7)', 1, '[{\"added\": {}}]', 14, 1),
(73, '2021-12-06 07:54:38.254057', '8', 'TuVung object (8)', 1, '[{\"added\": {}}]', 14, 1),
(74, '2021-12-06 07:58:39.456618', '1', 'HoiVaTraLoi object (1)', 1, '[{\"added\": {}}]', 11, 1),
(75, '2021-12-06 07:58:48.851550', '1', 'HoiVaTraLoi object (1)', 2, '[]', 11, 1),
(76, '2021-12-06 07:59:39.994907', '2', 'HoiVaTraLoi object (2)', 1, '[{\"added\": {}}]', 11, 1),
(77, '2021-12-06 08:06:00.731374', '1', 'DamThoai object (1)', 1, '[{\"added\": {}}]', 12, 1),
(78, '2021-12-06 08:12:27.819956', '2', 'DamThoai object (2)', 1, '[{\"added\": {}}]', 12, 1),
(79, '2021-12-06 08:12:58.848513', '3', 'DamThoai object (3)', 1, '[{\"added\": {}}]', 12, 1),
(80, '2021-12-06 08:16:29.297831', '3', 'DatCau object (3)', 1, '[{\"added\": {}}]', 15, 1),
(81, '2021-12-06 08:17:45.279170', '4', 'DatCau object (4)', 1, '[{\"added\": {}}]', 15, 1),
(82, '2021-12-06 08:19:02.465895', '5', 'DatCau object (5)', 1, '[{\"added\": {}}]', 15, 1),
(83, '2021-12-06 08:20:39.544385', '1', 'VietDoanVan object (1)', 1, '[{\"added\": {}}]', 13, 1),
(84, '2021-12-06 08:24:05.461631', '3', 'HoiVaTraLoi object (3)', 1, '[{\"added\": {}}]', 11, 1),
(85, '2021-12-06 08:27:39.481524', '3', 'HoiVaTraLoi object (3)', 2, '[{\"changed\": {\"fields\": [\"Cauhoitiengviet\", \"Traloitiengkho\"]}}]', 11, 1),
(86, '2021-12-06 08:31:22.884637', '2', 'CauHoiKiemTra object (2)', 2, '[{\"changed\": {\"fields\": [\"Question\", \"Option1\", \"Option2\", \"Option3\", \"Option4\", \"Trueanswer\", \"Idbai\"]}}]', 16, 1),
(87, '2021-12-06 08:31:35.036867', '2', 'CauHoiKiemTra object (2)', 2, '[{\"changed\": {\"fields\": [\"Idbai\"]}}]', 16, 1),
(88, '2021-12-06 08:31:42.689802', '2', 'CauHoiKiemTra object (2)', 2, '[{\"changed\": {\"fields\": [\"Idbai\"]}}]', 16, 1),
(89, '2021-12-06 08:33:50.346293', '3', 'CauHoiKiemTra object (3)', 1, '[{\"added\": {}}]', 16, 1),
(90, '2021-12-06 08:34:52.368763', '4', 'CauHoiKiemTra object (4)', 1, '[{\"added\": {}}]', 16, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(18, 'contact', 'contact'),
(5, 'contenttypes', 'contenttype'),
(10, 'courses', 'chepbai'),
(9, 'courses', 'chepbai_client'),
(8, 'courses', 'course'),
(12, 'courses', 'damthoai'),
(15, 'courses', 'datcau'),
(11, 'courses', 'hoivatraloi'),
(14, 'courses', 'tuvung'),
(13, 'courses', 'vietdoanvan'),
(7, 'dictionary', 'dictionary'),
(17, 'exam', 'baikiemtra'),
(16, 'exam', 'cauhoikiemtra'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-11-14 12:36:27.668458'),
(2, 'auth', '0001_initial', '2021-11-14 12:36:28.281352'),
(3, 'admin', '0001_initial', '2021-11-14 12:36:28.420920'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-11-14 12:36:28.436538'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-11-14 12:36:28.452153'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-11-14 12:36:28.531208'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-11-14 12:36:28.581959'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-11-14 12:36:28.606360'),
(9, 'auth', '0004_alter_user_username_opts', '2021-11-14 12:36:28.620026'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-11-14 12:36:28.674680'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-11-14 12:36:28.678583'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-11-14 12:36:28.693227'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-11-14 12:36:28.721528'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-11-14 12:36:28.748856'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-11-14 12:36:28.772279'),
(16, 'auth', '0011_update_proxy_permissions', '2021-11-14 12:36:28.785944'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-11-14 12:36:28.810343'),
(18, 'courses', '0001_initial', '2021-11-14 12:36:28.849385'),
(19, 'dictionary', '0001_initial', '2021-11-14 12:36:28.894281'),
(20, 'sessions', '0001_initial', '2021-11-14 12:36:28.946985'),
(21, 'courses', '0002_chepbai_chepbai_client', '2021-11-17 02:08:35.321752'),
(22, 'courses', '0003_hoivatraloi', '2021-11-19 02:03:49.344862'),
(23, 'courses', '0004_damthoai', '2021-11-19 02:13:07.187739'),
(24, 'courses', '0005_vietdoanvan', '2021-11-19 02:16:18.995714'),
(25, 'courses', '0006_tuvung', '2021-11-19 02:23:12.853440'),
(26, 'courses', '0007_auto_20211119_0936', '2021-11-19 02:36:48.483627'),
(27, 'exam', '0001_initial', '2021-12-04 10:47:18.303282'),
(28, 'exam', '0002_auto_20211204_2105', '2021-12-04 14:05:17.549694'),
(29, 'contact', '0001_initial', '2021-12-05 19:58:21.300274'),
(30, 'dictionary', '0002_auto_20211206_0851', '2021-12-06 01:51:43.830730'),
(31, 'dictionary', '0003_auto_20211206_0852', '2021-12-06 01:52:26.896419'),
(32, 'dictionary', '0004_auto_20211207_1044', '2021-12-07 03:44:47.826976');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('2upk74tyvizvc6tt81d998sgzl2k7k90', '.eJxVjDsOwjAQBe_iGlkOjn-U9DmDtetd4wCypTipEHeHSCmgfTPzXiLCtpa4dV7iTOIiBnH63RDSg-sO6A711mRqdV1mlLsiD9rl1Iif18P9OyjQy7d2YIMHfR5tAnaKnfGkRsycbXJBAVJylEBlg-RV0B4ZQ-DBUjZGKyPeH_4bOKI:1muA5F:wpmFzUnu7x3hlCkgG3yx0344lby6Bb4R6CryVhVjbWo', '2021-12-20 09:14:53.283435'),
('33xhcrw6v5af3k23vk98f1h6nz21sn51', '.eJxVjDsOwjAQBe_iGlkOjn-U9DmDtetd4wCypTipEHeHSCmgfTPzXiLCtpa4dV7iTOIiBnH63RDSg-sO6A711mRqdV1mlLsiD9rl1Iif18P9OyjQy7d2YIMHfR5tAnaKnfGkRsycbXJBAVJylEBlg-RV0B4ZQ-DBUjZGKyPeH_4bOKI:1mmElj:bg3wrEY4MrLC37hnQB2cM40DRuBmmBwBiQwjjIPrlLI', '2021-11-28 12:37:59.669662'),
('688soqjmwpzsxjyjlfzc0xxg82c95txp', '.eJxVjDsOwjAQBe_iGlkOjn-U9DmDtetd4wCypTipEHeHSCmgfTPzXiLCtpa4dV7iTOIiBnH63RDSg-sO6A711mRqdV1mlLsiD9rl1Iif18P9OyjQy7d2YIMHfR5tAnaKnfGkRsycbXJBAVJylEBlg-RV0B4ZQ-DBUjZGKyPeH_4bOKI:1mu6SD:H6rcEhylvRczSw3YHFOMqJubdm0WZg1L_IK7NFxf3ow', '2021-12-20 05:22:21.711445'),
('6cxyxbw1eujkke4zcn5ph28j5fq78dbs', '.eJxVjDsOwjAQBe_iGlkOjn-U9DmDtetd4wCypTipEHeHSCmgfTPzXiLCtpa4dV7iTOIiBnH63RDSg-sO6A711mRqdV1mlLsiD9rl1Iif18P9OyjQy7d2YIMHfR5tAnaKnfGkRsycbXJBAVJylEBlg-RV0B4ZQ-DBUjZGKyPeH_4bOKI:1mmbZg:ANNz676Vf4fYTQj_68SbbWaNpq1mzreW04yFLGte178', '2021-11-29 12:59:04.687172'),
('apsi8isxt3lfyl35y79i75q5368kqd1w', '.eJxVjDsOwjAQBe_iGlkOjn-U9DmDtetd4wCypTipEHeHSCmgfTPzXiLCtpa4dV7iTOIiBnH63RDSg-sO6A711mRqdV1mlLsiD9rl1Iif18P9OyjQy7d2YIMHfR5tAnaKnfGkRsycbXJBAVJylEBlg-RV0B4ZQ-DBUjZGKyPeH_4bOKI:1muRN5:vs2ZM9kFUk89h3Cn-PsiczkXtntNP8UVqiDhfFdLODs', '2021-12-21 03:42:27.129629'),
('h32y75ob432khl3u9hcjp1hluvowdl08', '.eJxVjDsOwjAQBe_iGlkOjn-U9DmDtetd4wCypTipEHeHSCmgfTPzXiLCtpa4dV7iTOIiBnH63RDSg-sO6A711mRqdV1mlLsiD9rl1Iif18P9OyjQy7d2YIMHfR5tAnaKnfGkRsycbXJBAVJylEBlg-RV0B4ZQ-DBUjZGKyPeH_4bOKI:1mu2OY:UND1c47mTT4uDtSDd3dfh3QCU3vhKkNlQiVM5wFzUNM', '2021-12-20 01:02:18.365058'),
('h43oyabjmf2uyt55cqemi26z1ytky604', '.eJxVjDsOwjAQBe_iGlkOjn-U9DmDtetd4wCypTipEHeHSCmgfTPzXiLCtpa4dV7iTOIiBnH63RDSg-sO6A711mRqdV1mlLsiD9rl1Iif18P9OyjQy7d2YIMHfR5tAnaKnfGkRsycbXJBAVJylEBlg-RV0B4ZQ-DBUjZGKyPeH_4bOKI:1mu3kj:ls-A03v7DwgRxESsaMtws9AtWLhgRmq7UsZ_E0_GJbU', '2021-12-20 02:29:17.332185'),
('iwjigh2d96t85r9qf3pxvwmc019xgdpy', '.eJxVjDsOwjAQBe_iGlkOjn-U9DmDtetd4wCypTipEHeHSCmgfTPzXiLCtpa4dV7iTOIiBnH63RDSg-sO6A711mRqdV1mlLsiD9rl1Iif18P9OyjQy7d2YIMHfR5tAnaKnfGkRsycbXJBAVJylEBlg-RV0B4ZQ-DBUjZGKyPeH_4bOKI:1mtyMK:XyKFHMdWN0lYYUNVutQjGj8g4O6Gpa-PcVv8ZlhN3Ew', '2021-12-19 20:43:44.762733'),
('n8k58wtlf6qpqcg645ickx4jvt4fug5g', '.eJxVjDsOwjAQBe_iGlkOjn-U9DmDtetd4wCypTipEHeHSCmgfTPzXiLCtpa4dV7iTOIiBnH63RDSg-sO6A711mRqdV1mlLsiD9rl1Iif18P9OyjQy7d2YIMHfR5tAnaKnfGkRsycbXJBAVJylEBlg-RV0B4ZQ-DBUjZGKyPeH_4bOKI:1mtSfo:5mTwTN3vEyCnySSe2z6_YFQzPVelYF3xZNhwaZMgtac', '2021-12-18 10:53:44.549152'),
('t1m0lsd7j5sqv0eyaa5z71xw5v23f8a8', '.eJxVjDsOwjAQBe_iGlkOjn-U9DmDtetd4wCypTipEHeHSCmgfTPzXiLCtpa4dV7iTOIiBnH63RDSg-sO6A711mRqdV1mlLsiD9rl1Iif18P9OyjQy7d2YIMHfR5tAnaKnfGkRsycbXJBAVJylEBlg-RV0B4ZQ-DBUjZGKyPeH_4bOKI:1mtxgU:uYifJKcth6u9-F0TG6WpBbB84s7rTT-ZTLbwlqc_fFs', '2021-12-19 20:00:30.482491'),
('ukoyoe3xcgiuv549loz6zmyd7vydc1zs', '.eJxVjDsOwjAQBe_iGlkOjn-U9DmDtetd4wCypTipEHeHSCmgfTPzXiLCtpa4dV7iTOIiBnH63RDSg-sO6A711mRqdV1mlLsiD9rl1Iif18P9OyjQy7d2YIMHfR5tAnaKnfGkRsycbXJBAVJylEBlg-RV0B4ZQ-DBUjZGKyPeH_4bOKI:1mu7Z5:6hHQJ7rH6J-zaCfe-ekyg6N2ZS-NDKbglzXp1QvGSCU', '2021-12-20 06:33:31.778987'),
('yp43oz1rewi78no4eploa2dp9a4ijzuf', '.eJxVjDsOwjAQBe_iGlkOjn-U9DmDtetd4wCypTipEHeHSCmgfTPzXiLCtpa4dV7iTOIiBnH63RDSg-sO6A711mRqdV1mlLsiD9rl1Iif18P9OyjQy7d2YIMHfR5tAnaKnfGkRsycbXJBAVJylEBlg-RV0B4ZQ-DBUjZGKyPeH_4bOKI:1mnsrG:1mdxm4yMZ5pjWSvjYOZ_07gfmiY0mEoFf0REiaTBET4', '2021-12-03 01:38:30.294864');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `baikiemtra`
--
ALTER TABLE `baikiemtra`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cauhoikiemtra`
--
ALTER TABLE `cauhoikiemtra`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cauhoikiemtra_idbai_id_9efaa9e3_fk_baikiemtra_id` (`idbai_id`);

--
-- Indexes for table `chepbai_client`
--
ALTER TABLE `chepbai_client`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chepbai_client_idchepbai_id_31b8bd6b_fk_courses_chepbai_id` (`idchepbai_id`),
  ADD KEY `chepbai_client_iduser_id_bc8a0466_fk_auth_user_id` (`iduser_id`);

--
-- Indexes for table `contact_contact`
--
ALTER TABLE `contact_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses_chepbai`
--
ALTER TABLE `courses_chepbai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_chepbai_idbai_id_79603d7b_fk_courses_id` (`idbai_id`);

--
-- Indexes for table `courses_damthoai`
--
ALTER TABLE `courses_damthoai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_damthoai_idbai_id_2d25bbf5_fk_courses_id` (`idbai_id`);

--
-- Indexes for table `courses_datcau`
--
ALTER TABLE `courses_datcau`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_datcau_idbai_id_3860adce_fk_courses_id` (`idbai_id`);

--
-- Indexes for table `courses_tuvung`
--
ALTER TABLE `courses_tuvung`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_tung_idbai_id_58fb3c83_fk_courses_id` (`idbai_id`);

--
-- Indexes for table `courses_vietdoanvan`
--
ALTER TABLE `courses_vietdoanvan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_vietdoanvan_idbai_id_b5967db0_fk_courses_id` (`idbai_id`);

--
-- Indexes for table `courses_whquestion`
--
ALTER TABLE `courses_whquestion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_whquestion_idbai_id_ad9edc02_fk_courses_id` (`idbai_id`);

--
-- Indexes for table `dictionary`
--
ALTER TABLE `dictionary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `baikiemtra`
--
ALTER TABLE `baikiemtra`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cauhoikiemtra`
--
ALTER TABLE `cauhoikiemtra`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `chepbai_client`
--
ALTER TABLE `chepbai_client`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_contact`
--
ALTER TABLE `contact_contact`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `courses_chepbai`
--
ALTER TABLE `courses_chepbai`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `courses_damthoai`
--
ALTER TABLE `courses_damthoai`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `courses_datcau`
--
ALTER TABLE `courses_datcau`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `courses_tuvung`
--
ALTER TABLE `courses_tuvung`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `courses_vietdoanvan`
--
ALTER TABLE `courses_vietdoanvan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `courses_whquestion`
--
ALTER TABLE `courses_whquestion`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dictionary`
--
ALTER TABLE `dictionary`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `cauhoikiemtra`
--
ALTER TABLE `cauhoikiemtra`
  ADD CONSTRAINT `cauhoikiemtra_idbai_id_9efaa9e3_fk_baikiemtra_id` FOREIGN KEY (`idbai_id`) REFERENCES `baikiemtra` (`id`);

--
-- Constraints for table `chepbai_client`
--
ALTER TABLE `chepbai_client`
  ADD CONSTRAINT `chepbai_client_idchepbai_id_31b8bd6b_fk_courses_chepbai_id` FOREIGN KEY (`idchepbai_id`) REFERENCES `courses_chepbai` (`id`),
  ADD CONSTRAINT `chepbai_client_iduser_id_bc8a0466_fk_auth_user_id` FOREIGN KEY (`iduser_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `courses_chepbai`
--
ALTER TABLE `courses_chepbai`
  ADD CONSTRAINT `courses_chepbai_idbai_id_79603d7b_fk_courses_id` FOREIGN KEY (`idbai_id`) REFERENCES `courses` (`id`);

--
-- Constraints for table `courses_damthoai`
--
ALTER TABLE `courses_damthoai`
  ADD CONSTRAINT `courses_damthoai_idbai_id_2d25bbf5_fk_courses_id` FOREIGN KEY (`idbai_id`) REFERENCES `courses` (`id`);

--
-- Constraints for table `courses_datcau`
--
ALTER TABLE `courses_datcau`
  ADD CONSTRAINT `courses_datcau_idbai_id_3860adce_fk_courses_id` FOREIGN KEY (`idbai_id`) REFERENCES `courses` (`id`);

--
-- Constraints for table `courses_tuvung`
--
ALTER TABLE `courses_tuvung`
  ADD CONSTRAINT `courses_tung_idbai_id_58fb3c83_fk_courses_id` FOREIGN KEY (`idbai_id`) REFERENCES `courses` (`id`);

--
-- Constraints for table `courses_vietdoanvan`
--
ALTER TABLE `courses_vietdoanvan`
  ADD CONSTRAINT `courses_vietdoanvan_idbai_id_b5967db0_fk_courses_id` FOREIGN KEY (`idbai_id`) REFERENCES `courses` (`id`);

--
-- Constraints for table `courses_whquestion`
--
ALTER TABLE `courses_whquestion`
  ADD CONSTRAINT `courses_whquestion_idbai_id_ad9edc02_fk_courses_id` FOREIGN KEY (`idbai_id`) REFERENCES `courses` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
