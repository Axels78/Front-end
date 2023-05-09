-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 09 mai 2023 à 16:44
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `green_garden`
--

-- --------------------------------------------------------

--
-- Structure de la table `bon_de_livrai`
--

CREATE TABLE `bon_de_livrai` (
  `id_livrai` int(11) NOT NULL,
  `prix_tot` float DEFAULT NULL,
  `date_livrai` date DEFAULT NULL,
  `id_cde` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `catalogue`
--

CREATE TABLE `catalogue` (
  `id_catalogue` int(11) NOT NULL,
  `id_produit_c` int(11) NOT NULL,
  `lib_produit_court` char(1) DEFAULT NULL,
  `lib_prod_long` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id_client` int(11) NOT NULL,
  `cat_cli` char(1) DEFAULT NULL,
  `coeff_prix_cli` int(11) NOT NULL,
  `adresse_cli` char(1) DEFAULT NULL,
  `cp_cli` char(1) DEFAULT NULL,
  `ville_cli` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `commandes`
--

CREATE TABLE `commandes` (
  `id_cde` int(11) NOT NULL,
  `prix_cde` int(11) NOT NULL,
  `date_cde` date DEFAULT NULL,
  `date_livraison` date DEFAULT NULL,
  `id_cli_cde` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `employé`
--

CREATE TABLE `employé` (
  `id_employé` int(11) NOT NULL,
  `nom_employé` char(1) DEFAULT NULL,
  `prénom_employé` char(1) DEFAULT NULL,
  `id_servi_employ` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `facture`
--

CREATE TABLE `facture` (
  `id_facture` int(11) NOT NULL,
  `date_fact` date DEFAULT NULL,
  `date_paiement` date DEFAULT NULL,
  `ref_cde_fact` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `fournisseur`
--

CREATE TABLE `fournisseur` (
  `id_fourni` int(11) NOT NULL,
  `adres_fourni` char(1) DEFAULT NULL,
  `cp_fourni` char(1) DEFAULT NULL,
  `ville_fourni` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `id_produit` int(11) NOT NULL,
  `prix_produit` float NOT NULL,
  `stock_prod` int(11) DEFAULT NULL,
  `id_soc_fourni` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `bon_de_livrai`
--
ALTER TABLE `bon_de_livrai`
  ADD PRIMARY KEY (`id_livrai`),
  ADD KEY `id_cde` (`id_cde`);

--
-- Index pour la table `catalogue`
--
ALTER TABLE `catalogue`
  ADD PRIMARY KEY (`id_catalogue`),
  ADD KEY `id_produit_c` (`id_produit_c`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_client`);

--
-- Index pour la table `commandes`
--
ALTER TABLE `commandes`
  ADD PRIMARY KEY (`id_cde`),
  ADD KEY `fkidclicde` (`id_cli_cde`);

--
-- Index pour la table `employé`
--
ALTER TABLE `employé`
  ADD PRIMARY KEY (`id_employé`);

--
-- Index pour la table `facture`
--
ALTER TABLE `facture`
  ADD PRIMARY KEY (`id_facture`),
  ADD KEY `ref_cde_fact` (`ref_cde_fact`);

--
-- Index pour la table `fournisseur`
--
ALTER TABLE `fournisseur`
  ADD PRIMARY KEY (`id_fourni`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`id_produit`),
  ADD KEY `id_soc_fourni` (`id_soc_fourni`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `bon_de_livrai`
--
ALTER TABLE `bon_de_livrai`
  ADD CONSTRAINT `bon_de_livrai_ibfk_1` FOREIGN KEY (`id_cde`) REFERENCES `commandes` (`id_cde`);

--
-- Contraintes pour la table `catalogue`
--
ALTER TABLE `catalogue`
  ADD CONSTRAINT `catalogue_ibfk_1` FOREIGN KEY (`id_produit_c`) REFERENCES `produit` (`id_produit`);

--
-- Contraintes pour la table `commandes`
--
ALTER TABLE `commandes`
  ADD CONSTRAINT `fkidclicde` FOREIGN KEY (`id_cli_cde`) REFERENCES `client` (`id_client`);

--
-- Contraintes pour la table `facture`
--
ALTER TABLE `facture`
  ADD CONSTRAINT `facture_ibfk_1` FOREIGN KEY (`ref_cde_fact`) REFERENCES `commandes` (`id_cde`);

--
-- Contraintes pour la table `produit`
--
ALTER TABLE `produit`
  ADD CONSTRAINT `produit_ibfk_1` FOREIGN KEY (`id_soc_fourni`) REFERENCES `fournisseur` (`id_fourni`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
