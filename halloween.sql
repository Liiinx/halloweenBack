-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 30 oct. 2018 à 14:35
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
  `coordonnees` varchar(195) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `adresse`
--

INSERT INTO `adresse` (`id`, `name`, `adresse`, `coordonnees`) VALUES
(1, 'Eglise Saint-Nizier', '3 Rue de la Fromagerie, 69001 Lyon', '45.764793, 4.833662\r\n'),
(2, 'Boston Cafe', '8 Place des terreaux, 69001 Lyon', '45.767998, 4.833104'),
(3, 'Sun', '3 Rue Sainte-Marie-des-Terreaux, 69001 Lyon', '45.768545, 4.832973'),
(4, 'Local PHP', '73 Cours Charlemagne, 69002 Lyon', '45.743474, 4.821665'),
(5, 'Brasserie George', 'Cours de Verdun Perrache, Lyon 69002', '45.748424, 4.828285');

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
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
