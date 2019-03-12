-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 02, 2019 at 04:50 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `MarlinProject`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `id_author` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `name`, `description`, `id_author`) VALUES
(3, 'Статья №1', 'PHP позволяет делать для сайта многое интересное. Но уйма сайтов взломана из-за того же PHP. Либо выставляются неправильные права доступа к файлам, либо неправильно написаны скрипты работы с файлами, либо из-за ошибок в работе скрипта возможно посмотреть структуру каталогов сайта и т.д.', 1),
(4, 'Статья №2', 'PHP позволяет делать для сайта многое интересное. Но уйма сайтов взломана из-за того же PHP. Либо выставляются неправильные права доступа к файлам, либо неправильно написаны скрипты работы с файлами, либо из-за ошибок в работе скрипта возможно посмотреть структуру каталогов сайта и т.д.', 1),
(7, 'Статья №3', 'PHP позволяет делать для сайта многое интересное. Но уйма сайтов взломана из-за того же PHP. Либо выставляются неправильные права доступа к файлам, либо неправильно написаны скрипты работы с файлами, либо из-за ошибок в работе скрипта возможно посмотреть структуру каталогов сайта и т.д.', 1),
(8, 'Статья №4', 'PHP позволяет делать для сайта многое интересное. Но уйма сайтов взломана из-за того же PHP. Либо выставляются неправильные права доступа к файлам, либо неправильно написаны скрипты работы с файлами, либо из-за ошибок в работе скрипта возможно посмотреть структуру каталогов сайта и т.д.', 1),
(11, 'Статья №5', 'PHP позволяет делать для сайта многое интересное. Но уйма сайтов взломана из-за того же PHP. Либо выставляются неправильные права доступа к файлам, либо неправильно написаны скрипты работы с файлами, либо из-за ошибок в работе скрипта возможно посмотреть структуру каталогов сайта и т.д.', 1),
(21, 'Статья №5', 'PHP позволяет делать для сайта многое интересное. Но уйма сайтов взломана из-за того же PHP. Либо выставляются неправильные права доступа к файлам, либо неправильно написаны скрипты работы с файлами, либо из-за ошибок в работе скрипта возможно посмотреть структуру каталогов сайта и т.д.', 20);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `active` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `active`) VALUES
(1, 'admin', 'admin@admin.com', '$2y$10$wOydaLDr3LLMTMScCQh5Iep84MauPep97dPztDfk/j8ymvdJ7QsMW', NULL),
(20, 'Gleb', 'Gleb@gmail.com', '$2y$10$Uh23s4RL1rscZORbfMshT..OjVFLMgalDmb.DBlccAK9zJ2RW1sCO', NULL),
(21, 'Gleb3', 'Gleb@gmail.com', '$2y$10$csfxF2ohAcZrePPXYbL88u3aTEyPkxqDMJilhTPRYmXztKS4Xfl4.', NULL),
(22, 'Gleb4', 'Gleb@gmail.com', '$2y$10$Cc8aDuplUH7FN37d4zWS3OEGJ3NAL94T5mlKfGWsUkOZLHu9qL7oS', NULL),
(23, 'Gleb5', 'Gleb@gmail.com', '$2y$10$mqXkxsPUDJDx.KjvdyHBWOQcK5d6sNY6eX2vUI9WjzoX.LJgomZHm', NULL),
(24, 'Gleb6', 'Gleb6@gmail.com', '$2y$10$HdtxSoHydNx.MpclCXrrQOqqrGe7bP9FzuO6HDaUUhYzg5hDi52JK', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_author` (`id_author`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`id_author`) REFERENCES `users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
