-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb2+deb7u6
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Час створення: Лют 22 2017 р., 16:45
-- Версія сервера: 5.5.53
-- Версія PHP: 5.4.45-0+deb7u5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- БД: `cmsw_db`
--

-- --------------------------------------------------------

--
-- Структура таблиці `access`
--

CREATE TABLE IF NOT EXISTS `access` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `role_id` int(10) NOT NULL,
  `controller` varchar(64) DEFAULT NULL,
  `view` tinyint(1) NOT NULL DEFAULT '0',
  `edit` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=151 ;

--
-- Дамп даних таблиці `access`
--

INSERT INTO `access` (`id`, `role_id`, `controller`, `view`, `edit`) VALUES
(31, 6, 'button', 0, 0),
(32, 6, 'index', 0, 0),
(33, 6, 'content', 0, 0),
(34, 6, 'control', 0, 0),
(35, 6, 'news', 0, 0),
(36, 6, 'articles', 0, 0),
(37, 6, 'menu', 0, 0),
(38, 6, 'slider', 0, 0),
(39, 6, 'gallery', 0, 0),
(40, 6, 'banners', 0, 0),
(41, 6, 'questions', 0, 0),
(42, 6, 'comments', 0, 0),
(43, 6, 'groups', 0, 0),
(44, 6, 'items', 0, 0),
(45, 6, 'brands', 0, 0),
(46, 6, 'models', 0, 0),
(47, 6, 'specifications', 0, 0),
(48, 6, 'orders', 0, 0),
(49, 6, 'simple', 0, 0),
(50, 6, 'users', 0, 0),
(51, 6, 'subscribers', 0, 0),
(52, 6, 'subscribe', 0, 0),
(53, 6, 'contacts', 0, 0),
(54, 6, 'callback', 0, 0),
(55, 6, 'mailTemplates', 0, 0),
(56, 6, 'config', 0, 0),
(57, 6, 'templates', 0, 0),
(58, 6, 'links', 0, 0),
(59, 6, 'scripts', 0, 0),
(60, 6, 'redirects', 0, 0),
(91, 7, 'button', 0, 0),
(92, 7, 'index', 1, 0),
(93, 7, 'content', 1, 1),
(94, 7, 'control', 1, 1),
(95, 7, 'news', 1, 1),
(96, 7, 'articles', 1, 1),
(97, 7, 'menu', 1, 1),
(98, 7, 'slider', 1, 1),
(99, 7, 'gallery', 1, 1),
(100, 7, 'banners', 1, 1),
(101, 7, 'questions', 1, 1),
(102, 7, 'comments', 1, 1),
(103, 7, 'groups', 1, 1),
(104, 7, 'items', 1, 1),
(105, 7, 'brands', 1, 1),
(106, 7, 'models', 1, 1),
(107, 7, 'specifications', 1, 1),
(108, 7, 'orders', 1, 1),
(109, 7, 'simple', 1, 1),
(110, 7, 'users', 1, 1),
(111, 7, 'subscribers', 1, 1),
(112, 7, 'subscribe', 1, 1),
(113, 7, 'contacts', 1, 1),
(114, 7, 'callback', 1, 1),
(115, 7, 'mailTemplates', 1, 1),
(116, 7, 'config', 1, 1),
(117, 7, 'templates', 1, 1),
(118, 7, 'links', 1, 1),
(119, 7, 'scripts', 1, 1),
(120, 7, 'redirects', 1, 1),
(121, 5, 'button', 0, 0),
(122, 5, 'index', 1, 0),
(123, 5, 'content', 0, 0),
(124, 5, 'control', 0, 0),
(125, 5, 'news', 0, 0),
(126, 5, 'articles', 1, 0),
(127, 5, 'menu', 0, 0),
(128, 5, 'slider', 0, 0),
(129, 5, 'gallery', 0, 0),
(130, 5, 'banners', 0, 0),
(131, 5, 'questions', 0, 0),
(132, 5, 'comments', 0, 0),
(133, 5, 'groups', 0, 0),
(134, 5, 'items', 0, 0),
(135, 5, 'brands', 0, 0),
(136, 5, 'models', 0, 0),
(137, 5, 'specifications', 0, 0),
(138, 5, 'orders', 0, 0),
(139, 5, 'simple', 0, 0),
(140, 5, 'users', 0, 0),
(141, 5, 'subscribers', 0, 0),
(142, 5, 'subscribe', 0, 0),
(143, 5, 'contacts', 0, 0),
(144, 5, 'callback', 0, 0),
(145, 5, 'mailTemplates', 0, 0),
(146, 5, 'config', 0, 0),
(147, 5, 'templates', 0, 0),
(148, 5, 'links', 0, 0),
(149, 5, 'scripts', 0, 0),
(150, 5, 'redirects', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблиці `arguments`
--

CREATE TABLE IF NOT EXISTS `arguments` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `created_at` int(10) DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Дамп даних таблиці `arguments`
--

INSERT INTO `arguments` (`id`, `created_at`, `updated_at`, `status`, `name`, `url`, `image`, `sort`) VALUES
(1, 1487773503, NULL, 1, 'Шаблонизация метатегов для групп страниц', NULL, '9788b585bd903902c52b47f3c7db5aae.png', NULL),
(2, 1487773519, NULL, 1, 'Возможность прописания метатегов для любой страницы по URL', NULL, 'cbc542c89b5b33d80c60a365c92d3a42.png', NULL),
(3, 1487773533, NULL, 1, 'Добавление счётчиков статистики через админ-панель без необходимости искать на FTP  корневой шаблон', NULL, '4dd964af322269d59e60a62f5a71d6d6.png', NULL),
(4, 1487773546, NULL, 0, 'Редирект, который можно поставить в админ-панели, не заходя на FTP', NULL, NULL, NULL),
(5, 1487773557, NULL, 0, 'Модуль «Теги для конкретных ссылок» полностью решает задачу внесения метатегов и  заголовков', NULL, NULL, NULL),
(6, 1487773564, NULL, 0, 'Удобное отслеживание конверсии', NULL, NULL, NULL),
(7, 1487773572, NULL, 0, 'Доступ к редактированию всех страниц на сайте из админ-панели, включая служебные.', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблиці `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `created_at` int(10) DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `text` text,
  `h1` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `keywords` text,
  `image` varchar(255) DEFAULT NULL,
  `show_image` tinyint(1) NOT NULL DEFAULT '1',
  `views` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Дамп даних таблиці `articles`
--

INSERT INTO `articles` (`id`, `created_at`, `updated_at`, `status`, `name`, `alias`, `text`, `h1`, `title`, `description`, `keywords`, `image`, `show_image`, `views`) VALUES
(5, 1447090773, 1484832895, 1, 'Что такое «Пантон»?', 'chto-takoe-panton', '<p style="text-align: left;"><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">Знали ли вы, что цвета коллекций дизайнеры не выбирают самостоятельно? Модные тенденции формируются не на подиумах, а в офисах исследовательского центра. Знакомьтесь, Pantone &ndash; институт цвета, который каждый декабрь провозглашает тренды будущих сезонов.</span></p>\r\n<p style="text-align: left;"><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">Pantone&nbsp; - авторитетный источник не только для fashion-индустрии. Его наработки используют графические и интерьерные дизайнеры, модные цвета отражаются в ювелирных украшениях и оттенках губной помады, которыми мы будем краситься. И так уже 40 лет.</span></p>\r\n<p style="text-align: left;"><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">&nbsp;</span></p>\r\n<p style="text-align: left;"><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">Специалисты Pantone изучают философию цвета. Каждый год они анализируют источники вдохновения дизайнеров, что бы понять &laquo;чем живет&raquo; мировая общественность.</span></p>\r\n<p style="text-align: left;"><em><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">Оттенки 2015</span></em></p>\r\n<p style="text-align: left;"><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">2015 год &ndash; это период бурного индустриального и технического развития. Но делать акценты на искусственности &ndash; это не для Pantone. Поэтому все трендовые оттенки были почерпнуты из природы. Они мягкие, теплые и нежные &ndash; в стилистике плэнер.</span></p>\r\n<p style="text-align: left;"><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">&nbsp;</span></p>\r\n<p style="text-align: left;"><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">Кстати, пленэр &ndash; это техника в живописи. Слово создано от французского &laquo;plein&raquo; и &laquo;air&raquo;.</span></p>\r\n<p style="text-align: left;"><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">Для пленер характерна натуральность, без прикрас, без постановочного освещения и надуманных образов. Как будто художник вышел утром в лес, прихватив кисточки, краски, мольберт, и начал рисовать.</span></p>\r\n<p style="text-align: left;"><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">Проще говоря, все трендовые оттенки года &ndash; очень натуральные и естественные. Они отражают буйство цветущего сада, мгновения закатов, прозрачность воды.</span></p>\r\n<p style="text-align: left;"><em><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">Список цветов</span></em></p>\r\n<p style="text-align: left;"><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">Главный оттенок &ndash; Marsala &ndash; и по цвету, и по названию напоминающий вино из Сицилии. Не менее актуальны:</span></p>\r\n<p style="text-align: left;"><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">&nbsp; Аквамарин;</span></p>\r\n<p style="text-align: left;"><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">&nbsp; Ледниковый серый;</span></p>\r\n<p style="text-align: left;"><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">&nbsp; Подводный синий;</span></p>\r\n<p style="text-align: left;"><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">&nbsp; Зеленый акриловый (мятный).</span></p>\r\n<p style="text-align: left;"><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">Есть и вкусные цвета: &laquo;Клубничное мороженное&raquo; или &laquo;Мандарин&raquo;. В общем, если хотите быть в тренде, просто придерживайтесь палитры. Это совсем не сложно, ведь в каждой модной коллекции обязательно найдутся вещи в гамме от Пантон.</span></p>\r\n<p style="text-align: left;">&nbsp;</p>\r\n<p style="text-align: left;">&nbsp;</p>\r\n<p style="text-align: left;">&nbsp;</p>\r\n<p style="text-align: left;">&nbsp;</p>\r\n<p style="text-align: left;">&nbsp;</p>', 'Что такое «Пантон»?', 'Что такое «Пантон»?', 'Что такое «Пантон»?', 'Что такое «Пантон»?', 'c7c2a25a62c6ef509aee1798ae2ee5f2.jpg', 1, 119),
(6, 1483023309, NULL, 0, 'Тестовая статья', 'testovaja-statja', '', 'Тестовая статья', '', '', '', NULL, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблиці `banners`
--

CREATE TABLE IF NOT EXISTS `banners` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `created_at` int(10) DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `text` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Дамп даних таблиці `banners`
--

INSERT INTO `banners` (`id`, `created_at`, `updated_at`, `status`, `text`, `url`, `image`) VALUES
(6, 1447092731, 1462880266, 0, 'Баннер 1', '', '6a20c9cb45e3728f888c2ae727bb15b5.jpg'),
(7, 1447092766, 1462880258, 0, 'Баннер 2', '', '9c1294724ccdb29ab2848450178c9ec5.jpg'),
(8, 1447094167, 1462880245, 0, '', '', 'c49bfe228855a3fd5f5cd0b63350b500.jpg');

-- --------------------------------------------------------

--
-- Структура таблиці `blacklist`
--

CREATE TABLE IF NOT EXISTS `blacklist` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `created_at` int(10) DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL,
  `date` int(10) DEFAULT NULL,
  `ip` varchar(16) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `comment` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп даних таблиці `blacklist`
--

INSERT INTO `blacklist` (`id`, `created_at`, `updated_at`, `date`, `ip`, `status`, `comment`) VALUES
(1, 1475154981, NULL, 1473800400, '178.136.229.251', 0, 'Пишет некорректные письма'),
(2, 1475158833, NULL, 1473282000, '78687887', 0, 'гдг9жшэжн90');

-- --------------------------------------------------------

--
-- Структура таблиці `brands`
--

CREATE TABLE IF NOT EXISTS `brands` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `created_at` int(10) DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `sort` int(10) DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `text` text,
  `alias` varchar(255) NOT NULL,
  `h1` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `keywords` text,
  `views` int(10) NOT NULL DEFAULT '0',
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `alias` (`alias`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=47 ;

--
-- Дамп даних таблиці `brands`
--

INSERT INTO `brands` (`id`, `created_at`, `updated_at`, `status`, `sort`, `name`, `text`, `alias`, `h1`, `title`, `description`, `keywords`, `views`, `image`) VALUES
(29, 1447092819, NULL, 1, 0, 'Nike', '', 'nike', 'Nike', 'Nike', 'Nike', 'Nike', 0, NULL),
(30, 1447092830, NULL, 1, 0, 'New Balance', '', 'new-balance', 'New Balance', 'New Balance', 'New Balance', 'New Balance', 0, NULL),
(31, 1447092841, NULL, 1, 0, 'Benetton', '', 'benetton', 'Benetton', 'Benetton', 'Benetton', 'Benetton', 0, NULL),
(32, 1447092852, NULL, 1, 0, 'H&M', '', 'hm', 'H&M', 'H&M', 'H&M', 'H&M', 0, NULL),
(33, 1447092863, NULL, 1, 0, 'Next', '', 'next', 'Next', 'Next', 'Next', 'Next', 0, NULL),
(34, 1453976736, NULL, 1, 0, 'Aldo Brue', '', 'aldo-brue', '', '', '', '', 0, NULL),
(35, 1453976759, NULL, 1, 0, 'Fabric Frontline', '', 'fabric-frontline', '', '', '', '', 0, NULL),
(36, 1453976774, NULL, 1, 0, 'Caf', '', 'caf', '', '', '', '', 0, NULL),
(37, 1453978318, NULL, 1, 0, 'Dolce & Gabbana', '', 'dolce--gabbana', '', '', '', '', 0, NULL),
(38, 1453978328, NULL, 1, 0, 'Erdem', '', 'erdem', '', '', '', '', 0, NULL),
(39, 1453978341, NULL, 1, 0, 'Lancome', '', 'lancome', '', '', '', '', 0, NULL),
(40, 1453978382, NULL, 1, 0, 'Moorer', '', 'moorer', '', '', '', '', 0, NULL),
(41, 1453978395, NULL, 1, 0, 'Passarella Death Squad', '', 'passarella-death-squad', '', '', '', '', 0, NULL),
(42, 1453978406, NULL, 1, 0, 'Valentino', '', 'valentino', '', '', '', '', 0, NULL),
(43, 1453978419, NULL, 1, 0, 'Victoria Beckham', '', 'victoria-beckham', '', '', '', '', 0, NULL),
(44, 1453978442, NULL, 1, 0, 'Stizzoli', '', 'stizzoli', '', '', '', '', 0, NULL),
(45, 1453978456, 1453982939, 1, 0, 'Two Women In The World', '', 'two-women-in-the-world', 'Two Women In The World', 'Two Women In The World', 'Two Women In The World', 'Two Women In The World', 0, NULL),
(46, 1462882036, 1462882121, 1, 0, 'Puma ', '', 'puma', '', '', '', '', 0, NULL);

-- --------------------------------------------------------

--
-- Структура таблиці `callback`
--

CREATE TABLE IF NOT EXISTS `callback` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `created_at` int(10) DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `ip` varchar(16) DEFAULT NULL,
  `phone` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп даних таблиці `callback`
--

INSERT INTO `callback` (`id`, `created_at`, `updated_at`, `status`, `name`, `email`, `ip`, `phone`) VALUES
(1, 1487773346, NULL, 0, 'test', 'zavast@fdf.fdf', '178.136.229.251', NULL),
(2, 1487773607, NULL, 0, 'test', 'tst@fdfd.fdf', '178.136.229.251', NULL);

-- --------------------------------------------------------

--
-- Структура таблиці `catalog`
--

CREATE TABLE IF NOT EXISTS `catalog` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `created_at` int(10) DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `sort` int(10) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `parent_id` int(10) DEFAULT '0',
  `new` tinyint(1) NOT NULL DEFAULT '0',
  `sale` tinyint(1) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL DEFAULT '0',
  `available` tinyint(1) NOT NULL DEFAULT '1',
  `h1` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `keywords` text,
  `description` text,
  `cost` int(6) NOT NULL DEFAULT '0',
  `cost_old` int(6) NOT NULL DEFAULT '0',
  `artikul` varchar(128) DEFAULT NULL,
  `views` int(10) NOT NULL DEFAULT '0',
  `brand_alias` varchar(255) DEFAULT NULL,
  `model_alias` varchar(255) DEFAULT NULL,
  `image` varchar(128) DEFAULT NULL,
  `specifications` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `alias` (`alias`) USING BTREE,
  KEY `parent_id` (`parent_id`) USING BTREE,
  KEY `cat_brand_alias` (`brand_alias`) USING BTREE,
  KEY `cat_model_alias` (`model_alias`) USING BTREE,
  KEY `image_link` (`image`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=164 ;

--
-- Дамп даних таблиці `catalog`
--

INSERT INTO `catalog` (`id`, `created_at`, `updated_at`, `status`, `sort`, `name`, `alias`, `parent_id`, `new`, `sale`, `top`, `available`, `h1`, `title`, `keywords`, `description`, `cost`, `cost_old`, `artikul`, `views`, `brand_alias`, `model_alias`, `image`, `specifications`) VALUES
(40, 1447094647, 1484745621, 1, 1, 'Куртка Blend', 'kurtka-blend', 29, 1, 0, 0, 1, '', '', '', '', 2810, 0, '1', 23, 'benetton', NULL, '31c79213d5aceed90eed954307c44416.jpg', '{"material":["nejlon","poliestr","silikon"],"sex":"uniseks","proizvodstvo":"italija","sezon":["zima"],"tsvet":"chernyj"}'),
(41, 1447094746, 1484745665, 1, 2, 'Brave Soul', 'brave-soul', 29, 1, 0, 0, 1, '', '', '', '', 2210, 0, '2', 18, 'next', NULL, '3faf38fccbe35f31b603141be04317f3.jpg', '{"material":["kozha","silikon","hlopok"],"sex":"uniseks","proizvodstvo":"indonezija","sezon":["zima"],"tsvet":"sinij"}'),
(42, 1447094856, 1484745713, 1, 3, 's.Oliver', 'soliver', 29, 0, 0, 1, 1, '', '', '', '', 2310, 0, '3', 16, 'benetton', NULL, 'fe75cb26c4ae4c06af7d7fdef455fe1b.jpg', '{"material":["nejlon","sintetika","hlopok"],"sex":"muzhskoj","proizvodstvo":"indonezija","sezon":["zima"],"tsvet":"green"}'),
(43, 1447095158, 1484745585, 1, 1, 'Mudo', 'mudo', 30, 1, 0, 0, 0, '', '', '', '', 312, 0, '4', 28, 'hm', NULL, '21f15ca55231a0db69dad9a2f1c6d2cd.jpg', '{"material":["poliestr","polimer","sintetika"],"sex":"muzhskoj","proizvodstvo":"ukraina","sezon":["vesna","leto","osen"],"tsvet":"chernyj"}'),
(44, 1447095265, 1484745535, 1, 2, 'Only & Sons', 'only--sons', 30, 0, 0, 1, 2, '', '', '', '', 890, 820, '5', 67, 'next', NULL, '43c658475e0a09cb4fc1c63b46bdc5a9.jpg', '{"material":["lateks","nubuk","hlopok"],"sex":"zhenskij","proizvodstvo":"indonezija","sezon":["leto"],"tsvet":"white"}'),
(45, 1447095348, 1484747492, 1, 1, 'Top Secret', 'top-secret', 31, 0, 1, 0, 1, '', '', '', '', 850, 950, '6', 22, 'next', NULL, '85b47014b4b719452a06dc924426491f.jpg', '{"material":["nubuk","poliestr","tekstil"],"sex":"muzhskoj","proizvodstvo":"kitaj","sezon":["vesna","zima","osen"],"tsvet":"korichnevyj"}'),
(46, 1447095545, 1484747364, 1, 1, 'Patrol', 'patrol', 32, 0, 1, 0, 1, '', '', '', '', 875, 1030, '7', 169, 'new-balance', '1300', '6891ab8f29e5eeded563f514d42279f4.jpg', '{"material":["zamsha","iskusstvennaja-kozha"],"sex":"uniseks","proizvodstvo":"vetnam","sezon":["vesna","zima","leto"],"tsvet":"chernyj"}'),
(47, 1447095635, 1484746683, 1, 2, 'Dirk Bikkembergs', 'dirk-bikkembergs', 32, 0, 0, 0, 0, '', '', '', '', 1270, 0, '8', 18, 'new-balance', '1400', '4454777def4b6cf80459a15566e23770.jpg', '{"material":["kozha","sintetika"],"sex":"uniseks","proizvodstvo":"ukraina","sezon":["vesna","osen"],"tsvet":"white"}'),
(48, 1447095826, 1484747354, 1, 3, 'Reebok Classics', 'reebok-classics', 32, 0, 0, 0, 2, '', '', '', '', 1450, 0, '9', 337, 'nike', 'air-foamposite', 'c2c9d0b441f241040ff329880f7840e5.jpg', '{"material":["kozha"],"sex":"uniseks","proizvodstvo":"ukraina","sezon":["vesna","osen"],"tsvet":"green"}'),
(49, 1447095908, 1484746542, 1, 1, 'Burton Menswear London', 'burton-menswear-london', 33, 0, 0, 0, 0, '', '', '', '', 2860, 0, '10', 29, 'benetton', NULL, 'd56dbeb19c27a828e5762b1aabd956a2.jpg', '{"material":["kozha"],"sex":"muzhskoj","proizvodstvo":"italija","sezon":["vesna","leto","osen"],"tsvet":"chernyj"}'),
(50, 1447095980, 1484745509, 1, 1, 'Vitacci', 'vitacci', 34, 1, 0, 0, 1, '', '', '', '', 1300, 0, '11', 23, 'nike', 'air-jordan-', '147378e984f87fbc42a0b80bd52899a2.jpg', '{"material":["zamsha"],"sex":"muzhskoj","proizvodstvo":"indonezija","sezon":["leto"],"tsvet":"sinij"}'),
(51, 1447096085, 1484745610, 1, 1, 'Quiksilver', 'quiksilver', 35, 1, 0, 0, 1, '', '', '', '', 1740, 0, '12', 18, 'hm', NULL, '528d7c85efd8247ba056e4a1c29b4bca.jpg', '{"material":["nejlon","nubuk","poliestr","polimer"],"sex":"uniseks","proizvodstvo":"ssha","sezon":["vesna","zima","leto","osen"],"tsvet":"korichnevyj"}'),
(52, 1447096156, 1484745604, 1, 2, 'David Jones', 'david-jones', 35, 1, 0, 0, 1, '', '', '', '', 1500, 0, '13', 29, 'hm', NULL, '3e402891cdc71ca41bc7f7f09e042d4b.jpg', '{"material":["kozha"],"sex":"uniseks","proizvodstvo":"kitaj","sezon":["vesna","zima","leto","osen"],"tsvet":"fioletovyj"}'),
(53, 1447096237, 1484745529, 1, 3, 'A-Personality', 'a-personality', 35, 0, 0, 1, 1, '', '', '', '', 400, 0, '14', 25, 'benetton', NULL, 'ffeee2baa0eb681477b1b4ae95c92e79.jpg', '{"material":["iskusstvennaja-kozha"],"sex":"muzhskoj","proizvodstvo":"italija","sezon":["vesna","zima","leto","osen"],"tsvet":"chernyj"}'),
(54, 1447096327, 1484745626, 1, 1, 'Oakley', 'oakley', 36, 1, 0, 0, 1, '', '', '', '', 1701, 0, '15', 18, 'hm', NULL, '3b3c8e2b8b4c89d1fbb12c3e12de9d5a.jpg', '{"material":["polimer"],"sex":"uniseks","proizvodstvo":"vetnam","sezon":["leto"],"tsvet":"korichnevyj"}'),
(55, 1447096428, 1484745497, 1, 2, 'Polaroid', 'polaroid', 36, 1, 0, 0, 1, '', '', '', '', 756, 0, '16', 19, 'hm', NULL, 'ff92a4371fdb1b55022573290fc5ad2f.jpg', '{"material":["polimer"],"sex":"uniseks","proizvodstvo":"vetnam","sezon":["leto"],"tsvet":"sinij"}'),
(56, 1453972719, 1484745638, 1, 2, 'Regular Fit Jeans', 'regular-fit-jeans', 31, 0, 0, 1, 1, '', '', '', '', 1100, 0, '5', 17, 'nike', 'air-force', '9bd9e2c0cb862c21ba8b33160fa544b7.jpg', '{"material":["lateks","nejlon"],"sex":"muzhskoj","proizvodstvo":"italija","sezon":["vesna","osen"],"tsvet":"sinij"}'),
(57, 1453972822, 1484745657, 1, 3, 'Regular Slim Jeans', 'regular-slim-jeans', 31, 0, 0, 1, 1, '', '', '', '', 1450, 1200, '7', 16, 'hm', NULL, '72db86cef6b5e1901bd0dabf72b1735e.jpg', '{"material":["sintetika","tekstil","hlopok"],"sex":"muzhskoj","proizvodstvo":"kitaj","sezon":["vesna","leto"],"tsvet":"seryj"}'),
(58, 1453972990, 1484745508, 1, 4, 'Regular Jeans', 'regular-jeans', 31, 1, 0, 0, 1, '', '', '', '', 1270, 0, '5', 18, 'next', NULL, '46d9d8f8e3be8cb4f5049aa0b11b796c.jpg', '{"material":["polimer","silikon"],"sex":"zhenskij","proizvodstvo":"indonezija","sezon":["vesna","leto"],"tsvet":"sinij"}'),
(59, 1453973163, 1484745575, 1, 5, 'Jeans', 'jeans', 31, 1, 0, 0, 1, '', '', '', '', 800, 0, '4', 26, 'hm', NULL, 'feee3908006fdc4ab715cd327d00a745.jpg', '{"material":["nubuk","poliestr"],"sex":"muzhskoj","proizvodstvo":"polsha","sezon":["vesna","zima","leto","osen"],"tsvet":"light_blue"}'),
(60, 1453973235, 1484745680, 1, 6, 'FitJeans', 'fitjeans', 31, 1, 0, 0, 0, '', '', '', '', 980, 0, '5', 19, 'nike', 'air-force', '371f58a9be9b8faba677741ac6b12050.jpg', '{"material":["lateks","nejlon"],"sex":"zhenskij","proizvodstvo":"italija","sezon":["vesna","zima","leto","osen"],"tsvet":"0"}'),
(61, 1453973760, 1484745619, 1, 1, 'VAN HEUSEN', 'van-heusen', 30, 1, 0, 0, 1, '', '', '', '', 500, 0, '1', 18, 'benetton', NULL, '744f8a702159b78c379ed35dc8200eb9.jpg', '{"material":["lateks","polimer","hlopok"],"sex":"muzhskoj","proizvodstvo":"kitaj","sezon":["vesna","zima","leto","osen"],"tsvet":"white"}'),
(62, 1453973836, 1484745706, 1, 2, 'TOOTAL', 'tootal', 30, 1, 0, 0, 1, '', '', '', '', 670, 0, '2', 18, 'hm', NULL, '8aafb240eb2626fb201353890a8d9035.jpg', '{"material":["nubuk","silikon","tekstil"],"sex":"muzhskoj","proizvodstvo":"italija","sezon":["vesna","zima","leto","osen"],"tsvet":"sinij"}'),
(63, 1453973886, 1484745524, 1, 3, 'OXFORD', 'oxford', 30, 0, 0, 1, 1, '', '', '', '', 490, 0, '3', 14, 'next', NULL, '69fb49c55e1dbae657920116c3121aca.jpg', '{"material":["nejlon","poliestr","silikon"],"sex":"muzhskoj","proizvodstvo":"ssha","sezon":["vesna","zima","leto","osen"],"tsvet":"seryj"}'),
(64, 1453973952, 1484747171, 1, 4, 'MORLEY', 'morley', 30, 0, 1, 0, 1, '', '', '', '', 600, 680, '4', 14, 'nike', NULL, 'e88ca78f3d83a09ec4d9a087f7488465.jpg', '{"material":["nejlon","poliestr","polimer"],"sex":"uniseks","proizvodstvo":"indonezija","sezon":["vesna","zima","leto","osen"],"tsvet":"light_blue"}'),
(65, 1453974019, 1484747167, 1, 5, 'SHIRTING', 'shirting', 30, 0, 1, 0, 1, '', '', '', '', 500, 530, '5', 19, 'benetton', NULL, '343f2ed7a53c89842f76680def0ff912.jpg', '{"material":["iskusstvennaja-kozha","nejlon","polimer","tekstil"],"sex":"uniseks","proizvodstvo":"polsha","sezon":["vesna","zima","leto","osen"],"tsvet":"green"}'),
(66, 1453974080, 1484747322, 1, 7, 'AERTEX', 'aertex', 30, 0, 0, 0, 2, '', '', '', '', 549, 0, '7', 14, 'nike', 'air-huarache-', '4000f9750e94224c62a0c5a4e155a753.jpg', '{"material":["iskusstvennaja-kozha","kozha","polimer"],"sex":"zhenskij","proizvodstvo":"italija","sezon":["vesna","zima","leto","osen"],"tsvet":"light_blue"}'),
(67, 1453974669, 1484747162, 1, 1, 'Marnelly', 'marnelly', 29, 0, 1, 0, 1, '', '', '', '', 2500, 3050, '1', 15, 'hm', NULL, 'cf92f6be7ef042db8506fd217337ec04.jpg', '{"material":["lateks","nejlon","polimer","silikon","tekstil","hlopok"],"sex":"uniseks","proizvodstvo":"vetnam","sezon":["vesna","zima","leto","osen"],"tsvet":"seryj"}'),
(68, 1453974739, 1484747157, 1, 2, 'MIRAGE', 'mirage', 29, 0, 1, 0, 1, '', '', '', '', 2300, 2570, '2', 16, 'hm', NULL, '9b2bd4df4c45164ff451721eec1393a4.jpg', '{"material":["nejlon","poliestr","polimer","sintetika","tekstil","hlopok"],"sex":"zhenskij","proizvodstvo":"kitaj","sezon":["vesna","zima","leto","osen"],"tsvet":"chernyj"}'),
(69, 1453974795, 1484747502, 1, 3, 'Sinta', 'sinta', 29, 0, 0, 0, 2, '', '', '', '', 2499, 0, '3', 15, 'benetton', NULL, 'af5e3e1d7e0cefb9d417502078673523.jpg', '{"material":["zamsha","kozha","nejlon","nubuk","sintetika","hlopok"],"sex":"zhenskij","proizvodstvo":"italija","sezon":["vesna","zima","leto","osen"],"tsvet":"seryj"}'),
(70, 1453975300, 1484745665, 1, 1, 'GANT', 'gant', 34, 1, 0, 0, 1, '', '', '', '', 1500, 0, '1', 21, 'benetton', NULL, '0d8ad8265bc795e5f0b1e46f1872f01d.jpg', '{"material":["iskusstvennaja-zamsha"],"sex":"muzhskoj","proizvodstvo":"kitaj","sezon":["vesna","leto"],"tsvet":"turquoise"}'),
(71, 1453975356, 1484745709, 1, 2, 'Alberto Guardiani', 'alberto-guardiani', 34, 0, 0, 1, 1, '', '', '', '', 1200, 0, '2', 25, 'hm', NULL, '99d4ab2baa6efb497393b8caa546b7d2.jpg', '{"material":["zamsha","nubuk"],"sex":"muzhskoj","proizvodstvo":"italija","sezon":["vesna","leto"],"tsvet":"0"}'),
(72, 1453975422, 1484750636, 1, 3, 'Animas Code', 'animas-code', 34, 0, 0, 1, 1, '', '', '', '', 1400, 0, '3', 19, 'new-balance', '1400', '0e6af6118a01535c6d6b8cb9b9b1cc95.jpg', '{"material":["kozha"],"sex":"muzhskoj","proizvodstvo":"ssha","sezon":["vesna","leto","osen"],"tsvet":"seryj"}'),
(73, 1453975543, 1484747154, 1, 1, 'Baldinini', 'baldinini', 33, 0, 1, 0, 1, '', '', '', '', 800, 900, '1', 15, 'benetton', NULL, 'f61df09878d457ee66fc7e1fd14addbd.jpg', '{"material":["nejlon","nubuk"],"sex":"zhenskij","proizvodstvo":"italija","sezon":["vesna","leto","osen"],"tsvet":"krasnyj"}'),
(74, 1453975599, 1484747394, 1, 2, 'Bally', 'bally', 33, 0, 0, 0, 2, '', '', '', '', 1300, 0, '2', 14, 'new-balance', '1300', '2b58dd8bf1316ed14ede88d7fe1a9a92.jpg', '{"material":["zamsha","nubuk"],"sex":"zhenskij","proizvodstvo":"kitaj","sezon":["vesna","zima","leto","osen"],"tsvet":"seryj"}'),
(75, 1453975667, 1484747522, 1, 3, 'Barracuda', 'barracuda', 33, 0, 0, 0, 0, '', '', '', '', 2100, 0, '3', 14, NULL, NULL, '6acb9c32679cf8b76b7d4a1138f4ea24.jpg', '{"material":["kozha"],"sex":"zhenskij","proizvodstvo":"italija","sezon":["vesna","zima","leto","osen"],"tsvet":"beige"}'),
(76, 1453975845, 1484747147, 1, 1, 'Sneakers Versace medusa', 'sneakers-versace-medusa', 32, 0, 1, 0, 1, '', '', '', '', 1100, 1300, '1', 18, 'nike', 'air-force', 'aa1d555bcf57d51b72b13f70e12d5036.png', '{"material":["zamsha","iskusstvennaja-zamsha","iskusstvennaja-kozha","kozha","lateks","nejlon","nubuk","poliestr","polimer","silikon","sintetika","tekstil","hlopok"],"sex":"muzhskoj","proizvodstvo":"kitaj","sezon":["vesna","zima","leto","osen"],"tsvet":"light_blue"}'),
(77, 1453975896, 1484746731, 1, 2, 'Rick Owens', 'rick-owens', 32, 0, 0, 0, 0, '', '', '', '', 1200, 970, '2', 3, 'new-balance', NULL, 'ac95a9367b31d93cf5c8f6e5bf1a34de.jpg', '{"material":["nejlon","silikon","tekstil"],"sex":"uniseks","proizvodstvo":"kitaj","sezon":["vesna","zima","leto","osen"],"tsvet":"white"}'),
(78, 1453975946, 1484747526, 1, 3, 'Kanye West Yeezy 750 Boost Low', 'kanye-west-yeezy-750-boost-low', 32, 0, 0, 0, 2, '', '', '', '', 1000, 880, '3', 14, 'new-balance', '1400', 'f30fe5c63fd4f0f9e382e275606aa7e5.jpg', '{"material":["kozha","nejlon","silikon"],"sex":"muzhskoj","proizvodstvo":"polsha","sezon":["vesna","zima","leto","osen"],"tsvet":"chernyj"}'),
(79, 1453976111, 1484747139, 1, 1, 'Ray Ban Wayfarer', 'ray-ban-wayfarer', 36, 0, 1, 0, 1, '', '', '', '', 395, 790, '1', 17, 'benetton', NULL, '9286138925af6f01592d369df039cffc.jpg', '{"material":["kozha","nejlon","poliestr","silikon"],"sex":"muzhskoj","proizvodstvo":"italija","sezon":["vesna","zima","leto","osen"],"tsvet":"chernyj"}'),
(80, 1453976168, 1484745532, 1, 2, 'Ray Ban Aviator', 'olivia', 36, 0, 1, 1, 1, '', '', '', '', 395, 790, '2', 14, 'hm', NULL, '27a7915a23137d61f99bc2a20df0dc61.jpg', '{"material":["lateks","nubuk","sintetika"],"sex":"zhenskij","proizvodstvo":"polsha","sezon":["vesna","zima","leto","osen"],"tsvet":"chernyj"}'),
(81, 1453976216, 1484747301, 1, 3, 'GANT', 'gant1701', 36, 0, 0, 0, 1, '', '', '', '', 504, 0, '3', 14, 'benetton', NULL, '3e7b9e0e1683ca0fe9a851c4c3051520.jpg', '{"material":["kozha","nejlon","nubuk","polimer"],"sex":"uniseks","proizvodstvo":"kitaj","sezon":["vesna","leto","osen"],"tsvet":"chernyj"}'),
(82, 1453976329, 1484745649, 1, 1, 'Женская сумка D&G', 'zhenskaja-sumka-dg', 35, 0, 0, 1, 1, '', '', '', '', 890, 0, '1', 18, 'benetton', NULL, '81734926419a4401f8322ece3a5fe691.jpg', '{"material":["iskusstvennaja-kozha","kozha","poliestr"],"sex":"zhenskij","proizvodstvo":"polsha","sezon":["vesna","zima","leto","osen"],"tsvet":"yellow"}'),
(83, 1453976392, 1484747138, 1, 2, 'Женская сумка D&G', 'zhenskaja-sumka-dg6134', 35, 0, 1, 0, 1, '', '', '', '', 1300, 1500, '2', 14, 'hm', NULL, '06020e5f548b14bbe0d3cddd1ddb9609.jpg', '{"material":["iskusstvennaja-kozha","lateks","polimer"],"sex":"zhenskij","proizvodstvo":"ukraina","sezon":["vesna","zima","leto","osen"],"tsvet":"white"}'),
(84, 1453982705, 1484747130, 1, 1, 'Two Women In The World', 'two-women-in-the-world', 31, 0, 1, 0, 1, '', '', '', '', 680, 709, '1', 15, 'two-women-in-the-world', NULL, '878a7e4e4ce127d11d0f01e49b165543.jpg', '{"material":["hlopok"],"sex":"zhenskij","proizvodstvo":"italija","sezon":["vesna","zima","leto","osen"],"tsvet":"sinij"}'),
(85, 1453985288, 1484745891, 1, 1, 'Paige', 'paige', 31, 0, 0, 0, 0, '', '', '', '', 1645, 0, '1', 35, 'passarella-death-squad', NULL, '1e45fd1d34c616984a94829c43c9d251.jpg', '{"material":["poliestr","hlopok"],"sex":"zhenskij","proizvodstvo":"ssha","sezon":["vesna","zima","leto","osen"]}'),
(86, 1453985577, 1484747278, 1, 1, 'Victoria Beckham', 'victoria-beckham', 31, 0, 0, 0, 0, '', '', '', '', 1500, 0, '1', 14, 'victoria-beckham', NULL, '8de18a7355287270b3df43c05a1048c0.jpg', '{"material":["poliestr","hlopok"],"sex":"zhenskij","proizvodstvo":"polsha","sezon":["vesna","zima","leto","osen"],"tsvet":"0"}'),
(87, 1453985693, 1484747286, 1, 1, 'Victoria Beckham', 'victoria-beckham2339', 31, 0, 0, 0, 2, '', '', '', '', 1405, 0, '1', 15, 'victoria-beckham', NULL, '2130622858813fec5259b99f8b452e75.jpg', '{"material":["poliestr","hlopok"],"sex":"zhenskij","proizvodstvo":"0","sezon":["vesna","zima","leto","osen"],"tsvet":"seryj"}'),
(88, 1453988109, 1484747508, 1, 1, 'Burberry Brit', 'burberry-brit', 29, 0, 0, 0, 2, '', '', '', '', 1680, 0, '1', 17, 'hm', NULL, '650e1c2c39fcd2db0fe5552ce0a96813.jpg', '{"material":["zamsha","hlopok"],"sex":"uniseks","proizvodstvo":"kitaj","sezon":["zima","osen"],"tsvet":"sinij"}'),
(89, 1453999405, 1484747125, 1, 1, 'Burberry', 'burberry', 34, 0, 1, 0, 1, '', '', '', '', 800, 970, '1', 16, 'new-balance', NULL, 'e16e898eaab10b2a8288cc73e4da458c.jpg', '{"material":["zamsha","nubuk"],"sex":"muzhskoj","proizvodstvo":"indonezija","sezon":["vesna","leto"],"tsvet":"chernyj"}'),
(90, 1453999511, 1484834823, 1, 1, 'Dolce & Gabbana', 'dolce--gabbana', 34, 0, 1, 0, 1, '', '', '', '', 1000, 1350, '1', 24, 'benetton', NULL, '996c9737bb19cec0cdf8545920a35024.jpg', '{"material":["kozha","polimer"],"sex":"uniseks","proizvodstvo":"polsha","sezon":["vesna","leto","osen"],"tsvet":"light_blue"}'),
(91, 1454004856, 1484747311, 1, 1, 'Gucci', 'gucci', 34, 0, 0, 0, 2, '', '', '', '', 1590, 0, '1', 13, 'new-balance', NULL, '1a89bd77c02b30bb960a2758628ff129.jpg', '{"material":["kozha","sintetika","tekstil"],"sex":"muzhskoj","proizvodstvo":"vetnam","sezon":["leto"],"tsvet":"sinij"}'),
(92, 1454005034, 1484746233, 1, 1, 'Bottega Veneta', 'bottega-veneta', 34, 0, 0, 0, 0, '', '', '', '', 1354, 0, '1', 18, 'hm', NULL, '27386468296175ab291d15df6925661d.jpg', '{"material":["zamsha"],"sex":"muzhskoj","proizvodstvo":"ukraina","sezon":["vesna","osen"],"tsvet":"coral"}'),
(93, 1454005265, 1484747440, 1, 1, 'Hermes', 'hermes', 34, 0, 0, 0, 0, '', '', '', '', 1654, 0, '1', 12, 'nike', NULL, '222d27610fe00ae41888d76765c172b5.jpg', '{"material":["zamsha","nubuk"],"sex":"uniseks","proizvodstvo":"italija","sezon":["vesna","leto"],"tsvet":"korichnevyj"}'),
(94, 1454005514, 1484747317, 1, 1, 'Lacoste', 'lacoste', 34, 0, 0, 0, 2, '', '', '', '', 800, 0, '1', 13, NULL, NULL, '0123777411cf5317bb713d9afdc3c9c1.jpg', '{"material":["iskusstvennaja-zamsha","poliestr","polimer"],"sex":"muzhskoj","proizvodstvo":"kitaj","sezon":["leto"],"tsvet":"beige"}'),
(95, 1454006167, 1484747111, 1, 1, 'Christian Louboutin', 'christian-louboutin', 33, 0, 1, 0, 1, '', '', '', '', 1987, 2133, '1', 16, 'new-balance', NULL, 'aedca7492b0710de73e4d3553a0b317c.jpg', '{"material":["zamsha","poliestr","sintetika"],"sex":"zhenskij","proizvodstvo":"italija","sezon":["leto"],"tsvet":"sinij"}'),
(96, 1454006239, 1484745631, 1, 1, 'Christian Louboutin', 'christian-louboutin5172', 33, 0, 0, 1, 1, '', '', '', '', 1679, 0, '1', 18, 'benetton', NULL, '296c2f7b532ab1905d9813cd4843d955.jpg', '{"material":["zamsha","poliestr","silikon"],"sex":"zhenskij","proizvodstvo":"polsha","sezon":["zima"],"tsvet":"chernyj"}'),
(97, 1454006518, 1484745675, 1, 1, 'Hermes', 'hermes8759', 33, 0, 0, 1, 1, '', '', '', '', 1733, 0, '1', 15, 'nike', NULL, 'f733af1bc7c73d6def2e19d94fcebd15.jpg', '{"material":["kozha","nejlon","poliestr"],"sex":"muzhskoj","proizvodstvo":"ssha","sezon":["vesna","zima","leto","osen"],"tsvet":"chernyj"}'),
(98, 1454006577, 1484745580, 1, 1, 'Phillip Plein', 'phillip-plein', 33, 1, 0, 0, 1, '', '', '', '', 987, 0, '1', 26, 'benetton', NULL, 'ce1d58dc0da917077043c1edf6de746a.jpg', '{"material":["iskusstvennaja-zamsha","kozha","nubuk"],"sex":"muzhskoj","proizvodstvo":"0","sezon":["vesna","zima","leto","osen"],"tsvet":"0"}'),
(99, 1454006650, 1484745496, 1, 0, 'Christian Louboutin', 'christian-louboutin6404', 33, 1, 0, 0, 1, '', '', '', '', 1267, 0, '', 15, 'nike', NULL, 'eb148d52f4cc6c272ee88bacf2776732.jpg', '{"material":["zamsha","iskusstvennaja-zamsha","polimer","sintetika"],"sex":"muzhskoj","proizvodstvo":"vetnam","sezon":["vesna","zima","leto","osen"],"tsvet":"0"}'),
(100, 1454058542, 1484747412, 1, 0, 'Dior 2015', 'dior-2015', 30, 0, 0, 0, 2, '', '', '', '', 845, 0, '', 15, 'hm', NULL, '400f456673efc583825c497288dbdca7.jpg', '{"material":["tekstil","hlopok"],"sex":"muzhskoj","proizvodstvo":"indonezija","sezon":["vesna","leto"],"tsvet":"white"}'),
(101, 1454058665, 1484746048, 1, 0, 'Alexander McQueen', 'alexander-mcqueen', 30, 0, 0, 0, 0, '', '', '', '', 750, 0, '', 29, 'benetton', NULL, 'bd1b148c4d131aaa82c04b236c01de3c.jpg', '{"material":["polimer","sintetika","hlopok"],"sex":"muzhskoj","proizvodstvo":"ukraina","sezon":["osen"],"tsvet":"0"}'),
(102, 1454058981, 1484746392, 1, 0, 'Dsquared', 'dsquared', 29, 0, 0, 0, 0, '', '', '', '', 2400, 0, '', 26, 'next', NULL, 'c75370b832affc3be9d433178f864ead.jpg', '{"material":["kozha","poliestr","tekstil"],"sex":"zhenskij","proizvodstvo":"vetnam","sezon":["vesna","osen"],"tsvet":"chernyj"}'),
(103, 1454059079, 1484747460, 1, 0, 'Burberry', 'burberry5235', 29, 0, 0, 0, 1, '', '', '', '', 1220, 0, '', 15, 'benetton', NULL, '73487bc7d72b9ca7f581b1e2c87ed78d.jpg', '{"material":["zamsha","kozha","poliestr"],"sex":"muzhskoj","proizvodstvo":"italija","sezon":["vesna"],"tsvet":"chernyj"}'),
(104, 1454059182, 1484747467, 1, 0, 'Burberry кожаная', 'burberry-kozhanaja', 29, 0, 0, 0, 0, '', '', '', '', 850, 0, '', 16, 'hm', NULL, '348b0a5a662583ff1543ba0703034249.jpg', '{"material":["iskusstvennaja-kozha","lateks","silikon"],"sex":"muzhskoj","proizvodstvo":"kitaj","sezon":["vesna","osen"],"tsvet":"chernyj"}'),
(105, 1454059444, 1484746536, 1, 0, 'Hermes', 'hermes5183', 33, 0, 0, 0, 1, '', '', '', '', 1580, 0, '', 5, 'benetton', NULL, '3ee3635b29378b2c1b92d0ee8a8262ae.jpg', '{"material":["kozha","nubuk","sintetika"],"sex":"muzhskoj","proizvodstvo":"polsha","sezon":["vesna"],"tsvet":"korichnevyj"}'),
(106, 1454060603, 1484745539, 1, 0, 'Dsquared2', 'dsquared2', 32, 0, 0, 1, 1, '', '', '', '', 1200, 0, '', 14, 'new-balance', NULL, 'bcedcb826fce171cb73c27dcf27e2b85.jpg', '{"material":["lateks","nejlon","silikon"],"sex":"uniseks","proizvodstvo":"kitaj","sezon":["vesna"],"tsvet":"white"}'),
(107, 1454060703, 1484745589, 1, 0, 'Nike чёрные', 'nike-chernye', 32, 0, 0, 1, 1, '', '', '', '', 984, 0, '', 16, 'nike', NULL, '1e2e2f992f6e9d1aad557278cd9d56b7.jpg', '{"material":["zamsha","nejlon","polimer"],"sex":"muzhskoj","proizvodstvo":"polsha","sezon":["zima","osen"],"tsvet":"sinij"}'),
(108, 1454060834, 1484745646, 1, 0, 'D&G серые', 'dg-serye', 32, 1, 0, 0, 1, '', '', '', '', 1640, 0, '', 16, 'new-balance', NULL, 'a4211640da4bb4ad88bf464938bdda63.jpg', '{"material":["kozha","polimer"],"sex":"uniseks","proizvodstvo":"italija","sezon":["leto","osen"],"tsvet":"seryj"}'),
(109, 1454060948, 1484745683, 1, 0, 'Rick Owens', 'rick-owens8331', 32, 1, 0, 0, 1, '', '', '', '', 1400, 0, '', 26, 'new-balance', NULL, '40d2333010aa10e1f683eaee65ffeb1f.jpg', '{"material":["kozha","nubuk","polimer"],"sex":"muzhskoj","proizvodstvo":"vetnam","sezon":["vesna","osen"],"tsvet":"chernyj"}'),
(110, 1454061760, 1484833881, 1, 0, 'Женская сумка Dior', 'zhenskaja-sumka-dior', 35, 0, 1, 0, 1, '', '', '', '', 1800, 2000, '', 16, 'hm', NULL, '8243a32288f42683b19c2e6246d32434.jpg', '{"material":["kozha"],"sex":"zhenskij","proizvodstvo":"italija","sezon":["vesna","zima","leto","osen"],"tsvet":"chernyj"}'),
(111, 1454061862, 1484747125, 1, 0, 'Женская сумка Furla', 'zhenskaja-sumka-furla', 35, 0, 0, 0, 2, '', '', '', '', 1360, 0, '', 2, 'benetton', NULL, '2bc9719c017326e92508f46b404f342f.jpg', '{"material":["lateks","nejlon","nubuk"],"sex":"zhenskij","proizvodstvo":"vetnam","sezon":["vesna","zima","leto","osen"],"tsvet":"rozovyj"}'),
(112, 1454062022, 1484747417, 1, 0, 'Мужская сумка Fred Perry', 'muzhskaja-sumka-fred-perry', 35, 0, 0, 0, 2, '', '', '', '', 1120, 0, '', 12, 'hm', NULL, '82a09f8eae1e2e17f6f4d38a116fe1f9.jpg', '{"material":["iskusstvennaja-kozha","nejlon","poliestr"],"sex":"muzhskoj","proizvodstvo":"indonezija","sezon":["vesna","zima","leto","osen"],"tsvet":"korichnevyj"}'),
(113, 1454062111, 1484747075, 1, 0, 'Мужская сумка Fred Perry', 'muzhskaja-sumka-fred-perry5223', 35, 0, 0, 0, 0, '', '', '', '', 1227, 0, '', 14, 'hm', NULL, '027e8a2609c1af3e188c8638f016fe97.jpg', '{"material":["kozha","poliestr","hlopok"],"sex":"muzhskoj","proizvodstvo":"kitaj","sezon":["vesna","zima","leto","osen"],"tsvet":"seryj"}'),
(114, 1454062198, 1484747339, 1, 0, 'Мужская сумка на пояс D&G', 'muzhskaja-sumka-na-pojas-dg', 35, 0, 0, 0, 0, '', '', '', '', 1413, 0, '', 14, 'hm', NULL, '992e36604939e00adee689ee475add0a.jpg', '{"material":["nubuk","polimer","sintetika","tekstil"],"sex":"muzhskoj","proizvodstvo":"polsha","sezon":["vesna","zima","leto","osen"],"tsvet":"chernyj"}'),
(115, 1454063053, 1484745640, 1, 0, 'Porsche Design', 'porsche-design', 36, 0, 0, 1, 1, '', '', '', '', 618, 0, '', 26, 'hm', NULL, '5bb962a05bf5a36940a77ba77e496ac6.jpg', '{"material":["iskusstvennaja-zamsha","kozha","poliestr"],"sex":"muzhskoj","proizvodstvo":"ukraina","sezon":["vesna","zima","leto","osen"],"tsvet":"chernyj"}'),
(116, 1454063205, 1484834029, 1, 0, 'Cartier', 'cartier', 36, 0, 0, 1, 1, '', '', '', '', 890, 0, '', 16, 'benetton', NULL, 'bf2ae8500081b45c16b214f51e50d39e.jpg', '{"material":["kozha","lateks","nubuk"],"sex":"muzhskoj","proizvodstvo":"ssha","sezon":["vesna","zima","leto","osen"],"tsvet":"chernyj"}'),
(117, 1454063317, 1484746908, 1, 0, 'Ferrari', 'ferrari', 36, 0, 0, 0, 0, '', '', '', '', 796, 0, '', 17, 'hm', NULL, '3d087c18ee28a88fc99dc78933d842a1.jpg', '{"material":["kozha","nubuk","poliestr","sintetika"],"sex":"muzhskoj","proizvodstvo":"kitaj","sezon":["vesna","zima","leto","osen"],"tsvet":"chernyj"}'),
(118, 1454063440, 1484747305, 1, 0, 'Porsche Design', 'porsche-design9374', 36, 0, 0, 0, 0, '', '', '', '', 619, 0, '', 12, 'benetton', NULL, '69efd778c57c7f5e8561eec011853107.jpg', '{"material":["kozha","lateks","polimer","silikon"],"sex":"uniseks","proizvodstvo":"indonezija","sezon":["vesna","zima","leto","osen"],"tsvet":"chernyj"}'),
(119, 1454063524, 1484747295, 1, 0, 'Мужские очки Модель 2368c2', 'muzhskie-ochki-model-2368c2', 36, 0, 0, 0, 2, '', '', '', '', 589, 0, '', 16, 'benetton', NULL, '92f3b935559751b2265a53c2fecf62ef.jpg', '{"material":["lateks","nubuk","silikon","tekstil"],"sex":"uniseks","proizvodstvo":"polsha","sezon":["vesna","zima","leto","osen"],"tsvet":"korichnevyj"}'),
(120, 1454319163, 1484747435, 1, 0, 'Джинсы Philipp Plein', 'dzhinsy-philipp-plein', 31, 0, 0, 0, 1, '', '', '', '', 1368, 0, '', 16, 'passarella-death-squad', NULL, 'c0fec459280ee93b12b4e4a711705309.jpg', '{"material":["lateks","nubuk","poliestr","hlopok"],"sex":"muzhskoj","proizvodstvo":"indonezija","sezon":["zima","osen"],"tsvet":"sinij"}'),
(121, 1454319233, 1484747289, 1, 0, 'Джинсы мужские Balmain', 'dzhinsy-muzhskie-balmain', 31, 0, 0, 0, 2, '', '', '', '', 2500, 0, '', 14, 'nike', NULL, '971c2e8906aa445de06e2a0bf33f0b87.jpg', '{"material":["zamsha","poliestr","tekstil","hlopok"],"sex":"muzhskoj","proizvodstvo":"italija","sezon":["vesna","leto"],"tsvet":"0"}'),
(122, 1454319307, 1484745600, 1, 0, 'Джинсы мужские Dsquared', 'dzhinsy-muzhskie-dsquared', 31, 1, 0, 0, 1, '', '', '', '', 1368, 0, '', 16, 'next', NULL, '8c7b7cecca6ff092982454f7334ab879.jpg', '{"material":["iskusstvennaja-zamsha","iskusstvennaja-kozha","nejlon","sintetika"],"sex":"muzhskoj","proizvodstvo":"vetnam","sezon":["zima","osen"],"tsvet":"0"}'),
(123, 1454319356, 1484745653, 1, 0, 'Джинсы мужские Versace', 'dzhinsy-muzhskie-versace', 31, 0, 0, 1, 1, '', '', '', '', 1392, 0, '', 14, 'hm', NULL, 'a0977a205a70991491100a55f09d1368.jpg', '{"material":["lateks","nejlon","poliestr"],"sex":"muzhskoj","proizvodstvo":"kitaj","sezon":["vesna","leto"],"tsvet":"seryj"}'),
(124, 1454319406, 1484747498, 1, 0, 'Женские джинсы Dsquared', 'zhenskie-dzhinsy-dsquared', 31, 0, 0, 0, 1, '', '', '', '', 1467, 0, '', 14, 'two-women-in-the-world', NULL, '00538151c9f5b0c2548a2dd7aff6339e.jpg', '{"material":["lateks","silikon","tekstil"],"sex":"zhenskij","proizvodstvo":"polsha","sezon":["zima","osen"],"tsvet":"0"}'),
(125, 1454319828, 1484747473, 1, 0, 'Мужская рубашка McQueen', 'muzhskaja-rubashka-mcqueen', 30, 0, 0, 0, 1, '', '', '', '', 1008, 0, '', 14, 'benetton', NULL, '59d38fdc0ca405a5b33d3c7841fd842b.jpg', '{"material":["lateks","nubuk","tekstil"],"sex":"muzhskoj","proizvodstvo":"vetnam","sezon":["vesna","zima","leto","osen"],"tsvet":"krasnyj"}'),
(126, 1454319898, 1484745515, 1, 0, 'Рубашка Dior Homme', 'rubashka-dior-homme', 30, 1, 0, 0, 1, '', '', '', '', 1488, 0, '', 19, 'hm', NULL, '654581ae81effacc3a69f675c1fe3a94.jpg', '{"material":["kozha","nubuk","poliestr"],"sex":"muzhskoj","proizvodstvo":"indonezija","sezon":["vesna","zima","leto","osen"],"tsvet":"chernyj"}'),
(127, 1454319945, 1484745592, 1, 0, 'Рубашка Givenchy', 'rubashka-givenchy', 30, 0, 0, 1, 1, '', '', '', '', 1739, 0, '', 14, 'next', NULL, '720d0d3efa105c644950af32522f4045.jpg', '{"material":["nejlon","poliestr","polimer"],"sex":"muzhskoj","proizvodstvo":"italija","sezon":["vesna","zima","leto","osen"],"tsvet":"chernyj"}'),
(128, 1454320002, 1484747327, 1, 0, 'Мужская рубашка Kenzo', 'muzhskaja-rubashka-kenzo', 30, 0, 0, 0, 0, '', '', '', '', 867, 0, '', 16, 'next', NULL, 'b22809828871f8e09526177f0baed2b1.jpg', '{"material":["nejlon","nubuk","polimer"],"sex":"muzhskoj","proizvodstvo":"kitaj","sezon":["vesna","zima","leto","osen"],"tsvet":"white"}'),
(129, 1454320064, 1484747407, 1, 0, 'Рубашка Givenchy', 'rubashka-givenchy2219', 30, 0, 0, 0, 2, '', '', '', '', 1699, 0, '', 15, 'nike', NULL, 'b872e6cbc18e01ce6047b418aa0b2f88.jpg', '{"material":["poliestr","sintetika","hlopok"],"sex":"uniseks","proizvodstvo":"ssha","sezon":["vesna","zima","leto","osen"],"tsvet":"white"}'),
(130, 1454320424, 1484745670, 1, 0, 'Мужской пуховик Armani', 'muzhskoj-puhovik-armani', 29, 0, 0, 1, 1, '', '', '', '', 2107, 0, '', 28, 'benetton', NULL, '4c81d2327a33a5aa58e18501eccf17a5.jpg', '{"material":["nejlon","nubuk","sintetika","tekstil"],"sex":"muzhskoj","proizvodstvo":"polsha","sezon":["zima"],"tsvet":"fioletovyj"}'),
(131, 1454320481, 1484747469, 1, 0, 'Куртка Burberry кожаная', 'kurtka-burberry-kozhanaja', 29, 0, 0, 0, 2, '', '', '', '', 3510, 0, '', 12, 'hm', NULL, '2e49d83ce27e526f8e7cc578406fb5a8.jpg', '{"material":["kozha"],"sex":"muzhskoj","proizvodstvo":"ssha","sezon":["vesna","osen"],"tsvet":"chernyj"}'),
(132, 1454320548, 1484747518, 1, 0, 'Куртка Burberry кожаная', 'kurtka-burberry-kozhanaja5847', 29, 0, 0, 0, 0, '', '', '', '', 3400, 0, '', 14, 'next', NULL, 'cb0ab2f6740708dff3d7607f41163153.jpg', '{"material":["kozha"],"sex":"muzhskoj","proizvodstvo":"ukraina","sezon":["vesna","osen"],"tsvet":"chernyj"}'),
(133, 1454320609, 1484745660, 1, 0, 'Женский плащ Karen Millen', 'zhenskij-plasch-karen-millen', 29, 0, 0, 1, 1, '', '', '', '', 2067, 0, '', 17, 'benetton', NULL, '7991833d4e097829b93dd9f278b40c14.jpg', '{"material":["nejlon","nubuk","polimer"],"sex":"zhenskij","proizvodstvo":"indonezija","sezon":["vesna","osen"],"tsvet":"seryj"}'),
(134, 1454320662, 1484747512, 1, 0, 'Мужское пальто Burberry', 'muzhskoe-palto-burberry', 29, 0, 0, 0, 2, '', '', '', '', 2800, 0, '', 14, 'hm', NULL, '857b1bc39a911a1a24ae239ee59d16e2.jpg', '{"material":["lateks","nejlon","poliestr","sintetika"],"sex":"muzhskoj","proizvodstvo":"polsha","sezon":["zima"],"tsvet":"chernyj"}'),
(135, 1454322286, 1484747450, 1, 0, 'Женские мокасины Tods Riancess белые', 'zhenskie-mokasiny-tods-riancess-belye', 34, 0, 0, 0, 2, '', '', '', '', 1920, 0, '', 12, 'benetton', NULL, '3bfdb6e9c6abd9d58741a9afd69a73d1.jpg', '{"material":["lateks","nubuk","silikon","sintetika"],"sex":"zhenskij","proizvodstvo":"vetnam","sezon":["vesna","zima","leto","osen"],"tsvet":"white"}'),
(136, 1454322332, 1484747456, 1, 0, 'Женские мокасины Tods Riancess черные', 'zhenskie-mokasiny-tods-riancess-chernye', 34, 0, 0, 0, 2, '', '', '', '', 1920, 0, '', 14, 'hm', NULL, '98a88f9a611f19fda6d0507bfeb84ef4.jpg', '{"material":["kozha","nejlon","polimer"],"sex":"zhenskij","proizvodstvo":"indonezija","sezon":["zima","leto","osen"],"tsvet":"chernyj"}'),
(137, 1454322385, 1484745600, 1, 0, 'Мокасины Tods серые замшевые', 'mokasiny-tods-serye-zamshevye', 34, 1, 0, 0, 1, '', '', '', '', 1840, 0, '', 20, 'new-balance', NULL, '2ab31caa02f13ca7fe793fc6ffde3935.jpg', '{"material":["zamsha"],"sex":"zhenskij","proizvodstvo":"0","sezon":["vesna","leto"],"tsvet":"seryj"}'),
(138, 1454322435, 1484745615, 1, 0, 'Мужские мокасины Prada', 'muzhskie-mokasiny-prada', 34, 0, 0, 1, 1, '', '', '', '', 1350, 0, '', 15, 'next', NULL, 'dd84e3af3ac388c165830cf5c2a99be1.jpg', '{"material":["iskusstvennaja-kozha","poliestr","polimer"],"sex":"muzhskoj","proizvodstvo":"kitaj","sezon":["leto","osen"],"tsvet":"chernyj"}'),
(139, 1454322489, 1484745672, 1, 0, 'Мужские мокасины Tods темно синие', 'muzhskie-mokasiny-tods-temno-sinie', 34, 1, 0, 0, 1, '', '', '', '', 1100, 0, '', 15, 'nike', NULL, '33d7d2b06133a49ca5fe0f732ebf5d5b.jpg', '{"material":["nubuk","polimer","silikon"],"sex":"muzhskoj","proizvodstvo":"polsha","sezon":["leto","osen"],"tsvet":"sinij"}'),
(140, 1454323547, 1484747399, 1, 0, 'Туфли Giuseppe Zanotti бежевые кожаные', 'tufli-giuseppe-zanotti-bezhevye-kozhanye', 33, 0, 0, 0, 1, '', '', '', '', 2100, 0, '', 12, 'benetton', NULL, 'ce8d895d2c71cfb9a98da843140265a7.jpg', '{"material":["kozha"],"sex":"zhenskij","proizvodstvo":"italija","sezon":["vesna","leto"],"tsvet":"beige"}'),
(141, 1454323591, 1484747482, 1, 0, 'Туфли Gianmarco Lorenzi чёрные', 'tufli-gianmarco-lorenzi-chernye', 33, 0, 0, 0, 1, '', '', '', '', 2400, 0, '', 14, 'new-balance', NULL, 'da41ddcc27ee136176fdce29738682b2.jpg', '{"material":["kozha","silikon","sintetika"],"sex":"zhenskij","proizvodstvo":"vetnam","sezon":["vesna","leto"],"tsvet":"chernyj"}'),
(142, 1454323628, 1484747263, 1, 0, 'Туфли классические Givenchy черные', 'tufli-klassicheskie-givenchy-chernye', 33, 0, 0, 0, 1, '', '', '', '', 2200, 0, '', 12, 'nike', NULL, '0677e1ad1f6541eee5747d28058c8180.jpg', '{"material":["zamsha","lateks","poliestr"],"sex":"muzhskoj","proizvodstvo":"polsha","sezon":["vesna","osen"],"tsvet":"chernyj"}'),
(143, 1454323679, 1484747267, 1, 0, 'Мужские туфли Louis Vuitton коричневые', 'muzhskie-tufli-louis-vuitton-korichnevye', 33, 0, 0, 0, 1, '', '', '', '', 1800, 0, '', 15, 'benetton', NULL, '68d868374b6db3d1cf9bea2f72027e31.jpg', '{"material":["lateks","poliestr","silikon"],"sex":"muzhskoj","proizvodstvo":"ukraina","sezon":["vesna","osen"],"tsvet":"korichnevyj"}'),
(144, 1454323726, 1484747478, 1, 0, 'Мужские туфли Louis Vuitton черные', 'muzhskie-tufli-louis-vuitton-chernye', 33, 0, 0, 0, 1, '', '', '', '', 1800, 0, '', 14, 'new-balance', NULL, '43de9d0f84d292f30c5ac0451faff7de.jpg', '{"material":["kozha","lateks","poliestr"],"sex":"muzhskoj","proizvodstvo":"ukraina","sezon":["vesna","leto"],"tsvet":"chernyj"}'),
(145, 1454324137, 1484747403, 1, 0, 'Мужские sneakers Buscemi', 'muzhskie-sneakers-buscemi', 32, 0, 0, 0, 1, '', '', '', '', 1700, 0, '', 14, 'new-balance', NULL, '2c57611d39d0339269ecba567a749967.jpg', '{"material":["kozha","nejlon","polimer"],"sex":"muzhskoj","proizvodstvo":"italija","sezon":["osen"],"tsvet":"chernyj"}'),
(146, 1454324425, 1484747359, 1, 0, 'Кроссовки Giuseppe Zanotti', 'krossovki-giuseppe-zanotti', 32, 0, 0, 0, 1, '', '', '', '', 1440, 0, '', 12, 'nike', NULL, '120a2393910ce4cad4acd9300c124ca4.jpg', '{"material":["iskusstvennaja-kozha","lateks","poliestr"],"sex":"muzhskoj","proizvodstvo":"indonezija","sezon":["leto","osen"],"tsvet":"chernyj"}'),
(147, 1454324475, 1484747389, 1, 0, 'Кроссовки Y-3 ', 'krossovki-y-3-yohji-yamamoto', 32, 0, 0, 0, 1, '', '', '', '', 1160, 0, '', 12, 'new-balance', NULL, '2e70fbd4a6418b0d25f58157243ec680.jpg', '{"material":["lateks","nubuk","tekstil"],"sex":"muzhskoj","proizvodstvo":"ukraina","sezon":["osen"],"tsvet":"yellow"}'),
(148, 1454324542, 1484747348, 1, 0, 'Мужские кроссовки Louis Vuitton замшевые красные', 'muzhskie-krossovki-louis-vuitton-zamshevye-krasnye', 32, 0, 0, 0, 2, '', '', '', '', 2400, 0, '', 14, 'nike', NULL, '7e6ed9ff208f16a45ab64257ba9f3a72.jpg', '{"material":["zamsha","nubuk"],"sex":"muzhskoj","proizvodstvo":"ssha","sezon":["leto","osen"],"tsvet":"krasnyj"}'),
(149, 1454324590, 1484747257, 1, 0, 'Мужские кроссовки Prada чёрные', 'muzhskie-krossovki-prada-chernye', 32, 0, 0, 0, 1, '', '', '', '', 1300, 0, '', 4, 'new-balance', NULL, '8b80482102762d94fb58b6db7e57550c.jpg', '{"material":["lateks","nejlon","poliestr"],"sex":"muzhskoj","proizvodstvo":"polsha","sezon":["leto","osen"],"tsvet":"chernyj"}'),
(150, 1454324982, 1484747344, 1, 0, 'Женская сумка Roberto Cavalli', 'zhenskaja-sumka-roberto-cavalli', 35, 0, 0, 0, 1, '', '', '', '', 1280, 0, '', 14, 'benetton', NULL, 'f7202f3d2445ba1f4fa2839437e2b9b9.jpg', '{"material":["lateks","nubuk","silikon"],"sex":"zhenskij","proizvodstvo":"italija","sezon":["vesna","zima","leto","osen"],"tsvet":"krasnyj"}'),
(151, 1454325034, 1484747332, 1, 0, 'Клатч Alexander Mcqueen', 'klatch-alexander-mcqueen', 35, 0, 0, 0, 1, '', '', '', '', 1300, 0, '', 12, 'hm', NULL, '07ee6659e7a415e9d34f6a93b540908e.jpg', '{"material":["kozha","silikon"],"sex":"zhenskij","proizvodstvo":"ssha","sezon":["vesna","osen"],"tsvet":"chernyj"}'),
(152, 1454325084, 1484747444, 1, 0, 'Женская сумка Zara', 'zhenskaja-sumka-zara', 35, 0, 0, 0, 1, '', '', '', '', 900, 0, '', 14, 'benetton', NULL, '0a4eff388b67a57a083f654ac8149b0b.jpg', '{"material":["nejlon","nubuk","polimer"],"sex":"zhenskij","proizvodstvo":"ukraina","sezon":["leto","osen"],"tsvet":"chernyj"}'),
(153, 1454325135, 1484747425, 1, 0, 'Мужская сумка Calvin Klein', 'muzhskaja-sumka-calvin-klein', 35, 0, 0, 0, 1, '', '', '', '', 827, 0, '', 14, 'hm', NULL, '698e3ecaee23d4e5f2f1530d0c240ad8.jpg', '{"material":["kozha","nubuk","silikon"],"sex":"muzhskoj","proizvodstvo":"ukraina","sezon":["leto","osen"],"tsvet":"chernyj"}'),
(154, 1454325181, 1484747421, 1, 0, 'Мужская сумка GUCCI', 'muzhskaja-sumka-gucci', 35, 0, 0, 0, 1, '', '', '', '', 760, 0, '', 12, 'benetton', NULL, 'a1263630a87a89b5226af70435ba8254.jpg', '{"material":["lateks","nejlon","sintetika"],"sex":"zhenskij","proizvodstvo":"italija","sezon":["zima","leto"],"tsvet":"chernyj"}'),
(155, 1462879116, 1484745587, 1, 0, 'Nke Air Huarache', 'nke-air-huarache', 32, 1, 0, 0, 1, 'Nike Air Huarache', 'Nike Air Huarache', 'Nike Nike Nike ', '', 1999, 0, '', 27, 'nike', 'air-huarache-', '8d2ec33b46ebc352b67098759eebe5fc.jpg', '{"material":["iskusstvennaja-zamsha","kozha","nejlon","nubuk","tekstil"],"sex":"uniseks","proizvodstvo":"vetnam","sezon":["vesna","leto","osen"],"tsvet":"chernyj"}'),
(156, 1462879768, 1484745569, 1, 0, 'Ruma Creepers ', 'ruma-creepers-', 32, 1, 1, 0, 1, '', '', '', '', 1499, 1795, 'Ruma Creepers ', 27, NULL, NULL, 'eab6d6b4851e790b52d71813e8537b8c.jpg', '{"material":["zamsha","iskusstvennaja-zamsha","poliestr"],"sex":"zhenskij","proizvodstvo":"indonezija","sezon":["vesna","leto","osen"],"tsvet":"chernyj"}'),
(157, 1463996817, 1484745770, 1, 0, 'Подушка крассная', 'podushka-krassnaja', 40, 0, 0, 0, 1, '', '', '\r\n', '', 40, 0, '444', 38, NULL, NULL, NULL, '{"sex":"0"}'),
(158, 1464612611, 1484834740, 1, 0, 'Одеяло из шерсти', 'odejalo-iz-shersti', 41, 0, 0, 0, 1, '', '', '', '', 1000, 0, '1111', 28, 'fabric-frontline', NULL, '876558828e8bf44fd34c1638e82bfdb4.jpg', '{"material":["zamsha","iskusstvennaja-zamsha","iskusstvennaja-kozha","kozha","lateks","nejlon","nubuk","poliestr","polimer","silikon","tekstil","hlopok"],"proizvodstvo":"polsha","sezon":["vesna","osen"],"tsvet":"fioletovyj"}'),
(159, 1464618360, 1464618360, 1, 0, 'терка для овощей', 'terka-dlja-ovoschej', 44, 0, 0, 0, 1, '', '', '', '', 35, 0, '123дж', 0, NULL, NULL, NULL, '{"material":["zamsha","iskusstvennaja-zamsha","iskusstvennaja-kozha","kozha","lateks","nejlon","nubuk","poliestr","polimer","silikon","sintetika","tekstil","hlopok"],"sex":"0","proizvodstvo":"ukraina","tsvet":"0"}'),
(160, 1464618597, 1464685063, 1, 0, 'Терка универсальная', 'terka-universalnaja', 44, 0, 0, 0, 1, '', '', '', '', 55, 0, '1235дж', 0, NULL, NULL, '1b22ffdbad1330328b791e4a253e6d97.jpg', '{"sex":"0","proizvodstvo":"kitaj"}'),
(161, 1464627001, 1484745612, 1, 0, 'Терки акция', 'terki-aktsija', 45, 0, 0, 1, 1, '', '', '', '', 50, 55, '2323', 29, NULL, NULL, 'c6121f9633e13ce34552ba96c741d096.jpg', '{"tsvet":"seryj"}'),
(162, 1464685147, 1484747259, 1, 0, 'Ложка', 'lozhka', 47, 0, 0, 0, 1, '', '', '', '', 25, 0, '222', 5, 'caf', NULL, 'ae7cd5e751f1f6c5305e881d8a38622d.jpg', '{"tsvet":"0"}'),
(163, 1465035027, 1484835852, 1, 0, 'Тёплая ', 'teplaja-', 42, 0, 0, 1, 1, '', '', '', '', 1400, 0, '111', 28, NULL, NULL, '7c44f451228c3f222ad7ad0610598af9.jpg', '{"material":["zamsha"],"sex":"0","proizvodstvo":"0","sezon":["vesna"],"tsvet":"0"}');

-- --------------------------------------------------------

--
-- Структура таблиці `catalog_comments`
--

CREATE TABLE IF NOT EXISTS `catalog_comments` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `created_at` int(10) DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date` int(10) DEFAULT NULL,
  `catalog_id` int(10) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `city` varchar(64) DEFAULT NULL,
  `text` text,
  `ip` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `catalog_id` (`catalog_id`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Дамп даних таблиці `catalog_comments`
--

INSERT INTO `catalog_comments` (`id`, `created_at`, `updated_at`, `status`, `date`, `catalog_id`, `name`, `city`, `text`, `ip`) VALUES
(1, 1453192114, NULL, 0, 1453192114, 48, 'Darya', 'Kherson', 'testttt', '178.136.229.251'),
(2, 1453375172, NULL, 0, 1453375172, 48, 'Darya', 'Kherson', 'testttt', '178.136.229.251'),
(3, 1453375419, NULL, 0, 1453375419, 48, 'Darya', 'Kherson', 'testttt', '178.136.229.251'),
(4, 1453378494, NULL, 0, 1453378494, 48, 'Darya', 'Kherson', 'testttt', '178.136.229.251'),
(5, 1453446803, NULL, 0, 1453446803, 48, 'Darya', 'Kherson', 'testttt', '178.136.229.251'),
(6, 1460985324, NULL, 0, 1460985324, 52, 'кк', 'кк', 'ккп  п п п', '178.136.229.251'),
(7, 1461879659, NULL, 0, 1461879659, 43, 'cxzcz', 'cxzczczx', 'cxzcxzcz', '78.137.5.210'),
(8, 1462879614, NULL, 0, 1462879614, 155, 'впвпфвп', '4145tfdgdf', 'отзыв 22993\r\n4', '178.136.229.251'),
(9, 1484745474, 1484745583, 0, 1484690400, 90, '111', 'reet', '11111', '178.136.229.251');

-- --------------------------------------------------------

--
-- Структура таблиці `catalog_images`
--

CREATE TABLE IF NOT EXISTS `catalog_images` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `created_at` int(10) DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL,
  `sort` int(10) NOT NULL DEFAULT '0',
  `catalog_id` int(10) NOT NULL DEFAULT '0',
  `main` tinyint(1) NOT NULL DEFAULT '0',
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `catalog_id` (`catalog_id`) USING BTREE,
  KEY `image` (`image`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1100 ;

--
-- Дамп даних таблиці `catalog_images`
--

INSERT INTO `catalog_images` (`id`, `created_at`, `updated_at`, `sort`, `catalog_id`, `main`, `image`) VALUES
(611, 1447094678, NULL, 0, 40, 1, '31c79213d5aceed90eed954307c44416.jpg'),
(612, 1447094678, NULL, 0, 40, 0, '38ff50f13f667a0e6500555f58db75e0.jpg'),
(613, 1447094683, NULL, 0, 40, 0, 'a8939e7b09f8347786e0f3e830c3a94a.jpg'),
(614, 1447094684, NULL, 0, 40, 0, 'c4513d5088f6374a2df90dc6a7a76ac1.jpg'),
(615, 1447094778, NULL, 0, 41, 0, 'c65bc1609165bf2eaf28fb76755cfb3a.jpg'),
(616, 1447094778, NULL, 0, 41, 0, '9c20b99496ac618fd064561234fdf753.jpg'),
(617, 1447094778, 1447094785, 0, 41, 1, '3faf38fccbe35f31b603141be04317f3.jpg'),
(618, 1447094779, NULL, 0, 41, 0, '7fd7e096c6eb0e37c2ba1322f84a404f.jpg'),
(619, 1447094884, NULL, 0, 42, 0, '8c7705ee980b733f90bebc2e15637494.jpg'),
(620, 1447094884, 1447094889, 0, 42, 1, 'fe75cb26c4ae4c06af7d7fdef455fe1b.jpg'),
(621, 1447094884, NULL, 0, 42, 0, 'ec61f00800b0aeaf06758204adaa1107.jpg'),
(622, 1447094884, NULL, 0, 42, 0, '52380165b1463bad08ad2c201a010f24.jpg'),
(623, 1447095185, NULL, 0, 43, 0, '06f084f113e5b5248af77fc0afb53656.jpg'),
(624, 1447095185, 1447095192, 0, 43, 0, 'e8e63648d7a99d6ac02973c1f79fdc20.jpg'),
(625, 1447095186, NULL, 0, 43, 0, '2401a36f9678329c6a799b52845614d6.jpg'),
(626, 1447095186, 1447095197, 0, 43, 1, '21f15ca55231a0db69dad9a2f1c6d2cd.jpg'),
(627, 1447095290, NULL, 0, 44, 0, '46e3ad3bb52ad060888db5a26cf38fb0.jpg'),
(628, 1447095290, 1447095295, 0, 44, 1, '43c658475e0a09cb4fc1c63b46bdc5a9.jpg'),
(629, 1447095290, NULL, 0, 44, 0, '593c5d47b1233bf928d841e35ceda328.jpg'),
(630, 1447095291, NULL, 0, 44, 0, '104e058a23b1aeeded9aa4ba16b3613c.jpg'),
(631, 1447095375, NULL, 0, 45, 0, '7aaf1cc025af46186ef6105af07302aa.jpg'),
(632, 1447095375, NULL, 0, 45, 0, 'c6ed2a324ba41120cde5b43691e6fa1c.jpg'),
(633, 1447095375, 1453983879, 0, 45, 1, '85b47014b4b719452a06dc924426491f.jpg'),
(634, 1447095376, NULL, 0, 45, 0, '30e1b40a46d741c377846b089dc1b5d2.jpg'),
(647, 1447095935, NULL, 0, 49, 1, 'd56dbeb19c27a828e5762b1aabd956a2.jpg'),
(648, 1447095935, NULL, 0, 49, 0, '794e27e91e3827d06c9a275f2d5fdf67.jpg'),
(649, 1447095935, NULL, 0, 49, 0, '0c2a3494e44ff805f0aa0101acc731b7.jpg'),
(650, 1447095936, NULL, 0, 49, 0, '890457273def0c8f792aea62fb9e024b.jpg'),
(651, 1447096008, NULL, 0, 50, 0, '782c69989db1782087e4db39a775339d.jpg'),
(652, 1447096009, NULL, 0, 50, 0, '4fc5db935e0b553e9313f41a6039f38f.jpg'),
(653, 1447096009, 1453988344, 0, 50, 1, '147378e984f87fbc42a0b80bd52899a2.jpg'),
(654, 1447096009, NULL, 0, 50, 0, 'e5ba68f0c3d4204607f810388584dffc.jpg'),
(655, 1447096112, NULL, 0, 51, 0, '1547105c5adc86058857a80c8c0c9385.jpg'),
(656, 1447096112, NULL, 0, 51, 0, '17bd4f3fb5b9ebb4b440aa93ea501ce5.jpg'),
(657, 1447096113, 1447096118, 0, 51, 1, '528d7c85efd8247ba056e4a1c29b4bca.jpg'),
(658, 1447096113, NULL, 0, 51, 0, '9913d50a7fc4f0647673024fcc1520e4.jpg'),
(659, 1447096192, NULL, 0, 52, 1, '3e402891cdc71ca41bc7f7f09e042d4b.jpg'),
(660, 1447096192, NULL, 0, 52, 0, '15fe0291226b53ccf22139b82ea0e3b3.jpg'),
(661, 1447096192, NULL, 0, 52, 0, '5143399809e92177a6b245a13eaf1040.jpg'),
(662, 1447096193, NULL, 0, 52, 0, 'd82dfae402a5be04f1e5428418b03899.jpg'),
(663, 1447096193, NULL, 0, 52, 0, 'fc6d6e8fa2573e57820c6f9831589c70.jpg'),
(664, 1447096257, NULL, 0, 53, 0, '5570dd2844ef1b6537ef54cf8201d017.jpg'),
(665, 1447096258, NULL, 0, 53, 0, '4021ff43abd896ed381a93e3f20d2eee.jpg'),
(666, 1447096258, 1447096264, 0, 53, 1, 'ffeee2baa0eb681477b1b4ae95c92e79.jpg'),
(667, 1447096258, NULL, 0, 53, 0, '695335f5e51e38b722e7245e7e5e7418.jpg'),
(668, 1447096351, 1448356268, 1, 54, 0, '834c53733e652ec1f70cd1317ef82139.jpg'),
(669, 1447096351, 1449923786, 4, 54, 1, '3b3c8e2b8b4c89d1fbb12c3e12de9d5a.jpg'),
(670, 1447096351, NULL, 2, 54, 0, '7a6d9f600684aa0b7d8131e2788bc1b5.jpg'),
(671, 1447096352, NULL, 5, 54, 0, 'eba225f85fd9ab2132e0ba7fb68efa36.jpg'),
(672, 1447096352, 1447096358, 6, 54, 0, 'fd180a4c7b269eff9987c17be93ed57f.jpg'),
(673, 1447096440, NULL, 0, 55, 0, '535707cf9761cf5dda7b4b8cfa8412d9.jpg'),
(674, 1447096441, NULL, 0, 55, 0, 'bc45391efa8abb4ad22e6b03675b0687.jpg'),
(675, 1447096441, NULL, 0, 55, 0, '25bf84f8b8034c3ed6f12634955ef9ee.jpg'),
(676, 1447096441, 1454062939, 0, 55, 1, 'ff92a4371fdb1b55022573290fc5ad2f.jpg'),
(677, 1447096442, NULL, 0, 55, 0, '27c09b1972e05bab1a05bd8a6c644e77.jpg'),
(678, 1448355514, 1448356114, 3, 54, 0, '1eef990b83ea781b7259171943f6a5d0.jpg'),
(707, 1453982710, NULL, 0, 84, 0, '03a4bd46da830c79d48098bc30f410ec.jpg'),
(708, 1453982710, NULL, 0, 84, 0, '2c036c65e187abac51b1839ca115b7dd.jpg'),
(709, 1453982710, 1453982715, 0, 84, 1, '878a7e4e4ce127d11d0f01e49b165543.jpg'),
(710, 1453983182, NULL, 0, 56, 0, 'aabe0e6e9da54870d2b850f5bc3100a1.jpg'),
(711, 1453983184, NULL, 0, 56, 0, 'bbcf6f4835aefdfe6cab1ea8fa5c4cb5.jpg'),
(712, 1453983184, 1453983188, 0, 56, 1, '9bd9e2c0cb862c21ba8b33160fa544b7.jpg'),
(713, 1453983301, NULL, 0, 57, 1, '72db86cef6b5e1901bd0dabf72b1735e.jpg'),
(714, 1453983302, NULL, 0, 57, 0, 'cced5c99377923d74a7a88b8f0841e62.jpg'),
(715, 1453983303, NULL, 0, 57, 0, '0f8f7897e053de651ea53b5a02c00165.jpg'),
(716, 1453983415, NULL, 0, 58, 1, '46d9d8f8e3be8cb4f5049aa0b11b796c.jpg'),
(717, 1453983416, NULL, 0, 58, 0, '8b1a1e324010527b44a7fb2f371fab0f.jpg'),
(718, 1453983417, NULL, 0, 58, 0, 'da7f86fdc6b745745f2421deb46bc851.jpg'),
(719, 1453983538, NULL, 0, 59, 0, 'd49e029935ae7db636ccb2841cc077db.jpg'),
(720, 1453983539, NULL, 0, 59, 0, 'a88a4f24315ce916d1eaa9da5d723797.jpg'),
(721, 1453983540, NULL, 0, 59, 0, '72b78db192ee58dcde018a4d7f312b57.jpg'),
(722, 1453983540, 1453983544, 0, 59, 1, 'feee3908006fdc4ab715cd327d00a745.jpg'),
(723, 1453983822, NULL, 0, 60, 0, '12dc48c811c05fc2c3d0347727f914f5.jpg'),
(724, 1453983823, 1453983892, 0, 60, 1, '371f58a9be9b8faba677741ac6b12050.jpg'),
(725, 1453983824, NULL, 0, 60, 0, '2973ce21c82746f252ac45c693d6fd90.jpg'),
(726, 1453983824, NULL, 0, 60, 0, 'c88a9dffe14254ee22e1a18f1afd811f.jpg'),
(727, 1453985374, NULL, 0, 85, 1, '1e45fd1d34c616984a94829c43c9d251.jpg'),
(728, 1453985374, NULL, 0, 85, 0, '0ecedd75804257dde4437de71425ce49.jpg'),
(729, 1453985375, NULL, 0, 85, 0, '767100b541d222386b6908d7b7962c2c.jpg'),
(730, 1453985375, NULL, 0, 85, 0, 'a77ae6f3635bb1bb07c0814c32e2134c.jpg'),
(731, 1453985627, NULL, 0, 86, 1, '8de18a7355287270b3df43c05a1048c0.jpg'),
(732, 1453985628, NULL, 0, 86, 0, 'f5cead36ddfd1bb67a551d21a4a189bf.jpg'),
(733, 1453985628, NULL, 0, 86, 0, 'c302f303c96788afa04ca5f37a9f4996.jpg'),
(734, 1453985737, NULL, 0, 87, 0, '9c780810973a8c9934fd5b152e3eb678.jpg'),
(735, 1453985738, 1453985742, 0, 87, 1, '2130622858813fec5259b99f8b452e75.jpg'),
(736, 1453985738, NULL, 0, 87, 0, '5dd556a5eb29a31bfac08bd48a34231a.jpg'),
(737, 1453987094, NULL, 0, 61, 0, '7a97c8e3764b1f7f8926b61b1299963a.jpg'),
(738, 1453987095, NULL, 0, 61, 0, '048b13f12356c4c5e9e262ca6deb8ad8.jpg'),
(739, 1453987096, 1453987101, 0, 61, 1, '744f8a702159b78c379ed35dc8200eb9.jpg'),
(740, 1453987222, NULL, 0, 62, 1, '8aafb240eb2626fb201353890a8d9035.jpg'),
(741, 1453987222, NULL, 0, 62, 0, '2acd1acec7117ac8e0cd66f46bcc89fa.jpg'),
(742, 1453987223, NULL, 0, 62, 0, 'e5e1db7303758f31dcc458ba512a4f70.jpg'),
(743, 1453987340, NULL, 0, 63, 1, '69fb49c55e1dbae657920116c3121aca.jpg'),
(744, 1453987340, NULL, 0, 63, 0, '43a255e3e909090a1fac9373c2fc397e.jpg'),
(745, 1453987341, NULL, 0, 63, 0, '351457c1b5cc6b56b3ebbf7f555f008f.jpg'),
(746, 1453987425, NULL, 0, 64, 1, 'e88ca78f3d83a09ec4d9a087f7488465.jpg'),
(747, 1453987425, NULL, 0, 64, 0, '0978227f164919ba8f133902efc80082.jpg'),
(748, 1453987426, NULL, 0, 64, 0, 'b644bb174c4ae4927f95ada221fbc89f.jpg'),
(749, 1453987538, NULL, 0, 65, 1, '343f2ed7a53c89842f76680def0ff912.jpg'),
(750, 1453987539, NULL, 0, 65, 0, '57e65d5a9b2fa85373eb495875815dce.jpg'),
(751, 1453987539, NULL, 0, 65, 0, 'e30a0bdda65f94b6b1a783cf3836032e.jpg'),
(752, 1453987606, 1453987619, 0, 66, 1, '4000f9750e94224c62a0c5a4e155a753.jpg'),
(753, 1453987608, 1453987613, 0, 66, 0, '342aa1e8a73c09e0eea9567c78513f98.jpg'),
(754, 1453987608, NULL, 0, 66, 0, 'af7d547f0e53fee0e3cf9315d6120633.jpg'),
(755, 1453988011, NULL, 0, 67, 1, 'cf92f6be7ef042db8506fd217337ec04.jpg'),
(756, 1453988012, NULL, 0, 67, 0, '1c955d65100250aa23c32b1251ae4172.jpg'),
(757, 1453988012, NULL, 0, 67, 0, 'ef590a4c74997d465572a9992b8e9d0e.jpg'),
(758, 1453988013, NULL, 0, 67, 0, '51abdf80e96777fe3e2942af40be5302.jpg'),
(759, 1453988030, NULL, 0, 68, 1, '9b2bd4df4c45164ff451721eec1393a4.jpg'),
(760, 1453988031, NULL, 0, 68, 0, 'c1998bb0dbfe40e6f67bc32950926ac8.jpg'),
(761, 1453988031, NULL, 0, 68, 0, '0f996bb3bf77a488209574a4778316ce.jpg'),
(762, 1453988044, NULL, 0, 69, 0, 'a8fe67dce288d4a18c8bf978c45343a0.jpg'),
(763, 1453988044, 1453988048, 0, 69, 1, 'af5e3e1d7e0cefb9d417502078673523.jpg'),
(764, 1453988045, NULL, 0, 69, 0, 'd01d39d9d4ce8d4a4cda06c13332fe75.jpg'),
(765, 1453988162, NULL, 0, 88, 1, '650e1c2c39fcd2db0fe5552ce0a96813.jpg'),
(766, 1453988163, NULL, 0, 88, 0, '3be3d76ed2062c15a1cc2f205d0d0a04.jpg'),
(767, 1453988163, NULL, 0, 88, 0, '5135307d552ab87e7572ab44441a7f17.jpg'),
(768, 1453988164, NULL, 0, 88, 0, '712a656d0502072dad0aba167bd7854c.jpg'),
(799, 1454003730, NULL, 0, 72, 1, '0e6af6118a01535c6d6b8cb9b9b1cc95.jpg'),
(800, 1454003730, NULL, 0, 72, 0, '694f6b9c879a24b47533cc84694595bf.jpg'),
(801, 1454003730, NULL, 0, 72, 0, '2a04ccf5c609406ec5b421f24f12ee6b.jpg'),
(802, 1454004414, NULL, 0, 71, 0, '220ae0756f73e333b0ca2ae962d00890.jpg'),
(803, 1454004415, NULL, 0, 71, 0, '9515a9318697032022a1c5f1e5f1a217.jpg'),
(804, 1454004415, 1454004421, 0, 71, 1, '99d4ab2baa6efb497393b8caa546b7d2.jpg'),
(805, 1454004532, NULL, 0, 70, 1, '0d8ad8265bc795e5f0b1e46f1872f01d.jpg'),
(806, 1454004533, NULL, 0, 70, 0, '83a111408b7fd7dc7278f858d89c978d.jpg'),
(807, 1454004641, NULL, 0, 89, 1, 'e16e898eaab10b2a8288cc73e4da458c.jpg'),
(808, 1454004641, NULL, 0, 89, 0, 'd72dab98811c694f9cebe61a7fec7b9b.jpg'),
(809, 1454004641, NULL, 0, 89, 0, '1237b20593ad76cb11ac52076f5ffc31.jpg'),
(810, 1454004641, NULL, 0, 89, 0, '759f19c66c4c6e2f3300360c08fa4dff.jpg'),
(811, 1454004739, NULL, 0, 90, 0, 'd6b65ca03dd2c7d5f368e31da0b76bb1.jpg'),
(812, 1454004739, 1454004744, 0, 90, 1, '996c9737bb19cec0cdf8545920a35024.jpg'),
(813, 1454004739, NULL, 0, 90, 0, '1940a37c8014ada7474000a6564813c7.jpg'),
(814, 1454004919, NULL, 0, 91, 0, '4216eeaa83749e2ea84ef3fac9b41b4a.jpg'),
(815, 1454004919, NULL, 0, 91, 0, 'b23d2cc98743135d288b59a2c6d9fcd7.jpg'),
(816, 1454004919, 1454004923, 0, 91, 1, '1a89bd77c02b30bb960a2758628ff129.jpg'),
(817, 1454004919, NULL, 0, 91, 0, 'f1029157d3165c37e5b0e1f2aa15955a.jpg'),
(818, 1454004920, NULL, 0, 91, 0, '1356f04ebf05b76e1a9891b3d995bb71.jpg'),
(819, 1454005068, NULL, 0, 92, 1, '27386468296175ab291d15df6925661d.jpg'),
(820, 1454005069, NULL, 0, 92, 0, '3bdbda6f6678aba8ac4ab48fc9396276.jpg'),
(821, 1454005351, NULL, 0, 93, 0, 'ca3d750b429a89dc44f2a0057ddb43fd.jpg'),
(822, 1454005351, 1454005358, 0, 93, 1, '222d27610fe00ae41888d76765c172b5.jpg'),
(823, 1454005351, NULL, 0, 93, 0, '07aa04206a12deac7d9af34d90bbe5ad.jpg'),
(824, 1454005352, NULL, 0, 93, 0, 'df8a7f28b68d6d22a9493103d4418a45.jpg'),
(825, 1454005352, NULL, 0, 93, 0, '2ba4f0cf91c8cbf93f1c8ac2c6213560.jpg'),
(826, 1454005518, NULL, 0, 94, 0, '3115991de405f0586cca786ed9a506f3.jpg'),
(827, 1454005518, NULL, 0, 94, 0, 'e89a43be8afdeb58c1548ab6e2bbc624.jpg'),
(828, 1454005518, 1454005524, 0, 94, 1, '0123777411cf5317bb713d9afdc3c9c1.jpg'),
(829, 1454005519, NULL, 0, 94, 0, 'a60bc82fc028454e26fbccb06032cc0b.jpg'),
(830, 1454006065, NULL, 0, 74, 1, '2b58dd8bf1316ed14ede88d7fe1a9a92.jpg'),
(831, 1454006065, NULL, 0, 74, 0, '8e41132d8c00cba37625f9a136fbb60d.jpg'),
(832, 1454006066, NULL, 0, 74, 0, '9b7a69731bf43646e1cbdb2140663231.jpg'),
(833, 1454006080, NULL, 0, 75, 1, '6acb9c32679cf8b76b7d4a1138f4ea24.jpg'),
(834, 1454006080, NULL, 0, 75, 0, 'fc8cb8f57e42d9d20d840ab99309de72.jpg'),
(835, 1454006080, NULL, 0, 75, 0, 'a86e19f0861685cfee4a182b11b579b2.jpg'),
(836, 1454006103, NULL, 0, 73, 1, 'f61df09878d457ee66fc7e1fd14addbd.jpg'),
(837, 1454006103, NULL, 0, 73, 0, '100ebfa1515dae2e87a40e2215d27cd3.jpg'),
(838, 1454006103, NULL, 0, 73, 0, 'd1b157543ec2e0536e2531c8099ca05d.jpg'),
(839, 1454006176, NULL, 0, 95, 0, 'a17d7ce694cb0c2fcc7304f8c829030e.jpg'),
(840, 1454006176, NULL, 0, 95, 0, '706140e5d025c19f1d273deeaf757e7c.jpg'),
(841, 1454006176, 1454006179, 0, 95, 1, 'aedca7492b0710de73e4d3553a0b317c.jpg'),
(842, 1454006176, NULL, 0, 95, 0, '9e7f08b943a5925c2aa3937d8ead6e40.jpg'),
(843, 1454006245, NULL, 0, 96, 0, 'b575c6391044b7d0a45f041c6ead7163.jpg'),
(844, 1454006246, NULL, 0, 96, 0, 'ee4095167f127a5938daa8315ddf12ad.jpg'),
(845, 1454006246, 1454006252, 0, 96, 1, '296c2f7b532ab1905d9813cd4843d955.jpg'),
(846, 1454006246, NULL, 0, 96, 0, 'd98d23d8342ece8fe8a9a3da2b95f736.jpg'),
(847, 1454006529, NULL, 0, 97, 1, 'f733af1bc7c73d6def2e19d94fcebd15.jpg'),
(848, 1454006529, NULL, 0, 97, 0, 'ddac1fb506514965e7c818ea145c9d54.jpg'),
(849, 1454006584, NULL, 0, 98, 1, 'ce1d58dc0da917077043c1edf6de746a.jpg'),
(850, 1454006585, NULL, 0, 98, 0, 'f4005f006cd1b560458a5e56ce6a000e.jpg'),
(851, 1454006586, NULL, 0, 98, 0, '34382630bd380991c61b913778c75747.jpg'),
(852, 1454006659, NULL, 0, 99, 1, 'eb148d52f4cc6c272ee88bacf2776732.jpg'),
(853, 1454006660, NULL, 0, 99, 0, '7e3939220d61f4fe145869f7ebe3ddad.jpg'),
(854, 1454058548, NULL, 0, 100, 1, '400f456673efc583825c497288dbdca7.jpg'),
(855, 1454058548, NULL, 0, 100, 0, '6430eebeec685dfd9e0377e4a4b1ca42.jpg'),
(856, 1454058548, NULL, 0, 100, 0, '69f85a02d7e557cfce2803831b8a8bbb.jpg'),
(857, 1454058725, NULL, 0, 101, 0, '91fc0afa9fde681971476b2f569a90f4.jpg'),
(858, 1454058725, NULL, 0, 101, 0, '9ac1437c3d25cd9f1172eccdd710944a.jpg'),
(859, 1454058725, NULL, 0, 101, 0, '82ad5be4bed112cc6d2d23dd72718dd7.jpg'),
(860, 1454058726, 1454058729, 0, 101, 1, 'bd1b148c4d131aaa82c04b236c01de3c.jpg'),
(861, 1454058987, NULL, 0, 102, 0, '5eb6d9d837cb2cb4f855feb94bd3c37d.jpg'),
(862, 1454058987, NULL, 0, 102, 0, '2fe2af665db7a16a74fc53b737da9da5.jpg'),
(863, 1454058987, 1454058992, 0, 102, 1, 'c75370b832affc3be9d433178f864ead.jpg'),
(864, 1454058988, NULL, 0, 102, 0, 'd531b27fef7c738e88924427a446b806.jpg'),
(865, 1454058988, NULL, 0, 102, 0, '2f92add341e2bba7a50c7bc2bc95d7e4.jpg'),
(866, 1454058988, NULL, 0, 102, 0, 'e03de269b92e127c5676a8a50a8c8945.jpg'),
(867, 1454059085, NULL, 2, 103, 0, 'ff99a21eb210baf5b737a1118a6f1732.jpg'),
(868, 1454059086, 1454059089, 1, 103, 1, '73487bc7d72b9ca7f581b1e2c87ed78d.jpg'),
(869, 1454059190, NULL, 0, 104, 0, '79716a60d4dc7b2cd2ce6f7f2944d7a8.jpg'),
(870, 1454059190, NULL, 0, 104, 0, 'ed678a262c53b7d59de4008ad8a1d61e.jpg'),
(871, 1454059190, NULL, 0, 104, 0, '681363239b8832a7b025394d7727e9e2.jpg'),
(872, 1454059191, 1454059195, 0, 104, 1, '348b0a5a662583ff1543ba0703034249.jpg'),
(873, 1454059499, NULL, 0, 105, 0, '6f1f2bda9b0c537fb2fbba398f846fb9.jpg'),
(874, 1454059500, NULL, 0, 105, 0, 'f0697a66790f884a48ea377ab78c91db.jpg'),
(875, 1454059500, 1454059504, 0, 105, 1, '3ee3635b29378b2c1b92d0ee8a8262ae.jpg'),
(876, 1454059500, NULL, 0, 105, 0, '310d75d92bff31e1b2ed9cddafd6a4f2.jpg'),
(877, 1454059805, NULL, 0, 76, 1, 'aa1d555bcf57d51b72b13f70e12d5036.png'),
(878, 1454059806, NULL, 0, 76, 0, 'f8abb9f1d2c623ce76fa99015f02ed2d.png'),
(879, 1454059807, NULL, 0, 76, 0, '2e2b87b1db1abfbb238315250efe109c.png'),
(880, 1454059932, NULL, 0, 77, 1, 'ac95a9367b31d93cf5c8f6e5bf1a34de.jpg'),
(881, 1454059933, NULL, 0, 77, 0, '29dcefd737992e68577493f2fc25bd1b.jpg'),
(882, 1454059933, NULL, 0, 77, 0, 'a084f9c45351e90ae273078e2c9ad7ae.jpg'),
(883, 1454059933, NULL, 0, 77, 0, 'c034e66061a0ea06df768ef31a715136.jpg'),
(884, 1454059934, NULL, 0, 77, 0, '23ac4dc4e934985790049d92413f3f1f.jpg'),
(885, 1454060055, NULL, 0, 78, 1, 'f30fe5c63fd4f0f9e382e275606aa7e5.jpg'),
(886, 1454060055, NULL, 0, 78, 0, '2177dcf84396e89a84ec03c9ca7fe947.jpg'),
(887, 1454060055, NULL, 0, 78, 0, '82e7948122a5339eafdf39c1984f0c4e.jpg'),
(888, 1454060055, NULL, 0, 78, 0, '9e00e5d1fd378ffa2d33377c098035b1.jpg'),
(889, 1454060290, NULL, 0, 46, 1, '6891ab8f29e5eeded563f514d42279f4.jpg'),
(890, 1454060291, NULL, 0, 46, 0, '6f792362ea19c0293b3f8964e8e2744e.jpg'),
(891, 1454060291, NULL, 0, 46, 0, '2ca9b31103dd3841c9d2ed6620748b9e.jpg'),
(892, 1454060427, NULL, 0, 47, 1, '4454777def4b6cf80459a15566e23770.jpg'),
(893, 1454060428, NULL, 0, 47, 0, '658a009a62674b13832e088c81fc3c56.jpg'),
(894, 1454060519, NULL, 0, 48, 1, 'c2c9d0b441f241040ff329880f7840e5.jpg'),
(895, 1454060520, NULL, 0, 48, 0, '72acee67ac7d096953ed7e80e9c19091.jpg'),
(896, 1454060641, NULL, 0, 106, 0, 'c42d9959125e80eb70759301e84a2f87.jpg'),
(897, 1454060641, 1454060646, 0, 106, 1, 'bcedcb826fce171cb73c27dcf27e2b85.jpg'),
(898, 1454060641, 1454060645, 0, 106, 0, 'fde09d1c8dde81cd1a97b982939d7831.jpg'),
(899, 1454060765, NULL, 0, 107, 0, 'b8dd61fda4136456a950e3588db2725d.jpg'),
(900, 1454060766, NULL, 0, 107, 0, 'c35cdae2bdd3bcd425326c3d14d0bb97.jpg'),
(901, 1454060766, 1454060773, 0, 107, 1, '1e2e2f992f6e9d1aad557278cd9d56b7.jpg'),
(902, 1454060896, NULL, 0, 108, 0, '9c08b55f586bed4b24c4db5f3940face.jpg'),
(903, 1454060896, NULL, 0, 108, 0, '5114f3b8896e1cd6f8589c06ee2b82f4.jpg'),
(904, 1454060897, 1454060902, 0, 108, 1, 'a4211640da4bb4ad88bf464938bdda63.jpg'),
(905, 1454060897, NULL, 0, 108, 0, 'c3f02f658d19e6277079eba3c830dea5.jpg'),
(906, 1454061009, NULL, 0, 109, 0, '9c62729b8903346f47fbadec2a603d54.jpg'),
(907, 1454061010, 1454061016, 0, 109, 0, 'cbe0b1362992f9a611732fa3c628a283.jpg'),
(908, 1454061010, 1454061017, 0, 109, 1, '40d2333010aa10e1f683eaee65ffeb1f.jpg'),
(909, 1454061010, NULL, 0, 109, 0, '7cf2bb2259fc83105dd54b5f45164e7c.jpg'),
(910, 1454061480, NULL, 0, 82, 0, 'c137b3097e8e27c8b37ddb50ba4f5d60.jpg'),
(911, 1454061486, 1454061492, 0, 82, 1, '81734926419a4401f8322ece3a5fe691.jpg'),
(912, 1454061488, NULL, 0, 82, 0, 'de6139486400f05812ff930e070a7219.jpg'),
(913, 1454061664, NULL, 0, 83, 0, '45b1ee668c6b32211024e653592d6eab.jpg'),
(914, 1454061664, NULL, 0, 83, 0, 'd4a752509012e86a1eba61ddbcd56ac2.jpg'),
(915, 1454061664, 1454061668, 0, 83, 1, '06020e5f548b14bbe0d3cddd1ddb9609.jpg'),
(916, 1454061665, NULL, 0, 83, 0, '7f7308b85cf8860bf87688003c341c4d.jpg'),
(917, 1454061805, NULL, 0, 110, 1, '8243a32288f42683b19c2e6246d32434.jpg'),
(918, 1454061805, NULL, 0, 110, 0, '5e8803702804b5191526f617a9872bfc.jpg'),
(919, 1454061805, NULL, 0, 110, 0, 'cf13c4865c9d525707be1380fa12fee9.jpg'),
(920, 1454061918, NULL, 0, 111, 0, '3bc233bb01df0372a9bfec43bc40808b.jpg'),
(921, 1454061919, 1454061923, 0, 111, 1, '2bc9719c017326e92508f46b404f342f.jpg'),
(922, 1454061920, NULL, 0, 111, 0, 'cc18d065868523ddbaecfea60658a927.jpg'),
(923, 1454061920, NULL, 0, 111, 0, '14ad7b75a49aaa94e79498940e95c46e.jpg'),
(924, 1454061920, NULL, 0, 111, 0, 'a73c11aa2c911000dad0adbe67389636.jpg'),
(925, 1454062059, NULL, 0, 112, 0, 'e3331e4ecff91a020e6faf5855f6c106.jpg'),
(926, 1454062059, 1454062062, 0, 112, 1, '82a09f8eae1e2e17f6f4d38a116fe1f9.jpg'),
(927, 1454062059, NULL, 0, 112, 0, 'c7b1f5eede7218e7ce3928ce75bebf80.jpg'),
(928, 1454062149, NULL, 0, 113, 0, '862bbc95fd9d5931cc45224a5594912b.jpg'),
(929, 1454062150, NULL, 0, 113, 0, 'c04388b2a78d26f58494f64bb85a20a2.jpg'),
(930, 1454062150, 1454062155, 0, 113, 1, '027e8a2609c1af3e188c8638f016fe97.jpg'),
(931, 1454062150, NULL, 0, 113, 0, '3decac2f8a418b001541276a997e4449.jpg'),
(932, 1454062267, NULL, 0, 114, 0, '39a508af70aec16c9ecdbd65332851f6.jpg'),
(933, 1454062268, NULL, 0, 114, 0, '18de15e953baa59ad1f7c1b346816baf.jpg'),
(934, 1454062268, NULL, 0, 114, 0, '3690cf2b90c165992677c2d3d61dbad0.jpg'),
(935, 1454062268, NULL, 0, 114, 0, 'b55851bfba00ea6741ca568034728662.jpg'),
(936, 1454062268, 1454062272, 0, 114, 1, '992e36604939e00adee689ee475add0a.jpg'),
(937, 1454062268, NULL, 0, 114, 0, '6a7dc3478f86309394a89873b4d743ea.jpg'),
(938, 1454062618, NULL, 0, 79, 1, '9286138925af6f01592d369df039cffc.jpg'),
(939, 1454062618, NULL, 0, 79, 0, '7ab297364a9518ea16a6b030e9ab7b8a.jpg'),
(940, 1454062618, NULL, 0, 79, 0, '19140df14a0a5ceb42b42f80764fc355.jpg'),
(941, 1454062618, NULL, 0, 79, 0, '9c4ecd02c5ed6b28563d844ca9b07c9b.jpg'),
(942, 1454062773, NULL, 0, 80, 0, '0c9f7afa3eb6e0f2a3d65e471d5da307.jpg'),
(943, 1454062774, NULL, 0, 80, 0, '9b2f1cf3b00966ff3111dbc7b4021fe6.jpg'),
(944, 1454062774, NULL, 0, 80, 0, '50a6b10f77b582361cbdfb1496daf1a0.jpg'),
(945, 1454062774, 1454062778, 0, 80, 1, '27a7915a23137d61f99bc2a20df0dc61.jpg'),
(946, 1454062891, NULL, 0, 81, 1, '3e7b9e0e1683ca0fe9a851c4c3051520.jpg'),
(947, 1454062891, NULL, 0, 81, 0, 'e3a6bd35af72c12bc71ee2a54a1a3de1.jpg'),
(948, 1454062891, NULL, 0, 81, 0, 'dd3352263b67f9a846b282d93e050701.jpg'),
(949, 1454063107, NULL, 0, 115, 0, '250a8fe994e364a3773d7a37c57c9985.jpg'),
(950, 1454063107, 1454063112, 0, 115, 1, '5bb962a05bf5a36940a77ba77e496ac6.jpg'),
(951, 1454063107, NULL, 0, 115, 0, '672a7e3dda7c1c8d497aab89cfbcb35c.jpg'),
(952, 1454063263, NULL, 0, 116, 0, 'ca3de76337a3902847896ed0a1b06d64.jpg'),
(953, 1454063264, 1454063268, 0, 116, 1, 'bf2ae8500081b45c16b214f51e50d39e.jpg'),
(954, 1454063264, NULL, 0, 116, 0, '486702ea00e43dd359416babcc76d2da.jpg'),
(955, 1454063264, NULL, 0, 116, 0, '3e15bc76d50ac4b91791d5decf6eeda7.jpg'),
(956, 1454063363, NULL, 0, 117, 0, 'f013ce4cf791d03679469aa718f6f849.jpg'),
(957, 1454063363, NULL, 0, 117, 0, '1178795b54c1a91f9daef568e5bbc4ec.jpg'),
(958, 1454063363, 1454063367, 0, 117, 1, '3d087c18ee28a88fc99dc78933d842a1.jpg'),
(959, 1454063363, NULL, 0, 117, 0, '5642ce231fadd8fdc28d4d0a3d0b3eea.jpg'),
(960, 1454063483, NULL, 0, 118, 0, 'bf00cbf5b566f593ae21362a13b0305a.jpg'),
(961, 1454063483, 1454063486, 0, 118, 1, '69efd778c57c7f5e8561eec011853107.jpg'),
(962, 1454063483, NULL, 0, 118, 0, '8eae61a75de204bd069f97771d9ce798.jpg'),
(963, 1454063563, NULL, 0, 119, 0, 'f37787bc2ccff45d2112176b593251a0.jpg'),
(964, 1454063564, 1454063568, 0, 119, 1, '92f3b935559751b2265a53c2fecf62ef.jpg'),
(965, 1454063564, NULL, 0, 119, 0, '5e2b688fc6f3264f69f0a35dfce03bcf.jpg'),
(966, 1454319171, NULL, 0, 120, 1, 'c0fec459280ee93b12b4e4a711705309.jpg'),
(967, 1454319171, NULL, 0, 120, 0, 'ff807ce787c61c6f1986c3673f181e97.jpg'),
(968, 1454319171, NULL, 0, 120, 0, 'b71ca9198c831d5bbb7aa7313f96432b.jpg'),
(969, 1454319242, NULL, 0, 121, 0, '1015f5cb50794306d2b4125ca59f5584.jpg'),
(970, 1454319243, 1454319246, 0, 121, 0, '2a9e943fa03374c77eea2d57ab7bea8b.jpg'),
(971, 1454319243, 1454319248, 0, 121, 1, '971c2e8906aa445de06e2a0bf33f0b87.jpg'),
(972, 1454319243, NULL, 0, 121, 0, 'f9a8f692a43aa33d4a34398966ec8efb.jpg'),
(973, 1454319244, NULL, 0, 121, 0, 'ae75b887c7022d28ae4c68fd3a05c566.jpg'),
(974, 1454319314, NULL, 0, 122, 0, 'e189a03cc2b6174e231a98d96aece6d0.jpg'),
(975, 1454319314, 1454319318, 0, 122, 1, '8c7b7cecca6ff092982454f7334ab879.jpg'),
(976, 1454319315, NULL, 0, 122, 0, '4ccf2c4bb581f46f9e536c824fb1456f.jpg'),
(977, 1454319365, NULL, 0, 123, 0, '0c6d6feef5e9c20657a192dd10236dbe.jpg'),
(978, 1454319366, NULL, 0, 123, 0, '5302e9694024fe5558e1146096437aae.jpg'),
(979, 1454319367, NULL, 0, 123, 0, '4238115c559a911f53334943e9227da6.jpg'),
(980, 1454319367, 1454319371, 0, 123, 1, 'a0977a205a70991491100a55f09d1368.jpg'),
(981, 1454319412, NULL, 0, 124, 0, '2b8bc8adcaef88284d0b14e634ae7a45.jpg'),
(982, 1454319412, NULL, 0, 124, 0, '48bef535720a1f08c4bce4cf9490bc6d.jpg'),
(983, 1454319412, NULL, 0, 124, 0, 'c5bda8b9fb179cdeec5c7eb74f389c08.jpg'),
(984, 1454319412, NULL, 0, 124, 0, '24d0cf99fcccb969d5aecf34116109cc.jpg'),
(985, 1454319412, NULL, 0, 124, 0, '81f02fbc87f9c57d1e5249ca5fb5f2e4.jpg'),
(986, 1454319412, 1454319415, 0, 124, 1, '00538151c9f5b0c2548a2dd7aff6339e.jpg'),
(987, 1454319856, NULL, 0, 125, 1, '59d38fdc0ca405a5b33d3c7841fd842b.jpg'),
(988, 1454319857, NULL, 0, 125, 0, 'ea4af92df0545e742442fd9521557295.jpg'),
(989, 1454319857, NULL, 0, 125, 0, '8e2d0cec4b76fefc8612be3cba8f68c4.jpg'),
(990, 1454319905, NULL, 0, 126, 0, '6ce02f5777176954b1ffc94d953d65ec.jpg'),
(991, 1454319905, 1454319908, 0, 126, 1, '654581ae81effacc3a69f675c1fe3a94.jpg'),
(992, 1454319905, NULL, 0, 126, 0, 'c82f273fd9e369474092ae0a9c462962.jpg'),
(993, 1454319950, NULL, 0, 127, 0, 'dd1880d4a59d9bc70554db980450f937.jpg'),
(994, 1454319950, NULL, 0, 127, 0, '85fcae91f7f12197f0d6098462d727b3.jpg'),
(995, 1454319951, 1454319954, 0, 127, 1, '720d0d3efa105c644950af32522f4045.jpg'),
(996, 1454320009, NULL, 0, 128, 0, 'a9578d07b90f63897ee57d84785341b1.jpg'),
(997, 1454320009, 1454320016, 0, 128, 1, 'b22809828871f8e09526177f0baed2b1.jpg'),
(998, 1454320010, 1454320013, 0, 128, 0, '242d03aca626cf78fbca10d7bb14afc8.jpg'),
(999, 1454320070, NULL, 0, 129, 0, 'f414790001dee545a59e82d57c48e446.jpg'),
(1000, 1454320070, NULL, 0, 129, 0, 'ab943c7b21343b3e5269ecb6d4e2be8f.jpg'),
(1001, 1454320070, NULL, 0, 129, 0, '18b8a15810f4557c7e42175a12bf0683.jpg'),
(1002, 1454320070, 1454320074, 0, 129, 1, 'b872e6cbc18e01ce6047b418aa0b2f88.jpg'),
(1003, 1454320433, NULL, 0, 130, 0, 'e0846d35b79b97059ac928e8784759af.jpg'),
(1004, 1454320434, 1454320437, 0, 130, 1, '4c81d2327a33a5aa58e18501eccf17a5.jpg'),
(1005, 1454320492, NULL, 0, 131, 0, 'be913b0dc5694f62c5f4326f5ce17d7e.jpg'),
(1006, 1454320492, NULL, 0, 131, 0, 'c62608b28945e55efad0c9318ad97844.jpg'),
(1007, 1454320493, 1454320496, 0, 131, 1, '2e49d83ce27e526f8e7cc578406fb5a8.jpg'),
(1008, 1454320557, NULL, 0, 132, 0, 'e210d5846ba2eceec2ba942d4002a5ea.jpg'),
(1009, 1454320557, NULL, 0, 132, 0, '095b4891b67b0872d09dcfdea6cf2a62.jpg'),
(1010, 1454320557, 1454320560, 0, 132, 1, 'cb0ab2f6740708dff3d7607f41163153.jpg'),
(1011, 1454320558, NULL, 0, 132, 0, 'c59d05b415af1a10a7b35f26e84fdbeb.jpg'),
(1012, 1454320615, NULL, 0, 133, 0, '26222e1e97d9b8873897856e6938dbef.jpg'),
(1013, 1454320616, 1454320619, 0, 133, 1, '7991833d4e097829b93dd9f278b40c14.jpg'),
(1014, 1454320668, NULL, 0, 134, 0, '46906e45201ceb883ca4b3e43fb0a08b.jpg'),
(1015, 1454320668, NULL, 0, 134, 0, '6614b56452da935d34639892ad2328d5.jpg'),
(1016, 1454320668, NULL, 0, 134, 0, '890c520e810507ccd696bb43f1f699e2.jpg'),
(1017, 1454320668, 1454320672, 0, 134, 1, '857b1bc39a911a1a24ae239ee59d16e2.jpg'),
(1018, 1454322295, NULL, 0, 135, 0, '17086e50d45528d8c80a0bad0d36d003.jpg'),
(1019, 1454322295, NULL, 0, 135, 0, 'e6f10d735dc72e567c9e93d0d8339744.jpg'),
(1020, 1454322295, 1454322299, 0, 135, 1, '3bfdb6e9c6abd9d58741a9afd69a73d1.jpg'),
(1021, 1454322346, NULL, 0, 136, 0, '0b49df8cb67727af6eb26fdb795415a3.jpg'),
(1022, 1454322346, 1454322350, 0, 136, 1, '98a88f9a611f19fda6d0507bfeb84ef4.jpg'),
(1023, 1454322347, NULL, 0, 136, 0, '62b142faa5eb460446b7435d05b7dd5f.jpg'),
(1024, 1454322395, NULL, 0, 137, 0, '53ff3671332a1d6662d7097ef02447d6.jpg'),
(1025, 1454322395, 1454322399, 0, 137, 1, '2ab31caa02f13ca7fe793fc6ffde3935.jpg'),
(1026, 1454322396, NULL, 0, 137, 0, '8ea3fa1cb1e70c61d7699e32dd62543f.jpg'),
(1027, 1454322444, NULL, 0, 138, 0, '5f93fd8536213e1b493fba0c0cb1128b.jpg'),
(1028, 1454322444, NULL, 0, 138, 0, 'f82cea06efc222807a7c4c818b2c53f0.jpg'),
(1029, 1454322444, NULL, 0, 138, 0, '4f939283bcfade8414883cd63f9ed2b1.jpg'),
(1030, 1454322444, 1454322448, 0, 138, 1, 'dd84e3af3ac388c165830cf5c2a99be1.jpg'),
(1031, 1454322445, NULL, 0, 138, 0, 'c1a9e596b0f7f1be6cd0327f2f2803d8.jpg'),
(1032, 1454322445, NULL, 0, 138, 0, 'c5575242fd29e5361bec9af5654d22d4.jpg'),
(1033, 1454322495, NULL, 0, 139, 0, '7383116a90c0ffc6a3b3879afd21c9db.jpg'),
(1034, 1454322495, NULL, 0, 139, 0, 'ae1cce1c0b3063dcad4aaea5e97c4d24.jpg'),
(1035, 1454322495, NULL, 0, 139, 0, '851352032583039a485fc68b17fb9605.jpg'),
(1036, 1454322495, 1454322499, 0, 139, 1, '33d7d2b06133a49ca5fe0f732ebf5d5b.jpg'),
(1037, 1454323558, NULL, 0, 140, 1, 'ce8d895d2c71cfb9a98da843140265a7.jpg'),
(1038, 1454323558, NULL, 0, 140, 0, 'e7c130e6bc23cc2e6909dd44a2b8edd8.jpg'),
(1039, 1454323597, NULL, 0, 141, 1, 'da41ddcc27ee136176fdce29738682b2.jpg'),
(1040, 1454323597, NULL, 0, 141, 0, '40438702f208dc7a846de7fd044fdc3f.jpg'),
(1041, 1454323638, NULL, 0, 142, 1, '0677e1ad1f6541eee5747d28058c8180.jpg'),
(1042, 1454323638, NULL, 0, 142, 0, 'e9ed81d1338738690da8a66ccfe64caa.jpg'),
(1043, 1454323638, NULL, 0, 142, 0, '8d12653145ce327fd9fd529bf97ed832.jpg'),
(1044, 1454323638, NULL, 0, 142, 0, '575f35dc33c347d187b07d0ba140483c.jpg'),
(1045, 1454323690, NULL, 0, 143, 0, '326971d7fdcea2ebc896edba1289c5b8.jpg'),
(1046, 1454323691, NULL, 0, 143, 0, 'fea9c60dc43c4d63e41564e3f5195222.jpg'),
(1047, 1454323691, 1454323695, 0, 143, 1, '68d868374b6db3d1cf9bea2f72027e31.jpg'),
(1048, 1454323732, NULL, 0, 144, 0, '5c982d0f22ca28a981b1279b07071224.jpg'),
(1049, 1454323732, NULL, 0, 144, 0, 'f5912eca33cdd38c8eb926dfc3a4a515.jpg'),
(1050, 1454323733, 1454323736, 0, 144, 1, '43de9d0f84d292f30c5ac0451faff7de.jpg'),
(1051, 1454324150, NULL, 0, 145, 0, '45353260ac145a792c6473702dc3a245.jpg'),
(1052, 1454324150, NULL, 0, 145, 0, '0014bf9b863376bac33ba1cf220ef9c1.jpg'),
(1053, 1454324221, 1454324224, 0, 145, 1, '2c57611d39d0339269ecba567a749967.jpg'),
(1054, 1454324435, NULL, 0, 146, 0, 'bb0fb34187c83bc9bce342222d5e6761.jpg'),
(1055, 1454324436, NULL, 0, 146, 0, '521f766892d6953a9be16b9ba10b016c.jpg'),
(1056, 1454324436, 1454324439, 0, 146, 1, '120a2393910ce4cad4acd9300c124ca4.jpg'),
(1057, 1454324483, NULL, 0, 147, 0, 'a09d61fb3daa2187d6b0a973be323fae.jpg'),
(1058, 1454324483, NULL, 0, 147, 0, '962c84e6f34d053265bde8e9ee17cebc.jpg'),
(1059, 1454324483, NULL, 0, 147, 0, 'c61fa782753805642c5bbc08772aec33.jpg'),
(1060, 1454324483, 1454324486, 0, 147, 1, '2e70fbd4a6418b0d25f58157243ec680.jpg'),
(1061, 1454324549, NULL, 0, 148, 0, '0e21d9a8d4d8443d5121adb22c7a3c48.jpg'),
(1062, 1454324550, 1454324554, 0, 148, 1, '7e6ed9ff208f16a45ab64257ba9f3a72.jpg'),
(1063, 1454324550, NULL, 0, 148, 0, '113cdbec9b7ebb3e1bc063ca79d47584.jpg'),
(1064, 1454324595, NULL, 0, 149, 0, '9840481770e3971b1e3eb0602e4ef8fa.jpg'),
(1065, 1454324596, 1454324599, 0, 149, 1, '8b80482102762d94fb58b6db7e57550c.jpg'),
(1066, 1454324596, NULL, 0, 149, 0, 'c90cb4ce6c0405c147528e3f54e05a15.jpg'),
(1067, 1454324992, NULL, 0, 150, 1, 'f7202f3d2445ba1f4fa2839437e2b9b9.jpg'),
(1068, 1454324992, NULL, 0, 150, 0, 'a11e493b6e6499bed3eefea74fa7b8eb.jpg'),
(1069, 1454324992, NULL, 0, 150, 0, '9b1c229f467cf4fd476137d50ab7621f.jpg'),
(1070, 1454324992, NULL, 0, 150, 0, 'f77d7fcd5276da5d38b69dd2ecc946ef.jpg'),
(1071, 1454325041, NULL, 0, 151, 0, 'b13b198a8f241222e11d3dbf1f39945d.jpg'),
(1072, 1454325041, 1454325045, 0, 151, 1, '07ee6659e7a415e9d34f6a93b540908e.jpg'),
(1073, 1454325041, NULL, 0, 151, 0, '3aa351779f28a84504dff5cbc609d13a.jpg'),
(1074, 1454325042, NULL, 0, 151, 0, 'a8b5fd53b719c7d91db04e164bacfc09.jpg'),
(1075, 1454325090, NULL, 0, 152, 0, 'f51fa7d3e0c760a5261a21d55b9043bb.jpg'),
(1076, 1454325090, 1454325095, 0, 152, 1, '0a4eff388b67a57a083f654ac8149b0b.jpg'),
(1077, 1454325091, NULL, 0, 152, 0, '76617532a08b25cc659055fac6e55cb9.jpg'),
(1078, 1454325091, NULL, 0, 152, 0, 'd9ddcf29ba1a7f649373f5b979c58301.jpg'),
(1079, 1454325146, NULL, 0, 153, 0, 'd871aa2b96326c15066e08b700517ed3.jpg'),
(1080, 1454325146, 1454325149, 0, 153, 1, '698e3ecaee23d4e5f2f1530d0c240ad8.jpg'),
(1081, 1454325146, NULL, 0, 153, 0, '73bfd89a892a80532ca90638490b6310.jpg'),
(1082, 1454325188, 1455271808, 0, 154, 1, 'a1263630a87a89b5226af70435ba8254.jpg'),
(1083, 1454325188, 1455271807, 0, 154, 0, 'acbc57eebac7833ff4b8b9922cccfa83.jpg'),
(1084, 1454325188, 1454325191, 0, 154, 0, '0ab43126cd4348da5a5c2cf762f680e8.jpg'),
(1085, 1455806196, NULL, 0, 154, 0, 'ec8c6a0a41584b9206686503bbf15a4b.jpg'),
(1086, 1462879188, NULL, 0, 155, 1, '8d2ec33b46ebc352b67098759eebe5fc.jpg'),
(1087, 1462879776, NULL, 0, 156, 1, 'eab6d6b4851e790b52d71813e8537b8c.jpg'),
(1089, 1464162034, NULL, 0, 156, 0, 'd55ccad693f675098834733e4ff31e57.JPG'),
(1090, 1464612672, NULL, 0, 158, 1, '876558828e8bf44fd34c1638e82bfdb4.jpg'),
(1091, 1464684600, NULL, 0, 161, 1, 'c6121f9633e13ce34552ba96c741d096.jpg'),
(1092, 1464685042, NULL, 0, 160, 1, '1b22ffdbad1330328b791e4a253e6d97.jpg'),
(1093, 1464685157, NULL, 0, 162, 1, 'ae7cd5e751f1f6c5305e881d8a38622d.jpg'),
(1094, 1465035038, 1484669586, 2, 163, 0, 'db6bf874a183ef6709366777e38b5f8b.jpg'),
(1096, 1484640562, NULL, 3, 163, 0, 'ddc02d13729e78bbabca8414b4df6d3f.jpg'),
(1097, 1484640782, 1484672164, 1, 163, 1, '7c44f451228c3f222ad7ad0610598af9.jpg'),
(1098, 1484666230, 1484669583, 0, 163, 0, '472732ee1da9582c984b99fe6e598238.png'),
(1099, 1484739538, NULL, 0, 163, 0, 'a55d6d8ae2f3041aca4d9a1bd309fb2a.jpg');

-- --------------------------------------------------------

--
-- Структура таблиці `catalog_questions`
--

CREATE TABLE IF NOT EXISTS `catalog_questions` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `created_at` int(10) DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(64) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `text` text,
  `catalog_id` int(10) DEFAULT NULL,
  `ip` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `catalog_id` (`catalog_id`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Дамп даних таблиці `catalog_questions`
--

INSERT INTO `catalog_questions` (`id`, `created_at`, `updated_at`, `status`, `name`, `email`, `text`, `catalog_id`, `ip`) VALUES
(1, 1453192288, NULL, 0, 'Darya', 'test.wezom@mail.ru', 'test question', 44, '178.136.229.251'),
(2, 1453375179, NULL, 0, 'Darya', 'test.wezom@mail.ru', 'test question', 44, '178.136.229.251'),
(3, 1453375179, NULL, 0, 'Darya', 'test.wezom@mail.ru', 'test question', 44, '178.136.229.251'),
(4, 1453375425, NULL, 0, 'Darya', 'test.wezom@mail.ru', 'test question', 44, '178.136.229.251'),
(5, 1453446848, NULL, 0, 'Darya', 'test.wezom@mail.ru', 'test question', 44, '178.136.229.251'),
(6, 1461879707, NULL, 0, 'gfgfgd', 'gfdgfdg@mail.ru', 'gfgdg', 43, '78.137.5.210'),
(7, 1484833795, NULL, 0, 'sa', '342@we.er', '&quot;&gt;alert(document.cookie)', 110, '178.136.229.251');

-- --------------------------------------------------------

--
-- Структура таблиці `catalog_related`
--

CREATE TABLE IF NOT EXISTS `catalog_related` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `who_id` int(10) NOT NULL,
  `with_id` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `catalog_id` (`who_id`) USING BTREE,
  KEY `related_id` (`with_id`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=68 ;

--
-- Дамп даних таблиці `catalog_related`
--

INSERT INTO `catalog_related` (`id`, `who_id`, `with_id`) VALUES
(41, 41, 40),
(42, 42, 40),
(43, 42, 41),
(44, 54, 40),
(45, 54, 46),
(46, 54, 48),
(47, 154, 57),
(48, 154, 59),
(49, 154, 84),
(50, 154, 60),
(51, 154, 56),
(52, 154, 45),
(53, 154, 58),
(54, 154, 85),
(55, 154, 86),
(56, 154, 87),
(57, 154, 120),
(58, 154, 124),
(59, 154, 123),
(60, 154, 121),
(61, 154, 122),
(62, 163, 55),
(63, 163, 81),
(64, 163, 79),
(65, 163, 57),
(66, 163, 60),
(67, 163, 59);

-- --------------------------------------------------------

--
-- Структура таблиці `catalog_specifications_values`
--

CREATE TABLE IF NOT EXISTS `catalog_specifications_values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catalog_id` int(10) NOT NULL,
  `specification_value_alias` varchar(255) NOT NULL,
  `specification_alias` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `catalog_id` (`catalog_id`) USING BTREE,
  KEY `spec_alias` (`specification_alias`) USING BTREE,
  KEY `spec_val_alias` (`specification_value_alias`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3425 ;

--
-- Дамп даних таблиці `catalog_specifications_values`
--

INSERT INTO `catalog_specifications_values` (`id`, `catalog_id`, `specification_value_alias`, `specification_alias`) VALUES
(826, 81, 'uniseks', 'sex'),
(827, 81, 'kitaj', 'proizvodstvo'),
(828, 81, 'vesna', 'sezon'),
(829, 81, 'leto', 'sezon'),
(830, 81, 'osen', 'sezon'),
(831, 81, 'chernyj', 'tsvet'),
(1290, 58, 'zhenskij', 'sex'),
(1291, 58, 'indonezija', 'proizvodstvo'),
(1292, 58, 'vesna', 'sezon'),
(1293, 58, 'leto', 'sezon'),
(1294, 58, 'sinij', 'tsvet'),
(1297, 59, 'muzhskoj', 'sex'),
(1298, 59, 'polsha', 'proizvodstvo'),
(1299, 59, 'vesna', 'sezon'),
(1300, 59, 'zima', 'sezon'),
(1301, 59, 'leto', 'sezon'),
(1302, 59, 'osen', 'sezon'),
(1303, 59, 'light_blue', 'tsvet'),
(1306, 60, 'zhenskij', 'sex'),
(1307, 60, 'italija', 'proizvodstvo'),
(1308, 60, 'vesna', 'sezon'),
(1309, 60, 'zima', 'sezon'),
(1310, 60, 'leto', 'sezon'),
(1311, 60, 'osen', 'sezon'),
(1315, 57, 'muzhskoj', 'sex'),
(1316, 57, 'kitaj', 'proizvodstvo'),
(1317, 57, 'vesna', 'sezon'),
(1318, 57, 'leto', 'sezon'),
(1319, 57, 'seryj', 'tsvet'),
(1322, 56, 'muzhskoj', 'sex'),
(1323, 56, 'italija', 'proizvodstvo'),
(1324, 56, 'vesna', 'sezon'),
(1325, 56, 'osen', 'sezon'),
(1326, 56, 'sinij', 'tsvet'),
(1330, 45, 'muzhskoj', 'sex'),
(1331, 45, 'kitaj', 'proizvodstvo'),
(1332, 45, 'vesna', 'sezon'),
(1333, 45, 'zima', 'sezon'),
(1334, 45, 'osen', 'sezon'),
(1335, 45, 'korichnevyj', 'tsvet'),
(1337, 84, 'zhenskij', 'sex'),
(1338, 84, 'italija', 'proizvodstvo'),
(1339, 84, 'vesna', 'sezon'),
(1340, 84, 'zima', 'sezon'),
(1341, 84, 'leto', 'sezon'),
(1342, 84, 'osen', 'sezon'),
(1343, 84, 'sinij', 'tsvet'),
(1346, 87, 'zhenskij', 'sex'),
(1347, 87, 'vesna', 'sezon'),
(1348, 87, 'zima', 'sezon'),
(1349, 87, 'leto', 'sezon'),
(1350, 87, 'osen', 'sezon'),
(1351, 87, 'seryj', 'tsvet'),
(1354, 86, 'zhenskij', 'sex'),
(1355, 86, 'polsha', 'proizvodstvo'),
(1356, 86, 'vesna', 'sezon'),
(1357, 86, 'zima', 'sezon'),
(1358, 86, 'leto', 'sezon'),
(1359, 86, 'osen', 'sezon'),
(1415, 61, 'muzhskoj', 'sex'),
(1416, 61, 'kitaj', 'proizvodstvo'),
(1417, 61, 'vesna', 'sezon'),
(1418, 61, 'zima', 'sezon'),
(1419, 61, 'leto', 'sezon'),
(1420, 61, 'osen', 'sezon'),
(1421, 61, 'white', 'tsvet'),
(1425, 43, 'muzhskoj', 'sex'),
(1426, 43, 'ukraina', 'proizvodstvo'),
(1427, 43, 'vesna', 'sezon'),
(1428, 43, 'leto', 'sezon'),
(1429, 43, 'osen', 'sezon'),
(1430, 43, 'chernyj', 'tsvet'),
(1434, 62, 'muzhskoj', 'sex'),
(1435, 62, 'italija', 'proizvodstvo'),
(1436, 62, 'vesna', 'sezon'),
(1437, 62, 'zima', 'sezon'),
(1438, 62, 'leto', 'sezon'),
(1439, 62, 'osen', 'sezon'),
(1440, 62, 'sinij', 'tsvet'),
(1444, 44, 'zhenskij', 'sex'),
(1445, 44, 'indonezija', 'proizvodstvo'),
(1446, 44, 'leto', 'sezon'),
(1447, 44, 'white', 'tsvet'),
(1451, 63, 'muzhskoj', 'sex'),
(1452, 63, 'ssha', 'proizvodstvo'),
(1453, 63, 'vesna', 'sezon'),
(1454, 63, 'zima', 'sezon'),
(1455, 63, 'leto', 'sezon'),
(1456, 63, 'osen', 'sezon'),
(1457, 63, 'seryj', 'tsvet'),
(1461, 64, 'uniseks', 'sex'),
(1462, 64, 'indonezija', 'proizvodstvo'),
(1463, 64, 'vesna', 'sezon'),
(1464, 64, 'zima', 'sezon'),
(1465, 64, 'leto', 'sezon'),
(1466, 64, 'osen', 'sezon'),
(1467, 64, 'light_blue', 'tsvet'),
(1472, 65, 'uniseks', 'sex'),
(1473, 65, 'polsha', 'proizvodstvo'),
(1474, 65, 'vesna', 'sezon'),
(1475, 65, 'zima', 'sezon'),
(1476, 65, 'leto', 'sezon'),
(1477, 65, 'osen', 'sezon'),
(1478, 65, 'green', 'tsvet'),
(1482, 66, 'zhenskij', 'sex'),
(1483, 66, 'italija', 'proizvodstvo'),
(1484, 66, 'vesna', 'sezon'),
(1485, 66, 'zima', 'sezon'),
(1486, 66, 'leto', 'sezon'),
(1487, 66, 'osen', 'sezon'),
(1488, 66, 'light_blue', 'tsvet'),
(1492, 41, 'uniseks', 'sex'),
(1493, 41, 'indonezija', 'proizvodstvo'),
(1494, 41, 'zima', 'sezon'),
(1495, 41, 'sinij', 'tsvet'),
(1499, 40, 'uniseks', 'sex'),
(1500, 40, 'italija', 'proizvodstvo'),
(1501, 40, 'zima', 'sezon'),
(1502, 40, 'chernyj', 'tsvet'),
(1506, 42, 'muzhskoj', 'sex'),
(1507, 42, 'indonezija', 'proizvodstvo'),
(1508, 42, 'zima', 'sezon'),
(1509, 42, 'green', 'tsvet'),
(1516, 67, 'uniseks', 'sex'),
(1517, 67, 'vetnam', 'proizvodstvo'),
(1518, 67, 'vesna', 'sezon'),
(1519, 67, 'zima', 'sezon'),
(1520, 67, 'leto', 'sezon'),
(1521, 67, 'osen', 'sezon'),
(1522, 67, 'seryj', 'tsvet'),
(1529, 68, 'zhenskij', 'sex'),
(1530, 68, 'kitaj', 'proizvodstvo'),
(1531, 68, 'vesna', 'sezon'),
(1532, 68, 'zima', 'sezon'),
(1533, 68, 'leto', 'sezon'),
(1534, 68, 'osen', 'sezon'),
(1535, 68, 'chernyj', 'tsvet'),
(1542, 69, 'zhenskij', 'sex'),
(1543, 69, 'italija', 'proizvodstvo'),
(1544, 69, 'vesna', 'sezon'),
(1545, 69, 'zima', 'sezon'),
(1546, 69, 'leto', 'sezon'),
(1547, 69, 'osen', 'sezon'),
(1548, 69, 'seryj', 'tsvet'),
(1564, 50, 'muzhskoj', 'sex'),
(1565, 50, 'indonezija', 'proizvodstvo'),
(1566, 50, 'leto', 'sezon'),
(1567, 50, 'sinij', 'tsvet'),
(1638, 72, 'muzhskoj', 'sex'),
(1639, 72, 'ssha', 'proizvodstvo'),
(1640, 72, 'vesna', 'sezon'),
(1641, 72, 'leto', 'sezon'),
(1642, 72, 'osen', 'sezon'),
(1643, 72, 'seryj', 'tsvet'),
(1646, 71, 'muzhskoj', 'sex'),
(1647, 71, 'italija', 'proizvodstvo'),
(1648, 71, 'vesna', 'sezon'),
(1649, 71, 'leto', 'sezon'),
(1651, 70, 'muzhskoj', 'sex'),
(1652, 70, 'kitaj', 'proizvodstvo'),
(1653, 70, 'vesna', 'sezon'),
(1654, 70, 'leto', 'sezon'),
(1655, 70, 'turquoise', 'tsvet'),
(1658, 89, 'muzhskoj', 'sex'),
(1659, 89, 'indonezija', 'proizvodstvo'),
(1660, 89, 'vesna', 'sezon'),
(1661, 89, 'leto', 'sezon'),
(1662, 89, 'chernyj', 'tsvet'),
(1665, 90, 'uniseks', 'sex'),
(1666, 90, 'polsha', 'proizvodstvo'),
(1667, 90, 'vesna', 'sezon'),
(1668, 90, 'leto', 'sezon'),
(1669, 90, 'osen', 'sezon'),
(1670, 90, 'light_blue', 'tsvet'),
(1681, 91, 'muzhskoj', 'sex'),
(1682, 91, 'vetnam', 'proizvodstvo'),
(1683, 91, 'leto', 'sezon'),
(1684, 91, 'sinij', 'tsvet'),
(1692, 92, 'muzhskoj', 'sex'),
(1693, 92, 'ukraina', 'proizvodstvo'),
(1694, 92, 'vesna', 'sezon'),
(1695, 92, 'osen', 'sezon'),
(1696, 92, 'coral', 'tsvet'),
(1706, 93, 'uniseks', 'sex'),
(1707, 93, 'italija', 'proizvodstvo'),
(1708, 93, 'vesna', 'sezon'),
(1709, 93, 'leto', 'sezon'),
(1710, 93, 'korichnevyj', 'tsvet'),
(1714, 94, 'muzhskoj', 'sex'),
(1715, 94, 'kitaj', 'proizvodstvo'),
(1716, 94, 'leto', 'sezon'),
(1717, 94, 'beige', 'tsvet'),
(1863, 99, 'muzhskoj', 'sex'),
(1864, 99, 'vetnam', 'proizvodstvo'),
(1865, 99, 'vesna', 'sezon'),
(1866, 99, 'zima', 'sezon'),
(1867, 99, 'leto', 'sezon'),
(1868, 99, 'osen', 'sezon'),
(1872, 98, 'muzhskoj', 'sex'),
(1873, 98, 'vesna', 'sezon'),
(1874, 98, 'zima', 'sezon'),
(1875, 98, 'leto', 'sezon'),
(1876, 98, 'osen', 'sezon'),
(1880, 97, 'muzhskoj', 'sex'),
(1881, 97, 'ssha', 'proizvodstvo'),
(1882, 97, 'vesna', 'sezon'),
(1883, 97, 'zima', 'sezon'),
(1884, 97, 'leto', 'sezon'),
(1885, 97, 'osen', 'sezon'),
(1886, 97, 'chernyj', 'tsvet'),
(1890, 96, 'zhenskij', 'sex'),
(1891, 96, 'polsha', 'proizvodstvo'),
(1892, 96, 'zima', 'sezon'),
(1893, 96, 'chernyj', 'tsvet'),
(1897, 95, 'zhenskij', 'sex'),
(1898, 95, 'italija', 'proizvodstvo'),
(1899, 95, 'leto', 'sezon'),
(1900, 95, 'sinij', 'tsvet'),
(1903, 73, 'zhenskij', 'sex'),
(1904, 73, 'italija', 'proizvodstvo'),
(1905, 73, 'vesna', 'sezon'),
(1906, 73, 'leto', 'sezon'),
(1907, 73, 'osen', 'sezon'),
(1908, 73, 'krasnyj', 'tsvet'),
(1910, 49, 'muzhskoj', 'sex'),
(1911, 49, 'italija', 'proizvodstvo'),
(1912, 49, 'vesna', 'sezon'),
(1913, 49, 'leto', 'sezon'),
(1914, 49, 'osen', 'sezon'),
(1915, 49, 'chernyj', 'tsvet'),
(1918, 74, 'zhenskij', 'sex'),
(1919, 74, 'kitaj', 'proizvodstvo'),
(1920, 74, 'vesna', 'sezon'),
(1921, 74, 'zima', 'sezon'),
(1922, 74, 'leto', 'sezon'),
(1923, 74, 'osen', 'sezon'),
(1924, 74, 'seryj', 'tsvet'),
(1926, 75, 'zhenskij', 'sex'),
(1927, 75, 'italija', 'proizvodstvo'),
(1928, 75, 'vesna', 'sezon'),
(1929, 75, 'zima', 'sezon'),
(1930, 75, 'leto', 'sezon'),
(1931, 75, 'osen', 'sezon'),
(1932, 75, 'beige', 'tsvet'),
(1942, 100, 'muzhskoj', 'sex'),
(1943, 100, 'indonezija', 'proizvodstvo'),
(1944, 100, 'vesna', 'sezon'),
(1945, 100, 'leto', 'sezon'),
(1946, 100, 'white', 'tsvet'),
(1962, 101, 'muzhskoj', 'sex'),
(1963, 101, 'ukraina', 'proizvodstvo'),
(1964, 101, 'osen', 'sezon'),
(1976, 102, 'zhenskij', 'sex'),
(1977, 102, 'vetnam', 'proizvodstvo'),
(1978, 102, 'vesna', 'sezon'),
(1979, 102, 'osen', 'sezon'),
(1980, 102, 'chernyj', 'tsvet'),
(1991, 103, 'muzhskoj', 'sex'),
(1992, 103, 'italija', 'proizvodstvo'),
(1993, 103, 'vesna', 'sezon'),
(1994, 103, 'chernyj', 'tsvet'),
(2006, 104, 'muzhskoj', 'sex'),
(2007, 104, 'kitaj', 'proizvodstvo'),
(2008, 104, 'vesna', 'sezon'),
(2009, 104, 'osen', 'sezon'),
(2010, 104, 'chernyj', 'tsvet'),
(2013, 88, 'uniseks', 'sex'),
(2014, 88, 'kitaj', 'proizvodstvo'),
(2015, 88, 'zima', 'sezon'),
(2016, 88, 'osen', 'sezon'),
(2017, 88, 'sinij', 'tsvet'),
(2028, 105, 'muzhskoj', 'sex'),
(2029, 105, 'polsha', 'proizvodstvo'),
(2030, 105, 'vesna', 'sezon'),
(2031, 105, 'korichnevyj', 'tsvet'),
(2177, 109, 'muzhskoj', 'sex'),
(2178, 109, 'vetnam', 'proizvodstvo'),
(2179, 109, 'vesna', 'sezon'),
(2180, 109, 'osen', 'sezon'),
(2181, 109, 'chernyj', 'tsvet'),
(2184, 108, 'uniseks', 'sex'),
(2185, 108, 'italija', 'proizvodstvo'),
(2186, 108, 'leto', 'sezon'),
(2187, 108, 'osen', 'sezon'),
(2188, 108, 'seryj', 'tsvet'),
(2192, 107, 'muzhskoj', 'sex'),
(2193, 107, 'polsha', 'proizvodstvo'),
(2194, 107, 'zima', 'sezon'),
(2195, 107, 'osen', 'sezon'),
(2196, 107, 'sinij', 'tsvet'),
(2200, 106, 'uniseks', 'sex'),
(2201, 106, 'kitaj', 'proizvodstvo'),
(2202, 106, 'vesna', 'sezon'),
(2203, 106, 'white', 'tsvet'),
(2217, 76, 'muzhskoj', 'sex'),
(2218, 76, 'kitaj', 'proizvodstvo'),
(2219, 76, 'vesna', 'sezon'),
(2220, 76, 'zima', 'sezon'),
(2221, 76, 'leto', 'sezon'),
(2222, 76, 'osen', 'sezon'),
(2223, 76, 'light_blue', 'tsvet'),
(2226, 46, 'uniseks', 'sex'),
(2227, 46, 'vetnam', 'proizvodstvo'),
(2228, 46, 'vesna', 'sezon'),
(2229, 46, 'zima', 'sezon'),
(2230, 46, 'leto', 'sezon'),
(2231, 46, 'chernyj', 'tsvet'),
(2235, 77, 'uniseks', 'sex'),
(2236, 77, 'kitaj', 'proizvodstvo'),
(2237, 77, 'vesna', 'sezon'),
(2238, 77, 'zima', 'sezon'),
(2239, 77, 'leto', 'sezon'),
(2240, 77, 'osen', 'sezon'),
(2241, 77, 'white', 'tsvet'),
(2244, 47, 'uniseks', 'sex'),
(2245, 47, 'ukraina', 'proizvodstvo'),
(2246, 47, 'vesna', 'sezon'),
(2247, 47, 'osen', 'sezon'),
(2248, 47, 'white', 'tsvet'),
(2252, 78, 'muzhskoj', 'sex'),
(2253, 78, 'polsha', 'proizvodstvo'),
(2254, 78, 'vesna', 'sezon'),
(2255, 78, 'zima', 'sezon'),
(2256, 78, 'leto', 'sezon'),
(2257, 78, 'osen', 'sezon'),
(2258, 78, 'chernyj', 'tsvet'),
(2260, 48, 'uniseks', 'sex'),
(2261, 48, 'ukraina', 'proizvodstvo'),
(2262, 48, 'vesna', 'sezon'),
(2263, 48, 'osen', 'sezon'),
(2264, 48, 'green', 'tsvet'),
(2269, 51, 'uniseks', 'sex'),
(2270, 51, 'ssha', 'proizvodstvo'),
(2271, 51, 'vesna', 'sezon'),
(2272, 51, 'zima', 'sezon'),
(2273, 51, 'leto', 'sezon'),
(2274, 51, 'osen', 'sezon'),
(2275, 51, 'korichnevyj', 'tsvet'),
(2277, 52, 'uniseks', 'sex'),
(2278, 52, 'kitaj', 'proizvodstvo'),
(2279, 52, 'vesna', 'sezon'),
(2280, 52, 'zima', 'sezon'),
(2281, 52, 'leto', 'sezon'),
(2282, 52, 'osen', 'sezon'),
(2283, 52, 'fioletovyj', 'tsvet'),
(2285, 53, 'muzhskoj', 'sex'),
(2286, 53, 'italija', 'proizvodstvo'),
(2287, 53, 'vesna', 'sezon'),
(2288, 53, 'zima', 'sezon'),
(2289, 53, 'leto', 'sezon'),
(2290, 53, 'osen', 'sezon'),
(2291, 53, 'chernyj', 'tsvet'),
(2295, 82, 'zhenskij', 'sex'),
(2296, 82, 'polsha', 'proizvodstvo'),
(2297, 82, 'vesna', 'sezon'),
(2298, 82, 'zima', 'sezon'),
(2299, 82, 'leto', 'sezon'),
(2300, 82, 'osen', 'sezon'),
(2301, 82, 'yellow', 'tsvet'),
(2305, 83, 'zhenskij', 'sex'),
(2306, 83, 'ukraina', 'proizvodstvo'),
(2307, 83, 'vesna', 'sezon'),
(2308, 83, 'zima', 'sezon'),
(2309, 83, 'leto', 'sezon'),
(2310, 83, 'osen', 'sezon'),
(2311, 83, 'white', 'tsvet'),
(2321, 110, 'zhenskij', 'sex'),
(2322, 110, 'italija', 'proizvodstvo'),
(2323, 110, 'vesna', 'sezon'),
(2324, 110, 'zima', 'sezon'),
(2325, 110, 'leto', 'sezon'),
(2326, 110, 'osen', 'sezon'),
(2327, 110, 'chernyj', 'tsvet'),
(2341, 111, 'zhenskij', 'sex'),
(2342, 111, 'vetnam', 'proizvodstvo'),
(2343, 111, 'vesna', 'sezon'),
(2344, 111, 'zima', 'sezon'),
(2345, 111, 'leto', 'sezon'),
(2346, 111, 'osen', 'sezon'),
(2347, 111, 'rozovyj', 'tsvet'),
(2361, 112, 'muzhskoj', 'sex'),
(2362, 112, 'indonezija', 'proizvodstvo'),
(2363, 112, 'vesna', 'sezon'),
(2364, 112, 'zima', 'sezon'),
(2365, 112, 'leto', 'sezon'),
(2366, 112, 'osen', 'sezon'),
(2367, 112, 'korichnevyj', 'tsvet'),
(2381, 113, 'muzhskoj', 'sex'),
(2382, 113, 'kitaj', 'proizvodstvo'),
(2383, 113, 'vesna', 'sezon'),
(2384, 113, 'zima', 'sezon'),
(2385, 113, 'leto', 'sezon'),
(2386, 113, 'osen', 'sezon'),
(2387, 113, 'seryj', 'tsvet'),
(2403, 114, 'muzhskoj', 'sex'),
(2404, 114, 'polsha', 'proizvodstvo'),
(2405, 114, 'vesna', 'sezon'),
(2406, 114, 'zima', 'sezon'),
(2407, 114, 'leto', 'sezon'),
(2408, 114, 'osen', 'sezon'),
(2409, 114, 'chernyj', 'tsvet'),
(2411, 54, 'uniseks', 'sex'),
(2412, 54, 'vetnam', 'proizvodstvo'),
(2413, 54, 'leto', 'sezon'),
(2414, 54, 'korichnevyj', 'tsvet'),
(2424, 79, 'muzhskoj', 'sex'),
(2425, 79, 'italija', 'proizvodstvo'),
(2426, 79, 'vesna', 'sezon'),
(2427, 79, 'zima', 'sezon'),
(2428, 79, 'leto', 'sezon'),
(2429, 79, 'osen', 'sezon'),
(2430, 79, 'chernyj', 'tsvet'),
(2434, 80, 'zhenskij', 'sex'),
(2435, 80, 'polsha', 'proizvodstvo'),
(2436, 80, 'vesna', 'sezon'),
(2437, 80, 'zima', 'sezon'),
(2438, 80, 'leto', 'sezon'),
(2439, 80, 'osen', 'sezon'),
(2440, 80, 'chernyj', 'tsvet'),
(2442, 55, 'uniseks', 'sex'),
(2443, 55, 'vetnam', 'proizvodstvo'),
(2444, 55, 'leto', 'sezon'),
(2445, 55, 'sinij', 'tsvet'),
(2459, 115, 'muzhskoj', 'sex'),
(2460, 115, 'ukraina', 'proizvodstvo'),
(2461, 115, 'vesna', 'sezon'),
(2462, 115, 'zima', 'sezon'),
(2463, 115, 'leto', 'sezon'),
(2464, 115, 'osen', 'sezon'),
(2465, 115, 'chernyj', 'tsvet'),
(2479, 116, 'muzhskoj', 'sex'),
(2480, 116, 'ssha', 'proizvodstvo'),
(2481, 116, 'vesna', 'sezon'),
(2482, 116, 'zima', 'sezon'),
(2483, 116, 'leto', 'sezon'),
(2484, 116, 'osen', 'sezon'),
(2485, 116, 'chernyj', 'tsvet'),
(2501, 117, 'muzhskoj', 'sex'),
(2502, 117, 'kitaj', 'proizvodstvo'),
(2503, 117, 'vesna', 'sezon'),
(2504, 117, 'zima', 'sezon'),
(2505, 117, 'leto', 'sezon'),
(2506, 117, 'osen', 'sezon'),
(2507, 117, 'chernyj', 'tsvet'),
(2523, 118, 'uniseks', 'sex'),
(2524, 118, 'indonezija', 'proizvodstvo'),
(2525, 118, 'vesna', 'sezon'),
(2526, 118, 'zima', 'sezon'),
(2527, 118, 'leto', 'sezon'),
(2528, 118, 'osen', 'sezon'),
(2529, 118, 'chernyj', 'tsvet'),
(2545, 119, 'uniseks', 'sex'),
(2546, 119, 'polsha', 'proizvodstvo'),
(2547, 119, 'vesna', 'sezon'),
(2548, 119, 'zima', 'sezon'),
(2549, 119, 'leto', 'sezon'),
(2550, 119, 'osen', 'sezon'),
(2551, 119, 'korichnevyj', 'tsvet'),
(2565, 120, 'muzhskoj', 'sex'),
(2566, 120, 'indonezija', 'proizvodstvo'),
(2567, 120, 'zima', 'sezon'),
(2568, 120, 'osen', 'sezon'),
(2569, 120, 'sinij', 'tsvet'),
(2582, 121, 'muzhskoj', 'sex'),
(2583, 121, 'italija', 'proizvodstvo'),
(2584, 121, 'vesna', 'sezon'),
(2585, 121, 'leto', 'sezon'),
(2598, 122, 'muzhskoj', 'sex'),
(2599, 122, 'vetnam', 'proizvodstvo'),
(2600, 122, 'zima', 'sezon'),
(2601, 122, 'osen', 'sezon'),
(2613, 123, 'muzhskoj', 'sex'),
(2614, 123, 'kitaj', 'proizvodstvo'),
(2615, 123, 'vesna', 'sezon'),
(2616, 123, 'leto', 'sezon'),
(2617, 123, 'seryj', 'tsvet'),
(2628, 124, 'zhenskij', 'sex'),
(2629, 124, 'polsha', 'proizvodstvo'),
(2630, 124, 'zima', 'sezon'),
(2631, 124, 'osen', 'sezon'),
(2644, 125, 'muzhskoj', 'sex'),
(2645, 125, 'vetnam', 'proizvodstvo'),
(2646, 125, 'vesna', 'sezon'),
(2647, 125, 'zima', 'sezon'),
(2648, 125, 'leto', 'sezon'),
(2649, 125, 'osen', 'sezon'),
(2650, 125, 'krasnyj', 'tsvet'),
(2664, 126, 'muzhskoj', 'sex'),
(2665, 126, 'indonezija', 'proizvodstvo'),
(2666, 126, 'vesna', 'sezon'),
(2667, 126, 'zima', 'sezon'),
(2668, 126, 'leto', 'sezon'),
(2669, 126, 'osen', 'sezon'),
(2670, 126, 'chernyj', 'tsvet'),
(2674, 127, 'muzhskoj', 'sex'),
(2675, 127, 'italija', 'proizvodstvo'),
(2676, 127, 'vesna', 'sezon'),
(2677, 127, 'zima', 'sezon'),
(2678, 127, 'leto', 'sezon'),
(2679, 127, 'osen', 'sezon'),
(2680, 127, 'chernyj', 'tsvet'),
(2694, 128, 'muzhskoj', 'sex'),
(2695, 128, 'kitaj', 'proizvodstvo'),
(2696, 128, 'vesna', 'sezon'),
(2697, 128, 'zima', 'sezon'),
(2698, 128, 'leto', 'sezon'),
(2699, 128, 'osen', 'sezon'),
(2700, 128, 'white', 'tsvet'),
(2714, 129, 'uniseks', 'sex'),
(2715, 129, 'ssha', 'proizvodstvo'),
(2716, 129, 'vesna', 'sezon'),
(2717, 129, 'zima', 'sezon'),
(2718, 129, 'leto', 'sezon'),
(2719, 129, 'osen', 'sezon'),
(2720, 129, 'white', 'tsvet'),
(2733, 130, 'muzhskoj', 'sex'),
(2734, 130, 'polsha', 'proizvodstvo'),
(2735, 130, 'zima', 'sezon'),
(2736, 130, 'fioletovyj', 'tsvet'),
(2744, 131, 'muzhskoj', 'sex'),
(2745, 131, 'ssha', 'proizvodstvo'),
(2746, 131, 'vesna', 'sezon'),
(2747, 131, 'osen', 'sezon'),
(2748, 131, 'chernyj', 'tsvet'),
(2756, 132, 'muzhskoj', 'sex'),
(2757, 132, 'ukraina', 'proizvodstvo'),
(2758, 132, 'vesna', 'sezon'),
(2759, 132, 'osen', 'sezon'),
(2760, 132, 'chernyj', 'tsvet'),
(2772, 133, 'zhenskij', 'sex'),
(2773, 133, 'indonezija', 'proizvodstvo'),
(2774, 133, 'vesna', 'sezon'),
(2775, 133, 'osen', 'sezon'),
(2776, 133, 'seryj', 'tsvet'),
(2789, 134, 'muzhskoj', 'sex'),
(2790, 134, 'polsha', 'proizvodstvo'),
(2791, 134, 'zima', 'sezon'),
(2792, 134, 'chernyj', 'tsvet'),
(2808, 135, 'zhenskij', 'sex'),
(2809, 135, 'vetnam', 'proizvodstvo'),
(2810, 135, 'vesna', 'sezon'),
(2811, 135, 'zima', 'sezon'),
(2812, 135, 'leto', 'sezon'),
(2813, 135, 'osen', 'sezon'),
(2814, 135, 'white', 'tsvet'),
(2827, 136, 'zhenskij', 'sex'),
(2828, 136, 'indonezija', 'proizvodstvo'),
(2829, 136, 'zima', 'sezon'),
(2830, 136, 'leto', 'sezon'),
(2831, 136, 'osen', 'sezon'),
(2832, 136, 'chernyj', 'tsvet'),
(2839, 137, 'zhenskij', 'sex'),
(2840, 137, 'vesna', 'sezon'),
(2841, 137, 'leto', 'sezon'),
(2842, 137, 'seryj', 'tsvet'),
(2854, 138, 'muzhskoj', 'sex'),
(2855, 138, 'kitaj', 'proizvodstvo'),
(2856, 138, 'leto', 'sezon'),
(2857, 138, 'osen', 'sezon'),
(2858, 138, 'chernyj', 'tsvet'),
(2870, 139, 'muzhskoj', 'sex'),
(2871, 139, 'polsha', 'proizvodstvo'),
(2872, 139, 'leto', 'sezon'),
(2873, 139, 'osen', 'sezon'),
(2874, 139, 'sinij', 'tsvet'),
(2882, 140, 'zhenskij', 'sex'),
(2883, 140, 'italija', 'proizvodstvo'),
(2884, 140, 'vesna', 'sezon'),
(2885, 140, 'leto', 'sezon'),
(2886, 140, 'beige', 'tsvet'),
(2898, 141, 'zhenskij', 'sex'),
(2899, 141, 'vetnam', 'proizvodstvo'),
(2900, 141, 'vesna', 'sezon'),
(2901, 141, 'leto', 'sezon'),
(2902, 141, 'chernyj', 'tsvet'),
(2914, 142, 'muzhskoj', 'sex'),
(2915, 142, 'polsha', 'proizvodstvo'),
(2916, 142, 'vesna', 'sezon'),
(2917, 142, 'osen', 'sezon'),
(2918, 142, 'chernyj', 'tsvet'),
(2930, 143, 'muzhskoj', 'sex'),
(2931, 143, 'ukraina', 'proizvodstvo'),
(2932, 143, 'vesna', 'sezon'),
(2933, 143, 'osen', 'sezon'),
(2934, 143, 'korichnevyj', 'tsvet'),
(2946, 144, 'muzhskoj', 'sex'),
(2947, 144, 'ukraina', 'proizvodstvo'),
(2948, 144, 'vesna', 'sezon'),
(2949, 144, 'leto', 'sezon'),
(2950, 144, 'chernyj', 'tsvet'),
(2968, 145, 'muzhskoj', 'sex'),
(2969, 145, 'italija', 'proizvodstvo'),
(2970, 145, 'osen', 'sezon'),
(2971, 145, 'chernyj', 'tsvet'),
(2983, 146, 'muzhskoj', 'sex'),
(2984, 146, 'indonezija', 'proizvodstvo'),
(2985, 146, 'leto', 'sezon'),
(2986, 146, 'osen', 'sezon'),
(2987, 146, 'chernyj', 'tsvet'),
(2998, 147, 'muzhskoj', 'sex'),
(2999, 147, 'ukraina', 'proizvodstvo'),
(3000, 147, 'osen', 'sezon'),
(3001, 147, 'yellow', 'tsvet'),
(3011, 148, 'muzhskoj', 'sex'),
(3012, 148, 'ssha', 'proizvodstvo'),
(3013, 148, 'leto', 'sezon'),
(3014, 148, 'osen', 'sezon'),
(3015, 148, 'krasnyj', 'tsvet'),
(3027, 149, 'muzhskoj', 'sex'),
(3028, 149, 'polsha', 'proizvodstvo'),
(3029, 149, 'leto', 'sezon'),
(3030, 149, 'osen', 'sezon'),
(3031, 149, 'chernyj', 'tsvet'),
(3045, 150, 'zhenskij', 'sex'),
(3046, 150, 'italija', 'proizvodstvo'),
(3047, 150, 'vesna', 'sezon'),
(3048, 150, 'zima', 'sezon'),
(3049, 150, 'leto', 'sezon'),
(3050, 150, 'osen', 'sezon'),
(3051, 150, 'krasnyj', 'tsvet'),
(3061, 151, 'zhenskij', 'sex'),
(3062, 151, 'ssha', 'proizvodstvo'),
(3063, 151, 'vesna', 'sezon'),
(3064, 151, 'osen', 'sezon'),
(3065, 151, 'chernyj', 'tsvet'),
(3077, 152, 'zhenskij', 'sex'),
(3078, 152, 'ukraina', 'proizvodstvo'),
(3079, 152, 'leto', 'sezon'),
(3080, 152, 'osen', 'sezon'),
(3081, 152, 'chernyj', 'tsvet'),
(3093, 153, 'muzhskoj', 'sex'),
(3094, 153, 'ukraina', 'proizvodstvo'),
(3095, 153, 'leto', 'sezon'),
(3096, 153, 'osen', 'sezon'),
(3097, 153, 'chernyj', 'tsvet'),
(3129, 154, 'zhenskij', 'sex'),
(3130, 154, 'italija', 'proizvodstvo'),
(3131, 154, 'zima', 'sezon'),
(3132, 154, 'leto', 'sezon'),
(3133, 154, 'chernyj', 'tsvet'),
(3175, 156, 'zhenskij', 'sex'),
(3176, 156, 'indonezija', 'proizvodstvo'),
(3177, 156, 'vesna', 'sezon'),
(3178, 156, 'leto', 'sezon'),
(3179, 156, 'osen', 'sezon'),
(3180, 156, 'chernyj', 'tsvet'),
(3192, 85, 'zhenskij', 'sex'),
(3193, 85, 'ssha', 'proizvodstvo'),
(3194, 85, 'vesna', 'sezon'),
(3195, 85, 'zima', 'sezon'),
(3196, 85, 'leto', 'sezon'),
(3197, 85, 'osen', 'sezon'),
(3273, 159, 'ukraina', 'proizvodstvo'),
(3304, 158, 'polsha', 'proizvodstvo'),
(3305, 158, 'vesna', 'sezon'),
(3306, 158, 'osen', 'sezon'),
(3307, 158, 'fioletovyj', 'tsvet'),
(3397, 161, 'seryj', 'tsvet'),
(3398, 160, 'kitaj', 'proizvodstvo'),
(3416, 155, 'uniseks', 'sex'),
(3417, 155, 'vetnam', 'proizvodstvo'),
(3418, 155, 'vesna', 'sezon'),
(3419, 155, 'leto', 'sezon'),
(3420, 155, 'osen', 'sezon'),
(3421, 155, 'chernyj', 'tsvet'),
(3424, 163, 'vesna', 'sezon');

-- --------------------------------------------------------

--
-- Структура таблиці `catalog_tree`
--

CREATE TABLE IF NOT EXISTS `catalog_tree` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `created_at` int(10) DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `sort` int(10) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `alias` varchar(255) NOT NULL,
  `parent_id` int(10) NOT NULL DEFAULT '0',
  `image` varchar(64) DEFAULT NULL,
  `h1` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `keywords` text,
  `description` text,
  `text` text,
  `views` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `alias` (`alias`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=61 ;

--
-- Дамп даних таблиці `catalog_tree`
--

INSERT INTO `catalog_tree` (`id`, `created_at`, `updated_at`, `status`, `sort`, `name`, `alias`, `parent_id`, `image`, `h1`, `title`, `keywords`, `description`, `text`, `views`) VALUES
(26, 1447093601, 1484833765, 1, 11, 'Одежда', 'odezhda', 0, '48aae17790ec529e0deb450087d5a22a.jpg', '', '', '', '', '', 570),
(27, 1447093637, 1484833296, 1, 12, 'Обувь', 'obuv', 0, '8f8f36d63e317825d5e1edfd8d075f83.jpg', '', '', '', '', '', 128),
(28, 1447093670, 1484833296, 1, 13, 'Аксессуары', 'aksessuary', 0, '09a2324dbaac9188f59a757813092cb0.jpg', '', '', '', '', '', 67),
(29, 1447093805, 1484833296, 1, 2, 'Верхняя одежда', 'verhnjaja-odezhda', 26, 'ec2be2aacbdc7ff22fa118fa4eddfe47.jpg', '', '', '', '', '', 26156),
(30, 1447093854, 1484833762, 1, 1, 'Рубашки', 'rubashki', 26, '9aac3ade273a7cad5fb4902617d809f8.jpg', '', '', '', '', '', 10373),
(31, 1447093893, 1484833296, 1, 0, 'Джинсы', 'dzhinsy', 26, 'ef9e44074700978e659eb3d91fe6e3e0.jpg', '', '', '', '', '', 9508),
(32, 1447093942, 1484833296, 1, 2, 'Кроссовки', 'krossovki', 27, '6227fc9615898a617aa48711effe7680.jpg', '', '', '', '', '', 5070),
(33, 1447093982, 1484833296, 1, 1, 'Туфли', 'tufli', 27, 'b06349dbd853de3031d9badbbe351841.jpeg', '', '', '', '', '', 1982),
(34, 1447094016, 1484833296, 1, 0, 'Мокасины', 'mokasiny', 27, 'adaa76210381b3db6eec65c764a34ec8.jpg', '', '', '', '', '', 4995),
(35, 1447094058, 1484833296, 1, 1, 'Сумки', 'sumki', 28, 'a722cded1894ae53dfa4dddc32161678.jpg', '', '', '', '', '', 64643),
(36, 1447094096, 1484833296, 1, 0, 'Очки', 'ochki', 28, '30864db826139a5a2669e15d71eed076.jpg', '', '', '', '', '', 1106),
(37, 1451394013, 1484833296, 0, 10, 'Одежда', 'odezhda5300', 0, NULL, '', '', '', '', '', 3),
(38, 1451394085, 1484833296, 0, 9, 'Обувь', 'obuv2145', 0, '4847829b7e2ca3b3f50ccea16e83b2ed.jpg', '', '', '', '', '', 8),
(39, 1463996587, 1484833296, 1, 8, 'Товары для дома', 'tovary-dlja-doma', 0, '104ddf07007d0d6e99809e3e2c1023b6.png', '', '', '', '', '', 519),
(40, 1463996672, 1484833296, 1, 3, 'Подушки', 'podushki', 39, '77c73ff05c047984aea14d74cb0ded10.jpg', '', '', '', '', '', 200),
(41, 1464612090, 1484833296, 1, 2, 'Одеяла', '111', 39, 'c7a248c03d2f31672867dd873fab50d4.jpg', '', '', '', '', '', 1275),
(42, 1464615493, 1484833296, 1, 1, 'одеяла', 'odejala', 39, '83aa45d30efc1dec00ace38b1cd00488.jpg', '', '', '', '', '', 66),
(43, 1464617842, 1484833769, 1, 0, 'кухонные принадлежности', 'kuhonnye-prinadlezhnosti', 39, '2d50de58d70cc0ffa2218be233ec93bc.jpg', '', '', '', '', '', 359),
(44, 1464618172, 1484833296, 0, 4, 'терки', 'terki', 43, '579ea07c47bdb7efb23efd9b7fb7167a.jpg', '', '', '', '', '', 3),
(45, 1464619087, 1484833296, 0, 3, 'терки', 'terki5074', 43, '0b7490c22ae85328e4e2f485a374abee.jpg', '', '', '', '', '', 3),
(46, 1464619392, 1484833296, 0, 2, 'мельница', 'melnitsa', 43, '60cf262f591d9d3e77d1814568fcbff6.jpg', '', '', '', '', '', 0),
(47, 1464626593, 1484833296, 1, 1, 'ложки', 'lozhki', 43, '6f7aaa4feb4d8d0abf417a4b473dab25.jpg', '', '', '', '', '', 23),
(48, 1464626769, 1484833774, 1, 0, 'ложки деревянные', 'lozhki-derevjannye', 43, '48cbbc9bb8b91431fb7f72cb3fcbdc55.jpg', '', '', '', '', '', 30),
(49, 1465024995, 1484833296, 0, 7, 'Куртки женские', 'kurtki-zhenskie', 0, '54449c0a37422235942cab3065f99507.jpg', '', '', '', '', '', 11),
(50, 1465025360, 1484833296, 1, 1, 'Куртка демисезонная', 'kurtka-demisezonnaja', 49, '30d9f42a17360cb933e02fad5917e77f.jpg', '', '', '', '', '', 3),
(51, 1465025936, 1484833296, 1, 6, 'новинка', 'novinka', 0, 'defe6b378d5ed0f063a4a2ab4ecc9e49.jpg', '', '', '', '', '', 34),
(52, 1465026055, 1484833296, 1, 0, 'Теплые ', 'teplye-', 49, '0dc84a51d44455d52d63dc1929fc4387.jpg', '', '', '', '', '', 3),
(53, 1465026124, 1484833296, 1, 0, 'Комфорт', 'komfort', 54, '31efac6cace062443170643d5560e7a5.jpg', '', '', '', '', '', 7),
(54, 1465031600, 1484833296, 1, 0, 'модница', 'modnitsa', 50, 'ebbb80c52652c2761f4af8e874b1fd5d.jpg', '', '', '', '', '', 0),
(55, 1484829199, 1484833296, 1, 0, 'Квартиры', 'kvartiry', 0, NULL, '', '', '', '', '', 0),
(56, 1484832220, 1484833296, 1, 2, 'Виллы', 'villy', 0, NULL, '', '', '', '', '', 1),
(57, 1484832496, 1484834792, 1, 1, 'Пентхаусы', 'penthausy', 0, NULL, '', '', '', '', '', 1),
(58, 1484833200, 1484833296, 0, 3, 'Отели', 'oteli', 0, NULL, '', '', '', '', '', 0),
(59, 1484833245, 1484833296, 0, 4, 'Земля', 'zemlja', 0, NULL, '', '', '', '', '', 0),
(60, 1484833286, 1484833296, 0, 5, 'Коммерческая недвижимость', 'kommercheskaja-nedvizhimost', 0, NULL, '', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Структура таблиці `catalog_tree_brands`
--

CREATE TABLE IF NOT EXISTS `catalog_tree_brands` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `brand_id` int(10) NOT NULL,
  `catalog_tree_id` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `brand_id` (`brand_id`) USING BTREE,
  KEY `catalog_tree_id` (`catalog_tree_id`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=937 ;

--
-- Дамп даних таблиці `catalog_tree_brands`
--

INSERT INTO `catalog_tree_brands` (`id`, `brand_id`, `catalog_tree_id`) VALUES
(291, 31, 29),
(292, 32, 29),
(293, 33, 29),
(294, 31, 30),
(295, 32, 30),
(296, 33, 30),
(297, 29, 30),
(301, 30, 32),
(302, 29, 32),
(303, 31, 33),
(304, 30, 33),
(305, 29, 33),
(306, 31, 34),
(307, 32, 34),
(308, 30, 34),
(309, 33, 34),
(310, 29, 34),
(311, 31, 35),
(312, 32, 35),
(313, 31, 36),
(314, 32, 36),
(336, 32, 31),
(337, 33, 31),
(338, 29, 31),
(339, 41, 31),
(340, 45, 31),
(341, 43, 31),
(342, 31, 40),
(343, 37, 40),
(344, 38, 40),
(345, 35, 40),
(346, 32, 40),
(399, 34, 42),
(400, 31, 42),
(401, 36, 42),
(402, 37, 42),
(403, 38, 42),
(404, 35, 42),
(405, 32, 42),
(406, 40, 42),
(407, 30, 42),
(408, 33, 42),
(409, 29, 42),
(410, 41, 42),
(411, 46, 42),
(412, 44, 42),
(413, 45, 42),
(414, 42, 42),
(415, 43, 42),
(520, 34, 43),
(521, 36, 43),
(522, 37, 43),
(523, 38, 43),
(524, 35, 43),
(525, 32, 43),
(526, 39, 43),
(527, 40, 43),
(528, 30, 43),
(529, 33, 43),
(530, 29, 43),
(531, 41, 43),
(532, 46, 43),
(533, 44, 43),
(534, 45, 43),
(535, 42, 43),
(536, 43, 43),
(555, 34, 45),
(556, 36, 45),
(557, 37, 45),
(558, 38, 45),
(559, 35, 45),
(560, 32, 45),
(561, 39, 45),
(562, 40, 45),
(563, 30, 45),
(564, 33, 45),
(565, 29, 45),
(566, 41, 45),
(567, 46, 45),
(568, 44, 45),
(569, 45, 45),
(570, 42, 45),
(571, 43, 45),
(572, 34, 44),
(573, 31, 44),
(574, 37, 44),
(575, 38, 44),
(576, 35, 44),
(577, 32, 44),
(578, 39, 44),
(579, 40, 44),
(580, 30, 44),
(581, 33, 44),
(582, 29, 44),
(583, 41, 44),
(584, 46, 44),
(585, 44, 44),
(586, 45, 44),
(587, 42, 44),
(588, 43, 44),
(607, 34, 46),
(608, 31, 46),
(609, 36, 46),
(610, 37, 46),
(611, 38, 46),
(612, 35, 46),
(613, 32, 46),
(614, 39, 46),
(615, 40, 46),
(616, 30, 46),
(617, 33, 46),
(618, 29, 46),
(619, 41, 46),
(620, 46, 46),
(621, 44, 46),
(622, 45, 46),
(623, 42, 46),
(624, 43, 46),
(642, 31, 47),
(643, 36, 47),
(644, 37, 47),
(645, 38, 47),
(646, 35, 47),
(647, 32, 47),
(648, 39, 47),
(649, 40, 47),
(650, 30, 47),
(651, 33, 47),
(652, 29, 47),
(653, 41, 47),
(654, 46, 47),
(655, 44, 47),
(656, 45, 47),
(657, 42, 47),
(658, 43, 47),
(694, 34, 48),
(695, 31, 48),
(696, 37, 48),
(697, 38, 48),
(698, 35, 48),
(699, 32, 48),
(700, 39, 48),
(701, 40, 48),
(702, 30, 48),
(703, 33, 48),
(704, 29, 48),
(705, 41, 48),
(706, 46, 48),
(707, 44, 48),
(708, 45, 48),
(709, 42, 48),
(710, 43, 48),
(711, 34, 39),
(712, 31, 39),
(713, 36, 39),
(714, 37, 39),
(715, 38, 39),
(716, 35, 39),
(717, 32, 39),
(718, 39, 39),
(719, 40, 39),
(720, 30, 39),
(721, 33, 39),
(722, 29, 39),
(723, 41, 39),
(724, 46, 39),
(725, 44, 39),
(726, 45, 39),
(727, 42, 39),
(728, 43, 39),
(781, 34, 50),
(782, 36, 50),
(783, 37, 50),
(784, 38, 50),
(785, 35, 50),
(786, 39, 50),
(787, 40, 50),
(788, 30, 50),
(789, 33, 50),
(790, 29, 50),
(791, 41, 50),
(792, 46, 50),
(793, 44, 50),
(794, 45, 50),
(795, 42, 50),
(796, 43, 50),
(814, 34, 51),
(815, 31, 51),
(816, 36, 51),
(817, 37, 51),
(818, 38, 51),
(819, 35, 51),
(820, 32, 51),
(821, 40, 51),
(822, 30, 51),
(823, 33, 51),
(824, 29, 51),
(825, 41, 51),
(826, 46, 51),
(827, 44, 51),
(828, 45, 51),
(829, 42, 51),
(830, 43, 51),
(848, 34, 52),
(849, 31, 52),
(850, 36, 52),
(851, 38, 52),
(852, 35, 52),
(853, 32, 52),
(854, 39, 52),
(855, 40, 52),
(856, 30, 52),
(857, 33, 52),
(858, 29, 52),
(859, 41, 52),
(860, 46, 52),
(861, 44, 52),
(862, 45, 52),
(863, 42, 52),
(864, 43, 52),
(865, 34, 53),
(866, 31, 53),
(867, 36, 53),
(868, 37, 53),
(869, 38, 53),
(870, 35, 53),
(871, 32, 53),
(872, 39, 53),
(873, 40, 53),
(874, 30, 53),
(875, 33, 53),
(876, 29, 53),
(877, 41, 53),
(878, 46, 53),
(879, 44, 53),
(880, 45, 53),
(881, 42, 53),
(882, 43, 53),
(883, 34, 49),
(884, 31, 49),
(885, 36, 49),
(886, 37, 49),
(887, 38, 49),
(888, 35, 49),
(889, 32, 49),
(890, 39, 49),
(891, 40, 49),
(892, 30, 49),
(893, 33, 49),
(894, 29, 49),
(895, 41, 49),
(896, 46, 49),
(897, 44, 49),
(898, 45, 49),
(899, 42, 49),
(900, 43, 49),
(919, 34, 41),
(920, 31, 41),
(921, 36, 41),
(922, 37, 41),
(923, 38, 41),
(924, 35, 41),
(925, 32, 41),
(926, 39, 41),
(927, 40, 41),
(928, 30, 41),
(929, 33, 41),
(930, 29, 41),
(931, 41, 41),
(932, 46, 41),
(933, 44, 41),
(934, 45, 41),
(935, 42, 41),
(936, 43, 41);

-- --------------------------------------------------------

--
-- Структура таблиці `catalog_tree_specifications`
--

CREATE TABLE IF NOT EXISTS `catalog_tree_specifications` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `catalog_tree_id` int(10) NOT NULL,
  `specification_id` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `catalog_tree_id` (`catalog_tree_id`) USING BTREE,
  KEY `specification_id` (`specification_id`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=459 ;

--
-- Дамп даних таблиці `catalog_tree_specifications`
--

INSERT INTO `catalog_tree_specifications` (`id`, `catalog_tree_id`, `specification_id`) VALUES
(203, 29, 23),
(204, 29, 20),
(205, 29, 21),
(206, 29, 22),
(208, 30, 23),
(209, 30, 20),
(210, 30, 21),
(211, 30, 22),
(218, 32, 23),
(219, 32, 20),
(220, 32, 21),
(221, 32, 22),
(223, 33, 23),
(224, 33, 20),
(225, 33, 21),
(226, 33, 22),
(228, 34, 23),
(229, 34, 20),
(230, 34, 21),
(231, 34, 22),
(233, 35, 23),
(234, 35, 20),
(235, 35, 21),
(236, 35, 22),
(238, 36, 23),
(239, 36, 20),
(240, 36, 21),
(241, 36, 22),
(258, 26, 23),
(259, 26, 20),
(260, 26, 21),
(261, 26, 22),
(267, 31, 23),
(268, 31, 20),
(269, 31, 21),
(270, 31, 22),
(272, 40, 24),
(273, 40, 23),
(274, 40, 20),
(275, 40, 21),
(276, 40, 22),
(296, 42, 24),
(297, 42, 23),
(298, 42, 20),
(299, 42, 21),
(300, 42, 22),
(333, 43, 23),
(334, 43, 20),
(335, 43, 21),
(336, 43, 22),
(344, 45, 24),
(345, 45, 23),
(346, 45, 21),
(347, 45, 22),
(349, 44, 23),
(350, 44, 20),
(351, 44, 21),
(352, 44, 22),
(359, 46, 23),
(360, 46, 20),
(361, 46, 21),
(362, 46, 22),
(369, 47, 24),
(370, 47, 23),
(371, 47, 21),
(372, 47, 22),
(383, 48, 23),
(384, 48, 21),
(386, 39, 24),
(387, 39, 23),
(388, 39, 20),
(389, 39, 21),
(390, 39, 22),
(408, 50, 24),
(409, 50, 23),
(410, 50, 20),
(411, 50, 21),
(412, 50, 22),
(417, 51, 24),
(418, 51, 23),
(419, 51, 20),
(420, 51, 22),
(426, 52, 20),
(427, 52, 21),
(428, 52, 22),
(430, 53, 24),
(431, 53, 23),
(432, 53, 20),
(433, 53, 21),
(434, 53, 22),
(435, 49, 24),
(436, 49, 23),
(441, 41, 20),
(442, 41, 22),
(455, 55, 27),
(456, 55, 26),
(457, 56, 27),
(458, 56, 26);

-- --------------------------------------------------------

--
-- Структура таблиці `config`
--

CREATE TABLE IF NOT EXISTS `config` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `zna` text,
  `updated_at` int(10) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `valid` tinyint(1) NOT NULL DEFAULT '1',
  `type` varchar(32) DEFAULT NULL,
  `values` text COMMENT 'Возможные значения в json массиве ключ => значение. Для селекта и радио',
  `group` varchar(128) DEFAULT NULL COMMENT 'Группа настроек',
  PRIMARY KEY (`id`),
  KEY `block` (`group`) USING BTREE,
  KEY `type` (`type`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=51 ;

--
-- Дамп даних таблиці `config`
--

INSERT INTO `config` (`id`, `name`, `zna`, `updated_at`, `status`, `sort`, `key`, `valid`, `type`, `values`, `group`) VALUES
(1, 'E-Mail администратора сайта (отправитель по умолчанию)', 'zavatsky.d.wezom@gmail.com', 1434885560, 1, 1, 'admin_email', 1, 'input', NULL, 'mail'),
(2, 'Название сайта', 'Wezom CMS', 1434885560, 1, 1, 'name_site', 1, 'input', NULL, 'basic'),
(4, 'Copyright', '© 2017 Wezom.CMS', 1434885560, 1, 4, 'copyright', 1, 'input', NULL, 'static'),
(5, 'Отображение всплывающих сообщений на сайте', 'topRight', 1434835221, 0, 2000, 'message_output', 1, 'radio', '[{"key":"Отображать вверху","value":"top"},{"key":"Отображать вверху слева","value":"topLeft"},{"key":"Отображать вверху по центру","value":"topCenter"},{"key":"Отображать вверху справа","value":"topRight"},{"key":"Отображать по центру слева","value":"centerLeft"},{"key":"Отображать по центру","value":"center"},{"key":"Отображать по центру справа","value":"centerRight"},{"key":"Отображать внизу слева","value":"bottomLeft"},{"key":"Отображать внизу по центру","value":"bottomCenter"},{"key":"Отображать внизу справа","value":"bottomRight"},{"key":"Отображать внизу","value":"bottom"}]', 'basic'),
(6, 'Номер в контактах', '0-800-751-271', 1434885560, 1, 8, 'phone', 0, 'input', NULL, 'static'),
(7, 'Количество товаров на странице', '15', 1434885560, 0, 7, 'limit', 1, 'input', NULL, 'basic'),
(8, 'Количество статей на главной странице', '1', 1434885560, 0, 8, 'limit_articles_main_page', 1, 'input', NULL, 'basic'),
(9, 'Количество строк в админ-панели', '10', 1434885560, 1, 9, 'limit_backend', 1, 'input', NULL, 'basic'),
(10, 'VK.com', 'https://vk.com', 1434885560, 0, 10, 'vk', 0, 'input', NULL, 'socials'),
(11, 'FB.com', 'https://www.facebook.com/elitwebmarketing/', 1434885560, 0, 11, 'fb', 0, 'input', NULL, 'socials'),
(12, 'Instagram', 'https://www.instagram.com/elit_web_anna/', 1434885560, 0, 12, 'instagram', 0, 'input', NULL, 'socials'),
(13, 'Имя директора Elit-web', 'Игорь Воловой', 1434885560, 1, 5, 'name_director', 0, 'input', NULL, 'static'),
(17, 'Количество новостей / статей на странице', '1', 1434885560, 0, 7, 'limit_articles', 1, 'input', NULL, 'basic'),
(18, 'Количество групп товаров на странице', '1', 1434885560, 0, 7, 'limit_groups', 1, 'input', NULL, 'basic'),
(19, 'Использовать СМТП', '0', 1434885560, 1, 5, 'smtp', 1, 'radio', '[{"key":"Да","value":1},{"key":"Нет","value":0}]', 'mail'),
(20, 'SMTP server', '', 1434885560, 1, 6, 'host', 0, 'input', NULL, 'mail'),
(22, 'Логин', '1111', 1434885560, 1, 7, 'login', 0, 'input', NULL, 'mail'),
(23, 'Пароль', '1111', 1434885560, 1, 8, 'pass', 0, 'password', NULL, 'mail'),
(24, 'Шифрование', '', 1434885560, 1, 9, 'secure', 0, 'select', '[{"key":"Нет","value":""},{"key":"TLS","value":"tls"},{"key":"SSL","value":"ssl"}]', 'mail'),
(25, 'Порт. Например 25, 465 или 587. (587 по умолчанию)', '587', 1434885560, 1, 10, 'port', 0, 'input', NULL, 'mail'),
(26, 'Имя отправителя латинницей (отображается в заголовке письма)', 'Wezom CMS', 1434885560, 1, 3, 'name', 1, 'input', NULL, 'mail'),
(27, 'Запаролить сайт', '1', 1434885560, 1, 0, 'auth', 1, 'radio', '[{"key":"Да","value":"1"},{"key":"Нет","value":"0"}]', 'security'),
(28, 'Логин', '1', 1434885560, 1, 2, 'username', 0, 'input', NULL, 'security'),
(29, 'Пароль', '1', 1434885560, 1, 3, 'password', 0, 'password', NULL, 'security'),
(30, 'Сократить CSS u JavaScript', '0', 1434885561, 0, 1, 'minify', 1, 'radio', '[{"key":"Да","value":"1"},{"key":"Нет","value":"0"}]', 'speed'),
(31, 'Сократить HTML', '0', 1434885561, 0, 2, 'compress', 1, 'radio', '[{"key":"Да","value":"1"},{"key":"Нет","value":"0"}]', 'speed'),
(32, 'Кеширование размера изображений', '0', NULL, 0, 3, 'cache_images', 1, 'select', '[{"key":"Выключить","value":"0"},{"key":"12 часов","value":"0.5"},{"key":"День","value":"1"},{"key":"3 дня","value":"3"},{"key":"Неделя","value":"7"},{"key":"2 недели","value":"14"},{"key":"Месяц","value":"30"},{"key":"Год","value":"365"}]', 'speed'),
(34, 'Email отправителя', '', 1434885560, 1, 2, 'sender_email', 0, 'input', NULL, 'mail'),
(44, 'Email в контактах', 'office@wezom.com.ua', 1434885560, 1, 9, 'contact_email', 0, 'input', NULL, 'static'),
(45, 'Доп. email для отправки почты', '', 1434885560, 1, 10, 'emails_for_send', 0, 'textarea', NULL, 'basic'),
(46, 'Ссылка на сайт Elit-web', 'https://elit-web.ru', 1434885560, 1, 6, 'link_elit', 0, 'input', NULL, 'static'),
(47, 'Ссылка на сайт', 'http://cms.wezom.net/', 1434885560, 1, 10, 'admin_site', 1, 'input', NULL, 'basic'),
(48, 'Ссылка на админ панель', 'http://cms.wezom.net/wezom', 1434885560, 1, 10, 'admin_link', 1, 'input', NULL, 'basic'),
(49, 'Ссылка на портфолио', 'http://wezom.com.ua/portfolio', 1434885560, 1, 10, 'portfolio_link', 1, 'input', NULL, 'basic'),
(50, 'Текст возле формы заказа', 'Нажмите кнопку «Перейти в админ-панель» и протестируйте нашу CMS. При входе используйте логин и пароль CMS, и оставьте свой email.', 1434885560, 1, 11, 'text_near_order_form', 0, 'textarea', NULL, 'static');

-- --------------------------------------------------------

--
-- Структура таблиці `config_groups`
--

CREATE TABLE IF NOT EXISTS `config_groups` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `alias` varchar(128) NOT NULL,
  `side` varchar(16) NOT NULL DEFAULT 'left' COMMENT 'left, right',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `sort` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `alias` (`alias`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Дамп даних таблиці `config_groups`
--

INSERT INTO `config_groups` (`id`, `name`, `alias`, `side`, `status`, `sort`) VALUES
(1, 'Почта', 'mail', 'right', 1, 1),
(2, 'Базовые', 'basic', 'left', 1, 1),
(3, 'Статика', 'static', 'left', 1, 2),
(4, 'Соц. сети', 'socials', 'left', 1, 3),
(5, 'Безопасность', 'security', 'right', 1, 2),
(6, 'Быстродействие', 'speed', 'right', 0, 3);

-- --------------------------------------------------------

--
-- Структура таблиці `config_types`
--

CREATE TABLE IF NOT EXISTS `config_types` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `alias` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `alias` (`alias`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Дамп даних таблиці `config_types`
--

INSERT INTO `config_types` (`id`, `name`, `alias`) VALUES
(1, 'Однострочное текстовое поле', 'input'),
(2, 'Текстовое поле', 'textarea'),
(3, 'Выбор значения из списка', 'select'),
(4, 'Пароль', 'password'),
(5, 'Радиокнопка', 'radio'),
(6, 'Текстовое поле с редактором', 'tiny');

-- --------------------------------------------------------

--
-- Структура таблиці `contacts`
--

CREATE TABLE IF NOT EXISTS `contacts` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `created_at` int(10) DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(64) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `text` text,
  `ip` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблиці `content`
--

CREATE TABLE IF NOT EXISTS `content` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET cp1251 DEFAULT NULL,
  `alias` varchar(250) CHARACTER SET cp1251 DEFAULT NULL,
  `title` text CHARACTER SET cp1251,
  `description` text CHARACTER SET cp1251,
  `keywords` text CHARACTER SET cp1251,
  `text` text CHARACTER SET cp1251,
  `status` int(1) DEFAULT '1',
  `created_at` int(10) DEFAULT NULL,
  `h1` varchar(250) CHARACTER SET cp1251 DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL,
  `sort` int(11) DEFAULT '0',
  `parent_id` int(10) NOT NULL DEFAULT '0',
  `class` varchar(64) DEFAULT NULL,
  `views` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `action` (`alias`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- Дамп даних таблиці `content`
--

INSERT INTO `content` (`id`, `name`, `alias`, `title`, `description`, `keywords`, `text`, `status`, `created_at`, `h1`, `updated_at`, `sort`, `parent_id`, `class`, `views`) VALUES
(19, 'О нас', 'o-nas', 'О нас', 'О нас', 'О нас', '<p><span style="color: #000000;">&nbsp;&nbsp; <strong>Дорогие посетители и клиенты нашего сайта!</strong><br /> </span><br /><span style="color: #000000;">&nbsp; <br />&nbsp;Интернет магазин одежды и обуви является на данный момент одним из самых перспективных и быстроразвивающихся магазинов молодежной одежды и обуви на территории Украины. В нашем ассортименте представлено более 4000 пар обуви, а также множество курток, пуховиков, футболок, толстовок, кепок и прочих аксессуаров. С каждым днем этот ассортимент увеличивается, в продажу входят все новые и новые модели, а вместе с ним растет и наш уровень обслуживания клиентов. <br /></span><br /><span style="color: #000000;">&nbsp; &nbsp;Начиная с 2012-го года мы успели добиться ошеломительных результатов, расширив ассортимент до максимума и сделав его одним из самых крупных в Украине. За это время мы показали себя с лучшей стороны и накопили добротную базу постоянных клиентов. Изо дня в день мы стараемся стать лучше, наш сервис и обслуживание клиентов становится качественнее, риски связанные с покупкой товара в интернете становятся меньше, а цены и обилие моделей склоняют на свою сторону ежедневно десятки новых клиентов. </span></p>\r\n<p>&nbsp;</p>\r\n<p><br /><span style="color: #000000;">&nbsp; &nbsp;Мы уверены, что вместе с вами, с вашей обоснованной критикой и заслуженной нами похвалой, мы достигнем огромных результатов, и с каждым днем будем баловать вас еще большим количеством качественной обуви и одежды! <br /></span><br /><span style="color: #000000;">&nbsp; &nbsp;С Ув. персонал интернет магазина одежды и обуви!<br /><br /></span></p>\r\n<p><span style="color: #000000;"><video style="display: block; margin-left: auto; margin-right: auto;" src="http://cms.wezom.net/Media/files/filemanager/video.mp4" controls="controls" width="330" height="165">video</video></span></p>\r\n<p style="text-align: left;"><a href="http://blog.wezom.ua/2011/11/blog-post.html" target="_blank">&nbsp;test</a></p>\r\n<p style="text-align: left;">&nbsp;</p>\r\n<script data-skip-moving="true">// <![CDATA[\r\n        (function(w,d,u,b){\r\n                s=d.createElement(''script'');r=1*new Date();s.async=1;s.src=u+''?''+r;\r\n                h=d.getElementsByTagName(''script'')[0];h.parentNode.insertBefore(s,h);\r\n        })(window,document,''https://cdn.bitrix24.ua/b348991/crm/site_button/loader_2_gxmnsj.js'');\r\n// ]]></script>', 1, 1447089913, 'О нас', 1484745320, 1, 0, NULL, 69),
(20, 'FAQ', 'faq', 'FAQ', 'FAQ', 'FAQ', '<h1>Часто задаваемые вопросы</h1>\r\n<p><strong><span style="text-decoration: underline;"><span style="color: #000000; text-decoration: underline;">Гарантия и возврат</span></span></strong></p>\r\n<p><br /><strong><span style="color: #000000;">Есть ли гарантия на товар?</span></strong><br /><span style="color: #000000;"><em>- В нашем интернет магазине предоставляется гарантия 2 месяца на весь ассортимент женской и мужской обуви.</em> </span><br /><br /><strong><span style="color: #000000;">Что делать если обувь пришла бракованная?</span></strong><br /><span style="color: #000000;"><em>- В случае если обувь, которую вы получили, имеет брак, обязательно свяжитесь с нами по одному из этих номеров <span style="text-decoration: underline;">+380(66)915-25-45</span>; <span style="text-decoration: underline;">+380(93)285-75-05</span> или напишите нам на e-mail: <span style="text-decoration: underline;">office@wezom.com.ua</span>. Мы постараемся в кротчайшие сроки сделать возврат или обмен товара.</em> </span><br /><br /><strong><span style="color: #000000;">Что делать если в период гарантийного срока на обуви стали проявляться скрытые дефекты?</span></strong><br /><span style="color: #000000;"><em>- В таком случае обязательно свяжитесь с нами по одному из этих номеров <span style="text-decoration: underline;">+380(66)915-25-45</span>;&nbsp;<span style="text-decoration: underline;">+380(93)285-75-05</span>&nbsp;или напишите нам на e-mail: <span style="text-decoration: underline;">office@wezom.com.ua</span>. Мы постараемся в кротчайшие сроки сделать возврат или обмен товара.</em> </span><br /><br /><strong><span style="color: #000000;">Есть ли гарантия на одежду?</span></strong><br /><em><span style="color: #000000;">- Наш интернет магазин не предоставляет гарантию на одежду и головные уборы. </span></em><br /><br /><strong><span style="color: #000000;">Что делать если обувь или одежда не подошли по размеру?</span></strong><br /><em><span style="color: #000000;">-Если случилось так, что придя домой, вы поняли, что обувь или одежда не подходит вам по размеру, свяжитесь обязательно с нами, и мы осуществим возврат или обмен товара.</span></em><br /><br /><strong><span style="color: #000000;">Как вернуть товар?</span></strong><br /><span style="color: #000000;"><em>-Вы идете в отделение новой почты и высылаете товар на указанные реквизиты. При этом все затраты связанные с доставкой товара вы берете на себя. Дабы минимизировать эти затраты, мы предлагаем отправлять товар без наложенного платежа, и при получении его нами, деньги в полном объеме будут перечислены на указанный вами номер банковской карточки.</em> </span><br /><br /><strong><span style="color: #000000;">В какой период я могу вернуть или обменять товар?</span></strong><br /><span style="color: #000000;"><em>-Если вещь, которую вы хотите вернуть сохранила товарный вид, а так же тару (коробка, пакет) в которой она поставлялась, вы можете вернуть ее в течение 14 дней с момента получения на почте. Если же это обмен, после получения нами товара, мы в этот же день высылаем вам другой надлежащего качества и размера.</em> </span></p>\r\n<p>&nbsp;</p>\r\n<p><span style="text-decoration: underline;"><strong><span style="color: #000000; text-decoration: underline;">Оплата</span></strong></span></p>\r\n<p><br /><strong><span style="color: #000000;">Можно ли оплатить товар при получении?</span></strong><br /><em><span style="color: #000000;">-Так как мы высылаем товар наложенным платежом, вы оплачиваете его при получении на почте. Если же это курьерская доставка, оплата производится при личной встрече.</span></em></p>\r\n<p><strong><span style="color: #000000;">Могу ли я оплатить полностью всю стоимость товара на карточку?</span></strong><br /><em><span style="color: #000000;">-Вы можете оплатить полностью всю стоимость товара на карточку до того как он будет отправлен вам. Просим заранее сообщать об этом.</span></em></p>\r\n<p><strong><span style="color: #000000;">Какие способы электронной оплаты вы поддерживаете?</span></strong><br /><em><span style="color: #000000;">-Вы можете оплатить товар прямо на сайте через систему электронных платежей Приват24 или же через терминал по номеру банковской карточки.</span></em></p>\r\n<p><strong><span style="color: #000000;">Могу ли я примерять товар перед оплатой?</span></strong><br /><em><span style="color: #000000;">-Да, вы можете примерять товар перед оплатой на почте. При этом вы оставляете задаток оператору в размере полной стоимости товара, после чего идете делать осмотр и примерку. Если товар вам подходит, вы оплачиваете доставку и забираете его. Если же нет, пишите заявление на возврат и возвращаете товар обратно нам.</span></em><br /><br /><br /><strong><span style="text-decoration: underline;"><span style="color: #000000; text-decoration: underline;">Доставка</span></span></strong></p>\r\n<p><br /><br /><strong><span style="color: #000000;">Как происходит доставка товара?</span></strong><br /><em><span style="color: #000000;">-Доставка товара осуществляется службой экспресс доставки Новая почта.</span></em></p>\r\n<p><strong><span style="color: #000000;">Если я с Днепропетровска, могу ли я забрать товар лично при встрече?</span></strong><br /><em><span style="color: #000000;">-Да, вы можете забрать товар лично при встрече, заранее оговорив с оператором место и время.</span></em></p>\r\n<p><strong><span style="color: #000000;">Сколько по времени занимает доставка товара?</span></strong><br /><em><span style="color: #000000;">-Срок доставки товара в наличии составляет 1-3 дня по территории Украины. Если же товара в наличии нет, срок доставки увеличивается до 14-28 дней.</span></em></p>\r\n<p><strong><span style="color: #000000;">Какими курьерскими службами вы отправляете товар?</span></strong><br /><em><span style="color: #000000;">-В данный момент доставка осуществляется только компанией Новая почта.</span></em></p>\r\n<p><strong><span style="color: #000000;">Как я узнаю о том, что товар пришел?</span></strong><br /><em><span style="color: #000000;">-Мы обязательно связываемся с клиентом за 1-2 дня до того как товар поступит на наш склад в Днепропетровск. Когда товар будет доставлен на отделение Новой почты в вашем городе, на ваш номер придет sms оповещение о том, что товар прибыл.</span></em></p>\r\n<p><strong><span style="color: #000000;">Кто оплачивает доставку?</span></strong><br /><em><span style="color: #000000;">-Доставку оплачивает клиент. В стоимость товара не входит сума доставки.</span></em></p>\r\n<p><strong><span style="color: #000000;">Cколько стоит доставка?</span></strong><br /><em><span style="color: #000000;">-Стоимость доставки рассчитывается индивидуально, и зависит от объема и стоимости товара, а так же от отдаленности между городом отправителя и городом получателя. В среднем стоимость доставки одной пары кроссовок или одной футболки составляет от 25 до 35 грн. Так же клиент оплачивает обратную доставку денег 30-40 грн. В общем, средняя стоимость доставки составляет 55-75 грн.</span></em></p>\r\n<p><strong><span style="color: #000000;">Нужны ли документы для получения товара?</span></strong><br /><em><span style="color: #000000;">-При получении товара вы обязаны предъявить документы оператору, подтверждающие вашу личность. Это может быть как паспорт, так и водительские права.</span></em></p>\r\n<p><strong><span style="color: #000000;">Если я несовершеннолетний?</span></strong><br /><em><span style="color: #000000;">-Если вы еще не достигли совершеннолетия, ваши родители могут получить товар за вас, при этом в заказе следует указывать Фамилию и Имя одного из родителей.</span></em><br /><br /><br /><span style="text-decoration: underline;"><strong><span style="color: #000000; text-decoration: underline;">Качество товара и производство </span></strong></span></p>\r\n<p><br /><br /><strong><span style="color: #000000;">Товар оригинальный?</span></strong><br /><em><span style="color: #000000;">-Мы занимаемся исключительно качественными копиями, товар не оригинальный. На всю обувь предоставляется гарантия 2 месяца, а так же право возврата и обмена товара.</span></em></p>\r\n<p><strong><span style="color: #000000;">Качество хорошее?</span></strong><br /><em><span style="color: #000000;">-Так как у каждого человека свое субъективное понимание качественного товара, мы не вправе внушать ему свою точку зрения и свое мнение. Поэтому, мы предоставляем клиенту возможность перед оплатой тщательно осмотреть товар и примерять его. Мы занимаемся высококачественными копиями и предоставляем гарантию на всю обувь.</span></em></p>\r\n<p><strong><span style="color: #000000;">Кто производитель?</span></strong><br /><em><span style="color: #000000;">-Весь товар производится в Китае.</span></em></p>\r\n<p><strong><span style="color: #000000;">Чем отличается оригинальные модели от копий (реплик)?</span></strong><br /><em><span style="color: #000000;">-В отличие от оригинальных моделей в копиях используются искусственные материалы, искусственная кожа и искусственная замша. По всем же остальным параметрам они полностью соответствуют оригинальным моделям.</span></em></p>\r\n<p style="text-align: left;"><strong><span style="color: #000000;">Есть ли у вас оригинал?</span></strong><br /><em><span style="color: #000000;">-Мы занимаемся исключительно качественными копиями, совмещая доступную цену с хорошим качеством товара. Возможно, в ближайшем будущем у нас появятся и оригинальные модели.</span></em><br /><br /><span style="text-decoration: underline;"><strong><span style="color: #000000; text-decoration: underline;"><br />Размеры</span></strong></span></p>\r\n<p style="text-align: left;"><strong><span style="color: #000000;"><br />Как правильно подобрать размер обуви?</span></strong><br /><em><span style="color: #000000;">-Приоритетом при выборе размера является длина стопы в сантиметрах. Но так как при замере часто возникают погрешности, мы ориентируемся на обозначения с размерами, которые указаны на ваших повседневных кроссовках с внутренней стороны язычка.&nbsp;</span></em></p>\r\n<p style="text-align: left;"><strong><span style="color: #000000;">У вас обувь маломерная?</span></strong><br /><em><span style="color: #000000;">-Да, все наша обувь маломерная, поэтому советуем вам, выбирать из двух размеров которые вы носите, самый большой. Это и будет европейский размер. Например, если вам подходит и 37-й и 38-й размеры, значит заказывать нужно 38-й.</span></em></p>\r\n<p style="text-align: left;"><strong><span style="color: #000000;">Как подобрать размер куртки или футболки?</span></strong><br /><em><span style="color: #000000;">-Так как у нас все куртки и футболки маломерные, и буквенные обозначения не совпадают с повседневными, размер подбирать следует исходя из роста и веса. Зная два этих параметра, мы можем более точно выбрать вам подходящий размер.&nbsp;<br /><br /></span></em></p>', 1, 1447090050, 'FAQ', 1484745335, 0, 19, NULL, 64),
(21, 'Доставка', 'dostavka', 'Доставка', 'Доставка', 'Доставка', '<p><span style="color: #000000;"><strong>Сроки доставки</strong></span><br /><br /><span style="color: #000000;">&nbsp; <em>Доставка товара под заказ</em> &ndash; подразумевает под сбой то, что товара в данный момент нет в наличии, он находится за границей, и срок его доставки составит от 14&nbsp;до 28&nbsp;дней. При этом время, затрачиваемое на доставку товара по территории Украины не учитывается.<br /></span><br /><span style="color: #000000;">&nbsp; <em>Доставка товара в наличии</em> &ndash; самый быстрый способ, так как товар находится на складе в Днепропетровске, и срок его доставки составит 1-3 дня.</span></p>\r\n<p><br /><span style="color: #000000;"><strong>Способы доставки</strong></span><br /><br /><span style="color: #000000;">&nbsp; <em>Курьерская доставка</em> &ndash; осуществляется курьером интернет магазина, и подразумевает под собой передачу товара непосредственно в руки клиенту при личной встрече. Время и место оговариваются после того, как товар поступил на склад в город Днепропетровск.<br /></span><br /><span style="color: #000000;">&nbsp; <em>Доставка Новой почтой</em> - осуществляется лидером экспресс доставки в Украине, компанией &laquo;Нова пошта&raquo; и составляет 1-3 дня с момента поступления товара на склад в город Днепропетровск. Все адреса и номера отделений вы можете посмотреть непосредственно на сайте компании отправите<img class="" src="http://www.kitco.com/images/live/silver.gif" alt="" width="630" height="400" />ля: http://novaposhta.ua/</span><br /><br /></p>\r\n<p>&nbsp;</p>\r\n<p><span style="color: #000000;"><strong>Стоимость доставки</strong></span><br /><br /><span style="color: #000000;">&nbsp; <em>Курьерская доставка</em> по городу Днепропетровск бесплатная.</span><br /><br /><span style="color: #000000;">&nbsp; <em>Доставка Новой почтой</em> рассчитывается индивидуально, и зависит от объема и стоимости товара, а так же от отдаленности между городом отправителя и городом получателя. В среднем стоимость доставки одной пары кроссовок или одной футболки составляет от 25 до 35 грн. Так же клиент оплачивает обратную доставку денег 30-40 грн. В общем, средняя стоимость доставки составляет 55-75 грн.</span><br /><br /><span style="color: #000000;"><em><strong>Важно!</strong></em></span><br /><br /><span style="color: #000000;">&nbsp; 1.&nbsp;<em>В связи с непредвиденными обстоятельствами, такими как пожары, наводнения, или другие стихийные бедствия на территории страны производителя, а так же в связи с праздниками или затрудненной работой таможенной службы, возможны задержки товара на незначительный срок. <br />&nbsp; 2. Доставка осуществляется только по территории Украины и не распространяется на территорию России, Белоруссии, а так же территории других стран пост советского пространства.</em></span></p>', 1, 1447090182, 'Доставка', 1484834830, 4, 0, NULL, 52),
(22, 'Оплата', 'oplata', 'Оплата', 'Оплата', 'Оплата', '<p style="text-align: left;"><span style="color: #000000;">&nbsp; Ни для кого не секрет, что при покупке в интернет магазине, человек подвергается определенным рискам, одним из которых является оплата товара. Во многих интернет магазинах она осуществляется еще до того как клиент получает свой заказ. При этом он может ожидать от продавца чего угодно: получения некачественного товара, несоответствие размеров или цветов, а в худшем случае продавец вообще пропадет сразу же после получении 100%-й оплаты товара.<br /></span><br /><span style="color: #000000;">&nbsp; &nbsp;Дабы минимизировать эти риски и сделать покупку товара в интернет магазине более безопасной, мы предоставляем несколько способов оплаты товара.</span></p>\r\n<p style="text-align: left;"><span style="color: #000000;">&nbsp; <span style="text-decoration: underline;">Наложенным платежом (более безопасный)</span> &ndash; осуществляется при встрече с курьером интернет магазина или же в отделении Новой почты при получении товара, при этом, клиент оплачивает обратную доставку денег, величина которой зависит от стоимости товара и в среднем составляет 30-40 грн.</span></p>\r\n<p style="text-align: left;"><span style="color: #000000;">&nbsp; <span style="text-decoration: underline;">Электронный перевод (менее затратный)</span> &ndash; осуществляется на карточку Приватбанка через терминал или же через систему электронных платежей Приват24. В случае перевода на карточку Приватбанка через терминал, реквизиты для оплаты высылаются интернет магазином на e-mail клиента или же на мобильный номер. После перевода средств, клиент обязуется, сообщит продавцу точное время и суму зачисления. Выбрав этот способ, покупатель экономит примерно 30-40 грн., на обратной доставке денег.<br /></span></p>', 1, 1447090201, 'Оплата', 1484747372, 3, 0, NULL, 13),
(23, 'Гарантия', 'garantija', 'Гарантия', 'Гарантия', 'Гарантия', '<p style="text-align: left;"><span style="color: #000000;">&nbsp; По статистике, при выборе интернет магазина, 70% потенциальных покупателей уделяют особое внимание наличию предоставления интернет магазином гарантии на товар. Это очень важный&nbsp;момент и мы уделяем ему особое внимание.&nbsp;<br /><br />&nbsp; Гарантия предоставляется на весь сегмент обуви в нашем интернет магазине и составляет 2 месяца с момента получения товара клиентом.<br /></span><br /><span style="color: #000000;">&nbsp; Если в период гарантийного срока, в процессе носки появились непредвиденные дефекты (отрывы по шву или отклеивание), вы имеете право на обмен товара или возврат денег. В случае возникновения такой ситуации, вы должны как можно быстрее сообщить об этом продавцу, предоставив несколько фотографий места дефекта, а так же общего вида обуви.<br /></span><br /><span style="color: #000000;">&nbsp; После проведенной оценки и просмотра фотографий, мы принимаем решение о возврате или же обмене товара.</span></p>\r\n<p style="text-align: left;">&nbsp;</p>\r\n<p style="text-align: left;">&nbsp;</p>\r\n<p><br /><br /></p>', 1, 1447090225, 'Гарантия', 1484747371, 2, 0, NULL, 13),
(24, 'Возврат', 'vozvrat', 'Возврат', 'Возврат', 'Возврат', '<p style="text-align: left;">&nbsp;<span style="color: #000000;">&nbsp; В случае если вам не подошел размер, не понравилась сама модель или же имеют место быть причины, о которых вы не считаете нужным уведомить продавца, вы имеете право вернуть товар в течение 14-ти дней с момента его получения. При этом вещь должна быть неношеной, иметь товарный вид и тару (коробку, пакет) в котором изначально поставлялась вам.</span><br /><br /><br /><span style="color: #000000;"><strong><span style="text-decoration: underline;">Процесс возврата и обмена товара</span></strong></span><br /><br /><span style="color: #000000;">&nbsp; Уведомив продавца о возврате и согласовав с ним все моменты, клиент возвращает товар на полученные им реквизиты, новой почтой. При этом все затраты связанные с доставкой он берет на себя. Рекомендуем высылать товар без наложенного платежа, дабы минимизировать затраты связанные с обратной доставкой денег, предварительно указав продавцу ваши реквизиты (Приватбанк). После получения товара, в течение двух дней продавец обязуется перечислить деньги в полном объеме на номер карты, указанной покупателем.<br /></span></p>\r\n<p style="text-align: left;"><span style="text-decoration: underline; color: #000000;"><em><strong>Важно!</strong></em></span></p>\r\n<p style="text-align: left;"><span style="color: #000000;"><em><span style="text-decoration: underline;">Возврату и обмену не подлежит товар, если:</span> <br />- имеет царапины и порезы, связанные с неправильной его ноской; <br />- бывший в ремонте; <br />- имеет потертый или грязный вид; <br />- не имеет тары (коробка, пакет), в которой изначально поставлялся покупателю.</em></span></p>', 1, 1447090248, 'Возврат', 1484747365, 0, 0, NULL, 13),
(25, 'Bogdan', 'b', '', '', '', '<p><a title="Для того чтобы заменить фото в галерее нужно" href="http://cms.wezom.ks.ua/Media/files/filemanager/%D0%94%D0%BB%D1%8F%20%D1%82%D0%BE%D0%B3%D0%BE%20%D1%87%D1%82%D0%BE%D0%B1%D1%8B%20%D0%B7%D0%B0%D0%BC%D0%B5%D0%BD%D0%B8%D1%82%D1%8C%20%D1%84%D0%BE%D1%82%D0%BE%20%D0%B2%20%D0%B3%D0%B0%D0%BB%D0%B5%D1%80%D0%B5%D0%B5%20%D0%BD%D1%83%D0%B6%D0%BD%D0%BE.docx">Для того чтобы заменить фото в галерее нужно</a></p>', 0, 1458158661, '', 1481893495, 0, 22, NULL, 1),
(26, 'bogdan2', 'b2', 'zagotitle', '', 'ada ada adad   ', '<p>dasdasd</p>\r\n<h1 style="text-align: center;"><span style="font-family: ''times new roman'', times; font-size: 18pt;">asdassad</span></h1>\r\n<p>dasd</p>\r\n<p>asd</p>', 1, 1458158994, 'zagolovok', 1481893495, 0, 25, NULL, 0);

-- --------------------------------------------------------

--
-- Структура таблиці `control`
--

CREATE TABLE IF NOT EXISTS `control` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `h1` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `keywords` text,
  `description` text,
  `text` text,
  `alias` varchar(32) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `other` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Дамп даних таблиці `control`
--

INSERT INTO `control` (`id`, `name`, `h1`, `title`, `keywords`, `description`, `text`, `alias`, `status`, `other`) VALUES
(1, 'Главная страница', 'Wezom CMS', 'Wezom CMS', 'Wezom CMS', 'Wezom CMS', '', 'index', 1, NULL),
(2, 'Контакты', 'Контакты', 'Контакты', 'Контакты', 'Контакты', '<p><strong>Контактная информация компании Интернет-магазин "Airpac"</strong></p>\r\n<p><br />Название:&nbsp;&nbsp; &nbsp;Интернет-магазин одежды и обуви<br />Контактное лицо:&nbsp;&nbsp;&nbsp; Администратор<br />Адрес:&nbsp;&nbsp; &nbsp;Только online-магазин, Украина<br />Телефон:&nbsp;&nbsp; &nbsp;<br />+38(XXX)XXX-XX-XX<br />+38(XXX)XXX-XX-XX<br />Email:&nbsp;&nbsp;&nbsp; <a href="mailto:office@wezom.com.u">office@wezom.com.ua</a></p>', 'contact', 0, ''),
(3, 'Статьи', 'Статьи', 'Статьи', 'Статьи', 'Статьи', NULL, 'articles', 0, NULL),
(5, 'Новости', 'Новости', 'Новости', 'Новости', 'Новости', NULL, 'news', 0, NULL),
(6, 'Поиск', 'Поиск', 'Поиск', 'Поиск', 'Поиск', NULL, 'search', 0, NULL),
(7, 'Карта сайта', 'Карта сайта', 'Карта сайта', 'Карта сайта', 'Карта сайта', NULL, 'sitemap', 0, NULL),
(8, 'Производители', 'Производители', 'Производители', 'Производители', 'Производители', NULL, 'brands', 0, NULL),
(9, 'Каталог продукции', 'Каталог', 'Каталог', 'Каталог', 'Каталог', NULL, 'catalog', 0, NULL);

-- --------------------------------------------------------

--
-- Структура таблиці `cron`
--

CREATE TABLE IF NOT EXISTS `cron` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `email` varchar(64) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `text` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблиці `gallery`
--

CREATE TABLE IF NOT EXISTS `gallery` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `created_at` int(10) DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL,
  `image` varchar(128) DEFAULT NULL,
  `h1` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `keywords` text,
  `description` text,
  `alias` varchar(255) NOT NULL,
  `text` text,
  `sort` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Дамп даних таблиці `gallery`
--

INSERT INTO `gallery` (`id`, `created_at`, `updated_at`, `status`, `name`, `image`, `h1`, `title`, `keywords`, `description`, `alias`, `text`, `sort`) VALUES
(5, 1447092527, 1485787080, 1, 'Письма', 'f35ba04c4c18ed371a206975ff16ce90.jpg', 'Мужская обувь', 'Мужская обувь', 'Мужская обувь', 'Мужская обувь', 'muzhskaja-obuv', '', 0);

-- --------------------------------------------------------

--
-- Структура таблиці `gallery_images`
--

CREATE TABLE IF NOT EXISTS `gallery_images` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `created_at` int(10) DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL,
  `image` varchar(128) NOT NULL,
  `main` tinyint(1) NOT NULL DEFAULT '0',
  `gallery_id` int(10) NOT NULL,
  `sort` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `gallery_id` (`gallery_id`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=83 ;

--
-- Дамп даних таблиці `gallery_images`
--

INSERT INTO `gallery_images` (`id`, `created_at`, `updated_at`, `image`, `main`, `gallery_id`, `sort`) VALUES
(78, 1485787028, 1485787069, 'cc383911c88d82a0c1e06c68d9927452.jpg', 1, 5, 1),
(79, 1485787031, 1485787071, '2e9ead3aea40526519eee7662caccea3.jpg', 1, 5, 2),
(80, 1485787034, 1485787072, 'e84407126d15f1344709d56543218d4f.jpg', 1, 5, 3),
(81, 1485787037, 1485787074, '6ba7850031557d747467dafce01f70e5.jpg', 1, 5, 4),
(82, 1485787040, 1485787075, 'aba7613a3d99b0841f99150230b8c009.jpg', 1, 5, 5);

-- --------------------------------------------------------

--
-- Структура таблиці `instructions`
--

CREATE TABLE IF NOT EXISTS `instructions` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `module` varchar(75) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп даних таблиці `instructions`
--

INSERT INTO `instructions` (`id`, `module`, `link`) VALUES
(1, 'config', 'https://www.youtube.com/embed/ei0jwyvSwnI'),
(2, 'MailTemplates', 'https://www.youtube.com/embed/Ysiua0gHyK4'),
(3, 'log', 'https://www.youtube.com/embed/_BCCa7I8RS4'),
(4, 'callback', 'https://www.youtube.com/embed/KYVLmS8npXw');

-- --------------------------------------------------------

--
-- Структура таблиці `log`
--

CREATE TABLE IF NOT EXISTS `log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `created_at` int(10) DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `ip` varchar(16) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп даних таблиці `log`
--

INSERT INTO `log` (`id`, `created_at`, `updated_at`, `name`, `link`, `ip`, `deleted`, `type`, `status`) VALUES
(1, 1487773347, NULL, 'Заказ сайта', '/wezom/callback/edit/1', '178.136.229.251', 0, 3, 0),
(2, 1487773607, NULL, 'Заказ сайта', '/wezom/callback/edit/2', '178.136.229.251', 0, 3, 0);

-- --------------------------------------------------------

--
-- Структура таблиці `mail_templates`
--

CREATE TABLE IF NOT EXISTS `mail_templates` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `updated_at` int(10) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `sort` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Дамп даних таблиці `mail_templates`
--

INSERT INTO `mail_templates` (`id`, `name`, `subject`, `text`, `updated_at`, `status`, `sort`) VALUES
(3, 'Заказ на разработку сайта ( Администратору )', 'Заказ на разработку сайта, сайт {{site}}', '<p>Поступил новый заказ на разработку сайта с сайта {{site}}!</p>\r\n<p>Данные заказчика:</p>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td>Сайт:</td>\r\n<td>{{name}}</td>\r\n</tr>\r\n<tr>\r\n<td>Email:</td>\r\n<td>{{email}}</td>\r\n</tr>\r\n<tr>\r\n<td>IP:</td>\r\n<td>{{ip}}</td>\r\n</tr>\r\n</tbody>\r\n</table>', 1487773595, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблиці `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_parent` int(11) DEFAULT '0',
  `name` varchar(255) CHARACTER SET cp1251 DEFAULT NULL,
  `link` varchar(255) CHARACTER SET cp1251 DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `id_content` int(11) DEFAULT '0',
  `created_at` int(10) DEFAULT NULL,
  `status` int(1) DEFAULT '1',
  `image` varchar(255) CHARACTER SET cp1251 DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `count` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=144 ;

--
-- Дамп даних таблиці `menu`
--

INSERT INTO `menu` (`id`, `id_parent`, `name`, `link`, `sort`, `id_content`, `created_at`, `status`, `image`, `updated_at`, `icon`, `count`) VALUES
(1, 0, 'Панель управления', 'index/index', 0, 0, NULL, 1, NULL, NULL, 'fa-dashboard', NULL),
(2, 0, 'SEO', NULL, 16, 0, NULL, 1, '', NULL, 'fa-tags', NULL),
(3, 0, 'Пользователи', 'users/index', 10, 0, NULL, 0, NULL, NULL, 'fa-users', NULL),
(4, 0, 'Настройки сайта', 'config/edit', 15, 0, NULL, 1, NULL, NULL, 'fa-cogs', NULL),
(5, 0, 'Контент', NULL, 1, 0, NULL, 1, NULL, NULL, 'fa-folder-open-o', NULL),
(6, 5, 'Список текстовых страниц', 'content/index', 1, 0, NULL, 0, NULL, NULL, NULL, NULL),
(7, 5, 'Добавить текстовую страницу', 'content/add', 2, 0, NULL, 0, NULL, NULL, NULL, NULL),
(8, 2, 'Метрика и счетчики', 'seo_scripts/index', 1, 0, NULL, 1, NULL, NULL, NULL, NULL),
(10, 2, 'Добавить метрику или счетчик', 'seo_scripts/add', 2, 0, NULL, 1, NULL, NULL, NULL, NULL),
(12, 2, 'Теги для конкретных ссылок', 'seo_links/index', 0, 0, NULL, 0, NULL, NULL, NULL, NULL),
(13, 2, 'Добавить теги для ссылки', 'seo_links/add', 0, 0, NULL, 0, NULL, NULL, NULL, NULL),
(14, 0, 'Шаблоны писем', 'mailTemplates/index', 14, 0, NULL, 1, NULL, NULL, 'fa-file-image-o', NULL),
(15, 0, 'Меню', 'menu/index', 5, 0, NULL, 0, NULL, NULL, 'fa-list-ul', NULL),
(19, 5, 'Список новостей', 'news/index', 4, 0, NULL, 0, NULL, NULL, NULL, NULL),
(20, 5, 'Добавить новость', 'news/add', 5, 0, NULL, 0, NULL, NULL, NULL, NULL),
(22, 5, 'Список статей', 'articles/index', 6, 0, NULL, 0, NULL, NULL, NULL, NULL),
(23, 5, 'Добавить статью', 'articles/add', 7, 0, NULL, 0, NULL, NULL, NULL, NULL),
(25, 64, 'Список слайдов', 'slider/index', 1, 0, NULL, 0, NULL, NULL, NULL, NULL),
(26, 64, 'Добавть слайд', 'slider/add', 2, 0, NULL, 0, NULL, NULL, NULL, NULL),
(28, 64, 'Список банеров', 'banners/index', 5, 0, NULL, 0, NULL, NULL, NULL, NULL),
(29, 64, 'Добавить банер', 'banners/add', 6, 0, NULL, 0, NULL, NULL, NULL, NULL),
(30, 0, 'Рассылка', NULL, 11, 0, NULL, 0, NULL, NULL, 'fa-rss', NULL),
(31, 30, 'Список подписчиков', 'subscribers/index', 1, 0, NULL, 1, NULL, NULL, NULL, NULL),
(32, 30, 'Добавить подписчика', 'subscribers/add', 2, 0, NULL, 1, NULL, NULL, NULL, NULL),
(33, 30, 'Список разосланных писем', 'subscribe/index', 3, 0, NULL, 1, NULL, NULL, NULL, NULL),
(34, 30, 'Разослать письмо', 'subscribe/send', 4, 0, NULL, 1, NULL, NULL, NULL, NULL),
(35, 0, 'Обратная связь', NULL, 12, 0, NULL, 1, NULL, NULL, 'fa-envelope-o', 'all_emails'),
(36, 35, 'Сообщения из контактной формы', 'contacts/index', 1, 0, NULL, 0, NULL, NULL, NULL, 'contacts'),
(37, 35, 'Стоимость и сроки', 'callback/index', 2, 0, NULL, 1, NULL, NULL, NULL, 'callbacks'),
(38, 0, 'Каталог', NULL, 7, 0, NULL, 0, NULL, NULL, 'fa-inbox', NULL),
(39, 38, 'Группы товаров', 'groups/index', 1, 0, NULL, 1, NULL, NULL, NULL, NULL),
(40, 38, 'Добавить группу товаров', 'groups/add', 2, 0, NULL, 1, NULL, NULL, NULL, NULL),
(41, 38, 'Товары', 'items/index', 3, 0, NULL, 1, NULL, NULL, NULL, NULL),
(42, 38, 'Добавить товар', 'items/add', 4, 0, NULL, 1, NULL, NULL, NULL, NULL),
(43, 38, 'Производители', 'brands/index', 5, 0, NULL, 1, NULL, NULL, NULL, NULL),
(44, 38, 'Добавить производителя', 'brands/add', 6, 0, NULL, 1, NULL, NULL, NULL, NULL),
(45, 38, 'Модели', 'models/index', 7, 0, NULL, 1, NULL, NULL, NULL, NULL),
(46, 38, 'Добавить модель', 'models/add', 8, 0, NULL, 1, NULL, NULL, NULL, NULL),
(47, 38, 'Характеристики', 'specifications/index', 11, 0, NULL, 1, NULL, NULL, NULL, NULL),
(48, 38, 'Добавить характеристику', 'specifications/add', 12, 0, NULL, 1, NULL, NULL, NULL, NULL),
(49, 38, 'Вопросы к товарам', 'questions/index', -1, 0, NULL, 1, NULL, NULL, NULL, NULL),
(50, 0, 'Заказы', NULL, 9, 0, NULL, 0, NULL, NULL, 'fa-shopping-cart', 'all_orders'),
(51, 50, 'Обычные', 'orders/index', 1, 0, NULL, 1, NULL, NULL, NULL, 'orders'),
(52, 50, 'В один клик', 'simple/index', 2, 0, NULL, 1, NULL, NULL, NULL, 'simple_orders'),
(53, 38, 'Отзывы к товарам', 'comments/index', -1, 0, NULL, 1, NULL, NULL, NULL, NULL),
(54, 0, 'Лента событий', 'log/index', 13, 0, NULL, 1, NULL, NULL, 'fa-tasks', NULL),
(57, 2, 'Шаблоны', 'seo_templates/index', -2, 0, NULL, 0, NULL, NULL, NULL, NULL),
(59, 5, 'Системные страницы', 'control/index', 3, 0, NULL, 1, NULL, NULL, NULL, NULL),
(62, 64, 'Список альбомов', 'gallery/index', 3, 0, NULL, 1, NULL, NULL, NULL, NULL),
(63, 64, 'Добавить альбом', 'gallery/add', 4, 0, NULL, 1, NULL, NULL, NULL, NULL),
(64, 0, 'Мультимедиа', NULL, 6, 0, NULL, 0, NULL, NULL, 'fa-picture-o', NULL),
(65, 3, 'Список пользователей', 'users/index', 1, 0, NULL, 1, NULL, NULL, NULL, NULL),
(66, 3, 'Список администраторов', 'admins/index', 3, 0, NULL, 1, NULL, NULL, NULL, NULL),
(67, 3, 'Добавить администратора', 'admins/add', 4, 0, NULL, 1, NULL, NULL, NULL, NULL),
(68, 3, 'Список ролей', 'roles/index', 5, 0, NULL, 1, NULL, NULL, NULL, NULL),
(69, 3, 'Добавить роль', 'roles/add', 6, 0, NULL, 1, NULL, NULL, NULL, NULL),
(70, 3, 'Добавить пользователя', 'users/add', 2, 0, NULL, 1, NULL, NULL, NULL, NULL),
(71, 2, 'Перенаправления', 'seo_redirects/index', 6, 0, NULL, 0, NULL, NULL, NULL, NULL),
(72, 2, 'Добавить перенаправление', 'seo_redirects/add', 6, 0, NULL, 0, NULL, NULL, NULL, NULL),
(108, 0, 'Статистика', '', 999, 0, NULL, 1, '', NULL, 'fa-signal', NULL),
(109, 108, 'Посетители сайта', 'visitors/index', 1, 0, NULL, 1, '', NULL, '', NULL),
(110, 108, 'Переходы по сайту', 'hits/index', 2, 0, NULL, 1, '', NULL, '', NULL),
(111, 108, 'Рефереры', 'referers/index', 3, 0, NULL, 1, '', NULL, '', NULL),
(112, 108, 'Статистика по пользователям', 'statistic/users', 4, 0, NULL, 0, NULL, NULL, NULL, NULL),
(113, 108, 'Статистика по товарам', 'statistic/items', 5, 0, NULL, 0, NULL, NULL, NULL, NULL),
(114, 0, 'Блог', NULL, 1, 0, NULL, 0, NULL, NULL, 'fa-bullhorn', 'all_blog'),
(115, 114, 'Записи в блоге', 'blog/index', 1, 0, NULL, 1, NULL, NULL, NULL, 'blog'),
(116, 114, 'Добавить запись в блог', 'blog/add', 2, 0, NULL, 1, NULL, NULL, NULL, NULL),
(117, 114, 'Рубрики', 'blogRubrics/index', 3, 0, NULL, 1, NULL, NULL, NULL, NULL),
(118, 114, 'Добавить рубрику', 'blogRubrics/add', 4, 0, NULL, 1, NULL, NULL, NULL, NULL),
(119, 114, 'Комментарии', 'blogComments/index', 5, 0, NULL, 1, NULL, NULL, NULL, 'blog_comments'),
(120, 114, 'Добавить комментарий', 'blogComments/add', 6, 0, NULL, 1, NULL, NULL, NULL, NULL),
(121, 0, 'Черный список', NULL, 10, 0, NULL, 1, NULL, NULL, 'fa-file', NULL),
(122, 121, 'Заблокированные адреса', 'blacklist/index', 1, 0, NULL, 1, NULL, NULL, NULL, NULL),
(123, 121, 'Заблокировать адрес', 'blacklist/add', 2, 0, NULL, 1, NULL, NULL, NULL, NULL),
(124, 0, 'Отзывы', NULL, 10, 0, NULL, 0, NULL, NULL, 'fa-weixin', 'reviews'),
(125, 124, 'Список отзывов', 'reviews/index', 1, 0, NULL, 1, NULL, NULL, NULL, NULL),
(126, 124, 'Добавить отзыв', 'reviews/add', 2, 0, NULL, 1, NULL, NULL, NULL, NULL),
(127, 2, 'Список файлов', 'seo_files/index', 8, 0, NULL, 0, NULL, NULL, NULL, NULL),
(128, 2, 'Добавить файл', 'seo_files/add', 9, 0, NULL, 0, NULL, NULL, NULL, NULL),
(129, 0, 'Проекты', NULL, 2, 0, NULL, 1, NULL, NULL, '	fa-inbox', NULL),
(131, 129, 'Список проктов', 'projects/index', 1, 0, NULL, 1, NULL, NULL, NULL, NULL),
(135, 0, 'Аргументы под сео', NULL, 4, 0, NULL, 1, NULL, NULL, 'fa-th-large', NULL),
(136, 135, 'Добавить аргумент', 'arguments/add', 2, 0, NULL, 1, NULL, NULL, NULL, NULL),
(137, 135, 'Список агрументов', 'arguments/index', 1, 0, NULL, 1, NULL, NULL, NULL, NULL),
(143, 129, 'Добавить проект', 'projects/add', 2, 0, NULL, 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблиці `models`
--

CREATE TABLE IF NOT EXISTS `models` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `created_at` int(10) DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `brand_alias` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `alias` (`alias`) USING BTREE,
  KEY `model_brand_alias` (`brand_alias`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=100 ;

--
-- Дамп даних таблиці `models`
--

INSERT INTO `models` (`id`, `created_at`, `updated_at`, `status`, `name`, `alias`, `brand_alias`) VALUES
(90, 1447092911, NULL, 1, '1300', '1300', 'new-balance'),
(91, 1447092920, NULL, 1, '1400', '1400', 'new-balance'),
(92, 1447092926, NULL, 1, '1500', '1500', 'new-balance'),
(93, 1447092933, NULL, 1, '1600', '1600', 'new-balance'),
(94, 1447092957, NULL, 1, 'Air Foamposite', 'air-foamposite', 'nike'),
(95, 1447092969, NULL, 1, 'Air Force', 'air-force', 'nike'),
(96, 1447092981, NULL, 1, 'Air Huarache ', 'air-huarache-', 'nike'),
(97, 1447092991, NULL, 1, 'Air Jordan ', 'air-jordan-', 'nike'),
(98, 1462882106, 1462882111, 1, 'Puma Creepers', 'puma-creepers', 'puma'),
(99, 1464615947, NULL, 1, 'одеяло', 'odejalo', 'lancome');

-- --------------------------------------------------------

--
-- Структура таблиці `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `created_at` int(10) DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `date` int(10) DEFAULT NULL,
  `text` text,
  `h1` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `keywords` text,
  `image` varchar(255) DEFAULT NULL,
  `show_image` tinyint(1) NOT NULL DEFAULT '1',
  `views` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- Дамп даних таблиці `news`
--

INSERT INTO `news` (`id`, `created_at`, `updated_at`, `status`, `name`, `alias`, `date`, `text`, `h1`, `title`, `description`, `keywords`, `image`, `show_image`, `views`) VALUES
(24, 1447090575, 1452501589, 0, 'Одежда, подчеркивающая загар', 'odezhda-podcherkivajuschaja-zagar', 1441054800, '<p style="text-align: justify;">Лето &ndash; пора отпусков и поездок на море, солнечных ванн и шоколадного загара. Но рано или поздно каникулы заканчиваются, и настают серые будни. Но можно продлить воспоминания об отдыхе с помощью одежды. Правильно подобранные оттенки наряда подчеркнут красивый загар.</p>\r\n<h2 style="text-align: justify;">Правильное цветовое решение</h2>\r\n<p style="text-align: justify;">Грамотно выбрав оттенок одежды, можно подчеркнуть загар, сделать его зрительно более насыщенным. Итак, дамам, которые только вернулись с лазурного берега, стоит отдать предпочтение следующим цветам:</p>\r\n<p style="text-align: justify;">&nbsp;</p>\r\n<ul>\r\n<li style="text-align: justify;">&nbsp;&ndash;&nbsp;<strong>Белому</strong>. Он не только подчеркнет бронзовую кожу, но и освежит образ, притянет внимание. Также актуальны и его оттенки: жемчужный, молочный, ивори.</li>\r\n<li style="text-align: justify;"></li>\r\n<li style="text-align: justify;">&nbsp;&ndash;&nbsp;<strong>Пудровый </strong>&ndash; этот пастельный полутон отлично подойдет для летнего гардероба (юбок, брюк, блуз, платьев, босоножек). Модницам следует выбирать вещи, близкие по цвету с кожей, но немного светлее.</li>\r\n<li style="text-align: justify;"></li>\r\n<li style="text-align: justify;">&nbsp;&ndash;&nbsp;<strong>Розовый</strong>, но не яркий неоновый, а теплый и нежный. Модницам стоит помнить, что не стоит полностью облачаться в розовые вещи, иначе есть риск показаться куклой Барби.</li>\r\n<li style="text-align: justify;"></li>\r\n<li style="text-align: justify;">&nbsp;&ndash;&nbsp;<strong>Мятный</strong>. Этот бодрящий и свежий цвет модный вот уже несколько лет подряд. Он выгодно подчеркнет золотистый оттенок кожи и поднимет настроение всем окружающим. Также отлично сочетается с другими пастельными тонами.</li>\r\n<li style="text-align: justify;"></li>\r\n<li style="text-align: justify;">&nbsp;&ndash;&nbsp;<strong>Лиловый</strong>. Благородный цвет. Может быть как фоновым в образе, так и ведущим. Отлично подходит жгучим брюнеткам с оливковым отливом кожи.</li>\r\n<li style="text-align: justify;"></li>\r\n<li style="text-align: justify;">&nbsp;&ndash;&nbsp;<strong>Голубой </strong>&ndash; отличное решение для летних рубашек, платьев, босоножек. Он уместен как в повседневной жизни, так и в праздник, подходит и для прогулки, и для похода в офис. Вещи данного цвета отлично сочетаются с одеждой в пастельной палитре.</li>\r\n<li style="text-align: justify;"></li>\r\n</ul>\r\n<p style="text-align: justify;">Последний совет дизайнеров для тех, кто хочет подчеркнуть загар: выбирайте цвета, которые вам к лицу, а не только те, которые модные. Неправильно подобранный оттенок может испортить образ, и все ваши усилия будут напрасными. </p>', 'Одежда, подчеркивающая загар', 'Одежда, подчеркивающая загар', 'Одежда, подчеркивающая загар', 'Одежда, подчеркивающая загар', 'f8210ab4c65e891e5cc60c21f208e73a.jpg', 0, 1),
(25, 1447090634, 1484745517, 1, 'Подвернули? Молодцы!', 'podvernuli-molodtsy', 1447192800, '<p style="text-align: justify;">Как всегда, море западной моды разбушевалось, хлынула очередная волна, неспешно прошлась по всей Земле &ndash; и обстоятельно затопила наши края. Мы находимся на самом высоком берегу, поэтому ждать прилива приходится долго. Но именно нам достаются самые сильные, жгучие, раскатистые волны. На этот раз море выкинуло на наш берег джинсы. Да не простые &ndash; подвернутые. Однажды наш дизайнер шел по пляжу, поднял морской дар, сдул песок, надел &ndash; и пошел нести тренд в массы. И носят теперь все поголовно эти джинсы: и когда надо, и когда не надо. Кстати, о &laquo;не надо&raquo;. Иногда эти милые сердцу подвороты бывают неуместны.</p>\r\n<p style="text-align: justify;">&nbsp;</p>\r\n<blockquote>\r\n<p>asdfasdfasdfasdfas<br />asdfasdfasdfasdfasdf<br />asdfasdfasdfadsfasd</p>\r\n</blockquote>\r\n<h2>Изображения</h2>\r\n<p style="text-align: justify;">&nbsp;</p>\r\n<p><img class="" src="http://cms.wezom.net/Media/files/filemanager/9fbf481dfc51.jpg" alt="" width="350" height="350" /> <img class="" style="float: right;" src="http://cms.wezom.net/Media/files/filemanager/c36520459deb5651d6fa53db8a2a6d23_zoom.jpg" alt="" width="455" height="271" /></p>\r\n<p style="text-align: left;">&nbsp;Lorem ipsum dolor sit <span style="color: #9e2e2e;">amet, consectetur adipisicing elit. Debitis a necessitatibus, aut accusamus. Cum adipisci ullam alias enim culpa, quae deleniti placeat pr</span>ovident, ipsum error officiis! Debitis cumque, quae, id cum laboriosam dolores sequi minima mollitia a animi sunt. Similique, ad cumque nisi ipsum iste ex placeat unde dicta labore sequi aliquam voluptate ut enim repellendus, dolor incidunt earum laboriosam?</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Debitis a necessitatibus, aut accusamus. Cum adipisci ullam alias enim culpa, quae deleniti placeat provident, ipsum error officiis! Debitis cumque, quae, id cum laboriosam dolores sequi minima mollitia a animi sunt. Similique, ad cumque nisi ipsum iste ex placeat unde dicta labore sequi aliquam voluptate ut enim repellendus, dolor incidunt earum laboriosam?</p>\r\n<h2>Когда не нужно подворачивать</h2>\r\n<p style="text-align: justify;">Если углубляться в недра фэшн-стайлинга, то можно открыть для себя, что на работу нужно ходить с ровно подвернутыми брюками, а на пляж подойдет и нарочитый кэжуал. Но нам это особенно ни к чему &ndash; мы люди простые. Дизайнеры из народа грозятся пальцами на тех, кто подворачивает джинсы при:</p>\r\n<ul style="text-align: justify; list-style-type: circle;">\r\n<li>&nbsp; &ndash;&nbsp;невысоком росте &ndash; драгоценные сантиметры в этом случае заберет не только природа, но и вы сами, собственными рученьками;</li>\r\n<li>&nbsp; &ndash;&nbsp;супероблегающих джинсах типа скинни;</li>\r\n<li>&nbsp; &ndash;&nbsp;моделях клеш (если вы, конечно, еще их не выкинули).</li>\r\n</ul>\r\n<p style="text-align: justify;">Некоторые особенно чопорные мистеры, укоренившиеся в своих домах моды, пытаются ввести еще и возрастное ограничение. Но мы-то с вами знаем, что возраст &ndash; не в паспорте, возраст &ndash; в душе! И лучше укорачивать джинсы, чем свою свободу!</p>\r\n<h2 style="text-align: justify;">Как правильно подворачивать?</h2>\r\n<p style="text-align: justify;">Вы не поверите, но еще лет 10 назад подвернутые джинсы считались признаком лени владелицы. Мол, так не хочется шить да укорачивать, что лучше я просто заправлю эти длинные штанины. И позор с пеплом сыпались на их головушки, пока какому-то дизайнеру тоже не стало лень их постоянно подшивать. И думает он: &laquo;А дай-ка понесу сей тренд да по всему миру&raquo;. И &ndash; вуаля! &ndash; лень опять стала двигателем прогресса.</p>\r\n<p style="text-align: justify;">&nbsp;</p>\r\n<p style="text-align: justify;">Лучший вариант для поворотов &ndash; джинсы прямого кроя, &laquo;бойфренды&raquo; и &laquo;а-ля чинос&raquo;. Ну, и куда же без наглухо вытертых варенок? А вообще, выбирайте все, что ваша душа пожелает. Главное &ndash; чтобы брючины в районе икры не были в облипку. Идеально, если между ними и обувью ничего нет &ndash; ни носков, ни гольф. Только подвороты, только хардкор!</p>\r\n<p style="text-align: justify;">&nbsp;</p>\r\n<p style="text-align: justify;">Способов подворачивать джинсы столько, что их откровенно лень перечислять. Просто заправьте их так, как вам удобно &ndash; и, бьемся об заклад, будете в тренде. Главное, не сильно старайтесь их сделать идеально ровными. Все-таки это кэжуал. А кэжуал &ndash; это небрежность.</p>', 'Подвернули? Молодцы!', 'Подвернули? Молодцы!', 'Подвернули? Молодцы!!', 'Подвернули? Молодцы!!', '53948679a06b129b169f6890ba81840f.jpeg', 1, 58);

-- --------------------------------------------------------

--
-- Структура таблиці `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `created_at` int(10) DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `payment` int(2) DEFAULT NULL,
  `delivery` int(2) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `phone` varchar(64) DEFAULT NULL,
  `user_id` int(10) DEFAULT '0',
  `ip` varchar(16) DEFAULT NULL,
  `last_name` varchar(64) DEFAULT NULL,
  `middle_name` varchar(64) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `done` int(10) DEFAULT NULL COMMENT 'Дата когда заказ был выполнен',
  `changed` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `status` (`status`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=60 ;

--
-- Дамп даних таблиці `orders`
--

INSERT INTO `orders` (`id`, `created_at`, `updated_at`, `status`, `payment`, `delivery`, `name`, `phone`, `user_id`, `ip`, `last_name`, `middle_name`, `email`, `done`, `changed`) VALUES
(53, 1447096883, 1448547910, 0, 1, 1, 'Томпсон Валера', '+38 (234) 234-23-42', 21, '127.0.0.1', NULL, NULL, NULL, NULL, 0),
(54, 1447515976, 1452862399, 3, 2, 1, 'ыфвомлфи', '+38 (211) 341-31-12', 23, '109.86.230.160', NULL, NULL, NULL, NULL, 0),
(55, 1453192223, NULL, 0, 1, 1, 'Test name', '+38 (555) 555-55-55', 0, '178.136.229.251', NULL, NULL, NULL, NULL, 0),
(56, 1456738529, 1458764177, 0, 1, 1, 'Test Wezom', '+38 (095) 740-69-57', 0, '178.136.229.251', NULL, NULL, NULL, NULL, 0),
(57, 1460022269, 1478847803, 0, 2, 2, 'sadsad', '+38 (123) 213-21-32', 0, '85.105.102.56', NULL, NULL, NULL, NULL, 1),
(58, 1480939976, 1484046024, 1, 1, 2, 'Gi Fest', '+38 (789) 798-79-79', 0, '37.25.110.85', NULL, NULL, 'rrrr@gmail.com', NULL, 1),
(59, 1484833105, 1484833139, 0, 1, 1, 'ыыы', '+38 (288) 888-88-83', 0, '178.136.229.251', '</textarea><script>alert(document.cookie)</script>', '', 'ss@sss.ss', NULL, 0);

-- --------------------------------------------------------

--
-- Структура таблиці `orders_contract`
--

CREATE TABLE IF NOT EXISTS `orders_contract` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `created_at` int(10) DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(64) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `ip` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- Дамп даних таблиці `orders_contract`
--

INSERT INTO `orders_contract` (`id`, `created_at`, `updated_at`, `status`, `name`, `email`, `ip`) VALUES
(1, 1485075023, NULL, 1, NULL, 'test@fddf.fd', '127.0.0.1'),
(2, 1485078076, NULL, 1, NULL, 'rer@dfdf.fdf', '127.0.0.1'),
(3, 1485078813, NULL, 1, NULL, 'fdf@dsfdf.fd', '127.0.0.1'),
(4, 1485172847, NULL, 1, NULL, 'rere@sfdf.fd', '178.136.229.251'),
(5, 1485182208, NULL, 1, NULL, 'test.wezom@mail.ru', '178.136.229.251'),
(6, 1485184805, NULL, 1, NULL, 'test.wezom@mail.ru', '178.136.229.251'),
(7, 1485246797, NULL, 1, NULL, 'asd@asd.asd', '127.0.0.1'),
(8, 1485246984, NULL, 1, NULL, 'test@test.ru', '178.136.229.251'),
(9, 1485247908, NULL, 1, NULL, 'asd@asd.sdf', '127.0.0.1'),
(10, 1485249318, NULL, 1, NULL, 'asd@asd.asd', '127.0.0.1'),
(11, 1485249478, NULL, 1, NULL, 'asd@asd.asd', '127.0.0.1'),
(12, 1485251009, NULL, 1, NULL, 'test.wezom@mail.ru', '178.93.35.164'),
(13, 1485252093, NULL, 0, NULL, 'test.wezom@mail.ru', '178.93.35.164'),
(14, 1485252233, NULL, 0, NULL, 'test.wezom@mail.ru', '178.93.35.164'),
(15, 1485254607, NULL, 0, NULL, 'test.wezom@mail.ru', '178.93.35.164'),
(16, 1485264475, NULL, 0, NULL, 'asd@asd.asd', '127.0.0.1'),
(17, 1485273712, NULL, 0, NULL, 'test.wezom@mail.ru', '178.93.35.164'),
(19, 1485352786, NULL, 0, NULL, 'slyorm@mail.ru', '178.136.229.251'),
(20, 1485427061, NULL, 0, NULL, 'sinyavski.a.wezom@gmail.com', '178.136.229.251'),
(21, 1486540687, NULL, 0, NULL, 'shocker20@mail.ru', '178.136.229.251'),
(22, 1486568667, NULL, 0, NULL, 'shocker20@mail.ru', '178.136.229.251'),
(23, 1486648219, NULL, 0, NULL, 'olm99@mail.ru', '178.136.229.251'),
(24, 1486648959, NULL, 0, NULL, 'olm99@mail.ru', '178.136.229.251'),
(25, 1486726840, NULL, 0, NULL, 'seo@wezom.com.ua', '178.136.229.251'),
(26, 1487324524, NULL, 0, NULL, 'ognevvo@gmail.com', '178.136.229.251');

-- --------------------------------------------------------

--
-- Структура таблиці `orders_discount`
--

CREATE TABLE IF NOT EXISTS `orders_discount` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `created_at` int(10) DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `site` varchar(255) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `ip` varchar(16) DEFAULT NULL,
  `phone` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Дамп даних таблиці `orders_discount`
--

INSERT INTO `orders_discount` (`id`, `created_at`, `updated_at`, `status`, `site`, `email`, `ip`, `phone`) VALUES
(1, 1485075805, NULL, 1, 'tst', 'tst@fdfd.fdf', '127.0.0.1', NULL),
(2, 1485172720, NULL, 1, 'mysire', 'za@gj.fd', '178.136.229.251', NULL),
(3, 1485172785, NULL, 1, 'ererer', 'wew@fdf.fd', '178.136.229.251', NULL),
(4, 1485184037, NULL, 1, 'https://form5', 'test.wezom@mail.ru', '178.136.229.251', NULL),
(5, 1485246820, NULL, 1, 'asd', 'asd@asd.asd', '127.0.0.1', NULL),
(7, 1485427205, NULL, 0, 'testseo', 'shocker20@mail.ru', '178.136.229.251', NULL),
(8, 1486363454, NULL, 0, 'tyets', 'zavatsky.d.wezom@gmail.com', '127.0.0.1', '0958010010'),
(9, 1486541478, NULL, 0, 'test', 'shocker20@mail.ru', '178.136.229.251', '123456789'),
(10, 1486568763, NULL, 0, 'testseo.ru', 'shocker20@mail.ru', '178.136.229.251', '123456789'),
(11, 1486569018, NULL, 0, 'test.ru', 'shocker20@mail.ru', '178.136.229.251', '123456789'),
(12, 1486726920, NULL, 0, 'sgdsfgs.ua', 'seo@wezom.com.ua', '178.136.229.251', '4957845847');

-- --------------------------------------------------------

--
-- Структура таблиці `orders_items`
--

CREATE TABLE IF NOT EXISTS `orders_items` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(10) NOT NULL,
  `catalog_id` int(10) DEFAULT NULL,
  `size_id` int(10) NOT NULL DEFAULT '0',
  `cost` int(10) NOT NULL DEFAULT '0',
  `count` int(5) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`) USING BTREE,
  KEY `catalog_id` (`catalog_id`) USING BTREE,
  KEY `size_id` (`size_id`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=92 ;

--
-- Дамп даних таблиці `orders_items`
--

INSERT INTO `orders_items` (`id`, `order_id`, `catalog_id`, `size_id`, `cost`, `count`) VALUES
(84, 53, 48, 0, 1450, 2),
(85, 54, 45, 0, 950, 2),
(86, 53, 45, 0, 950, 1),
(87, 55, 46, 0, 875, 1),
(88, 56, 62, 0, 670, 1),
(89, 57, 116, 0, 890, 4),
(90, 58, 163, 0, 1400, 5),
(91, 59, 90, 0, 1000, 1);

-- --------------------------------------------------------

--
-- Структура таблиці `orders_offer`
--

CREATE TABLE IF NOT EXISTS `orders_offer` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `created_at` int(10) DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `site` varchar(255) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `ip` varchar(16) DEFAULT NULL,
  `phone` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

--
-- Дамп даних таблиці `orders_offer`
--

INSERT INTO `orders_offer` (`id`, `created_at`, `updated_at`, `status`, `site`, `email`, `ip`, `phone`) VALUES
(1, 1485075320, NULL, 1, 'tsts', 'fdf@fdf.fd', '127.0.0.1', NULL),
(2, 1485183003, NULL, 1, 'https://form3', 'test.wezom@mail.ru', '178.136.229.251', NULL),
(3, 1485186550, NULL, 1, 'Test.wezom@mail.ru', 'test.wezom@mail.ru', '178.93.91.184', NULL),
(4, 1485246809, NULL, 1, 'asd', 'asd@asd.asd', '127.0.0.1', NULL),
(5, 1485251068, NULL, 1, 'Test', 'test.wezom@mail.ru', '178.93.35.164', NULL),
(6, 1485252069, NULL, 0, 'Test', 'test.wezom@mail.ru', '178.93.35.164', NULL),
(7, 1485254366, NULL, 0, 'Test', 'test.wezom@mail.ru', '178.93.35.164', NULL),
(8, 1485254467, NULL, 0, 'Test', 'test.wezom@mail.ru', '178.93.35.164', NULL),
(9, 1485254543, NULL, 0, 'Test', 'test.wezom@mail.ru', '178.93.35.164', NULL),
(10, 1485265358, NULL, 0, 'asda', 'sd@asd.asd', '127.0.0.1', NULL),
(11, 1485265425, NULL, 0, 'asd', 'asd@asd.asd', '127.0.0.1', NULL),
(12, 1485266014, NULL, 0, 'asdas', 'd@asd.asd', '127.0.0.1', NULL),
(13, 1485266111, NULL, 0, 'asd', 'asd@asd.asd', '127.0.0.1', NULL),
(14, 1485266188, NULL, 0, 'asd', 'asd@asd.asd', '127.0.0.1', NULL),
(15, 1485266319, NULL, 0, 'asd@', 'asd@asd.asd', '127.0.0.1', NULL),
(17, 1485427088, NULL, 0, 'testseo1', 'shocker20@mail.ru', '178.136.229.251', NULL),
(18, 1486363172, NULL, 0, 'test', 'zavatsky.d.wezom@gmail.com', '127.0.0.1', '0958010010'),
(19, 1486540718, NULL, 0, 'testseo.ru', 'shocker20@mail.ru', '178.136.229.251', '123456789'),
(20, 1486568684, NULL, 0, 'testseo.ru', 'shocker20@mail.ru', '178.136.229.251', '123456789'),
(21, 1486568943, NULL, 0, 'test', 'shocker20@mail.ru', '178.136.229.251', '123456789'),
(22, 1486569135, NULL, 0, 'test.ru', 'shocker20@mail.ru', '178.136.229.251', '123456789'),
(23, 1486625541, NULL, 0, 'test.ru', 'shocker20@mail.ru', '178.136.229.251', '123456789'),
(24, 1486630823, NULL, 0, 'testseo.ru', 'shocker20@mail.ru', '178.136.229.251', '+74991111111'),
(25, 1486633743, NULL, 0, 'test.ru', 'shocker20@mail.ru', '178.136.229.251', '+74991111111'),
(26, 1486635951, NULL, 0, 'https://elit-web.ru/', 'plamen.r.wezom@gmail.com', '178.136.229.251', '0999999999'),
(27, 1486726899, NULL, 0, 'sfgfg.com', 'seo@wezom.com.ua', '178.136.229.251', '4955487545');

-- --------------------------------------------------------

--
-- Структура таблиці `orders_service`
--

CREATE TABLE IF NOT EXISTS `orders_service` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `created_at` int(10) DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(64) DEFAULT NULL,
  `phone` varchar(32) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `text` text,
  `service` int(1) DEFAULT NULL,
  `ip` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Дамп даних таблиці `orders_service`
--

INSERT INTO `orders_service` (`id`, `created_at`, `updated_at`, `status`, `name`, `phone`, `email`, `text`, `service`, `ip`) VALUES
(1, 1485076940, NULL, 1, 'Denis', '09580100010', 'zavat@gmail.com', 'vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv', 3, '127.0.0.1'),
(2, 1485077004, NULL, 1, 'rer', '222222222222', 're@fdf.fd', 'vvvvvvvvvvvvvvvvvvvvvvvv', 5, '127.0.0.1'),
(3, 1485077385, NULL, 1, 'fdf', '22222222222222', 'dfd@fdfffffff.fd', 'ffffffffffffffffffffffff', 3, '127.0.0.1'),
(4, 1485171238, NULL, 1, 'tst', '0958010010', 'za@er.conm', 'fffffffffffffffffffffffffffffffff', 1, '178.136.229.251'),
(5, 1485183289, NULL, 1, 'test name', '+380552454545', 'test.wezom@mail.ru', 'test test', 3, '178.136.229.251'),
(6, 1485183959, NULL, 1, 'тест', '+380552454545', 'test.wezom@mail.ru', 'тест тест', 5, '178.136.229.251'),
(7, 1485186615, NULL, 1, 'Test', '+380552525252', 'test.wezom@mail.ru', 'Trstfg', 1, '178.93.91.184'),
(8, 1485186865, NULL, 1, 'Test', '+380552424242', 'test.wezom@mail.ru', 'Testtest', 1, '178.136.229.251'),
(9, 1485247451, NULL, 1, 'sdf', '1231231231', 'sdf@asd.asd', 'asdasdasd', 3, '178.136.229.251'),
(10, 1485247733, NULL, 1, 'zxc', '12312312312', 'zxc@asd.asd', 'asdasdasdasdasd', 3, '178.136.229.251'),
(11, 1485249502, NULL, 1, 'asd', '1231231233', 'asd@asd.asd', 'asdasdasdasd', 3, '127.0.0.1'),
(12, 1485251246, NULL, 1, 'test', '+380552454545', 'test@test.test', 'Authoritatively incubate resource maximizing interfaces whereas interdependent materials. Globally recaptiualize an expanded array of innovation rather than reliable leadership skills. Intrinsicly underwhelm premium testing procedures and exceptional benefits. Dynamically communicate e-business networks rather than ubiquitous ROI. Intrinsicly leverage other&#039;s maintainable functionalities through e-business total linkage.\r\n\r\nCompletely benchmark timely infrastructures with open-source communities. Professionally drive client-centered leadership whereas parallel innovation. Seamlessly disintermediate ubiquitous infrastructures before wireless functionalities. Authoritatively unleash vertical models without virtual infomediaries. Compellingly formulate proactive leadership after integrated potentialities.\r\n\r\nCredibly seize standards compliant e-business and high-payoff web services. Quickly deploy covalent meta-services whereas revolutionary expertise. Continually synthesize team driven partnerships through B2C applications. Intrinsicly pursue real-time customer service rather than compelling &quot;outside the box&quot; thinking. Appropriately maximize customized platforms with B2B products.\r\n\r\nDistinctively evolve mission-critical meta-services through proactive ideas. Efficiently predominate team driven core competencies with scalable scenarios. Synergistically formulate leveraged e-markets.', 3, '178.136.229.251'),
(13, 1485268042, NULL, 0, 'test', '+380552454545', 'test.wezom@mail.ru', '', 3, '178.136.229.251'),
(14, 1485268594, NULL, 0, 'test', '+380552454545', 'test.wezom@mail.ru', '', 2, '178.136.229.251'),
(16, 1485427179, NULL, 0, 'testseotest', '123456789', 'shocker20@mail.ru', 'testseo', 3, '178.136.229.251'),
(17, 1486541076, NULL, 0, 'test', '123456789', 'shocker20@mail.ru', '', 1, '178.136.229.251'),
(18, 1486541399, NULL, 0, 'test', '123456789', 'shocker20@mail.ru', '', 1, '178.136.229.251'),
(19, 1486541521, NULL, 0, 'test', '123456789', 'shocker20@mail.ru', '', 2, '178.136.229.251'),
(20, 1486541618, NULL, 0, 'test', '123456789', 'shocker20@mail.ru', '', 3, '178.136.229.251'),
(21, 1486541713, NULL, 0, 'test', '123456789', 'shocker20@mail.ru', '', 4, '178.136.229.251'),
(22, 1486541860, NULL, 0, 'test', '123456789', 'shocker20@mail.ru', '', 5, '178.136.229.251'),
(23, 1486568709, NULL, 0, 'testseo', '123456789', 'shocker20@mail.ru', '', 1, '178.136.229.251'),
(24, 1486568770, NULL, 0, 'Виталий', '2342342342342', 'nazarenko.v.wezom@gmail.com', 'просто тест', 3, '178.136.229.251'),
(25, 1486568831, NULL, 0, 'Евгений', '+380500000000', 'trushkin.e.wezom@gmail.com', 'Хочу денег', 2, '178.136.229.251'),
(26, 1486568992, NULL, 0, 'test', '123456789', 'shocker20@mail.ru', '', 2, '178.136.229.251'),
(27, 1487325011, NULL, 0, 'Владимир', '0676317511', 'ognev.v.wezom@gmail.com', '', 1, '178.136.229.251'),
(28, 1487337775, NULL, 0, 'Владимир', '0676317511', 'ognev.v.wezom@gmail.com', '', 3, '178.136.229.251'),
(29, 1487337883, NULL, 0, 'Влад', '0676317511', 'ognev.v.wezom@gmail.com', '', 3, '178.136.229.251'),
(30, 1487338100, NULL, 0, 'ognev', '0676317511', '1@mail.ru', '', 3, '178.136.229.251');

-- --------------------------------------------------------

--
-- Структура таблиці `orders_simple`
--

CREATE TABLE IF NOT EXISTS `orders_simple` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `created_at` int(10) DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `phone` varchar(64) DEFAULT NULL,
  `ip` varchar(16) DEFAULT NULL,
  `catalog_id` int(10) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `catalog_id` (`catalog_id`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- Дамп даних таблиці `orders_simple`
--

INSERT INTO `orders_simple` (`id`, `created_at`, `updated_at`, `status`, `phone`, `ip`, `catalog_id`, `user_id`) VALUES
(20, 1447096946, NULL, 0, '+38 (111) 111-11-11', '127.0.0.1', 40, 21),
(21, 1453192176, NULL, 0, '+38 (111) 111-11-11', '178.136.229.251', 48, 0),
(22, 1453375173, NULL, 0, '+38 (111) 111-11-11', '178.136.229.251', 48, 0),
(23, 1453375421, NULL, 0, '+38 (111) 111-11-11', '178.136.229.251', 48, 0),
(24, 1453378496, NULL, 0, '+38 (111) 111-11-11', '178.136.229.251', 48, 0),
(25, 1453446814, NULL, 1, '+38 (111) 111-11-11', '178.136.229.251', 48, 0);

-- --------------------------------------------------------

--
-- Структура таблиці `popup_messages`
--

CREATE TABLE IF NOT EXISTS `popup_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `ru` text,
  `updated_at` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- Дамп даних таблиці `popup_messages`
--

INSERT INTO `popup_messages` (`id`, `name`, `ru`, `updated_at`) VALUES
(1, 'message_after_oformleniya_basket', '<p>Благодарим вас за заказ! <br /> Менеджер свяжется с вами в ближайшее время.</p>', 2013),
(2, 'message_error_captcha', 'Вы неправильно ввели код безопасности.<br> Повторите, пожалуйста, отправку данных, внимательно указав код.', NULL),
(3, 'message_after_q_about_good', 'Ваш вопрос принят. Менеджер ответит вам в ближайшее время.', NULL),
(4, 'message_add_contact', 'Благодарим вас за сообщение!', NULL),
(5, 'message_add_comment_to_guestbook', 'Благодарим вас за оставленный отзыв. <br>Администрация сайта обязательно рассмотрит ваши материалы и опубликует их в ближайшее время.', NULL),
(6, 'message_add_comment_to_news', 'Благодарим вас за оставленный комментарий. <br>С вашей помощью наш сайт становится интереснее и полезнее. <br>Администрация сайта обязательно рассмотрит ваши материалы и опубликует их в ближайшее время.', NULL),
(7, 'message_error_login', 'Неправильно введен логин', NULL),
(8, 'message_after_registration', 'Благодарим вас за регистрацию на нашем сайте! Приятной работы!', NULL),
(9, 'message_text_after_registration_user_at_site', 'Благодарим вас за регистрацию на нашем сайте! <br /> На ваш email, указанный при регистрации, отправлено уведомление с данными для входа в ваш личный кабинет на сайте. <br /> Приятной работы!', NULL),
(10, 'message_after_autorisation', 'Данные введены правильно! Приятной работы!', NULL),
(11, 'message_text_after_autorisation_user_at_site', 'Добро пожаловать на наш сайт! <br /> Воспользуйтесь личным кабинетом для: редактирования своих данных и просмотра истории покупок. <br /> Приятной работы!', NULL),
(12, 'message_error_autorisation', 'Данные введены неправильно! Будьте внимательны!', NULL),
(13, 'message_after_exit', 'Возвращайтесь еще!', NULL),
(14, 'message_text_after_exit', 'Администрация сайта благодарит вас за время, потраченное на нашем сайте. До скорых встреч!', NULL),
(16, 'message_after_edit_data', 'Выши данные изменены. Приятной работы.', NULL),
(17, 'message_text_after_edit_data', 'Благодарим вас внимание к нашему сайту. <br /> На ваш email, указанный при регистрации, отправлено уведомление с измененными данными. <br /> Приятной работы!', NULL),
(18, 'subscribe_refuse', 'Вы отказались от рассылки на сайте!', NULL),
(19, 'subscribe_refuse_error', 'Вы не подписывались на рассылку на сайте!', NULL),
(20, 'subscribe_already01', 'уже является подписчиком на сайте!', NULL),
(21, 'subscribe_already02', 'введите другую почту для подписки.', NULL),
(22, 'subscribe_done', 'Вы подписались на рассылку на сайте', NULL);

-- --------------------------------------------------------

--
-- Структура таблиці `projects`
--

CREATE TABLE IF NOT EXISTS `projects` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `created_at` int(10) DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `name` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп даних таблиці `projects`
--

INSERT INTO `projects` (`id`, `created_at`, `updated_at`, `status`, `name`, `link`, `image`, `sort`) VALUES
(1, 1487773403, 1487773407, 1, 'lester.ua', 'http://lester.ua', '772d57f4c2707680396aa6aa64af0ce7.jpg', NULL);

-- --------------------------------------------------------

--
-- Структура таблиці `reviews`
--

CREATE TABLE IF NOT EXISTS `reviews` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `created_at` int(10) DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `text` text NOT NULL,
  `sort` int(10) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Дамп даних таблиці `reviews`
--

INSERT INTO `reviews` (`id`, `created_at`, `updated_at`, `status`, `name`, `link`, `text`, `sort`, `image`) VALUES
(1, 1485022704, 1485792656, 1, 'ООО Фитнес Салон', 'http://trensalon.ru', 'Выражаю большую благодарность Elit-web за проделанную работу по оптимизации и продвижении нашего сайта. На момент начала сотрудничества клиенты к нам приходили только из Яндекс Директ и Google Adwords, что тянуло за собой большие затраты. На данный момент можно смело отключить обе компании,так как ежемесячно SEO только набирает обороты. Рекомендую всем эту компанию как ответственного и исполнительного подрядчика.', NULL, NULL),
(2, 1485022752, 1485792671, 1, 'ООО Байк Актив', 'http://bikeactiv.ru', 'Очень довольны сотрудничеством с агентством Elit-web. Хотел бы отметить их профессионализм, оперативность и компетентность в работе. В течении первых 2-х месяцев сотрудничества я уже увидел достойный результат, число заказов растет ежемесячно.Всем рекомендую!!!!', NULL, '5cd0163bc726b06082a9d958fd6e652a.png'),
(5, 1485792795, NULL, 1, 'Александр Алексеевич', 'http://bodyactiv.ru', 'Elit-web занимается продвижением моего сайта уже около 2 лет. Работал до этого с 2-мя компаниями и обещанных результатов я так не увидел от прошлых подрядчиков. Полностью удовлетворен результатом нашего сотрудничества. Все обещания и прогнозы всегда близки к получаемому результату. За 4 года продвижения сайта это первая студия, специалистов которой мне не надо контролировать. Последний год я делаю только 2 действия: перевожу деньги и анализирую ежемесячный отчет. Рекомендую Elit-web как профессионального и порядочного партнера!', NULL, NULL),
(6, 1485792976, NULL, 1, 'ООО "Компания Светодиодное освещение"', 'http://yarchesvet.ru', 'Только лучшие впечатления от работы. Внимательны к пожеланиям заказчика, Своевременно и грамотно осуществляется поддержка и развитие сайта, что снимает с нашей организации множество сложных задач. На протяжении более 1 года видим стабильный рост продвигаемых позиций и количества звонков от клиентов. Продолжаем работать и по настоящее время.', NULL, NULL),
(7, 1485793159, NULL, 1, 'ФОП Босенко', 'http://crocs.org.ua', 'Сотрудничаем с ребятами из Elit уже больше двух лет и за все время мы реализовали не мало проектов по части нашего сайта. Рекомендую к сотрудничеству.', NULL, NULL),
(8, 1485793289, NULL, 1, 'Сыров Александр Игоревич', 'http://lavkabuy.ru', 'Работать c командой агенства – приятно!   За время 2-х летнего сотрудничества не было ни единого нарекания по качеству предоставляемых услуг. Надёжный и ответственный партнер по бизнесу. Всегда ответят на интересующие вопросы, дадут дельный совет по реализации задач компании.   Благодаря коллегам из Elit-web мы не стоим на месте, а идем уверенным шагом в ногу со временем!', NULL, NULL),
(9, 1485793514, NULL, 1, 'ООО "Мёдомир"', 'http://medomir.ru', 'Давно искали добросовестную компанию чтобы передать в надежные руки работу нашего интернет-магазина. После знакомства с Игорем из Elit-web, головная боль о продвижении и модификациям ушла моментально. Работа выполняется качественно и в поставленные сроки.', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблиці `seo_links`
--

CREATE TABLE IF NOT EXISTS `seo_links` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` int(10) DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `h1` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `keywords` text,
  `text` text,
  PRIMARY KEY (`id`),
  KEY `link` (`link`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблиці `seo_redirects`
--

CREATE TABLE IF NOT EXISTS `seo_redirects` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `created_at` int(10) DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `link_from` varchar(255) DEFAULT NULL,
  `link_to` varchar(255) DEFAULT NULL,
  `type` int(4) NOT NULL DEFAULT '300',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп даних таблиці `seo_redirects`
--

INSERT INTO `seo_redirects` (`id`, `created_at`, `updated_at`, `status`, `link_from`, `link_to`, `type`) VALUES
(1, 1484921970, NULL, 0, '/asdfasdf', '/asdfasdfasdf', 300);

-- --------------------------------------------------------

--
-- Структура таблиці `seo_scripts`
--

CREATE TABLE IF NOT EXISTS `seo_scripts` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `script` text,
  `status` int(1) DEFAULT '0',
  `created_at` int(10) DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL,
  `place` varchar(31) DEFAULT 'head',
  PRIMARY KEY (`id`),
  KEY `place` (`place`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- Структура таблиці `seo_templates`
--

CREATE TABLE IF NOT EXISTS `seo_templates` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET cp1251 DEFAULT NULL,
  `h1` varchar(250) CHARACTER SET cp1251 DEFAULT NULL,
  `title` varchar(250) CHARACTER SET cp1251 DEFAULT NULL,
  `description` text CHARACTER SET cp1251,
  `keywords` text CHARACTER SET cp1251,
  `updated_at` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп даних таблиці `seo_templates`
--

INSERT INTO `seo_templates` (`id`, `name`, `h1`, `title`, `description`, `keywords`, `updated_at`) VALUES
(1, 'Шаблон для групп товаров', '{{name}}', '{{name}} в интернет магазине Airpac. Купить обувь в Украине, Киеве', '{{content:20}}', '{{name}}, Купить обувь в Украине, Киеве', 1431017014),
(2, 'Шаблон для товаров', '{{name}}', '{{name}} в интернет магазине Airpac. Купить лучшую обувь {{group}} в Украине, Киеве', 'Купить {{name}} в Украине. Огромный ассортимент обуви, современные {{group}} от компании {{brand}}. Гарантия качества, своевременная доставка, любые способы оплаты', 'Купить, {{name}}, {{group}}, {{brand}}, обувь', 1431364621);

-- --------------------------------------------------------

--
-- Структура таблиці `sitemenu`
--

CREATE TABLE IF NOT EXISTS `sitemenu` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `created_at` int(10) DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `sort` int(10) NOT NULL DEFAULT '0',
  `name` varchar(64) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Дамп даних таблиці `sitemenu`
--

INSERT INTO `sitemenu` (`id`, `created_at`, `updated_at`, `status`, `sort`, `name`, `url`) VALUES
(6, 1447091549, 1482853662, 1, 1, 'О нас', '/o-nas'),
(7, 1447091558, 1482853662, 1, 2, 'Новости', 'news'),
(8, 1447091606, 1484834077, 1, 0, 'Статьи', '/articles'),
(9, 1447091617, 1482853662, 1, 4, 'FAQ', 'faq'),
(10, 1447091626, 1482853662, 1, 5, 'Контакты', '/contact'),
(11, 1453977094, 1482853662, 1, 3, 'Доставка', 'dostavka');

-- --------------------------------------------------------

--
-- Структура таблиці `slider`
--

CREATE TABLE IF NOT EXISTS `slider` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `created_at` int(10) DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `sort` int(10) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `image` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Дамп даних таблиці `slider`
--

INSERT INTO `slider` (`id`, `created_at`, `updated_at`, `status`, `sort`, `name`, `url`, `image`) VALUES
(2, 1462880145, 1465462205, 1, 1, 'Nike Air Huarache', 'http://cms.wezom.ks.ua/nke-air-huarache/p155', 'a029c068df62637619a62e821227e8c8.jpg'),
(3, 1462880202, 1465462205, 1, 0, 'Puma Creepers', 'http://cms.wezom.ks.ua/ruma-creepers-/p156', '99315da388f70cc1fe55b02e19a37c24.jpg'),
(5, 1465464168, 1482220526, 1, 0, 'LigaRealEstate - Недвижимость в Турции', 'http://www.ligarealestate.ru/alanya-liga716', '7af66aa4860af646cc2aa7e461d95b8a.jpg'),
(6, 1484666345, 1484833183, 0, 0, 'qqq', 'sdfgsdfgsdfg', '1dcebc6c90a6f5ceee12f0fd34f96270.png');

-- --------------------------------------------------------

--
-- Структура таблиці `specialists`
--

CREATE TABLE IF NOT EXISTS `specialists` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `created_at` int(10) DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `name` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `successful_projects` varchar(255) DEFAULT NULL,
  `experience` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Дамп даних таблиці `specialists`
--

INSERT INTO `specialists` (`id`, `created_at`, `updated_at`, `status`, `name`, `position`, `successful_projects`, `experience`, `image`, `sort`) VALUES
(2, 1485017509, 1485795871, 0, 'Алексей', 'Менеджер проекта', '45', '65', '6cfd1de3c072004ba122f1fc1b2738be.png', 8),
(3, 1485017532, 1485854922, 1, 'Евгений', 'Программист', '742', '16 лет', '413928c352c9190deb6321dfb3708895.jpg', 7),
(4, 1485017558, 1485795870, 1, 'Алексей', 'Ведущий специалист', '351', '7 лет', 'ccbf5b2b2b7fe5c2c0958f6f19c73aca.png', 2),
(5, 1485017580, 1485795870, 1, 'Марина', 'Оптимизатор', '57', '2 года', 'dcf50e6c2d08e813e9e0720c38386e8f.jpg', 3),
(6, 1485017609, 1485854950, 1, 'Яна', 'Link-менеджер', '45', '1,5 года', '6b902c05b12554cef8ef8cffd8da5b2f.jpg', 4),
(7, 1485017626, 1485854943, 1, 'Надежда', 'Копирайтер', '129', '4 года', '9c1b1e432e0e503aa6e90811a632f23d.jpg', 5),
(8, 1485017648, 1485795870, 1, 'Владимир', 'Интернет-маркетолог', '108', '5 лет', 'd34f9e7340a16558ae3699c5779746b0.png', 0),
(9, 1485017670, 1485795870, 1, 'Денис', 'Проект-менеджер', '215', '9 лет', 'd8edc218dce1fff5666c72418b8ce76b.jpg', 1),
(10, 1485017688, 1485854932, 1, 'Александр', 'Верстальщик', '183', '3,5 года', '40a9db5d459c985c81d917b2765dd08b.jpg', 6);

-- --------------------------------------------------------

--
-- Структура таблиці `specifications`
--

CREATE TABLE IF NOT EXISTS `specifications` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `created_at` int(10) DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `alias` varchar(255) NOT NULL,
  `type_id` int(2) NOT NULL DEFAULT '1',
  `sort` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `alias` (`alias`) USING BTREE,
  KEY `type_id` (`type_id`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

--
-- Дамп даних таблиці `specifications`
--

INSERT INTO `specifications` (`id`, `created_at`, `updated_at`, `status`, `name`, `alias`, `type_id`, `sort`) VALUES
(20, 1447093044, NULL, 1, 'Производство', 'proizvodstvo', 2, 7),
(21, 1447093054, NULL, 1, 'Сезон', 'sezon', 3, 6),
(22, 1447093064, 1447095073, 1, 'Цвет', 'tsvet', 1, 5),
(23, 1447093519, NULL, 1, 'Половой признак', 'sex', 2, 4),
(24, 1463997483, 1464196645, 1, 'Описание', 'opisanie', 2, 3),
(25, 1465039912, 1465040006, 1, 'новинка', 'novinka', 1, 2),
(26, 1484829020, 1484833565, 1, 'Рынок жилья', 'rynok-zhilja', 2, 0),
(27, 1484829099, 1484833673, 1, 'Количество спален', 'kolichestvo-spalen', 3, 1);

-- --------------------------------------------------------

--
-- Структура таблиці `specifications_types`
--

CREATE TABLE IF NOT EXISTS `specifications_types` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп даних таблиці `specifications_types`
--

INSERT INTO `specifications_types` (`id`, `name`) VALUES
(1, 'Цвет'),
(2, 'Обычная'),
(3, 'Мультивыбор');

-- --------------------------------------------------------

--
-- Структура таблиці `specifications_values`
--

CREATE TABLE IF NOT EXISTS `specifications_values` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `created_at` int(10) DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `sort` int(10) DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `alias` varchar(255) NOT NULL,
  `specification_id` int(10) NOT NULL,
  `color` varchar(7) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `alias` (`alias`) USING BTREE,
  KEY `specification_id` (`specification_id`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=113 ;

--
-- Дамп даних таблиці `specifications_values`
--

INSERT INTO `specifications_values` (`id`, `created_at`, `updated_at`, `status`, `sort`, `name`, `alias`, `specification_id`, `color`) VALUES
(74, 1447093164, NULL, 1, 0, 'Китай', 'kitaj', 20, NULL),
(75, 1447093169, NULL, 1, 0, 'Украина', 'ukraina', 20, NULL),
(76, 1447093177, NULL, 1, 0, 'США', 'ssha', 20, NULL),
(77, 1447093182, NULL, 1, 0, 'Италия', 'italija', 20, NULL),
(78, 1447093190, NULL, 1, 0, 'Вьетнам', 'vetnam', 20, NULL),
(79, 1447093196, NULL, 1, 0, 'Индонезия', 'indonezija', 20, NULL),
(80, 1447093205, NULL, 1, 0, 'Польша', 'polsha', 20, NULL),
(81, 1447093215, NULL, 1, 0, 'Лето', 'leto', 21, NULL),
(82, 1447093220, NULL, 1, 0, 'Зима', 'zima', 21, NULL),
(83, 1447093225, NULL, 1, 0, 'Весна', 'vesna', 21, NULL),
(84, 1447093230, NULL, 1, 0, 'Осень', 'osen', 21, NULL),
(85, 1447093257, NULL, 1, 0, 'Бежевый', 'beige', 22, '#f0daad'),
(86, 1447093270, NULL, 1, 0, 'Белый', 'white', 22, '#ffffff'),
(87, 1447093288, NULL, 1, 0, 'Бирюзовый', 'turquoise', 22, '#4ff58c'),
(88, 1447093303, NULL, 1, 0, 'Бордовый', 'claret', 22, '#7a0b21'),
(89, 1447093316, NULL, 1, 0, 'Голубой', 'light_blue', 22, '#00bfff'),
(90, 1447093343, NULL, 1, 0, 'Желтый', 'yellow', 22, '#f2ff00'),
(91, 1447093355, NULL, 1, 0, 'Зеленый', 'green', 22, '#0dbd00'),
(92, 1447093370, NULL, 1, 0, 'Коралловый', 'coral', 22, '#ff6666'),
(93, 1447093388, NULL, 1, 0, 'Коричневый', 'korichnevyj', 22, '#802400'),
(94, 1447093397, NULL, 1, 0, 'Красный', 'krasnyj', 22, '#ff0000'),
(95, 1447093413, NULL, 1, 0, 'Розовый', 'rozovyj', 22, '#ff0077'),
(96, 1447093429, NULL, 1, 0, 'Серый', 'seryj', 22, '#8c8c8c'),
(97, 1447093438, NULL, 1, 0, 'Синий', 'sinij', 22, '#4000ff'),
(98, 1447093453, NULL, 1, 0, 'Фиолетовый', 'fioletovyj', 22, '#9900ff'),
(99, 1447093461, NULL, 1, 0, 'Черный', 'chernyj', 22, '#000000'),
(100, 1447093527, NULL, 1, 0, 'Мужской', 'muzhskoj', 23, NULL),
(101, 1447093531, NULL, 1, 0, 'Женский', 'zhenskij', 23, NULL),
(102, 1447093536, NULL, 1, 0, 'Унисекс', 'uniseks', 23, NULL),
(103, 1484829071, NULL, 1, 0, 'фундамент', 'fundament', 26, NULL),
(104, 1484829079, NULL, 1, 0, 'на стадии строительства', 'na-stadii-stroitelstva', 26, NULL),
(105, 1484829083, NULL, 1, 0, 'готовое новое', 'gotovoe-novoe', 26, NULL),
(106, 1484829107, 1484829403, 1, 0, '1+1', '11', 27, NULL),
(107, 1484829109, NULL, 1, 0, '2', '2', 27, NULL),
(108, 1484829112, NULL, 1, 0, '3', '3', 27, NULL),
(109, 1484829114, NULL, 1, 0, '4', '4', 27, NULL),
(110, 1484829117, NULL, 1, 0, '5', '5', 27, NULL),
(111, 1484833562, NULL, 1, 0, 'вторичный фонд', 'vtorichnyj-fond', 26, NULL),
(112, 1484833634, NULL, 1, 0, 'Студии', 'studii', 27, NULL);

-- --------------------------------------------------------

--
-- Структура таблиці `subscribers`
--

CREATE TABLE IF NOT EXISTS `subscribers` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `created_at` int(10) DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL,
  `email` varchar(64) NOT NULL,
  `ip` varchar(16) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `hash` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп даних таблиці `subscribers`
--

INSERT INTO `subscribers` (`id`, `created_at`, `updated_at`, `email`, `ip`, `status`, `hash`) VALUES
(1, 1461527715, NULL, 'veselovskaya.wezom@gmail.com', '213.227.252.130', 1, '98ee695a6714db101decf8e21ab40d975c62ba74'),
(2, 1476966602, NULL, 'sdgsdfg@sfdgdsfg.fg', '178.136.229.251', 1, '875a57feee6c16e5599dee39e88556ce9552c4ba'),
(3, 1480511990, NULL, 'beliy.i.wezom@gmail.com', NULL, 1, NULL),
(4, 1484832905, NULL, 'email', '178.136.229.251', 1, '7306c0080fd52666dee8507e0d7c2e57a7e012e5');

-- --------------------------------------------------------

--
-- Структура таблиці `subscribe_mails`
--

CREATE TABLE IF NOT EXISTS `subscribe_mails` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `created_at` int(10) DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `text` mediumtext,
  `emails` longtext,
  `count_emails` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп даних таблиці `subscribe_mails`
--

INSERT INTO `subscribe_mails` (`id`, `created_at`, `updated_at`, `subject`, `text`, `emails`, `count_emails`) VALUES
(1, 1464178072, NULL, 'лоижлио', '<p>жлдоижилдо</p>', 'veselovskaya.wezom@gmail.com', 1),
(2, 1480512084, NULL, 'Новая статья', '<p>На сне новая статья и ссылочка</p>', 'beliy.i.wezom@gmail.com;sdgsdfg@sfdgdsfg.fg;veselovskaya.wezom@gmail.com', 3),
(3, 1480512217, NULL, 'Новая статья', '<p style="text-align: justify;">новая статья http://baby-sleep.ru/babysleep-rekomenduet/91-informatsiya</p>', 'beliy.i.wezom@gmail.com;sdgsdfg@sfdgdsfg.fg;veselovskaya.wezom@gmail.com', 3);

-- --------------------------------------------------------

--
-- Структура таблиці `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET cp1251 DEFAULT NULL,
  `login` varchar(128) CHARACTER SET cp1251 DEFAULT NULL,
  `password` varchar(128) CHARACTER SET cp1251 DEFAULT NULL,
  `created_at` int(10) DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL,
  `hash` varchar(255) CHARACTER SET cp1251 DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `role_id` int(2) NOT NULL DEFAULT '1',
  `ip` varchar(16) DEFAULT NULL,
  `phone` varchar(64) DEFAULT NULL,
  `last_login` int(10) DEFAULT NULL,
  `logins` int(10) DEFAULT '0',
  `last_name` varchar(64) DEFAULT NULL,
  `middle_name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login` (`login`) USING BTREE,
  UNIQUE KEY `hash` (`hash`) USING BTREE,
  KEY `role_id` (`role_id`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

--
-- Дамп даних таблиці `users`
--

INSERT INTO `users` (`id`, `name`, `login`, `password`, `created_at`, `updated_at`, `hash`, `email`, `status`, `role_id`, `ip`, `phone`, `last_login`, `logins`, `last_name`, `middle_name`) VALUES
(1, 'Администратор', 'admin', 'c2bcb46de4d99a0ce346ee0a6530b85bb6f0fb80656406a23d3e60c1158a22e8', 1418300546, 1430939378, '48e00180ccc77b94d73ec413b015a4cfb9aa58ba10d8c1b63aad5c8317847d9f', 'palenaya.v.wezom111@gmail.com', 1, 4, NULL, '+38 (111) 111-11-11', NULL, 0, NULL, NULL),
(2, 'weZom', 'wezom', '4958070fab7cebd8b1000c6c8cb1bca4aa23b509ee9bc4b70570b5c0e3dfe64a', NULL, 1435164507, 'c2bcb46de4d99a0ce346ee0a6530b85bb6f0fb80656406a23d3e60c1158a22e8', 'vitaliy.demyjkane3nko.1991@gmail.com', 1, 3, NULL, '+38 (567) 567-56-75', NULL, 0, NULL, NULL),
(21, 'Виталя', NULL, 'd7957677dc4ec0e9e425c8b99e477aa70244ae512fc2583af6a1ab2ee3b01fbc', 1447096765, 1448350164, 'd6fb647d44ada79149c6732227667ea44b84ab78706cffe94027f960d0bb1124', 'demyanenko.v.wezom@ukr.net', 1, 1, '127.0.0.1', '', 1448350164, 3, 'Демяненко', '444'),
(22, 'Test1', 'admin1', 'c2bcb46de4d99a0ce346ee0a6530b85bb6f0fb80656406a23d3e60c1158a22e8', 1447426756, 1447426756, NULL, NULL, 1, 5, NULL, NULL, NULL, 0, NULL, NULL),
(23, 'Anton', NULL, '3e61c90127ae20abbcc8b1b7cfabf301a0269de0460890d5ec33373870c4e172', 1447515858, NULL, '409fe348ba859b01e942532e108ff6479dd435feaae09d81adc9aa91871a0de0', 'crocoash@gmail.com', 1, 1, '109.86.230.160', NULL, 1447515857, 1, 'Tsvetkov', NULL),
(24, 'Vitaliy', NULL, '339e548c63121ea40d9b8d9a7e6bc43279ba802991a1d2dd54ec8c080328b826', 1448910941, NULL, '3d63d55d0f1a64f2ad0bd1255b4ecbdbfc0820362d2f1456b64556439fc1e5a8', 'demyanenko.v.wezom@gmail.com', 1, 1, '46.175.163.12', NULL, 1448910941, 1, 'Demianenko', NULL),
(25, 'zorya', 'zorya', '131cf002c1c268432c00b026a5182ada3c14a3cbd3ec2f112ea2aff21f4e621e', 1450795155, 1460728810, NULL, NULL, 1, 7, NULL, NULL, NULL, 0, NULL, NULL),
(26, 'test', NULL, '99bbed544406cf05b82dd1e9f2affaebaf189fca8c2cfef0ee3ffa2f5250611f', 1461673130, NULL, '73ffbeef661a2707b9bea04b39979a2a99655a8ae4eed79a35869f20bdec40a3', 'test.wezom@mail.ru', 0, 1, NULL, '', NULL, 0, '', ''),
(27, 'Екатерина', NULL, 'ce7500fb2f28f5d742c9821a1bd7847e8375065070d0e137c401cd151f8b7564', 1464541221, NULL, 'd9201dfdc8a7585db6d597b570cbaddf8e8288408e5713f887baff81ec9daadf', 'katia-katerinka_@mail.ru', 1, 1, '83.142.111.151', NULL, 1464541221, 1, 'Баськова', NULL),
(28, 'test', NULL, '99bbed544406cf05b82dd1e9f2affaebaf189fca8c2cfef0ee3ffa2f5250611f', 1465467766, NULL, '398518fd32869473b46bb3f54c02cb85e86421138514e01b9e85a23b79edc9e9', 'test1@mail.ru', 0, 1, NULL, '', NULL, 0, '', ''),
(29, 'Оля', NULL, '2390473a84a11166926bd502c272e3622e707a90a10d55e4e3aabe636823eb5d', 1481724422, NULL, '88e2292a1de6bbeeea748fa513b01520dfa6bad8efbeb46d99a5290f9c6c70e3', 'qa.wezom@gmail.com', 1, 1, '178.136.229.251', NULL, 1481724422, 1, 'Котикова', NULL);

-- --------------------------------------------------------

--
-- Структура таблиці `users_networks`
--

CREATE TABLE IF NOT EXISTS `users_networks` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `network` varchar(32) NOT NULL,
  `created_at` int(10) DEFAULT NULL,
  `uid` varchar(64) NOT NULL,
  `profile` varchar(128) NOT NULL,
  `first_name` varchar(32) DEFAULT NULL,
  `last_name` varchar(32) DEFAULT NULL,
  `email` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Дамп даних таблиці `users_networks`
--

INSERT INTO `users_networks` (`id`, `user_id`, `network`, `created_at`, `uid`, `profile`, `first_name`, `last_name`, `email`) VALUES
(7, 21, 'vkontakte', 1447096768, '22898418', 'http://vk.com/id22898418', 'Виталя', 'Демяненко', 'demyanenko.v.wezom@ukr.net'),
(8, 21, 'facebook', 1447096775, '100003261046861', 'http://www.facebook.com/100003261046861', 'Vitaliy', 'Demianenko', 'vitaliy.demyanenko.1991@gmail.com'),
(9, 23, 'facebook', 1447515858, '1628676114064038', 'https://www.facebook.com/app_scoped_user_id/1628676114064038/', 'Anton', 'Tsvetkov', 'crocoash@gmail.com'),
(10, 24, 'instagram', 1448910941, '1685676043', 'http://instagram.com/demianenko_v', 'Vitaliy', 'Demianenko', 'demyanenko.v.wezom@gmail.com'),
(11, 27, 'vkontakte', 1464541222, '3646497', 'http://vk.com/id3646497', 'Екатерина', 'Баськова', 'katia-katerinka_@mail.ru'),
(12, 29, 'vkontakte', 1481724422, '314286931', 'http://vk.com/id314286931', 'Оля', 'Котикова', 'qa.wezom@gmail.com');

-- --------------------------------------------------------

--
-- Структура таблиці `users_roles`
--

CREATE TABLE IF NOT EXISTS `users_roles` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `alias` varchar(128) NOT NULL,
  `created_at` int(10) DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Дамп даних таблиці `users_roles`
--

INSERT INTO `users_roles` (`id`, `name`, `description`, `alias`, `created_at`, `updated_at`) VALUES
(1, 'Пользователь', 'Обычный пользователь, зарегистрировавшийся на сайте', 'user', NULL, NULL),
(3, 'Разработчик', 'Полный доступ ко всему + к тому к чему нет доступа у главного администратора', 'developer', NULL, NULL),
(4, 'Суперадмин', 'Доступ ко всем разделам, кроме тех, к которым имеет доступ только разработчик', 'superadmin', NULL, NULL),
(5, 'роль2', 'доступ к редактированию новостей', 'admin', 1447421386, 1476364906),
(6, 'rol1', 'запрещено все', 'admin', 1447662341, NULL),
(7, 'все разрешено', 'доступ ко всем разделам', 'admin', 1460728748, 1476364864);

-- --------------------------------------------------------

--
-- Структура таблиці `visitors`
--

CREATE TABLE IF NOT EXISTS `visitors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(16) NOT NULL,
  `country` varchar(63) DEFAULT NULL,
  `region` varchar(63) DEFAULT NULL,
  `city` varchar(63) DEFAULT NULL,
  `longitude` varchar(15) DEFAULT NULL,
  `latitude` varchar(15) DEFAULT NULL,
  `answer` text,
  `first_enter` int(10) DEFAULT NULL,
  `last_enter` int(10) DEFAULT NULL,
  `enters` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ip` (`ip`) USING BTREE,
  KEY `country` (`country`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=57 ;

-- --------------------------------------------------------

--
-- Структура таблиці `visitors_hits`
--

CREATE TABLE IF NOT EXISTS `visitors_hits` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ip` varchar(16) NOT NULL,
  `url` varchar(255) NOT NULL,
  `created_at` int(10) DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL,
  `status` varchar(32) NOT NULL DEFAULT '200 OK',
  `device` varchar(32) NOT NULL DEFAULT 'Computer',
  `useragent` varchar(255) DEFAULT NULL,
  `counter` int(10) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `ip` (`ip`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблиці `visitors_referers`
--

CREATE TABLE IF NOT EXISTS `visitors_referers` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ip` varchar(16) NOT NULL,
  `url` varchar(255) NOT NULL,
  `created_at` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ip` (`ip`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `access`
--
ALTER TABLE `access`
  ADD CONSTRAINT `access_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `users_roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog`
--
ALTER TABLE `catalog`
  ADD CONSTRAINT `catalog_ibfk_1` FOREIGN KEY (`brand_alias`) REFERENCES `brands` (`alias`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `catalog_ibfk_2` FOREIGN KEY (`model_alias`) REFERENCES `models` (`alias`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `catalog_ibfk_3` FOREIGN KEY (`image`) REFERENCES `catalog_images` (`image`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `catalog_ibfk_4` FOREIGN KEY (`parent_id`) REFERENCES `catalog_tree` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `catalog_comments`
--
ALTER TABLE `catalog_comments`
  ADD CONSTRAINT `catalog_comments_ibfk_1` FOREIGN KEY (`catalog_id`) REFERENCES `catalog` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_images`
--
ALTER TABLE `catalog_images`
  ADD CONSTRAINT `catalog_images_ibfk_1` FOREIGN KEY (`catalog_id`) REFERENCES `catalog` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_questions`
--
ALTER TABLE `catalog_questions`
  ADD CONSTRAINT `catalog_questions_ibfk_1` FOREIGN KEY (`catalog_id`) REFERENCES `catalog` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `catalog_related`
--
ALTER TABLE `catalog_related`
  ADD CONSTRAINT `catalog_related_ibfk_1` FOREIGN KEY (`who_id`) REFERENCES `catalog` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `catalog_related_ibfk_2` FOREIGN KEY (`with_id`) REFERENCES `catalog` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_specifications_values`
--
ALTER TABLE `catalog_specifications_values`
  ADD CONSTRAINT `catalog_specifications_values_ibfk_1` FOREIGN KEY (`catalog_id`) REFERENCES `catalog` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `catalog_specifications_values_ibfk_2` FOREIGN KEY (`specification_alias`) REFERENCES `specifications` (`alias`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `catalog_specifications_values_ibfk_3` FOREIGN KEY (`specification_value_alias`) REFERENCES `specifications_values` (`alias`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_tree_brands`
--
ALTER TABLE `catalog_tree_brands`
  ADD CONSTRAINT `catalog_tree_brands_ibfk_1` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `catalog_tree_brands_ibfk_2` FOREIGN KEY (`catalog_tree_id`) REFERENCES `catalog_tree` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_tree_specifications`
--
ALTER TABLE `catalog_tree_specifications`
  ADD CONSTRAINT `catalog_tree_specifications_ibfk_1` FOREIGN KEY (`catalog_tree_id`) REFERENCES `catalog_tree` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `catalog_tree_specifications_ibfk_2` FOREIGN KEY (`specification_id`) REFERENCES `specifications` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `config`
--
ALTER TABLE `config`
  ADD CONSTRAINT `config_ibfk_1` FOREIGN KEY (`group`) REFERENCES `config_groups` (`alias`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `config_ibfk_2` FOREIGN KEY (`type`) REFERENCES `config_types` (`alias`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `gallery_images`
--
ALTER TABLE `gallery_images`
  ADD CONSTRAINT `gallery_images_ibfk_1` FOREIGN KEY (`gallery_id`) REFERENCES `gallery` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `models`
--
ALTER TABLE `models`
  ADD CONSTRAINT `models_ibfk_1` FOREIGN KEY (`brand_alias`) REFERENCES `brands` (`alias`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `orders_items`
--
ALTER TABLE `orders_items`
  ADD CONSTRAINT `orders_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_items_ibfk_2` FOREIGN KEY (`catalog_id`) REFERENCES `catalog` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `orders_simple`
--
ALTER TABLE `orders_simple`
  ADD CONSTRAINT `orders_simple_ibfk_1` FOREIGN KEY (`catalog_id`) REFERENCES `catalog` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `specifications`
--
ALTER TABLE `specifications`
  ADD CONSTRAINT `specifications_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `specifications_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `specifications_values`
--
ALTER TABLE `specifications_values`
  ADD CONSTRAINT `specifications_values_ibfk_1` FOREIGN KEY (`specification_id`) REFERENCES `specifications` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `users_roles` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `users_networks`
--
ALTER TABLE `users_networks`
  ADD CONSTRAINT `users_networks_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `visitors_hits`
--
ALTER TABLE `visitors_hits`
  ADD CONSTRAINT `visitors_hits_ibfk_1` FOREIGN KEY (`ip`) REFERENCES `visitors` (`ip`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `visitors_referers`
--
ALTER TABLE `visitors_referers`
  ADD CONSTRAINT `visitors_referers_ibfk_1` FOREIGN KEY (`ip`) REFERENCES `visitors` (`ip`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
