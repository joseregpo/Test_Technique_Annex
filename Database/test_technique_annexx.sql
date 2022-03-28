-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : dim. 27 mars 2022 à 14:40
-- Version du serveur : 10.7.3-MariaDB-log
-- Version de PHP : 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `test_technique_annexx`
--

-- --------------------------------------------------------

--
-- Structure de la table `gardes_meubles`
--

CREATE TABLE `gardes_meubles` (
  `id` int(11) NOT NULL,
  `Nom` varchar(60) NOT NULL,
  `Rue` varchar(50) NOT NULL,
  `CodePostale` varchar(40) NOT NULL,
  `Ville` varchar(40) NOT NULL,
  `ComplementAdresse` varchar(100) DEFAULT NULL,
  `Telephone` varchar(30) NOT NULL,
  `Horaires` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `gardes_meubles`
--

INSERT INTO `gardes_meubles` (`id`, `Nom`, `Rue`, `CodePostale`, `Ville`, `ComplementAdresse`, `Telephone`, `Horaires`) VALUES
(5, 'Garde Meubles Toulouse Université', '70 Rue Jacques Babinet', '31100', 'TOULOUSE', NULL, '05 34 60 31 10', 'Lun-Ven de 9h-12h30; 13h15-17h30, Sam 9h-13.'),
(6, 'Garde Meubles Toulouse Ouest', '4 Rue de Caulet', '31300', 'TOULOUSE', NULL, '05 34 55 19 18', 'Lun-Ven de 9h-12h30; 13h15-17h30, Sam 9h-13.'),
(7, 'Garde Meubles Toulouse Nord-Est', '243 Route d\'Albi', '31200', 'TOULOUSE', NULL, '05 61 11 03 53', 'Lun-Ven de 9h-12h30; 13h15-17h30, Sam 9h-13.'),
(8, 'Garde Meubles Toulouse Sud', '2 Avenue des Crêtes', '31520', 'RAMONVILLE', 'St AGNE', '05 62 19 19 79', 'Lun-Ven de 9h-12h30; 13h15-17h30, Sam 9h-13.');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `gardes_meubles`
--
ALTER TABLE `gardes_meubles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `gardes_meubles`
--
ALTER TABLE `gardes_meubles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
