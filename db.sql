-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 07, 2019 at 06:29 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `attendance`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `username` varchar(5) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(15) NOT NULL,
  PRIMARY KEY (`username`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `email`, `password`) VALUES
('Admin', 'admin@admin.admin', 'admin_12345');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE IF NOT EXISTS `attendance` (
  `sem` int(1) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `present stds` text NOT NULL,
  `by` varchar(30) NOT NULL,
  UNIQUE KEY `date` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`sem`, `date`, `present stds`, `by`) VALUES
(1, '2019-10-16 22:30:08', '134894,7364ev,8uijk', 'goverdan'),
(1, '2019-10-16 22:36:09', '134894,76hgewjh,8uijk', 'bharath'),
(1, '2019-10-18 16:04:06', '7364ev,76hgewjh', 'bharath'),
(1, '2019-10-21 11:48:10', '76hgewjh', 'bharath'),
(1, '2019-10-22 06:33:48', '134894,7364ev,8uijk', 'bharath'),
(1, '2019-10-22 11:14:21', '134894,76hgewjh,8uijk', 'goverdan'),
(1, '2019-10-22 11:21:58', '7364ev,76hgewjh', 'goverdan'),
(1, '2019-10-22 12:53:46', '134894,7364ev', 'goverdan'),
(1, '2019-10-24 23:40:40', '134894,76hgewjh,8uijk', 'goverdan'),
(1, '2019-10-25 07:32:18', '134894,7364ev,76hgewjh', 'bharath'),
(1, '2019-10-25 09:36:20', '7364ev,76hgewjh', 'bharath'),
(1, '2019-10-25 10:21:26', '134894,76hgewjh', 'goverdan'),
(5, '2019-10-25 10:38:48', '17001-CM-005,17001-CM-049,17001-CM-060', 'goverdan'),
(5, '2019-10-25 10:39:47', '17001-CM-005,17001-CM-049,17001-CM-060', 'goverdan');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE IF NOT EXISTS `faculty` (
  `id` int(3) NOT NULL,
  `name` varchar(15) NOT NULL,
  `inchargeof` varchar(20) NOT NULL,
  `college` varchar(50) NOT NULL,
  `phoneno` bigint(10) NOT NULL,
  `mailid` varchar(40) NOT NULL,
  `address` text NOT NULL,
  `password` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `id_2` (`id`),
  UNIQUE KEY `mailid` (`mailid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `name`, `inchargeof`, `college`, `phoneno`, `mailid`, `address`, `password`) VALUES
(1, 'Goverdan', '3rd year 1st shift ', 'Government polytechnic Masabta', 9999999999, 'gv@gmail.com', 'hyderabad', 'goverdan123'),
(2, 'Bharath', '3rd year 2nd shift ', 'Government polytechnic Masabta', 1234567890, 'bharath@gmail.com', 'hyderguda, hyderabad', 'bharath123'),
(3, 'Radhakrishna', '2nd year 1st shift', 'Government polytechnic Masabta', 1234056789, 'radhakrishna@gmail.com', 'hyderabad', 'rdk@gmail.com'),
(4, 'Suresh', '2nd year 2nd shift', 'Government polytechnic Masabta', 9654532487, 'suresh@gmail.com', 'hyderabad', 'msuresh@1234'),
(5, 'Bhargavi', '1st year 1st shift ', 'Government polytechnic Masabta', 6307664235, 'bhargavi@gmail.com', 'uppal', 'bhg123'),
(6, 'Riyaz', '1st year 2nd shift ', 'Government polytechnic Masabta', 7045368576, 'riyaz@gmail.com', 'hyderabad', 'mdriyaz786');

-- --------------------------------------------------------

--
-- Table structure for table `fac_notice`
--

CREATE TABLE IF NOT EXISTS `fac_notice` (
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `notid` varchar(10) NOT NULL,
  `sem` varchar(15) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `by` varchar(20) NOT NULL,
  UNIQUE KEY `notid` (`notid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fac_notice`
--

INSERT INTO `fac_notice` (`time`, `notid`, `sem`, `title`, `description`, `by`) VALUES
('2019-10-22 06:35:34', '', '', '', '', 'bharath'),
('2019-10-16 08:17:47', 'chk49', 'hjs', 'jdhsjk', 'djkshdjks dsidu siadu', ''),
('2019-10-16 08:23:27', 'chk81', 'hd', 'sdnhsj', 'jdhnsidnu duewui', 'suresh'),
('0000-00-00 00:00:00', 'jioxd', 'sodssh', 'dsafoi', 'dsajoidj\r\ndnasj', 'radhakrishna'),
('0000-00-00 00:00:00', 'jkdhsxk', ' dxa', 'hosxhksj', 'hiuhdsas\r\ndcejdkfj\r\nw23w7e8duhxj', ''),
('2019-10-16 08:09:38', 'n03', 'jdhs', 'dsjhdjk', 'bdgasdhusadh dsauidusi', ''),
('0000-00-00 00:00:00', 'nc01', 'all', 'Check', 'kfdjsaokjfl;f\r\nfwmfjhwejkdn\r\n3u28973908\r\nfaddfhdejkfnkl\r\nfssjjdgidh\r\ndasjdjknd\r\ndhausdhjka\r\n', 'radhakrishna'),
('0000-00-00 00:00:00', 'nc03', 'js', 'hjks', 'dwskdk iudux uhs', 'goverdan');

-- --------------------------------------------------------

--
-- Table structure for table `parent`
--

CREATE TABLE IF NOT EXISTS `parent` (
  `name` varchar(15) NOT NULL,
  `pin` varchar(30) NOT NULL,
  `ssem` varchar(1) NOT NULL,
  `phno` bigint(10) NOT NULL,
  `email` varchar(40) NOT NULL,
  `pwd` varchar(15) NOT NULL,
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parent`
--

INSERT INTO `parent` (`name`, `pin`, `ssem`, `phno`, `email`, `pwd`) VALUES
('p', '76hgewjh', '1', 1, '1', 'a'),
('parent', '134894', '1', 1234567890, 'baap@baap.baap', 'a'),
('faff', '78', '1', 6787843256, 'jckld@fkjk.jk', 'jhjkdf');

-- --------------------------------------------------------

--
-- Table structure for table `prtfdbk`
--

CREATE TABLE IF NOT EXISTS `prtfdbk` (
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(30) NOT NULL,
  `subject` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prtfdbk`
--

INSERT INTO `prtfdbk` (`time`, `type`, `subject`, `description`) VALUES
('2019-10-14 22:12:25', 'fjjoes', 'dsksljlfds\r\n', 'gifgp\r\nsjfje\r\nrjjfkejfkdjgkufi348re09fiovjk \r\ndx '),
('2019-10-14 22:12:52', 'kjejfeor', 'hdjomeeusm', 'jsnkmdinkoiurew\r\njdsfeol\r\nfnjuf98ewiujdkcm ,'),
('2019-10-14 22:14:48', 'dojo', 'sdfghjkl', 'plpkjohigfudzrexcwvbnm,\r\nfjghiunmrewijkm, '),
('2019-10-16 08:03:57', 'complain', 'idhs', 'c ckjj hdsjh '),
('2019-10-16 08:04:34', 'complain', 'idhs', 'c ckjj hdsjh '),
('2019-10-16 08:04:48', 'complain', 'fhsdskj', 'djssnhfddh jkf 437847 dh'),
('2019-10-16 08:04:48', 'complain', 'fhsdskj', 'djssnhfddh jkf 437847 dh'),
('2019-10-16 08:05:38', 'proud', 'jdhs', 'ufdns'),
('2019-10-16 08:07:18', 'complain', 'jdshnkj', 'foednos'),
('2019-10-16 08:35:19', 'complain', 'gjh', 'dhskjdhsjk'),
('2019-10-16 11:54:36', 'complain', 'baigan', 'his is a baigan. qweruiop\r\nasdfghjkl;\r\nzxcvbnm,\r\n\r\n\r\nasdfghjkl;\r\ncvbnm,\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `name` varchar(15) NOT NULL,
  `pin` varchar(20) NOT NULL,
  `parentname` varchar(30) NOT NULL,
  `branch-shift` varchar(9) NOT NULL,
  `sem` int(1) NOT NULL,
  `college` varchar(30) NOT NULL,
  `phno` bigint(10) NOT NULL,
  `mailid` varchar(40) NOT NULL,
  `password` varchar(15) NOT NULL,
  `address` varchar(30) NOT NULL,
  PRIMARY KEY (`pin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`name`, `pin`, `parentname`, `branch-shift`, `sem`, `college`, `phno`, `mailid`, `password`, `address`) VALUES
('xzabc', '134894', 'abced', 'cme-01', 1, 'djhsk', 7865349820, 'jshdk@fkjd.cjdi', 'dbjsdhj', 'djshdj dsgd dhsk'),
('hdm', '7364ev', 'ufhrj', 'h-5', 1, 'fhg', 3456123456, 'abc@abc.abc', 'fgjhxgf', 'gfpooilukjhgf'),
('jdfhk', '76hgewjh', 'jfekdfjl', 'lk-9', 1, 'kdjslk', 6372687365, 'hdjk@jfk.jhfk', 'ghjjh', 'fghfh'),
('kjv', '8uijk', 'rjkle', 'hkj-87', 1, 'jflkdm', 6745398765, 'kje@jdk.ikj', 'jdkljfee', 'jhrkewjdr');

-- --------------------------------------------------------

--
-- Table structure for table `student2`
--

CREATE TABLE IF NOT EXISTS `student2` (
  `name` varchar(15) NOT NULL,
  `pin` varchar(20) NOT NULL,
  `parentname` varchar(30) NOT NULL,
  `branch-shift` varchar(9) NOT NULL,
  `sem` int(1) NOT NULL,
  `college` varchar(30) NOT NULL,
  `phno` bigint(10) NOT NULL,
  `mailid` varchar(40) NOT NULL,
  `password` varchar(15) NOT NULL,
  `address` varchar(30) NOT NULL,
  UNIQUE KEY `pin` (`pin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student2`
--


-- --------------------------------------------------------

--
-- Table structure for table `student3`
--

CREATE TABLE IF NOT EXISTS `student3` (
  `name` varchar(15) NOT NULL,
  `pin` varchar(20) NOT NULL,
  `parentname` varchar(30) NOT NULL,
  `branch-shift` varchar(9) NOT NULL,
  `sem` int(1) NOT NULL,
  `college` varchar(30) NOT NULL,
  `phno` bigint(10) NOT NULL,
  `mailid` varchar(40) NOT NULL,
  `password` varchar(15) NOT NULL,
  `address` varchar(30) NOT NULL,
  UNIQUE KEY `pin` (`pin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student3`
--


-- --------------------------------------------------------

--
-- Table structure for table `student4`
--

CREATE TABLE IF NOT EXISTS `student4` (
  `name` varchar(15) NOT NULL,
  `pin` varchar(20) NOT NULL,
  `parentname` varchar(30) NOT NULL,
  `branch-shift` varchar(9) NOT NULL,
  `sem` int(1) NOT NULL,
  `college` varchar(30) NOT NULL,
  `phno` bigint(10) NOT NULL,
  `mailid` varchar(40) NOT NULL,
  `password` varchar(15) NOT NULL,
  `address` varchar(30) NOT NULL,
  UNIQUE KEY `pin` (`pin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student4`
--


-- --------------------------------------------------------

--
-- Table structure for table `student5`
--

CREATE TABLE IF NOT EXISTS `student5` (
  `name` varchar(25) NOT NULL,
  `pin` varchar(20) NOT NULL,
  `parentname` varchar(30) NOT NULL,
  `branch-shift` varchar(9) NOT NULL,
  `sem` int(1) NOT NULL,
  `college` varchar(50) NOT NULL,
  `phno` bigint(10) NOT NULL,
  `mailid` varchar(40) NOT NULL,
  `password` varchar(15) NOT NULL,
  `address` varchar(30) NOT NULL,
  UNIQUE KEY `pin` (`pin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student5`
--

INSERT INTO `student5` (`name`, `pin`, `parentname`, `branch-shift`, `sem`, `college`, `phno`, `mailid`, `password`, `address`) VALUES
('Sai Varshitha', '17001-CM-005', 'Sai Babu Battula', 'dcme-01', 5, 'Government Polytechnic, Masabtank', 9398108952, 'saivarshitha23@gmail.com', 'sv0523', 'Secundrabad'),
('K. Aishwarya', '17001-CM-032', 'K.Arjun', 'DCME-01', 5, 'Government Polytechnic, Masabtank', 8500602126, 'aishwaryakandlakoya123@gmail.com', 'aish123', 'uppal'),
('P.Sharmila', '17001-CM-045', 'P.Srinivas', 'DCME-01', 5, 'Government Polytechnic, Masabtank', 7075466160, 'sharmilap379@gmail.com', 'sharm123', 'peddapalli'),
('Safiya Abidunnisa', '17001-CM-049', 'MA. Jeelani baig', 'dcme-01', 5, 'Government Polytechnic, Masabtank', 9951265301, 'safiyaabidunnisa@gmail.com', 'sab1876', 'Hyderabad'),
('Vaishali', '17001-CM-060', 'Ashok', 'dcme-01', 5, 'Government Polytechnic, Masabtank', 9346237538, 'ashokbharathi10v@gmail.com', 'asbhv@12345', 'Hyderguda');

-- --------------------------------------------------------

--
-- Table structure for table `student6`
--

CREATE TABLE IF NOT EXISTS `student6` (
  `name` varchar(15) NOT NULL,
  `pin` varchar(20) NOT NULL,
  `parentname` varchar(30) NOT NULL,
  `branch-shift` varchar(9) NOT NULL,
  `sem` int(1) NOT NULL,
  `college` varchar(30) NOT NULL,
  `phno` bigint(10) NOT NULL,
  `mailid` varchar(40) NOT NULL,
  `password` varchar(15) NOT NULL,
  `address` varchar(30) NOT NULL,
  UNIQUE KEY `pin` (`pin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student6`
--

