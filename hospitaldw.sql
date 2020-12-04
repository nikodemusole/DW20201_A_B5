-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2020 at 03:09 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `dim_patient`
--

CREATE TABLE `dim_patient` (
  `patient_key` int(11) NOT NULL,
  `name` tinytext DEFAULT NULL,
  `Address` varchar(30) DEFAULT NULL,
  `Phone` varchar(30) DEFAULT NULL,
  `InsuranceID` int(11) DEFAULT NULL,
  `patient-gender` tinytext DEFAULT NULL,
  `patient-age` double DEFAULT NULL,
  `patient-occupation-subcategory` tinytext DEFAULT NULL,
  `occupation-major-group` tinytext DEFAULT NULL,
  `patient-isfromabroad` tinytext DEFAULT NULL,
  `patient-singapore-area` tinytext DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `date_from` datetime DEFAULT NULL,
  `date_to` datetime DEFAULT NULL,
  `region_key` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dim_patient`
--

INSERT INTO `dim_patient` (`patient_key`, `name`, `Address`, `Phone`, `InsuranceID`, `patient-gender`, `patient-age`, `patient-occupation-subcategory`, `occupation-major-group`, `patient-isfromabroad`, `patient-singapore-area`, `version`, `date_from`, `date_to`, `region_key`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(2, 'John Smith', '42 Foobar Lane', '555-0256', 68476213, 'M', 35, 'Managers', 'GROUP1', 'Y', NULL, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', NULL),
(3, 'Grace Ritchie', '37 Snafu Drive', '555-0512', 36546321, 'F', 38, 'Professionals', 'GROUP2', 'Y', NULL, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', NULL),
(4, 'Random J. Patient', '101 Omgbbq Street', '555-1204', 65465421, 'F', 40, 'Craft and related trades workers', 'GROUP7', 'N', 'Bukit Merah', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', 13),
(5, 'Dennis Doe', '1100 Foobaz Avenue', '555-2048', 68421879, 'M', 25, 'Technicians', 'GROUP3', 'N', 'Yishun', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', 23),
(6, 'Damian Hays', '156-2656 Ornare Av.', '136-7328', 68421880, 'M', 26, 'Technicians', 'GROUP3', 'Y', NULL, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', NULL),
(7, 'Karly Jackson', '975-5765 Ac Avenue', '010-2391', 68421881, 'F', 45, 'Armed forces occupations', 'GROUP10', 'N', 'Woodlands', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', 10),
(8, 'Kato Luna', '643-4443 Cursus. Rd.', '860-3924', 68421882, 'F', 55, 'Professionals', 'GROUP2', 'N', 'Tampines', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', 24),
(9, 'Xandra Skinner', '492-149 Viverra. Street', '760-0449', 68421883, 'F', 56, 'Professionals', 'GROUP2', 'N', 'Toa Payoh', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', 25),
(10, 'Anthony Moses', '819-6082 A Street', '320-2649', 68421884, 'M', 21, 'Craft and related trades workers', 'GROUP7', 'N', 'Bukit Panjang', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', 7),
(11, 'Daryl Decker', 'Ap #914-7548 Cursus St.', '203-3315', 68421885, 'M', 22, 'Service and sales workers', 'GROUP5', 'N', 'Bukit Panjang', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', 7),
(12, 'Zelda Macias', '9418 Ac Rd.', '226-1378', 68421886, 'F', 28, 'Clerical support workers', 'GROUP4', 'N', 'Choa Chu Kang', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', 26),
(13, 'Guy Cash', '996-3237 Aliquet. St.', '448-3875', 68421887, 'M', 28, 'Professionals', 'GROUP2', 'Y', NULL, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', NULL),
(14, 'Dolan Hamilton', '2930 Molestie St.', '136-0958', 68421888, 'F', 26, 'Professionals', 'GROUP2', 'Y', NULL, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', NULL),
(15, 'Thane Byers', 'P.O. Box 615, 7599 Semper St.', '860-2025', 68421889, 'M', 64, 'Technicians', 'GROUP3', 'N', 'Tampines', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', 24),
(16, 'Boris Howard', '906-8071 Orci St.', '252-1109', 68421890, 'M', 54, 'Technicians', 'GROUP3', 'Y', NULL, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', NULL),
(17, 'Elizabeth Chan', '9900 Eget Road', '076-7364', 68421891, 'F', 44, 'Skilled agricultural, forestry and fishery workers', 'GROUP6', 'N', 'Bedok', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', 1),
(18, 'Jelani Snow', '960-2567 Urna. Rd.', '491-8057', 68421892, 'F', 24, 'Service and sales workers', 'GROUP5', 'N', 'Kallang', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', 27),
(19, 'Scott Levy', 'Ap #449-3704 Fringilla Road', '565-4449', 68421893, 'M', 34, 'Professionals', 'GROUP2', 'Y', NULL, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', NULL),
(20, 'Maris Tillman', 'Ap #347-131 Sit Ave', '948-4057', 68421894, 'F', 33, 'Managers', 'GROUP1', 'N', 'Kallang', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', 27),
(21, 'Mara Walton', '5709 Justo Rd.', '222-5502', 68421895, 'F', 35, 'Clerical support workers', 'GROUP4', 'Y', NULL, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', NULL),
(22, 'Jackson Beck', '6255 Massa. Avenue', '020-3493', 68421896, 'M', 60, 'Skilled agricultural, forestry and fishery workers', 'GROUP6', 'N', 'Ang Mo Kio', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', 28),
(23, 'Darius Cooper', 'Ap #960-4409 Mauris Rd.', '868-4161', 68421897, 'F', 29, 'Clerical support workers', 'GROUP4', 'N', 'Bukit Batok', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', 29),
(24, 'Dillon Hess', '2301 Amet Rd.', '055-4215', 68421898, 'M', 32, 'Technicians', 'GROUP3', 'Y', NULL, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', NULL),
(25, 'Daniel Chambers', '618 Ultrices Av.', '906-1257', 68421899, 'M', 65, 'Skilled agricultural, forestry and fishery workers', 'GROUP6', 'N', 'Kallang', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', 27),
(26, 'Stephanie Mueller', 'Ap #573-2893 Massa. Street', '758-8606', 68421900, 'F', 26, 'Clerical support workers', 'GROUP4', 'N', 'Ang Mo Kio', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', 28),
(27, 'Garrett Massey', 'Ap #980-4115 At, Ave', '085-5007', 68421901, 'F', 36, 'Managers', 'GROUP1', 'N', 'Bukit Merah', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', 13),
(28, 'Gay Olson', 'Ap #439-9506 Laoreet, Street', '415-9560', 68421902, 'F', 32, 'Technicians', 'GROUP3', 'Y', NULL, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', NULL),
(29, 'Xaviera Noble', '731-8219 Aliquet St.', '392-0206', 68421903, 'F', 45, 'Technicians', 'GROUP3', 'N', 'Punggol', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', 30),
(30, 'Montana Weaver', 'Ap #710-5526 A, St.', '815-8804', 68421904, 'F', 35, 'Managers', 'GROUP1', 'Y', NULL, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', NULL),
(31, 'Clarke Pennington', '2821 Ridiculus Street', '177-5796', 68421905, 'F', 55, 'Technicians', 'GROUP3', 'Y', NULL, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', NULL),
(32, 'Roanna Gentry', 'P.O. Box 266, 1853 Scelerisque', '689-0008', 68421906, 'F', 27, 'Clerical support workers', 'GROUP4', 'Y', NULL, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', NULL),
(33, 'Lev Schneider', '4116 Magna. St.', '551-6013', 68421907, 'F', 40, 'Managers', 'GROUP1', 'Y', NULL, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', NULL),
(34, 'Troy Underwood', '3330 Nibh. St.', '857-4502', 68421908, 'F', 42, 'Clerical support workers', 'GROUP4', 'N', 'Pasir Ris', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', 31),
(35, 'Zelda Sherman', 'P.O. Box 429, 7338 Nam Ave', '082-7403', 68421909, 'F', 27, 'Service and sales workers', 'GROUP5', 'N', 'Serangoon', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', 32),
(36, 'Jesse Kerr', '677-1698 Justo Ave', '520-6690', 68421910, 'F', 41, 'Managers', 'GROUP1', 'Y', NULL, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', NULL),
(37, 'Tashya Martin', '297-6150 Velit. Rd.', '992-7095', 68421911, 'F', 63, 'Skilled agricultural, forestry and fishery workers', 'GROUP6', 'N', 'Yishun', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', 23),
(38, 'Dominic Moran', '561-2490 Ac Ave', '120-5936', 68421912, 'M', 44, 'Clerical support workers', 'GROUP4', 'N', 'Woodlands', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', 10),
(39, 'Colorado Massey', '8601 Erat St.', '940-3349', 68421913, 'F', 25, 'Elementary occupations', 'GROUP9', 'N', 'Bukit Merah', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', 13),
(40, 'Jamal Dickson', '883-1729 Semper. Ave', '517-0124', 68421914, 'M', 30, 'Clerical support workers', 'GROUP4', 'N', 'Yishun', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', 23),
(41, 'Lynn Juarez', '3393 Dolor Rd.', '744-5123', 68421915, 'F', 31, 'Clerical support workers', 'GROUP4', 'N', 'Toa Payoh', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', 25),
(42, 'Austin Lindsey', 'P.O. Box 745, 3393 Pulvinar Av', '898-5019', 68421916, 'M', 24, 'Elementary occupations', 'GROUP9', 'N', 'Woodlands', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', 10),
(43, 'Vivien Melendez', '638-7555 Morbi Av.', '993-5490', 68421917, 'F', 32, 'Clerical support workers', 'GROUP4', 'Y', NULL, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', NULL),
(44, 'Merritt Howell', 'Ap #424-1895 Dui Ave', '458-3638', 68421918, 'F', 25, 'Elementary occupations', 'GROUP9', 'Y', NULL, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', NULL),
(45, 'Tatum Livingston', 'P.O. Box 215, 9497 Justo Ave', '361-6793', 68421919, 'F', 22, 'Elementary occupations', 'GROUP9', 'N', 'Bukit Panjang', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', 7),
(46, 'Tashya Mendez', 'Ap #773-7842 Tempor Avenue', '143-4973', 68421920, 'F', 23, 'Elementary occupations', 'GROUP9', 'N', 'Bukit Panjang', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', 7),
(47, 'Naomi Conway', '991-9863 Integer St.', '959-5430', 68421921, 'F', 33, 'Clerical support workers', 'GROUP4', 'N', 'Choa Chu Kang', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', 26),
(48, 'Clark Giles', '951-4646 Dictum. Av.', '596-7761', 68421922, 'F', 29, 'Service and sales workers', 'GROUP5', 'N', 'Hougang', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', 33),
(49, 'Jocelyn Rollins', 'P.O. Box 642, 5967 Dui St.', '649-5796', 68421923, 'F', 42, 'Managers', 'GROUP1', 'Y', NULL, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', NULL),
(50, 'Carl Prince', '4884 Ultrices Rd.', '360-8619', 68421924, 'F', 45, 'Clerical support workers', 'GROUP4', 'N', 'Tampines', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', 24),
(51, 'Keane Mckinney', 'Ap #720-4584 Enim Rd.', '115-4196', 68421925, 'F', 45, 'Managers', 'GROUP1', 'Y', NULL, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', NULL),
(52, 'Adrienne Foley', '959-6534 Posuere Av.', '918-2745', 68421926, 'F', 50, 'Clerical support workers', 'GROUP4', 'Y', NULL, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', NULL),
(53, 'Noelle Mcclure', 'P.O. Box 107, 7420 Nunc Ave', '454-6452', 68421927, 'F', 21, 'Clerical support workers', 'GROUP4', 'N', 'Kallang', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', 27),
(54, 'Montana Kaufman', 'Ap #848-3035 Quam Rd.', '045-9140', 68421928, 'F', 26, 'Service and sales workers', 'GROUP5', 'Y', NULL, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', NULL),
(55, 'Hamish Farley', '895-9905 Nec Ave', '425-9480', 68421929, 'F', 45, 'Skilled agricultural, forestry and fishery workers', 'GROUP6', 'Y', NULL, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', NULL),
(56, 'Mikayla Hebert', '3515 Ullamcorper, St.', '593-8052', 68421930, 'F', 22, 'Clerical support workers', 'GROUP4', 'N', 'Bedok', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', 1),
(57, 'Winter Peck', 'Ap #997-8390 Nullam St.', '525-5040', 68421931, 'F', 23, 'Service and sales workers', 'GROUP5', 'N', 'Ang Mo Kio', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', 28),
(58, 'Sopoline Clayton', '933-6221 Lectus, Av.', '389-7295', 68421932, 'F', 28, 'Clerical support workers', 'GROUP4', 'N', 'Bukit Batok', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', 29),
(59, 'Amir Madden', '727-5043 Proin Av.', '761-0978', 68421933, 'M', 23, 'Service and sales workers', 'GROUP5', 'N', 'Punggol', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', 30),
(60, 'Glenna Contreras', '464-2592 Sodales St.', '183-8958', 68421934, 'F', 54, 'Technicians', 'GROUP3', 'N', 'Kallang', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', 27),
(61, 'Nasim Carroll', '1955 Mauris. Road', '822-6176', 68421935, 'M', 58, 'Technicians', 'GROUP3', 'Y', NULL, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', NULL),
(62, 'Mariko Kirkland', 'P.O. Box 835, 836 Quisque Av.', '065-1857', 68421936, 'F', 60, 'Technicians', 'GROUP3', 'Y', NULL, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', NULL),
(63, 'Timon Holmes', 'P.O. Box 889, 3566 Eget St.', '520-8106', 68421937, 'M', 55, 'Skilled agricultural, forestry and fishery workers', 'GROUP6', 'N', 'Sembawang', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', 34),
(64, 'Palmer Quinn', '354-8004 Mauris Street', '578-9933', 68421938, 'M', 26, 'Service and sales workers', 'GROUP5', 'N', 'Punggol', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', 30),
(65, 'Alma Wiggins', 'P.O. Box 585, 2796 Eu Ave', '015-0460', 68421939, 'F', 36, 'Plant and machine operators and assemblers', 'GROUP8', 'N', 'Geylang', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', 35),
(66, 'Quincy Smith', '910-7007 Gravida Av.', '055-1805', 68421940, 'M', 38, 'Professionals', 'GROUP2', 'Y', NULL, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', NULL),
(67, 'Azalia Alston', 'P.O. Box 747, 2039 Tempor, St.', '317-0137', 68421941, 'F', 39, 'Plant and machine operators and assemblers', 'GROUP8', 'N', 'Queenstown', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', 36),
(68, 'Lareina Ratliff', 'P.O. Box 314, 5242 Sem Road', '007-2548', 68421942, 'F', 40, 'Plant and machine operators and assemblers', 'GROUP8', 'N', 'Queenstown', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', 36),
(69, 'Adena Whitaker', '7486 Consectetuer Road', '874-5171', 68421943, 'F', 71, 'Technicians', 'GROUP3', 'N', 'Pasir Ris', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', 31),
(70, 'Autumn Mcfadden', '765-4770 Mauris Avenue', '237-5096', 68421944, 'F', 24, 'Elementary occupations', 'GROUP9', 'N', 'Serangoon', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', 32),
(71, 'Otto Walker', 'P.O. Box 615, 9901 Proin St.', '843-1006', 68421945, 'M', 26, 'Service and sales workers', 'GROUP5', 'N', 'Geylang', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', 35),
(72, 'Illana Duke', '349-2412 Sed, Rd.', '373-1072', 68421946, 'F', 28, 'Service and sales workers', 'GROUP5', 'Y', NULL, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', NULL),
(73, 'Anne Larsen', '447-7398 Sem, St.', '796-5920', 68421947, 'F', 61, 'Technicians', 'GROUP3', 'Y', NULL, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', NULL),
(74, 'Burke Bradshaw', '5717 Nam St.', '357-1988', 68421948, 'M', 37, 'Professionals', 'GROUP2', 'Y', NULL, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', NULL),
(75, 'Cameron Clay', '1667 Urna. Avenue', '463-3346', 68421949, 'F', 29, 'Service and sales workers', 'GROUP5', 'N', 'Bukit Merah', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', 13),
(76, 'Myles Lott', 'Ap #299-3208 Taciti Ave', '782-5751', 68421950, 'F', 25, 'Craft and related trades workers', 'GROUP7', 'N', 'Yishun', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', 23),
(77, 'Duncan Huber', '389 Libero. Road', '935-1029', 68421951, 'M', 66, 'Technicians', 'GROUP3', 'N', 'Toa Payoh', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', 25),
(78, 'Dylan Brown', '746-9985 Lacus. Street', '538-5767', 68421952, 'F', 29, 'Service and sales workers', 'GROUP5', 'N', 'Woodlands', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', 10),
(79, 'Amal Velasquez', '513-2360 Quis Rd.', '407-6084', 68421953, 'F', 26, 'Craft and related trades workers', 'GROUP7', 'N', 'Tampines', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', 24),
(80, 'Kyla Ray', 'Ap #368-6233 Tellus St.', '942-6027', 68421954, 'F', 37, 'Professionals', 'GROUP2', 'Y', NULL, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', NULL),
(81, 'Gay Beard', 'P.O. Box 804, 2864 Natoque Rd.', '308-6101', 68421955, 'M', 25, 'Craft and related trades workers', 'GROUP7', 'N', 'Serangoon', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', 32),
(82, 'Xerxes Browning', '736-1523 Et Rd.', '786-5441', 68421956, 'M', 21, 'Craft and related trades workers', 'GROUP7', 'N', 'Geylang', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', 35),
(83, 'Asher Stanley', 'P.O. Box 694, 6194 Fringilla A', '695-9415', 68421957, 'F', 29, 'Clerical support workers', 'GROUP4', 'Y', NULL, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', NULL),
(84, 'Neve Harrison', '673-5937 Id Avenue', '548-0900', 68421958, 'M', 25, 'Elementary occupations', 'GROUP9', 'Y', NULL, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', NULL),
(85, 'Craig Tran', '978-3036 Semper Rd.', '728-7989', 68421959, 'M', 23, 'Craft and related trades workers', 'GROUP7', 'N', 'Bukit Merah', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', 13),
(86, 'Reuben Burgess', '938 Enim Rd.', '952-1926', 68421960, 'M', 30, 'Clerical support workers', 'GROUP4', 'N', 'Tampines', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', 24),
(87, 'Brianna Abbott', 'P.O. Box 225, 3145 Suscipit St', '252-6313', 68421961, 'F', 35, 'Armed forces occupations', 'GROUP10', 'N', 'Hougang', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', 33),
(88, 'Clio Stanton', '7714 Et Rd.', '622-6400', 68421962, 'M', 30, 'Service and sales workers', 'GROUP5', 'Y', NULL, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', NULL),
(89, 'George Morales', '952-6477 Habitant St.', '175-9048', 68421963, 'M', 35, 'Service and sales workers', 'GROUP5', 'Y', NULL, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', NULL),
(90, 'Meghan Stafford', 'Ap #856-1275 Nunc, Rd.', '676-7976', 68421964, 'F', 35, 'Service and sales workers', 'GROUP5', 'N', 'Bedok', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', 1),
(91, 'Preston Clemons', '578-2058 Non, Avenue', '019-7007', 68421965, 'M', 34, 'Service and sales workers', 'GROUP5', 'Y', NULL, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', NULL),
(92, 'Porter Fowler', '4397 Sit St.', '816-0910', 68421966, 'F', 39, 'Professionals', 'GROUP2', 'Y', NULL, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', NULL),
(93, 'Judith Newton', 'P.O. Box 877, 1385 Fermentum R', '280-5749', 68421967, 'F', 34, 'Service and sales workers', 'GROUP5', 'N', 'Ang Mo Kio', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', 28),
(94, 'Linda Hogan', 'P.O. Box 172, 6371 Dui St.', '853-7325', 68421968, 'F', 31, 'Clerical support workers', 'GROUP4', 'N', 'Bukit Batok', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', 29),
(95, 'Jane Adams', 'Ap #658-2243 Magna Av.', '611-2089', 68421969, 'F', 36, 'Service and sales workers', 'GROUP5', 'Y', NULL, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', NULL),
(96, 'Jane Daniels', 'Ap #702-9417 Amet, Rd.', '822-2670', 68421970, 'F', 45, 'Elementary occupations', 'GROUP9', 'N', 'Kallang', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', 27),
(97, 'Gisela Middleton', '975-5195 Accumsan Road', '221-0312', 68421971, 'F', 30, 'Clerical support workers', 'GROUP4', 'N', 'Ang Mo Kio', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', 28),
(98, 'Leilani Cortez', '4868 Elit Rd.', '918-2847', 68421972, 'F', 40, 'Professionals', 'GROUP2', 'N', 'Bukit Merah', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', 13),
(99, 'Indira Hickman', 'P.O. Box 973, 5876 Elit Ave', '856-1389', 68421973, 'F', 24, 'Elementary occupations', 'GROUP9', 'Y', NULL, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', NULL),
(100, 'Hedley Gutierrez', '532-2364 Sit Avenue', '517-0875', 68421974, 'M', 48, 'Professionals', 'GROUP2', 'Y', NULL, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', NULL),
(101, 'Jacob Flores', '5765 Imperdiet Rd.', '050-1252', 68421975, 'M', 44, 'Professionals', 'GROUP2', 'N', 'Geylang', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', 35),
(102, 'Troy Joseph', 'Ap #987-3561 Amet Street', '542-7519', 68421976, 'M', 25, 'Armed forces occupations', 'GROUP10', 'N', 'Bukit Merah', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', 13),
(103, 'Murphy Watts', '725-6461 Ridiculus Av.', '723-3569', 68421977, 'M', 29, 'Clerical support workers', 'GROUP4', 'Y', NULL, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', NULL),
(104, 'Clinton Foreman', '6318 Arcu. Rd.', '267-8604', 68421978, 'M', 38, 'Service and sales workers', 'GROUP5', 'Y', NULL, 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', NULL),
(105, 'Jillian Wood', 'P.O. Box 922, 1851 Non Avenue', '007-2188', 68421979, 'F', 45, 'Professionals', 'GROUP2', 'N', 'Pasir Ris', 1, '1900-01-01 00:00:00', '2199-12-31 23:59:59', 31),
(106, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL);

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

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

CREATE TABLE `region` (
  `region_name` text DEFAULT NULL,
  `area_name` text DEFAULT NULL,
  `region_key` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `region`
--

INSERT INTO `region` (`region_name`, `area_name`, `region_key`) VALUES
('East', 'Bedok', 1),
('East', ' Tampines', 2),
('East', ' Pasir Ris', 3),
('East', NULL, 4),
('West', 'Jurong West', 5),
('West', ' Bukit Batok ', 6),
('West', 'Bukit Panjang', 7),
('West', ' Sembawang', 8),
('West', ' Choa Chu Kang', 9),
('North', 'Woodlands', 10),
('North', ' Yishun', 11),
('North', NULL, 12),
('Central', 'Bukit Merah', 13),
('Central', ' Tao Payoh', 14),
('Central', ' Geylang', 15),
('Central', ' Kallang', 16),
('Central', ' Queenstown', 17),
('North-East', 'Sengkang', 18),
('North-East', ' Hougang', 19),
('North-East', ' Punggol', 20),
('North-East', ' Ang Mo Kio', 21),
('North-East', ' Serangoon', 22),
(NULL, 'Yishun', 23),
(NULL, 'Tampines', 24),
(NULL, 'Toa Payoh', 25),
(NULL, 'Choa Chu Kang', 26),
(NULL, 'Kallang', 27),
(NULL, 'Ang Mo Kio', 28),
(NULL, 'Bukit Batok', 29),
(NULL, 'Punggol', 30),
(NULL, 'Pasir Ris', 31),
(NULL, 'Serangoon', 32),
(NULL, 'Hougang', 33),
(NULL, 'Sembawang', 34),
(NULL, 'Geylang', 35),
(NULL, 'Queenstown', 36);

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
-- Indexes for table `dim_patient`
--
ALTER TABLE `dim_patient`
  ADD PRIMARY KEY (`patient_key`),
  ADD KEY `idx_dim_patient_tk` (`patient_key`),
  ADD KEY `idx_dim_patient_lookup` (`patient_key`);

--
-- Indexes for table `dim_time`
--
ALTER TABLE `dim_time`
  ADD PRIMARY KEY (`timekey`);

--
-- Indexes for table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`region_key`),
  ADD UNIQUE KEY `idx_region_pk` (`region_key`),
  ADD KEY `idx_region_lookup` (`region_name`(768));

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
-- AUTO_INCREMENT for table `dim_patient`
--
ALTER TABLE `dim_patient`
  MODIFY `patient_key` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `dim_time`
--
ALTER TABLE `dim_time`
  MODIFY `timekey` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `region`
--
ALTER TABLE `region`
  MODIFY `region_key` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
