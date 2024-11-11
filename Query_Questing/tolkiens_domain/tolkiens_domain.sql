-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2024 at 01:41 PM
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
-- Database: `tolkiens_domain`
--

-- --------------------------------------------------------

--
-- Table structure for table `Books`
--

CREATE TABLE `books` (
  `book_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `publication_year` year(4) DEFAULT NULL,
  `isbn` varchar(13) DEFAULT NULL,
  `pages` int(11) DEFAULT NULL,
  `summary` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Books`
--

INSERT INTO `Books` (`book_id`, `title`, `publication_year`, `isbn`, `pages`, `summary`) VALUES
(1, 'The Hobbit', '1937', '9780007118359', 310, 'A fantasy novel about the adventures of Bilbo Baggins.'),
(2, '1984', '1949', '9780451524935', 328, 'A dystopian novel depicting a totalitarian society.'),
(3, 'Pride and Prejudice', '0000', '9780141439518', 279, 'A novel of manners that explores the British gentry.'),
(4, 'The Great Gatsby', '1925', '9780743273565', 180, 'A novel set in the Jazz Age that critiques the American Dream.'),
(5, 'Frankenstein', '0000', '9780486282114', 280, 'A Gothic novel about a scientist who creates a monster.'),
(6, 'Adventures of Huckleberry Finn', '0000', '9780486280615', 366, 'A satirical novel about the adventures of a boy named Huck.'),
(7, 'The Time Machine', '0000', '9780486284729', 84, 'A science fiction novel about time travel.'),
(8, 'Jane Eyre', '0000', '9780142437209', 500, 'A novel about a governess who falls in love with her employer.'),
(9, 'Moby-Dick', '0000', '9781503280786', 635, 'A novel about the voyage of the whaling ship Pequod.'),
(10, 'War and Peace', '0000', '9780199232765', 1225, 'A historical novel that chronicles the French invasion of Russia.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Books`
--
ALTER TABLE `Books`
  ADD PRIMARY KEY (`book_id`),
  ADD UNIQUE KEY `isbn` (`isbn`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Books`
--
ALTER TABLE `Books`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
