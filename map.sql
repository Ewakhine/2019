-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 26 Février 2015 à 15:05
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
-- Structure de la table `coucheperso`
--

CREATE TABLE IF NOT EXISTS `coucheperso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_map` int(11) NOT NULL,
  `id_perso` int(11) NOT NULL,
  `p_posX` int(11) NOT NULL,
  `p_posY` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `coucheperso`
--

INSERT INTO `coucheperso` (`id`, `id_map`, `id_perso`, `p_posX`, `p_posY`) VALUES
(1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `furniture`
--

CREATE TABLE IF NOT EXISTS `furniture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_map` int(11) NOT NULL,
  `id_object` int(11) NOT NULL,
  `o_posX` int(11) NOT NULL,
  `o_posY` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `furniture`
--

INSERT INTO `furniture` (`id`, `id_map`, `id_object`, `o_posX`, `o_posY`) VALUES
(1, 1, 1, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `map`
--

CREATE TABLE IF NOT EXISTS `map` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `rows` int(11) NOT NULL,
  `cols` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `map`
--

INSERT INTO `map` (`id`, `name`, `rows`, `cols`) VALUES
(1, 'test_01', 0, 0),
(2, 'Zbra', 10, 20),
(3, 'proto', 3, 3);

-- --------------------------------------------------------

--
-- Structure de la table `object`
--

CREATE TABLE IF NOT EXISTS `object` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `tailleX` int(11) NOT NULL,
  `tailleY` int(11) NOT NULL,
  `sprite` varchar(255) NOT NULL,
  `isActivable` tinyint(1) NOT NULL,
  `isBlock` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `object`
--

INSERT INTO `object` (`id`, `name`, `tailleX`, `tailleY`, `sprite`, `isActivable`, `isBlock`) VALUES
(1, 'chair', 1, 1, 'chaise', 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `personnage`
--

CREATE TABLE IF NOT EXISTS `personnage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `sprite` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `personnage`
--

INSERT INTO `personnage` (`id`, `name`, `sprite`) VALUES
(1, 'perso_joueur', 'PJ1');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=228 ;

--
-- Contenu de la table `structure`
--

INSERT INTO `structure` (`id`, `id_map`, `id_wall`, `w_posX`, `w_posY`) VALUES
(1, 1, 7, 0, 0),
(2, 1, 5, 0, 1),
(3, 1, 5, 0, 2),
(4, 1, 9, 0, 3),
(5, 1, 3, 1, 0),
(6, 1, 2, 1, 3),
(7, 1, 6, 2, 0),
(8, 1, 2, 2, 3),
(9, 1, 7, 3, 0),
(10, 1, 2, 3, 1),
(11, 1, 6, 3, 2),
(12, 1, 8, 3, 3),
(13, 1, 6, 4, 0),
(14, 1, 8, 4, 1),
(15, 2, 2, 0, 0),
(16, 2, 1, 1, 0),
(17, 2, 1, 2, 0),
(18, 2, 1, 3, 0),
(19, 2, 1, 4, 0),
(20, 2, 1, 5, 0),
(21, 2, 1, 6, 0),
(22, 2, 1, 7, 0),
(23, 2, 1, 8, 0),
(24, 2, 1, 9, 0),
(25, 2, 1, 10, 0),
(26, 2, 1, 11, 0),
(27, 2, 1, 12, 0),
(28, 2, 1, 13, 0),
(29, 2, 1, 14, 0),
(30, 2, 1, 15, 0),
(31, 2, 1, 16, 0),
(32, 2, 1, 17, 0),
(33, 2, 1, 18, 0),
(34, 2, 1, 19, 0),
(35, 2, 1, 0, 1),
(36, 2, 1, 1, 1),
(37, 2, 1, 2, 1),
(38, 2, 1, 3, 1),
(39, 2, 1, 4, 1),
(40, 2, 1, 5, 1),
(41, 2, 1, 6, 1),
(42, 2, 1, 7, 1),
(43, 2, 1, 8, 1),
(44, 2, 1, 9, 1),
(45, 2, 1, 10, 1),
(46, 2, 1, 11, 1),
(47, 2, 1, 12, 1),
(48, 2, 1, 13, 1),
(49, 2, 1, 14, 1),
(50, 2, 1, 15, 1),
(51, 2, 1, 16, 1),
(52, 2, 1, 17, 1),
(53, 2, 1, 18, 1),
(54, 2, 1, 19, 1),
(55, 2, 1, 0, 2),
(56, 2, 1, 1, 2),
(57, 2, 1, 2, 2),
(58, 2, 1, 3, 2),
(59, 2, 1, 4, 2),
(60, 2, 1, 5, 2),
(61, 2, 1, 6, 2),
(62, 2, 1, 7, 2),
(63, 2, 1, 8, 2),
(64, 2, 1, 9, 2),
(65, 2, 1, 10, 2),
(66, 2, 1, 11, 2),
(67, 2, 1, 12, 2),
(68, 2, 1, 13, 2),
(69, 2, 1, 14, 2),
(70, 2, 1, 15, 2),
(71, 2, 1, 16, 2),
(72, 2, 1, 17, 2),
(73, 2, 1, 18, 2),
(74, 2, 1, 19, 2),
(75, 2, 1, 0, 3),
(76, 2, 1, 1, 3),
(77, 2, 1, 2, 3),
(78, 2, 1, 3, 3),
(79, 2, 1, 4, 3),
(80, 2, 1, 5, 3),
(81, 2, 1, 6, 3),
(82, 2, 1, 7, 3),
(83, 2, 1, 8, 3),
(84, 2, 1, 9, 3),
(85, 2, 1, 10, 3),
(86, 2, 1, 11, 3),
(87, 2, 1, 12, 3),
(88, 2, 1, 13, 3),
(89, 2, 1, 14, 3),
(90, 2, 1, 15, 3),
(91, 2, 1, 16, 3),
(92, 2, 1, 17, 3),
(93, 2, 1, 18, 3),
(94, 2, 1, 19, 3),
(95, 2, 1, 0, 4),
(96, 2, 1, 1, 4),
(97, 2, 1, 2, 4),
(98, 2, 1, 3, 4),
(99, 2, 1, 4, 4),
(100, 2, 1, 5, 4),
(101, 2, 1, 6, 4),
(102, 2, 1, 7, 4),
(103, 2, 1, 8, 4),
(104, 2, 1, 9, 4),
(105, 2, 1, 10, 4),
(106, 2, 1, 11, 4),
(107, 2, 1, 12, 4),
(108, 2, 1, 13, 4),
(109, 2, 1, 14, 4),
(110, 2, 1, 15, 4),
(111, 2, 1, 16, 4),
(112, 2, 1, 17, 4),
(113, 2, 1, 18, 4),
(114, 2, 1, 19, 4),
(115, 2, 1, 0, 5),
(116, 2, 1, 1, 5),
(117, 2, 1, 2, 5),
(118, 2, 1, 3, 5),
(119, 2, 1, 4, 5),
(120, 2, 1, 5, 5),
(121, 2, 1, 6, 5),
(122, 2, 1, 7, 5),
(123, 2, 1, 8, 5),
(124, 2, 1, 9, 5),
(125, 2, 1, 10, 5),
(126, 2, 1, 11, 5),
(127, 2, 1, 12, 5),
(128, 2, 1, 13, 5),
(129, 2, 1, 14, 5),
(130, 2, 1, 15, 5),
(131, 2, 1, 16, 5),
(132, 2, 1, 17, 5),
(133, 2, 1, 18, 5),
(134, 2, 1, 19, 5),
(135, 2, 1, 0, 6),
(136, 2, 1, 1, 6),
(137, 2, 1, 2, 6),
(138, 2, 1, 3, 6),
(139, 2, 1, 4, 6),
(140, 2, 1, 5, 6),
(141, 2, 1, 6, 6),
(142, 2, 1, 7, 6),
(143, 2, 1, 8, 6),
(144, 2, 1, 9, 6),
(145, 2, 1, 10, 6),
(146, 2, 1, 11, 6),
(147, 2, 1, 12, 6),
(148, 2, 1, 13, 6),
(149, 2, 1, 14, 6),
(150, 2, 1, 15, 6),
(151, 2, 1, 16, 6),
(152, 2, 1, 17, 6),
(153, 2, 1, 18, 6),
(154, 2, 1, 19, 6),
(155, 2, 1, 0, 7),
(156, 2, 1, 1, 7),
(157, 2, 1, 2, 7),
(158, 2, 1, 3, 7),
(159, 2, 1, 4, 7),
(160, 2, 1, 5, 7),
(161, 2, 1, 6, 7),
(162, 2, 1, 7, 7),
(163, 2, 1, 8, 7),
(164, 2, 1, 9, 7),
(165, 2, 1, 10, 7),
(166, 2, 1, 11, 7),
(167, 2, 1, 12, 7),
(168, 2, 1, 13, 7),
(169, 2, 1, 14, 7),
(170, 2, 1, 15, 7),
(171, 2, 1, 16, 7),
(172, 2, 1, 17, 7),
(173, 2, 1, 18, 7),
(174, 2, 1, 19, 7),
(175, 2, 1, 0, 8),
(176, 2, 1, 1, 8),
(177, 2, 1, 2, 8),
(178, 2, 1, 3, 8),
(179, 2, 1, 4, 8),
(180, 2, 1, 5, 8),
(181, 2, 1, 6, 8),
(182, 2, 1, 7, 8),
(183, 2, 1, 8, 8),
(184, 2, 1, 9, 8),
(185, 2, 1, 10, 8),
(186, 2, 1, 11, 8),
(187, 2, 1, 12, 8),
(188, 2, 1, 13, 8),
(189, 2, 1, 14, 8),
(190, 2, 1, 15, 8),
(191, 2, 1, 16, 8),
(192, 2, 1, 17, 8),
(193, 2, 1, 18, 8),
(194, 2, 1, 19, 8),
(195, 2, 1, 0, 9),
(196, 2, 1, 1, 9),
(197, 2, 1, 2, 9),
(198, 2, 1, 3, 9),
(199, 2, 1, 4, 9),
(200, 2, 1, 5, 9),
(201, 2, 1, 6, 9),
(202, 2, 1, 7, 9),
(203, 2, 1, 8, 9),
(204, 2, 1, 9, 9),
(205, 2, 1, 10, 9),
(206, 2, 1, 11, 9),
(207, 2, 1, 12, 9),
(208, 2, 1, 13, 9),
(209, 2, 1, 14, 9),
(210, 2, 1, 15, 9),
(211, 2, 1, 16, 9),
(212, 2, 1, 17, 9),
(213, 2, 1, 18, 9),
(214, 2, 1, 19, 9),
(215, 1, 1, 1, 1),
(216, 1, 1, 1, 2),
(217, 1, 1, 2, 1),
(218, 1, 1, 2, 2),
(219, 3, 7, 0, 0),
(220, 3, 3, 1, 0),
(221, 3, 6, 2, 0),
(222, 3, 5, 0, 1),
(223, 3, 8, 1, 1),
(224, 3, 4, 2, 1),
(225, 3, 9, 0, 2),
(226, 3, 2, 1, 2),
(227, 3, 8, 2, 2);

-- --------------------------------------------------------

--
-- Structure de la table `wall`
--

CREATE TABLE IF NOT EXISTS `wall` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `goRight` tinyint(1) NOT NULL,
  `goLeft` tinyint(1) NOT NULL,
  `goTop` tinyint(1) NOT NULL,
  `goBottom` tinyint(1) NOT NULL,
  `isObstructed` tinyint(1) NOT NULL,
  `sprite` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Contenu de la table `wall`
--

INSERT INTO `wall` (`id`, `name`, `goRight`, `goLeft`, `goTop`, `goBottom`, `isObstructed`, `sprite`) VALUES
(1, 'null', 1, 1, 1, 1, 0, 'null'),
(2, 'bas', 1, 1, 1, 0, 0, 'bas'),
(3, 'haut', 1, 1, 0, 1, 0, 'haut'),
(4, 'droit', 0, 1, 1, 1, 0, 'droit'),
(5, 'gauche', 1, 0, 1, 1, 0, 'gauche'),
(6, 'coinHD', 0, 1, 0, 1, 0, 'coinHD'),
(7, 'coinHG', 1, 0, 0, 1, 0, 'coinHG'),
(8, 'coinBD', 0, 1, 1, 0, 0, 'coinBD'),
(9, 'coinBG', 1, 0, 1, 0, 0, 'coinBG');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
