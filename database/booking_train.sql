-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 26 mars 2022 à 23:52
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `booking_train`
--

-- --------------------------------------------------------

--
-- Structure de la table `booking`
--

CREATE TABLE `booking` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `booking_time` varchar(150) NOT NULL,
  `depart_city` varchar(40) NOT NULL,
  `arrive_city` varchar(40) NOT NULL,
  `during_time` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `depart_time` varchar(20) NOT NULL,
  `arrive_time` varchar(20) NOT NULL,
  `user_id` varchar(10) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `phone_number` varchar(60) NOT NULL,
  `id_trip` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `booking`
--

INSERT INTO `booking` (`id`, `email`, `full_name`, `booking_time`, `depart_city`, `arrive_city`, `during_time`, `date`, `depart_time`, `arrive_time`, `user_id`, `price`, `phone_number`, `id_trip`) VALUES
(58, 'reda', 'laghrissi', '2022-03-17 09:35', 'marrakech', 'safi', '00:00', '2022-03-24', '00:08', '01:08', 'none', 34, '045657567567', 17),
(60, 'reda', 'reda@gmail.com', '2022-03-17 09:46', 'marrakech', 'safi', '00:00', '2022-03-24', '00:08', '01:08', '19', 34, '56756768', 17),
(61, 'reda', 'reda@gmail.com', '2022-03-17 11:26', 'marrakech', 'safi', '00:00', '2022-03-24', '00:08', '01:08', '19', 34, '5464556', 17),
(63, 'reda', 'reda@gmail.com', '2022-03-20 10:17', 'marrakech', 'safi', '00:00', '2022-03-24', '00:08', '01:08', '19', 34, '43646757', 17);

-- --------------------------------------------------------

--
-- Structure de la table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `city` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `cities`
--

INSERT INTO `cities` (`id`, `city`) VALUES
(1, 'marrakech'),
(3, 'casablanca'),
(5, 'safi'),
(6, 'rabat');

-- --------------------------------------------------------

--
-- Structure de la table `trip`
--

CREATE TABLE `trip` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `depart_time` varchar(50) NOT NULL,
  `arrive_time` varchar(50) NOT NULL,
  `during_time` varchar(50) NOT NULL,
  `depart_city` varchar(50) NOT NULL,
  `arrive_city` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `place_number` int(11) NOT NULL,
  `available` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `trip`
--

INSERT INTO `trip` (`id`, `date`, `depart_time`, `arrive_time`, `during_time`, `depart_city`, `arrive_city`, `price`, `place_number`, `available`) VALUES
(10, '2022-03-09', '14:53', '', '00:00', 'marrakech', 'casablanca', 34, 34, 'true'),
(11, '2022-03-10', '13:41', '', '00:00', 'marrakech', 'safi', 21, 5, 'false'),
(12, '2022-03-10', '13:41', '', '00:00', 'marrakech', 'safi', 21, 5, 'false'),
(13, '2022-03-31', '16:43', '', '00:00', 'marrakech', 'rabat', 43, 23, ''),
(14, '2022-03-17', '18:40', '', '00:00', 'rabat', 'marrakech', 400, 30, ''),
(15, '2022-03-17', '00:08', '01:08', '00:00', 'marrakech', 'safi', 34, 20, ''),
(16, '2022-04-01', '21:13', '00:09', '00:00', 'marrakech', 'rabat', 234, 32, ''),
(17, '2022-03-24', '00:08', '01:08', '00:00', 'marrakech', 'safi', 34, 20, '');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `role` int(11) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `role`, `full_name`, `email`, `password`) VALUES
(18, 1, 'Admin', 'admin@admin.com', 'admin'),
(19, 0, 'reda', 'reda@gmail.com', '1234'),
(20, 0, 'test', 'test@test.com', '1234');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `trip`
--
ALTER TABLE `trip`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT pour la table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `trip`
--
ALTER TABLE `trip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
