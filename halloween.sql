-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 30 oct. 2018 à 16:41
-- Version du serveur :  5.7.23
-- Version de PHP :  7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `halloween`
--

-- --------------------------------------------------------

--
-- Structure de la table `adresse`
--

DROP TABLE IF EXISTS `adresse`;
CREATE TABLE IF NOT EXISTS `adresse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(125) NOT NULL,
  `adresse` varchar(165) NOT NULL,
  `longitude` float NOT NULL,
  `latitude` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `adresse`
--

INSERT INTO `adresse` (`id`, `name`, `adresse`, `longitude`, `latitude`) VALUES
(1, 'Eglise Saint-Nizier', '3 Rue de la Fromagerie, 69001 Lyon', 0, 0),
(2, 'Boston Cafe', '8 Place des terreaux, 69001 Lyon', 0, 0),
(3, 'Sun', '3 Rue Sainte-Marie-des-Terreaux, 69001 Lyon', 0, 0),
(4, 'Local PHP', '73 Cours Charlemagne, 69002 Lyon', 0, 0),
(5, 'Brasserie George', 'Cours de Verdun Perrache, Lyon 69002', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `bonbonslist`
--

DROP TABLE IF EXISTS `bonbonslist`;
CREATE TABLE IF NOT EXISTS `bonbonslist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(125) NOT NULL,
  `rang` varchar(155) NOT NULL,
  `img` varchar(300) NOT NULL,
  `imgGris` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `bonbonslist`
--

INSERT INTO `bonbonslist` (`id`, `name`, `rang`, `img`, `imgGris`) VALUES
(1, 'BonAppart', '2', 'https://nsa39.casimages.com/img/2018/10/30/mini_181030060130271775.png', 'https://nsa39.casimages.com/img/2018/10/30/mini_181030060130318173.png'),
(2, 'BonbonBienBon', '1', 'https://nsa39.casimages.com/img/2018/10/30/181030060130570837.png', 'https://nsa39.casimages.com/img/2018/10/30/181030060130827375.png'),
(3, 'BonBonBon', '3', 'https://nsa39.casimages.com/img/2018/10/30/18103006013184912.png', 'https://nsa39.casimages.com/img/2018/10/30/181030060131334510.png'),
(4, 'BonBonne', '3', 'https://nsa39.casimages.com/img/2018/10/30/181030060131585980.png', 'https://nsa39.casimages.com/img/2018/10/30/181030060131833532.png'),
(5, 'BonPasbon', '3', 'https://nsa39.casimages.com/img/2018/10/30/18103006013280949.png', 'https://nsa39.casimages.com/img/2018/10/30/181030060132330617.png'),
(6, 'ChikeuBoum', '2', 'https://nsa39.casimages.com/img/2018/10/30/181030060132592505.png', 'https://nsa39.casimages.com/img/2018/10/30/181030060132832945.png'),
(7, 'Habibon', '1', 'https://nsa39.casimages.com/img/2018/10/30/18103006013381886.png', 'https://nsa39.casimages.com/img/2018/10/30/181030060133627587.png'),
(8, 'MacDoum', '1', 'https://nsa39.casimages.com/img/2018/10/30/181030060133687549.png', 'https://nsa39.casimages.com/img/2018/10/30/181030060133941206.png'),
(9, 'Mathieu', '2', 'https://nsa39.casimages.com/img/2018/10/30/181030060134198384.png', 'https://nsa39.casimages.com/img/2018/10/30/181030060134455229.png'),
(10, 'Misubichi', '1', 'https://nsa39.casimages.com/img/2018/10/30/181030060134709938.png', 'https://nsa39.casimages.com/img/2018/10/30/181030060134950094.png');

-- --------------------------------------------------------

--
-- Structure de la table `bonbonsusers`
--

DROP TABLE IF EXISTS `bonbonsusers`;
CREATE TABLE IF NOT EXISTS `bonbonsusers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(125) NOT NULL,
  `rang` varchar(125) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `questions`
--

DROP TABLE IF EXISTS `questions`;
CREATE TABLE IF NOT EXISTS `questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(255) NOT NULL,
  `id_adresse` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `questions`
--

INSERT INTO `questions` (`id`, `question`, `id_adresse`, `name`) VALUES
(1, 'Quel etait la superficie d\'une cellule pour 3 prisonniers ?', NULL, 'Prison Saint Paul et Saint Joseph'),
(2, 'De combien de place disposait la prison ?', NULL, 'Prison Montluc'),
(3, 'Quel est le nombre de tombe de ce cimetiere ?', NULL, 'Cemetiere de la guillotiere'),
(4, 'Combien y a t\'il de traboule à Lyon ?', NULL, 'Traboules de Lyon'),
(5, 'Quelle machine du diable était installée sur cette place ?', NULL, 'Place des terreaux'),
(6, 'Quel président fut assassiné en sortant du palais de la bourse ?', NULL, 'Palais de la bourse'),
(7, 'Quel etait le nom de l\'ancien viaduc situé à la place de cette passerelle ?', NULL, 'Passerelle des 4 vents'),
(8, 'Qui hante cet hotel ?', NULL, 'Hotel chateau Perrache');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
