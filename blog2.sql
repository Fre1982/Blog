-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Gegenereerd op: 05 apr 2019 om 18:43
-- Serverversie: 5.7.21
-- PHP-versie: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `category_id` int(6) NOT NULL AUTO_INCREMENT,
  `naam` text NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `categories`
--

INSERT INTO `categories` (`category_id`, `naam`) VALUES
(1, 'Boeken'),
(2, 'Reizen'),
(3, 'Techniek'),
(4, 'Computers'),
(5, 'Muziek'),
(6, 'Events'),
(7, 'Algemeen');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `body` text NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `post_parent_id` int(11) NOT NULL,
  `category_id` int(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `posts`
--

INSERT INTO `posts` (`post_id`, `title`, `body`, `create_date`, `post_parent_id`, `category_id`, `user_id`) VALUES
(1, 'Gelukkig zijn', 'Dat is wat nodig is, just do it', '2019-04-05 18:43:01', 0, 7, 5),
(2, 'Mijn vakantie naar de Dominicaanse Republiek', 'Voor 2 weken gast geweest van \"Villa La Isla\". Een Guesthuose in La Romana, Dominicaanse Republiek. Een geweldige ervaring. Een betere gastheer, Dhr. F. Hellabauts, bestaat niet. Schoon, zeezicht, rustig en goedkoop.\r\n\r\nDe gastheer maakt U een heerlijk ontbijt, verzorgt Uw excursies en verzorgt Uw vervoer.\r\n\r\nMijn mooiste plekken & hoogtepunten in Dominicaanse Republiek:\r\nLa Romana • Isla Catalina • bayahibe\r\n\r\nMijn Dominicaanse Republiek beoordeling:\r\nCultuur & bezienswaardigheden: 8\r\nGastvrijheid: 9\r\nNatuur: 8\r\nEten: 7\r\nStranden: 9', '2019-04-05 18:42:28', 0, 3, 1),
(3, 'tip voor goed technisch forum', 'Kijk eens op circuits online', '2019-04-05 18:38:40', 0, 3, 1),
(4, 'top opleiding', 'Wordt backend developer, kijk op Syntra.be', '2019-04-05 18:40:26', 0, 4, 3);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `users`
--

INSERT INTO `users` (`user_id`, `name`, `username`, `password`) VALUES
(1, 'Luc Smeulders', 'luc', 'password'),
(5, 'Mathias', 'mathias', 'mathias123'),
(3, 'Fre', 'Fre', 'fre123'),
(4, 'Lesley', 'lesley', 'lesley123'),
(6, 'Laurents', 'laurents', 'laurents123');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
