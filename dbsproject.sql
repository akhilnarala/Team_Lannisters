-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.2.25-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for dbsproject
CREATE DATABASE IF NOT EXISTS `dbsproject` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `dbsproject`;

-- Dumping structure for table dbsproject.announcement
CREATE TABLE IF NOT EXISTS `announcement` (
  `line` varchar(255) NOT NULL,
  PRIMARY KEY (`line`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table dbsproject.announcement: 4 rows
/*!40000 ALTER TABLE `announcement` DISABLE KEYS */;
INSERT INTO `announcement` (`line`) VALUES
	(' 01 jul -General insurance -Exclusive TLS staff discount from 1july to 30 September 2019'),
	(' 01 jul -Upto 25% off car insurance exclusive to TLS staff'),
	(' 02 Aug -General insurance -Exclusive TLS staff discount august 2019'),
	(' 31st may-General insurance -Exclusive TLS staff discount from 1 April to 30 june 2019');
/*!40000 ALTER TABLE `announcement` ENABLE KEYS */;

-- Dumping structure for table dbsproject.answers
CREATE TABLE IF NOT EXISTS `answers` (
  `answer_id` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `dislikes` int(11) DEFAULT NULL,
  `likes` int(11) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `question_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`answer_id`),
  KEY `FK3erw1a3t0r78st8ty27x6v3g1` (`question_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table dbsproject.answers: 6 rows
/*!40000 ALTER TABLE `answers` DISABLE KEYS */;
INSERT INTO `answers` (`answer_id`, `description`, `dislikes`, `likes`, `user_id`, `question_id`) VALUES
	('a8313e03-b404-4b71-a917-c3542dc02a36', 'sZ', 0, 2, '909', '66831adf-f56b-4910-9530-454f57048e74'),
	('be6eaaa6-9108-4cfe-960f-a274f69deecd', 'zfbz', 0, 1, '909', '66831adf-f56b-4910-9530-454f57048e74'),
	('6283251e-7edf-4544-b954-9df43b2ebea9', 'FXv', 0, 1, '909', '66831adf-f56b-4910-9530-454f57048e74'),
	('41716063-466f-4877-82d1-960833a47e31', 'GFDTYFC', 0, 1, '909', 'c381bfe6-d71f-4c22-9c3d-b6f00a959de7'),
	('7280a6b2-bfce-400a-a984-ef8283a26adb', 'uifhui', 0, 0, '909', '3a926152-d030-40f5-9bed-75f646c9f35d'),
	('d27162e0-d784-46a3-81e5-c3d6b9477a5b', 'New Answer', 0, 1, '909', '45cad243-f3b9-4533-80c9-020cddbce394');
/*!40000 ALTER TABLE `answers` ENABLE KEYS */;

-- Dumping structure for table dbsproject.botchats
CREATE TABLE IF NOT EXISTS `botchats` (
  `mid` varchar(255) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `sentby` int(11) DEFAULT NULL,
  `uid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table dbsproject.botchats: 12 rows
/*!40000 ALTER TABLE `botchats` DISABLE KEYS */;
INSERT INTO `botchats` (`mid`, `content`, `sentby`, `uid`) VALUES
	('c0c36b19-6329-40ce-ba04-8feaff8e47ad', 'I used my lifeline to ask another robot, but he didn\'t know.\nI\'ll try asking Google.\n<oob><search>what is js</search></oob>', 1, '909'),
	('e90dbe29-f7c5-49e4-99a0-84d9c0753d22', 'what is js', 0, '909'),
	('feb644ae-67ca-4019-ad3a-236bd3240de6', 'Sorry, nothing found in web services.\nPerhaps we should try a web search.\n<oob><search>what is html</search></oob>', 1, '909'),
	('ec70521c-c36d-42ee-8b88-1f1b416d4b4b', 'Java is a programming language.', 1, '909'),
	('1245ba32-a29b-4042-bbe4-46774af2f2af', 'what is html', 0, '909'),
	('e631a132-0895-41dc-844b-fd89711921f9', 'Hi how are you?', 1, '909'),
	('a441e1bf-040f-43ca-8f98-817798b1e0bd', 'what is java', 0, '909'),
	('b7398b58-7673-4b55-859e-c19ae653f7c7', 'Hi! It\'s delightful to see you.', 1, '909'),
	('27effeb5-c52f-4edd-b17f-2aea8398d78b', 'hello', 0, '909'),
	('07cf3611-c5e2-47d6-a3b7-4146ffe27942', 'Hi how are you?', 1, '909'),
	('f34600de-f21b-43bf-9b0b-0772075b1a4d', 'hii', 0, '909'),
	('53ea52d3-64da-4bfa-bde3-3d30d92a7c84', 'hii', 0, '909');
/*!40000 ALTER TABLE `botchats` ENABLE KEYS */;

-- Dumping structure for table dbsproject.challenges
CREATE TABLE IF NOT EXISTS `challenges` (
  `challenge_id` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`challenge_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table dbsproject.challenges: 4 rows
/*!40000 ALTER TABLE `challenges` DISABLE KEYS */;
INSERT INTO `challenges` (`challenge_id`, `description`, `title`) VALUES
	(100, 'Coding Challenge', 'Hacker Rank'),
	(101, 'Coding Challenge', 'Hacker Earth'),
	(102, 'Data Science', 'Analyzit'),
	(103, 'Data Science', 'Customer Segmentation');
/*!40000 ALTER TABLE `challenges` ENABLE KEYS */;

-- Dumping structure for table dbsproject.didyouknow
CREATE TABLE IF NOT EXISTS `didyouknow` (
  `line` varchar(255) NOT NULL,
  PRIMARY KEY (`line`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table dbsproject.didyouknow: 4 rows
/*!40000 ALTER TABLE `didyouknow` DISABLE KEYS */;
INSERT INTO `didyouknow` (`line`) VALUES
	(' 01 apr -Circular -Amendments to the Employment Act (1st April 2019)'),
	(' 03 jul -Blackout period for trading in TLS securities'),
	(' 28 mar -LEGAL CLINIC FOR UNION MEMBERS 18 april 2019'),
	(' 29 mar -payrollCalulator _2019');
/*!40000 ALTER TABLE `didyouknow` ENABLE KEYS */;

-- Dumping structure for table dbsproject.enroll
CREATE TABLE IF NOT EXISTS `enroll` (
  `enroll_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `challenge_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`enroll_id`),
  KEY `FK139gcmvd0ooyunyxk4n5pmpwy` (`challenge_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table dbsproject.enroll: 0 rows
/*!40000 ALTER TABLE `enroll` DISABLE KEYS */;
/*!40000 ALTER TABLE `enroll` ENABLE KEYS */;

-- Dumping structure for table dbsproject.hibernate_sequence
CREATE TABLE IF NOT EXISTS `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table dbsproject.hibernate_sequence: 1 rows
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` (`next_val`) VALUES
	(1);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;

-- Dumping structure for table dbsproject.likeanddislike
CREATE TABLE IF NOT EXISTS `likeanddislike` (
  `like_id` varchar(255) NOT NULL,
  `answer_id` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`like_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table dbsproject.likeanddislike: 6 rows
/*!40000 ALTER TABLE `likeanddislike` DISABLE KEYS */;
INSERT INTO `likeanddislike` (`like_id`, `answer_id`, `type`, `user_id`) VALUES
	('347bcc3a-4f93-4903-b62e-ffe5f75b2e98', 'a8313e03-b404-4b71-a917-c3542dc02a36', 1, '909'),
	('85436ab7-20c4-4727-abfe-b589a7d9f023', 'a8313e03-b404-4b71-a917-c3542dc02a36', 1, '909'),
	('82faa637-9cc5-4092-9d0d-680ad2ef2677', 'be6eaaa6-9108-4cfe-960f-a274f69deecd', 1, '909'),
	('ac77b4cb-7faf-445b-923f-99784f0b1d31', '6283251e-7edf-4544-b954-9df43b2ebea9', 1, '909'),
	('f0aa840b-6fdf-41eb-b204-df645bb14106', '41716063-466f-4877-82d1-960833a47e31', 1, '909'),
	('fd147b33-8947-4db1-a337-97692199d2ab', 'd27162e0-d784-46a3-81e5-c3d6b9477a5b', 1, '909');
/*!40000 ALTER TABLE `likeanddislike` ENABLE KEYS */;

-- Dumping structure for table dbsproject.questions
CREATE TABLE IF NOT EXISTS `questions` (
  `question_id` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`question_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table dbsproject.questions: 6 rows
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` (`question_id`, `description`, `title`, `user_id`) VALUES
	('66831adf-f56b-4910-9530-454f57048e74', 'herlooo', 'herlooo', '909'),
	('9e4ce895-e517-4234-9f9f-69c7ce4340ca', 'SAVCzs', 'SAVCzs', '909'),
	('c381bfe6-d71f-4c22-9c3d-b6f00a959de7', 'FYTFYU', 'FYTFYU', '909'),
	('319f045c-47b5-4b46-b414-87526c9ab77c', 'wtheurfwgefjo[', 'wtheurfwgefjo[', '909'),
	('3a926152-d030-40f5-9bed-75f646c9f35d', 'wtheurfwgefjo[', 'wtheurfwgefjo[', '909'),
	('45cad243-f3b9-4533-80c9-020cddbce394', 'New Question', 'New Question', '909');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;

-- Dumping structure for table dbsproject.role
CREATE TABLE IF NOT EXISTS `role` (
  `role_id` int(11) NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table dbsproject.role: 0 rows
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
/*!40000 ALTER TABLE `role` ENABLE KEYS */;

-- Dumping structure for table dbsproject.user
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` varchar(255) NOT NULL,
  `active` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table dbsproject.user: 5 rows
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`user_id`, `active`, `email`, `name`, `password`) VALUES
	('6af7e65f-e52a-4e24-a3cf-c4a3eef8eaf7', 1, 'tejasri.goli@gmail.com', 'Hello', '$2a$10$YqN8Denlcj6VZY30xGoM2OhKAa2e.PSO1YY9ll9SW2PF.Kw5iPyVW'),
	('b78f2669-950e-49b9-b36b-b517e499c09c', 1, 'akhil@gmail.com', 'akhil', '$2a$10$DFQawNIrcV6831th0.qeP.pvgnqOT7jyZ.BMtZCcmLP7E5l271tPG'),
	('6e4a7ad1-49b4-47ba-aadc-538f8c7cd56a', 1, 'hello', 'HELLO', '$2a$10$2sVesqdrFmsMFLIyoCy5DeQRe0bB15/nyDTIpwXX7r//IO67AqEfG'),
	('99f12a52-4b63-4edf-9483-f2c876a3326f', 1, 'hp@gmail.com', 'HP', '$2a$10$Nc7RgG9SDzgj5fB2DX1He.U1S6vA9PEupJVRRzcT2nmzdqY7Ht1Oe'),
	('ad6f5bf2-59dc-4317-b783-90b6ae90e79c', 1, 'akshi@gmail.com', 'Akshitha', '$2a$10$iyh7ZxraSvCuQRP7fHARge3V7EHdaTLOT9Wqn6e/OB/OMSA4yU6Iq');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

-- Dumping structure for table dbsproject.user_role
CREATE TABLE IF NOT EXISTS `user_role` (
  `user_id` varchar(255) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKa68196081fvovjhkek5m97n3y` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table dbsproject.user_role: 0 rows
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
