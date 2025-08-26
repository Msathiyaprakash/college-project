-- phpMyAdmin SQL Dump
-- version 2.11.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 12, 2024 at 11:11 AM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `class_skipper`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `camera1` varchar(20) NOT NULL,
  `camera2` varchar(20) NOT NULL,
  `camera3` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`, `camera1`, `camera2`, `camera3`) VALUES
('admin', 'admin', 'CSE', 'Canteen', 'Auditorium');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `regno` varchar(20) NOT NULL,
  `rdate` varchar(20) NOT NULL,
  `attendance` varchar(20) NOT NULL,
  `mask_st` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `department` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `department`) VALUES
(1, 'CSE'),
(2, 'IT'),
(3, 'MCA'),
(4, 'MSc'),
(5, 'BCA'),
(6, 'BSc');

-- --------------------------------------------------------

--
-- Table structure for table `detect_class_skipper`
--

CREATE TABLE `detect_class_skipper` (
  `id` int(11) NOT NULL,
  `regno` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `camera` varchar(20) NOT NULL,
  `face_img` varchar(20) NOT NULL,
  `dept` varchar(20) NOT NULL,
  `date_time` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detect_class_skipper`
--
-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `address` varchar(200) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `aadhar` varchar(20) NOT NULL,
  `dept` varchar(20) NOT NULL,
  `year` varchar(20) NOT NULL,
  `rdate` varchar(20) NOT NULL,
  `face_st` int(11) NOT NULL,
  `fimg` varchar(30) NOT NULL,
  `otp` varchar(20) NOT NULL,
  `allow_st` int(11) NOT NULL,
  `regno` varchar(20) NOT NULL,
  `parent_mob` bigint(20) NOT NULL,
  UNIQUE KEY `regno` (`regno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--


-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `location` varchar(40) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `stype` varchar(20) NOT NULL,
  `rdate` varchar(15) NOT NULL,
  `dept` varchar(20) NOT NULL,
  UNIQUE KEY `uname` (`uname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

-- --------------------------------------------------------

--
-- Table structure for table `timetable`
--

CREATE TABLE `timetable` (
  `id` int(11) NOT NULL,
  `dept` varchar(20) NOT NULL,
  `staff` varchar(20) NOT NULL,
  `semester` int(11) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `hour1` int(11) NOT NULL,
  `minute1` int(11) NOT NULL,
  `hour2` int(11) NOT NULL,
  `minute2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timetable`
--

INSERT INTO `timetable` (`id`, `dept`, `staff`, `semester`, `subject`, `hour1`, `minute1`, `hour2`, `minute2`) VALUES
(1, 'CSE', 'S002', 6, 'Python', 15, 0, 16, 30);

-- --------------------------------------------------------

--
-- Table structure for table `vt_face`
--

CREATE TABLE `vt_face` (
  `id` int(11) NOT NULL,
  `vid` int(11) NOT NULL,
  `vface` varchar(30) NOT NULL,
  `mask_st` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vt_face`
--

