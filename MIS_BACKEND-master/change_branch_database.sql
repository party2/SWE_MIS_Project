-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.32-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for cp
CREATE DATABASE IF NOT EXISTS `cp` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `cp`;

-- Dumping structure for table cp.auth_types
CREATE TABLE IF NOT EXISTS `auth_types` (
  `id` varchar(150) NOT NULL,
  `type` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table cp.auth_types: ~0 rows (approximately)
INSERT INTO `auth_types` (`id`, `type`) VALUES
	('stock_assistant_cc', 'Stock Assistant CC'),
	('stu', 'Student');

-- Dumping structure for table cp.branches
CREATE TABLE IF NOT EXISTS `branches` (
  `id` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `name` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table cp.branches: ~0 rows (approximately)

-- Dumping structure for table cp.branch_change_users
CREATE TABLE IF NOT EXISTS `branch_change_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `priority1` varchar(255) NOT NULL,
  `priority2` varchar(255) NOT NULL,
  `priority3` varchar(255) NOT NULL,
  `priority4` varchar(255) NOT NULL,
  `priority5` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table cp.branch_change_users: ~0 rows (approximately)

-- Dumping structure for table cp.branch_list
CREATE TABLE IF NOT EXISTS `branch_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_name` varchar(255) NOT NULL,
  `branch_code` varchar(255) NOT NULL,
  `branch_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table cp.branch_list: ~33 rows (approximately)
INSERT INTO `branch_list` (`id`, `branch_name`, `branch_code`, `branch_type`) VALUES
	(1, 'Computer Science', 'CS', 'Science'),
	(2, 'Information Technology', 'IT', 'Science'),
	(3, 'Electronics', 'EC', 'Science'),
	(4, 'Mechanical', 'ME', 'Science'),
	(5, 'Civil', 'CE', 'Science'),
	(6, 'Electrical', 'EE', 'Science'),
	(7, 'Chemical', 'CH', 'Science'),
	(8, 'Biotechnology', 'BT', 'Science'),
	(9, 'Agriculture', 'AG', 'Science'),
	(10, 'BBA', 'BBA', 'Commerce'),
	(11, 'BCA', 'BCA', 'Commerce'),
	(12, 'B.Com', 'B.Com', 'Commerce'),
	(13, 'B.Sc', 'B.Sc', 'Commerce'),
	(14, 'B.A', 'B.A', 'Commerce'),
	(15, 'MBA', 'MBA', 'Commerce'),
	(16, 'MCA', 'MCA', 'Commerce'),
	(17, 'M.Com', 'M.Com', 'Commerce'),
	(18, 'M.Sc', 'M.Sc', 'Commerce'),
	(19, 'M.A', 'M.A', 'Commerce'),
	(20, 'Pharmacy', 'PH', 'Commerce'),
	(21, 'Nursing', 'NU', 'Commerce'),
	(22, 'Diploma', 'Diploma', 'Commerce'),
	(23, 'Polytechnic', 'Polytechnic', 'Commerce'),
	(24, 'Arts', 'Arts', 'Commerce'),
	(25, 'Science', 'Science', 'Commerce'),
	(26, 'Commerce', 'Commerce', 'Commerce'),
	(27, 'Law', 'Law', 'Commerce'),
	(28, 'Education', 'Education', 'Commerce'),
	(29, 'Management', 'Management', 'Commerce'),
	(30, 'Engineering', 'Engineering', 'Commerce'),
	(31, 'Medical', 'Medical', 'Commerce'),
	(32, 'Dental', 'Dental', 'Commerce'),
	(33, 'Pharmacy', 'Pharmacy', 'Commerce');

-- Dumping structure for table cp.cbcs_branches
CREATE TABLE IF NOT EXISTS `cbcs_branches` (
  `id` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `status` int(11) NOT NULL,
  `wef` varchar(20) NOT NULL,
  `wet` varchar(20) NOT NULL,
  KEY `Index 1` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table cp.cbcs_branches: ~72 rows (approximately)
INSERT INTO `cbcs_branches` (`id`, `name`, `status`, `wef`, `wet`) VALUES
	('agl', 'Applied Geology', 1, '2019-2020', '2019-2020'),
	('agp', 'Applied Geophysics', 1, '2019-2020', '2019-2020'),
	('phy', 'Physics', 1, '2019-2020', '2019-2020'),
	('chem', 'Chemistry', 1, '2019-2020', '2019-2020'),
	('civ', 'Civil Engineering', 1, '2019-2020', '2019-2020'),
	('comm', 'Common Branch for 1st Year', 1, '2019-2020', '2019-2020'),
	('cse', 'Computer Science and Engineering', 1, '2019-2020', '2019-2020'),
	('cse+cse', 'Computer Science and Engineering+Computer Science and Engineering', 1, '2019-2020', '2019-2020'),
	('cseis', 'Computer Science and Engineering with Spl. in Information Security', 1, '2019-2020', '2019-2020'),
	('ece', 'Electronics and Communication Engineering', 1, '2019-2020', '2019-2020'),
	('ee', 'Electrical Engineering', 1, '2019-2020', '2019-2020'),
	('eg', 'Engineering Geology', 1, '2019-2020', '2019-2020'),
	('env', 'Environmental Engineering', 1, '2019-2020', '2019-2020'),
	('ep', 'Engineering Physics', 1, '2019-2020', '2019-2020'),
	('eqse', 'Earthquake Science & Engineering', 1, '2019-2020', '2019-2020'),
	('ese', 'Environmental Science and Engineering', 1, '2019-2020', '2019-2020'),
	('fe', 'Fuel Engineering', 1, '2019-2020', '2019-2020'),
	('geo', 'Geomatics', 1, '2019-2020', '2019-2020'),
	('gte', 'Geotechnical Engineering', 1, '2019-2020', '2019-2020'),
	('iem', 'Industrial Engineering and Management', 1, '2019-2020', '2019-2020'),
	('m&c', 'Mathematics and Computing', 1, '2019-2020', '2019-2020'),
	('mba', 'Master of Business Administration', 1, '2019-2020', '2019-2020'),
	('me', 'Mining Engineering', 1, '2019-2020', '2019-2020'),
	('mech', 'Mechanical Engineering', 1, '2019-2020', '2019-2020'),
	('mech+mfg', 'Mechanical Engg. (Spl: Manufacturing Engineering)', 1, '2019-2020', '2019-2020'),
	('mech+te', 'Mechanical Engg. (Spl: Thermal Engineering)', 1, '2019-2020', '2019-2020'),
	('mee', 'Mechanical Engg (Spl: Machine Design)', 1, '2019-2020', '2019-2020'),
	('met', 'Mechanical Engg. (Spl: Maintenance Engineering and Tribology)', 1, '2019-2020', '2019-2020'),
	('mexp', 'Mineral Exploration', 1, '2019-2020', '2019-2020'),
	('mineee', 'Mine Electrical Engineering', 1, '2019-2020', '2019-2020'),
	('mle', 'Mineral Engineering', 1, '2019-2020', '2019-2020'),
	('mme', 'Mining Machinery Engineering', 1, '2019-2020', '2019-2020'),
	('ocm', 'Opencast Mining', 1, '2019-2020', '2019-2020'),
	('ooce', 'Optoelectronics and Optical Communication Engineering', 1, '2019-2020', '2019-2020'),
	('pe', 'Petroleum Engineering', 1, '2019-2020', '2019-2020'),
	('peed', 'Power Electronics and Electrical Drives', 1, '2019-2020', '2019-2020'),
	('pexp', 'Petroleum Exploration', 1, '2019-2020', '2019-2020'),
	('phd', 'Doctor of Philosophy', 1, '2019-2020', '2019-2020'),
	('prep', 'Preparatory', 1, '2019-2020', '2019-2020'),
	('pse', 'Power System Engineering', 1, '2019-2020', '2019-2020'),
	('jrf', 'Junior Research Fellow', 1, '2019-2020', '2019-2020'),
	('rfme', 'RF & Microwave Engineering', 1, '2019-2020', '2019-2020'),
	('se', 'Structural Engineering', 1, '2019-2020', '2019-2020'),
	('tust', 'Tunnelling and Underground Space Technology', 1, '2019-2020', '2019-2020'),
	('vlsid', 'VLSI Design', 1, '2019-2020', '2019-2020'),
	('da', 'Data Analytics', 1, '2019-2020', '2019-2020'),
	('gexp', 'Geo-Exploration', 1, '2019-2020', '2019-2020'),
	('ce', 'Chemical Engineering', 1, '2019-2020', '2019-2020'),
	('hss', 'Humanities & Social Sciences', 1, '2019-2020', '2019-2020'),
	('es', 'Environmental Science', 1, '2019-2020', '2019-2020'),
	('eng', 'English', 1, '2019-2020', '2019-2020'),
	('math', 'Mathematics', 1, '2019-2020', '2019-2020'),
	('stat', 'Statistics', 1, '2019-2020', '2019-2020'),
	('mgmt', 'Management', 1, '2019-2020', '2019-2020'),
	('csp', 'Communication and Signal Processing', 1, '2019-2020', '2019-2020'),
	('me+me', 'Mining Engineering+Mining Engineering', 1, '2019-2020', '2019-2020'),
	('ei', 'Electronics and Instrumentation Engineering', 1, '2019-2020', '2019-2020'),
	('om', 'Operation Management', 1, '2019-2020', '2019-2020'),
	('fm', 'Financial Management', 1, '2019-2020', '2019-2020'),
	('mle+mle', 'Mineral Engineering+Mineral Engineering', 1, '2019-2020', '2019-2020'),
	('emba', 'Executive Master of Business Administration', 1, '2019-2020', '2019-2020'),
	('min', 'Mining Engineering', 1, '2019-2020', '2019-2020'),
	('online', 'Online', 1, '2019-2020', '2019-2020'),
	('ba', 'Business Analytics', 1, '2020-2021', '2020-2021'),
	('phse', 'Pharmaceutical Science & Engineering', 1, '2020-2021', '2020-2021'),
	('philo', 'Philosophy', 1, '2020-2021', '2020-2021'),
	('mlmte', 'Mineral and Metallurgical Engineering', 1, '2020-2021', '2020-2021'),
	('fmme', 'Fuel, Minerals and Metallurgical Engineering', 1, '2021-2022', '2021-2022'),
	('smc', 'Social Media and Culture', 1, '2021-2022', '2021-2022'),
	('psycho', 'Psychology', 1, '2021-2022', '2021-2022'),
	('soci', 'Sociology', 1, '2022-2023', '2022-2023'),
	('dhss', 'Digital Humanities and Social Sciences', 1, '2023-2024', '2023-2024');

-- Dumping structure for table cp.cbcs_courses
CREATE TABLE IF NOT EXISTS `cbcs_courses` (
  `id` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `duration` int(2) NOT NULL,
  `status` int(11) NOT NULL,
  `wef` varchar(20) NOT NULL,
  `wet` varchar(20) NOT NULL,
  KEY `Index 1` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table cp.cbcs_courses: ~28 rows (approximately)
INSERT INTO `cbcs_courses` (`id`, `name`, `duration`, `status`, `wef`, `wet`) VALUES
	('b.tech', 'Bachelor of Technology', 4, 1, '2019-2020', '2019-2020'),
	('be', 'Bachelor of Engineering', 4, 1, '2019-2020', '2019-2020'),
	('comm', 'Common Course for 1st Year', 1, 1, '2019-2020', '2019-2020'),
	('dualdegree', 'Dual Degree', 5, 1, '2019-2020', '2019-2020'),
	('execmba', 'Executive Master of Business Administration', 3, 1, '2019-2020', '2019-2020'),
	('exemtech', 'Master of Technology (3 Years)', 3, 1, '2019-2020', '2019-2020'),
	('honour', 'Honours Course', 2, 1, '2019-2020', '2019-2020'),
	('int.m.sc', 'Integrated Master of Science', 5, 1, '2019-2020', '2019-2020'),
	('int.m.tech', 'Integrated Master of Technology', 5, 1, '2019-2020', '2019-2020'),
	('int.msc.tech', 'Integrated Master of Science and Technology', 5, 1, '2019-2020', '2019-2020'),
	('m.phil', 'Master of Philosophy', 1, 1, '2019-2020', '2019-2020'),
	('m.sc', 'Master of Science', 2, 1, '2019-2020', '2019-2020'),
	('m.sc.tech', 'Master of Science and Technology', 3, 1, '2019-2020', '2019-2020'),
	('m.tech', 'Master of Technology', 2, 1, '2019-2020', '2019-2020'),
	('mba', 'Master of Business Administration', 2, 1, '2019-2020', '2019-2020'),
	('minor', 'Minor Course', 2, 1, '2019-2020', '2019-2020'),
	('prep', 'Preparatory', 1, 1, '2019-2020', '2019-2020'),
	('jrf', 'Doctor of Philosophy', 7, 1, '2019-2020', '2019-2020'),
	('online', 'Online', 1, 1, '2019-2020', '2019-2020'),
	('mbaba', 'Master of Business Administration (BA)', 2, 1, '2020-2021', '2020-2021'),
	('dualdegree_categoryA', 'Dual Degree (Category A)', 3, 1, '2021-2022', '2021-2022'),
	('dualdegree_categoryB', 'Dual Degree (Category B)', 3, 1, '2021-2022', '2021-2022'),
	('dualdegree_categoryC', 'Dual Degree (Category C)', 3, 1, '2021-2022', '2021-2022'),
	('doublemajor', 'Double Major', 2, 1, '2021-2022', '2021-2022'),
	('PH.D', 'Doctor of Philosophy', 7, 0, '2019-2020', '2019-2020'),
	('MBA BA', 'Master of Business Administration', 2, 0, '2020-2021', '2020-2021'),
	('ma', 'Master of Arts', 2, 1, '2023-2024', '2023-2024'),
	('pgd', 'PG Diploma', 2, 1, '2023-2024', '2023-2024');

-- Dumping structure for table cp.change_branch_log
CREATE TABLE IF NOT EXISTS `change_branch_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admn_no` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `current_dept_id` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `current_course_id` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `current_branch_id` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `session` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `session_year` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `acad_status` enum('P','R','A') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'P',
  `acad_id` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `acad_date_time` datetime NOT NULL DEFAULT current_timestamp(),
  `timestamp` datetime NOT NULL,
  `ip` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `created_by` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modify_by` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `modify_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `description` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `reason_file` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `is_deleted` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `Index 2` (`admn_no`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table cp.change_branch_log: ~1 rows (approximately)
INSERT INTO `change_branch_log` (`id`, `admn_no`, `current_dept_id`, `current_course_id`, `current_branch_id`, `session`, `session_year`, `acad_status`, `acad_id`, `acad_date_time`, `timestamp`, `ip`, `created_by`, `created_date`, `modify_by`, `modify_date`, `description`, `reason_file`, `is_deleted`) VALUES
	(1, '1926JE002', 'mc', 'int.m.tech', 'm&c', 'Monsoon', '2024-2025', 'P', '3114884', '2023-11-02 18:01:20', '2024-04-06 04:48:24', '127.0.0.1', '1926JE002', '2024-04-06 04:48:24', NULL, '2024-04-06 04:48:24', NULL, NULL, 0);

-- Dumping structure for table cp.change_branch_option
CREATE TABLE IF NOT EXISTS `change_branch_option` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cb_log_id` int(11) DEFAULT NULL,
  `dept_id` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `course_id` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `branch_id` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `offered` enum('0','1') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0',
  `priority` int(11) DEFAULT NULL,
  `created_by` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modify_by` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `modify_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `is_deleted` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `Index 2` (`course_id`,`branch_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table cp.change_branch_option: ~4 rows (approximately)
INSERT INTO `change_branch_option` (`id`, `cb_log_id`, `dept_id`, `course_id`, `branch_id`, `offered`, `priority`, `created_by`, `created_date`, `modify_by`, `modify_date`, `is_deleted`) VALUES
	(1, 1, NULL, 'b.tech', 'cse', '0', 1, '1926JE002', '2024-04-06 04:48:24', NULL, '2024-04-06 04:48:24', 0),
	(2, 1, NULL, 'b.tech', 'ece', '0', 2, '1926JE002', '2024-04-06 04:48:24', NULL, '2024-04-06 04:48:24', 0),
	(3, 1, NULL, 'b.tech', 'civ', '1', 3, '1926JE002', '2024-04-06 04:48:24', NULL, '2024-04-06 04:48:52', 0),
	(4, 1, NULL, 'b.tech', 'ce', '0', 4, '1926JE002', '2024-04-06 04:48:24', NULL, '2024-04-06 04:48:24', 0);

-- Dumping structure for table cp.course_branch
CREATE TABLE IF NOT EXISTS `course_branch` (
  `course_branch_id` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `course_id` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `branch_id` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `year_starting` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `year_ending` int(10) NOT NULL,
  PRIMARY KEY (`course_branch_id`) USING BTREE,
  UNIQUE KEY `course_id` (`course_id`,`branch_id`,`year_starting`) USING BTREE,
  KEY `course_id_2` (`course_id`) USING BTREE,
  KEY `branch_id` (`branch_id`) USING BTREE,
  CONSTRAINT `course_branch_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `cbcs_courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `course_branch_ibfk_2` FOREIGN KEY (`branch_id`) REFERENCES `cbcs_branches` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table cp.course_branch: ~43 rows (approximately)
INSERT INTO `course_branch` (`course_branch_id`, `course_id`, `branch_id`, `year_starting`, `year_ending`) VALUES
	('146445403', 'mbaba', 'ba', '2020', 0),
	('54c9c746ca6cd', 'int.m.sc', 'chem', '2006', 0),
	('54c9c78b47f7b', 'm.sc', 'chem', '2006', 0),
	('54c9cb58357f2', 'm.sc.tech', 'agl', '1979', 0),
	('54c9cba1b27e3', 'int.msc.tech', 'agl', '2006', 0),
	('54c9cbcc5f2ce', 'int.m.tech', 'agl', '2014', 0),
	('54c9cc0f791be', 'm.sc.tech', 'agp', '1979', 0),
	('54c9cc3b51afb', 'int.msc.tech', 'agp', '2006', 0),
	('54c9cc5f67bd6', 'int.m.tech', 'agp', '2014', 0),
	('54c9cd96953f6', 'int.m.sc', 'm&c', '2006', 0),
	('54c9cdbbd00a0', 'int.m.tech', 'm&c', '2012', 0),
	('54c9ce1923beb', 'm.sc', 'm&c', '2000', 0),
	('54c9d0491c50c', 'b.tech', 'ce', '2011', 0),
	('54c9d0ba8664c', 'b.tech', 'civ', '2013', 0),
	('54c9d13fd017c', 'b.tech', 'cse', '1998', 0),
	('54c9d18b9420c', 'm.tech', 'cse', '2012', 0),
	('54c9d1d4cd4c2', 'dualdegree', 'cse+cse', '2013', 0),
	('54c9d254a7c62', 'b.tech', 'ece', '1998', 0),
	('54c9d2a45a3cf', 'm.tech', 'ece', '2005', 0),
	('54c9d2f97d16a', 'b.tech', 'ei', '2013', 0),
	('54c9d34e54fb2', 'b.tech', 'ee', '2006', 0),
	('54c9d3cecef34', 'execmba', 'emba', '2012', 0),
	('54c9d40d5d161', 'mba', 'mba', '1997', 0),
	('54c9d48a11d85', 'm.phil', 'eng', '2006', 0),
	('54c9d4f9b99f3', 'b.tech', 'env', '2006', 0),
	('54c9d54be628d', 'm.tech', 'ese', '1989', 0),
	('54c9d6607268a', 'b.tech', 'ep', '2014', 0),
	('54ca061ce3c77', 'm.tech', 'eg', '1983', 0),
	('54ca066512f8e', 'm.tech', 'mexp', '1980', 0),
	('54ca06b20c641', 'm.tech', 'pexp', '1983', 0),
	('54ca079742020', 'b.tech', 'mlmte', '2021', 0),
	('54ca07974db46', 'b.tech', 'mle', '1984', 0),
	('54ca085ea4640', 'dualdegree', 'mle+mle', '2006', 0),
	('54ca0a33a1236', 'm.tech', 'fmme', '2021', 0),
	('54ca0a33a6773', 'm.tech', 'mle', '1976', 0),
	('54ca0a6f2df00', 'm.tech', 'fe', '1978', 0),
	('54ca0b3d8586f', 'b.tech', 'me', '1926', 0),
	('54ca0b7c8d647', 'dualdegree', 'me+me', '2006', 0),
	('54ca0ca3a8720', 'm.tech', 'ocm', '1974', 0),
	('54ca0cf298cfe', 'm.tech', 'geo', '2005', 0),
	('54ca117d3d588', 'm.tech', 'met', '1999', 0),
	('54ca12613bfac', 'm.tech', 'mech+mfg', '2012', 0),
	('54ca129aa14fd', 'm.tech', 'mech+te', '2014', 0),
	('54ca1360e1235', 'm.tech', 'ee', '2021', 0),
	('54ca1360e318b', 'm.tech', 'pse', '2012', 0),
	('54ca13db72845', 'm.tech', 'peed', '2014', 0),
	('54ca14491b512', 'm.tech', 'iem', '1977', 0);

-- Dumping structure for table cp.departments
CREATE TABLE IF NOT EXISTS `departments` (
  `id` varchar(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `type` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table cp.departments: ~0 rows (approximately)
INSERT INTO `departments` (`id`, `name`, `type`) VALUES
	('mc', 'Mathematical Computing', 'BTech');

-- Dumping structure for table cp.designations
CREATE TABLE IF NOT EXISTS `designations` (
  `id` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table cp.designations: ~0 rows (approximately)

-- Dumping structure for table cp.emp_basic_details
CREATE TABLE IF NOT EXISTS `emp_basic_details` (
  `emp_no` varchar(12) NOT NULL,
  `auth_id` varchar(10) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `office_no` bigint(11) DEFAULT NULL,
  `fax` bigint(11) DEFAULT NULL,
  `joining_date` date NOT NULL,
  `retirement_ext` int(11) DEFAULT NULL,
  `retirement_date` date DEFAULT NULL,
  `employment_nature` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`emp_no`),
  KEY `auth_id` (`auth_id`),
  KEY `auth_id_2` (`auth_id`),
  KEY `auth_id_3` (`auth_id`),
  CONSTRAINT `emp_basic_details_ibfk_1` FOREIGN KEY (`auth_id`) REFERENCES `auth_types` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table cp.emp_basic_details: ~0 rows (approximately)
INSERT INTO `emp_basic_details` (`emp_no`, `auth_id`, `designation`, `office_no`, `fax`, `joining_date`, `retirement_ext`, `retirement_date`, `employment_nature`) VALUES
	('1594', 'nftn', 'JrTechSup', 0, 0, '1023-10-26', 0, '2080-01-31', 'null');

-- Dumping structure for table cp.final_semwise_marks_foil_freezed
CREATE TABLE IF NOT EXISTS `final_semwise_marks_foil_freezed` (
  `old_id` int(15) unsigned NOT NULL,
  `id` int(15) unsigned NOT NULL AUTO_INCREMENT,
  `session_yr` varchar(9) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `session` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `dept` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `course` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `branch` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `semester` tinyint(2) NOT NULL,
  `admn_no` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tot_cr_hr` float DEFAULT NULL,
  `tot_cr_pts` float DEFAULT NULL,
  `core_tot_cr_hr` float DEFAULT NULL,
  `core_tot_cr_pts` float DEFAULT NULL,
  `ctotcrpts` float DEFAULT NULL,
  `core_ctotcrpts` float DEFAULT NULL,
  `ctotcrhr` float DEFAULT NULL,
  `core_ctotcrhr` float DEFAULT NULL,
  `gpa` float DEFAULT NULL,
  `core_gpa` float DEFAULT NULL,
  `cgpa` float DEFAULT NULL,
  `core_cgpa` float DEFAULT NULL,
  `status` varchar(4) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `core_status` varchar(4) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `hstatus` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `repeater` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'N',
  `type` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `exam_type` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `final_status` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `core_final_status` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `published_on` date DEFAULT NULL,
  `actual_published_on` timestamp NULL DEFAULT NULL,
  `result_dec_id` int(11) DEFAULT NULL,
  `thesis_credit` float DEFAULT NULL,
  `ctot_thesis_credit` float DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `final_semwise_marks_foil_freezed_test_admn_x` (`admn_no`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=191870 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table cp.final_semwise_marks_foil_freezed: ~2 rows (approximately)
INSERT INTO `final_semwise_marks_foil_freezed` (`old_id`, `id`, `session_yr`, `session`, `dept`, `course`, `branch`, `semester`, `admn_no`, `tot_cr_hr`, `tot_cr_pts`, `core_tot_cr_hr`, `core_tot_cr_pts`, `ctotcrpts`, `core_ctotcrpts`, `ctotcrhr`, `core_ctotcrhr`, `gpa`, `core_gpa`, `cgpa`, `core_cgpa`, `status`, `core_status`, `hstatus`, `repeater`, `type`, `exam_type`, `final_status`, `core_final_status`, `published_on`, `actual_published_on`, `result_dec_id`, `thesis_credit`, `ctot_thesis_credit`) VALUES
	(0, 191868, '2023-2024', 'Monsoon', 'comm', 'comm', 'D', 1, '1926JE002', 57, 471.5, 57, 471.5, 471.5, 471.5, 57, 57, 8.27193, 8.27193, 8.27193, 8.27193, 'PASS', 'PASS', 'N', 'N', 'R', 'R', NULL, NULL, '2023-03-14', '2023-03-13 14:00:00', NULL, NULL, NULL),
	(0, 191869, '2023-2024', 'Winter', 'comm', 'comm', 'D', 2, '1926JE002', 52, 456, 52, 456, 927.5, 927.5, 109, 109, 8.76923, 8.76923, 8.50917, 8.50917, 'PASS', 'PASS', 'N', 'N', 'R', 'R', NULL, NULL, '2023-07-13', '2023-07-13 18:07:52', NULL, NULL, NULL);

-- Dumping structure for table cp.login_logout_log
CREATE TABLE IF NOT EXISTS `login_logout_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(20) NOT NULL,
  `logged_in_time` datetime DEFAULT NULL,
  `logged_out_time` datetime DEFAULT NULL,
  `login_ip` varchar(20) NOT NULL,
  `logout_ip` varchar(20) DEFAULT NULL,
  `login_from` varchar(20) DEFAULT 'MIS',
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table cp.login_logout_log: ~37 rows (approximately)
INSERT INTO `login_logout_log` (`log_id`, `user_id`, `logged_in_time`, `logged_out_time`, `login_ip`, `logout_ip`, `login_from`) VALUES
	(1, '1594', '2024-03-12 09:06:22', NULL, '127.0.0.1', NULL, 'MIS'),
	(2, '1594', '2024-03-12 09:23:22', NULL, '127.0.0.1', NULL, 'MIS'),
	(3, '1594', '2024-03-12 09:39:22', NULL, '127.0.0.1', NULL, 'MIS'),
	(4, '1594', '2024-03-12 09:50:23', NULL, '127.0.0.1', NULL, 'MIS'),
	(5, '1594', '2024-03-12 09:51:39', NULL, '127.0.0.1', NULL, 'MIS'),
	(6, '1594', '2024-03-27 10:51:44', NULL, '127.0.0.1', NULL, 'MIS'),
	(7, '1594', '2024-03-27 10:09:54', NULL, '127.0.0.1', NULL, 'MIS'),
	(8, '1594', '2024-03-27 11:21:40', NULL, '127.0.0.1', NULL, 'MIS'),
	(9, '1594', '2024-03-27 12:09:58', NULL, '127.0.0.1', NULL, 'MIS'),
	(10, '1594', '2024-03-29 02:02:29', NULL, '127.0.0.1', NULL, 'MIS'),
	(11, '1594', '2024-03-30 08:57:31', NULL, '127.0.0.1', NULL, 'MIS'),
	(12, '1594', '2024-03-30 09:19:20', NULL, '127.0.0.1', NULL, 'MIS'),
	(13, '1594', '2024-03-30 12:00:45', NULL, '127.0.0.1', NULL, 'MIS'),
	(14, '1594', '2024-03-30 12:59:45', NULL, '127.0.0.1', NULL, 'MIS'),
	(15, '1594', '2024-03-30 07:54:16', NULL, '127.0.0.1', NULL, 'MIS'),
	(16, '1594', '2024-03-30 07:33:22', NULL, '127.0.0.1', NULL, 'MIS'),
	(17, '1594', '2024-03-30 07:01:24', NULL, '127.0.0.1', NULL, 'MIS'),
	(18, '1594', '2024-03-30 07:04:29', NULL, '127.0.0.1', NULL, 'MIS'),
	(19, '1594', '2024-04-02 07:28:45', NULL, '127.0.0.1', NULL, 'MIS'),
	(20, '1594', '2024-04-02 04:09:26', NULL, '127.0.0.1', NULL, 'MIS'),
	(21, '1594', '2024-04-03 04:42:39', NULL, '127.0.0.1', NULL, 'MIS'),
	(22, '1594', '2024-04-03 05:01:18', NULL, '127.0.0.1', NULL, 'MIS'),
	(23, '1594', '2024-04-03 05:10:33', NULL, '127.0.0.1', NULL, 'MIS'),
	(24, '1594', '2024-04-03 05:27:34', NULL, '127.0.0.1', NULL, 'MIS'),
	(25, '1594', '2024-04-03 05:19:37', NULL, '127.0.0.1', NULL, 'MIS'),
	(26, '1594', '2024-04-03 05:31:54', NULL, '127.0.0.1', NULL, 'MIS'),
	(27, '1594', '2024-04-03 07:01:35', NULL, '127.0.0.1', NULL, 'MIS'),
	(28, '1594', '2024-04-03 11:51:33', NULL, '127.0.0.1', NULL, 'MIS'),
	(29, '1594', '2024-04-03 03:45:59', '2024-04-03 04:25:15', '127.0.0.1', '127.0.0.1', 'MIS'),
	(30, '1594', '2024-04-03 04:37:56', NULL, '127.0.0.1', NULL, 'MIS'),
	(31, '1926JE002', '2024-04-03 04:21:57', NULL, '127.0.0.1', NULL, 'MIS'),
	(32, '1926JE002', '2024-04-03 07:14:04', NULL, '127.0.0.1', NULL, 'MIS'),
	(33, '1594', '2024-04-05 07:53:18', NULL, '127.0.0.1', NULL, 'MIS'),
	(34, '1926JE002', '2024-04-05 12:47:13', NULL, '127.0.0.1', NULL, 'MIS'),
	(35, '1594', '2024-04-05 05:06:28', NULL, '127.0.0.1', NULL, 'MIS'),
	(36, '1926JE002', '2024-04-05 05:46:28', NULL, '127.0.0.1', NULL, 'MIS'),
	(37, '1926JE002', '2024-04-06 04:58:10', NULL, '127.0.0.1', NULL, 'MIS'),
	(38, '1594', '2024-04-06 04:33:46', NULL, '127.0.0.1', NULL, 'MIS'),
	(39, '1926JE002', '2024-04-06 04:11:47', NULL, '127.0.0.1', NULL, 'MIS');

-- Dumping structure for table cp.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table cp.migrations: ~0 rows (approximately)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '0000_00_00_000000_create_websockets_statistics_entries_table', 1);

-- Dumping structure for table cp.mis_session
CREATE TABLE IF NOT EXISTS `mis_session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session` varchar(20) NOT NULL,
  `active` enum('0','1') DEFAULT '0',
  `fellowship_active` enum('0','1') DEFAULT '0',
  `tms_active` enum('0','1') DEFAULT '0',
  `leave_active` enum('0','1') DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `Index 2` (`session`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table cp.mis_session: ~3 rows (approximately)
INSERT INTO `mis_session` (`id`, `session`, `active`, `fellowship_active`, `tms_active`, `leave_active`) VALUES
	(1, 'Monsoon', '1', '0', '1', '0'),
	(2, 'Winter', '1', '1', '0', '1'),
	(3, 'Summer', '1', '0', '0', '0');

-- Dumping structure for table cp.mis_session_year
CREATE TABLE IF NOT EXISTS `mis_session_year` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_year` varchar(20) NOT NULL,
  `active` enum('0','1') DEFAULT '0',
  `fellowship_active` enum('0','1') DEFAULT '0',
  `leave_active` enum('0','1') DEFAULT '0',
  `tms_active` enum('0','1') DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `Index 2` (`session_year`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table cp.mis_session_year: ~10 rows (approximately)
INSERT INTO `mis_session_year` (`id`, `session_year`, `active`, `fellowship_active`, `leave_active`, `tms_active`) VALUES
	(1, '2015-2016', '0', '0', '0', '0'),
	(2, '2016-2017', '0', '0', '0', '0'),
	(3, '2017-2018', '0', '0', '0', '0'),
	(4, '2018-2019', '0', '0', '0', '0'),
	(5, '2019-2020', '0', '0', '0', '0'),
	(6, '2020-2021', '0', '0', '0', '0'),
	(7, '2021-2022', '1', '0', '0', '0'),
	(11, '2022-2023', '1', '0', '0', '0'),
	(14, '2023-2024', '1', '1', '1', '1'),
	(15, '2024-2025', '1', '0', '0', '0');

-- Dumping structure for table cp.notifications
CREATE TABLE IF NOT EXISTS `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) unsigned DEFAULT NULL,
  `data` text DEFAULT NULL,
  `user_to` varchar(255) DEFAULT NULL,
  `user_from` varchar(255) DEFAULT NULL,
  `send_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `rec_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `auth_id` varchar(255) DEFAULT NULL,
  `module_id` varchar(255) DEFAULT NULL,
  `notice_title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `notice_path` varchar(255) DEFAULT NULL,
  `notice_type` varchar(255) DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table cp.notifications: ~332 rows (approximately)
INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `user_to`, `user_from`, `send_date`, `rec_date`, `auth_id`, `module_id`, `notice_title`, `description`, `notice_path`, `notice_type`, `read_at`, `created_at`, `updated_at`) VALUES
	('01a4d937-8ea5-40d0-9f01-7366cf0489a8', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-05 07:51:02', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 02:21:02', '2024-04-05 02:21:02'),
	('027a7bcc-0696-432b-8a2a-43e3eaa4bffb', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1926, '{"user_to":853,"user_from":"1926JE002","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-05 15:54:06', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 10:24:06', '2024-04-05 10:24:06'),
	('02cbfe29-c60d-4ee9-bce3-e2ba088b7bc5', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1926, '{"user_to":853,"user_from":"1926JE002","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-05 17:14:37', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 11:44:37', '2024-04-05 11:44:37'),
	('03181427-9bc4-495d-a507-4bcc10c30145', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 15:14:52', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-03 09:44:52', '2024-04-03 09:44:52'),
	('047f24d8-b2c2-4894-9997-71d7625ce8f6', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1926, '{"user_to":853,"user_from":"1926JE002","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-05 17:40:36', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 12:10:36', '2024-04-05 12:10:36'),
	('04a4e99b-cf45-4b96-b46d-1d1936f64736', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1926, '{"user_to":853,"user_from":"1926JE002","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-05 16:48:43', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 11:18:43', '2024-04-05 11:18:43'),
	('04cdae86-c763-492d-b62b-69c0a5114ea0', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-02 11:44:29', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 06:14:29', '2024-04-02 06:14:29'),
	('04ed7117-152f-4ecd-81c4-43636641cee5', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1926, '{"user_to":853,"user_from":"1926JE002","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 16:59:01', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-03 11:29:01', '2024-04-03 11:29:01'),
	('0772ca54-f481-455f-ab80-d85e4ce33848', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1926, '{"user_to":853,"user_from":"1926JE002","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-05 16:40:40', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 11:10:40', '2024-04-05 11:10:40'),
	('0910a35b-dbe7-493d-96e8-354c7e5d60d4', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 14:14:06', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 08:44:06', '2024-03-30 08:44:06'),
	('0b041192-7cb0-4f3f-810a-40b6cfbca9ad', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1926, '{"user_to":853,"user_from":"1926JE002","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 17:00:09', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-03 11:30:09', '2024-04-03 11:30:09'),
	('0b2343f5-ee28-4029-9ba4-d6790ef561b0', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 13:14:14', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 07:44:14', '2024-03-30 07:44:14'),
	('0ba66da1-59d1-4c22-ae30-0e65914a11e2', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 06:01:55', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-03 00:31:55', '2024-04-03 00:31:55'),
	('0d0f41ed-a36f-4612-9bea-365d08d60931', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1926, '{"user_to":853,"user_from":"1926JE002","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 17:05:17', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-03 11:35:17', '2024-04-03 11:35:17'),
	('0f98b24a-99db-4b6f-b84c-435bc627ce85', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-02 09:16:51', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 03:46:51', '2024-04-02 03:46:51'),
	('107110d9-274a-4f81-a16d-8d42caa38cca', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-05 08:47:52', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 03:17:52', '2024-04-05 03:17:52'),
	('10b1ff62-6a79-4c67-bc81-7d99669af3cc', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 05:17:43', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 23:47:43', '2024-04-02 23:47:43'),
	('11bccc74-526c-4423-869e-516b21b285d6', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-02 18:25:37', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 12:55:37', '2024-04-02 12:55:37'),
	('12baad71-34d0-4b9e-8aaf-6a509c0f4b57', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-02 16:57:46', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 11:27:46', '2024-04-02 11:27:46'),
	('12fa09d5-5d3e-44cb-9f93-bb92d4d779d1', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1926, '{"user_to":853,"user_from":"1926JE002","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-06 04:37:48', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 23:07:48', '2024-04-05 23:07:48'),
	('152b2464-a1fd-4cd0-b3c5-9bdda48f993d', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-05 10:40:43', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 05:10:43', '2024-04-05 05:10:43'),
	('164c3c05-4396-41d2-a0cc-91398476317c', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-27 11:39:50', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-27 06:09:50', '2024-03-27 06:09:50'),
	('17224687-dfe1-4c0d-9c59-d3d59d102691', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-02 11:55:09', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 06:25:09', '2024-04-02 06:25:09'),
	('17359bff-d0a5-4c81-8c25-d141fbeb51ab', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-02 13:50:27', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 08:20:27', '2024-04-02 08:20:27'),
	('1770bb96-5b14-4ca7-a255-d40cd0c9b5a2', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1926, '{"user_to":853,"user_from":"1926JE002","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-06 04:18:07', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 22:48:07', '2024-04-05 22:48:07'),
	('18b0e73f-a971-4687-b12c-0639a9ee7500', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 14:34:53', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 09:04:53', '2024-03-30 09:04:53'),
	('191b6245-e781-4c03-8b20-7e1ef4b2d106', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 09:04:48', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 03:34:48', '2024-03-30 03:34:48'),
	('198d7af4-3266-4114-a873-ad656879e747', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 19:15:37', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 13:45:37', '2024-03-30 13:45:37'),
	('1a10c856-280a-4129-a9ed-f29e88da0f77', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-05 08:43:51', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 03:13:51', '2024-04-05 03:13:51'),
	('1a80d951-d30c-401c-8520-231f977cf676', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 04:39:47', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 23:09:47', '2024-04-02 23:09:47'),
	('1a973fa9-085e-4613-a156-923250633743', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 17:23:52', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 11:53:52', '2024-03-30 11:53:52'),
	('1ae52e30-1a3b-4fb3-8576-6f188e949b55', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-02 18:15:10', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 12:45:10', '2024-04-02 12:45:10'),
	('1b0fbd7b-ba9c-4556-b346-0bca807dd7cd', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-02 12:01:57', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 06:31:57', '2024-04-02 06:31:57'),
	('1cceea23-331f-4d93-8663-a4ebe10b4fc7', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 14:22:22', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 08:52:22', '2024-03-30 08:52:22'),
	('1dcf5936-93a1-4556-8339-7c978c5c605d', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1926, '{"user_to":853,"user_from":"1926JE002","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-06 04:18:16', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 22:48:16', '2024-04-05 22:48:16'),
	('1ea40ba1-24ea-4067-b35d-a2c94af3163a', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 05:17:13', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 23:47:13', '2024-04-02 23:47:13'),
	('1eb02276-a4d2-492e-9851-cb613e1f0600', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 06:13:00', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-03 00:43:00', '2024-04-03 00:43:00'),
	('1fc045aa-9986-496a-8b48-f122669e60d5', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 06:16:35', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-03 00:46:35', '2024-04-03 00:46:35'),
	('1fc10b35-6bb7-4aeb-8935-71e842dd3ae3', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 14:38:40', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 09:08:40', '2024-03-30 09:08:40'),
	('20779e70-23f8-469b-970c-c4a968b6a4de', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1926, '{"user_to":853,"user_from":"1926JE002","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 19:06:20', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-03 13:36:20', '2024-04-03 13:36:20'),
	('20b57d8d-0090-4bae-9230-1c4a18e2af39', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-02 08:13:56', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 02:43:56', '2024-04-02 02:43:56'),
	('211c7b87-83d3-4644-8977-1c490dd940b8', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1926, '{"user_to":853,"user_from":"1926JE002","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-05 17:10:09', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 11:40:09', '2024-04-05 11:40:09'),
	('2156b8fa-9559-4a2b-9695-4efc8d9d4891', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 11:37:53', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-03 06:07:53', '2024-04-03 06:07:53'),
	('21925ca2-7c5e-4d22-8d70-5297efb0b492', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 07:29:46', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-03 01:59:46', '2024-04-03 01:59:46'),
	('21bdbcea-5bed-4f42-b989-815949305ac6', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 13:34:51', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 08:04:51', '2024-03-30 08:04:51'),
	('227b7f35-0ca2-4f8b-9eb6-95b810ce1bee', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 19:17:10', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 13:47:10', '2024-03-30 13:47:10'),
	('227e9e37-93ec-4ea5-9d73-63fd72cbbbd0', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 18:57:43', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 13:27:43', '2024-03-30 13:27:43'),
	('236b7396-5fcb-4660-b843-79ec4b2fe077', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-05 07:22:27', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 01:52:27', '2024-04-05 01:52:27'),
	('249a3ed7-1e25-47e0-a4cf-c799e59275bc', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-27 10:56:26', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-27 05:26:26', '2024-03-27 05:26:26'),
	('24d5ae0a-5658-4e7c-ac7d-bc3e2b3a9616', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 05:43:34', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-03 00:13:34', '2024-04-03 00:13:34'),
	('24f5079f-ad25-427b-bd0c-7b60d3a5f9ee', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 14:17:07', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 08:47:07', '2024-03-30 08:47:07'),
	('264a2a25-dddd-402e-8f17-68cf39cce0b9', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 05:00:26', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 23:30:26', '2024-04-02 23:30:26'),
	('28e54fd7-66ee-40ce-ae02-baf443cff2f4', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 13:17:41', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 07:47:41', '2024-03-30 07:47:41'),
	('29a4388e-8a5b-4924-a593-58a5f99c9955', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 14:06:28', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 08:36:28', '2024-03-30 08:36:28'),
	('2a3d9005-811a-4283-8c62-c237b5dd9604', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-02 12:10:00', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 06:40:00', '2024-04-02 06:40:00'),
	('2a672114-1a1c-40e3-bda7-e5f26592df2e', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-02 16:26:22', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 10:56:22', '2024-04-02 10:56:22'),
	('2ab0fd80-9f60-40c2-8ee5-6a22fd2cc567', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-05 17:28:17', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 11:58:17', '2024-04-05 11:58:17'),
	('2c642307-9554-4030-a5fa-2c00fe81ec24', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 19:21:56', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 13:51:56', '2024-03-30 13:51:56'),
	('2c66a019-192b-44c2-868b-97fec1fc9965', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1926, '{"user_to":853,"user_from":"1926JE002","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-05 19:04:22', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 13:34:22', '2024-04-05 13:34:22'),
	('2c89f6fe-e0f0-4535-9fcd-100f8b0fcc51', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 14:38:58', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 09:08:58', '2024-03-30 09:08:58'),
	('2e2d96ba-fdeb-4e8d-86fb-72984da77f41', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 06:12:13', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-03 00:42:13', '2024-04-03 00:42:13'),
	('2e6bb4be-2fab-497f-b58f-0e9058306f37', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1926, '{"user_to":853,"user_from":"1926JE002","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-05 19:33:05', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 14:03:05', '2024-04-05 14:03:05'),
	('2ec9c696-ee14-4e0a-9803-3a26a6f20dca', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 05:06:32', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 23:36:32', '2024-04-02 23:36:32'),
	('2f042ff8-843d-4541-af74-9b8f0efa999a', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 05:13:58', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 23:43:58', '2024-04-02 23:43:58'),
	('3020afa9-37e9-4280-baf1-cf8631502d3b', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1926, '{"user_to":853,"user_from":"1926JE002","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-05 17:39:31', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 12:09:31', '2024-04-05 12:09:31'),
	('312cbeae-3052-4480-859b-a9602be6081a', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-02 16:56:43', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 11:26:43', '2024-04-02 11:26:43'),
	('3157254e-7808-41c1-be82-9560cdffed78', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 05:17:24', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 23:47:24', '2024-04-02 23:47:24'),
	('3214794e-6bcb-4f97-bce1-7048d9cbe64e', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-12 09:23:43', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-12 03:53:43', '2024-03-12 03:53:43'),
	('3245d6c1-3f06-4ba3-aaad-ab3757a32a44', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-05 08:07:56', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 02:37:56', '2024-04-05 02:37:56'),
	('32dc481b-2459-4bfa-b66f-b26afa83b9cb', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 05:41:15', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-03 00:11:15', '2024-04-03 00:11:15'),
	('33bb171c-7167-4b0f-80cd-cbcef711307e', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 13:30:02', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 08:00:02', '2024-03-30 08:00:02'),
	('34e7a68e-2515-4197-a12a-50ea93821377', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-02 15:30:56', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 10:00:56', '2024-04-02 10:00:56'),
	('354723b0-5062-4128-bb7e-b92258c8a013', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-27 10:56:39', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-27 05:26:39', '2024-03-27 05:26:39'),
	('3681cfa9-2636-457a-a125-ee613c0676a6', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 13:26:53', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 07:56:53', '2024-03-30 07:56:53'),
	('368b83ad-c21a-44d2-827b-8219aac65474', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1926, '{"user_to":853,"user_from":"1926JE002","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 16:59:46', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-03 11:29:46', '2024-04-03 11:29:46'),
	('372e038d-8dd1-428d-ba26-9cbca2229370', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 08:38:11', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 03:08:11', '2024-03-30 03:08:11'),
	('3d111a66-cfe2-40f6-a1dd-2b22f77f1919', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-05 08:58:06', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 03:28:06', '2024-04-05 03:28:06'),
	('3d6225ed-99f2-409b-8c5d-fc1a435a6609', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 06:07:24', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-03 00:37:24', '2024-04-03 00:37:24'),
	('3d8ddc45-49d2-4d3d-9505-9944d0b38b7e', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1926, '{"user_to":853,"user_from":"1926JE002","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-05 15:54:25', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 10:24:25', '2024-04-05 10:24:25'),
	('3e9c70a4-5720-492d-81a9-f7118923a782', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 09:23:36', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 03:53:36', '2024-03-30 03:53:36'),
	('3fab005d-8e70-444d-b900-85ec7a7247d9', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 09:15:13', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 03:45:13', '2024-03-30 03:45:13'),
	('3fb14acf-e753-4913-a675-54d58df34626', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 14:11:28', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 08:41:28', '2024-03-30 08:41:28'),
	('3fed3d89-fe3a-4232-97af-9233922ba385', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-02 16:53:04', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 11:23:04', '2024-04-02 11:23:04'),
	('3fefa603-de0e-421d-aaa5-49f0daa66ac7', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1926, '{"user_to":853,"user_from":"1926JE002","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-05 17:41:39', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 12:11:39', '2024-04-05 12:11:39'),
	('40524e88-f82b-47ad-aa16-abd95bcc7d03', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 15:09:27', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-03 09:39:27', '2024-04-03 09:39:27'),
	('406df147-cebd-46f1-8474-34104a95e3c9', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 13:29:47', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 07:59:47', '2024-03-30 07:59:47'),
	('40f0376c-1b7b-4f11-b318-5bb14f6d48da', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 14:13:19', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 08:43:19', '2024-03-30 08:43:19'),
	('419edfc4-234a-4648-824a-b46b2fec8852', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 12:44:14', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 07:14:14', '2024-03-30 07:14:14'),
	('43b0ddf5-61a8-4b42-8add-8de734221e9f', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-02 07:57:40', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 02:27:40', '2024-04-02 02:27:40'),
	('43ca0c2b-1d01-42f0-8e0c-6f0e8f3b4b04', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 08:48:30', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 03:18:30', '2024-03-30 03:18:30'),
	('44445ccf-1644-4fcc-bea2-b87cb5283877', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-05 08:38:55', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 03:08:55', '2024-04-05 03:08:55'),
	('44bbc6e3-0455-4f0b-931b-49a6b2ec2828', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1926, '{"user_to":853,"user_from":"1926JE002","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-05 17:39:08', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 12:09:08', '2024-04-05 12:09:08'),
	('46617002-8a7e-40f5-8294-fb56a95c7094', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-05 07:52:07', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 02:22:07', '2024-04-05 02:22:07'),
	('469c5adb-6401-4e1c-8158-46a1caa533f3', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-02 15:33:46', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 10:03:46', '2024-04-02 10:03:46'),
	('46c93c7a-a187-40c4-b59b-1b2832f651b4', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1926, '{"user_to":853,"user_from":"1926JE002","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-05 15:58:32', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 10:28:32', '2024-04-05 10:28:32'),
	('47d69599-40f0-44ea-88ef-bdef66dee78e', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 13:21:14', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 07:51:14', '2024-03-30 07:51:14'),
	('49636d18-69fa-4f43-9c70-2ed74deec224', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-02 15:36:30', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 10:06:30', '2024-04-02 10:06:30'),
	('49c96de3-a4fb-48a3-ac93-a6790fcb9bbb', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1926, '{"user_to":853,"user_from":"1926JE002","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-05 17:40:54', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 12:10:54', '2024-04-05 12:10:54'),
	('49d6e3e8-a509-4792-8393-05096cd81cf4', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 04:50:03', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 23:20:03', '2024-04-02 23:20:03'),
	('4a38096f-5604-453c-b8e3-740287df0142', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-02 15:31:25', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 10:01:25', '2024-04-02 10:01:25'),
	('4a836639-2ca1-482f-b420-77044c6eec74', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-02 15:34:21', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 10:04:21', '2024-04-02 10:04:21'),
	('4b134072-394e-409a-a985-f730ff184a8e', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 04:59:21', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 23:29:21', '2024-04-02 23:29:21'),
	('4b46fd4a-a538-4097-90a4-d8dbc46d0182', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-02 13:19:52', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 07:49:52', '2024-04-02 07:49:52'),
	('4b69d52c-30fe-43e6-862d-c97bbdca274b', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-05 08:05:41', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 02:35:41', '2024-04-05 02:35:41'),
	('4cd44624-e245-4565-a09d-f60f0c676569', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-02 16:30:10', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 11:00:10', '2024-04-02 11:00:10'),
	('50376d99-5058-4edc-9726-ac71bf12a945', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-05 08:00:55', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 02:30:55', '2024-04-05 02:30:55'),
	('5158412d-6af8-4df8-a22c-b47f71edc337', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-06 04:46:48', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 23:16:48', '2024-04-05 23:16:48'),
	('5183d135-ccde-4f7f-a361-6e9b148210fd', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-02 13:45:58', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 08:15:58', '2024-04-02 08:15:58'),
	('53163cd3-d0df-498d-bfc1-2675274b65f4', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 05:50:54', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-03 00:20:54', '2024-04-03 00:20:54'),
	('538f9b35-1ca8-4b79-a83d-82be7a5c8ee8', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-02 13:46:12', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 08:16:12', '2024-04-02 08:16:12'),
	('54d5cf61-9e20-45a0-880e-749ca064fa27', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-02 18:19:51', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 12:49:51', '2024-04-02 12:49:51'),
	('54dff4eb-c1a4-443c-8908-d34387f19d02', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 04:58:40', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 23:28:40', '2024-04-02 23:28:40'),
	('58066be3-6e6d-403b-a782-a7305d5d9cfc', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1926, '{"user_to":853,"user_from":"1926JE002","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-05 16:06:12', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 10:36:12', '2024-04-05 10:36:12'),
	('5911280a-083c-48d9-9bde-9bdd12c9b752', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-02 18:18:57', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 12:48:57', '2024-04-02 12:48:57'),
	('595080b7-0e47-43d3-ba76-74c49e7b246c', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 19:17:06', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 13:47:06', '2024-03-30 13:47:06'),
	('59a24350-aab4-40a1-be95-7fe724894ed8', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 09:23:53', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 03:53:53', '2024-03-30 03:53:53'),
	('5a659a48-e28b-4e8f-bbd9-91841cf327f5', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 09:00:47', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 03:30:47', '2024-03-30 03:30:47'),
	('5cdb31c8-2951-43be-9e93-9d861f9aefae', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 05:02:34', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 23:32:34', '2024-04-02 23:32:34'),
	('5d687f8f-b744-4db2-aff7-766a746e71a5', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-05 10:47:08', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 05:17:08', '2024-04-05 05:17:08'),
	('5dad21ef-4b75-4ac6-a689-48687afbf75e', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-12 09:22:31', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-12 03:52:31', '2024-03-12 03:52:31'),
	('5de57ade-b97b-4194-b664-4cb6dcfd1718', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-27 11:39:41', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-27 06:09:41', '2024-03-27 06:09:41'),
	('5e26ea4c-ffbb-4f2a-91e9-69a0a09cb014', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 07:35:18', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-03 02:05:18', '2024-04-03 02:05:18'),
	('5f6d4336-fcb3-4970-a146-abfefeaa9e3e', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1926, '{"user_to":853,"user_from":"1926JE002","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-05 17:41:32', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 12:11:32', '2024-04-05 12:11:32'),
	('604e70c4-0099-4f36-a3e9-64d3fc0d3f8c', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1926, '{"user_to":853,"user_from":"1926JE002","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-05 16:38:49', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 11:08:49', '2024-04-05 11:08:49'),
	('62193f75-1e8f-49d2-bee7-d0803896d950', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-02 18:15:55', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 12:45:55', '2024-04-02 12:45:55'),
	('62f40a9e-3605-4f25-80a1-11653d0fd4ac', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 12:47:23', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 07:17:23', '2024-03-30 07:17:23'),
	('634298ff-7e41-470b-acd5-e87199cfd5bc', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1926, '{"user_to":853,"user_from":"1926JE002","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-05 17:37:12', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 12:07:12', '2024-04-05 12:07:12'),
	('6346d236-d269-4642-a6d5-31e53a37a722', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1926, '{"user_to":853,"user_from":"1926JE002","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-05 16:48:29', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 11:18:29', '2024-04-05 11:18:29'),
	('6384ea34-7278-452b-98ec-8fd6d72575f4', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1926, '{"user_to":853,"user_from":"1926JE002","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 17:06:31', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-03 11:36:31', '2024-04-03 11:36:31'),
	('64204436-3c17-410a-9107-c743e29b15cb', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-02 07:45:53', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 02:15:53', '2024-04-02 02:15:53'),
	('652c4dc6-de51-445c-bb1b-3fd223f2ffc4', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 19:21:44', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 13:51:44', '2024-03-30 13:51:44'),
	('6588f066-7024-409e-a8dc-caab03fe5f06', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-02 09:41:26', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 04:11:26', '2024-04-02 04:11:26'),
	('65bbbd4e-d3b8-49fc-8d14-ededb797436d', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-02 09:11:14', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 03:41:14', '2024-04-02 03:41:14'),
	('65d214a3-12fc-449a-a056-b55b9c22e5ef', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1926, '{"user_to":853,"user_from":"1926JE002","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-05 17:40:59', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 12:10:59', '2024-04-05 12:10:59'),
	('662d366c-8977-4fe5-b360-b89857df0263', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 19:29:36', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 13:59:36', '2024-03-30 13:59:36'),
	('6671669e-25fe-4da4-b0c8-31390a2a8e9b', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1926, '{"user_to":853,"user_from":"1926JE002","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 17:06:53', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-03 11:36:53', '2024-04-03 11:36:53'),
	('66a4bf04-7c31-48e2-8334-55edc007bd55', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 09:19:43', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 03:49:43', '2024-03-30 03:49:43'),
	('6723da83-1f33-43aa-8a97-160e2bc05c2c', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1926, '{"user_to":853,"user_from":"1926JE002","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 16:59:20', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-03 11:29:20', '2024-04-03 11:29:20'),
	('6744750d-5496-4cd0-9c87-833668029d74', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1926, '{"user_to":853,"user_from":"1926JE002","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-05 19:24:50', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 13:54:50', '2024-04-05 13:54:50'),
	('677dd23a-c1bb-4970-8de3-04696dbb2bb6', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1926, '{"user_to":853,"user_from":"1926JE002","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-06 04:48:58', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 23:18:58', '2024-04-05 23:18:58'),
	('6ab26835-0bd1-4d2b-9320-3cc4031857e4', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 05:03:03', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 23:33:03', '2024-04-02 23:33:03'),
	('6d235b15-2b67-4e3d-84ae-abe8584a1884', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 16:44:44', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 11:14:44', '2024-03-30 11:14:44'),
	('6d544773-ab97-4921-acf9-bc4dc314da28', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 09:22:45', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 03:52:45', '2024-03-30 03:52:45'),
	('6d6b2055-173d-4170-9c7c-fe58e691969a', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 11:43:16', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-03 06:13:16', '2024-04-03 06:13:16'),
	('6dba91c9-23fb-41d9-9073-77aeff63ad99', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-02 09:34:30', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 04:04:30', '2024-04-02 04:04:30'),
	('6dcec3eb-7aee-43ee-a7dc-ef896c89c5d4', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1926, '{"user_to":853,"user_from":"1926JE002","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-05 16:01:52', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 10:31:52', '2024-04-05 10:31:52'),
	('6e3cc523-829a-43a7-9eec-0f506ccf729e', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1926, '{"user_to":853,"user_from":"1926JE002","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-05 17:38:56', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 12:08:56', '2024-04-05 12:08:56'),
	('6edc33f5-aa0e-4375-8631-e6de1a8c64d7', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 05:34:40', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-03 00:04:40', '2024-04-03 00:04:40'),
	('6fa50662-40c1-40e7-9617-da82f9f0a98d', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1926, '{"user_to":853,"user_from":"1926JE002","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-05 17:36:42', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 12:06:42', '2024-04-05 12:06:42'),
	('6fe5003a-d413-483a-8467-c913de929cbe', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1926, '{"user_to":853,"user_from":"1926JE002","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-05 16:58:41', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 11:28:41', '2024-04-05 11:28:41'),
	('712fcaac-1f50-40af-8d53-8b389b9d096b', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 09:21:25', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 03:51:25', '2024-03-30 03:51:25'),
	('714471f9-29bf-4bd3-8bb6-7ea9a8fa9112', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-02 18:04:44', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 12:34:44', '2024-04-02 12:34:44'),
	('71f1bb7b-3a90-4d5e-91ba-93ea1de73939', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 06:25:05', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-03 00:55:05', '2024-04-03 00:55:05'),
	('723ad1df-9add-4a2c-9d23-ad886dbf0bd3', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 17:24:41', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 11:54:41', '2024-03-30 11:54:41'),
	('732706ea-1f7f-42bc-b78f-2c918a100cc5', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-02 09:17:25', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 03:47:25', '2024-04-02 03:47:25'),
	('733c89ae-8fc1-4b72-8b43-99457c742e0e', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-02 09:37:14', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 04:07:14', '2024-04-02 04:07:14'),
	('76113569-5d20-411c-a338-4dc67649ff16', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 05:37:31', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-03 00:07:31', '2024-04-03 00:07:31'),
	('764f7bbe-50ad-4f14-b3bb-817073d73fdf', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-02 15:34:59', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 10:04:59', '2024-04-02 10:04:59'),
	('764f9ef5-d922-435d-b52b-e4d11a7326ad', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 13:34:32', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 08:04:32', '2024-03-30 08:04:32'),
	('76bf411f-eb71-4864-940c-a1fb9d5b8e2c', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1926, '{"user_to":853,"user_from":"1926JE002","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-05 17:41:20', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 12:11:20', '2024-04-05 12:11:20'),
	('76c1e84b-4910-4f11-a42d-a18ac618abfc', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 06:39:26', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-03 01:09:26', '2024-04-03 01:09:26'),
	('787a54d1-2a75-43f9-a3f0-d679e8916cb0', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 04:44:03', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 23:14:03', '2024-04-02 23:14:03'),
	('78a7f409-c4cf-4a48-9c63-7bcbe8a23721', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-02 08:50:41', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 03:20:41', '2024-04-02 03:20:41'),
	('7989657a-f8ce-421c-a8d2-ecd6f662cdb4', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 11:34:59', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-03 06:04:59', '2024-04-03 06:04:59'),
	('79bf7914-f2c4-456a-8358-98e0cc1e7c00', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 09:15:54', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 03:45:54', '2024-03-30 03:45:54'),
	('79f82acc-b0d8-470c-843f-25a4f99f583c', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 14:07:06', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 08:37:06', '2024-03-30 08:37:06'),
	('7a608897-7ed2-4c8e-90cf-f19f70271774', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 19:22:44', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 13:52:44', '2024-03-30 13:52:44'),
	('7bfb7335-0f55-48f5-962b-96daa847e545', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 14:25:04', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 08:55:04', '2024-03-30 08:55:04'),
	('7c0c37d3-0093-46b6-8d0b-f521c00b779d', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-02 16:29:25', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 10:59:25', '2024-04-02 10:59:25'),
	('7c5532ad-eca8-4a3a-a928-411f7b76ae1b', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 06:08:52', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-03 00:38:52', '2024-04-03 00:38:52'),
	('7e0d04e5-561b-4da9-a33c-85dd8c081688', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 06:14:27', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-03 00:44:27', '2024-04-03 00:44:27'),
	('7e8b60c6-65e9-45ed-bd41-2914ec766e10', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 06:06:09', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-03 00:36:09', '2024-04-03 00:36:09'),
	('7ecc13cf-e36e-4cbf-9c94-7fcd2509d24a', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-02 13:49:42', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 08:19:42', '2024-04-02 08:19:42'),
	('7fea5e1a-1b67-4d37-94ab-b426909c1806', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-02 15:36:11', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 10:06:11', '2024-04-02 10:06:11'),
	('7ff8db39-3978-4460-aac5-a40754056719', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 09:23:12', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 03:53:12', '2024-03-30 03:53:12'),
	('807c1bd0-775e-4ce7-a221-1e15f0e63a6b', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 06:15:01', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-03 00:45:01', '2024-04-03 00:45:01'),
	('81591652-2669-478d-a435-91ab27d3159e', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 18:53:55', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 13:23:55', '2024-03-30 13:23:55'),
	('825b8d6b-482d-4533-8f0f-4421aa11cec5', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-27 10:57:42', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-27 05:27:42', '2024-03-27 05:27:42'),
	('82a5e1b5-e22e-4547-8db2-f8d1cc78b5cb', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-02 15:31:06', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 10:01:06', '2024-04-02 10:01:06'),
	('84eab6f6-61ed-4bf0-8df1-e52994041b70', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 09:08:07', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 03:38:07', '2024-03-30 03:38:07'),
	('85416f81-0bf5-4951-b29e-44c30259df89', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 18:58:32', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 13:28:32', '2024-03-30 13:28:32'),
	('8581e41a-5bcf-44a3-920a-0a23e80f2f02', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 19:30:16', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 14:00:16', '2024-03-30 14:00:16'),
	('86d30201-c54f-4df4-9490-96cd326c8400', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 05:16:44', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 23:46:44', '2024-04-02 23:46:44'),
	('871b350c-f8ce-4516-874a-cb9bebd081e5', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1926, '{"user_to":853,"user_from":"1926JE002","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-06 04:19:28', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 22:49:28', '2024-04-05 22:49:28'),
	('87352053-e1ba-400e-97c0-23ae4ad0faf6', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-02 18:14:42', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 12:44:42', '2024-04-02 12:44:42'),
	('88014cd0-0296-4f5b-9ab9-609f7a313473', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 13:25:42', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 07:55:42', '2024-03-30 07:55:42'),
	('8998490a-29f9-4827-b499-293fcf1b8866', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 07:29:28', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-03 01:59:28', '2024-04-03 01:59:28'),
	('8b4fb366-5a58-4086-9f09-44bda907be57', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1926, '{"user_to":853,"user_from":"1926JE002","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-05 14:26:21', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 08:56:21', '2024-04-05 08:56:21'),
	('8f088394-db35-40a1-aa54-d15af62e7c2f', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 09:24:01', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 03:54:01', '2024-03-30 03:54:01'),
	('8f4ffd0b-2cae-4096-83c8-3d156583fd04', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 15:09:21', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-03 09:39:21', '2024-04-03 09:39:21'),
	('8fa8c62a-8132-467e-9ce2-6f39f24422bf', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1926, '{"user_to":853,"user_from":"1926JE002","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-05 17:20:51', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 11:50:51', '2024-04-05 11:50:51'),
	('8fbf94b7-25c7-4314-b709-7217bcc7d9cd', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-02 09:17:00', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 03:47:00', '2024-04-02 03:47:00'),
	('90089747-b880-47e6-8acd-905634954795', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 14:10:45', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 08:40:45', '2024-03-30 08:40:45'),
	('906fee41-4f44-47c1-a1f0-feda6de94647', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 06:04:11', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-03 00:34:11', '2024-04-03 00:34:11'),
	('90997725-1a74-4e30-a0e3-d550e90c1388', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-27 13:02:12', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-27 07:32:12', '2024-03-27 07:32:12'),
	('91b5db92-abc8-4dac-a0f4-8c0ddab3900b', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-02 09:39:04', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 04:09:04', '2024-04-02 04:09:04'),
	('92a863e9-4d78-47ae-8fc5-0d5197d56f70', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 06:27:52', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-03 00:57:52', '2024-04-03 00:57:52'),
	('93b2bf32-4c3e-4779-97f1-3bd814ec6dd4', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-27 10:45:06', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-27 05:15:06', '2024-03-27 05:15:06'),
	('93fc836e-f554-457e-a427-2dc70729e1d0', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 09:21:40', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 03:51:40', '2024-03-30 03:51:40'),
	('9430fdaf-59ea-4dbb-8066-e1695fc25d48', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1926, '{"user_to":853,"user_from":"1926JE002","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-06 04:47:12', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 23:17:12', '2024-04-05 23:17:12'),
	('94352f87-576c-41c3-b009-a561df78bf35', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 05:48:55', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-03 00:18:55', '2024-04-03 00:18:55'),
	('944101eb-f267-4b75-ae6c-8d9a6fff0464', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 05:03:14', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 23:33:14', '2024-04-02 23:33:14'),
	('94723c1b-13fc-4070-953b-7237d466bd5b', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 05:16:16', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 23:46:16', '2024-04-02 23:46:16'),
	('988b6640-8575-482b-8e62-f9ae48e324c8', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-02 15:32:19', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 10:02:19', '2024-04-02 10:02:19'),
	('98d292e5-64d9-4bab-b068-e59d780772c6', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 06:13:57', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-03 00:43:57', '2024-04-03 00:43:57'),
	('98e019e2-86cf-4d54-9ffc-ed7de0f9c0ab', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 15:15:43', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-03 09:45:43', '2024-04-03 09:45:43'),
	('995da5f2-39a2-400f-975a-d3a818b280d3', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1926, '{"user_to":853,"user_from":"1926JE002","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-05 17:41:04', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 12:11:04', '2024-04-05 12:11:04'),
	('9b0cb781-f104-4662-8acb-b8e81a8fc5d4', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 13:20:04', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 07:50:04', '2024-03-30 07:50:04'),
	('9b490f37-97a9-45f0-b6a3-c2e36edad917', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 05:10:48', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 23:40:48', '2024-04-02 23:40:48'),
	('9c007022-3f8c-4136-ac2a-ea4ed0859b30', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 12:45:42', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 07:15:42', '2024-03-30 07:15:42'),
	('9c3acdad-5d5c-4492-b2ff-b24d73532464', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-02 09:17:05', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 03:47:05', '2024-04-02 03:47:05'),
	('9d4dbe1a-618f-48f6-8ec4-697bd39b2574', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 14:14:03', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 08:44:03', '2024-03-30 08:44:03'),
	('9d95edc1-cce2-4f30-9fcc-c7073d0b3cf0', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-05 09:13:27', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 03:43:27', '2024-04-05 03:43:27'),
	('9e058b54-5365-4b8f-b4fd-fc49f98a21a5', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 05:00:55', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 23:30:55', '2024-04-02 23:30:55'),
	('9f73cca1-e84f-450a-ad50-d687b0c92bb5', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 13:25:36', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 07:55:36', '2024-03-30 07:55:36'),
	('a077e355-ca39-4893-b5cf-0f5bd3e8317b', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 18:55:13', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 13:25:13', '2024-03-30 13:25:13'),
	('a11b596f-b387-4fcd-80a2-4d0ddb83ea16', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 19:24:11', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 13:54:11', '2024-03-30 13:54:11'),
	('a19953b1-1539-4d46-8a14-10a35d9e03e2', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-02 12:10:20', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 06:40:20', '2024-04-02 06:40:20'),
	('a4199e45-10b7-4a47-a322-010b2426e460', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 04:42:46', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 23:12:46', '2024-04-02 23:12:46'),
	('a4ddec24-714e-4ac4-ad00-5361a4789f42', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1926, '{"user_to":853,"user_from":"1926JE002","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-05 16:44:39', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 11:14:39', '2024-04-05 11:14:39'),
	('a604f520-4de8-410e-ac1d-46345efa6a71', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1926, '{"user_to":853,"user_from":"1926JE002","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-05 16:42:43', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 11:12:43', '2024-04-05 11:12:43'),
	('a8c99129-cbe3-4407-a580-926037102d93', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 19:29:15', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 13:59:15', '2024-03-30 13:59:15'),
	('a9037acc-3288-469d-8397-33d8ee32b605', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-27 11:33:12', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-27 06:03:12', '2024-03-27 06:03:12'),
	('a9a3047c-8d88-42de-bf47-580f2d0eb71c', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 19:18:10', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 13:48:10', '2024-03-30 13:48:10'),
	('aa119eb8-db27-4387-ace0-82141e333309', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 06:02:44', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-03 00:32:44', '2024-04-03 00:32:44'),
	('aa19c84f-d41d-4002-817a-9c0f3ffe4bfb', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-02 08:56:00', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 03:26:00', '2024-04-02 03:26:00'),
	('aa65fe5b-ba39-4ac6-ac5b-5ff5d42e6358', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 12:47:11', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 07:17:11', '2024-03-30 07:17:11'),
	('aab7f6f5-9d47-44f4-94f2-9aa665ab6657', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 14:03:37', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 08:33:37', '2024-03-30 08:33:37'),
	('ab39ab5c-7946-4cf1-a15e-e2fe9517f459', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 14:38:30', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 09:08:30', '2024-03-30 09:08:30'),
	('ab514414-4e9c-4d2a-9014-bbd1a6aa0636', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1926, '{"user_to":853,"user_from":"1926JE002","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-05 17:21:21', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 11:51:21', '2024-04-05 11:51:21'),
	('acc6a3cf-fa8a-42c9-baf1-b487f8a3a6a2', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 06:06:59', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-03 00:36:59', '2024-04-03 00:36:59'),
	('ae936161-932f-420d-a40f-bb4a965d031b', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1926, '{"user_to":853,"user_from":"1926JE002","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-05 17:25:42', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 11:55:42', '2024-04-05 11:55:42'),
	('aee915ae-09b7-4aa6-a014-9505efbed295', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-02 16:30:39', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 11:00:39', '2024-04-02 11:00:39'),
	('af02767f-1c5c-43e8-a909-ce75689635ec', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1926, '{"user_to":853,"user_from":"1926JE002","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 17:12:08', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-03 11:42:08', '2024-04-03 11:42:08'),
	('afec0d53-f981-4a63-ae69-e4c3f60bb11a', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-05 07:30:13', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 02:00:13', '2024-04-05 02:00:13'),
	('b25f667e-8f88-46a4-89eb-3b7418693a8d', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 06:03:45', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-03 00:33:45', '2024-04-03 00:33:45'),
	('b2d77695-f2a9-4bfe-bfa6-0068d983d484', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 09:13:15', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 03:43:15', '2024-03-30 03:43:15'),
	('b2eb4ad3-a0c2-40d6-be0f-8d867f55463f', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1926, '{"user_to":853,"user_from":"1926JE002","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 19:04:18', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-03 13:34:18', '2024-04-03 13:34:18'),
	('b492fa71-5aab-4182-8a9a-8b73eececef7', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 06:09:22', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-03 00:39:22', '2024-04-03 00:39:22'),
	('b4d3bceb-df84-4aa5-a51b-d43020f67894', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-02 15:32:52', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 10:02:52', '2024-04-02 10:02:52'),
	('b60a8849-c81a-4b9a-ac8c-139ea352abe2', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 05:37:52', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-03 00:07:52', '2024-04-03 00:07:52'),
	('b62ea557-942b-4ee9-a1e9-534008d2d809', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 09:20:33', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 03:50:33', '2024-03-30 03:50:33'),
	('b7fb67c4-b5bf-42a7-bd90-5b1d0118f061', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-02 16:50:22', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 11:20:22', '2024-04-02 11:20:22'),
	('b86e1c44-2472-4ec2-8e96-5be1782c243f', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 06:03:43', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-03 00:33:43', '2024-04-03 00:33:43'),
	('b8b2620b-4725-4cc4-8faf-cb5f3ee3e6fb', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 05:54:45', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-03 00:24:45', '2024-04-03 00:24:45'),
	('ba0908c3-caa9-48bd-b993-e1f8d29c975d', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1926, '{"user_to":853,"user_from":"1926JE002","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-05 17:22:08', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 11:52:08', '2024-04-05 11:52:08'),
	('bae838e7-e615-4189-ac17-464dca12d44d', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1926, '{"user_to":853,"user_from":"1926JE002","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 17:06:18', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-03 11:36:18', '2024-04-03 11:36:18'),
	('bae9e980-7281-4997-a479-46ffcfe328a4', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1926, '{"user_to":853,"user_from":"1926JE002","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-05 17:08:05', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 11:38:05', '2024-04-05 11:38:05'),
	('bb459ad1-2621-4362-910f-1dc8b4987853', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 16:40:13', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 11:10:13', '2024-03-30 11:10:13'),
	('bb57188a-03c9-464b-b598-7b6fbb9ff434', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1926, '{"user_to":853,"user_from":"1926JE002","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-06 04:11:01', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 22:41:01', '2024-04-05 22:41:01'),
	('bbe3ed5f-bb58-4852-b97f-262faf720020', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1926, '{"user_to":853,"user_from":"1926JE002","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-05 16:38:24', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 11:08:24', '2024-04-05 11:08:24'),
	('bcd63dd0-db87-45b2-a434-a2aac02a39ed', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 14:08:32', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 08:38:32', '2024-03-30 08:38:32'),
	('bcfae47f-625d-4003-92c7-b8dc3178f711', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1926, '{"user_to":853,"user_from":"1926JE002","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-05 14:24:14', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 08:54:14', '2024-04-05 08:54:14'),
	('bd93bbfb-0592-4814-9e71-7742321e8bc1', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-02 08:55:27', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 03:25:27', '2024-04-02 03:25:27'),
	('be68e3da-d5cb-4f87-a687-6c22110e7d65', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 13:20:22', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 07:50:22', '2024-03-30 07:50:22'),
	('bf38aacc-d81f-4f83-b2bc-cf2f7a8aca89', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-02 15:33:49', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 10:03:49', '2024-04-02 10:03:49'),
	('c00b25bd-9d44-40c7-8d85-a317300cba7a', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 17:15:30', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 11:45:30', '2024-03-30 11:45:30'),
	('c0cd16ce-bcd8-4366-b165-d84d45dfcf17', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-02 15:32:28', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 10:02:28', '2024-04-02 10:02:28'),
	('c1ac662a-808a-43ff-8568-86a1046476b6', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 17:26:34', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 11:56:34', '2024-03-30 11:56:34'),
	('c3629ed4-b6f6-48ab-912e-71f24e5fa5ad', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 19:25:10', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 13:55:10', '2024-03-30 13:55:10'),
	('c3f6195c-9654-4352-b376-11fb675b217a', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-02 08:14:36', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 02:44:36', '2024-04-02 02:44:36'),
	('c48f992e-9f59-436d-8c4f-f9c6a5b1ec4b', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 13:35:29', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 08:05:29', '2024-03-30 08:05:29'),
	('c6be3d88-d265-4cb1-a13c-64f0cdcf1f50', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 16:48:59', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 11:18:59', '2024-03-30 11:18:59'),
	('c82e8648-9ab1-4d50-82a8-af070f103328', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 04:49:45', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 23:19:45', '2024-04-02 23:19:45'),
	('ca8d7037-eaa4-4d1c-aa35-9b26239096b8', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-02 16:29:36', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 10:59:36', '2024-04-02 10:59:36'),
	('cb0657f3-f288-4151-89ed-4bc184fe9e7d', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-02 07:55:40', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 02:25:40', '2024-04-02 02:25:40'),
	('cc4af60e-3482-4cb3-8918-9c107f9c57a3', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 14:09:27', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 08:39:27', '2024-03-30 08:39:27'),
	('cc69f8a6-7dec-4532-a14b-797b0ed04895', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-02 15:44:08', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 10:14:08', '2024-04-02 10:14:08'),
	('cddf96a7-fcee-4b6c-9216-df3e9eb3635d', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 11:35:14', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-03 06:05:14', '2024-04-03 06:05:14'),
	('cfb6e3bc-33f0-4762-a82f-bebc41191a0d', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 13:17:15', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 07:47:15', '2024-03-30 07:47:15'),
	('d0374b17-3c99-4231-88bb-1016b1da59da', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1926, '{"user_to":853,"user_from":"1926JE002","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-05 16:58:16', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 11:28:16', '2024-04-05 11:28:16'),
	('d08922b7-a42b-4162-99e5-e2010d64b2a0', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1926, '{"user_to":853,"user_from":"1926JE002","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-05 17:40:27', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 12:10:27', '2024-04-05 12:10:27'),
	('d09d3ba2-0b67-41ed-aa4c-1aef155cd4f4', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1926, '{"user_to":853,"user_from":"1926JE002","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 17:06:28', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-03 11:36:28', '2024-04-03 11:36:28'),
	('d217af09-e5a1-4cd6-8079-8a88bfeabbfa', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 05:50:28', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-03 00:20:28', '2024-04-03 00:20:28'),
	('d28bc3e7-e522-4dd2-8a7b-9f93653243f6', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1926, '{"user_to":853,"user_from":"1926JE002","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-05 19:34:26', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 14:04:26', '2024-04-05 14:04:26'),
	('d47eb631-26fa-4f5d-a3ed-a532b895a56c', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-02 13:20:24', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 07:50:24', '2024-04-02 07:50:24'),
	('d55886c0-3f25-42d3-8992-3d3200836638', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-05 07:27:07', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 01:57:07', '2024-04-05 01:57:07'),
	('d6425cd6-7e53-40ef-ac98-3efab37d1770', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 06:16:58', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-03 00:46:58', '2024-04-03 00:46:58'),
	('d73f4e31-fa9f-4924-847d-4dbe5f5929e2', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1926, '{"user_to":853,"user_from":"1926JE002","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-05 17:41:08', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 12:11:08', '2024-04-05 12:11:08'),
	('d8660e76-29d5-4c7c-bbb6-3bc38a4bb05a', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-02 12:06:35', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 06:36:35', '2024-04-02 06:36:35'),
	('d98c2818-90bb-4f57-a34e-c2598b15d748', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-02 15:31:57', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 10:01:57', '2024-04-02 10:01:57'),
	('d9f4b6af-10f6-48b2-9b32-821731306dad', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 05:47:56', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-03 00:17:56', '2024-04-03 00:17:56'),
	('dc114112-dc1b-4ee1-b1b5-724dfa2293e8', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 09:17:27', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 03:47:27', '2024-03-30 03:47:27'),
	('dc86b01c-74a4-44a6-a1b9-b823fbbe1e9f', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-05 08:01:25', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 02:31:25', '2024-04-05 02:31:25'),
	('dce2b851-aaeb-487d-94fc-ebfe763e6fb0', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 13:30:33', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 08:00:33', '2024-03-30 08:00:33'),
	('de5adc2b-1459-482f-ad88-1468fe586e25', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-02 08:15:47', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 02:45:47', '2024-04-02 02:45:47'),
	('dea60a36-3200-4111-9660-939c220fa0d2', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 17:24:19', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 11:54:19', '2024-03-30 11:54:19'),
	('deec5e07-a8f6-4cbf-a09c-332c6828fb60', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1926, '{"user_to":853,"user_from":"1926JE002","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-05 19:33:03', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 14:03:03', '2024-04-05 14:03:03'),
	('df92f728-259f-4a63-a85e-77263a244715', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 13:35:03', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 08:05:03', '2024-03-30 08:05:03'),
	('e0eaf32c-dcb1-4337-a165-11712ac67caf', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 06:11:13', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-03 00:41:13', '2024-04-03 00:41:13'),
	('e163d954-9362-4db7-8694-a109f5ee3949', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 14:10:15', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 08:40:15', '2024-03-30 08:40:15'),
	('e1dd844a-d4e3-497f-8dc3-ba565925a235', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-02 15:32:10', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 10:02:10', '2024-04-02 10:02:10'),
	('e2052fb6-4535-412c-9246-740898b7fec3', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1926, '{"user_to":853,"user_from":"1926JE002","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 17:06:15', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-03 11:36:15', '2024-04-03 11:36:15'),
	('e2e29fcf-ab1a-4e50-9263-c360b0c9e022', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 13:19:03', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 07:49:03', '2024-03-30 07:49:03'),
	('e3115ee1-baa6-4699-955a-aaacb7c57202', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 14:05:41', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 08:35:41', '2024-03-30 08:35:41'),
	('e321ce38-d819-4cfe-979e-e2a9ba3c2f1f', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1926, '{"user_to":853,"user_from":"1926JE002","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-05 16:38:31', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 11:08:31', '2024-04-05 11:08:31'),
	('e3db363d-e246-4362-8344-75f4c17eba30', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-05 07:25:21', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 01:55:21', '2024-04-05 01:55:21'),
	('e4809a32-17ec-4905-a41e-65ee79694e31', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 05:05:17', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 23:35:17', '2024-04-02 23:35:17'),
	('e4e31171-a973-458d-ba5b-9deb50f86a64', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 05:09:37', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 23:39:37', '2024-04-02 23:39:37'),
	('e5741005-bde7-4992-b587-120a437a402e', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 19:18:51', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 13:48:51', '2024-03-30 13:48:51'),
	('e6740032-acfb-43a3-9a4e-c52b2f517044', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 15:07:14', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 09:37:14', '2024-03-30 09:37:14'),
	('e6a080e2-44cd-4c25-80b4-e39cd09fe0ed', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-02 11:43:42', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 06:13:42', '2024-04-02 06:13:42'),
	('e925716e-7c2f-4612-ae60-6a1a17999dcc', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-27 10:53:24', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-27 05:23:24', '2024-03-27 05:23:24'),
	('e9770476-953d-4ce1-87ac-eefd5fe2343d', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1926, '{"user_to":853,"user_from":"1926JE002","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-05 17:19:22', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 11:49:22', '2024-04-05 11:49:22'),
	('ea59d219-bcf3-46c5-bc8d-024e9933d562', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 06:19:55', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-03 00:49:55', '2024-04-03 00:49:55'),
	('eb4e6a76-ec1e-4325-8e4c-06324ab9d1b9', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-02 09:16:41', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 03:46:41', '2024-04-02 03:46:41'),
	('eba77804-2218-4bcf-8931-609230d0011c', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 17:22:42', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 11:52:42', '2024-03-30 11:52:42'),
	('ec06ea51-d516-4150-80ea-12f20b1a64c3', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1926, '{"user_to":853,"user_from":"1926JE002","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-05 14:26:35', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 08:56:35', '2024-04-05 08:56:35'),
	('ec79b9de-88a4-4a3e-a826-d51080ca7df8', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 14:02:25', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 08:32:25', '2024-03-30 08:32:25'),
	('edbe9f1c-8ae8-4a42-b3ad-c418ab0fc8ea', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 08:45:12', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 03:15:12', '2024-03-30 03:15:12'),
	('ef352ba6-a2ae-45fc-9f92-c620398c87fd', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-02 13:46:20', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 08:16:20', '2024-04-02 08:16:20'),
	('efc660bb-994b-4d64-aa2b-98302bccdf2c', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1926, '{"user_to":853,"user_from":"1926JE002","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 16:58:52', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-03 11:28:52', '2024-04-03 11:28:52'),
	('eff03694-0f28-4aa3-8750-9ef123fb9c88', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 06:25:24', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-03 00:55:24', '2024-04-03 00:55:24'),
	('f090fd78-f104-49ad-b80f-56cf6f9b01f1', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-02 09:36:04', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 04:06:04', '2024-04-02 04:06:04'),
	('f2545b17-e698-4ef1-b5f6-5b0f8495451c', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-02 12:02:43', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 06:32:43', '2024-04-02 06:32:43'),
	('f27364a5-69cc-4776-b9ce-545e45a8a29a', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 06:10:00', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-03 00:40:00', '2024-04-03 00:40:00'),
	('f307f032-78b5-4693-b12a-5fb5cb0ba526', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 06:01:17', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-03 00:31:17', '2024-04-03 00:31:17'),
	('f392a837-d848-4f5e-966e-1df302ae04f5', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 06:13:42', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-03 00:43:42', '2024-04-03 00:43:42'),
	('f40dfcd8-9dd8-473a-b1ef-5a04b7a79c08', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1926, '{"user_to":853,"user_from":"1926JE002","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-05 16:48:55', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 11:18:55', '2024-04-05 11:18:55'),
	('f4f27483-27f9-47a9-bd04-9030fb6ae90b', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 15:16:43', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 09:46:43', '2024-03-30 09:46:43'),
	('f67612ad-6338-4bbb-b24c-d482cf09c637', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-05 10:50:37', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 05:20:37', '2024-04-05 05:20:37'),
	('f68e8cd3-6ac0-4441-93c7-d9efb12b12ff', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 14:00:56', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 08:30:56', '2024-03-30 08:30:56'),
	('f6cede0a-39ba-43e6-bd51-903b98453713', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1926, '{"user_to":853,"user_from":"1926JE002","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 17:13:10', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-03 11:43:10', '2024-04-03 11:43:10'),
	('f72cbe23-c3ef-437b-89a1-65c4124a0b5b', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 13:25:31', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 07:55:31', '2024-03-30 07:55:31'),
	('f7d6b088-eed1-4dcd-9cff-baaf48f51288', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1926, '{"user_to":853,"user_from":"1926JE002","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-05 17:19:45', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 11:49:45', '2024-04-05 11:49:45'),
	('f85c3e53-b94a-402b-a9cb-6be7824b42a6', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1926, '{"user_to":853,"user_from":"1926JE002","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-05 17:31:19', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 12:01:19', '2024-04-05 12:01:19'),
	('f9caccaa-6d26-4691-8ba0-cd2af37f37e9', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1926, '{"user_to":853,"user_from":"1926JE002","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-05 12:14:04', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 06:44:04', '2024-04-05 06:44:04'),
	('f9ee07d0-fb4b-4422-b91c-7eaecf767c95', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1926, '{"user_to":853,"user_from":"1926JE002","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-05 17:09:13', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 11:39:13', '2024-04-05 11:39:13'),
	('fb2a393d-e886-445c-b27f-ad968e934f52', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-02 13:50:09', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 08:20:09', '2024-04-02 08:20:09'),
	('fc28715c-9188-4dbf-9073-6ba021871052', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 13:29:56', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 07:59:56', '2024-03-30 07:59:56'),
	('fc7f1511-4932-4768-afbc-730dd9972914', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-02 16:30:58', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 11:00:58', '2024-04-02 11:00:58'),
	('fca9703e-c8b7-49bf-9407-e848f7642fe1', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-03 16:02:00', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-03 10:32:00', '2024-04-03 10:32:00'),
	('fddb9720-e7e6-41c5-b376-c85fff82d24e', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1926, '{"user_to":853,"user_from":"1926JE002","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-05 12:14:31', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 06:44:31', '2024-04-05 06:44:31'),
	('fe010117-5788-4098-b1d1-cea72333daec', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-02 15:35:49', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 10:05:49', '2024-04-02 10:05:49'),
	('fec9561c-dc47-4035-86f1-d3a44411d2b6', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1926, '{"user_to":853,"user_from":"1926JE002","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-04-05 17:04:22', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 11:34:22', '2024-04-05 11:34:22'),
	('ff4fd786-ea2d-4fb3-9056-10567339e5cd', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 1594, '{"user_to":853,"user_from":"1594","auth_id":"dpgc","notice_title":"This is header","description":"This is body test by abhijeet for real time notification sync","module_id":"test","notice_path":null,"data":"This is body test by abhijeet for real time notification sync"}', NULL, NULL, '2024-03-30 09:23:01', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 03:53:01', '2024-03-30 03:53:01');

-- Dumping structure for table cp.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table cp.personal_access_tokens: ~2 rows (approximately)
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
	(42, 'App\\Models\\User', '1594', 'mis_MyApp', 'dabdc5f7552f6329ae83940fdf6615ed026f3217aedb6d30a938f6141c71422d', '["server:update"]', '2024-04-05 23:16:49', NULL, '2024-04-05 23:16:33', '2024-04-05 23:16:49'),
	(43, 'App\\Models\\User', '1926JE002', 'mis_MyApp', 'd5686cfcced269cf4b504fde22af1e01371102299999df666833fe9f49660fde', '["server:update"]', '2024-04-05 23:19:00', NULL, '2024-04-05 23:17:11', '2024-04-05 23:19:00');

-- Dumping structure for table cp.personal_access_tokens_log
CREATE TABLE IF NOT EXISTS `personal_access_tokens_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `token_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table cp.personal_access_tokens_log: ~41 rows (approximately)
INSERT INTO `personal_access_tokens_log` (`id`, `token_id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
	(1, 1, 'App\\Models\\User', 1594, 'mis_MyApp', 'df86ccb3adfb297a5ab8688c034801225e6b108bf339d20e450023b718324e2f', '["server:update"]', NULL, NULL, '2024-03-12 09:20:46', '2024-03-12 09:20:46'),
	(2, 2, 'App\\Models\\User', 1594, 'mis_MyApp', '2beccb8b9a838de861f3df422a84cb176a72cb207aac2841ab80d47402729bd8', '["server:update"]', NULL, NULL, '2024-03-12 09:21:09', '2024-03-12 09:21:09'),
	(3, 3, 'App\\Models\\User', 1594, 'mis_MyApp', '9d73cce104329c85d10c2c80e60e15c625bb7088db3b8acc5de0285f3a33e0d4', '["server:update"]', NULL, NULL, '2024-03-12 09:21:35', '2024-03-12 09:21:35'),
	(4, 4, 'App\\Models\\User', 1594, 'mis_MyApp', '811c8ae4d1dff58c3490223a22c08480c4c9f60dbd17a057b7070a704eab2c9b', '["server:update"]', NULL, NULL, '2024-03-12 09:22:06', '2024-03-12 09:22:06'),
	(5, 5, 'App\\Models\\User', 1594, 'mis_MyApp', 'aab38aca168b62cb389e40541ce9bd4e471ba75d08d7a316ca33eb6eb75a7974', '["server:update"]', NULL, NULL, '2024-03-12 09:22:23', '2024-03-12 09:22:23'),
	(6, 6, 'App\\Models\\User', 1594, 'mis_MyApp', 'af097c3fe799ed856ffc7970b2d41bc4806b5b6190e99260e119b556f5a00364', '["server:update"]', '2024-03-12 03:52:31', NULL, '2024-03-12 09:22:39', '2024-03-12 09:22:39'),
	(7, 7, 'App\\Models\\User', 1594, 'mis_MyApp', 'b451563d72c004d165f25eefafacfa7de03628a146d7537fb3860406ac4fd79d', '["server:update"]', '2024-03-12 03:53:43', NULL, '2024-03-12 09:23:50', '2024-03-12 09:23:50'),
	(8, 8, 'App\\Models\\User', 1594, 'mis_MyApp', '8e99a581e7e8692792bf54fb88c494177111288f870cb91b73030d0f3f665afd', '["server:update"]', '2024-03-12 03:53:52', NULL, '2024-03-12 09:39:51', '2024-03-12 09:39:51'),
	(9, 9, 'App\\Models\\User', 1594, 'mis_MyApp', '3349da4059f202e49b208e11f380413ec7302ce7177e934907236f64361c3909', '["server:update"]', NULL, NULL, '2024-03-27 10:44:51', '2024-03-27 10:44:51'),
	(10, 10, 'App\\Models\\User', 1594, 'mis_MyApp', '89bf3a1f70393052f03605f9cbd71c03aff334c9eea1224b24a3b24a63619762', '["server:update"]', '2024-03-27 05:23:25', NULL, '2024-03-27 10:54:09', '2024-03-27 10:54:09'),
	(11, 11, 'App\\Models\\User', 1594, 'mis_MyApp', '9f67a42b4d1645fd4170e99ce2eb9e79045ef91c70d1b52f17e7fab85e2d8417', '["server:update"]', '2024-03-27 06:09:51', NULL, '2024-03-27 11:40:21', '2024-03-27 11:40:21'),
	(12, 12, 'App\\Models\\User', 1594, 'mis_MyApp', '2be994245af1711b4754d9cb468f15824128c9716674037c9712860e49e1c2ec', '["server:update"]', '2024-03-27 06:10:23', NULL, '2024-03-27 12:58:09', '2024-03-27 12:58:09'),
	(13, 13, 'App\\Models\\User', 1594, 'mis_MyApp', '8576aba99ab01f595288d780ff45f19ee72dd330d69a5b2ac14ca683dad455cd', '["server:update"]', '2024-03-27 07:32:13', NULL, '2024-03-29 14:29:02', '2024-03-29 14:29:02'),
	(14, 14, 'App\\Models\\User', 1594, 'mis_MyApp', '42355a36a196290c60dded340baa4754f4fef1f9c704f3ac968f6a4a647f80a0', '["server:update"]', '2024-03-29 08:59:04', NULL, '2024-03-30 08:31:57', '2024-03-30 08:31:57'),
	(15, 15, 'App\\Models\\User', 1594, 'mis_MyApp', 'a5c96992446fbcd480e5e96037dc1b7624dbbfb47516a0aa9fc84aba5b72a3f8', '["server:update"]', '2024-03-30 03:49:44', NULL, '2024-03-30 09:20:19', '2024-03-30 09:20:19'),
	(16, 16, 'App\\Models\\User', 1594, 'mis_MyApp', 'ebc2edb940ab04ed4fdd0e6517bd3f41290b09d971f7eb6fe85979cd62043b24', '["server:update"]', '2024-03-30 07:14:16', NULL, '2024-03-30 12:45:00', '2024-03-30 12:45:00'),
	(17, 17, 'App\\Models\\User', 1594, 'mis_MyApp', 'f0d1a3242fa6148f15585d13d3c7a6f3526ca7ec4552a82970044c9f7cd4fc93', '["server:update"]', '2024-03-30 07:15:42', NULL, '2024-03-30 12:45:59', '2024-03-30 12:45:59'),
	(18, 18, 'App\\Models\\User', 1594, 'mis_MyApp', 'c4295cc8b322c4c03c8818780547910cdf4d8074249a1ca5205b5a8287cc280b', '["server:update"]', '2024-03-30 13:45:38', NULL, '2024-03-30 19:16:54', '2024-03-30 19:16:54'),
	(19, 19, 'App\\Models\\User', 1594, 'mis_MyApp', '1737a2f7c1367f6d5ac5c157a81e3751c59b45e92e62e6cfe6c8ac04871fe5e6', '["server:update"]', '2024-03-30 13:51:57', NULL, '2024-03-30 19:22:33', '2024-03-30 19:22:33'),
	(20, 20, 'App\\Models\\User', 1594, 'mis_MyApp', 'e38b7aabcbdf5d47a020e02952f30ea873fab890a254ab5c9c13a42c94656bbf', '["server:update"]', '2024-03-30 13:53:19', NULL, '2024-03-30 19:24:01', '2024-03-30 19:24:01'),
	(21, 21, 'App\\Models\\User', 1594, 'mis_MyApp', 'de34f9caebe42bdcb04af91c2096025bada4543037a468e83afa0bdba5c35a6f', '["server:update"]', '2024-03-30 13:55:11', NULL, '2024-03-30 19:29:04', '2024-03-30 19:29:04'),
	(22, 22, 'App\\Models\\User', 1594, 'mis_MyApp', 'fc19e42282d809cf2a0b836fc4b727fb5ea9c36a7dcb46e84bafcbab4ccf7408', '["server:update"]', '2024-03-30 14:00:17', NULL, '2024-04-02 07:45:28', '2024-04-02 07:45:28'),
	(23, 23, 'App\\Models\\User', 1594, 'mis_MyApp', '92497215ca6faf812407236eda12609c61c764c61a32adcc66f718d5bc24e360', '["server:update"]', '2024-04-02 10:14:08', NULL, '2024-04-02 16:26:09', '2024-04-02 16:26:09'),
	(24, 24, 'App\\Models\\User', 1594, 'mis_MyApp', '734c28862771b7b7aab7c966fef27781097e6adfc8d34201d2925c60daf08004', '["server:update"]', '2024-04-02 12:55:38', NULL, '2024-04-03 04:39:42', '2024-04-03 04:39:42'),
	(25, 25, 'App\\Models\\User', 1594, 'mis_MyApp', 'b1a53f3205061a48d7ecec57b574ce73542d69d0c1509bacff07f0f41c0e67bf', '["server:update"]', '2024-04-02 23:47:45', NULL, '2024-04-03 05:18:01', '2024-04-03 05:18:01'),
	(26, 26, 'App\\Models\\User', 1594, 'mis_MyApp', '69e83b378b1504f48900d6a6e82a36a2ae197898932dca13477830a32d0dc264', '["server:update"]', '2024-04-02 23:48:03', NULL, '2024-04-03 05:33:10', '2024-04-03 05:33:10'),
	(27, 27, 'App\\Models\\User', 1594, 'mis_MyApp', '59aa51b2a99178e67fdbffecca6806d133472eb44ffdd262c6c9dafb95e241be', '["server:update"]', '2024-04-03 00:03:11', NULL, '2024-04-03 05:34:27', '2024-04-03 05:34:27'),
	(28, 28, 'App\\Models\\User', 1594, 'mis_MyApp', '86b84c344aa715a10842e03269fa23e35636f798b9c1994ffe628b3c50d0c378', '["server:update"]', '2024-04-03 00:04:41', NULL, '2024-04-03 05:37:19', '2024-04-03 05:37:19'),
	(29, 29, 'App\\Models\\User', 1594, 'mis_MyApp', 'b0ced6e47b3d7d76c838de4ab662c2d32f3963878562936ad28248da53d4bea7', '["server:update"]', '2024-04-03 00:20:55', NULL, '2024-04-03 05:54:31', '2024-04-03 05:54:31'),
	(30, 30, 'App\\Models\\User', 1594, 'mis_MyApp', 'd13959bd01a319565871480773a37193067c1c2858f3eb099c2d1c57faa1aafb', '["server:update"]', '2024-04-03 01:59:47', NULL, '2024-04-03 07:35:01', '2024-04-03 07:35:01'),
	(31, 31, 'App\\Models\\User', 1594, 'mis_MyApp', 'ca36268a6d2fd22c67680f087884107ac13f8764f160e825e67035adddacb100', '["server:update"]', '2024-04-03 02:06:01', NULL, '2024-04-03 11:33:51', '2024-04-03 11:33:51'),
	(32, 32, 'App\\Models\\User', 1594, 'mis_MyApp', 'cca2db8642d0365fd854b5268c9b4dd4549ca8a39e2ce980f764857218ac0d30', '["server:update"]', '2024-04-03 09:45:44', NULL, '2024-04-03 15:59:45', '2024-04-03 15:59:45'),
	(33, 33, 'App\\Models\\User', 1594, 'mis_MyApp', '07e888e74bc222a6ded4f93a0e016589b6306c2f2bcc05d6fd0bd9a3477af66c', '["server:update"]', NULL, NULL, '2024-04-03 16:01:13', '2024-04-03 16:01:13'),
	(34, 33, 'App\\Models\\User', 1594, 'mis_MyApp', '07e888e74bc222a6ded4f93a0e016589b6306c2f2bcc05d6fd0bd9a3477af66c', '["server:update"]', NULL, NULL, '2024-04-03 16:15:25', '2024-04-03 16:15:25'),
	(35, 33, 'App\\Models\\User', 1594, 'mis_MyApp', '07e888e74bc222a6ded4f93a0e016589b6306c2f2bcc05d6fd0bd9a3477af66c', '["server:update"]', NULL, NULL, '2024-04-03 16:56:37', '2024-04-03 16:56:37'),
	(36, 35, 'App\\Models\\User', 1926, 'mis_MyApp', '52283b7b346cdd2942d111e23c3da65ad34f8545d899b4dda370e385d7ca0f09', '["server:update"]', '2024-04-03 11:43:21', NULL, '2024-04-03 19:04:14', '2024-04-03 19:04:14'),
	(37, 34, 'App\\Models\\User', 1594, 'mis_MyApp', '8cc7435d55633b41e38e574201670bf78feca3bf98faa44c047e723c4086494b', '["server:update"]', '2024-04-03 11:26:38', NULL, '2024-04-05 07:18:06', '2024-04-05 07:18:06'),
	(38, 36, 'App\\Models\\User', 1926, 'mis_MyApp', '0c1596155d4241a4d22295a0bd27ff33d16288e0785c9bd493f7e7bac412a3bd', '["server:update"]', '2024-04-03 13:36:54', NULL, '2024-04-05 12:13:47', '2024-04-05 12:13:47'),
	(39, 37, 'App\\Models\\User', 1594, 'mis_MyApp', '53678a3cef7c72c0124eca6ca58afbd3c36d5e5f1098857514b453beff3ad786', '["server:update"]', '2024-04-05 08:47:20', NULL, '2024-04-05 17:28:06', '2024-04-05 17:28:06'),
	(40, 38, 'App\\Models\\User', 1926, 'mis_MyApp', '2e318acec8bdfb62386e95b417e97597503d9b4dc514a96fca3e2da8b46c59f6', '["server:update"]', '2024-04-05 11:55:44', NULL, '2024-04-05 17:28:46', '2024-04-05 17:28:46'),
	(41, 40, 'App\\Models\\User', 1926, 'mis_MyApp', 'a81b6d97af23c920cf131202ea1628b94639a7b1f24bcb06cbee7906746b0e3f', '["server:update"]', '2024-04-05 14:05:47', NULL, '2024-04-06 04:10:58', '2024-04-06 04:10:58'),
	(42, 39, 'App\\Models\\User', 1594, 'mis_MyApp', '5195b47aa254d42127e0c2a0796fc2900f1cf19c15e90772457b28cb3c1cc9fa', '["server:update"]', '2024-04-05 11:58:18', NULL, '2024-04-06 04:46:33', '2024-04-06 04:46:33'),
	(43, 41, 'App\\Models\\User', 1926, 'mis_MyApp', '85f1a936bf5cb3cec6be13cd482e64dca28731098ed4b33991afc0554d9967ce', '["server:update"]', '2024-04-05 23:07:51', NULL, '2024-04-06 04:47:11', '2024-04-06 04:47:11');

-- Dumping structure for table cp.pre_stu_course
CREATE TABLE IF NOT EXISTS `pre_stu_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form_id` int(11) NOT NULL,
  `admn_no` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sub_offered_id` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `subject_code` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `course_aggr_id` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `subject_name` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `priority` int(11) NOT NULL,
  `sub_category` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `sub_category_cbcs_offered` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `map_id` int(20) DEFAULT NULL,
  `course` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `branch` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `session_year` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `session` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `remark1` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `remark2` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL COMMENT '1=>''allotted course/course course'', 2=>''deleted/drop course'', 3=>''Physically verified/confirmed course'', 4=>'''',5=>''''',
  `remark3` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE,
  KEY `Index 2` (`sub_offered_id`) USING BTREE,
  KEY `pre_stu_course_form_id_idx` (`form_id`) USING BTREE,
  KEY `pre_stu_course_admn_no_idx` (`admn_no`,`session_year`,`session`) USING BTREE,
  KEY `Index 5` (`course`,`branch`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=345727607 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table cp.pre_stu_course: ~21 rows (approximately)
INSERT INTO `pre_stu_course` (`id`, `form_id`, `admn_no`, `sub_offered_id`, `subject_code`, `course_aggr_id`, `subject_name`, `priority`, `sub_category`, `sub_category_cbcs_offered`, `map_id`, `course`, `branch`, `session_year`, `session`, `remark1`, `remark2`, `remark3`, `created_at`, `updated_at`) VALUES
	(345727586, 3114882, '1926JE002', 'c316857', 'MCI101', 'verified', 'Mathematics - I', 0, 'IC1', 'H', NULL, 'comm', 'comm', '2023-2024', 'Monsoon', '', '3', '', '2023-08-07 10:20:55', '2024-03-21 10:43:59'),
	(345727587, 3114882, '1926JE002', 'c316861', 'EEI101', 'verified', 'Basics of Electrical Engineering', 0, 'IC4', 'H', NULL, 'comm', 'comm', '2023-2024', 'Monsoon', '', '3', '', '2023-08-07 10:20:55', '2024-03-21 10:44:03'),
	(345727588, 3114882, '1926JE002', 'c316863', 'EEI102', 'verified', 'Electrical Engineering Lab', 0, 'IC5', 'H', NULL, 'comm', 'comm', '2023-2024', 'Monsoon', '', '3', '', '2023-08-07 10:20:55', '2024-03-21 10:44:06'),
	(345727589, 3114882, '1926JE002', 'c316867', 'ECI102', 'verified', 'Electronics Engineering Lab', 0, 'IC7', 'H', NULL, 'comm', 'comm', '2023-2024', 'Monsoon', '', '3', '', '2023-08-07 10:20:55', '2024-03-21 10:44:26'),
	(345727590, 3114882, '1926JE002', 'c316870', 'MEI102', 'verified', 'Manufacturing Processes', 0, 'IC10', 'H', NULL, 'comm', 'comm', '2023-2024', 'Monsoon', '', '3', '', '2023-08-07 10:20:55', '2024-03-21 10:44:28'),
	(345727591, 3114882, '1926JE002', 'c316873', 'CCS101', 'verified', 'Co-Curricular Activity - I', 0, 'IC12', 'H', NULL, 'comm', 'comm', '2023-2024', 'Monsoon', '', '3', '', '2023-08-07 10:20:55', '2024-03-21 10:44:27'),
	(345727592, 3114882, '1926JE002', 'c316874', 'ESI101', 'verified', 'Environmental Sciences', 0, 'IC8', 'H', NULL, 'comm', 'comm', '2023-2024', 'Monsoon', '', '3', '', '2023-08-07 10:20:55', '2024-03-21 10:44:28'),
	(345727593, 3114882, '1926JE002', 'c316875', 'GLI101', 'verified', 'Earth Sciences', 0, 'IC9', 'H', NULL, 'comm', 'comm', '2023-2024', 'Monsoon', '', '3', '', '2023-08-07 10:20:55', '2024-03-21 10:44:29'),
	(345727594, 3114882, '1926JE002', 'c316876', 'HSI101', 'verified', 'Communication Skills', 0, 'IC11', 'H', NULL, 'comm', 'comm', '2023-2024', 'Monsoon', '', '3', '', '2023-08-07 10:20:55', '2024-03-21 10:44:30'),
	(345727595, 3114882, '1926JE002', 'c316877', 'CYI101', 'verified', 'Chemistry', 0, 'IC2', 'H', NULL, 'comm', 'comm', '2023-2024', 'Monsoon', '', '3', '', '2023-08-07 10:20:55', '2024-03-21 10:44:31'),
	(345727596, 3114882, '1926JE002', 'c316878', 'CYI102', 'verified', 'Chemistry Lab', 0, 'IC3', 'H', NULL, 'comm', 'comm', '2023-2024', 'Monsoon', '', '3', '', '2023-08-07 10:20:55', '2024-03-21 10:44:32'),
	(345727597, 3114883, '1926JE002', 'c316906', 'MCI102', 'verified', 'Mathematics - II', 1, 'IC13', 'H', NULL, 'comm', 'comm', '2023-2024', 'Winter', NULL, '3', NULL, '2023-11-02 18:20:03', '2024-03-21 10:47:24'),
	(345727598, 3114883, '1926JE002', 'c316907', 'PHI101', 'verified', 'Physics', 1, 'IC14', 'H', NULL, 'comm', 'comm', '2023-2024', 'Winter', NULL, '3', NULL, '2023-11-02 18:20:03', '2024-03-21 10:47:25'),
	(345727599, 3114883, '1926JE002', 'c316912', 'CEI101', 'verified', 'Engineering Graphics', 1, 'IC15', 'H', NULL, 'comm', 'comm', '2023-2024', 'Winter', NULL, '3', NULL, '2023-11-02 18:20:03', '2024-03-21 10:47:26'),
	(345727600, 3114883, '1926JE002', 'c316913', 'MEI101', 'verified', 'Engineering Mechanics', 1, 'IC16', 'H', NULL, 'comm', 'comm', '2023-2024', 'Winter', NULL, '3', NULL, '2023-11-02 18:20:03', '2024-03-21 10:47:27'),
	(345727601, 3114883, '1926JE002', 'c316914', 'MSI101', 'verified', 'Engineering Economics and Finance', 1, 'IC17', 'H', NULL, 'comm', 'comm', '2023-2024', 'Winter', NULL, '3', NULL, '2023-11-02 18:20:03', '2024-03-21 10:47:28'),
	(345727602, 3114883, '1926JE002', 'c316908', 'PHI102', 'verified', 'Physics Lab', 1, 'IC21', 'H', NULL, 'comm', 'comm', '2023-2024', 'Winter', NULL, '3', NULL, '2023-11-02 18:20:03', '2024-03-21 10:47:29'),
	(345727603, 3114883, '1926JE002', 'c316911', 'MCI103', 'verified', 'Numerical Methods', 1, 'IC18', 'H', NULL, 'comm', 'comm', '2023-2024', 'Winter', NULL, '3', NULL, '2023-11-02 18:20:03', '2024-03-21 10:47:30'),
	(345727604, 3114883, '1926JE002', 'c316909', 'CSI101', 'verified', 'Computer Programming', 1, 'IC19', 'H', NULL, 'comm', 'comm', '2023-2024', 'Winter', NULL, '3', NULL, '2023-11-02 18:20:03', '2024-03-21 10:47:31'),
	(345727605, 3114883, '1926JE002', 'c316910', 'CSI102', 'verified', 'Computer Programming Lab', 1, 'IC20', 'H', NULL, 'comm', 'comm', '2023-2024', 'Winter', NULL, '3', NULL, '2023-11-02 18:20:03', '2024-03-21 10:47:32'),
	(345727606, 3114883, '1926JE002', 'c316915', 'CCS102', 'verified', 'Co-Curricular Activity - II', 1, 'IC22', 'H', NULL, 'comm', 'comm', '2023-2024', 'Winter', NULL, '3', NULL, '2023-11-02 18:20:03', '2024-03-21 10:47:33');

-- Dumping structure for table cp.reg_regular_form
CREATE TABLE IF NOT EXISTS `reg_regular_form` (
  `form_id` int(11) NOT NULL AUTO_INCREMENT,
  `admn_no` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `course_id` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `branch_id` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `semester` varchar(4) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `section` varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `session_year` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `session` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `course_aggr_id` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `hod_status` enum('0','1','2') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0',
  `hod_time` datetime DEFAULT NULL,
  `hod_remark` text CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `acad_status` enum('0','1','2','3') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0',
  `acad_time` timestamp NULL DEFAULT current_timestamp(),
  `acad_remark` text CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT current_timestamp(),
  `status` enum('0','1','2') CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT '0' COMMENT '0 => "Inactive", 1 => "Active/Verified", 2 => "Deactivate/Cancellation"',
  `re_id` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `reg_type` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`form_id`) USING BTREE,
  KEY `Index 2` (`admn_no`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3114885 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table cp.reg_regular_form: ~2 rows (approximately)
INSERT INTO `reg_regular_form` (`form_id`, `admn_no`, `course_id`, `branch_id`, `semester`, `section`, `session_year`, `session`, `course_aggr_id`, `hod_status`, `hod_time`, `hod_remark`, `acad_status`, `acad_time`, `acad_remark`, `timestamp`, `status`, `re_id`, `reg_type`) VALUES
	(3114882, '1926JE002', 'int.m.tech', 'm&c', '1', '2', '2023-2024', 'Monsoon', 'cbcs_comm_comm_2023_2024', '1', '2023-08-01 14:41:56', '', '1', '2023-08-01 09:11:56', '', '2023-08-01 09:11:56', '1', 'verified|1365|2023-08-07 18:45:23', 'R'),
	(3114883, '1926JE002', 'int.m.tech', 'm&c', '2', '2', '2023-2024', 'Winter', 'int.m.tech_m&c_2023-2024', '1', '2023-11-02 18:01:20', NULL, '1', '2023-11-02 12:31:20', NULL, '2023-11-02 18:20:03', '1', 'verified|1394|2024-01-03 17:29:11', 'R'),
	(3114884, '1926JE002', 'int.m.tech', 'm&c', '3', '2', '2024-2025', 'Monsoon', 'int.m.tech_m&c_2023-2024', '0', '2023-11-02 18:01:20', NULL, '1', '2023-11-02 12:31:20', NULL, '2023-11-02 18:20:03', '0', 'verified|1394|2024-01-03 17:29:11', 'R');

-- Dumping structure for table cp.stu_academic
CREATE TABLE IF NOT EXISTS `stu_academic` (
  `admn_no` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `auth_id` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `enrollment_year` varchar(4) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `admn_based_on` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `iit_jee_rank` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `iit_jee_cat_rank` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cat_score` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `gate_score` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `course_id` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `branch_id` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `semester` int(2) NOT NULL,
  `other_rank` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `grading_type` enum('N','A','R') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'N',
  `credit_point_policy_wef` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `credit_point_policy_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`admn_no`) USING BTREE,
  KEY `auth_id` (`auth_id`) USING BTREE,
  KEY `auth_id_2` (`auth_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table cp.stu_academic: ~0 rows (approximately)
INSERT INTO `stu_academic` (`admn_no`, `auth_id`, `enrollment_year`, `admn_based_on`, `iit_jee_rank`, `iit_jee_cat_rank`, `cat_score`, `gate_score`, `course_id`, `branch_id`, `semester`, `other_rank`, `grading_type`, `credit_point_policy_wef`, `credit_point_policy_id`) VALUES
	('1926JE002', 'ug', '2023', 'jee (advanced)', '23', '34', '0', NULL, 'int.m.tech', 'm&c', 3, NULL, 'R', '2019-2020', 8);

-- Dumping structure for table cp.tms_auth_menu_detail
CREATE TABLE IF NOT EXISTS `tms_auth_menu_detail` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `module_id` varchar(50) DEFAULT NULL,
  `auth_id` varchar(200) NOT NULL,
  `submenu1` varchar(500) NOT NULL,
  `submenu2` varchar(500) DEFAULT NULL,
  `submenu3` varchar(500) DEFAULT NULL,
  `submenu4` varchar(500) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `status` varchar(2) NOT NULL DEFAULT 'Y',
  `created_by` varchar(2) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2579 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table cp.tms_auth_menu_detail: ~7 rows (approximately)
INSERT INTO `tms_auth_menu_detail` (`menu_id`, `module_id`, `auth_id`, `submenu1`, `submenu2`, `submenu3`, `submenu4`, `link`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
	(2409, 'tms', 'stu', 'My Profile', 'DSC', NULL, NULL, 'tms/student/userview/dsc', 'Y', NULL, '2023-02-14 13:17:22', '2022-08-17 11:18:01'),
	(2410, 'tms', 'stu', 'My Profile', 'Registration Details', NULL, NULL, 'tms/student/userview/reg_details', 'Y', NULL, '2023-02-14 13:17:25', '2022-08-17 11:18:01'),
	(2411, 'tms', 'stu', 'My Profile', 'Current Course Details', NULL, NULL, 'tms/student/userview/current_course_details', 'Y', NULL, '2023-02-14 13:17:26', '2022-08-17 11:18:01'),
	(2412, 'tms', 'stu', 'My Profile', 'All Course Details', NULL, NULL, 'tms/student/userview/courses', 'Y', NULL, '2023-02-14 13:17:26', '2022-08-17 11:18:01'),
	(2413, 'tms', 'stu', 'PHD Progress', NULL, NULL, NULL, 'tms/student/phd_progress', 'N', NULL, '2023-07-21 19:07:23', '2022-08-17 11:18:01'),
	(2414, 'tms', 'stu', 'Supervisor Selection', NULL, NULL, NULL, 'tms/student/supervisor_selection', 'N', NULL, '2023-07-21 19:07:22', '2022-08-17 11:18:01'),
	(2415, 'tms', 'hod', 'TMS', 'Guide Allotement', 'Assign Guide', NULL, 'tms/hod/guide_allotment', 'N', NULL, '2023-07-24 22:10:42', '2022-08-17 11:18:01'),
	(2416, 'tms', 'stu', 'My Profile', 'Branch Change', NULL, NULL, '/branch', 'Y', NULL, '2023-02-14 13:17:26', '2022-08-17 11:18:01');

-- Dumping structure for table cp.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` varchar(20) NOT NULL,
  `password` varchar(150) NOT NULL,
  `ci_password` varchar(150) NOT NULL,
  `auth_id` varchar(10) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_hash` varchar(250) DEFAULT NULL,
  `failed_attempt_cnt` int(11) DEFAULT 0,
  `success_attempt_cnt` int(11) DEFAULT 0,
  `is_blocked` int(11) DEFAULT 0,
  `status` enum('A','D','P','L','I','R','N') NOT NULL DEFAULT 'A' COMMENT 'A-Active,D-Deactive,I-Incomplete,P-Passout,R-Retiered,L-Left/Terminated',
  `remark` varchar(100) NOT NULL DEFAULT 'emp',
  PRIMARY KEY (`id`),
  KEY `auth_id` (`auth_id`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`auth_id`) REFERENCES `auth_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table cp.users: ~2 rows (approximately)
INSERT INTO `users` (`id`, `password`, `ci_password`, `auth_id`, `created_date`, `updated_date`, `user_hash`, `failed_attempt_cnt`, `success_attempt_cnt`, `is_blocked`, `status`, `remark`) VALUES
	('1594', '$2y$10$OQAewjiBNjOml.RUQBpXx.BrsHnTDqPYpyIsvH4P8o4rrB7Y134.2', '8cc30530e786765a266ad6d7207084d8', 'emp', '2024-01-04 17:50:56', '2024-03-12 14:50:06', 'NoVOLyeLV9', 0, 0, 0, 'A', ''),
	('1926JE002', '$2y$10$OQAewjiBNjOml.RUQBpXx.BrsHnTDqPYpyIsvH4P8o4rrB7Y134.2', '8cc30530e786765a266ad6d7207084d8', 'stu', '2023-03-07 16:31:08', '2024-04-03 22:26:56', 'NoVOLyeLV9', 0, 0, 0, 'A', '');

-- Dumping structure for table cp.user_auth_types
CREATE TABLE IF NOT EXISTS `user_auth_types` (
  `id` varchar(20) NOT NULL,
  `auth_id` varchar(50) NOT NULL,
  PRIMARY KEY (`id`,`auth_id`),
  KEY `auth_id` (`auth_id`),
  CONSTRAINT `user_auth_types_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`),
  CONSTRAINT `user_auth_types_ibfk_2` FOREIGN KEY (`auth_id`) REFERENCES `auth_types` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table cp.user_auth_types: ~3 rows (approximately)
INSERT INTO `user_auth_types` (`id`, `auth_id`) VALUES
	('1594', 'dept_pns'),
	('1594', 'pns_da1'),
	('1594', 'stock_assistant_cc'),
	('1926JE002', 'stu');

-- Dumping structure for table cp.user_auth_types_extension
CREATE TABLE IF NOT EXISTS `user_auth_types_extension` (
  `id` varchar(20) NOT NULL,
  `auth_id` varchar(20) NOT NULL,
  `from` date NOT NULL,
  `to` date NOT NULL,
  `status` enum('A','D') NOT NULL,
  PRIMARY KEY (`id`,`status`,`auth_id`) USING BTREE,
  KEY `auth_id` (`auth_id`),
  CONSTRAINT `FK_user_auth_types_extension_auth_types_extension` FOREIGN KEY (`auth_id`) REFERENCES `auth_types_extension` (`id`),
  CONSTRAINT `user_auth_types_extension_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table cp.user_auth_types_extension: ~0 rows (approximately)

-- Dumping structure for table cp.user_details
CREATE TABLE IF NOT EXISTS `user_details` (
  `id` varchar(20) NOT NULL COMMENT 'originally 11',
  `salutation` varchar(25) DEFAULT NULL,
  `first_name` varchar(150) NOT NULL,
  `middle_name` varchar(150) DEFAULT NULL,
  `last_name` varchar(150) DEFAULT NULL,
  `sex` varchar(10) NOT NULL,
  `category` varchar(25) DEFAULT NULL,
  `allocated_category` varchar(25) DEFAULT NULL,
  `dob` date NOT NULL,
  `email` varchar(150) DEFAULT NULL,
  `photopath` varchar(150) NOT NULL,
  `marital_status` varchar(20) DEFAULT NULL,
  `physically_challenged` varchar(5) DEFAULT NULL,
  `dept_id` varchar(11) NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dept_id` (`dept_id`) USING BTREE,
  KEY `Index 3` (`id`) USING BTREE,
  CONSTRAINT `user_details_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `departments` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table cp.user_details: ~1 rows (approximately)
INSERT INTO `user_details` (`id`, `salutation`, `first_name`, `middle_name`, `last_name`, `sex`, `category`, `allocated_category`, `dob`, `email`, `photopath`, `marital_status`, `physically_challenged`, `dept_id`, `updated`) VALUES
	('1594', 'Mr', 'Abhijeet', 'Kumar', 'Upadhyay', 'm', 'General', '', '1993-01-25', 'abhijeet@gmail.com', 'null', 'null', 'no', 'auce', '2024-03-12 09:15:18'),
	('1926JE002', 'Mr', 'Dummy', '', 'Lal', 'm', 'ST', 'ST', '1990-01-16', 'dummylal@iitism.ac.in', 'student/1926je002/1926je01_0qypuztfhd7ovcspiumian5c10569d_photo.jpg', 'unmarried', 'no', 'mc', '2024-03-21 11:27:32');

-- Dumping structure for table cp.user_login_attempts
CREATE TABLE IF NOT EXISTS `user_login_attempts` (
  `id` varchar(11) NOT NULL,
  `time` datetime NOT NULL,
  `password` varchar(150) NOT NULL,
  `status` varchar(20) NOT NULL,
  `ip` varchar(20) NOT NULL,
  PRIMARY KEY (`id`,`time`),
  CONSTRAINT `user_login_attempts_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table cp.user_login_attempts: ~38 rows (approximately)
INSERT INTO `user_login_attempts` (`id`, `time`, `password`, `status`, `ip`) VALUES
	('1594', '2024-03-12 09:06:22', 'p', 'Success', '127.0.0.1'),
	('1594', '2024-03-12 09:23:22', 'p', 'Success', '127.0.0.1'),
	('1594', '2024-03-12 09:39:22', 'p', 'Success', '127.0.0.1'),
	('1594', '2024-03-12 09:50:23', 'p', 'Success', '127.0.0.1'),
	('1594', '2024-03-12 09:51:39', 'p', 'Success', '127.0.0.1'),
	('1594', '2024-03-12 09:53:19', 'p', 'Failed', '127.0.0.1'),
	('1594', '2024-03-27 10:09:54', '', 'Success', '127.0.0.1'),
	('1594', '2024-03-27 10:51:44', '', 'Success', '127.0.0.1'),
	('1594', '2024-03-27 11:21:40', '', 'Success', '127.0.0.1'),
	('1594', '2024-03-27 12:09:58', '', 'Success', '127.0.0.1'),
	('1594', '2024-03-29 02:02:29', '', 'Success', '127.0.0.1'),
	('1594', '2024-03-30 07:01:24', '', 'Success', '127.0.0.1'),
	('1594', '2024-03-30 07:04:29', '', 'Success', '127.0.0.1'),
	('1594', '2024-03-30 07:33:22', '', 'Success', '127.0.0.1'),
	('1594', '2024-03-30 07:54:16', '', 'Success', '127.0.0.1'),
	('1594', '2024-03-30 08:57:31', '', 'Success', '127.0.0.1'),
	('1594', '2024-03-30 09:19:20', '', 'Success', '127.0.0.1'),
	('1594', '2024-03-30 12:00:45', '', 'Success', '127.0.0.1'),
	('1594', '2024-03-30 12:59:45', '', 'Success', '127.0.0.1'),
	('1594', '2024-04-02 04:09:26', '', 'Success', '127.0.0.1'),
	('1594', '2024-04-02 07:28:45', '', 'Success', '127.0.0.1'),
	('1594', '2024-04-03 03:45:59', '', 'Success', '127.0.0.1'),
	('1594', '2024-04-03 04:37:56', '', 'Success', '127.0.0.1'),
	('1594', '2024-04-03 04:42:39', '', 'Success', '127.0.0.1'),
	('1594', '2024-04-03 05:01:18', '', 'Success', '127.0.0.1'),
	('1594', '2024-04-03 05:10:33', '', 'Success', '127.0.0.1'),
	('1594', '2024-04-03 05:19:37', '', 'Success', '127.0.0.1'),
	('1594', '2024-04-03 05:27:34', '', 'Success', '127.0.0.1'),
	('1594', '2024-04-03 05:31:54', '', 'Success', '127.0.0.1'),
	('1594', '2024-04-03 07:01:35', '', 'Success', '127.0.0.1'),
	('1594', '2024-04-03 11:51:33', '', 'Success', '127.0.0.1'),
	('1594', '2024-04-05 05:06:28', '', 'Success', '127.0.0.1'),
	('1594', '2024-04-05 07:53:18', '', 'Success', '127.0.0.1'),
	('1594', '2024-04-06 04:33:46', '', 'Success', '127.0.0.1'),
	('1926JE002', '2024-04-03 04:21:57', '', 'Success', '127.0.0.1'),
	('1926JE002', '2024-04-03 07:14:04', '', 'Success', '127.0.0.1'),
	('1926JE002', '2024-04-05 05:46:28', '', 'Success', '127.0.0.1'),
	('1926JE002', '2024-04-05 12:47:13', '', 'Success', '127.0.0.1'),
	('1926JE002', '2024-04-06 04:11:47', '', 'Success', '127.0.0.1'),
	('1926JE002', '2024-04-06 04:58:10', '', 'Success', '127.0.0.1');

-- Dumping structure for table cp.websockets_statistics_entries
CREATE TABLE IF NOT EXISTS `websockets_statistics_entries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `app_id` varchar(255) NOT NULL,
  `peak_connection_count` int(11) NOT NULL,
  `websocket_message_count` int(11) NOT NULL,
  `api_message_count` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table cp.websockets_statistics_entries: ~0 rows (approximately)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
