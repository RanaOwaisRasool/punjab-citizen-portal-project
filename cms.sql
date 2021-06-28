-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2021 at 10:43 AM
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
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '25-06-2021 10:19:02 AM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(3, 'Hospital', 'Medical Inqueries', '2021-06-25 04:52:49', NULL),
(4, 'Transport', 'Transportation Query', '2021-06-25 04:53:13', NULL),
(5, 'Educational', 'Educational Queries', '2021-06-25 04:54:05', NULL),
(6, 'Documents Issuance', 'Doucments', '2021-06-25 04:54:45', NULL),
(7, 'Financial Aids', 'Financial queries', '2021-06-25 04:55:10', NULL),
(8, 'Police Station', 'Military Queries', '2021-06-25 04:55:45', NULL),
(9, 'Laws & Rights', 'Main Category of Laws and rights', '2021-06-26 14:54:25', NULL),
(10, 'Helpline', 'Main Category for helpline', '2021-06-26 14:57:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `complaintremark`
--

CREATE TABLE `complaintremark` (
  `id` int(11) NOT NULL,
  `complaintNumber` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `remarkDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` int(11) NOT NULL,
  `stateName` varchar(255) DEFAULT NULL,
  `stateDescription` tinytext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `stateName`, `stateDescription`, `postingDate`, `updationDate`) VALUES
(7, 'Lahore', 'Lahore is the famous city of Pakistan', '2021-06-25 04:50:53', '2021-06-28 08:29:38'),
(8, 'Gujranwala', 'Gujranwala', '2021-06-25 04:51:13', '2021-06-27 19:45:17'),
(9, 'Gujrat', 'Gujrat', '2021-06-25 04:51:24', '2021-06-27 19:45:36'),
(10, 'Sialkot', 'Sialkot', '2021-06-25 04:51:41', '2021-06-27 19:45:55'),
(11, 'Multan', 'Multan', '2021-06-25 04:52:03', '2021-06-27 19:47:16'),
(12, 'Narowal', 'Narowal', '2021-06-27 19:47:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(4, 3, 'Name', '2021-06-25 04:56:13', NULL),
(5, 4, 'Vehicle ownership', '2021-06-25 04:57:06', NULL),
(6, 4, 'Route Permit', '2021-06-25 04:57:21', NULL),
(7, 4, 'Vehicle No', '2021-06-25 04:57:50', NULL),
(8, 3, 'Address', '2021-06-26 14:46:22', NULL),
(9, 3, 'Society', '2021-06-26 14:46:44', NULL),
(10, 5, 'Matric', '2021-06-26 14:47:03', NULL),
(11, 5, 'Intermediate', '2021-06-26 14:47:13', NULL),
(12, 5, 'Graduation', '2021-06-26 14:47:28', NULL),
(13, 5, 'Educational Board', '2021-06-26 14:47:48', NULL),
(14, 5, 'HEC', '2021-06-26 14:47:55', NULL),
(15, 5, 'Training Center', '2021-06-26 14:48:16', NULL),
(16, 5, 'Internship Center', '2021-06-26 14:48:32', NULL),
(17, 6, 'Traffic Fine', '2021-06-26 14:49:13', NULL),
(18, 6, 'Death Certificate', '2021-06-26 14:49:37', NULL),
(19, 6, 'Birth Certificate', '2021-06-26 14:49:56', NULL),
(20, 6, 'Route Permit', '2021-06-26 14:50:09', NULL),
(21, 6, 'Domicile', '2021-06-26 14:50:32', NULL),
(22, 6, 'CNIC', '2021-06-26 14:50:43', NULL),
(23, 6, 'Token Tax', '2021-06-26 14:50:56', NULL),
(24, 4, 'Type of Vehicle', '2021-06-26 14:52:11', NULL),
(25, 4, 'Traffic Fine', '2021-06-26 14:52:31', NULL),
(26, 4, 'Token Tax', '2021-06-26 14:52:44', NULL),
(27, 4, 'Model No', '2021-06-26 14:53:13', NULL),
(29, 9, 'Women Rights', '2021-06-26 14:54:52', '2021-06-26 14:56:10'),
(30, 9, 'Policy', '2021-06-26 14:55:07', NULL),
(31, 9, 'Children Rights', '2021-06-26 14:56:34', NULL),
(32, 9, 'Laws', '2021-06-26 14:56:46', NULL),
(33, 10, 'CM Office Number', '2021-06-26 14:57:50', NULL),
(34, 10, 'High Court Number', '2021-06-26 14:58:11', NULL),
(35, 10, 'WASA Number', '2021-06-26 14:58:22', NULL),
(36, 10, 'FBR Number', '2021-06-26 14:58:43', NULL),
(37, 10, 'Taxation Number', '2021-06-26 14:59:14', NULL),
(38, 10, 'BISE Number', '2021-06-26 14:59:30', NULL),
(39, 10, 'Industrial Number', '2021-06-26 14:59:47', NULL),
(40, 10, 'Agriculture Number', '2021-06-26 15:00:08', NULL),
(41, 8, 'Name of Station', '2021-06-26 15:00:43', NULL),
(42, 8, 'Address', '2021-06-26 15:00:49', NULL),
(43, 10, 'City', '2021-06-26 15:01:02', NULL),
(44, 8, 'Block', '2021-06-26 15:01:25', NULL),
(45, 7, 'Zakat Status', '2021-06-26 15:02:08', NULL),
(46, 7, 'Marriage Grants', '2021-06-26 15:02:26', NULL),
(47, 7, 'Death Grants', '2021-06-26 15:02:43', NULL),
(48, 7, 'Medical Treatment', '2021-06-26 15:03:06', NULL),
(49, 7, 'scholarships', '2021-06-26 15:03:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcomplaints`
--

CREATE TABLE `tblcomplaints` (
  `complaintNumber` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `complaintType` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `noc` varchar(255) DEFAULT NULL,
  `complaintDetails` mediumtext DEFAULT NULL,
  `complaintFile` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `status` varchar(50) DEFAULT NULL,
  `lastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcomplaints`
--

INSERT INTO `tblcomplaints` (`complaintNumber`, `userId`, `category`, `subcategory`, `complaintType`, `state`, `noc`, `complaintDetails`, `complaintFile`, `regDate`, `status`, `lastUpdationDate`) VALUES
(24, 2, 1, 'E-wllaet', 'General Query', 'Punjab', 'hghh', 'jhjewhjewfhjfhf', '', '2021-06-25 04:42:30', NULL, NULL),
(25, 3, 4, 'Vehicle ownership', ' Complaint', 'Punjab', 'jdbjdsbfjdbf', 'jksbdjsbjdfbsdjdbdsb mnchjbjbfs cn cncjbfjbef', '', '2021-06-25 04:59:44', NULL, NULL),
(26, 4, 5, 'Select Subcategory', ' Complaint', 'Punjab', 'random', 'nkfdngvcvcxvcjv jfn gjn vjdjv', 'Assignment3.docx', '2021-06-26 14:00:00', NULL, NULL),
(27, 4, 8, 'Select Subcategory', 'General Query', 'KPK', 'random complain', 'sjsdjfdjdsbfjbdfjdbfjdsbsfj', '', '2021-06-26 14:21:09', NULL, NULL),
(28, 4, 5, 'HEC', ' Complaint', 'Punjab', 'random', 'jvd vd fjds fjds fjds', 'Assignment3 (1).docx', '2021-06-26 15:14:57', NULL, NULL),
(29, 3, 8, 'Name of Station', 'General Query', 'KPK', '111', 'complaints', '', '2021-06-27 08:46:10', NULL, NULL),
(30, 6, 8, 'Address', 'General Query', 'KPK', 'efsfsdf', 'fdrfdygfsaSDFGHFHRRWSFDVXCX', '', '2021-06-27 19:42:39', NULL, NULL),
(31, 5, 5, 'Graduation', ' Complaint', 'Lahore', 'Complaint', 'Dear Dean. \r\nDue to some online issues, the instructor of DSA name \" Muhammad Umair\". He is so fast in learning. So, I wanted to inform you. Please took an action. ', 'dreamstime_61306608.jpg', '2021-06-28 08:21:52', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT current_timestamp(),
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(27, 0, 'hassanranjha9090@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-25 04:41:29', '', 0),
(28, 2, 'hassanranjha533097@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-25 04:41:40', '25-06-2021 10:12:52 AM', 1),
(29, 0, 'hassanranjha533097@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-25 04:58:17', '', 0),
(30, 0, 'awais', 0x3a3a3100000000000000000000000000, '2021-06-25 04:58:55', '', 0),
(31, 3, 'awais@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-25 04:59:08', '25-06-2021 10:30:01 AM', 1),
(32, 0, 'admin', 0x3a3a3100000000000000000000000000, '2021-06-26 12:30:15', '', 0),
(33, 0, 'admin', 0x3a3a3100000000000000000000000000, '2021-06-26 12:30:46', '', 0),
(34, 4, 'admin@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-26 12:30:58', '26-06-2021 06:01:35 PM', 1),
(35, 4, 'admin@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-26 12:46:45', '26-06-2021 06:16:51 PM', 1),
(36, 4, 'admin@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-26 13:46:32', '26-06-2021 07:17:18 PM', 1),
(37, 4, 'admin@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-26 13:56:38', '26-06-2021 07:52:14 PM', 1),
(38, 0, 'admin', 0x3a3a3100000000000000000000000000, '2021-06-26 15:13:27', '', 0),
(39, 4, 'admin@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-26 15:13:32', '26-06-2021 08:46:39 PM', 1),
(40, 4, 'admin@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-26 19:39:58', '27-06-2021 01:11:55 AM', 1),
(41, 0, 'admin', 0x3a3a3100000000000000000000000000, '2021-06-26 19:42:14', '', 0),
(42, 4, 'admin@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-26 19:42:21', '27-06-2021 01:17:39 AM', 1),
(43, 3, 'awais@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-27 08:10:22', '27-06-2021 01:41:51 PM', 1),
(44, 3, 'awais@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-27 08:45:42', '', 1),
(45, 3, 'awais@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-27 09:56:56', '', 1),
(46, 4, 'admin@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-27 10:03:45', '27-06-2021 03:48:55 PM', 1),
(47, 5, 'subhan@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-27 10:27:23', '27-06-2021 04:44:53 PM', 1),
(48, 4, 'admin@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-27 11:20:14', '', 1),
(49, 6, 'hassan@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-27 15:41:14', '27-06-2021 09:11:20 PM', 1),
(50, 6, 'hassan@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-27 19:34:46', '27-06-2021 09:43:53 PM', 1),
(51, 6, 'hassan@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-27 20:09:49', '', 1),
(52, 6, 'hassan@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-27 20:38:27', '', 1),
(53, 6, 'hassan@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-28 07:55:42', '', 1),
(54, 6, 'hassan@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-28 07:58:35', '28-06-2021 10:12:55 AM', 1),
(55, 5, 'subhan@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-28 08:13:36', '28-06-2021 10:14:30 AM', 1),
(56, 7, 'saqib@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-28 08:15:27', '28-06-2021 10:15:59 AM', 1),
(57, 3, 'awais@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-28 08:16:14', '28-06-2021 10:18:24 AM', 1),
(58, 5, 'subhan@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-28 08:18:42', '28-06-2021 10:26:44 AM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `contactNo` bigint(11) DEFAULT NULL,
  `address` tinytext DEFAULT NULL,
  `State` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `pincode` int(6) DEFAULT NULL,
  `userImage` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `userEmail`, `password`, `contactNo`, `address`, `State`, `country`, `pincode`, `userImage`, `regDate`, `updationDate`, `status`) VALUES
(3, 'Awais', 'awais@gmail.com', 'bf8f8bc114068709aafc9fa41c3d4b44', 1234567890, NULL, NULL, NULL, NULL, 'c27691635c1060246eb12c01ba8fd73fjpeg', '2021-06-25 04:58:40', NULL, 1),
(4, 'admin', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 1234567890, NULL, NULL, NULL, NULL, '9d156915aa7d4a6fb10c136e5737b2a9.jpg', '2021-06-26 12:30:37', NULL, 1),
(5, 'Subhan', 'subhan@gmail.com', 'f9f8c03639a119299c4179e7a1797642', 6482893983, NULL, NULL, NULL, NULL, '7a2038cf782927e19d9b23595a888bd4jpeg', '2021-06-27 10:27:09', NULL, 1),
(6, 'Hassan Bashir', 'hassan@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 1234567890, NULL, NULL, NULL, NULL, NULL, '2021-06-27 15:40:57', NULL, 1),
(7, 'Saqib', 'saqib@gmail.com', '2e3b4e5bc05c0b678ec769adc918409b', 7589657845, NULL, NULL, NULL, NULL, '4560e98ec4fe8aade82c083a7c5f4891jpeg', '2021-06-28 08:15:16', NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaintremark`
--
ALTER TABLE `complaintremark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomplaints`
--
ALTER TABLE `tblcomplaints`
  ADD PRIMARY KEY (`complaintNumber`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `complaintremark`
--
ALTER TABLE `complaintremark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `tblcomplaints`
--
ALTER TABLE `tblcomplaints`
  MODIFY `complaintNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
