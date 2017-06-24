-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Wersja serwera:               10.1.16-MariaDB - mariadb.org binary distribution
-- Serwer OS:                    Win32
-- HeidiSQL Wersja:              9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Zrzut struktury tabela mariuszb_laravel.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Zrzucanie danych dla tabeli mariuszb_laravel.migrations: ~2 rows (około)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2017_05_15_162459_Site', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Zrzut struktury tabela mariuszb_laravel.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Zrzucanie danych dla tabeli mariuszb_laravel.password_resets: ~0 rows (około)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Zrzut struktury tabela mariuszb_laravel.sites
CREATE TABLE IF NOT EXISTS `sites` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `on` int(11) NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Zrzucanie danych dla tabeli mariuszb_laravel.sites: ~3 rows (około)
/*!40000 ALTER TABLE `sites` DISABLE KEYS */;
INSERT INTO `sites` (`id`, `section`, `content`, `on`, `token`, `created_at`) VALUES
	(1, 'about', 'Nazywam się Mariusz Bocz, a informatyka jest moją największą pasją. Już jako dziecko systematycznie rozwijałem swoje umiejętności, programując w różnych językach. \r\n                    <br><br>\r\n                    Uważam, że proces programowania można porównać do zabawy klockami  - dodając każdy, kolejny element, w kreatywny sposób można stworzyć coś niespodziewanego.\r\n                    <br><br>\r\n                    Programista powinien być elastyczny i umieć odnaleźć się w każdej współpracy. Jest to niewątpliwie cecha, która sprawia, że dobry informatyk stale się rozwija i stawia czoła nowym wyzwaniom.  \r\n                    <br><br>\r\n                    Do tej pory miałem do czynienia z tworzeniem sklepów internetowych, systemu mailingowego, magazynów czy kreowaniem systemu filtracji produktów wedle określonych kryteriów. \r\n                    <br>\r\n                    Photoshop również nie jest mi obcy!\r\n                    <br>\r\n                    Poruszam się m.in. w takich frameworkach jak: Zend Framework 2 czy Laravel 5.4. \r\n                    <br>\r\n                    Miałem do czynienia z PHP w wersji 5.6, bazą danych MySQL, jak i również tworzyłem dynamiczne aplikacje w JavaScript i jQuery. Oprócz PDO do łączenia się z bazą danych używałem również Ajaxa. \r\n                    <br><br>\r\n                    Obecnie tworzę autorski system CRM (w Laravelu) oraz zajmuje się innymi projektami  m.in. tworzeniem stron pod daną tematykę.\r\n                    <br><br>\r\n                    Zapraszam do współpracy!', 1, '', '2017-05-16 18:44:38'),
	(2, 'cv', '<div class="row" style="">\r\n                    <div class="col-lg-4 col-md-4 col-sm-4 hidden-xs">\r\n                        <img id="zdjecieCV" src="./image/ja.jpg" alt="" class="img-circle img-responsive">\r\n                    </div>\r\n                    <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12 imieNazwisko"><span>Mariusz Bocz</span></div>\r\n                </div>\r\n                <p class="text"></p>\r\n                <div class="row">\r\n                    <div class="col-lg-12 heading"><span>Dane podstawowe</span></div>\r\n                </div>\r\n                <div class="row">\r\n                    <table class="table table-hover">\r\n                        <tr>\r\n                            <td><span>Miejscowość:</span></td>\r\n                            <td><span>Bytom</span></td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td><span>e-mail:</span></td>\r\n                            <td><span>info@mariuszb.eu</span></td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td><span>Telefon:</span></td>\r\n                            <td><span>796-162-903</span></td>\r\n                        </tr>\r\n                    </table>\r\n                </div>\r\n                <div class="row">\r\n                    <div class="col-lg-12 heading"><span>Wykształcenie</span></div>\r\n                </div>\r\n                <div class="row">\r\n                    <table class="table table-hover">\r\n                        <tr>\r\n                            <td><span>2011 – 2015:</span></td>\r\n                            <td><span>Politechnika Śląska – Studia Inżynierskie</span></td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td><span>W trakcie studiów:</td>\r\n                            <td><span>Wymiana studencka z programu Erasmus</span></td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td><span>2007 – 2011:</td>\r\n                            <td><span>Zespół Szkół Technicznych – Technik informatyk</span></td>\r\n                        </tr>\r\n                    </table>\r\n                </div>\r\n                <div class="row">\r\n                    <div class="col-lg-12 heading"><span>Doświadczenie zawodowe</span></div>\r\n                </div>\r\n                <div class="row">\r\n                    <table class="table table-hover">\r\n                        <tr>\r\n                            <td><span>2017:</span></td>\r\n                            <td><span>Synergy Poland – Web Developer</span></td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td><span>2016:</span></td>\r\n                            <td><span>Positive Power – Programista PHP</span></td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td><span>2015:</span></td>\r\n                            <td><span>Grupa AMP Media – młodszy programista</span></td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td><span>2015:</span></td>\r\n                            <td><span>Stażysta ds. sprzedaży internetowej w firmie kochamsamochody.com</span></td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td><span>2015:</span></td>\r\n                            <td><span>Pracownik ds. sprzedaży internetowej w firmie HID</span></td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td><span>2014:</span></td>\r\n                            <td><span>Staż w serwisie komputerowym UniCom</span></td>\r\n                        </tr>\r\n                    </table>\r\n                </div>\r\n                <div class="row">\r\n                    <div class="col-lg-12 heading"><span>Umiejętności</span></div>\r\n                </div>\r\n                <div class="row">\r\n                    <table class="table table-hover">\r\n                        <tr>\r\n                            <td><span>Język:</span></td>\r\n                            <td><span>Angielski: Komunikatywny</span></td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td><span>Narzędzia:</span></td>\r\n                            <td><span>MS Office, AutoCad, SolidEdge, SolidWorks, Adobe Flash, 3D Studio Max, Inkscape, Paint.net, Photoshop, PuTTy</span></td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td><span>Systemy operacyjne:</span></td>\r\n                            <td><span>Windows, Linux, MacOS</span></td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td><span>Technologie internetowe:</span></td>\r\n                            <td><span>HTML, CSS 3, PHP 5.6, JavaScript, jQuery, Flash, SASS, MySQL, system kontroli wersji Git, Bootstrap, Zend Framework 2, Laravel 5.4</span></td>\r\n                        </tr>\r\n                    </table>\r\n                </div>', 1, '', '2017-05-16 18:46:09'),
	(3, 'project', '<div class="row article" >\r\n                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 ">\r\n                        <a href="http://host.vipserv.org/Przyklady/obustronne.png" target="_blank">\r\n                            <img src="./image/ulotkaSmoto.jpg" class="img-responsive" />\r\n                        </a>\r\n                        <p class="shortText">\r\n                            <b>Ulotka SMoto</b><br><br>Graficzna ulotka\r\n                        </p>\r\n                    </div>\r\n                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 ">\r\n                        <a href="http://host.vipserv.org/Przyklady/onePage/index.html" target="_blank">\r\n                            <img src="./image/onePage.jpg" class="img-responsive"/>\r\n                        </a>\r\n                        <p class="shortText">\r\n                            <b>One Page</b><br><br>Strona w stylu one page\r\n                        </p>\r\n                    </div>\r\n                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 ">\r\n                        <a href="http://host.vipserv.org/Przyklady/stronaNaBootstrap/index.html" target="_blank">\r\n                            <img src="./image/responsywnaStronaNaBootstrap.jpg" class="img-responsive"/>\r\n                        </a>\r\n                        <p class="shortText">\r\n                            <b>Responsive bootstrap</b><br><br>Responsywna strona oparta na bootstrapie\r\n                        </p>\r\n                    </div>\r\n                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 ">\r\n                        <a href="http://host.vipserv.org/Przyklady/sementic/" target="_blank">\r\n                            <img src="./image/zmodyfikowanyFrameworkSementic.jpg" class="img-responsive"/>\r\n                        </a>\r\n                        <p class="shortText">\r\n                            <b>Zmodyfikowany Framework Sementic</b><br><br>Strona oparta na frameworku Sementic\r\n                        </p>\r\n                    </div>\r\n                </div>\r\n\r\n                <div class="row article" >\r\n                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 ">\r\n                        <a href="http://host.vipserv.org/davebosax.com/" target="_blank">\r\n                            <img src="./image/daveBoSaxNew.jpg" class="img-responsive" />\r\n                        </a>\r\n                        <p class="shortText">\r\n                            <b>Davebosax</b><br><br>Strona oparta głównie na javascript\r\n                        </p>\r\n                    </div>\r\n                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 ">\r\n                        <a href="http://host.vipserv.org/royalhouse.com.pl/" target="_blank">\r\n                            <img src="./image/royalhouse.jpg" class="img-responsive"/>\r\n                        </a>\r\n                        <p class="shortText">\r\n                            <b>Royalhouse</b><br><br>Strona oparta głównie na jquery\r\n                        </p>\r\n                    </div>\r\n                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 ">\r\n                        <a href="http://host.vipserv.org/firma/" target="_blank">\r\n                            <img src="./image/madeDeveloped.jpg" class="img-responsive"/>\r\n                        </a>\r\n                        <p class="shortText">\r\n                            <b>Made developed</b><br><br>HTML, CSS, JavaScript\r\n                        </p>\r\n                    </div>\r\n                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 ">\r\n                        <a href="http://buks.bytom.pl" target="_blank">\r\n                            <img src="./image/buks.jpg" class="img-responsive"/>\r\n                        </a>\r\n                        <p class="shortText">\r\n                            <b>buks.bytom.pl</b><br><br>Strona Bytomskiego Brydżowego Klubu Brydża Sportowego\r\n                        </p>\r\n                    </div>\r\n                </div>\r\n                <div class="row article">\r\n                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 ">\r\n                        <a href="http://davebosax.com" target="_blank">\r\n                            <img src="./image/davebosax.jpg" class="img-responsive"/>\r\n                        </a>\r\n                        <p class="shortText">\r\n                            <b>davebosax.com</b><br><br>Strona najlepszego klubowego saksofonisty\r\n                        </p>\r\n                    </div>\r\n                </div>', 1, '', '2017-05-16 18:56:49'),
	(4, 'general', '<p>Zapraszam do oglądania mojej strony</p>\r\n<h5>Proszę kliknąć na jeden z rogów strony aby przejść do odpowiedniej sekcji</h5>', 1, '', '2017-05-16 18:59:05');
/*!40000 ALTER TABLE `sites` ENABLE KEYS */;

-- Zrzut struktury tabela mariuszb_laravel.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Zrzucanie danych dla tabeli mariuszb_laravel.users: ~0 rows (około)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Mariusz Bocz', 'mariusz.b@vp.pl', '$2y$10$elA2DwA0Ysj9iFnlpoHI0u.CsP/Lc208KXVd6qweJRV4Whg0Du9va', 'Cryu73AWq9pALH2BHPCywTcRVI3bsrKW1cUzA3Twkn7a4DmYxRRGXHgBA1jL', '2017-05-21 14:11:22', '2017-05-21 14:11:22');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
