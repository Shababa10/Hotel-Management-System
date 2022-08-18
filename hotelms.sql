-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2022 at 08:20 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotelms`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `booking_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `room_id` int(10) NOT NULL,
  `booking_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `check_in` varchar(100) DEFAULT NULL,
  `check_out` varchar(100) NOT NULL,
  `total_price` int(10) NOT NULL,
  `remaining_price` int(10) NOT NULL,
  `payment_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_id`, `customer_id`, `room_id`, `booking_date`, `check_in`, `check_out`, `total_price`, `remaining_price`, `payment_status`) VALUES
(1, 1, 5, '2022-07-01 07:45:17', '01-07-2022', '103-07-2022', 3000, 3000, 0),
(2, 2, 2, '2022-07-12 07:46:04', '13-07-2022', '16-17-2022', 6000, 0, 1),
(3, 3, 2, '2022-07-10 08:49:19', '11-07-2022', '13-07-2022', 6000, 3000, 0),
(4, 4, 7, '2022-07-09 09:23:25', '10-07-2022', '15-07-2022', 10000, 10000, 0),
(5, 5, 13, '2022-07-15 08:59:10', '17-07-2022', '22-07-2022', 12000, 0, 1),
(6, 6, 9, '2022-07-08 11:45:56', '08-07-2022', '09-07-2022', 3000, 3000, 0),
(7, 7, 14, '2022-07-24 19:56:41', '28-07-2022', '02-08-2022', 16500, 11500, 0),
(8, 8, 22, '2022-08-02 10:32:57', '03-08-2022', '08-08-2022', 34500, 0, 1),
(9, 9, 4, '2022-08-12 17:01:38', '18-08-2022', '21-08-2022', 12000, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `id` int(11) NOT NULL,
  `complainant_name` varchar(100) NOT NULL,
  `complaint_type` varchar(100) NOT NULL,
  `complaint` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `resolve_status` tinyint(1) NOT NULL,
  `resolve_date` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `budget` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`id`, `complainant_name`, `complaint_type`, `complaint`, `created_at`, `resolve_status`, `resolve_date`, `budget`) VALUES
(1, 'Kawsar Ahmed\r\n', 'Room Windows', 'Doesnot operate properly', '2022-07-16 08:51:24', 1, '2022-07-17 08:51:58', 3600),
(2, 'Ms. Sanjida', 'Air Conditioner', 'Sensor Problems', '2022-07-01 08:51:44', 1, '2022-07-03 09:06:02', 7950),
(3, 'Mr. Arafat\r\n', 'Bad Smells', 'Some odd smells around room areas', '2022-07-05 09:01:17', 1, '2022-07-08 09:01:52', 500),
(5, 'Afzal Hossain', 'Faulty Electronics', 'Due to some weird reasons, the electronics are not working as it should; some voltage problems too.', '2022-07-09 10:38:19', 1, '2022-07-09 10:38:39', 2500);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `contact_no` bigint(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `id_card_type_id` int(10) NOT NULL,
  `id_card_no` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `contact_no`, `email`, `id_card_type_id`, `id_card_no`, `address`) VALUES
(1, 'Ms. Sanjida', 7540001240, 'sanjida@gmail.com', 1, '422510099122', '1216 Dhaka'),
(2, 'Mr. Arafat', 2870214970, 'arafat@gmail.com', 2, '422510099122', '1211 Sylhet'),
(3, 'Mr. Kawsar Ahmed', 1247778460, 'kawsar@gmail.com', 1, '422510099122', '4879 Dhaka'),
(4, 'Tanvir Chowdhury', 1478546500, 'tanvir@gmail.com', 3, '227712234', '926 Rangpur\r\n'),
(5, 'Ali Ahmed', 2671249780, 'ali@gmail.com', 1, '422510099122', '4621 Dhaka\r\n'),
(6, 'Towsif Chowdhury', 1245554780, 'towsif@gmail.com', 4, 'AASS 12454784541', 'Dinajpur\r\n'),
(7, 'Abdullah', 2450006974, 'abdullah@gmail.com', 1, '457896000002', 'Rajshahi'),
(8, 'Mr. Rahman Chowdhury', 2457778450, 'rahman@gmail.com', 1, '147000245810', 'Cumilla'),
(9, 'Mr. Samir', 182821111, 'samir@gmail.com', 1, '23221112', 'Chittagong');

-- --------------------------------------------------------

--
-- Table structure for table `emp_history`
--

CREATE TABLE `emp_history` (
  `id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `shift_id` int(11) NOT NULL,
  `from_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `to_date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp_history`
--

INSERT INTO `emp_history` (`id`, `emp_id`, `shift_id`, `from_date`, `to_date`, `created_at`) VALUES
(1, 1, 1, '2022-07-13 07:39:06', '2022-07-13 04:22:26', '2022-07-13 07:39:06'),
(2, 2, 3, '2022-07-15 07:39:39', '2022-07-15 04:22:43', '2022-07-15 07:39:39'),
(3, 3, 1, '2022-07-14 07:40:18', '2022-07-14 04:22:49', '2022-07-14 07:40:18'),
(4, 4, 1, '2022-07-16 07:40:56', '2022-07-17 04:22:35', '2022-07-13 07:40:56'),
(5, 5, 1, '2022-07-13 07:41:31', '2022-07-13 04:22:26', '2022-07-13 07:41:31'),
(6, 6, 3, '2022-07-17 07:42:03', '2022-07-17 04:22:35', '2022-07-17 07:42:03'),
(7, 7, 4, '2022-07-13 13:36:41', '2022-07-13 04:35:02', '2022-07-13 07:42:35'),
(8, 8, 3, '2022-07-11 07:43:13', '2022-07-11 04:32:26', '2022-07-11 07:43:13'),
(9, 9, 2, '2022-07-10 07:43:49', '2022-07-11 04:22:26', '2022-06-13 07:40:56'),
(10, 10, 1, '2022-07-13 08:30:45', '2022-07-19 04:34:28', '2022-07-13 08:30:45'),
(11, 1, 2, '2022-07-15 08:52:26', '2022-07-17 04:23:05', '2022-07-15 08:52:26'),
(12, 4, 3, '2022-07-15 08:52:35', '2022-07-18 04:22:26', '2022-07-15 08:52:35'),
(13, 2, 3, '2022-07-19 08:52:43', '2022-07-25 04:22:43', '2022-07-19 08:52:43'),
(14, 3, 3, '2022-06-15 08:52:49', '2022-08-12 12:48:57', '2022-06-15 08:52:49'),
(15, 1, 3, '2022-07-13 08:53:05', '2022-08-12 12:48:37', '2022-07-13 08:53:05'),
(16, 8, 1, '2022-04-18 09:02:26', '2022-07-13 04:35:02', '2022-04-18 09:02:26'),
(17, 11, 2, '2022-06-18 09:04:03', '2022-07-13 04:22:26', '2022-04-18 09:04:03'),
(18, 10, 2, '2022-05-18 09:04:28', '2022-07-13 04:22:26', '2022-05-18 09:04:28'),
(19, 7, 2, '2022-03-18 09:05:02', '2022-07-13 04:35:02', '2022-03-18 09:05:02'),
(20, 12, 1, '2022-04-08 19:54:22', '2022-07-14 04:22:49', '2022-04-08 19:54:22'),
(21, 13, 2, '2022-04-09 10:35:27', '2022-07-17 04:22:35', '2022-04-09 10:35:27'),
(22, 14, 1, '2022-07-18 04:43:18', NULL, '2022-07-18 04:43:18'),
(23, 1, 2, '2022-07-12 16:48:37', NULL, '2022-07-12 16:48:37');

-- --------------------------------------------------------

--
-- Table structure for table `id_card_type`
--

CREATE TABLE `id_card_type` (
  `id_card_type_id` int(10) NOT NULL,
  `id_card_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `id_card_type`
--

INSERT INTO `id_card_type` (`id_card_type_id`, `id_card_type`) VALUES
(1, 'National Identity Card'),
(2, 'Birth Certificate'),
(3, 'Passport Number'),
(4, 'Driving License');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_id` int(10) NOT NULL,
  `room_type_id` int(10) NOT NULL,
  `room_no` varchar(10) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `check_in_status` tinyint(1) NOT NULL,
  `check_out_status` tinyint(1) NOT NULL,
  `deleteStatus` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_id`, `room_type_id`, `room_no`, `status`, `check_in_status`, `check_out_status`, `deleteStatus`) VALUES
(1, 2, 'A-101', NULL, 0, 0, 1),
(2, 2, 'A-102', 1, 1, 1, 0),
(3, 3, 'A-103', NULL, 0, 0, 0),
(4, 4, 'A-104', 1, 1, 0, 0),
(5, 1, 'B-101', 1, 0, 0, 0),
(6, 2, 'B-102', NULL, 0, 0, 1),
(7, 3, 'B-103', 1, 0, 0, 0),
(8, 4, 'B-104', NULL, 0, 0, 1),
(9, 1, 'C-101', 1, 0, 0, 0),
(10, 2, 'C-102', NULL, 0, 0, 0),
(11, 3, 'C-103', NULL, 0, 0, 1),
(12, 4, 'C-104', NULL, 0, 0, 0),
(13, 4, 'D-101', NULL, 0, 1, 1),
(14, 5, 'K-699', 1, 1, 0, 0),
(15, 5, 'K-799', NULL, 0, 0, 0),
(16, 5, 'K-899', NULL, 0, 0, 0),
(17, 6, 'M-333', NULL, 0, 0, 0),
(18, 6, 'M-444', NULL, 0, 0, 0),
(19, 6, 'M-555', NULL, 0, 0, 0),
(20, 9, 'P-696', NULL, 0, 0, 0),
(21, 10, 'M-966', NULL, 0, 0, 0),
(22, 10, 'M-869', NULL, 0, 1, 0),
(23, 8, 'Z-666', NULL, 0, 0, 0),
(24, 7, 'X-969', NULL, 0, 0, 0),
(25, 8, 'Z-111', NULL, 0, 0, 0),
(26, 6, 'M-135', NULL, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `room_type`
--

CREATE TABLE `room_type` (
  `room_type_id` int(10) NOT NULL,
  `room_type` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `max_person` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room_type`
--

INSERT INTO `room_type` (`room_type_id`, `room_type`, `price`, `max_person`) VALUES
(1, 'Single', 1000, 1),
(2, 'Double', 1500, 2),
(3, 'Triple', 2000, 3),
(4, 'Family', 3000, 2),
(5, 'King Sized', 5500, 4),
(6, 'Master Suite', 6500, 6),
(7, 'Mini-Suite', 3600, 3),
(8, 'Connecting Rooms', 8000, 6),
(9, 'Presidential Suite', 21000, 4),
(10, 'Murphy Room', 6900, 3);

-- --------------------------------------------------------

--
-- Table structure for table `shift`
--

CREATE TABLE `shift` (
  `shift_id` int(10) NOT NULL,
  `shift` varchar(100) NOT NULL,
  `shift_timing` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shift`
--

INSERT INTO `shift` (`shift_id`, `shift`, `shift_timing`) VALUES
(1, 'Morning', '5:00 AM - 10:00 AM'),
(2, 'Day', '10:00 AM - 4:00PM'),
(3, 'Evening', '4:00 PM - 10:00 PM'),
(4, 'Night', '10:00PM - 5:00AM');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `emp_id` int(11) NOT NULL,
  `emp_name` varchar(100) NOT NULL,
  `staff_type_id` int(11) NOT NULL,
  `shift_id` int(11) NOT NULL,
  `id_card_type` int(11) NOT NULL,
  `id_card_no` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact_no` bigint(20) NOT NULL,
  `salary` bigint(20) NOT NULL,
  `joining_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`emp_id`, `emp_name`, `staff_type_id`, `shift_id`, `id_card_type`, `id_card_no`, `address`, `contact_no`, `salary`, `joining_date`, `updated_at`) VALUES
(1, 'Ahmed Ali', 1, 2, 1, '1927271827', 'Sylhet', 188888828, 25000, '2022-07-13 13:36:41', '2022-08-14 14:12:15'),
(2, 'Ms. Rohima', 3, 3, 1, '12817172721', 'Sylhet', 177777272, 15000, '2022-07-10 13:36:41', '2022-08-14 14:13:22'),
(3, 'Abdur Rahman', 2, 3, 1, '281737211', 'Dijanpur', 162666666, 25000, '2022-07-11 13:36:41', '2022-08-14 14:14:17'),
(4, 'Ms. Fatema', 2, 3, 2, '121162661', 'Dhaka', 1888881, 32000, '2022-07-10 13:36:41', '2022-08-14 14:14:39'),
(5, 'Nanna Mia', 4, 1, 1, '12615515111', 'Dhaka', 1821811111, 28000, '2022-07-08 13:36:41', '2022-08-14 14:14:54'),
(6, 'Mr. Karim', 3, 3, 1, '127827111', 'Sylhet', 17782881, 25000, '2022-07-06 13:36:41', '2022-08-14 14:15:19'),
(7, 'Anwar Ahmed', 2, 2, 1, '1727182828', 'Dhaka', 188888222, 25000, '2022-07-11 13:36:41', '2022-08-14 14:15:49'),
(8, 'Tasfia Sababa', 1, 1, 1, '121716618', 'Dhaka', 18822222, 30000, '2022-06-10 13:36:41', '2022-08-14 14:16:32'),
(9, 'Khan Ali', 3, 2, 1, '122182822', 'Sylhet', 177772777, 20000, '2022-07-16 13:36:41', '2022-08-14 14:16:48'),
(10, 'Jalal Khan', 5, 2, 1, '1727717122', 'Dhaka', 177771221, 5000, '2022-07-02 13:36:41', '2022-08-14 14:17:15'),
(11, 'Jowel Chowdhury', 3, 2, 1, '1121221121', 'Dhaka', 199999911, 20000, '2022-07-01 13:36:41', '2022-08-14 14:17:39'),
(12, 'Junayed Mia', 2, 1, 1, '182718221', 'Dhaka', 1475550036, 13500, '2022-07-13 13:36:41', '2022-08-14 14:17:54'),
(13, 'Baharul Ahmed', 9, 2, 1, '12616267711', 'Sylhet', 18888812, 32000, '2022-07-03 13:36:41', '2022-08-14 14:18:10'),
(14, 'Jony Ali', 5, 1, 2, '12161616621', 'Sylhet', 1922111111, 5000, '2022-07-01 13:36:41', '2022-08-14 14:18:27');

-- --------------------------------------------------------

--
-- Table structure for table `staff_type`
--

CREATE TABLE `staff_type` (
  `staff_type_id` int(10) NOT NULL,
  `staff_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_type`
--

INSERT INTO `staff_type` (`staff_type_id`, `staff_type`) VALUES
(1, 'Manager'),
(2, 'Housekeeping Manager'),
(3, 'Front Desk Receptionist'),
(4, 'Cheif'),
(5, 'Waiter'),
(6, 'Room Attendant'),
(7, 'Concierge'),
(8, 'Hotel Maintenance Engineer'),
(9, 'Hotel Sales Manager');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `username` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `username`, `email`, `password`, `created_at`) VALUES
(4, 'sababa', 'sababa', '@sababa', '36d0bb75f176cf0fa2d35ab701099618', '2022-02-18 04:40:13'),
(6, 'Hotel Admin', 'admin', '@admin', '21232f297a57a5a743894a0e4a801fc3', '2022-02-18 04:54:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD KEY `customer_id_type` (`id_card_type_id`);

--
-- Indexes for table `emp_history`
--
ALTER TABLE `emp_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `emp_id` (`emp_id`),
  ADD KEY `shift_id` (`shift_id`);

--
-- Indexes for table `id_card_type`
--
ALTER TABLE `id_card_type`
  ADD PRIMARY KEY (`id_card_type_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_id`),
  ADD KEY `room_type_id` (`room_type_id`);

--
-- Indexes for table `room_type`
--
ALTER TABLE `room_type`
  ADD PRIMARY KEY (`room_type_id`);

--
-- Indexes for table `shift`
--
ALTER TABLE `shift`
  ADD PRIMARY KEY (`shift_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`emp_id`),
  ADD KEY `id_card_type` (`id_card_type`),
  ADD KEY `shift_id` (`shift_id`),
  ADD KEY `staff_type_id` (`staff_type_id`);

--
-- Indexes for table `staff_type`
--
ALTER TABLE `staff_type`
  ADD PRIMARY KEY (`staff_type_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `booking_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `emp_history`
--
ALTER TABLE `emp_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `id_card_type`
--
ALTER TABLE `id_card_type`
  MODIFY `id_card_type_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `room_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `room_type`
--
ALTER TABLE `room_type`
  MODIFY `room_type_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `shift`
--
ALTER TABLE `shift`
  MODIFY `shift_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `staff_type`
--
ALTER TABLE `staff_type`
  MODIFY `staff_type_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`id_card_type_id`) REFERENCES `id_card_type` (`id_card_type_id`);

--
-- Constraints for table `emp_history`
--
ALTER TABLE `emp_history`
  ADD CONSTRAINT `emp_history_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `staff` (`emp_id`),
  ADD CONSTRAINT `emp_history_ibfk_2` FOREIGN KEY (`shift_id`) REFERENCES `shift` (`shift_id`);

--
-- Constraints for table `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `room_ibfk_1` FOREIGN KEY (`room_type_id`) REFERENCES `room_type` (`room_type_id`);

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`id_card_type`) REFERENCES `id_card_type` (`id_card_type_id`),
  ADD CONSTRAINT `staff_ibfk_2` FOREIGN KEY (`shift_id`) REFERENCES `shift` (`shift_id`),
  ADD CONSTRAINT `staff_ibfk_3` FOREIGN KEY (`staff_type_id`) REFERENCES `staff_type` (`staff_type_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
