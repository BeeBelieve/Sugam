-- phpMyAdmin SQL Dump
-- version 5.1.3deb1+focal2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 18, 2022 at 09:55 PM
-- Server version: 8.0.28-0ubuntu0.20.04.3
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sugam`
--

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `type` varchar(256) DEFAULT NULL,
  `scan_id` varchar(256) DEFAULT NULL,
  `url` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`type`, `scan_id`, `url`, `id`) VALUES
('image', '3', 'https://www.ooshclothing.com/wp-content/uploads/2020/12/Blue-Khadi-rohan-2-1.jpg', 9),
('image', '3', 'https://www.ooshclothing.com/wp-content/uploads/2021/07/IMG_7020-533x800.jpg', 10),
('image', '3', 'https://www.ooshclothing.com/wp-content/uploads/2022/01/WhatsApp-Image-2022-01-05-at-3.05.07-PM-7-600x800.jpeg', 11),
('image', '3', 'https://www.ooshclothing.com/wp-content/uploads/2021/06/Copy-of-Teal-and-Yellow-Photo-Typography-Poster-1-800x304.png', 12),
('image', '3', 'https://www.ooshclothing.com/wp-content/uploads/2020/12/chilling-2-3.jpg', 13),
('image', '3', 'https://www.ooshclothing.com/wp-content/uploads/2022/01/WhatsApp-Image-2022-01-05-at-3.05.07-PM-8-600x800.jpeg', 14),
('image', '3', 'https://www.ooshclothing.com/wp-content/uploads/2021/12/WhatsApp-Image-2021-12-21-at-2.46.02-PM-2-600x800.jpeg', 15),
('image', '3', 'https://www.ooshclothing.com/wp-content/uploads/2021/12/WhatsApp-Image-2021-12-21-at-2.46.02-PM-3-600x800.jpeg', 16),
('image', '3', 'https://www.ooshclothing.com/wp-content/uploads/2021/12/WhatsApp-Image-2021-12-21-at-2.44.24-PM-5-600x800.jpeg', 17),
('image', '3', 'https://www.ooshclothing.com/wp-content/uploads/2021/12/WhatsApp-Image-2021-12-21-at-2.44.24-PM-7-600x800.jpeg', 18),
('image', '3', 'https://www.ooshclothing.com/wp-content/uploads/2021/12/827F3EC5-4781-48C8-9D63-5B0E94FDBE53-600x800.jpg', 19),
('image', '3', 'https://www.ooshclothing.com/wp-content/uploads/2021/12/4FA0B784-5E02-4D86-919C-E117ED8981C3-scaled-e1639984940860-600x800.jpg', 20),
('image', '3', 'https://www.ooshclothing.com/wp-content/uploads/2021/12/04880E6D-58ED-4D73-A807-14EBDF8E4EF9-600x800.jpg', 21),
('image', '3', 'https://www.ooshclothing.com/wp-content/uploads/2021/12/81DFBD7C-55AD-48E4-B046-64B2A0AFE707-scaled-e1639984777629-600x800.jpg', 22),
('image', '3', 'https://www.ooshclothing.com/wp-content/uploads/2021/11/ZD6A3988kn-600x800.jpg', 23),
('image', '3', 'https://www.ooshclothing.com/wp-content/uploads/2021/11/ZD6A3971kn-600x800.jpg', 24),
('image', '3', 'https://www.ooshclothing.com/wp-content/uploads/2022/01/56ED6E3F-66A8-4752-88D4-3733CB5AB9AF-600x800.jpg', 25),
('image', '3', 'https://www.ooshclothing.com/wp-content/uploads/2022/01/6EABE81D-9149-4258-9537-0D82DED0F2F9-600x800.jpeg', 26),
('image', '3', 'https://www.ooshclothing.com/wp-content/uploads/2022/01/9DF74804-1F1D-48A0-AA13-D6D9DB442101-600x800.jpeg', 27),
('image', '3', 'https://www.ooshclothing.com/wp-content/uploads/2021/12/2B0BC279-07AE-4102-9920-E2049E365101-600x800.jpg', 28),
('image', '3', 'https://www.ooshclothing.com/wp-content/uploads/2021/12/69900EF1-C253-4293-BD3D-ECAD914B08DE-600x800.jpg', 29),
('image', '3', 'https://www.ooshclothing.com/wp-content/uploads/2022/01/33E468CB-9695-48E9-9A22-F83F2DF43D8A-600x800.jpeg', 30),
('image', '3', 'https://www.ooshclothing.com/wp-content/uploads/2021/12/77879CF6-A806-443A-A224-EA7A018B7E57-600x800.jpg', 31),
('image', '3', 'https://www.ooshclothing.com/wp-content/uploads/2021/12/15C9B805-DEEB-404E-BDF0-CF85C1B796A3-600x800.jpg', 32),
('image', '3', 'https://www.ooshclothing.com/wp-content/uploads/2020/12/IMG_1482-1-300x300.jpg', 33),
('image', '3', 'https://www.ooshclothing.com/wp-content/uploads/2021/06/Copy-of-File_000-scaled-600x800.jpeg', 34),
('image', '3', 'https://www.ooshclothing.com/wp-content/uploads/2020/12/FullSizeRender-21-1-300x300.jpg', 35),
('image', '3', 'https://www.ooshclothing.com/wp-content/uploads/2020/12/Blue-Khadi-rohan-2-1-267x400.jpg', 36),
('image', '3', 'https://www.ooshclothing.com/wp-content/uploads/2021/06/pali-unit-768x697.png', 37),
('image', '3', 'https://www.ooshclothing.com/wp-content/uploads/2021/06/pali-unit-600x544.png', 38),
('image', '3', 'https://www.ooshclothing.com/wp-content/uploads/2021/06/pali-unit.png', 39),
('image', '3', 'https://www.ooshclothing.com/wp-content/uploads/2020/12/Blue-khadi-shorts-1-600x800.jpg', 40),
('image', '3', 'https://www.ooshclothing.com/wp-content/uploads/2021/06/Copy-of-Teal-and-Yellow-Photo-Typography-Poster-1-768x292.png', 41),
('image', '3', 'https://www.ooshclothing.com/wp-content/uploads/2021/06/Copy-of-Teal-and-Yellow-Photo-Typography-Poster-1-1536x584.png', 42),
('image', '3', 'https://www.ooshclothing.com/wp-content/uploads/2021/07/IMG_7020-267x400.jpg', 43),
('image', '3', 'https://www.ooshclothing.com/wp-content/uploads/2021/06/Copy-of-Teal-and-Yellow-Photo-Typography-Poster-1-600x228.png', 44),
('image', '3', 'https://www.ooshclothing.com/wp-content/uploads/2021/06/Copy-of-Teal-and-Yellow-Photo-Typography-Poster-1-1400x533.png', 45),
('image', '3', 'https://www.ooshclothing.com/wp-content/uploads/2021/06/Copy-of-Teal-and-Yellow-Photo-Typography-Poster-1-2048x779.png', 46),
('image', '3', 'https://www.ooshclothing.com/wp-content/uploads/2021/07/IMG_7020-768x1152.jpg', 47),
('image', '3', 'https://www.ooshclothing.com/wp-content/uploads/2021/07/IMG_7020-1024x1536.jpg', 48),
('image', '3', 'https://www.ooshclothing.com/wp-content/uploads/2021/07/IMG_7020-600x900.jpg', 49),
('image', '3', 'https://www.ooshclothing.com/wp-content/uploads/2022/01/WhatsApp-Image-2022-01-05-at-3.05.07-PM-7.jpeg', 50),
('image', '3', 'https://www.ooshclothing.com/wp-content/uploads/2022/01/WhatsApp-Image-2022-01-05-at-3.05.07-PM-8-300x400.jpeg', 51),
('image', '3', 'https://www.ooshclothing.com/wp-content/uploads/2022/01/WhatsApp-Image-2022-01-05-at-3.05.07-PM-7-300x400.jpeg', 52),
('image', '3', 'https://www.ooshclothing.com/wp-content/uploads/2021/07/IMG_7020-1365x2048.jpg', 53),
('image', '3', 'https://www.ooshclothing.com/wp-content/uploads/2022/01/WhatsApp-Image-2022-01-05-at-3.05.07-PM-8.jpeg', 54),
('image', '3', 'https://www.ooshclothing.com/wp-content/uploads/2021/12/WhatsApp-Image-2021-12-21-at-2.46.02-PM-2-300x400.jpeg', 55),
('image', '3', 'https://www.ooshclothing.com/wp-content/uploads/2021/07/IMG_7020-scaled.jpg', 56),
('image', '3', 'https://www.ooshclothing.com/wp-content/uploads/2021/12/WhatsApp-Image-2021-12-21-at-2.46.02-PM-3-300x400.jpeg', 57),
('image', '3', 'https://www.ooshclothing.com/wp-content/uploads/2021/12/WhatsApp-Image-2021-12-21-at-2.46.02-PM-2.jpeg', 58),
('image', '3', 'https://www.ooshclothing.com/wp-content/uploads/2021/12/827F3EC5-4781-48C8-9D63-5B0E94FDBE53-768x1024.jpg', 59),
('image', '3', 'https://www.ooshclothing.com/wp-content/uploads/2021/12/827F3EC5-4781-48C8-9D63-5B0E94FDBE53-300x400.jpg', 60),
('image', '3', 'https://www.ooshclothing.com/wp-content/uploads/2021/12/827F3EC5-4781-48C8-9D63-5B0E94FDBE53-1152x1536.jpg', 61),
('image', '3', 'https://www.ooshclothing.com/wp-content/uploads/2021/12/827F3EC5-4781-48C8-9D63-5B0E94FDBE53-1536x2048.jpg', 62),
('image', '3', 'https://www.ooshclothing.com/wp-content/uploads/2021/12/WhatsApp-Image-2021-12-21-at-2.46.02-PM-3.jpeg', 63),
('image', '3', 'https://www.ooshclothing.com/wp-content/uploads/2022/01/9DF74804-1F1D-48A0-AA13-D6D9DB442101-299x400.jpeg', 64),
('image', '3', 'https://www.ooshclothing.com/wp-content/uploads/2021/12/77879CF6-A806-443A-A224-EA7A018B7E57-300x400.jpg', 65),
('image', '3', 'https://www.ooshclothing.com/wp-content/uploads/2021/12/77879CF6-A806-443A-A224-EA7A018B7E57-768x1024.jpg', 66),
('image', '3', 'https://www.ooshclothing.com/wp-content/uploads/2021/12/827F3EC5-4781-48C8-9D63-5B0E94FDBE53-scaled.jpg', 67),
('image', '3', 'https://www.ooshclothing.com/wp-content/uploads/2021/12/77879CF6-A806-443A-A224-EA7A018B7E57-1152x1536.jpg', 68),
('image', '3', 'https://www.ooshclothing.com/wp-content/uploads/2021/12/77879CF6-A806-443A-A224-EA7A018B7E57-1536x2048.jpg', 69),
('image', '3', 'https://www.ooshclothing.com/wp-content/uploads/2021/12/77879CF6-A806-443A-A224-EA7A018B7E57-scaled.jpg', 70),
('image', '3', 'https://www.ooshclothing.com/wp-content/uploads/2021/12/15C9B805-DEEB-404E-BDF0-CF85C1B796A3-768x1024.jpg', 71),
('image', '3', 'https://www.ooshclothing.com/wp-content/uploads/2021/12/15C9B805-DEEB-404E-BDF0-CF85C1B796A3-300x400.jpg', 72),
('image', '3', 'https://www.ooshclothing.com/wp-content/uploads/2021/12/15C9B805-DEEB-404E-BDF0-CF85C1B796A3-1536x2048.jpg', 73),
('image', '3', 'https://www.ooshclothing.com/wp-content/uploads/2021/06/Copy-of-File_000-300x400.jpeg', 74),
('image', '3', 'https://www.ooshclothing.com/wp-content/uploads/2021/06/Copy-of-File_000-600x800.jpeg', 75),
('image', '3', 'https://www.ooshclothing.com/wp-content/uploads/2021/12/15C9B805-DEEB-404E-BDF0-CF85C1B796A3-scaled.jpg', 76),
('image', '3', 'https://www.ooshclothing.com/wp-content/uploads/2021/12/15C9B805-DEEB-404E-BDF0-CF85C1B796A3-1152x1536.jpg', 77),
('image', '3', 'https://www.ooshclothing.com/wp-content/uploads/2021/06/Copy-of-File_000-768x1024.jpeg', 78),
('image', '3', 'https://www.ooshclothing.com/wp-content/uploads/2020/12/IMG_1482-1-100x100.jpg', 79),
('image', '3', 'https://www.ooshclothing.com/wp-content/uploads/2021/06/Copy-of-File_000-1152x1536.jpeg', 80),
('image', '3', 'https://www.ooshclothing.com/wp-content/uploads/2020/12/IMG_1482-1-280x280.jpg', 81),
('image', '3', 'https://www.ooshclothing.com/wp-content/uploads/2021/06/Copy-of-File_000-1536x2048.jpeg', 82),
('image', '3', 'https://www.ooshclothing.com/wp-content/uploads/2021/06/Copy-of-File_000-scaled.jpeg', 83),
('image', '3', 'https://www.ooshclothing.com/wp-content/uploads/2020/12/FullSizeRender-21-1-280x280.jpg', 84),
('docs', '4', 'https://www.angyaltech.com/', 85),
('video', '4', 'https://www.angyaltech.com/', 86),
('image', '4', 'https://www.angyaltech.com/', 87),
('image', '4', 'https://www.angyaltech.com/assets/img/woman-in-virtual-reality-WWNHGZA-1.png', 88),
('image', '4', 'https://www.angyaltech.com/assets/img/angyal-logo.png', 89),
('image', '4', 'https://www.angyaltech.com/assets/img/sec2_img2.jpg', 90),
('image', '4', 'https://www.angyaltech.com/assets/img/sec2_img.jpg', 91),
('image', '4', 'https://www.angyaltech.com/assets/img/brand_1.png', 92),
('image', '4', 'https://www.angyaltech.com/assets/img/brand2.png', 93),
('image', '4', 'https://www.angyaltech.com/assets/img/brand3.png', 94),
('image', '4', 'https://www.angyaltech.com/assets/img/brand4.png', 95),
('image', '4', 'https://www.angyaltech.com/assets/img/brand_5.png', 96),
('image', '4', 'https://www.angyaltech.com/assets/img/brand_7.png', 97),
('image', '4', 'https://www.angyaltech.com/assets/img/brand_6.png', 98),
('image', '4', 'https://www.angyaltech.com/uploads/image/marketing.jpg', 99),
('image', '4', 'https://www.angyaltech.com/uploads/image/web-development.jpg', 100),
('image', '4', 'https://www.angyaltech.com/uploads/image/AI.jpg', 101);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `role_id` int NOT NULL,
  `role_name` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `role_name`) VALUES
(1, 'Super Admin'),
(2, 'Admin'),
(3, 'Users');

-- --------------------------------------------------------

--
-- Table structure for table `scanreport`
--

CREATE TABLE `scanreport` (
  `scan_id` int NOT NULL,
  `websitename` varchar(256) NOT NULL,
  `url` varchar(256) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `scan_level` varchar(256) NOT NULL,
  `result` varchar(256) NOT NULL,
  `rules_failed` int NOT NULL,
  `errors` bigint NOT NULL,
  `warnings` bigint NOT NULL,
  `notices` bigint NOT NULL,
  `frequency` varchar(256) NOT NULL,
  `status` varchar(256) NOT NULL,
  `total` bigint NOT NULL,
  `level` varchar(256) DEFAULT NULL,
  `imgcount` varchar(256) NOT NULL DEFAULT '0',
  `vdcount` varchar(256) NOT NULL DEFAULT '0',
  `document` varchar(255) NOT NULL DEFAULT '0',
  `folder` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `scanreport`
--

INSERT INTO `scanreport` (`scan_id`, `websitename`, `url`, `date`, `scan_level`, `result`, `rules_failed`, `errors`, `warnings`, `notices`, `frequency`, `status`, `total`, `level`, `imgcount`, `vdcount`, `document`, `folder`) VALUES
(4, 'Angyal Technologies | Digital, Technology, Business Solutions', 'https://www.angyaltech.com/', '2022-02-18 15:45:52', 'Level A', 'Pass', 0, 685, 1391, 3075, 'Ad-hoc', 'Completed', 5151, 'WCAG2AAA', '15', '1', '1', 'www.angyaltech.com-4');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `first_name` text NOT NULL,
  `last_name` text NOT NULL,
  `mobile` int NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(15) NOT NULL,
  `id` int NOT NULL,
  `rolename` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`first_name`, `last_name`, `mobile`, `username`, `password`, `id`, `rolename`) VALUES
('priya', 'subramanian', 98989898, 'priya162125', 'Apple@123', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `webcrawling`
--

CREATE TABLE `webcrawling` (
  `web_id` int NOT NULL,
  `scan_id` varchar(255) DEFAULT NULL,
  `webname` varchar(255) DEFAULT NULL,
  `weburl` varchar(255) DEFAULT NULL,
  `errors` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '0',
  `notices` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '0',
  `warnings` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '0',
  `total` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '0',
  `folder` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `webcrawling`
--

INSERT INTO `webcrawling` (`web_id`, `scan_id`, `webname`, `weburl`, `errors`, `notices`, `warnings`, `total`, `folder`) VALUES
(854, '4', '', 'https://www.angyaltech.com/sitemap.xml', '4', '23', '32', '59', 'www.angyaltech.com-4'),
(855, '4', 'Angyal Technologies | Digital, Technology, Business Solutions', 'https://www.angyaltech.com/', '33', '103', '82', '218', 'www.angyaltech.com-4'),
(856, '4', 'Angyal Technologies | Services', 'https://www.angyaltech.com/services', '27', '69', '27', '123', 'www.angyaltech.com-4'),
(857, '4', 'Angyal Technologies | Products And Solution', 'https://www.angyaltech.com/products', '85', '69', '26', '180', 'www.angyaltech.com-4'),
(858, '4', 'Angyal Technologies | About Us', 'https://www.angyaltech.com/about', '36', '87', '41', '164', 'www.angyaltech.com-4'),
(859, '4', 'Angyal Technologies | Contact Us', 'https://www.angyaltech.com/contact', '7', '76', '27', '110', 'www.angyaltech.com-4'),
(860, '4', 'Angyal Technologies | Blog And News', 'https://www.angyaltech.com/blog', '25', '121', '51', '197', 'www.angyaltech.com-4'),
(861, '4', 'Angyal Technologies | Privacy Policy', 'https://www.angyaltech.com/privacy', '5', '58', '13', '76', 'www.angyaltech.com-4'),
(862, '4', 'Angyal Technologies | Terms And Condition', 'https://www.angyaltech.com/terms', '6', '61', '20', '87', 'www.angyaltech.com-4'),
(863, '4', 'Angyal Technologies | Refund And Cancellation Policy', 'https://www.angyaltech.com/refund', '6', '61', '20', '87', 'www.angyaltech.com-4'),
(864, '4', 'Angyal Technologies | Pricing', 'https://www.angyaltech.com/pricing', '7', '108', '30', '145', 'www.angyaltech.com-4'),
(865, '4', 'Angyal Technologies | About Us', 'https://www.angyaltech.com/about.php', '36', '87', '42', '165', 'www.angyaltech.com-4'),
(866, '4', 'Angyal Technologies | Industries', 'https://www.angyaltech.com/industries', '5', '58', '53', '116', 'www.angyaltech.com-4'),
(867, '4', 'Angyal Technologies | Case Studies', 'https://www.angyaltech.com/casestudies', '11', '64', '19', '94', 'www.angyaltech.com-4'),
(868, '4', 'Angyal Technologies | Financing', 'https://www.angyaltech.com/financing', '6', '61', '26', '93', 'www.angyaltech.com-4'),
(869, '4', 'Angyal Technologies | iaas-paas-saas', 'https://www.angyaltech.com/iaas-paas-saas', '6', '61', '20', '87', 'www.angyaltech.com-4'),
(870, '4', 'Angyal Technologies | Cloud Computing', 'https://www.angyaltech.com/cloud-computing', '5', '58', '13', '76', 'www.angyaltech.com-4'),
(871, '4', 'Angyal Technologies | Cloud Computing', 'https://www.angyaltech.com/virtual-machine', '5', '58', '13', '76', 'www.angyaltech.com-4'),
(872, '4', 'Angyal Technologies | Cloud Computing', 'https://www.angyaltech.com/kubernetes', '6', '61', '20', '87', 'www.angyaltech.com-4'),
(873, '4', 'Angyal Technologies | Cloud Computing', 'https://www.angyaltech.com/faas', '5', '58', '13', '76', 'www.angyaltech.com-4'),
(874, '4', 'Angyal Technologies | Consulting', 'https://www.angyaltech.com/consulting', '6', '61', '22', '89', 'www.angyaltech.com-4'),
(875, '4', 'Angyal Technologies | Developer', 'https://www.angyaltech.com/developer', '5', '61', '22', '88', 'www.angyaltech.com-4'),
(876, '4', 'Angyal Technologies | Partners', 'https://www.angyaltech.com/partners', '13', '68', '21', '102', 'www.angyaltech.com-4'),
(877, '4', 'Angyal Technologies | Career', 'https://www.angyaltech.com/career', '9', '68', '37', '114', 'www.angyaltech.com-4'),
(878, '4', 'Angyal Technologies | Corporate Responsibility', 'https://www.angyaltech.com/corporate_responsibility', '17', '64', '14', '95', 'www.angyaltech.com-4');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scanreport`
--
ALTER TABLE `scanreport`
  ADD PRIMARY KEY (`scan_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webcrawling`
--
ALTER TABLE `webcrawling`
  ADD PRIMARY KEY (`web_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `scanreport`
--
ALTER TABLE `scanreport`
  MODIFY `scan_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `webcrawling`
--
ALTER TABLE `webcrawling`
  MODIFY `web_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=879;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
