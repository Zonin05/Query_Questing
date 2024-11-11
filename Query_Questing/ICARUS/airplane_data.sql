-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2024 at 01:25 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `airplane_data`
--

-- --------------------------------------------------------

--
-- Table structure for table `airplanes`
--

CREATE TABLE `airplanes` (
  `id` int(11) NOT NULL,
  `model` varchar(100) NOT NULL,
  `max_altitude` int(11) NOT NULL,
  `min_altitude` int(11) NOT NULL,
  `max_speed` int(11) NOT NULL,
  `min_speed` int(11) NOT NULL,
  `weight` decimal(10,2) NOT NULL,
  `size` enum('Big','Medium','Small') NOT NULL,
  `manufacturer` varchar(100) DEFAULT NULL,
  `year_of_manufacture` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `airplanes`
--

INSERT INTO `airplanes` (`id`, `model`, `max_altitude`, `min_altitude`, `max_speed`, `min_speed`, `weight`, `size`, `manufacturer`, `year_of_manufacture`) VALUES
(1, 'Boeing 747', 45000, 10000, 600, 200, 400.00, 'Big', 'Boeing', 1969),
(2, 'Airbus A320', 39000, 10000, 500, 180, 150.00, 'Medium', 'Airbus', 1988),
(3, 'Cessna 172', 14000, 3000, 140, 50, 0.79, 'Small', 'Cessna', 1955),
(4, 'Boeing 777', 40000, 10000, 590, 200, 300.00, 'Big', 'Boeing', 1995),
(5, 'Airbus A380', 43000, 10000, 560, 180, 500.00, 'Big', 'Airbus', 2005),
(6, 'Embraer ERJ-145', 37000, 5000, 490, 150, 0.95, 'Medium', 'Embraer', 1995),
(7, 'Bombardier CRJ-900', 36000, 5000, 470, 150, 0.85, 'Medium', 'Bombardier', 2001),
(8, 'Cessna Citation X', 51000, 10000, 600, 200, 0.97, 'Medium', 'Cessna', 1996),
(9, 'Boeing 737', 41000, 10000, 530, 180, 80.00, 'Medium', 'Boeing', 1967),
(10, 'Airbus A350', 45000, 10000, 560, 200, 280.00, 'Big', 'Airbus', 2013),
(11, 'Gulfstream G650', 51000, 10000, 600, 200, 0.99, 'Medium', 'Gulfstream', 2012),
(12, 'Piper PA-28', 15000, 2000, 140, 50, 0.77, 'Small', 'Piper', 1961),
(13, 'Learjet 75', 51000, 10000, 500, 150, 0.75, 'Medium', 'Bombardier', 2013),
(14, 'Boeing 787', 43000, 10000, 560, 200, 220.00, 'Big', 'Boeing', 2011),
(15, 'Cessna 208 Caravan', 25000, 5000, 180, 70, 0.75, 'Small', 'Cessna', 1982),
(16, 'Airbus A220', 41000, 10000, 500, 200, 110.00, 'Medium', 'Airbus', 2016),
(17, 'McDonnell Douglas MD-80', 37000, 10000, 500, 150, 60.00, 'Medium', 'McDonnell Douglas', 1980),
(18, 'Boeing 757', 42000, 10000, 500, 180, 115.00, 'Medium', 'Boeing', 1982),
(19, 'Antonov An-225', 36000, 10000, 540, 160, 640.00, 'Big', 'Antonov', 1988),
(20, 'Airbus A310', 40000, 10000, 500, 150, 100.00, 'Medium', 'Airbus', 1982),
(21, 'Piper Super Cub', 15000, 2000, 120, 50, 0.68, 'Small', 'Piper', 1949),
(22, 'Beechcraft Baron', 18000, 3000, 200, 70, 0.65, 'Small', 'Beechcraft', 1961),
(23, 'Cessna 152', 14000, 3000, 120, 50, 0.62, 'Small', 'Cessna', 1977),
(24, 'Airbus A321', 39000, 10000, 520, 160, 100.00, 'Medium', 'Airbus', 1994),
(25, 'Boeing 767', 42000, 10000, 550, 200, 120.00, 'Medium', 'Boeing', 1981),
(26, 'Lockheed Martin F-35', 50000, 10000, 1200, 100, 0.70, 'Medium', 'Lockheed Martin', 2015),
(27, 'Concorde', 60000, 20000, 1350, 250, 408.00, 'Big', 'BAC', 1969),
(28, 'Hawker 800', 41000, 10000, 400, 150, 0.80, 'Medium', 'Hawker', 1995),
(29, 'Beechcraft Bonanza', 18000, 3000, 200, 70, 0.70, 'Small', 'Beechcraft', 1947),
(30, 'Boeing 707', 35000, 10000, 600, 200, 150.00, 'Big', 'Boeing', 1958),
(31, 'Airbus A340', 42000, 10000, 560, 180, 280.00, 'Big', 'Airbus', 1992),
(32, 'Douglas DC-10', 35000, 10000, 600, 200, 200.00, 'Big', 'McDonnell Douglas', 1970),
(33, 'Airbus A350-1000', 48000, 10000, 560, 200, 300.00, 'Big', 'Airbus', 2016),
(34, 'Boeing 787-9', 43000, 10000, 560, 200, 220.00, 'Big', 'Boeing', 2014),
(35, 'Gulfstream G550', 51000, 10000, 600, 200, 0.70, 'Medium', 'Gulfstream', 2003),
(36, 'Embraer E195', 41000, 10000, 500, 200, 100.00, 'Medium', 'Embraer', 2004),
(37, 'McDonnell Douglas MD-11', 40000, 10000, 590, 150, 200.00, 'Big', 'McDonnell Douglas', 1990),
(38, 'Airbus A300', 40000, 10000, 500, 150, 150.00, 'Medium', 'Airbus', 1972),
(39, 'Boeing 737 MAX 8', 41000, 10000, 600, 200, 90.00, 'Medium', 'Boeing', 2017),
(40, 'Piper Navajo', 20000, 3000, 180, 70, 0.85, 'Small', 'Piper', 1967),
(41, 'Cessna 340', 25000, 3000, 200, 70, 0.75, 'Small', 'Cessna', 1971),
(42, 'Beechcraft 1900', 25000, 5000, 300, 100, 0.80, 'Medium', 'Beechcraft', 1982),
(43, 'Airbus A310-300', 40000, 10000, 500, 150, 150.00, 'Medium', 'Airbus', 1985),
(44, 'Fokker 100', 35000, 10000, 500, 150, 0.80, 'Medium', 'Fokker', 1988),
(45, 'Saab 340', 25000, 5000, 250, 100, 0.50, 'Small', 'Saab', 1983),
(46, 'Douglas DC-9', 35000, 10000, 500, 150, 60.00, 'Medium', 'McDonnell Douglas', 1965),
(47, 'Boeing 757-200', 42000, 10000, 550, 200, 115.00, 'Medium', 'Boeing', 1983),
(48, 'McDonnell Douglas DC-8', 35000, 10000, 600, 200, 150.00, 'Big', 'McDonnell Douglas', 1958),
(49, 'Boeing 747-8', 45000, 10000, 570, 220, 440.00, 'Big', 'Boeing', 2011),
(50, 'Cessna 150', 15000, 2000, 120, 50, 0.65, 'Small', 'Cessna', 1958),
(51, 'Lockheed L-1011 TriStar', 40000, 10000, 600, 200, 150.00, 'Big', 'Lockheed', 1970),
(52, 'McDonnell Douglas MD-82', 35000, 10000, 500, 150, 60.00, 'Medium', 'McDonnell Douglas', 1981),
(53, 'Airbus A321neo', 39000, 10000, 500, 200, 100.00, 'Medium', 'Airbus', 2016),
(54, 'Embraer Phenom 300', 45000, 10000, 450, 160, 0.80, 'Medium', 'Embraer', 2009),
(55, 'Dornier Do 328', 25000, 5000, 300, 100, 0.50, 'Small', 'Dornier', 1991),
(56, 'Airbus A220-300', 41000, 10000, 500, 200, 110.00, 'Medium', 'Airbus', 2016),
(57, 'Boeing 737-900ER', 41000, 10000, 600, 200, 90.00, 'Medium', 'Boeing', 2007),
(58, 'Fokker 50', 25000, 5000, 300, 100, 0.60, 'Small', 'Fokker', 1986),
(59, 'Boeing 787-10', 43000, 10000, 560, 200, 220.00, 'Big', 'Boeing', 2017),
(60, 'Gulfstream G280', 45000, 10000, 500, 200, 0.90, 'Medium', 'Gulfstream', 2012),
(61, 'Piper Seminole', 15000, 3000, 180, 70, 0.80, 'Small', 'Piper', 1976),
(62, 'Airbus A300-600', 40000, 10000, 500, 150, 150.00, 'Medium', 'Airbus', 1983),
(63, 'Beechcraft King Air 350', 35000, 3000, 350, 100, 0.90, 'Medium', 'Beechcraft', 2000),
(64, 'Challenger 604', 41000, 10000, 450, 150, 0.85, 'Medium', 'Bombardier', 2000),
(65, 'Piper J-3 Cub', 13000, 2000, 75, 30, 0.60, 'Small', 'Piper', 1937),
(66, 'Boeing 767-300', 42000, 10000, 550, 200, 120.00, 'Medium', 'Boeing', 1986),
(67, 'Lockheed L-1049 Super Constellation', 25000, 10000, 300, 100, 50.00, 'Big', 'Lockheed', 1946),
(68, 'Boeing 727', 35000, 10000, 500, 150, 150.00, 'Big', 'Boeing', 1963),
(69, 'Boeing 717', 35000, 10000, 500, 150, 75.00, 'Medium', 'Boeing', 1998),
(70, 'Dornier 328JET', 25000, 5000, 300, 100, 0.60, 'Small', 'Dornier', 1998),
(71, 'Airbus A310-200', 40000, 10000, 500, 150, 150.00, 'Medium', 'Airbus', 1982),
(72, 'Conair Firecat', 20000, 3000, 180, 70, 0.70, 'Small', 'Conair', 2003),
(73, 'Hawker 4000', 45000, 10000, 450, 150, 0.70, 'Medium', 'Hawker', 2008),
(74, 'Bell 407', 18000, 3000, 140, 50, 0.70, 'Small', 'Bell', 1995);

-- --------------------------------------------------------

--
-- Table structure for table `airports`
--

CREATE TABLE `airports` (
  `id` int(11) NOT NULL,
  `NName` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `timezone` varchar(50) DEFAULT NULL,
  `opened_year` int(11) DEFAULT NULL,
  `latitude` decimal(8,6) DEFAULT NULL,
  `longitude` decimal(9,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `airports`
--

INSERT INTO `airports` (`id`, `NName`, `city`, `country`, `timezone`, `opened_year`, `latitude`, `longitude`) VALUES
(1, 'Kuala Lumpur International Airport (KLIA)', 'Sepang', 'Malaysia', 'UTC+8', 1998, 2.745600, 101.707200),
(2, 'Heathrow Airport', 'London', 'United Kingdom', 'UTC', 1946, 51.470000, -0.454300),
(3, 'John F. Kennedy International Airport', 'New York', 'United States', 'UTC-5', 1948, 40.641300, -73.778100),
(4, 'Changi Airport', 'Singapore', 'Singapore', 'UTC+8', 1981, 1.364400, 103.991500),
(5, 'Charles de Gaulle Airport', 'Paris', 'France', 'UTC+1', 1974, 49.009700, 2.547900),
(6, 'Haneda Airport', 'Tokyo', 'Japan', 'UTC+9', 1931, 35.549400, 139.779800),
(7, 'Los Angeles International Airport (LAX)', 'Los Angeles', 'United States', 'UTC-8', 1930, 33.941600, -118.408500),
(8, 'Dubai International Airport', 'Dubai', 'United Arab Emirates', 'UTC+4', 1960, 25.253200, 55.365700),
(9, 'Frankfurt Airport', 'Frankfurt', 'Germany', 'UTC+1', 1936, 50.037900, 8.562200),
(10, 'Sydney Kingsford Smith Airport', 'Sydney', 'Australia', 'UTC+10', 1920, -33.939900, 151.175300),
(11, 'Beijing Capital International Airport', 'Beijing', 'China', 'UTC+8', 1958, 40.080100, 116.584600),
(12, 'Suvarnabhumi Airport', 'Bangkok', 'Thailand', 'UTC+7', 2006, 13.689400, 100.750100),
(13, 'O\'Hare International Airport', 'Chicago', 'United States', 'UTC-6', 1955, 41.974200, -87.907300),
(14, 'Incheon International Airport', 'Seoul', 'South Korea', 'UTC+9', 2001, 37.460200, 126.440700),
(15, 'Hartsfield-Jackson Atlanta International Airport', 'Atlanta', 'United States', 'UTC-5', 1925, 33.640700, -84.427700);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `airplanes`
--
ALTER TABLE `airplanes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `airports`
--
ALTER TABLE `airports`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `airplanes`
--
ALTER TABLE `airplanes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `airports`
--
ALTER TABLE `airports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
