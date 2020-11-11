-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2020 at 03:36 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci4`
--

-- --------------------------------------------------------

--
-- Table structure for table `komik`
--

CREATE TABLE `komik` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `sampul` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `komik`
--

INSERT INTO `komik` (`id`, `judul`, `slug`, `penulis`, `penerbit`, `sampul`, `created_at`, `updated_at`) VALUES
(1, 'Naruto', 'naruto', 'Masashi Kishimotto', 'Shonen Jump', 'naruto.jpg', NULL, '2020-11-08 00:52:09'),
(2, 'One Piece', 'one-piece', 'Echiro Oda', 'Gramedia', 'onepiece.jpg', NULL, NULL),
(14, 'ssimpsons', 'ssimpsons', 'bayu', 'adi', '1605011805_1f951f398603a00b66ce.jpg', '2020-11-10 00:32:48', '2020-11-10 06:36:45'),
(15, 'coba', 'coba', 'as', 's', '1604990756_8127b20098df22c6be37.jpg', '2020-11-10 00:45:56', '2020-11-10 00:45:56'),
(17, 'aa', 'aa', 'aaaa', 'aa', 'default.png', '2020-11-10 06:19:25', '2020-11-10 06:19:25');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` text NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2020-11-10-134022', 'App\\Database\\Migrations\\Orang', 'default', 'App', 1605018230, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orang`
--

CREATE TABLE `orang` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orang`
--

INSERT INTO `orang` (`id`, `nama`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'Panca Ade Maheswara', 'Dk. Ahmad Dahlan No. 37, Probolinggo 69165, SulUt', '1984-06-13 17:01:08', '2020-11-10 17:38:52'),
(2, 'Siti Kusmawati', 'Ds. Basket No. 108, Palembang 29703, SulSel', '2003-10-02 23:45:54', '2020-11-10 17:38:52'),
(3, 'Saka Sihotang', 'Gg. Lumban Tobing No. 332, Surakarta 55810, Gorontalo', '2002-12-06 15:22:31', '2020-11-10 17:38:52'),
(4, 'Alika Zulaikha Halimah', 'Kpg. Suniaraja No. 772, Tangerang Selatan 69069, SulTeng', '2017-07-14 10:52:03', '2020-11-10 17:38:52'),
(5, 'Manah Firgantoro', 'Ki. Nanas No. 746, Administrasi Jakarta Utara 77830, NTB', '2016-04-06 08:49:36', '2020-11-10 17:38:52'),
(6, 'Cinta Genta Haryanti', 'Ki. Sumpah Pemuda No. 91, Samarinda 11516, PapBar', '1970-10-07 15:00:22', '2020-11-10 17:38:52'),
(7, 'Dewi Hesti Haryanti', 'Gg. Raden No. 646, Binjai 23911, Bengkulu', '1983-03-17 22:02:59', '2020-11-10 17:38:52'),
(8, 'Titi Ani Mardhiyah', 'Ds. Banda No. 97, Tomohon 17584, Maluku', '1974-12-26 12:06:56', '2020-11-10 17:38:52'),
(9, 'Dina Wastuti', 'Dk. Imam No. 884, Pangkal Pinang 11773, Papua', '1991-07-26 12:39:12', '2020-11-10 17:38:52'),
(10, 'Julia Eka Mulyani', 'Ki. Kebonjati No. 210, Yogyakarta 24352, DKI', '1976-06-18 17:07:57', '2020-11-10 17:38:52'),
(11, 'Carla Puspasari', 'Psr. Pasir Koja No. 296, Palopo 24085, PapBar', '2017-05-29 15:55:02', '2020-11-10 17:38:52'),
(12, 'Ganjaran Sitompul', 'Kpg. Asia Afrika No. 373, Pekanbaru 75024, SumSel', '2017-07-29 17:37:21', '2020-11-10 17:38:52'),
(13, 'Darsirah Marpaung', 'Ki. Baung No. 240, Bengkulu 23822, Banten', '1989-05-23 22:25:41', '2020-11-10 17:38:53'),
(14, 'Wulan Ulya Agustina S.Gz', 'Jr. Kalimalang No. 464, Sorong 17098, SulBar', '2012-11-01 15:46:33', '2020-11-10 17:38:53'),
(15, 'Syahrini Julia Hasanah S.Psi', 'Kpg. Flora No. 840, Serang 57953, KalUt', '1997-11-11 22:51:52', '2020-11-10 17:38:53'),
(16, 'Tirta Wibowo', 'Gg. Lada No. 969, Tangerang Selatan 99014, PapBar', '1976-03-19 21:18:27', '2020-11-10 17:38:53'),
(17, 'Putri Usada', 'Ds. Setia Budi No. 726, Pangkal Pinang 34157, Banten', '2014-03-05 13:09:26', '2020-11-10 17:38:53'),
(18, 'Ophelia Puspita', 'Psr. Gotong Royong No. 695, Metro 90801, SumUt', '1982-07-19 21:04:15', '2020-11-10 17:38:53'),
(19, 'Ega Situmorang', 'Ds. Abdul. Muis No. 742, Subulussalam 76023, Jambi', '1973-02-15 18:57:13', '2020-11-10 17:38:53'),
(20, 'Pia Kuswandari', 'Ki. Monginsidi No. 274, Salatiga 56490, PapBar', '2010-01-02 19:52:06', '2020-11-10 17:38:53'),
(21, 'Cemplunk Nababan', 'Jln. Basket No. 180, Administrasi Jakarta Timur 27676, KalTim', '2011-10-11 05:05:05', '2020-11-10 17:38:53'),
(22, 'Capa Simbolon', 'Kpg. Babakan No. 922, Batu 45470, KalSel', '1993-01-28 18:18:05', '2020-11-10 17:38:53'),
(23, 'Asmadi Prasetyo Wibisono M.Pd', 'Ds. Bakhita No. 351, Tebing Tinggi 65836, Maluku', '1980-03-26 12:35:45', '2020-11-10 17:38:53'),
(24, 'Elisa Pertiwi S.Psi', 'Kpg. Thamrin No. 145, Bima 12713, DKI', '2014-11-26 05:33:46', '2020-11-10 17:38:53'),
(25, 'Hadi Najmudin', 'Jr. Batako No. 786, Binjai 41543, SulTra', '2003-04-16 12:16:06', '2020-11-10 17:38:53'),
(26, 'Winda Yolanda', 'Psr. Raden No. 134, Tidore Kepulauan 86243, JaBar', '1974-11-11 00:16:20', '2020-11-10 17:38:53'),
(27, 'Lantar Viktor Hutasoit S.IP', 'Kpg. Baja Raya No. 673, Cirebon 96298, SumSel', '2018-12-03 03:40:45', '2020-11-10 17:38:54'),
(28, 'Cakrabirawa Maulana', 'Jr. Baing No. 864, Bukittinggi 19323, KalUt', '1996-09-26 15:45:53', '2020-11-10 17:38:54'),
(29, 'Ulya Nurul Riyanti S.Gz', 'Kpg. Tangkuban Perahu No. 711, Bogor 47566, JaTim', '1983-11-05 07:27:25', '2020-11-10 17:38:54'),
(30, 'Prayoga Parman Samosir M.Pd', 'Psr. Adisucipto No. 198, Pasuruan 86564, KalBar', '2003-03-05 14:41:48', '2020-11-10 17:38:54'),
(31, 'Adhiarja Dwi Wacana', 'Jln. Sukabumi No. 363, Pangkal Pinang 33670, Riau', '1997-08-12 13:03:42', '2020-11-10 17:38:54'),
(32, 'Teguh Pratama S.Sos', 'Kpg. Supomo No. 308, Malang 16946, SulBar', '2016-05-26 15:42:36', '2020-11-10 17:38:54'),
(33, 'Genta Usamah S.IP', 'Kpg. Bakaru No. 769, Bandar Lampung 73156, SulTra', '1986-03-03 11:18:38', '2020-11-10 17:38:54'),
(34, 'Irma Pratiwi', 'Jr. Cut Nyak Dien No. 529, Semarang 65923, SulBar', '1984-10-18 02:59:44', '2020-11-10 17:38:54'),
(35, 'Praba Pangestu', 'Dk. Villa No. 263, Bengkulu 82864, SumUt', '2006-08-05 13:59:53', '2020-11-10 17:38:54'),
(36, 'Kasusra Cemeti Widodo M.M.', 'Ki. Soekarno Hatta No. 674, Tanjung Pinang 58004, Banten', '2003-09-04 07:45:07', '2020-11-10 17:38:54'),
(37, 'Hamima Rahayu', 'Ki. HOS. Cjokroaminoto (Pasirkaliki) No. 135, Batu 12640, Banten', '1994-11-10 23:29:09', '2020-11-10 17:38:54'),
(38, 'Wage Salahudin', 'Psr. BKR No. 744, Medan 64147, NTT', '1973-09-20 07:58:39', '2020-11-10 17:38:54'),
(39, 'Vera Rahimah S.IP', 'Jr. Astana Anyar No. 860, Bima 30080, NTT', '1976-04-02 20:50:10', '2020-11-10 17:38:54'),
(40, 'Daruna Xanana Nashiruddin', 'Ds. R.M. Said No. 347, Tidore Kepulauan 25829, SumSel', '2011-09-07 16:39:47', '2020-11-10 17:38:55'),
(41, 'Ulva Safitri', 'Gg. Haji No. 698, Dumai 90092, Bali', '2009-12-07 11:26:00', '2020-11-10 17:38:55'),
(42, 'Talia Haryanti', 'Jln. Kyai Mojo No. 246, Lubuklinggau 12626, Bengkulu', '1992-07-19 10:56:12', '2020-11-10 17:38:55'),
(43, 'Clara Yuni Nurdiyanti', 'Jr. Lembong No. 118, Lubuklinggau 46755, Jambi', '1995-04-09 01:44:16', '2020-11-10 17:38:55'),
(44, 'Mulyanto Hidayat', 'Ds. Agus Salim No. 639, Banda Aceh 94092, KalTim', '1977-12-08 23:30:55', '2020-11-10 17:38:55'),
(45, 'Jessica Aryani M.Kom.', 'Jln. Sutarto No. 529, Payakumbuh 12868, Bengkulu', '2004-12-18 22:56:36', '2020-11-10 17:38:55'),
(46, 'Dartono Makuta Irawan', 'Kpg. Bambu No. 434, Malang 53972, SumUt', '1971-03-18 06:06:07', '2020-11-10 17:38:55'),
(47, 'Harsanto Cawisadi Simbolon', 'Psr. Jaksa No. 34, Mataram 43900, Riau', '1998-07-26 08:05:40', '2020-11-10 17:38:55'),
(48, 'Sadina Purwanti S.Kom', 'Dk. Bara No. 594, Serang 93658, Bengkulu', '1997-05-22 11:56:48', '2020-11-10 17:38:55'),
(49, 'Adikara Kurniawan', 'Ds. Asia Afrika No. 486, Lubuklinggau 65848, Maluku', '2012-12-20 15:52:28', '2020-11-10 17:38:55'),
(50, 'Juli Febi Astuti S.I.Kom', 'Jr. Soekarno Hatta No. 644, Madiun 65092, JaBar', '1991-10-11 18:56:40', '2020-11-10 17:38:55'),
(51, 'Michelle Sarah Wijayanti S.E.', 'Jln. Wahid Hasyim No. 723, Yogyakarta 73565, Riau', '2005-07-25 17:34:45', '2020-11-10 17:38:55'),
(52, 'Baktianto Pangestu', 'Jr. Rajiman No. 361, Kotamobagu 23571, Aceh', '2014-11-23 22:54:13', '2020-11-10 17:38:55'),
(53, 'Nasim Megantara', 'Gg. K.H. Wahid Hasyim (Kopo) No. 371, Blitar 48198, DKI', '1995-07-27 20:46:31', '2020-11-10 17:38:55'),
(54, 'Raden Pradana', 'Psr. Madrasah No. 506, Batam 74801, SumUt', '1986-01-16 12:49:52', '2020-11-10 17:38:55'),
(55, 'Paramita Aryani S.Kom', 'Psr. Acordion No. 80, Administrasi Jakarta Timur 29791, PapBar', '1996-11-30 19:00:08', '2020-11-10 17:38:55'),
(56, 'Zulaikha Zulaikha Winarsih', 'Kpg. Barat No. 168, Surakarta 74449, Bengkulu', '2014-02-03 23:23:06', '2020-11-10 17:38:55'),
(57, 'Gabriella Hani Novitasari M.M.', 'Ki. Basuki No. 540, Ternate 30805, PapBar', '1990-08-25 15:55:19', '2020-11-10 17:38:55'),
(58, 'Farhunnisa Yessi Puspasari', 'Gg. Soekarno Hatta No. 474, Jayapura 17449, MalUt', '1984-05-28 22:23:46', '2020-11-10 17:38:55'),
(59, 'Yoga Slamet Mahendra', 'Gg. Salam No. 609, Jayapura 74611, SumBar', '1992-09-30 11:49:07', '2020-11-10 17:38:55'),
(60, 'Icha Rahayu', 'Jr. Badak No. 726, Administrasi Jakarta Utara 64480, NTB', '1982-04-02 17:12:12', '2020-11-10 17:38:56'),
(61, 'Darmanto Rajasa', 'Jln. Urip Sumoharjo No. 829, Lubuklinggau 40518, JaTeng', '1994-02-14 03:23:40', '2020-11-10 17:38:56'),
(62, 'Jefri Saptono S.E.', 'Ki. Banal No. 8, Yogyakarta 27508, KalSel', '2018-02-03 10:59:29', '2020-11-10 17:38:56'),
(63, 'Ani Handayani', 'Jr. M.T. Haryono No. 681, Tegal 64914, Jambi', '1996-05-03 21:55:39', '2020-11-10 17:38:56'),
(64, 'Paramita Gilda Mardhiyah', 'Kpg. Krakatau No. 476, Sawahlunto 16329, SulUt', '2002-01-14 20:02:36', '2020-11-10 17:38:56'),
(65, 'Marsito Damanik', 'Ds. Elang No. 945, Kendari 33908, DIY', '2014-07-26 22:40:53', '2020-11-10 17:38:56'),
(66, 'Amalia Paramita Nurdiyanti S.I.Kom', 'Psr. Banceng Pondok No. 849, Administrasi Jakarta Barat 42362, SulTra', '1986-04-29 07:50:49', '2020-11-10 17:38:56'),
(67, 'Irma Hani Purwanti', 'Jr. Ikan No. 193, Dumai 64623, Jambi', '2002-07-07 04:04:48', '2020-11-10 17:38:56'),
(68, 'Tantri Lestari S.Farm', 'Dk. Achmad Yani No. 831, Gunungsitoli 94885, BaBel', '2014-09-22 04:02:27', '2020-11-10 17:38:56'),
(69, 'Yahya Kuswoyo', 'Gg. Zamrud No. 620, Batu 67259, KalTim', '2019-11-02 14:03:16', '2020-11-10 17:38:56'),
(70, 'Umay Aswani Nababan S.H.', 'Jln. Setia Budi No. 954, Singkawang 41453, SumBar', '1975-01-20 18:31:19', '2020-11-10 17:38:56'),
(71, 'Cawisadi Kuswoyo', 'Kpg. Dago No. 969, Sibolga 63194, Bali', '1976-01-25 08:11:05', '2020-11-10 17:38:56'),
(72, 'Kiandra Rahmi Usada', 'Jr. Cemara No. 412, Bontang 56596, SulUt', '2019-05-12 20:17:40', '2020-11-10 17:38:56'),
(73, 'Icha Yulianti', 'Jln. Cut Nyak Dien No. 12, Bekasi 73584, JaBar', '1985-03-07 22:45:39', '2020-11-10 17:38:56'),
(74, 'Ulya Padmasari S.IP', 'Ki. Zamrud No. 207, Sorong 49013, NTT', '2007-02-27 06:39:37', '2020-11-10 17:38:56'),
(75, 'Maryadi Kairav Tamba', 'Ds. Bakti No. 628, Tual 57969, KalUt', '2011-03-30 01:42:54', '2020-11-10 17:38:56'),
(76, 'Sabrina Queen Mardhiyah', 'Kpg. Bambon No. 721, Semarang 48638, KalBar', '2020-06-27 01:24:48', '2020-11-10 17:38:56'),
(77, 'Yosef Nashiruddin M.Kom.', 'Kpg. Bayan No. 417, Blitar 19263, SulTra', '1983-08-11 03:02:28', '2020-11-10 17:38:56'),
(78, 'Daliono Firgantoro S.Pd', 'Ki. Ters. Buah Batu No. 786, Banda Aceh 70303, KepR', '1993-08-23 14:07:43', '2020-11-10 17:38:56'),
(79, 'Kayla Paris Wijayanti', 'Gg. Bara No. 74, Batu 82474, DIY', '1972-01-23 20:33:12', '2020-11-10 17:38:56'),
(80, 'Wisnu Gambira Maryadi S.Gz', 'Gg. Bakaru No. 249, Tasikmalaya 71670, NTT', '2000-09-09 05:48:25', '2020-11-10 17:38:56'),
(81, 'Eli Mandasari', 'Gg. Astana Anyar No. 419, Blitar 52268, Aceh', '1988-03-09 12:08:23', '2020-11-10 17:38:56'),
(82, 'Dadap Kurnia Rajasa S.IP', 'Ds. Ters. Kiaracondong No. 170, Pagar Alam 42659, SumBar', '2010-09-17 12:22:27', '2020-11-10 17:38:56'),
(83, 'Luis Wahyudin', 'Gg. Bahagia No. 584, Bengkulu 67381, SulBar', '2015-01-26 16:16:42', '2020-11-10 17:38:56'),
(84, 'Aurora Dinda Halimah S.Farm', 'Ki. Uluwatu No. 932, Kotamobagu 31311, Riau', '1992-12-19 07:48:20', '2020-11-10 17:38:57'),
(85, 'Balamantri Gada Hutasoit S.Ked', 'Gg. Cemara No. 19, Ternate 32171, SulUt', '1970-03-20 05:53:41', '2020-11-10 17:38:57'),
(86, 'Ana Mardhiyah S.Sos', 'Jr. Pasirkoja No. 906, Padang 15186, SumUt', '1995-06-08 05:17:51', '2020-11-10 17:38:57'),
(87, 'Jelita Salsabila Rahimah S.Gz', 'Psr. Diponegoro No. 74, Palopo 47758, Riau', '1988-11-25 17:21:41', '2020-11-10 17:38:57'),
(88, 'Farah Nasyidah', 'Ds. Krakatau No. 109, Dumai 94126, KalTim', '1979-10-09 11:39:15', '2020-11-10 17:38:57'),
(89, 'Kardi Mustofa Rajasa', 'Ki. Haji No. 875, Bitung 65385, Bali', '1985-08-15 01:04:07', '2020-11-10 17:38:57'),
(90, 'Genta Pertiwi', 'Psr. Madiun No. 748, Solok 49233, Jambi', '2018-08-25 16:48:16', '2020-11-10 17:38:57'),
(91, 'Liman Rajasa', 'Jln. Salatiga No. 85, Payakumbuh 53249, NTT', '2003-01-29 21:31:14', '2020-11-10 17:38:57'),
(92, 'Yoga Siregar', 'Jr. Baik No. 23, Tual 75048, SumBar', '1986-08-29 03:09:03', '2020-11-10 17:38:57'),
(93, 'Aditya Gamblang Ardianto S.Farm', 'Ki. Pattimura No. 339, Padangpanjang 37641, DKI', '1997-02-04 22:17:35', '2020-11-10 17:38:57'),
(94, 'Darmaji Bagiya Thamrin', 'Ds. Laksamana No. 444, Bandung 28930, KalTim', '1971-04-06 03:50:23', '2020-11-10 17:38:57'),
(95, 'Lukman Lazuardi', 'Ki. Perintis Kemerdekaan No. 710, Padangsidempuan 40597, Lampung', '1971-01-21 22:49:41', '2020-11-10 17:38:57'),
(96, 'Umar Budiyanto', 'Dk. Baik No. 799, Denpasar 97046, Lampung', '2008-01-28 07:21:19', '2020-11-10 17:38:57'),
(97, 'Mahdi Suryono', 'Ki. Bambon No. 410, Bau-Bau 27815, KalTeng', '1971-03-02 09:02:04', '2020-11-10 17:38:57'),
(98, 'Dina Ratna Yuniar M.Pd', 'Gg. Imam Bonjol No. 579, Banjarbaru 51327, KalSel', '1976-12-10 09:38:12', '2020-11-10 17:38:57'),
(99, 'Bahuraksa Maulana', 'Jr. B.Agam 1 No. 172, Dumai 98334, Maluku', '1971-12-26 16:38:41', '2020-11-10 17:38:57'),
(100, 'Salimah Hasanah', 'Psr. Salatiga No. 829, Tidore Kepulauan 47764, SumUt', '2017-01-09 16:28:03', '2020-11-10 17:38:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `komik`
--
ALTER TABLE `komik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orang`
--
ALTER TABLE `orang`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `komik`
--
ALTER TABLE `komik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orang`
--
ALTER TABLE `orang`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
