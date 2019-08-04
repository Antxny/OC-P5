-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 05, 2019 at 09:30 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog_p5`
--
CREATE DATABASE IF NOT EXISTS `blog_p5` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `blog_p5`;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `comment_date` datetime NOT NULL,
  `post_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `author`, `comment`, `comment_date`, `post_id`, `status`) VALUES
(1, 'John Doe', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo illo animi consequatur error ab eum eius exercitationem suscipit. Incidunt culpa saepe a laborum voluptatum laboriosam placeat possimus aspernatur recusandae inventore.', '2019-04-24 01:05:32', 6, 1),
(2, 'John Doe', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo illo animi consequatur error ab eum eius exercitationem suscipit. Incidunt culpa saepe a laborum voluptatum laboriosam placeat possimus aspernatur recusandae inventore.', '2019-04-24 01:05:44', 5, 1),
(3, 'John Doe', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo illo animi consequatur error ab eum eius exercitationem suscipit. Incidunt culpa saepe a laborum voluptatum laboriosam placeat possimus aspernatur recusandae inventore.', '2019-04-24 01:05:54', 4, 1),
(4, 'John Doe', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo illo animi consequatur error ab eum eius exercitationem suscipit. Incidunt culpa saepe a laborum voluptatum laboriosam placeat possimus aspernatur recusandae inventore.', '2019-04-24 01:06:20', 3, 1),
(5, 'John Doe', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo illo animi consequatur error ab eum eius exercitationem suscipit. Incidunt culpa saepe a laborum voluptatum laboriosam placeat possimus aspernatur recusandae inventore.', '2019-04-24 01:06:27', 2, 1),
(6, 'John Doe', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo illo animi consequatur error ab eum eius exercitationem suscipit. Incidunt culpa saepe a laborum voluptatum laboriosam placeat possimus aspernatur recusandae inventore.', '2019-04-24 01:06:37', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mails`
--

DROP TABLE IF EXISTS `mails`;
CREATE TABLE IF NOT EXISTS `mails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `sending_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `author` varchar(255) NOT NULL,
  `creation_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `author`, `creation_date`, `update_date`) VALUES
(1, 'Amazon lance un service gratuit de streaming musical pour son assistant alexa', 'RÃ©cemment, Google a intÃ©grÃ© YouTube Music gratuitement Ã  son enceinte Google Home, mais Amazon nâ€™a pas attendu trÃ¨s longtemps pour proposer son propre service sur toutes les enceintes connectÃ©es avec Alexa. Ce dernier donne la possibilitÃ© de lancer de la musique sur demande, sur nâ€™importe quelle enceinte Ã©quipÃ©e dâ€™Alexa, contrairement Ã  Google qui limite son service Ã  ses enceintes Home.\r\n\r\nUN SERVICE GRATUIT, MAIS LIMITÃ‰.\r\n\r\nCe nouveau service sera implantÃ© directement sur tous les appareils intÃ©grant lâ€™assistant intelligent dâ€™Amazon et permettra aux utilisateurs de ce dernier de pouvoir Ã©couter de la musique gratuitement, mais avec quelques limites. Tout dâ€™abord, il faut savoir que le nombre de titres sera grandement limitÃ© : 2 millions. Par ailleurs, entre chacun des morceaux viendra se glisser des publicitÃ©s audio. Ensuite, il ne sera pas possible de choisir son genre musical, cependant il sera possible de lever ces limitations Ã  condition de prendre un abonnement au service Amazon Music Ã  9,99 euros par mois. On a ainsi accÃ¨s Ã  plus de 50 millions de titres et la suppression de la publicitÃ©. Lâ€™autre possibilitÃ© pour pouvoir profiter pleinement du service est dâ€™Ãªtre abonnÃ© Ã  Amazon Prime Ã  49 euros par an, ce qui donne aussi accÃ¨s Ã  la plateforme vidÃ©o dâ€™Amazon.\r\n\r\nMalheureusement, pour le moment, le service nâ€™est disponible quâ€™aux Ã‰tats-Unis. Aucune information concernant la sortie en Europe et plus particuliÃ¨rement en France, n\'a Ã©tÃ© dÃ©voilÃ©e.', 'Antony', '2019-04-24 00:53:20', '2019-04-24 00:53:20'),
(2, 'Huawei Mate X : un nouveau smartphone pliable pour affronter le Samsung Galaxy Fold', 'LE HUAWEI MATE X SURPASSE LE FOLD ?\r\nCela fait quelques annÃ©es que l\'on entend parler des smartphones pliables sans mÃªme savoir si cela changera notre quotidien, mais les constructeurs persistent dans cette direction. La semaine derniÃ¨re, Samsung a annoncÃ© le Galaxy Fold lors de sa confÃ©rence de presse aux cÃ´tÃ©s des Galaxy S10, S10e et S10+. Depuis, la firme sud-corÃ©enne vient d\'Ãªtre rejointe par Huawei.\r\n\r\nUN PLIAGE DIFFÃ‰RENT\r\nLe Mate X est donc un smartphone pliable dotÃ© d\'un Ã©cran OLED permettant trois configurations. La premiÃ¨re arbore un Ã©cran de 6,6 pouces avec une rÃ©solution de 2480 x 1148 pixels, la seconde (lorsqu\'on retourne l\'appareil) affiche un Ã©cran de 6,4 pouces avec une rÃ©solution de 2480 x 892 pixels et en mode dÃ©pliÃ©, on a une tablette de 8 pouces au format quasiment carrÃ© avec une rÃ©solution de 2480 x 2200 pixels. La diffÃ©rence avec le Galaxy Fold est dans le pliage. Chez Samsung on plie vers l\'intÃ©rieur alors que chez Huawei on plie vers l\'extÃ©rieur.\r\n\r\nL\'appareil n\'est pas complÃ¨tement plat puisque sur un cÃ´tÃ©, on a un petit boudin oÃ¹ l\'on retrouve l\'ensemble des capteurs photo (40 + 16 + 8 mÃ©gapixels) ainsi qu\'un bouton poussoir pour le garder pliÃ©.\r\n\r\nMADE BY HUAWEI\r\nA l\'intÃ©rieur, on retrouve le HiSilicon Kirin 980 composÃ© de 8 coeurs avec une frÃ©quence maximale de 2,6 GHz. Celui-ci est couplÃ© Ã  8 gigaoctets de mÃ©moire vive (RAM) et 512 gigaoctets d\'espace de stockage. Comme son homologue, il a le droit Ã  une puce 5G qui est en lâ€™occurrence la Balong 5000 de chez Huawei.', 'Antony', '2019-04-24 00:55:13', '2019-04-24 00:55:13'),
(3, 'Des scientifiques impriment en 3D un cÅ“ur Ã  partir de tissus humains', 'AprÃ¨s la reconstitution de peau humaine, une Ã©quipe de scientifiques israÃ©lienne de la facultÃ© de sciences de la vie de l\'universitÃ© de Tel-Aviv est arrivÃ©e Ã  imprimer en 3D un cÅ“ur Ã  partir de tissus humains. Une vÃ©ritable prouesse qui pourrait aider Ã  lutter contre les maladies cardiovasculaires et diminuer les rejets auprÃ¨s des patients transplantÃ©s.\r\n\r\nPAS DE REJET\r\nActuellement, les soucis majeurs avec les patients atteints d\'insuffisance cardiaque qui n\'ont aucune autre solution que la transplantation sont : le trÃ¨s faible nombre de donneurs et le rejet d\'une greffe. Le but de cette expÃ©rience est de pouvoir, dans l\'avenir, Ã©viter toute peur de rejet immunitaire. C\'est pour cela que la crÃ©ation et l\'impression d\'un cÅ“ur en 3D Ã  partir des cellules des personnes malades pourraient Ãªtre la solution. Pour le moment, l\'impression 3D Ã  partir des cellules du patient permet seulement de rÃ©parer leur cÅ“ur, mais Ã  terme les scientifiques espÃ¨rent pouvoir imprimer un cÅ“ur entier et aussi complexe que celui de l\'Homme.\r\n\r\nÃ€ l\'heure actuelle, l\'impression est limitÃ©e Ã  la taille d\'une cerise, mais en incluant les vaisseaux sanguins, ce qui est tout de mÃªme une avancÃ©e majeure dans le domaine. Il faut rappeler que les maladies cardiovasculaires sont l\'une des causes provoquant le plus de dÃ©cÃ¨s dans les pays industrialisÃ©s.\r\n\r\nL\'Ã©quipe de scientifiques estime qu\'il sera possible d\'utiliser cette technologie d\'ici une dizaine d\'annÃ©es sur l\'Ãªtre humain et les premiers essais sur les animaux devraient dÃ©buter d\'ici 2020-2021. On peut imaginer dans plusieurs dÃ©cennies que tous les hÃ´pitaux seront Ã©quipÃ©s d\'une imprimante 3D pouvant reproduire tout type d\'organes humains. Le rejet ne sera plus qu\'une histoire ancienne.', 'Antony', '2019-04-24 00:56:16', '2019-04-24 00:56:16'),
(4, 'Game of Thrones : George Lucas a participÃ© au tournage de la saison 8', 'Game of Thrones a fait son grand retour en dÃ©but de semaine et si vous avez vu le premier Ã©pisode de la saison 8, sachez que George Lucas a participÃ© Ã  son Ã©laboration. Au cours d\'une visite des plateaux de tournage, le papa de Star Wars a donnÃ© un coup de main Ã  David Benioff et D.B. Weiss, notamment pour une scÃ¨ne entre Daenerys et Jon Snow.\r\n\r\nSi vous ne le saviez pas, aprÃ¨s avoir fini Game of Thrones, les scÃ©naristes David Benioff et D.B. Weiss vont s\'attaquer Ã  une nouvelle trilogie Star Wars. Ã€ cette occasion, le papa de La Guerre des Ã‰toiles leur a rendu une petite visite sur les plateaux de tournage de Game of Thrones. L\'occasion pour George Lucas de dÃ©couvrir les coulisses de la sÃ©rie, mais aussi de participer Ã  la rÃ©alisation d\'un Ã©pisode. Quand on a annoncÃ© aux scÃ©naristes que George Lucas venait pour rendre visite, ils ont pensÃ© que c\'Ã©tait une blague, comme l\'explique David Benioff.\r\n\r\n\"Quand on a su que George Lucas voulait nous rendre visite, on pensait que c\'Ã©tait juste une blague. Mais aprÃ¨s on a Ã©tÃ© trÃ¨s excitÃ©s et nerveux parce que c\'est George Lucas. La premiÃ¨re fois que j\'ai commencÃ© Ã  raconter des histoires, c\'Ã©tait quand j\'Ã©tais petit avec des petites poupÃ©es Stormtrooper. C\'est lui qui nous a donnÃ© envie de raconter des histoires Ã©piques.\"\r\n\r\nCe n\'est pas la premiÃ¨re fois que le rÃ©alisateur travaille avec Emilia Clarke. DÃ©ja sur le tournage de Solo : A Star Wars Story, George Lucas avait rendu visite Ã  son ami Ron Howard et il avait participÃ© Ã  la rÃ©alisation d\'une scÃ¨ne de romance entre Han Solo et Qi\'Ra. Comme on vous le disait en introduction, Game of Thrones rejoindra bientÃ´t une nouvelle fois Star Wars, puisque les scÃ©naristes de GOT vont bientÃ´t s\'attaquer Ã  une nouvelle trilogie. Cette nouvelle sÃ©rie de films devrait se concentrer sur l\'Ancienne RÃ©publique et la guerre entre les Jedi et les Sith.', 'Antony', '2019-04-24 00:57:56', '2019-04-24 00:57:56'),
(5, ' Naruto : le restaurant de ramen officiel de la saga a ouvert ses portes', 'Dans Naruto, de Masashi Kishimoto, chaque mission rÃ©ussie, ou presque, se termine chez Ichiraku, le restaurant de ramen prÃ©fÃ©rÃ© du jeune ninja. Devenu une institution, le restaurant, tenu par Teuchi, a rapidement fait des envieux parmi les spectateurs de l\'anime ou les lecteurs du manga. Et pour cause, les plats y sont particuliÃ¨rement savoureux. En fÃ©vrier, une rÃ©plique officielle de ce mÃªme restaurant a ouvert ses portes dans le centre commercial Global Harbor de ShanghaÃ¯. La dÃ©coration est respectÃ©e Ã  la lettre et il est possible de retrouver l\'univers du ninja, sous la forme de pancartes, entre autres. Tout y est fait pour que les fans aient l\'impression d\'avoir dÃ©barquÃ© Ã  Konoha. Bien Ã©videmment, une attraction comme celle-ci attire son lot de fans, touristes ou non. ', 'Antony', '2019-04-24 00:58:39', '2019-04-24 00:58:39'),
(6, 'SNCF : un youtubeur se fait passer pour un contrÃ´leur de train et risque la prison', 'Les youtubeurs essaient en permanence d\'innover et certains se spÃ©cialisent dans les canulars et autres camÃ©ras cachÃ©es. C\'est le cas de BatFlunch. Cette fois-ci, sa petite blague Ã©tait de se dÃ©guiser en contrÃ´leur de la SNCF. Une plaisanterie qui n\'a pas plu Ã  l\'entreprise qui ne compte pas en rester-lÃ  et qui a dÃ©cidÃ© de le poursuivre.\r\n\r\nUNE PLAINTE DÃ‰POSÃ‰E\r\nAlors que la vidÃ©o a dÃ©passÃ© les 270 000 vues, la SNCF a dÃ©posÃ© plainte contre BatFlunch pour usurpation de qualitÃ© en prenant la place d\'un contrÃ´leur. Anne CorbÃ©, directrice de la communication Ã  la direction rÃ©gionale de la SNCF, a dÃ©clarÃ© :\r\n\r\nSe faire passer pour un vendeur chez McDo, câ€™est une chose. Mais prendre la place dâ€™un agent assermentÃ©, qui exerce dans un cadre juridique trÃ¨s clair, et mÃªme dresser des PV, ce nâ€™est plus le mÃªme registre.\r\n\r\nD\'ailleurs, l\'une des juristes de la SNCF rajoute que cela pourrait Ãªtre couplÃ© Ã  une escroquerie puisque ce dernier Ã  fait l\'usage d\'une fausse qualitÃ©, article 313-1 du Code pÃ©nal.\r\n\r\nL\'escroquerie est le fait, soit par l\'usage d\'un faux nom ou d\'une fausse qualitÃ©, soit par l\'abus d\'une qualitÃ© vraie, soit par l\'emploi de manoeuvres frauduleuses, de tromper une personne physique ou morale et de la dÃ©terminer ainsi, Ã  son prÃ©judice ou au prÃ©judice d\'un tiers, Ã  remettre des fonds, des valeurs ou un bien quelconque, Ã  fournir un service ou Ã  consentir un acte opÃ©rant obligation ou dÃ©charge.\r\n\r\nCela pourrait aller trÃ¨s loin pour BatFlunch puisque ce dernier s\'expose Ã  une amende pouvant aller jusqu\'Ã  750 000 euros et une peine de prison pouvant aller jusqu\'Ã  7 ans. Pour l\'escroquerie, il peut Ãªtre puni de cinq ans d\'emprisonnement et de 375 000 euros d\'amende.', 'Antony', '2019-04-24 01:00:43', '2019-04-24 01:00:43');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL DEFAULT 'default.jpg',
  `rank` int(11) NOT NULL DEFAULT '1',
  `user_creation` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `avatar`, `rank`, `user_creation`) VALUES
(1, 'admin', 'exemple@exemple.fr', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'default.jpg', 2, '2019-04-17 04:26:51');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
