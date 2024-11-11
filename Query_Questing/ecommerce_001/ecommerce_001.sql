-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2024 at 02:58 PM
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
-- Database: `ecommerce_001`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `place_order` (IN `p_customer_id` INT, IN `p_shipping_address` VARCHAR(255), IN `p_shipping_city` VARCHAR(100), IN `p_shipping_postal_code` VARCHAR(20), IN `p_shipping_country` VARCHAR(50))   BEGIN
    DECLARE order_id INT;
    INSERT INTO Orders (customer_id, shipping_address, shipping_city, shipping_postal_code, shipping_country)
    VALUES (p_customer_id, p_shipping_address, p_shipping_city, p_shipping_postal_code, p_shipping_country);
    
    SET order_id = LAST_INSERT_ID();
    
    -- Assume we add order items after this procedure is invoked
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `postal_code` varchar(20) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `first_name`, `last_name`, `email`, `phone_number`, `password`, `address`, `city`, `postal_code`, `country`, `created_at`) VALUES
(1, 'John', 'Doe', 'john.doe@example.com', '1234567890', 'hashedpassword1', '123 Main St', 'New York', '10001', 'USA', '2024-11-11 13:53:48'),
(2, 'Jane', 'Smith', 'jane.smith@example.com', '1234567891', 'hashedpassword2', '456 Elm St', 'Los Angeles', '90001', 'USA', '2024-11-11 13:53:48'),
(3, 'Michael', 'Johnson', 'michael.johnson@example.com', '1234567892', 'hashedpassword3', '789 Oak St', 'Chicago', '60001', 'USA', '2024-11-11 13:53:48'),
(4, 'Emily', 'Davis', 'emily.davis@example.com', '1234567893', 'hashedpassword4', '101 Pine St', 'San Francisco', '94101', 'USA', '2024-11-11 13:53:48'),
(5, 'David', 'Martinez', 'david.martinez@example.com', '1234567894', 'hashedpassword5', '202 Cedar St', 'Miami', '33101', 'USA', '2024-11-11 13:53:48'),
(6, 'Sarah', 'Hernandez', 'sarah.hernandez@example.com', '1234567895', 'hashedpassword6', '303 Maple St', 'Dallas', '75201', 'USA', '2024-11-11 13:53:48'),
(7, 'William', 'Lopez', 'william.lopez@example.com', '1234567896', 'hashedpassword7', '404 Birch St', 'Houston', '77001', 'USA', '2024-11-11 13:53:48'),
(8, 'Olivia', 'Gonzalez', 'olivia.gonzalez@example.com', '1234567897', 'hashedpassword8', '505 Redwood St', 'Phoenix', '85001', 'USA', '2024-11-11 13:53:48'),
(9, 'James', 'Wilson', 'james.wilson@example.com', '1234567898', 'hashedpassword9', '606 Ash St', 'Austin', '73301', 'USA', '2024-11-11 13:53:48'),
(10, 'Sophia', 'Brown', 'sophia.brown@example.com', '1234567899', 'hashedpassword10', '707 Willow St', 'Seattle', '98101', 'USA', '2024-11-11 13:53:48');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `product_id` int(11) NOT NULL,
  `stock_level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`product_id`, `stock_level`) VALUES
(1, 100),
(2, 150),
(3, 200),
(4, 300),
(5, 250),
(6, 120),
(7, 180),
(8, 140),
(9, 160),
(10, 200);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(50) DEFAULT 'Pending',
  `shipping_address` varchar(255) DEFAULT NULL,
  `shipping_city` varchar(100) DEFAULT NULL,
  `shipping_postal_code` varchar(20) DEFAULT NULL,
  `shipping_country` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `customer_id`, `order_date`, `status`, `shipping_address`, `shipping_city`, `shipping_postal_code`, `shipping_country`) VALUES
(1, 1, '2024-11-11 13:54:06', 'Pending', '123 Main St', 'New York', '10001', 'USA'),
(2, 2, '2024-11-11 13:54:06', 'Pending', '456 Elm St', 'Los Angeles', '90001', 'USA'),
(3, 3, '2024-11-11 13:54:06', 'Pending', '789 Oak St', 'Chicago', '60001', 'USA'),
(4, 4, '2024-11-11 13:54:06', 'Pending', '101 Pine St', 'San Francisco', '94101', 'USA'),
(5, 5, '2024-11-11 13:54:06', 'Pending', '202 Cedar St', 'Miami', '33101', 'USA'),
(6, 6, '2024-11-11 13:54:06', 'Pending', '303 Maple St', 'Dallas', '75201', 'USA'),
(7, 7, '2024-11-11 13:54:06', 'Pending', '404 Birch St', 'Houston', '77001', 'USA'),
(8, 8, '2024-11-11 13:54:06', 'Pending', '505 Redwood St', 'Phoenix', '85001', 'USA'),
(9, 9, '2024-11-11 13:54:06', 'Pending', '606 Ash St', 'Austin', '73301', 'USA'),
(10, 10, '2024-11-11 13:54:06', 'Pending', '707 Willow St', 'Seattle', '98101', 'USA');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `order_item_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`order_item_id`, `order_id`, `product_id`, `quantity`, `price`) VALUES
(1, 1, 1, 1, 1200.00),
(2, 1, 2, 2, 800.00),
(3, 2, 3, 1, 150.00),
(4, 3, 4, 3, 20.00),
(5, 4, 5, 1, 40.00),
(6, 5, 6, 2, 100.00),
(7, 6, 7, 1, 60.00),
(8, 7, 8, 1, 50.00),
(9, 8, 9, 1, 150.00),
(10, 9, 10, 1, 90.00);

--
-- Triggers `order_items`
--
DELIMITER $$
CREATE TRIGGER `update_inventory_after_order` AFTER INSERT ON `order_items` FOR EACH ROW BEGIN
    UPDATE Inventory
    SET stock_level = stock_level - NEW.quantity
    WHERE product_id = NEW.product_id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Stand-in structure for view `order_status_view`
-- (See below for the actual view)
--
CREATE TABLE `order_status_view` (
`order_id` int(11)
,`first_name` varchar(100)
,`last_name` varchar(100)
,`order_date` timestamp
,`status` varchar(50)
,`payment_status` varchar(50)
,`shipping_method` varchar(50)
,`tracking_number` varchar(100)
);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `payment_method` varchar(50) DEFAULT NULL,
  `payment_status` varchar(50) DEFAULT NULL,
  `payment_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `amount` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `order_id`, `payment_method`, `payment_status`, `payment_date`, `amount`) VALUES
(1, 1, 'Credit Card', 'Completed', '2024-11-11 13:54:25', 2000.00),
(2, 2, 'PayPal', 'Completed', '2024-11-11 13:54:25', 150.00),
(3, 3, 'Credit Card', 'Failed', '2024-11-11 13:54:25', 60.00),
(4, 4, 'Credit Card', 'Completed', '2024-11-11 13:54:25', 120.00),
(5, 5, 'PayPal', 'Completed', '2024-11-11 13:54:25', 80.00),
(6, 6, 'Credit Card', 'Completed', '2024-11-11 13:54:25', 120.00),
(7, 7, 'PayPal', 'Completed', '2024-11-11 13:54:25', 200.00),
(8, 8, 'Credit Card', 'Completed', '2024-11-11 13:54:25', 300.00),
(9, 9, 'PayPal', 'Completed', '2024-11-11 13:54:25', 150.00),
(10, 10, 'Credit Card', 'Completed', '2024-11-11 13:54:25', 90.00);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `description`, `price`, `category`, `created_at`, `updated_at`) VALUES
(1, 'Laptop', 'High-performance laptop with 16GB RAM and 512GB SSD', 1200.00, 'Electronics', '2024-11-11 13:53:58', '2024-11-11 13:53:58'),
(2, 'Smartphone', '5G enabled smartphone with 128GB storage', 800.00, 'Electronics', '2024-11-11 13:53:58', '2024-11-11 13:53:58'),
(3, 'Wireless Headphones', 'Noise-cancelling wireless headphones', 150.00, 'Electronics', '2024-11-11 13:53:58', '2024-11-11 13:53:58'),
(4, 'T-shirt', 'Cotton t-shirt in various colors', 20.00, 'Clothing', '2024-11-11 13:53:58', '2024-11-11 13:53:58'),
(5, 'Jeans', 'Denim jeans with slim fit', 40.00, 'Clothing', '2024-11-11 13:53:58', '2024-11-11 13:53:58'),
(6, 'Wristwatch', 'Analog wristwatch with leather band', 100.00, 'Accessories', '2024-11-11 13:53:58', '2024-11-11 13:53:58'),
(7, 'Shoes', 'Running shoes for athletes', 60.00, 'Footwear', '2024-11-11 13:53:58', '2024-11-11 13:53:58'),
(8, 'Backpack', 'Water-resistant backpack with laptop compartment', 50.00, 'Accessories', '2024-11-11 13:53:58', '2024-11-11 13:53:58'),
(9, 'Smartwatch', 'Fitness smartwatch with heart rate monitor', 150.00, 'Electronics', '2024-11-11 13:53:58', '2024-11-11 13:53:58'),
(10, 'Coffee Maker', 'Automatic coffee maker with grinder', 90.00, 'Home Appliances', '2024-11-11 13:53:58', '2024-11-11 13:53:58');

-- --------------------------------------------------------

--
-- Stand-in structure for view `product_review_view`
-- (See below for the actual view)
--
CREATE TABLE `product_review_view` (
`product_name` varchar(255)
,`review_count` bigint(21)
,`average_rating` decimal(14,4)
);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `review_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL CHECK (`rating` between 1 and 5),
  `review_text` text DEFAULT NULL,
  `review_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`review_id`, `customer_id`, `product_id`, `rating`, `review_text`, `review_date`) VALUES
(1, 1, 1, 5, 'Excellent laptop, high performance!', '2024-11-11 13:54:40'),
(2, 2, 2, 4, 'Great smartphone, but battery life could be better.', '2024-11-11 13:54:40'),
(3, 3, 3, 3, 'Good sound quality, but not very comfortable.', '2024-11-11 13:54:40'),
(4, 4, 4, 5, 'Perfect fit, great material!', '2024-11-11 13:54:40'),
(5, 5, 5, 2, 'The jeans are okay, but they shrank after washing.', '2024-11-11 13:54:40'),
(6, 6, 6, 4, 'Nice watch, looks great!', '2024-11-11 13:54:40'),
(7, 7, 7, 5, 'Comfortable shoes, highly recommend for running.', '2024-11-11 13:54:40'),
(8, 8, 8, 4, 'Great backpack, but wish it had more compartments.', '2024-11-11 13:54:40'),
(9, 9, 9, 5, 'Great smartwatch, useful for workouts.', '2024-11-11 13:54:40'),
(10, 10, 10, 3, 'Coffee maker works fine, but a bit loud.', '2024-11-11 13:54:40');

-- --------------------------------------------------------

--
-- Table structure for table `shipping`
--

CREATE TABLE `shipping` (
  `shipping_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `shipping_method` varchar(50) DEFAULT NULL,
  `tracking_number` varchar(100) DEFAULT NULL,
  `shipped_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `delivery_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shipping`
--

INSERT INTO `shipping` (`shipping_id`, `order_id`, `shipping_method`, `tracking_number`, `shipped_date`, `delivery_date`) VALUES
(1, 1, 'Standard', 'TRK12345', '2024-11-11 13:54:32', '2024-11-15 00:00:00'),
(2, 2, 'Express', 'TRK12346', '2024-11-11 13:54:32', '2024-11-14 00:00:00'),
(3, 3, 'Standard', 'TRK12347', '2024-11-11 13:54:32', '2024-11-20 00:00:00'),
(4, 4, 'Express', 'TRK12348', '2024-11-11 13:54:32', '2024-11-16 00:00:00'),
(5, 5, 'Standard', 'TRK12349', '2024-11-11 13:54:32', '2024-11-18 00:00:00'),
(6, 6, 'Express', 'TRK12350', '2024-11-11 13:54:32', '2024-11-12 00:00:00'),
(7, 7, 'Standard', 'TRK12351', '2024-11-11 13:54:32', '2024-11-17 00:00:00'),
(8, 8, 'Express', 'TRK12352', '2024-11-11 13:54:32', '2024-11-13 00:00:00'),
(9, 9, 'Standard', 'TRK12353', '2024-11-11 13:54:32', '2024-11-21 00:00:00'),
(10, 10, 'Express', 'TRK12354', '2024-11-11 13:54:32', '2024-11-10 00:00:00');

--
-- Triggers `shipping`
--
DELIMITER $$
CREATE TRIGGER `update_order_status_after_shipping` AFTER UPDATE ON `shipping` FOR EACH ROW BEGIN
    IF OLD.delivery_date IS NULL AND NEW.delivery_date IS NOT NULL THEN
        UPDATE Orders
        SET status = 'Shipped'
        WHERE order_id = NEW.order_id;
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Structure for view `order_status_view`
--
DROP TABLE IF EXISTS `order_status_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `order_status_view`  AS SELECT `orders`.`order_id` AS `order_id`, `customers`.`first_name` AS `first_name`, `customers`.`last_name` AS `last_name`, `orders`.`order_date` AS `order_date`, `orders`.`status` AS `status`, `payments`.`payment_status` AS `payment_status`, `shipping`.`shipping_method` AS `shipping_method`, `shipping`.`tracking_number` AS `tracking_number` FROM (((`orders` join `customers` on(`orders`.`customer_id` = `customers`.`customer_id`)) join `payments` on(`orders`.`order_id` = `payments`.`order_id`)) join `shipping` on(`orders`.`order_id` = `shipping`.`order_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `product_review_view`
--
DROP TABLE IF EXISTS `product_review_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `product_review_view`  AS SELECT `products`.`product_name` AS `product_name`, count(`reviews`.`review_id`) AS `review_count`, avg(`reviews`.`rating`) AS `average_rating` FROM (`products` left join `reviews` on(`products`.`product_id` = `reviews`.`product_id`)) GROUP BY `products`.`product_id` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `shipping`
--
ALTER TABLE `shipping`
  ADD PRIMARY KEY (`shipping_id`),
  ADD KEY `order_id` (`order_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `order_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `shipping`
--
ALTER TABLE `shipping`
  MODIFY `shipping_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `inventory`
--
ALTER TABLE `inventory`
  ADD CONSTRAINT `inventory_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`);

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`),
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `shipping`
--
ALTER TABLE `shipping`
  ADD CONSTRAINT `shipping_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
