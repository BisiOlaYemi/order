-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2022 at 02:28 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `order`
--

-- --------------------------------------------------------

--
-- Table structure for table `animaldata`
--

CREATE TABLE `animaldata` (
  `name` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `lifeexp` varchar(50) NOT NULL,
  `imagepath` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `animaldata`
--

INSERT INTO `animaldata` (`name`, `category`, `description`, `lifeexp`, `imagepath`) VALUES
('New', 'herbivores', 'Test', '0-1 year', ''),
('Official', 'herbivores', 'Test', '0-1 year', ''),
('Local', 'omnivores', 'Official', '0-1 year', 'images/75eaea_987ded6dae224e9cad7914928a280280_mv2.jpeg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
