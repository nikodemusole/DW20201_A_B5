-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2020 at 09:10 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospitaldw`
--

-- --------------------------------------------------------

--
-- Table structure for table `dim_medication`
--

CREATE TABLE `dim_medication` (
  `MedCode` int(15) DEFAULT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `BrandID` varchar(4) DEFAULT NULL,
  `BrandName` varchar(30) DEFAULT NULL,
  `Price` bigint(20) DEFAULT NULL,
  `MedKey` bigint(20) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `date_from` datetime DEFAULT NULL,
  `date_to` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dim_medication`
--

INSERT INTO `dim_medication` (`MedCode`, `Name`, `BrandID`, `BrandName`, `Price`, `MedKey`, `version`, `date_from`, `date_to`) VALUES
(NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL),
(1, 'Procrastin-X', 'BR01', 'X', 5, 2, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(25, 'Carbamazepine', 'BR01', 'X', 55, 3, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(37, 'Alfuzosin', 'BR01', 'X', 55, 4, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(2, 'Thesisin', 'BR02', 'Foo Labs', 10, 5, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(3, 'Awakin', 'BR02', 'Foo Labs', 25, 6, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(6, 'Ibuprofen', 'BR02', 'Foo Labs', 18, 7, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(7, 'Imbruvica', 'BR02', 'Foo Labs', 30, 8, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(8, 'Meloxicam', 'BR02', 'Foo Labs', 60, 9, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(9, 'Lexapro', 'BR02', 'Foo Labs', 35, 10, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(10, 'Fluoxetine', 'BR02', 'Foo Labs', 30, 11, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(11, 'Duloxetine', 'BR02', 'Foo Labs', 60, 12, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(12, 'Escitalopram', 'BR02', 'Foo Labs', 35, 13, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(13, 'Contrast media', 'BR02', 'Foo Labs', 30, 14, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(14, 'Vasoactives', 'BR02', 'Foo Labs', 18, 15, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(15, 'Analgesics', 'BR02', 'Foo Labs', 18, 16, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(16, 'Antimicrobials', 'BR02', 'Foo Labs', 18, 17, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(17, 'Gastric motility sedatives', 'BR02', 'Foo Labs', 35, 18, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(18, 'Aspirin', 'BR02', 'Foo Labs', 18, 19, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(19, 'Cloxacillin Cephalosporins', 'BR02', 'Foo Labs', 18, 20, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(20, 'Tetracyclines', 'BR02', 'Foo Labs', 18, 21, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(21, 'Sulphonamides', 'BR02', 'Foo Labs', 35, 22, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(22, 'Dihydrocodeine', 'BR02', 'Foo Labs', 60, 23, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(23, 'Temazepam', 'BR02', 'Foo Labs', 60, 24, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(24, 'Fentanyl', 'BR02', 'Foo Labs', 18, 25, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(26, 'Ethosuximide', 'BR02', 'Foo Labs', 30, 26, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(27, 'Retigabine', 'BR02', 'Foo Labs', 18, 27, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(28, 'Topiramate', 'BR02', 'Foo Labs', 18, 28, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(29, 'Pregabalin', 'BR02', 'Foo Labs', 60, 29, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(30, 'Acebutolol', 'BR02', 'Foo Labs', 30, 30, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(31, 'Betaxolol', 'BR02', 'Foo Labs', 35, 31, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(32, 'Propranolol', 'BR02', 'Foo Labs', 35, 32, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(33, 'Nadolol', 'BR02', 'Foo Labs', 18, 33, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(34, 'Metoprolol', 'BR02', 'Foo Labs', 18, 34, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(35, 'Sildenafil', 'BR02', 'Foo Labs', 30, 35, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(36, 'Trospium', 'BR02', 'Foo Labs', 60, 36, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(38, 'Oxybutynin', 'BR02', 'Foo Labs', 60, 37, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(39, 'Tolterodine', 'BR02', 'Foo Labs', 60, 38, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(40, 'Darifenacin', 'BR02', 'Foo Labs', 18, 39, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(41, 'Follitropin', 'BR02', 'Foo Labs', 35, 40, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(42, 'Urofollitropin', 'BR02', 'Foo Labs', 30, 41, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(43, 'Ethanol', 'BR02', 'Foo Labs', 35, 42, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(4, 'Crescavitin', 'BR04', 'Baz Industries', 55, 43, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(5, 'Melioraurin', 'BR05', 'Snafu Pharmaceuticals', 55, 44, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59');

-- --------------------------------------------------------

--
-- Table structure for table `dim_nurse`
--

CREATE TABLE `dim_nurse` (
  `NurseID` int(15) DEFAULT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `Position` varchar(30) DEFAULT NULL,
  `Registered` tinyint(1) DEFAULT NULL,
  `SSN` int(15) DEFAULT NULL,
  `nursekey` bigint(20) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `date_from` datetime DEFAULT NULL,
  `date_to` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dim_nurse`
--

INSERT INTO `dim_nurse` (`NurseID`, `Name`, `Position`, `Registered`, `SSN`, `nursekey`, `version`, `date_from`, `date_to`) VALUES
(NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL),
(101, 'Carla Espinosa', 'Head Nurse', 1, 111111110, 2, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(102, 'Laverne Roberts', 'Nurse', 1, 222222220, 3, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(103, 'Paul Flowers', 'Nurse', 0, 333333330, 4, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(104, 'Lunea Frazier', 'Head Nurse', 1, 333333331, 5, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(105, 'Jessica Dorsey', 'Nurse', 1, 333333332, 6, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(106, 'Hoyt Marquez', 'Nurse', 1, 333333333, 7, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(107, 'Hadassah Dickson', 'Nurse', 1, 333333334, 8, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(108, 'Rafael Black', 'Nurse', 1, 333333335, 9, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(109, 'Kennan Hurley', 'Nurse', 1, 333333336, 10, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(110, 'Ulric Stout', 'Nurse', 1, 333333337, 11, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(111, 'Idona Dodson', 'Nurse', 0, 333333338, 12, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(112, 'Kamal Reynolds', 'Nurse', 0, 333333339, 13, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(113, 'Wayne Wiley', 'Nurse', 1, 333333340, 14, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(114, 'Channing Leblanc', 'Head Nurse', 1, 333333341, 15, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(115, 'Knox Livingston', 'Nurse', 1, 333333342, 16, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(116, 'Melvin Larson', 'Head Nurse', 1, 333333343, 17, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(117, 'Emerald England', 'Head Nurse', 1, 333333344, 18, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(118, 'Luke Lloyd', 'Nurse', 0, 333333345, 19, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(119, 'Jorden Simpson', 'Nurse', 1, 333333346, 20, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59'),
(120, 'Ahmed Sweet', 'Nurse', 0, 333333347, 21, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59');

-- --------------------------------------------------------

--
-- Table structure for table `dim_time`
--

CREATE TABLE `dim_time` (
  `year` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `quarter` int(11) NOT NULL,
  `timekey` bigint(20) NOT NULL,
  `DateAltKey` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dim_medication`
--
ALTER TABLE `dim_medication`
  ADD PRIMARY KEY (`MedKey`),
  ADD KEY `idx_dim_medication_lookup` (`MedCode`),
  ADD KEY `idx_dim_medication_tk` (`MedKey`);

--
-- Indexes for table `dim_nurse`
--
ALTER TABLE `dim_nurse`
  ADD PRIMARY KEY (`nursekey`),
  ADD KEY `idx_dim_nurse_lookup` (`NurseID`),
  ADD KEY `idx_dim_nurse_tk` (`nursekey`);

--
-- Indexes for table `dim_time`
--
ALTER TABLE `dim_time`
  ADD PRIMARY KEY (`timekey`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dim_medication`
--
ALTER TABLE `dim_medication`
  MODIFY `MedKey` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `dim_nurse`
--
ALTER TABLE `dim_nurse`
  MODIFY `nursekey` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `dim_time`
--
ALTER TABLE `dim_time`
  MODIFY `timekey` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
