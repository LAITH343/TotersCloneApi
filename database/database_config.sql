-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 19, 2022 at 02:46 PM
-- Server version: 5.7.39
-- PHP Version: 7.3.31-1~deb10u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laith`
--

-- --------------------------------------------------------

--
-- Table structure for table `categorys`
--

CREATE TABLE `categorys` (
  `id` int(255) NOT NULL,
  `label` varchar(50) NOT NULL,
  `imgurl` varchar(1000) NOT NULL,
  `tagcode` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categorys`
--

INSERT INTO `categorys` (`id`, `label`, `imgurl`, `tagcode`) VALUES
(1, 'food', 'https://i.pinimg.com/736x/5c/7a/00/5c7a007e8b3559fefb1596c140094a0a.jpg', 'food_page');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(255) NOT NULL,
  `header` varchar(50) NOT NULL,
  `subheader` varchar(100) NOT NULL,
  `restrants_list` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `header`, `subheader`, `restrants_list`) VALUES
(1, 'Weekly Discounts', 'get up to 50% off on these selected restrants this week!', 'Burger Makers,The fern - al Yarmouk');

-- --------------------------------------------------------

--
-- Table structure for table `food_info`
--

CREATE TABLE `food_info` (
  `id` int(255) NOT NULL,
  `food_name` varchar(50) NOT NULL,
  `restrant_name` varchar(50) NOT NULL,
  `food_price` int(255) NOT NULL,
  `food_img` varchar(1000) NOT NULL,
  `additions` varchar(1000) NOT NULL,
  `food_desc` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food_info`
--

INSERT INTO `food_info` (`id`, `food_name`, `restrant_name`, `food_price`, `food_img`, `additions`, `food_desc`) VALUES
(1, 'Chicken Caesar Salad', 'Burger Makers', 7000, 'https://thumbs.dreamstime.com/b/assorted-american-food-top-view-109748438.jpg', 'none', 'Chicken slices, lettuce, cheese, sauce, mayonnaise and croutons'),
(2, 'BBQ Chicken Pizza', 'The fern - al Yarmouk', 14000, 'https://www.emaratalyoum.com/polopoly_fs/1.1627544.1651604888!/image/image.jpg', 'none', 'pizza dough, mozzarella cheesse, tomato sauce'),
(3, 'Beef Cheese Burger', 'Burger No.1', 35000, 'https://demo.wpexperts.io/wholesale-for-woocommerce/wp-content/uploads/2021/10/istockphoto-1188412964-612x612-1.jpg', 'none', 'burger bun, beef patty, cheese, tomatoes');

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` int(255) NOT NULL,
  `imgurl` varchar(1000) NOT NULL,
  `tagcode` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`id`, `imgurl`, `tagcode`) VALUES
(1, 'https://img.freepik.com/free-psd/fast-food-banner-template_23-2148609080.jpg?w=2000', 'first_offer_page');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(255) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_phone` varchar(16) NOT NULL,
  `food_name` varchar(50) NOT NULL,
  `restrant_name` varchar(50) NOT NULL,
  `food_amount` int(255) NOT NULL,
  `user_location` varchar(100) NOT NULL,
  `note` varchar(100) NOT NULL,
  `meal_price` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_name`, `user_phone`, `food_name`, `restrant_name`, `food_amount`, `user_location`, `note`, `meal_price`) VALUES
(13, 'laith', '07800000000', 'Chicken Caesar Salad', 'Burger Makers', 3, 'iraq, baghdad', '', 7000),
(14, 'laith', '07800000000', 'Chicken Caesar Salad', 'Burger Makers', 2, 'iraq, baghdad', '', 7000),
(15, 'laith 2', '07800000000', 'Chicken Caesar Salad', 'Burger Makers', 1, 'iraq, baghdad', '', 7000);

-- --------------------------------------------------------

--
-- Table structure for table `rates`
--

CREATE TABLE `rates` (
  `id` int(255) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `restrant_name` varchar(50) NOT NULL,
  `user_rate` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rates`
--

INSERT INTO `rates` (`id`, `user_name`, `restrant_name`, `user_rate`) VALUES
(1, 'laith', 'Burger Makers', 5),
(2, 'laith', 'Burger No.1', 5),
(3, 'laith', 'The fern - al Yarmouk', 5);

-- --------------------------------------------------------

--
-- Table structure for table `restrant_info`
--

CREATE TABLE `restrant_info` (
  `id` int(255) NOT NULL,
  `restrant_name` varchar(50) NOT NULL,
  `restrant_desc` varchar(100) NOT NULL,
  `restrant_location` varchar(100) NOT NULL,
  `D_price` int(255) NOT NULL,
  `make_time` varchar(50) NOT NULL,
  `restrant_tags` varchar(100) NOT NULL,
  `restrant_img` varchar(1000) NOT NULL,
  `restrant_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restrant_info`
--

INSERT INTO `restrant_info` (`id`, `restrant_name`, `restrant_desc`, `restrant_location`, `D_price`, `make_time`, `restrant_tags`, `restrant_img`, `restrant_type`) VALUES
(1, 'Burger Makers', 'we are specialized in providing a variety of the most delicious and the finest types of burgers.', 'baghdad, mansor', 2500, '36 - 46;mins', '30% off, Earn Points', 'https://media-cdn.tripadvisor.com/media/photo-s/17/a0/cf/c7/la-favorita-por-tener.jpg', 'Burger, Fast Food'),
(2, 'Burger No.1', 'Burger No.1 serves the tastiest burger meals', 'iraq, baghdad', 1500, '42 - 52;mins', 'BurgerN1', 'https://media.istockphoto.com/photos/delicious-homemade-hamburger-and-french-fries-picture-id1254672762?b=1&k=20&m=1254672762&s=170667a&w=0&h=nKrG40G2jj9O8wzJ8wDD2zmUKNp00mcdVWK_f_zixug=', 'Fast Food'),
(3, 'The fern - al Yarmouk', 'Enjoy the most delicious firewood pizza delivered to your doorstep!', 'iraq, baghdad', 2000, '40 - 50;mins', 'PizzaN01', 'https://miro.medium.com/max/1400/0*oTfm1pTXLxitHHFy.jpg', 'Pizza');

-- --------------------------------------------------------

--
-- Table structure for table `users_info`
--

CREATE TABLE `users_info` (
  `id` int(255) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `phone_number` varchar(16) NOT NULL,
  `user_location` varchar(100) NOT NULL,
  `reg_date` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categorys`
--
ALTER TABLE `categorys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_info`
--
ALTER TABLE `food_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rates`
--
ALTER TABLE `rates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restrant_info`
--
ALTER TABLE `restrant_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_info`
--
ALTER TABLE `users_info`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categorys`
--
ALTER TABLE `categorys`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `food_info`
--
ALTER TABLE `food_info`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `rates`
--
ALTER TABLE `rates`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `restrant_info`
--
ALTER TABLE `restrant_info`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users_info`
--
ALTER TABLE `users_info`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
