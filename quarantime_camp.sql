-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2020 at 07:22 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quarantime_camp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin`(
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--
INSERT INTO `admin`(`id`, `full_name`, `username`, `password`) VALUES
(1, "manager", "manager", "1d0258c2440a8d19e716292b231e3190");

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test`(
  `id` int NOT NULL UNIQUE,
  `id_patient` int NOT NULL,
  `type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `test`
--
 
INSERT INTO `test`(`id`, `id_patient`, `type`) VALUES
(1, 1, 'pcr'),
(2, 1, 'quick'),
(3, 2, 'pcr'),
(4, 2, 'spo2');


-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient`(
  `id` int NOT NULL UNIQUE,  
  `full_name` varchar(100) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `address` varchar(30) NOT NULL,
  `phone` int NOT NULL,
  `dob` date NOT NULL,
  `room_id` int NOT NULL,
  `location_history` varchar(30) NOT NULL,
  `nurse_id` int NOT NULL,
  `staff_id` int NOT NULL,
  `camp_id` int NOT NULL,
  `symptom` varchar(30) NOT NULL,
  `comorbidity` varchar(30) NOT NULL,
  `addmission_date` varchar(30) NOT NULL,
  `pcr_test` bool,
  `ct_pcr` int,
  `quick_test` bool,
  `ct_quick` int,
  `spo2` float
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `full_name`, `gender`, `address`, `phone`,`dob`, `room_id`, `location_history`, `nurse_id`, `staff_id`, `camp_id`, `symptom`, `comorbidity`, `addmission_date`, `pcr_test`, `ct_pcr`, `quick_test`, `ct_quick`, `spo2`) VALUES
(1, 'Nguyen Van A', 'M', '1720 E CESAR AVENUE', 958444123, '1960-1-1', 101, 'emergencyroom', 3001, 4001, 1, 'fever', 'cancer', '2020-08-01', 0, 0, 0, 0, NULL),
(2, 'Nguyen Van B', 'M', '4867 SUNSET BLVD', 958444234, '1970-2-2', 102, 'normalroom', 3002, 4001, 1, 'dry cough', 'chronic lung diseases', '2020-08-30', 0, NULL, NULL, NULL, 99),
(3, 'Hazel', 'F', '23625 W R HOLMAN HIGHWAY', 958444345, '1980-3-3', 201, 'recuperationroom', 3003, 4002, 2, 'tiredness', 'diabetes', '2020-09-01', NULL, NULL, NULL, NULL, NULL),
(4, 'Elsie', 'M', 'ONE HOAG DRIVE', 958444456, '1990-4-4', 202, 'emergencyroom', 3004, 4003, 3, 'aches', 'heart conditions', '2020-09-02', NULL, NULL, NULL, NULL, NULL),
(5, 'Clara', 'F', 'ONE MEDICAL PLAZA', 958444567, '2000-5-5', 301, 'recuperationroom', 3004, 4004, 4, 'pains', 'immunocompromised state', '2020-09-03', NULL, NULL, NULL, NULL, NULL);
-- --------------------------------------------------------

--
-- Table structure for table `people`
--

CREATE TABLE `people` (
  `id` int NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL,
  `gender` varchar(1) NOT NULL 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `people`
--

INSERT INTO `people` (`id`, `fullname`, `address`, `gender`) VALUES
(1001, 'Cynthia', '2505 U S HIGHWAY 431 NORTH', 'M'),
(1002, 'Heather', '200 MED CENTER DRIVE', 'F'),
(1003, 'Emily', '209 NORTH MAIN STREET', 'M'),
(1004, 'Deborah', '508 GREEN STREET', 'M'),
(2001, 'Jamie', 'ONE HOSPITAL DR SE', 'F'),
(2002, 'Stephanie', '401 VANITY FAIR LANE, PO BOX 618', 'M'),
(2003, 'Karen', 'PO BOX 287', 'F'),
(2004, 'Dawn', 'P O BOX 130', 'M'),
(3001, 'Danielle', 'PO BOX 43', 'F'),
(3002, 'Susan', 'PO BOX 649', 'F'),
(3003, 'Mary', 'PO BOX 600', 'M'),
(3004, 'Heather', 'HIGHWAY 86, AT TOPAWA ROAD', 'M'),
(4001, 'Ashley', '103 MEDICINE WAY ROAD', 'M'),
(4002, 'Mary', 'US HWY 191, HOSPITAL ROAD', 'F'),
(4003, 'Sophia', 'HIGHWAY 264, MILEPOST 388', 'F'),
(4004, 'Julie', '483 WEST SEED FARM ROAD', 'M'),
(5001, 'Michelle', 'STATE ROUTE 264 SOUTH 191', 'M'),
(5002, 'Amanda', 'TWO ST VINCENT CIRCLE', 'F'),
(5003, 'Laura', 'EAST MAIN AND SOUTH 20TH STREET', 'M'),
(5004, 'Kelsey', '638 CALIFORNIA AVENUE', 'M');

-- --------------------------------------------------------

--
-- Table structure for table `managers`
--

CREATE TABLE `managers` (
  `id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `managers`
--

INSERT INTO `managers` (`id`) VALUES
(1001),
(1002),
(1003),
(1004);

-- --------------------------------------------------------

--
-- Table structure for table `volunteers`
--

CREATE TABLE `volunteers` (
  `id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `volunteers`
--

INSERT INTO `volunteers` (`id`) VALUES
(2001),
(2002),
(2003),
(2004);

-- --------------------------------------------------------

--
-- Table structure for table `nurse`
--

CREATE TABLE `nurse` (
  `id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nurse`
--

INSERT INTO `nurse` (`id`) VALUES
(3001),
(3002),
(3003),
(3004);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`) VALUES
(4001),
(4002),
(4003),
(4004);

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `id` int NOT NULL,
  `responsibility` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`id`, `responsibility`) VALUES
(5001, 'cancer'),
(5002, 'lung'),
(5003, 'diabetes'),
(5004, 'heart condition');

-- --------------------------------------------------------

--
-- Table structure for table `building`
--

CREATE TABLE `building` (
  `id` int NOT NULL,
  `camp_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `building`
--

INSERT INTO `building` (`id`, `camp_id`) VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 3),
(5, 4);

-- --------------------------------------------------------

--
-- Table structure for table `camp`
--

CREATE TABLE `camp` (
  `id` int NOT NULL,
  `address` varchar(30),
  `doctor_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `camp`
--

INSERT INTO `camp` (`id`, `address`, `doctor_id`) VALUES
(1, 'ONE HOSPITAL DR SE', 5001),
(2, '200 MED CENTER DRIVE', 5002),
(3, '4867 SUNSET BLVD', 5003),
(4, 'TWO ST VINCENT CIRCLE', 5004);

-- --------------------------------------------------------

--
-- Table structure for table `treatment`
--

CREATE TABLE `treatment` (
  `doctor_id` int NOT NULL,
  `patient_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `treatment`
--

INSERT INTO `treatment` (`doctor_id`, `patient_id`) VALUES
(5001, 1),
(5002, 2),
(5003, 3),
(5004, 4);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `id` int NOT NULL,
  `limited_capacity` int NOT NULL,
  `building_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`id`, `limited_capacity`, `building_id`) VALUES
(101, 2, 1),
(102, 2, 1),
(103, 2, 2),
(104, 2, 2),
(201, 1, 3),
(202, 1, 3),
(203, 1, 4),
(204, 1, 4),
(301, 2, 5),
(302, 2, 5),
(303, 2, 5),
(304, 2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `normalroom`
--

CREATE TABLE `normalroom` (
  `id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `normalroom`
--

INSERT INTO `normalroom` (`id`) VALUES
(101),
(102),
(103),
(104);

-- --------------------------------------------------------

--
-- Table structure for table `emergencyroom`
--

CREATE TABLE `emergencyroom` (
  `id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `emergencyroom`
--

INSERT INTO `emergencyroom` (`id`) VALUES
(201),
(202),
(203),
(204);

-- --------------------------------------------------------

--
-- Table structure for table `recuperationroom`
--

CREATE TABLE `recuperationroom` (
  `id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `recuperationroom`
--

INSERT INTO `recuperationroom` (`id`) VALUES
(301),
(302),
(303),
(304);

-- --------------------------------------------------------

--
-- Table structure for table `medication`
--

CREATE TABLE `medication` (
  `code` varchar(30) NOT NULL UNIQUE,
  `name` varchar(30) NOT NULL,
  `effects` varchar(200) NOT NULL,
  `price` varchar(30) NOT NULL,
  `expiration_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `medication`
--

INSERT INTO `medication` (`code`, `name`, `effects`, `price`, `expiration_date`) VALUES
('2628280-40-8', 'Nirmatrelvir', 'protease inhibitor nirmatrelvir bound to the viral 3CLpro protease enzyme', '$9.51', '2023-01-01'),
('1809249-37-3', 'Remdesivir', 'decreased antiviral activity', '$4.58', '2023-01-01'),
('2349386-89-4', 'Molnupiravir', 'antiviral through the introduction of replication errors during viral RNA replication', '$10.5', '2023-01-01'),
('375823-41-9', 'Tocilizumab', 'lowering an inflammation-causing chemical in the body that can be elevated in the lungs from COVID-19', '$8.39', '2023-01-01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);


--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `managers`
--
ALTER TABLE `managers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `volunteers`
--
ALTER TABLE `volunteers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nurse`
--
ALTER TABLE `nurse`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `building`
--
ALTER TABLE `building`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `camp`
--
ALTER TABLE `camp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `treatment`
--
ALTER TABLE `treatment`
  ADD PRIMARY KEY (`doctor_id`, `patient_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `normalroom`
--
ALTER TABLE `normalroom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emergencyroom`
--
ALTER TABLE `emergencyroom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recuperationroom`
--
ALTER TABLE `recuperationroom`
  ADD PRIMARY KEY (`id`);


--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `people`
--
ALTER TABLE `people`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `managers`
--
ALTER TABLE `managers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `volunteers`
--
ALTER TABLE `volunteers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `nurse`
--
ALTER TABLE `nurse`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `building`
--
ALTER TABLE `building`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `camp`
--
ALTER TABLE `camp`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `normalroom`
--
ALTER TABLE `normalroom`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `emergencyroom`
--
ALTER TABLE `emergencyroom`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `recuperationroom`
--
ALTER TABLE `recuperationroom`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;


--
-- CONSTRAINT for dumped tables
--

--
-- CONSTRAINT for table `patient`
--

ALTER TABLE `patient`
  ADD CONSTRAINT `patient_ibfk_1` FOREIGN KEY (`nurse_id`) REFERENCES `nurse` (`id`),
  ADD CONSTRAINT `patient_ibfk_2` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`),
  ADD CONSTRAINT `patient_ibfk_3` FOREIGN KEY (`camp_id`) REFERENCES `camp` (`id`);

--
-- CONSTRAINT for table `building`
--
ALTER TABLE `building`
  ADD CONSTRAINT `building_ibfk_1` FOREIGN KEY (`camp_id`) REFERENCES `camp` (`id`);

--
-- CONSTRAINT for table `camp`
--
ALTER TABLE `camp`
  ADD CONSTRAINT `camp_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`id`);

--
-- CONSTRAINT for table `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `room_ibfk_1` FOREIGN KEY (`building_id`) REFERENCES `building` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;