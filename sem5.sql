-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2024 at 03:05 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sem5`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(55) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `fullname`, `email`, `updationDate`) VALUES
(4, 'chawal.bikash@khec.edu.np', 'e93775a28c6e45dc4b6ae6d5f12319ac', 'Er. Bikash Chawal', 'chawal.bikash@khec.edu.np', '2024-01-16 07:54:49'),
(5, 'anil.tukanbanjar@khec.edu.np', '71b9b5bc1094ee6eaeae8253e787d654', 'Er. Anil Tukanbanjar', 'anil.tukanbanjar@khec.edu.np', '2024-01-16 07:58:58'),
(6, 'sk.koju@khec.edu.np', '69f404925df883e0e5579d65b7768e7c', 'Mr. Shiva Krishna Koju', 'sk.koju@khec.edu.np', '2024-01-16 08:00:25');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `msg_id` int(11) NOT NULL,
  `incoming_msg_id` int(255) NOT NULL,
  `outgoing_msg_id` int(255) NOT NULL,
  `msg` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`msg_id`, `incoming_msg_id`, `outgoing_msg_id`, `msg`) VALUES
(1, 1373892202, 1008801179, 'hey'),
(2, 1008801179, 1373892202, 'hello'),
(3, 1008801179, 1373892202, 'hey\\');

-- --------------------------------------------------------

--
-- Table structure for table `tbldepartments`
--

CREATE TABLE `tbldepartments` (
  `id` int(11) NOT NULL,
  `DepartmentName` varchar(150) DEFAULT NULL,
  `DepartmentShortName` varchar(100) NOT NULL,
  `DepartmentCode` varchar(50) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbldepartments`
--

INSERT INTO `tbldepartments` (`id`, `DepartmentName`, `DepartmentShortName`, `DepartmentCode`, `CreationDate`) VALUES
(9, 'Computer Engineering', 'CE', '03', '2024-01-16 07:07:04'),
(10, 'Civil Engineering', 'Ci.E', '01', '2024-01-16 07:08:35'),
(11, 'Research & Development', 'R & D', '000', '2024-01-16 07:09:03'),
(12, 'Electronics, Communication & Automation Engineering', 'ECA', '001', '2024-01-16 07:09:39'),
(13, 'Architecture', 'Arch.', '02', '2024-01-16 07:09:55'),
(14, 'Earthquake Engineering', 'Eq', '003', '2024-01-16 07:10:50'),
(15, 'Urban Design & Conservation Department', 'UBC', '004', '2024-01-16 07:11:11'),
(16, 'Science & Department', 'S & D.', '005', '2024-01-16 07:11:28'),
(17, 'Administration', 'AD', '000', '2024-01-16 08:30:16');

-- --------------------------------------------------------

--
-- Table structure for table `tblemployees`
--

CREATE TABLE `tblemployees` (
  `id` int(11) NOT NULL,
  `EmpId` varchar(100) NOT NULL,
  `FirstName` varchar(150) NOT NULL,
  `LastName` varchar(150) NOT NULL,
  `EmailId` varchar(200) NOT NULL,
  `Password` varchar(180) NOT NULL,
  `Gender` varchar(100) NOT NULL,
  `Dob` varchar(100) NOT NULL,
  `Department` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `City` varchar(200) NOT NULL,
  `Country` varchar(150) NOT NULL,
  `Phonenumber` char(11) NOT NULL,
  `Status` int(1) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblemployees`
--

INSERT INTO `tblemployees` (`id`, `EmpId`, `FirstName`, `LastName`, `EmailId`, `Password`, `Gender`, `Dob`, `Department`, `Address`, `City`, `Country`, `Phonenumber`, `Status`, `RegDate`) VALUES
(10, '02', 'Shiva', 'Mahato', 'sp.mahato@khec.edu.np', '69f404925df883e0e5579d65b7768e7c', 'Male', '1970-01-07', 'Computer Engineering', 'Santinagar', 'Kathmandu', 'Nepal', '9841000000', 1, '2024-01-16 07:56:55'),
(11, '01', 'Bikash', 'Chawal', 'chawal.bikash@khec.edu.np', 'c07c9d98ada18fb549c8fcf1fcc44755', 'Male', '1989-01-03', 'Computer Engineering', 'Lakolachhen-12', 'Bhaktapur', 'Nepal', '9800000000', 1, '2024-01-16 08:08:38'),
(12, '03', 'Reena ', 'Manandhar', 'manandhar.reena@khec.edu.np', 'ed1d2e833c974ea3a09e5aa3cf9e49f8', 'Female', '1975-01-23', 'Computer Engineering', 'Banepa', 'Kavre', 'Nepal', '9841000000', 1, '2024-01-16 08:11:24'),
(13, '04', 'Milan', 'Chikanbanjar', 'milan@khec.edu.np', '83227a721a3363d2c78381664c78657f', 'Male', '1975-02-05', 'Computer Engineering', 'Adarsha', 'Bhaktapur', 'Nepal', '9843000000', 1, '2024-01-16 08:12:32'),
(14, '05', 'Avijit', 'Karn', 'Karn.avijit@khec.edu.np', '028d296f6c0bab381e401515be8eb9e4', 'Male', '1980-02-05', 'Computer Engineering', 'Tinkune', 'Kathmandu', 'Nepal', '9849000000', 1, '2024-01-16 08:15:04'),
(15, '06', 'Sarala', 'Shakya', 'sarala.shakya@khec.edu.np', 'c6ced79e21bee881b5ed458f085fd346', 'Female', '1990-01-01', 'Computer Engineering', 'Kavre', 'Banepa', 'Nepal', '9849000000', 1, '2024-01-16 08:16:14'),
(16, '07', 'Shiva Ram', 'Awal', 'shivaram.awal@khec.edu.np', 'd18f4f7429b03b511ae0bb985de47641', 'Male', '1975-02-02', 'Computer Engineering', 'Kamalbinayak', 'Bhaktapur', 'Nepal', '9841000000', 1, '2024-01-16 08:17:21'),
(17, '08', 'Anil ', 'Tukanbanjar', 'anil.tukanbanjar@khec.edu.np', '71b9b5bc1094ee6eaeae8253e787d654', 'Male', '1995-02-02', 'Administration', 'Liwali', 'Bhaktapur', 'Nepal', '9843111111', 1, '2024-01-16 08:22:07'),
(18, '09', 'Shiva Krishna', 'Koju', 'sk.koju@khec.edu.np', '69f404925df883e0e5579d65b7768e7c', 'Male', '1975-02-02', 'Administration', 'Bhaktapur', 'Bhaktapur', 'Nepal', '9841000000', 1, '2024-01-16 08:32:11'),
(19, '09', 'Shiva Krishna', 'Koju', 'sk.koju@khec.edu.np', '69f404925df883e0e5579d65b7768e7c', 'Male', '1975-02-02', 'Administration', 'Bhaktapur', 'Bhaktapur', 'Nepal', '9841000000', 1, '2024-01-16 08:33:38');

-- --------------------------------------------------------

--
-- Table structure for table `tblleaves`
--

CREATE TABLE `tblleaves` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(110) NOT NULL,
  `ToDate` varchar(120) NOT NULL,
  `FromDate` varchar(120) NOT NULL,
  `Description` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `AdminRemarkDate` varchar(120) DEFAULT NULL,
  `Status` int(1) NOT NULL,
  `IsRead` int(1) NOT NULL,
  `empid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblleaves`
--

INSERT INTO `tblleaves` (`id`, `LeaveType`, `ToDate`, `FromDate`, `Description`, `PostingDate`, `AdminRemark`, `AdminRemarkDate`, `Status`, `IsRead`, `empid`) VALUES
(22, 'Medical Leave', '2020-03-05', '2020-03-19', 'Headache', '2024-01-16 08:02:33', 'ok', '2024-01-16 13:34:06 ', 1, 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `tblleavetype`
--

CREATE TABLE `tblleavetype` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblleavetype`
--

INSERT INTO `tblleavetype` (`id`, `LeaveType`, `Description`, `CreationDate`) VALUES
(15, 'Medical Leave', 'Related to Health Problems of Employee', '2024-01-16 07:19:59'),
(17, 'Paternity Leave', 'To take care of newborns', '2024-01-16 07:20:59'),
(18, 'Bereavement Leave', 'Grieve their loss of losing loved ones', '2024-01-16 07:22:09'),
(19, 'Compensatory Leave', 'For Overtime Workers', '2024-01-16 07:22:56'),
(20, 'Maternity Leave', 'Taking care of newborn, recoveries', '2024-01-16 07:23:51'),
(22, 'Adverse Weather Leave', 'In terms of Extreme Weather Conditions', '2024-01-16 07:25:53'),
(24, 'Religious Holiday', 'Based on Employee\'s followed religion', '2024-01-16 07:27:19'),
(25, 'Casual Leave', 'Provided for Urgent or inforeseen matters to the employee', '2024-01-16 07:27:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `unique_id` int(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `unique_id`, `fname`, `lname`, `email`, `password`, `img`, `status`) VALUES
(1, 1373892202, 'Nischal', 'baidar', 'nischalbaidar@gmail.com', '2bec50004e218fed9d77b15e90850316', '1705472766Screenshot (70).png', 'Active now'),
(2, 1008801179, 'bainash', 'baidar', 'bai@gmail.com', '729921aac256374161db22f2d6a1f7e9', '1705472816Screenshot (72).png', 'Offline now');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indexes for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblemployees`
--
ALTER TABLE `tblemployees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblleaves`
--
ALTER TABLE `tblleaves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `UserEmail` (`empid`);

--
-- Indexes for table `tblleavetype`
--
ALTER TABLE `tblleavetype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tblemployees`
--
ALTER TABLE `tblemployees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tblleaves`
--
ALTER TABLE `tblleaves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tblleavetype`
--
ALTER TABLE `tblleavetype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
