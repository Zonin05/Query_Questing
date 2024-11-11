-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2024 at 02:44 PM
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
-- Database: `employment_101`
--

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `department_id` int(11) NOT NULL,
  `department_name` varchar(50) NOT NULL,
  `location` varchar(100) DEFAULT NULL,
  `manager_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`department_id`, `department_name`, `location`, `manager_id`) VALUES
(1, 'IT', 'Headquarters', NULL),
(2, 'HR', 'Headquarters', NULL),
(3, 'Sales', 'Regional Office A', NULL),
(4, 'Marketing', 'Regional Office B', NULL),
(5, 'Finance', 'Headquarters', NULL),
(6, 'Operations', 'Regional Office A', NULL),
(7, 'Customer Support', 'Regional Office B', NULL),
(8, 'R&D', 'Headquarters', NULL),
(9, 'Legal', 'Headquarters', NULL),
(10, 'Logistics', 'Warehouse C', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `employee_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `date_of_birth` date NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `hire_date` date NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `manager_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employee_id`, `first_name`, `last_name`, `date_of_birth`, `email`, `phone_number`, `hire_date`, `role_id`, `department_id`, `manager_id`) VALUES
(1, 'Frodo', 'Baggins', '1987-01-22', 'frodo.baggins@example.com', '123-456-7890', '2015-06-01', 1, 1, NULL),
(2, 'Samwise', 'Gamgee', '1985-03-25', 'samwise.gamgee@example.com', '123-456-7891', '2016-04-15', 8, 7, 1),
(3, 'Gandalf', 'The Grey', '1950-07-21', 'gandalf.grey@example.com', '123-456-7892', '2010-09-15', 10, 9, NULL),
(4, 'Aragorn', 'Elessar', '1978-02-27', 'aragorn.elessar@example.com', '123-456-7893', '2012-11-03', 6, 6, NULL),
(5, 'Legolas', 'Greenleaf', '1984-08-15', 'legolas.greenleaf@example.com', '123-456-7894', '2018-02-17', 5, 4, 4),
(6, 'Gimli', 'Son of Gloin', '1983-04-09', 'gimli.gloin@example.com', '123-456-7895', '2017-08-29', 4, 4, 4),
(7, 'Boromir', 'Son of Denethor', '1980-11-13', 'boromir.denethor@example.com', '123-456-7896', '2013-05-24', 3, 2, NULL),
(8, 'Galadriel', 'Of Lothlorien', '1969-12-13', 'galadriel.lothlorien@example.com', '123-456-7897', '2009-10-10', 9, 8, NULL),
(9, 'Elrond', 'Half-Elven', '1975-03-29', 'elrond.halfelven@example.com', '123-456-7898', '2011-07-01', 2, 1, NULL),
(10, 'Saruman', 'The White', '1950-11-17', 'saruman.white@example.com', '123-456-7899', '2008-01-15', 10, 9, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee_project`
--

CREATE TABLE `employee_project` (
  `employee_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `assignment_date` date NOT NULL,
  `role_in_project` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee_project`
--

INSERT INTO `employee_project` (`employee_id`, `project_id`, `assignment_date`, `role_in_project`) VALUES
(1, 1, '2015-01-15', 'Project Manager'),
(2, 2, '2016-03-01', 'Team Member'),
(3, 3, '2014-05-01', 'Lead Scientist'),
(4, 4, '2017-09-01', 'Senior Developer'),
(5, 5, '2018-09-01', 'Project Lead');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `project_id` int(11) NOT NULL,
  `project_name` varchar(100) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `budget` decimal(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`project_id`, `project_name`, `start_date`, `end_date`, `budget`) VALUES
(1, 'Rivendell Reconstruction', '2015-01-15', '2018-12-31', 500000.00),
(2, 'Helm\'s Deep Defense', '2016-03-01', NULL, 200000.00),
(3, 'Mordor Surveillance', '2014-05-01', '2019-05-01', 750000.00),
(4, 'Hobbiton Expansion', '2017-09-01', NULL, 300000.00),
(5, 'The Return of the King', '2016-10-01', '2020-12-01', 1000000.00);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(50) NOT NULL,
  `min_salary` decimal(10,2) NOT NULL,
  `max_salary` decimal(10,2) NOT NULL
) ;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `role_name`, `min_salary`, `max_salary`) VALUES
(1, 'Software Engineer', 50000.00, 100000.00),
(2, 'Product Manager', 70000.00, 120000.00),
(3, 'HR Specialist', 45000.00, 75000.00),
(4, 'Sales Executive', 40000.00, 85000.00),
(5, 'Marketing Coordinator', 45000.00, 90000.00),
(6, 'Financial Analyst', 60000.00, 110000.00),
(7, 'Operations Manager', 55000.00, 105000.00),
(8, 'Customer Service Representative', 30000.00, 60000.00),
(9, 'Research Scientist', 75000.00, 130000.00),
(10, 'Legal Advisor', 80000.00, 150000.00);

-- --------------------------------------------------------

--
-- Table structure for table `salaries`
--

CREATE TABLE `salaries` (
  `salary_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `salary_amount` decimal(10,2) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `salaries`
--

INSERT INTO `salaries` (`salary_id`, `employee_id`, `salary_amount`, `start_date`, `end_date`) VALUES
(1, 1, 55000.00, '2015-06-01', NULL),
(2, 2, 32000.00, '2016-04-15', NULL),
(3, 3, 130000.00, '2010-09-15', '2015-09-15'),
(4, 3, 150000.00, '2015-09-15', NULL),
(5, 4, 105000.00, '2012-11-03', NULL),
(6, 5, 90000.00, '2018-02-17', NULL),
(7, 6, 85000.00, '2017-08-29', NULL),
(8, 7, 60000.00, '2013-05-24', NULL),
(9, 8, 130000.00, '2009-10-10', NULL),
(10, 9, 75000.00, '2011-07-01', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`department_id`),
  ADD UNIQUE KEY `department_name` (`department_name`),
  ADD KEY `fk_department_manager` (`manager_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`employee_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `fk_role` (`role_id`),
  ADD KEY `fk_department` (`department_id`),
  ADD KEY `fk_manager` (`manager_id`);

--
-- Indexes for table `employee_project`
--
ALTER TABLE `employee_project`
  ADD PRIMARY KEY (`employee_id`,`project_id`),
  ADD KEY `fk_project` (`project_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`project_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`),
  ADD UNIQUE KEY `role_name` (`role_name`);

--
-- Indexes for table `salaries`
--
ALTER TABLE `salaries`
  ADD PRIMARY KEY (`salary_id`),
  ADD KEY `fk_employee` (`employee_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `project_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salaries`
--
ALTER TABLE `salaries`
  MODIFY `salary_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `departments`
--
ALTER TABLE `departments`
  ADD CONSTRAINT `fk_department_manager` FOREIGN KEY (`manager_id`) REFERENCES `employees` (`employee_id`);

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `fk_department` FOREIGN KEY (`department_id`) REFERENCES `departments` (`department_id`),
  ADD CONSTRAINT `fk_manager` FOREIGN KEY (`manager_id`) REFERENCES `employees` (`employee_id`),
  ADD CONSTRAINT `fk_role` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`);

--
-- Constraints for table `employee_project`
--
ALTER TABLE `employee_project`
  ADD CONSTRAINT `fk_employee_project` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`),
  ADD CONSTRAINT `fk_project` FOREIGN KEY (`project_id`) REFERENCES `projects` (`project_id`);

--
-- Constraints for table `salaries`
--
ALTER TABLE `salaries`
  ADD CONSTRAINT `fk_employee` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
