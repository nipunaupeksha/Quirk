SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


--
-- Database: `quirk`
--
CREATE DATABASE IF NOT EXISTS `quirk` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `quirk`;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
                          `orderId` int(255) NOT NULL,
                          `orderDate` date NOT NULL,
                          `username` varchar(255) NOT NULL,
                          `orderDescription` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
                            `productId` int(255) NOT NULL,
                            `productName` varchar(255) NOT NULL,
                            `productDescription` varchar(255) NOT NULL,
                            `productPrice` varchar(255) NOT NULL,
                            `productImgPath` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `products` (`productId`, `productName`, `productDescription`, `productPrice`, `productImgPath`) VALUES
                                                                                                                (1, 'Blueberry Mineral Water', 'Mineral water with Blueberry flavor', '$22.00', 'images/mineralwater-blueberry.png'),
                                                                                                                (2, 'Lemon Mineral Water', 'Mineral water with Lemon flavor', '$22.00', 'images/mineralwater-lemonlime.png'),
                                                                                                                (3, 'Orange Mineral Water', 'Mineral water with Orange flavor', '$22.00', 'images/mineralwater-orange.png'),
                                                                                                                (4, 'Peach Mineral Water', 'Mineral water with Peach flavor', '$22.00', 'images/mineralwater-peach.png'),
                                                                                                                (5, 'Raspberry Mineral Water', 'Mineral water with Raspberry flavor', '$22.00', 'images/mineralwater-raspberry.png'),
                                                                                                                (6, 'Strawberry Mineral Water', 'Mineral water with Strawberry flavor', '$22.00', 'images/mineralwater-strawberry.png'),
                                                                                                                (7, 'Chocolate Protein Bar', 'Nutritional protein bar with Chocolate flavor', '$12.00', 'images/proteinbar-chocolate.png'),
                                                                                                                (8, 'Lemon Protein Bar', 'Nutritional protein bar with Lemon flavor', '$12.00', 'images/proteinbar-lemon.png'),
                                                                                                                (9, 'Peanut Butter Protein Bar', 'Nutritional protein bar with Peanut flavor', '$12.00', 'images/proteinbar-peanutbutter.png'),
                                                                                                                (10, 'Vitamin A', 'Bottle of Vitamins', '$9.50', 'images/vitamin-a.png'),
                                                                                                                (11, 'Vitamin B Complex', 'Bottle of Vitamins', '$9.50', 'images/vitamin-bcomplex.png'),
                                                                                                                (12, 'Vitamin C', 'Bottle of Vitamins', '$9.50', 'images/vitamin-c.png'),
                                                                                                                (13, 'Vitamin Calcium', 'Bottle of Vitamins', '$9.50', 'images/vitamin-calcium.png'),
                                                                                                                (14, 'Vitamin Flaxseed Oil', 'Bottle of Vitamins', '$9.50', 'images/vitamin-flaxseed-oil.png'),
                                                                                                                (15, 'Vitamin D', 'Bottle of Vitamins', '$9.50', 'images/vitamin-d.png'),
                                                                                                                (16, 'Vitamin Iron', 'Bottle of Vitamins', '$9.50', 'images/vitamin-iron.png'),
                                                                                                                (17, 'Vitamin Magnesium', 'Bottle of Vitamins', '$9.50', 'images/vitamin-magnesium.png'),
                                                                                                                (18, 'Multi Vitamins', 'Bottle of Vitamins', '$9.50', 'images/vitamin-multi.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
                         `username` varchar(255) NOT NULL,
                         `password` varchar(255) NOT NULL,
                         `firstName` varchar(255) NOT NULL,
                         `lastName` varchar(255) NOT NULL,
                         `age` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `users` (`username`, `password`, `firstName`, `lastName`, `age`) VALUES
    ('willagreene', 'willagreene', 'Willa', 'Greene', 26);


--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
    ADD PRIMARY KEY (`orderId`),
  ADD KEY `constraint1` (`username`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
    ADD PRIMARY KEY (`productId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
    ADD PRIMARY KEY (`username`);


ALTER TABLE `orders`
    MODIFY `orderId` int(255) NOT NULL AUTO_INCREMENT;

ALTER TABLE `products`
    MODIFY `productId` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

ALTER TABLE `orders`
    ADD CONSTRAINT `constraint1` FOREIGN KEY (`username`) REFERENCES `users` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;