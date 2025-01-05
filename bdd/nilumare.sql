-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : dim. 05 jan. 2025 à 18:57
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
('DoctrineMigrations\\Version20241118111430', '2024-11-18 11:14:33', 11),
('DoctrineMigrations\\Version20241124114722', '2024-11-24 11:47:29', 111),
('DoctrineMigrations\\Version20241124120823', '2024-11-24 12:08:28', 100),
('DoctrineMigrations\\Version20241124121358', '2024-11-24 12:14:00', 14),
('DoctrineMigrations\\Version20241124144220', '2024-11-24 14:42:26', 41),
('DoctrineMigrations\\Version20241124145113', '2024-11-24 14:51:17', 26),
('DoctrineMigrations\\Version20241124145704', '2024-11-24 14:57:08', 87),
('DoctrineMigrations\\Version20241124152705', '2024-11-24 15:27:11', 96),
('DoctrineMigrations\\Version20241124153224', '2024-11-24 15:32:27', 14),
('DoctrineMigrations\\Version20241124153914', '2024-11-24 15:39:21', 72),
('DoctrineMigrations\\Version20241124154507', '2024-11-24 15:45:16', 16),
('DoctrineMigrations\\Version20241124173655', '2024-11-24 17:36:57', 19),
('DoctrineMigrations\\Version20241205110033', '2024-12-05 11:00:40', 99),
('DoctrineMigrations\\Version20241205155640', '2024-12-05 15:56:45', 193),
('DoctrineMigrations\\Version20250105172825', '2025-01-05 17:28:36', 90),
('DoctrineMigrations\\Version20250105173906', '2025-01-05 17:39:11', 10);

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
(1, '2024-12-03 16:53:45', '2024-12-03 16:56:15', 'Les nénuphars : joyaux aquatiques pour sublimer vos mares', 'les-nenuphars-joyaux-aquatiques-pour-sublimer-vos-mares', 'Les nénuphars ajoutent une élégance naturelle à vos mares grâce à leurs fleurs colorées et leurs larges feuilles flottantes. En plus d’être esthétiques, ils contribuent à l’équilibre de l’écosystème en offrant un abri à la faune aquatique et en améliorant', '<p>Les n&eacute;nuphars ajoutent une &eacute;l&eacute;gance naturelle &agrave; vos mares gr&acirc;ce &agrave; leurs fleurs color&eacute;es et leurs larges feuilles flottantes. En plus d&rsquo;&ecirc;tre esth&eacute;tiques, ils contribuent &agrave; l&rsquo;&eacute;quilibre de l&rsquo;&eacute;cosyst&egrave;me en offrant un abri &agrave; la faune aquatique et en am&eacute;liorant la qualit&eacute; de l&rsquo;eau. Ces plantes, id&eacute;ales pour les mares &eacute;co-responsables, favorisent la biodiversit&eacute; tout en cr&eacute;ant un cadre apaisant et harmonieux.</p>', 'rectangle-10-1733244904.jpg', 1, 'rectangle-10-1733244904.jpg', 'rectangle-10-1733244904.jpg', 1),
(2, '2024-12-03 16:57:12', NULL, 'Les nénuphars : joyaux aquatiques pour sublimer vos mares', 'les-nenuphars-joyaux-aquatiques-pour-sublimer-vos-mares', 'Les nénuphars ajoutent une élégance naturelle à vos mares grâce à leurs fleurs colorées et leurs larges feuilles flottantes. En plus d’être esthétiques, ils contribuent à l’équilibre de l’écosystème en offrant un abri à la faune aquatique et en améliorant', '<p>Les n&eacute;nuphars ajoutent une &eacute;l&eacute;gance naturelle &agrave; vos mares gr&acirc;ce &agrave; leurs fleurs color&eacute;es et leurs larges feuilles flottantes. En plus d&rsquo;&ecirc;tre esth&eacute;tiques, ils contribuent &agrave; l&rsquo;&eacute;quilibre de l&rsquo;&eacute;cosyst&egrave;me en offrant un abri &agrave; la faune aquatique et en am&eacute;liorant la qualit&eacute; de l&rsquo;eau. Ces plantes, id&eacute;ales pour les mares &eacute;co-responsables, favorisent la biodiversit&eacute; tout en cr&eacute;ant un cadre apaisant et harmonieux.</p>', 'rectangle-11-1733245032.jpg', 1, 'rectangle-11-1733245032.jpg', 'rectangle-11-1733245032.jpg', 2),
(3, '2024-12-03 16:57:59', NULL, 'Les nénuphars : joyaux aquatiques pour sublimer vos mares', 'les-nenuphars-joyaux-aquatiques-pour-sublimer-vos-mares', 'Les nénuphars ajoutent une élégance naturelle à vos mares grâce à leurs fleurs colorées et leurs larges feuilles flottantes. En plus d’être esthétiques, ils contribuent à l’équilibre de l’écosystème en offrant un abri à la faune aquatique et en améliorant', '<p>Les n&eacute;nuphars ajoutent une &eacute;l&eacute;gance naturelle &agrave; vos mares gr&acirc;ce &agrave; leurs fleurs color&eacute;es et leurs larges feuilles flottantes. En plus d&rsquo;&ecirc;tre esth&eacute;tiques, ils contribuent &agrave; l&rsquo;&eacute;quilibre de l&rsquo;&eacute;cosyst&egrave;me en offrant un abri &agrave; la faune aquatique et en am&eacute;liorant la qualit&eacute; de l&rsquo;eau. Ces plantes, id&eacute;ales pour les mares &eacute;co-responsables, favorisent la biodiversit&eacute; tout en cr&eacute;ant un cadre apaisant et harmonieux.</p>', 'rectangle-12-1733245079.jpg', 1, 'rectangle-12-1733245079.jpg', 'rectangle-12-1733245079.jpg', 3),
(4, '2024-12-03 16:58:43', NULL, 'Les nénuphars : joyaux aquatiques pour sublimer vos mares', 'les-nenuphars-joyaux-aquatiques-pour-sublimer-vos-mares', 'Les nénuphars ajoutent une élégance naturelle à vos mares grâce à leurs fleurs colorées et leurs larges feuilles flottantes. En plus d’être esthétiques, ils contribuent à l’équilibre de l’écosystème en offrant un abri à la faune aquatique et en améliorant', '<p>Les n&eacute;nuphars ajoutent une &eacute;l&eacute;gance naturelle &agrave; vos mares gr&acirc;ce &agrave; leurs fleurs color&eacute;es et leurs larges feuilles flottantes. En plus d&rsquo;&ecirc;tre esth&eacute;tiques, ils contribuent &agrave; l&rsquo;&eacute;quilibre de l&rsquo;&eacute;cosyst&egrave;me en offrant un abri &agrave; la faune aquatique et en am&eacute;liorant la qualit&eacute; de l&rsquo;eau. Ces plantes, id&eacute;ales pour les mares &eacute;co-responsables, favorisent la biodiversit&eacute; tout en cr&eacute;ant un cadre apaisant et harmonieux.</p>', 'rectangle-13-1733245123.jpg', 1, 'rectangle-13-1733245123.jpg', 'rectangle-13-1733245123.jpg', 3);

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
-- Structure de la table `planteimage`
--

DROP TABLE IF EXISTS `planteimage`;
CREATE TABLE IF NOT EXISTS `planteimage` (
  `id` int NOT NULL AUTO_INCREMENT,
  `plante_id` int NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Contraintes pour la table `mares`
--
ALTER TABLE `mares`
  ADD CONSTRAINT `FK_A2E9D7DD5927A2C6` FOREIGN KEY (`marescategorie_id`) REFERENCES `marescategorie` (`id`);

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
