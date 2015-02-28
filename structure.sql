-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Sam 28 Février 2015 à 15:26
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=253 ;

--
-- Contenu de la table `structure`
--

INSERT INTO `structure` (`id`, `id_map`, `id_wall`, `w_posX`, `w_posY`) VALUES
(229, 4, 3, 1, 0),
(230, 4, 3, 2, 0),
(231, 4, 3, 3, 0),
(232, 4, 6, 4, 0),
(233, 4, 5, 0, 1),
(234, 4, 0, 1, 1),
(235, 4, 8, 2, 1),
(236, 4, 9, 3, 1),
(237, 4, 4, 4, 1),
(238, 4, 5, 0, 2),
(239, 4, 0, 1, 2),
(240, 4, 6, 2, 2),
(241, 4, 7, 3, 2),
(242, 4, 4, 4, 2),
(243, 4, 5, 0, 3),
(244, 4, 0, 1, 3),
(245, 4, 0, 2, 3),
(246, 4, 0, 3, 3),
(247, 4, 4, 4, 3),
(248, 4, 9, 0, 4),
(249, 4, 2, 1, 4),
(250, 4, 2, 2, 4),
(251, 4, 2, 3, 4),
(252, 4, 8, 4, 4);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
