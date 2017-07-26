-- phpMyAdmin SQL Dump
-- version 4.0.4.2
-- http://www.phpmyadmin.net
--
-- 主機: localhost
-- 產生日期: 2017 年 07 月 26 日 07:19
-- 伺服器版本: 5.1.44-community
-- PHP 版本: 5.4.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 資料庫: `address_book`
--
CREATE DATABASE IF NOT EXISTS `address_book` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `address_book`;

-- --------------------------------------------------------

--
-- 表的結構 `all_data`
--

CREATE TABLE IF NOT EXISTS `all_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `city_id` int(11) NOT NULL,
  `area_id` int(11) NOT NULL,
  `address` text NOT NULL,
  `phone` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 轉存資料表中的資料 `all_data`
--

INSERT INTO `all_data` (`id`, `name`, `city_id`, `area_id`, `address`, `phone`) VALUES
(1, 'NOVA-台中英才店', 1, 1, '英才路508號', '04-2325-8899');

-- --------------------------------------------------------

--
-- 表的結構 `area`
--

CREATE TABLE IF NOT EXISTS `area` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city_id` int(11) NOT NULL,
  `name` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 轉存資料表中的資料 `area`
--

INSERT INTO `area` (`id`, `city_id`, `name`) VALUES
(1, 1, '西區');

-- --------------------------------------------------------

--
-- 表的結構 `city`
--

CREATE TABLE IF NOT EXISTS `city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 轉存資料表中的資料 `city`
--

INSERT INTO `city` (`id`, `name`) VALUES
(1, '台中市');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
