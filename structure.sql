-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mer 04 Mars 2015 à 09:30
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `map`
--

-- --------------------------------------------------------

--
-- Structure de la table `structure`
--

CREATE TABLE IF NOT EXISTS `structure` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_map` int(11) NOT NULL,
  `id_wall` int(11) NOT NULL,
  `w_posX` int(11) NOT NULL,
  `w_posY` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=278 ;

--
-- Contenu de la table `structure`
--

INSERT INTO `structure` (`id`, `id_map`, `id_wall`, `w_posX`, `w_posY`) VALUES
(253, 5, 7, 0, 0),
(254, 5, 3, 1, 0),
(255, 5, 3, 2, 0),
(256, 5, 3, 3, 0),
(257, 5, 6, 4, 0),
(258, 5, 9, 0, 1),
(259, 5, 10, 1, 1),
(260, 5, 8, 2, 1),
(261, 5, 9, 3, 1),
(262, 5, 4, 4, 1),
(263, 5, 7, 0, 2),
(264, 5, 11, 1, 2),
(265, 5, 6, 2, 2),
(266, 5, 7, 3, 2),
(267, 5, 4, 4, 2),
(268, 5, 5, 0, 3),
(269, 5, 1, 1, 3),
(270, 5, 1, 2, 3),
(271, 5, 1, 3, 3),
(272, 5, 4, 4, 3),
(273, 5, 9, 0, 4),
(274, 5, 2, 1, 4),
(275, 5, 2, 2, 4),
(276, 5, 2, 3, 4),
(277, 5, 8, 4, 4);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
