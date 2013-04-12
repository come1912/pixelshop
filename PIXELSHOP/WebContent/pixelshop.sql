-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Mer 10 Avril 2013 à 15:30
-- Version du serveur: 5.1.54
-- Version de PHP: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `pixelshop`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `login` varchar(56) COLLATE utf8_unicode_ci NOT NULL,
  `pass` varchar(56) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `admin`
--

INSERT INTO `admin` (`login`, `pass`) VALUES
('admin', 'ddh'),
('test', 'kda');

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE IF NOT EXISTS `categorie` (
  `idcategorie` int(11) NOT NULL DEFAULT '0',
  `nomcategorie` varchar(56) COLLATE utf8_unicode_ci DEFAULT NULL,
  `desccategorie` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idcategorie`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `categorie`
--

INSERT INTO `categorie` (`idcategorie`, `nomcategorie`, `desccategorie`) VALUES
(1, 'Reflex', 'appareils reflex'),
(2, 'Compact', 'appareils numeriques compacts'),
(3, 'Objectifs', 'objectifs pour appareils reflex');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE IF NOT EXISTS `client` (
  `idclient` int(11) NOT NULL AUTO_INCREMENT,
  `emailclient` varchar(56) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mdpclient` varchar(56) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nomclient` varchar(56) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prenomclient` varchar(56) COLLATE utf8_unicode_ci DEFAULT NULL,
  `addresseclient` varchar(56) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ddnclient` varchar(56) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telephoneclient` varchar(56) COLLATE utf8_unicode_ci DEFAULT NULL,
  `villeclient` varchar(56) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cpclient` varchar(56) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateinsclient` varchar(56) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idclient`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Contenu de la table `client`
--

INSERT INTO `client` (`idclient`, `emailclient`, `mdpclient`, `nomclient`, `prenomclient`, `addresseclient`, `ddnclient`, `telephoneclient`, `villeclient`, `cpclient`, `dateinsclient`) VALUES
(1, 'kk@kk.fr', 'll', 'salhi', 'pip', 'poi', 'pio', 'ipo', 'kl', 'klkl', '2013-02-24 23:50:41'),
(3, 'dd@dd.fr', 'dd', 'nnnnnnnnnnn', 'vbv', 'yutyu', NULL, 'uoiuuio', 'yut', 'ghjjhgjhg', '2013-03-04 23:02:01'),
(4, 'cc@cc.com', 'jjjj', 'nnnnnnnnnnn', 'vbv', 'yutyu', NULL, 'uoiuuio', 'yut', 'ghjjhgjhg', '2013-03-04 23:03:19'),
(5, 'jkhjh', 'uiiy', 'ioijl', 'hjkbhjkh', 'b,nb,nb', 'cbvcxvbgc', 'xcgdfyu', 'uiotyiol', 'yutyyutyu', '2013-03-04 23:03:32');

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE IF NOT EXISTS `commande` (
  `idCommande` int(11) NOT NULL,
  `dateCmd` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `totaleCmd` double NOT NULL,
  `statutCmd` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `idUser` int(11) NOT NULL,
  `idclient` int(11) NOT NULL,
  PRIMARY KEY (`idCommande`),
  KEY `fk2` (`idclient`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `commande`
--

INSERT INTO `commande` (`idCommande`, `dateCmd`, `totaleCmd`, `statutCmd`, `idUser`, `idclient`) VALUES
(1, '2013-02-09', 55422, 'en cours', 1, 0),
(2, '2013-04-02', 22231, 'validé', 3, 0);

-- --------------------------------------------------------

--
-- Structure de la table `ligne_commande`
--

CREATE TABLE IF NOT EXISTS `ligne_commande` (
  `idproduit` int(11) NOT NULL,
  `idcommande` int(11) NOT NULL,
  `prix_vente` float NOT NULL,
  PRIMARY KEY (`idproduit`,`idcommande`),
  KEY `fk4` (`idcommande`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `ligne_commande`
--


-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE IF NOT EXISTS `produit` (
  `id_produit` int(11) NOT NULL AUTO_INCREMENT,
  `intitule_produit` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `desc_produit` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `quantite_produit` varchar(56) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prix_produit` int(11) NOT NULL,
  `date_ajout_produit` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `image_produit` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `idcategorie` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_produit`),
  KEY `fk1` (`idcategorie`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- Contenu de la table `produit`
--

INSERT INTO `produit` (`id_produit`, `intitule_produit`, `desc_produit`, `quantite_produit`, `prix_produit`, `date_ajout_produit`, `image_produit`, `idcategorie`) VALUES
(7, 'canon 550d', 'Immortalisez les moments importants de votre vie dans les moindres détails avec l''EOS 550D', '3', 2500, '2013-02-07', '1.jpg', 1),
(8, 'lumix p519', 'Le FZ45 est l''héritier logique d''une longue lignée. Sans surprise', '0', 4055, '2013-02-13', '2.jpg', 1),
(9, 'panasonic DMC FZ28', ' Avec son mode auto intelligent, le Panasonic FZ28 ravira les personnes à la recherche d''un appareil photo', '4', 7000, '2013-02-11', '3.jpg', 1),
(11, 'canon powershot a2300', 'Compact, élégant et haut en couleur, le PowerShot A2300 est doté d''un zoom 5x, d''une touche d''enregistrement instantané de vidéos HD (720p)', '44', 1200, '2013-02-09', '5.jpg', 2),
(12, 'fujifilm finepix z70', 'Appartenant à la série des compacts bijoux grand public de Fujifilm, le nouveau Z70 joue la carte de la sobriété et de l''esthétique.', '22', 1000, '2013-03-09', '6.jpg', 2),
(1, 'Canon BC-15', 'objectif pour reflex cft1922', '42', 4000, '2013-02-07', '8.jpg', 3),
(2, 'GH-112', 'objectif nikon reflex bridge', '15', 1999, '2013-02-07', '9.jpg', 3),
(4, 'TGT-77', 'objectif sony cybershot pour appareils reflex', '11', 3888, '2013-02-07', '12.jpg', 3),
(5, 'AA56', 'objectif panasonic THG66', '0', 1000, '2013-02-07', '11.jpg', 3);
