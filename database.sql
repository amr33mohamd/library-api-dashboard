-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2017 at 05:20 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_meta`
--

CREATE TABLE `admin_meta` (
  `name` varchar(50) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin_meta`
--

INSERT INTO `admin_meta` (`name`, `value`) VALUES
('paypal_email', '');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `link` text NOT NULL,
  `downloads` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `image` text NOT NULL,
  `descc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `name`, `category_id`, `sub_category_id`, `link`, `downloads`, `price`, `image`, `descc`) VALUES
(3, 'المتنبى ف الفصحي', 1, 2, 'http://google.com', 5, 10, '', ''),
(4, 'المتنبى ف الفصحي', 1, 2, 'http://google.com', 5, 10, '', ''),
(5, 'المتنبى ف الفصحي', 1, 2, 'http://google.com', 5, 10, '', ''),
(6, 'المتنبى ف الفصحي', 1, 2, 'http://google.com', 5, 10, '', ''),
(7, 'المتنبى ف الفصحي', 1, 2, 'http://google.com', 5, 10, '', ''),
(8, 'المتنبى ف الفصحي', 1, 2, 'http://google.com', 5, 10, '', ''),
(9, 'المتنبى ف الفصحي', 1, 2, 'http://google.com', 5, 10, '', ''),
(10, 'المتنبى ف الفصحي', 1, 2, 'http://google.com', 5, 10, '', ''),
(11, 'المتنبى ف الفصحي', 1, 2, 'http://google.com', 5, 10, '', ''),
(12, 'المتنبى ف الفصحي', 1, 2, 'http://google.com', 5, 10, '', ''),
(13, 'المتنبى ف الفصحي', 1, 2, 'http://google.com', 5, 10, '', ''),
(14, 'المتنبى ف الفصحي', 1, 2, 'http://google.com', 5, 10, '', ''),
(15, 'المتنبى ف الفصحي', 1, 2, 'http://google.com', 5, 10, '', ''),
(16, 'المتنبى ف الفصحي', 1, 2, 'http://google.com', 5, 10, '', ''),
(17, 'المتنبى ف الفصحي', 1, 2, 'http://google.com', 5, 10, '', ''),
(18, 'المتنبى ف الفصحي', 1, 2, 'http://google.com', 5, 10, '', ''),
(19, 'المتنبى ف الفصحي', 1, 2, 'http://google.com', 5, 10, '', ''),
(20, 'المتنبى ف الفصحي', 1, 2, 'http://google.com', 5, 10, '', ''),
(21, 'المتنبى ف الفصحي', 1, 2, 'http://google.com', 5, 10, '', ''),
(22, 'aaa', 0, 0, 'books/0.6858965634742721.jpg', 0, 0, 'images/0.685896563474272.jpg', 'aaaa');

-- --------------------------------------------------------

--
-- Table structure for table `buy_requests`
--

CREATE TABLE `buy_requests` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'كتب'),
(2, 'مجلات');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `stars` int(11) NOT NULL,
  `review` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `screenshots`
--

CREATE TABLE `screenshots` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `book_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `name`, `category_id`) VALUES
(0, 'الفكر', 1),
(0, 'الوجدان', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `currancy` varchar(50) NOT NULL,
  `rule` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `country`, `address`, `currancy`, `rule`) VALUES
(1, 'admin', 'admin', 'admin', '', '', '', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `screenshots`
--
ALTER TABLE `screenshots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `screenshots`
--
ALTER TABLE `screenshots`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
