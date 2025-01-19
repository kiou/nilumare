-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : dim. 19 jan. 2025 à 17:02
-- Version du serveur : 9.1.0
-- Version de PHP : 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `nilumare`
--

-- --------------------------------------------------------

--
-- Structure de la table `actualites`
--

DROP TABLE IF EXISTS `actualites`;
CREATE TABLE IF NOT EXISTS `actualites` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `changed` datetime DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `resume` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `actualites`
--

INSERT INTO `actualites` (`id`, `created`, `changed`, `title`, `slug`, `resume`, `content`, `image`, `is_active`) VALUES
(1, '2024-12-05 16:37:27', NULL, 'Titre de l’article de blog deux lignes si besoin', 'titre-de-larticle-de-blog-deux-lignes-si-besoin', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras diam dui, semper maximus sapien a, vehicula porta nunc.', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras diam dui, semper maximus sapien a, vehicula porta nunc.</p>', 'rectangle-12-1733418174-1736084994.jpg', 1),
(2, '2024-12-05 16:37:54', NULL, 'Titre de l’article de blog deux lignes si besoin', 'titre-de-larticle-de-blog-deux-lignes-si-besoin', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras diam dui, semper maximus sapien a, vehicula porta nunc.', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras diam dui, semper maximus sapien a, vehicula porta nunc.</p>', 'rectangle-7-2-1733418117-1736084989.jpg', 1),
(3, '2024-12-05 16:38:12', NULL, 'Titre de l’article de blog deux lignes si besoin', 'titre-de-larticle-de-blog-deux-lignes-si-besoin', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras diam dui, semper maximus sapien a, vehicula porta nunc.', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras diam dui, semper maximus sapien a, vehicula porta nunc.</p>', 'rectangle-7-3-1733418110-1736084983.jpg', 1),
(4, '2024-12-05 16:38:23', NULL, 'Titre de l’article de blog deux lignes si besoin', 'titre-de-larticle-de-blog-deux-lignes-si-besoin', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras diam dui, semper maximus sapien a, vehicula porta nunc.', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras diam dui, semper maximus sapien a, vehicula porta nunc.</p>', 'rectangle-7-4-1733418102-1736084978.jpg', 1),
(5, '2024-12-05 16:38:38', NULL, 'Titre de l’article de blog deux lignes si besoin', 'titre-de-larticle-de-blog-deux-lignes-si-besoin', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras diam dui, semper maximus sapien a, vehicula porta nunc.', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras diam dui, semper maximus sapien a, vehicula porta nunc.</p>', 'rectangle-7-1733418092-1736084969.jpg', 1);

-- --------------------------------------------------------

--
-- Structure de la table `avant`
--

DROP TABLE IF EXISTS `avant`;
CREATE TABLE IF NOT EXISTS `avant` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `changed` datetime DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `avant`
--

INSERT INTO `avant` (`id`, `created`, `changed`, `title`, `image`, `is_active`, `link`, `linkname`) VALUES
(1, '2024-12-05 11:08:54', NULL, 'Engagez-vous pour des mares éco-responsables', 'f7c84a1d57943cb659b1864ef56566a1-1733396934.jpg', 1, 'https://lucpinelli.fr/', 'En savoir plus');

-- --------------------------------------------------------

--
-- Structure de la table `block`
--

DROP TABLE IF EXISTS `block`;
CREATE TABLE IF NOT EXISTS `block` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `changed` datetime DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20250112160628', '2025-01-12 16:06:34', 76),
('DoctrineMigrations\\Version20250119145519', '2025-01-19 14:55:24', 69),
('DoctrineMigrations\\Version20250119153922', '2025-01-19 15:39:26', 70);

-- --------------------------------------------------------

--
-- Structure de la table `headers`
--

DROP TABLE IF EXISTS `headers`;
CREATE TABLE IF NOT EXISTS `headers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `changed` datetime DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resume` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `headers`
--

INSERT INTO `headers` (`id`, `created`, `changed`, `title`, `image`, `is_active`, `link`, `resume`) VALUES
(1, '2024-11-25 17:42:43', NULL, 'Harmonie naturelle :  des mares éco-responsables pour sublimer votre jardin !', 'rectangle-1-1732556563.jpg', 1, 'https://opalcollection.net/en/', 'Grâce à notre expertise, nous réalisons des écosystèmes qui allient beauté et préservation de l’environnement, tout en répondant aux attentes spécifiques de nos clients.');

-- --------------------------------------------------------

--
-- Structure de la table `legende`
--

DROP TABLE IF EXISTS `legende`;
CREATE TABLE IF NOT EXISTS `legende` (
  `id` int NOT NULL AUTO_INCREMENT,
  `mare_id` int NOT NULL,
  `created` datetime NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `resume` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_D0A91634A24F8618` (`mare_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `legende`
--

INSERT INTO `legende` (`id`, `mare_id`, `created`, `title`, `url`, `resume`) VALUES
(1, 4, '2025-01-12 10:37:37', 'Le nénuphar', '6c9679fa16ffa68f6e5f6fe77c86f1ae-1736696125.jpg', '(Nymphaea), qui offre un abri pour les animaux aquatiques et contribue à l’oxygénation de l’eau.'),
(2, 4, '2025-01-12 10:57:39', 'La massette', '6c9679fa16ffa68f6e5f6fe77c86f1ae-1736696126.jpg', '(Typha), une plante émergente qui favorise la filtration naturelle de l’eau.'),
(3, 4, '2025-01-12 10:57:59', 'Le jonc épars', '6c9679fa16ffa68f6e5f6fe77c86f1ae-1736696126.jpg', '(Juncus effusus), qui aide à stabiliser les berges et à prévenir l’érosion.');

-- --------------------------------------------------------

--
-- Structure de la table `logo`
--

DROP TABLE IF EXISTS `logo`;
CREATE TABLE IF NOT EXISTS `logo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `changed` datetime DEFAULT NULL,
  `logoheader` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logofooter` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `logo`
--

INSERT INTO `logo` (`id`, `created`, `changed`, `logoheader`, `logofooter`, `facebook`, `instagram`, `linkedin`) VALUES
(2, '2024-11-25 17:18:26', '2024-12-08 08:34:12', 'logo-1733646852.png', 'logo-1733646727.png', 'http://127.0.0.1:8000/', 'http://127.0.0.1:8000/', 'http://127.0.0.1:8000/');

-- --------------------------------------------------------

--
-- Structure de la table `mares`
--

DROP TABLE IF EXISTS `mares`;
CREATE TABLE IF NOT EXISTS `mares` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `changed` datetime DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `resume` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `imageavant` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imageapres` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marescategorie_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_A2E9D7DD5927A2C6` (`marescategorie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `mares`
--

INSERT INTO `mares` (`id`, `created`, `changed`, `title`, `slug`, `resume`, `content`, `imageavant`, `is_active`, `image`, `imageapres`, `marescategorie_id`) VALUES
(1, '2024-12-03 16:53:45', '2025-01-11 13:24:19', 'Les nénuphars : joyaux aquatiques pour sublimer vos mares', 'les-nenuphars-joyaux-aquatiques-pour-sublimer-vos-mares', 'Les nénuphars ajoutent une élégance naturelle à vos mares grâce à leurs fleurs colorées et leurs larges feuilles flottantes. En plus d’être esthétiques, ils contribuent à l’équilibre de l’écosystème en offrant un abri à la faune aquatique et en améliorant', '<p>Les n&eacute;nuphars ajoutent une &eacute;l&eacute;gance naturelle &agrave; vos mares gr&acirc;ce &agrave; leurs fleurs color&eacute;es et leurs larges feuilles flottantes. En plus d&rsquo;&ecirc;tre esth&eacute;tiques, ils contribuent &agrave; l&rsquo;&eacute;quilibre de l&rsquo;&eacute;cosyst&egrave;me en offrant un abri &agrave; la faune aquatique et en am&eacute;liorant la qualit&eacute; de l&rsquo;eau. Ces plantes, id&eacute;ales pour les mares &eacute;co-responsables, favorisent la biodiversit&eacute; tout en cr&eacute;ant un cadre apaisant et harmonieux.</p>', 'tata-1736601858.jpg', 1, 'rectangle-10-1733244904-1736601788.jpg', 'rectangle-11-1733245032-1736601858.jpg', 1),
(2, '2024-12-03 16:57:12', '2025-01-11 13:24:06', 'Les nénuphars : joyaux aquatiques pour sublimer vos mares', 'les-nenuphars-joyaux-aquatiques-pour-sublimer-vos-mares', 'Les nénuphars ajoutent une élégance naturelle à vos mares grâce à leurs fleurs colorées et leurs larges feuilles flottantes. En plus d’être esthétiques, ils contribuent à l’équilibre de l’écosystème en offrant un abri à la faune aquatique et en améliorant', '<p>Les n&eacute;nuphars ajoutent une &eacute;l&eacute;gance naturelle &agrave; vos mares gr&acirc;ce &agrave; leurs fleurs color&eacute;es et leurs larges feuilles flottantes. En plus d&rsquo;&ecirc;tre esth&eacute;tiques, ils contribuent &agrave; l&rsquo;&eacute;quilibre de l&rsquo;&eacute;cosyst&egrave;me en offrant un abri &agrave; la faune aquatique et en am&eacute;liorant la qualit&eacute; de l&rsquo;eau. Ces plantes, id&eacute;ales pour les mares &eacute;co-responsables, favorisent la biodiversit&eacute; tout en cr&eacute;ant un cadre apaisant et harmonieux.</p>', 'tata-1736601846.jpg', 1, 'rectangle-11-1733245032-1736601761.jpg', 'rectangle-10-1733244904-1736601846.jpg', 2),
(3, '2024-12-03 16:57:59', '2025-01-11 13:23:49', 'Les nénuphars : joyaux aquatiques pour sublimer vos mares', 'les-nenuphars-joyaux-aquatiques-pour-sublimer-vos-mares', 'Les nénuphars ajoutent une élégance naturelle à vos mares grâce à leurs fleurs colorées et leurs larges feuilles flottantes. En plus d’être esthétiques, ils contribuent à l’équilibre de l’écosystème en offrant un abri à la faune aquatique et en améliorant', '<p>Les n&eacute;nuphars ajoutent une &eacute;l&eacute;gance naturelle &agrave; vos mares gr&acirc;ce &agrave; leurs fleurs color&eacute;es et leurs larges feuilles flottantes. En plus d&rsquo;&ecirc;tre esth&eacute;tiques, ils contribuent &agrave; l&rsquo;&eacute;quilibre de l&rsquo;&eacute;cosyst&egrave;me en offrant un abri &agrave; la faune aquatique et en am&eacute;liorant la qualit&eacute; de l&rsquo;eau. Ces plantes, id&eacute;ales pour les mares &eacute;co-responsables, favorisent la biodiversit&eacute; tout en cr&eacute;ant un cadre apaisant et harmonieux.</p>', 'rectangle-10-1733244904-1736601828.jpg', 1, 'tata-1736601741.jpg', 'rectangle-11-1733245032-1736601828.jpg', 3),
(4, '2024-12-03 16:58:43', '2025-01-12 16:30:00', 'Les nénuphars : joyaux aquatiques pour sublimer vos mares', 'les-nenuphars-joyaux-aquatiques-pour-sublimer-vos-mares', 'Les nénuphars ajoutent une élégance naturelle à vos mares grâce à leurs fleurs colorées et leurs larges feuilles flottantes. En plus d’être esthétiques, ils contribuent à l’équilibre de l’écosystème en offrant un abri à la faune aquatique et en améliorant', '<p>Les n&eacute;nuphars ajoutent une &eacute;l&eacute;gance naturelle &agrave; vos mares gr&acirc;ce &agrave; leurs fleurs color&eacute;es et leurs larges feuilles flottantes. En plus d&rsquo;&ecirc;tre esth&eacute;tiques, ils contribuent &agrave; l&rsquo;&eacute;quilibre de l&rsquo;&eacute;cosyst&egrave;me en offrant un abri &agrave; la faune aquatique et en am&eacute;liorant la qualit&eacute; de l&rsquo;eau. Ces plantes, id&eacute;ales pour les mares &eacute;co-responsables, favorisent la biodiversit&eacute; tout en cr&eacute;ant un cadre apaisant et harmonieux.</p>', 'rectangle-12-1733245079-1736601240.jpg', 1, 'tata-1736601621.jpg', 'tata-1736601640.jpg', 3);

-- --------------------------------------------------------

--
-- Structure de la table `marescategorie`
--

DROP TABLE IF EXISTS `marescategorie`;
CREATE TABLE IF NOT EXISTS `marescategorie` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `changed` datetime DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `marescategorie`
--

INSERT INTO `marescategorie` (`id`, `created`, `changed`, `name`) VALUES
(1, '2024-11-24 15:41:00', NULL, 'Type de marre'),
(2, '2024-11-24 15:41:00', NULL, 'Type de marre'),
(3, '2024-11-24 15:41:05', NULL, 'Type de marre'),
(4, '2024-11-24 15:41:05', NULL, 'Type de marre'),
(5, '2024-11-24 15:41:14', NULL, 'Type de marre');

-- --------------------------------------------------------

--
-- Structure de la table `mares_plantes`
--

DROP TABLE IF EXISTS `mares_plantes`;
CREATE TABLE IF NOT EXISTS `mares_plantes` (
  `mares_id` int NOT NULL,
  `plantes_id` int NOT NULL,
  PRIMARY KEY (`mares_id`,`plantes_id`),
  KEY `IDX_4F7F5896F4BF6AF5` (`mares_id`),
  KEY `IDX_4F7F589649B7AC79` (`plantes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `mares_plantes`
--

INSERT INTO `mares_plantes` (`mares_id`, `plantes_id`) VALUES
(4, 1),
(4, 3),
(4, 4),
(4, 5);

-- --------------------------------------------------------

--
-- Structure de la table `planteimage`
--

DROP TABLE IF EXISTS `planteimage`;
CREATE TABLE IF NOT EXISTS `planteimage` (
  `id` int NOT NULL AUTO_INCREMENT,
  `plante_id` int NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_9306B91C177B16E8` (`plante_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `planteimage`
--

INSERT INTO `planteimage` (`id`, `plante_id`, `url`, `created`) VALUES
(1, 5, 'rectangle-12-1733418174-1736098596.jpg', '2025-01-05 17:36:36'),
(3, 5, 'rectangle-7-2-1733418117-1736098610.jpg', '2025-01-05 17:36:49'),
(4, 5, 'rectangle-7-3-1733418110-1736099445.jpg', '2025-01-05 17:50:45'),
(6, 3, 'rectangle-7-1733418092-1736102315.jpg', '2025-01-05 18:38:35'),
(7, 3, 'rectangle-12-1733418174-1736102316.jpg', '2025-01-05 18:38:35'),
(8, 2, 'rectangle-12-1733418174-1736102326.jpg', '2025-01-05 18:38:46'),
(9, 2, 'rectangle-7-2-1733418117-1736102327.jpg', '2025-01-05 18:38:46'),
(10, 1, 'rectangle-7-3-1733418110-1736102334.jpg', '2025-01-05 18:38:53'),
(11, 4, 'aaaaaa-1732636734-1736102401.jpg', '2025-01-05 18:40:01');

-- --------------------------------------------------------

--
-- Structure de la table `plantes`
--

DROP TABLE IF EXISTS `plantes`;
CREATE TABLE IF NOT EXISTS `plantes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `changed` datetime DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `resume` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plantescategorie_id` int NOT NULL,
  `stock` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_F3E76151F03451E1` (`plantescategorie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `plantes`
--

INSERT INTO `plantes` (`id`, `created`, `changed`, `title`, `slug`, `resume`, `content`, `is_active`, `image`, `plantescategorie_id`, `stock`) VALUES
(1, '2024-11-26 15:25:24', '2025-01-05 17:41:17', 'Titre de la plante', 'titre-de-la-plante', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras diam dui, semper maximus sapien a, vehicula porta nunc.', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras diam dui, semper maximus sapien a, vehicula porta nunc.</p>', 1, 'rectangle-7-1732635869.jpg', 1, 1),
(2, '2024-11-26 15:45:02', '2025-01-05 17:41:18', 'Titre de la plante', 'titre-de-la-plante', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras diam dui, semper maximus sapien a, vehicula porta nunc.dsq dqsdqs', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras diam dui, semper maximus sapien a, vehicula porta nunc.</p>', 1, 'rectangle-7-1-1732635902.jpg', 2, 0),
(3, '2024-11-26 15:46:23', '2025-01-05 17:41:18', 'Titre de la plante', 'titre-de-la-plante', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras diam dui, semper maximus sapien a, vehicula porta nunc.', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras diam dui, semper maximus sapien a, vehicula porta nunc.</p>', 1, 'rectangle-7-4-1733418102-1736098415.jpg', 4, 0),
(4, '2024-11-26 15:58:54', '2025-01-05 17:41:19', 'Titre de la plante', 'titre-de-la-plante', 'Lorem ipsum dolor sit amet, consectetur  adipiscing elit. Cras diam dui, semper maximus sapien a, vehicula porta nunc.', '<p>Lorem ipsum dolor sit amet, consectetur &nbsp;adipiscing elit. Cras diam dui, semper maximus sapien a, vehicula porta nunc.</p>', 1, 'aaaaaa-1732636734.jpg', 4, 0),
(5, '2024-12-29 18:19:23', '2025-01-05 18:11:23', 'Titre de la plante', 'titre-de-la-plante', 'Lorem ipsum dolor sit amet, consectetur  adipiscing elit. Cras diam dui, semper maximus sapien a, vehicula porta nunc.', '<p>Le Nymphaea alba, commun&eacute;ment appel&eacute; n&eacute;nuphar blanc, est une plante aquatique majestueuse et embl&eacute;matique des milieux humides europ&eacute;ens.</p>\r\n\r\n<p>Elle est largement r&eacute;pandue dans les mares, &eacute;tangs, lacs et rivi&egrave;res tranquilles, o&ugrave; elle apporte une touche esth&eacute;tique unique et un &eacute;quilibre &eacute;cologique.</p>\r\n\r\n<p>Ses grandes fleurs blanches flottantes, souvent consid&eacute;r&eacute;es comme symboles de puret&eacute; et de calme, &eacute;mergent directement de la surface de l&rsquo;eau, cr&eacute;ant un spectacle visuel captivant tout au long de l&rsquo;&eacute;t&eacute;.</p>', 1, 'aaaa-1735496363.jpg', 5, 1);

-- --------------------------------------------------------

--
-- Structure de la table `plantescategorie`
--

DROP TABLE IF EXISTS `plantescategorie`;
CREATE TABLE IF NOT EXISTS `plantescategorie` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `changed` datetime DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `plantescategorie`
--

INSERT INTO `plantescategorie` (`id`, `created`, `changed`, `name`) VALUES
(1, '2024-11-24 15:08:52', NULL, 'Esthétique'),
(2, '2024-11-24 15:09:07', NULL, 'Bruit de l’eau'),
(3, '2024-11-24 15:09:07', NULL, 'Jardin'),
(4, '2024-11-24 15:09:26', NULL, 'Biodiversité'),
(5, '2024-11-24 15:09:26', NULL, 'Lutte contre les moustiques');

-- --------------------------------------------------------

--
-- Structure de la table `pourquois`
--

DROP TABLE IF EXISTS `pourquois`;
CREATE TABLE IF NOT EXISTS `pourquois` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `changed` datetime DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_accueil` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `pourquois`
--

INSERT INTO `pourquois` (`id`, `created`, `changed`, `title`, `image`, `content`, `is_active`, `is_accueil`) VALUES
(1, '2025-01-19 15:44:29', '2025-01-19 16:26:26', 'Une mare au cœur du jardin :  un écosystème vivant et esthétique', 'aaaa-1737301496.jpg', '<p>Int&eacute;grer une mare &eacute;cologique dans votre jardin transforme celui-ci en un espace vivant et dynamique.<br />\r\n<br />\r\nNon seulement elle ajoute une touche naturelle et apaisante, mais elle devient aussi un v&eacute;ritable point focal, o&ugrave; la flore et la faune cohabitent harmonieusement. Les plantes aquatiques se m&ecirc;lent aux v&eacute;g&eacute;taux traditionnels, cr&eacute;ant une transition douce entre les zones s&egrave;ches et humides du jardin.<br />\r\n<br />\r\nCet am&eacute;nagement encourage un jardinage plus respectueux de l&rsquo;environnement, tout en offrant un cadre visuellement riche et en constante &eacute;volution, invitant &agrave; l&rsquo;observation et &agrave; la d&eacute;couverte.</p>', 1, 0),
(2, '2025-01-19 16:23:57', NULL, 'Le murmure apaisant de l’eau :  une symphonie naturelle pour  votre espace', 'bbbbbbb-1737303837.jpg', '<p>Le doux bruit de l&rsquo;eau qui s&rsquo;&eacute;coule d&rsquo;une mare &eacute;cologique apporte une atmosph&egrave;re sereine et apaisante &agrave; votre espace ext&eacute;rieur.<br />\r\n<br />\r\nCe murmure constant cr&eacute;e un fond sonore relaxant qui aide &agrave; masquer les bruits environnants, favorisant ainsi une v&eacute;ritable parenth&egrave;se de tranquillit&eacute;. En plus d&rsquo;&ecirc;tre agr&eacute;able pour l&rsquo;oreille, le bruit de l&rsquo;eau a des effets b&eacute;n&eacute;fiques sur le bien-&ecirc;tre mental, r&eacute;duisant le stress et invitant &agrave; la d&eacute;tente.<br />\r\n<br />\r\nIl devient une v&eacute;ritable symphonie naturelle, parfaitement int&eacute;gr&eacute;e &agrave; l&rsquo;environnement, tout en renfor&ccedil;ant l&rsquo;harmonie du lieu.</p>', 1, 0),
(3, '2025-01-19 16:24:39', NULL, 'Une mare au cœur du jardin :  un écosystème vivant et esthétique', 'vvvvvvvv-1737303879.jpg', '<p>Int&eacute;grer une mare &eacute;cologique dans votre jardin transforme celui-ci en un espace vivant et dynamique.<br />\r\n<br />\r\nNon seulement elle ajoute une touche naturelle et apaisante, mais elle devient aussi un v&eacute;ritable point focal, o&ugrave; la flore et la faune cohabitent harmonieusement. Les plantes aquatiques se m&ecirc;lent aux v&eacute;g&eacute;taux traditionnels, cr&eacute;ant une transition douce entre les zones s&egrave;ches et humides du jardin.<br />\r\n<br />\r\nCet am&eacute;nagement encourage un jardinage plus respectueux de l&rsquo;environnement, tout en offrant un cadre visuellement riche et en constante &eacute;volution, invitant &agrave; l&rsquo;observation et &agrave; la d&eacute;couverte.</p>', 1, 0),
(4, '2025-01-19 16:25:32', '2025-01-19 16:26:30', 'Biodiversité florissante : un refuge naturel pour la faune et la flore', 'ssssssss-1737303932.jpg', '<p>Une mare &eacute;cologique joue un r&ocirc;le essentiel dans la promotion de la biodiversit&eacute;. V&eacute;ritable oasis pour de nombreuses esp&egrave;ces, elle attire une grande vari&eacute;t&eacute; d&rsquo;insectes, d&rsquo;amphibiens, d&rsquo;oiseaux et de petits animaux, tout en favorisant la croissance de plantes indig&egrave;nes.<br />\r\n<br />\r\nCe micro-habitat cr&eacute;e un &eacute;cosyst&egrave;me &eacute;quilibr&eacute;, o&ugrave; chaque esp&egrave;ce trouve sa place et participe &agrave; la vitalit&eacute; de l&rsquo;ensemble. En offrant un refuge s&ucirc;r et des ressources naturelles, la mare &eacute;cologique devient un &eacute;l&eacute;ment cl&eacute; pour pr&eacute;server la biodiversit&eacute; locale, contribuant ainsi &agrave; la sant&eacute; de l&rsquo;environnement global.</p>', 1, 1),
(5, '2025-01-19 16:26:12', NULL, 'Biodiversité florissante : un refuge naturel pour la faune et la flore', 'fggggggg-1737303972.jpg', '<p>Une mare &eacute;cologique joue un r&ocirc;le essentiel dans la promotion de la biodiversit&eacute;. V&eacute;ritable oasis pour de nombreuses esp&egrave;ces, elle attire une grande vari&eacute;t&eacute; d&rsquo;insectes, d&rsquo;amphibiens, d&rsquo;oiseaux et de petits animaux, tout en favorisant la croissance de plantes indig&egrave;nes.<br />\r\n<br />\r\nCe micro-habitat cr&eacute;e un &eacute;cosyst&egrave;me &eacute;quilibr&eacute;, o&ugrave; chaque esp&egrave;ce trouve sa place et participe &agrave; la vitalit&eacute; de l&rsquo;ensemble. En offrant un refuge s&ucirc;r et des ressources naturelles, la mare &eacute;cologique devient un &eacute;l&eacute;ment cl&eacute; pour pr&eacute;server la biodiversit&eacute; locale, contribuant ainsi &agrave; la sant&eacute; de l&rsquo;environnement global.</p>', 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `propos`
--

DROP TABLE IF EXISTS `propos`;
CREATE TABLE IF NOT EXISTS `propos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `changed` datetime DEFAULT NULL,
  `contenuaccueil` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `titirepage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contenupage` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `propos`
--

INSERT INTO `propos` (`id`, `created`, `changed`, `contenuaccueil`, `titirepage`, `contenupage`) VALUES
(1, '2025-01-19 15:02:49', '2025-01-19 16:33:37', '<h3>A poropos de Nilumare</h3>\r\n\r\n<p>Maecenas vitae enim massa. Etiam consectetur tempor aliquam. Donec ultricies turpis non ex sodales, quis auctor ex dictum. Aenean eget orci libero. Vivamus auctor suscipit ante sed consequat. Fusce non felis quis purus rhoncus luctus. Mauris et turpis mattis, faucibus eros vel, venenatis tortor. Ut vel metus sit amet est pellentesque eleifend. Donec non libero facilisis, efficitur nisi ac, egestas ipsum.</p>\r\n\r\n<p>Donec sit amet mauris feugiat, elementum est vel, sagittis massa. Vestibulum massa mi, posuere nec facilisis ut, vestibulum in arcu. Sed lobortis eu ante sed eleifend. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce placerat turpis sit amet quam sollicitudin, id egestas mi venenatis. Nulla eget dolor dolor. Suspendisse tempor felis dignissim metus iaculis, quis convallis lorem imperdiet. Suspendisse vestibulum bibendum massa, id iaculis lacus condimentum nec.</p>\r\n\r\n<p>Cras vel dui tortor. Fusce ac congue arc</p>', 'A poropos de Nilumare', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus lacinia gravida elementum. In in neque hendrerit nunc ultrices interdum id vitae lacus. Proin a libero eu quam imperdiet porta vitae eu nisi. Donec tincidunt a purus ut semper. Aliquam iaculis sapien eget condimentum mattis. Praesent eget nisl luctus, malesuada ante et, ornare nunc. Sed id purus sed tortor cursus tempus eu quis est. Duis finibus arcu a nisi elementum, vehicula rutrum nibh semper. Proin auctor, elit eget gravida aliquam, nibh mi tincidunt lectus, quis semper metus ligula pulvinar leo.</p>\r\n\r\n<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Ut convallis sed libero a tincidunt. Quisque quis erat eget leo pellentesque posuere. Phasellus ut justo mattis, iaculis ante vitae, tempor eros. Sed luctus facilisis fermentum. Donec rhoncus gravida ante, nec venenatis urna auctor eu. In ut odio purus. Aenean et erat maximus, interdum ante non, porta neque.</p>\r\n\r\n<p>Maecenas vitae enim massa. Etiam consectetur tempor aliquam. Donec ultricies turpis non ex sodales, quis auctor ex dictum. Aenean eget orci libero. Vivamus auctor suscipit ante sed consequat. Fusce non felis quis purus rhoncus luctus. Mauris et turpis mattis, faucibus eros vel, venenatis tortor. Ut vel metus sit amet est pellentesque eleifend. Donec non libero facilisis, efficitur nisi ac, egestas ipsum.</p>\r\n\r\n<p>Donec sit amet mauris feugiat, elementum est vel, sagittis massa. Vestibulum massa mi, posuere nec facilisis ut, vestibulum in arcu. Sed lobortis eu ante sed eleifend. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce placerat turpis sit amet quam sollicitudin, id egestas mi venenatis. Nulla eget dolor dolor. Suspendisse tempor felis dignissim metus iaculis, quis convallis lorem imperdiet. Suspendisse vestibulum bibendum massa, id iaculis lacus condimentum nec.</p>\r\n\r\n<p>Cras vel dui tortor. Fusce ac congue arcu. Nunc pharetra erat at massa eleifend, vitae vulputate leo porttitor. Nulla scelerisque faucibus congue. Sed aliquet magna velit, a dapibus elit semper eu. Nam quis nisi tempus, rutrum turpis ac, euismod massa. Etiam ultrices, urna ac consectetur venenatis, ligula metus rutrum felis, eu gravida justo massa eget nulla. Aenean volutpat ultricies mi, ut convallis mi porta a. In hac habitasse platea dictumst.</p>');

-- --------------------------------------------------------

--
-- Structure de la table `statistiques`
--

DROP TABLE IF EXISTS `statistiques`;
CREATE TABLE IF NOT EXISTS `statistiques` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `changed` datetime DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `chiffre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contenu` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `statistiques`
--

INSERT INTO `statistiques` (`id`, `created`, `changed`, `title`, `chiffre`, `contenu`, `is_active`) VALUES
(1, '2024-12-05 10:32:45', '2024-12-05 10:34:35', 'D’amélioration de la biodiversité', '30 %', 'Augmentent significativement la diversité des espèces aquatiques et terrestres', 1),
(2, '2024-12-05 10:33:03', '2024-12-05 10:34:29', 'De réduction des besoins en entretien', '50 %', 'Grâce aux plantes adaptées, les mares demandent moins d’intervention humaine', 1),
(3, '2024-12-05 10:33:33', NULL, 'D’espèces indigènes', '80 %', 'La majorité des plantes utilisées dans les mares éco-responsables sont locales pour  favoriser l’écosystème', 1),
(4, '2024-12-05 10:33:49', '2024-12-05 10:43:19', 'De durabilité', '10 ans', 'Une mare bien conçue peut s’épanouir pendant une décennie, en offrant un environnement stable', 1);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(180) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `nom`, `prenom`, `roles`, `password`, `is_active`) VALUES
(1, 'pinelli.luc@outlook.fr', 'Pinelli', 'Luc', '[]', '$2y$13$X/hiM9W5NYgup2tKpezhvenhIrHl4dTSKeJYVdNS13iESaSrgRW6K', 1);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `legende`
--
ALTER TABLE `legende`
  ADD CONSTRAINT `FK_D0A91634A24F8618` FOREIGN KEY (`mare_id`) REFERENCES `mares` (`id`);

--
-- Contraintes pour la table `mares`
--
ALTER TABLE `mares`
  ADD CONSTRAINT `FK_A2E9D7DD5927A2C6` FOREIGN KEY (`marescategorie_id`) REFERENCES `marescategorie` (`id`);

--
-- Contraintes pour la table `mares_plantes`
--
ALTER TABLE `mares_plantes`
  ADD CONSTRAINT `FK_4F7F589649B7AC79` FOREIGN KEY (`plantes_id`) REFERENCES `plantes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_4F7F5896F4BF6AF5` FOREIGN KEY (`mares_id`) REFERENCES `mares` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `planteimage`
--
ALTER TABLE `planteimage`
  ADD CONSTRAINT `FK_9306B91C177B16E8` FOREIGN KEY (`plante_id`) REFERENCES `plantes` (`id`);

--
-- Contraintes pour la table `plantes`
--
ALTER TABLE `plantes`
  ADD CONSTRAINT `FK_F3E76151F03451E1` FOREIGN KEY (`plantescategorie_id`) REFERENCES `plantescategorie` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
