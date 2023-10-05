-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost:3306
-- Üretim Zamanı: 05 Eki 2023, 12:50:02
-- Sunucu sürümü: 10.3.38-MariaDB-0ubuntu0.20.04.1
-- PHP Sürümü: 7.4.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `dogancay_test`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `about_us`
--

CREATE TABLE `about_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `about_us`
--

INSERT INTO `about_us` (`id`, `data`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '{\"en\": {\"text\": \"In today\'s market conditions, the importance of home and office transportation service is increasing, and as Doğançay Home & Office Transportation, we are at the service of our valued customers with our entire technological infrastructure, as a company that practices home-to-home transportation rather than using it as a term. As Doğançay Transportation, we have entered the House to House Transportation sector in 1982, and we have taken our place in the field of goods storage in line with the needs and demands of our customers, as of May 2010, with the Smart Warehouse brand.\", \"title\": \"Doğançay Nakliyat home & office transportation\"}, \"ge\": {\"text\": \"Unter den heutigen Marktbedingungen nimmt die Bedeutung des Heim- und Bürotransportdienstes zu, und als Doğançay Home & Office Transportation stehen wir als Unternehmen, das Haus-zu-Haus-Transporte durchführt, mit unserer gesamten technologischen Infrastruktur im Dienste unserer geschätzten Kunden anstatt es als Begriff zu verwenden. Als Doğançay Nakliyat sind wir 1982 in den Bereich Haus-zu-Haus-Transporte eingestiegen und haben im Mai 2010 im Einklang mit den Bedürfnissen und Anforderungen unserer Kunden mit der Marke Smart Warehouse unseren Platz im Bereich der Warenlagerung eingenommen.\", \"title\": \"Doğançay Nakliyat Transport zu Hause und im Büro\"}, \"tr\": {\"text\": \"Günümüz piyasa koşullarında ev ve ofis taşıma hizmetinin önemi daha da artmakta olup, Doğançay Ev & Ofis taşıma olarak evden eve nakliyat işini bir terim olarak kullanmaktan çok , uygulayan bir firma hüviyeti ile tüm teknolojik altyapımızla , siz değerli müşterilerimizin hizmetindeyiz. Doğançay Nakliyat olarak 1982 tarihinde girmiş olduğumuz Evden Eve Nakliyat sektöründe, müşterilerimizin ihtiyaçları ve talepleri doğrultusunda eşya depolama alanında 2010 Mayıs ayı itibariyle Akıllı Depo markası ile hizmetleriniz için yerimizi almış durumdayız.\", \"title\": \"Doğançay Nakliyat ev & ofis taşıma\"}, \"img_url\": \"assets/images/aboutus-inner/aboutus.jpg\"}', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `about_us_inners`
--

CREATE TABLE `about_us_inners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `about_us_inners`
--

INSERT INTO `about_us_inners` (`id`, `data`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '{\"en\": {\"text\": \"In today\'s market conditions, the importance of home and office transportation service is increasing, and as Doğançay Home & Office Transportation, we are at the service of our valued customers with our entire technological infrastructure, as a company that practices home-to-home transportation rather than using it as a term. As Doğançay Transportation, we have entered the House to House Transportation sector in 1982, and we have taken our place in the field of goods storage in line with the needs and demands of our customers, as of May 2010, with the Smart Warehouse brand. As a company that has managed to fully implement the Doğançay home & office moving supply chain, our company will continue to work for the domestic house-to-house moving sector in the future. Our company will exist in this sector for years by increasing the trust it has gained in a short time and will take its place among the most respected companies. Our company was established to provide a service in line with your expectations to our valued customers by using all the technological and social innovations required by the storage and transportation industry and will grow further with you. Our company is always with you as a solution partner with its wide vehicle fleet and service network. Our biggest goal in the future is to provide permanent advantages in the storage and transportation industry. Thank you for choosing our company for home-to-home transportation and goods storage services.\", \"title\": \"Doğançay Nakliyat home & office transportation\"}, \"ge\": {\"text\": \"Unter den heutigen Marktbedingungen nimmt die Bedeutung des Heim- und Bürotransportdienstes zu, und als Doğançay Home & Office Transportation stehen wir als Unternehmen, das Haus-zu-Haus-Transporte durchführt, mit unserer gesamten technologischen Infrastruktur im Dienste unserer geschätzten Kunden anstatt es als Begriff zu verwenden. Als Doğançay Nakliyat sind wir 1982 in den Bereich Haus-zu-Haus-Transporte eingestiegen und haben im Mai 2010 im Einklang mit den Bedürfnissen und Anforderungen unserer Kunden mit der Marke Smart Warehouse unseren Platz im Bereich der Warenlagerung eingenommen. Als Unternehmen, das es geschafft hat, die Doğançay-Lieferkette für Haus- und Büroumzüge vollständig umzusetzen, wird unser Unternehmen auch in Zukunft für den inländischen Haus-zu-Haus-Umzugssektor tätig sein. Unser Unternehmen wird in diesem Sektor jahrelang bestehen bleiben, indem es das in kurzer Zeit gewonnene Vertrauen steigert und seinen Platz unter den angesehensten Unternehmen einnimmt. Unser Unternehmen wurde gegründet, um unseren geschätzten Kunden einen Service zu bieten, der Ihren Erwartungen entspricht, indem es alle technologischen und sozialen Innovationen nutzt, die die Lager- und Transportbranche erfordert, und wird mit Ihnen weiter wachsen. Unser Unternehmen steht Ihnen mit seinem breiten Fuhrpark und Servicenetzwerk stets als Lösungspartner zur Seite. Unser größtes Ziel für die Zukunft ist es, der Lager- und Transportbranche dauerhafte Vorteile zu verschaffen. Vielen Dank, dass Sie sich für unser Unternehmen für den Haus-zu-Haus-Transport und die Warenlagerung entschieden haben.\", \"title\": \"Doğançay Nakliyat Transport zu Hause und im Büro\"}, \"tr\": {\"text\": \"Günümüz piyasa koşullarında ev ve ofis taşıma hizmetinin önemi daha da artmakta olup, Doğançay Ev & Ofis taşıma olarak evden eve nakliyat işini bir terim olarak kullanmaktan çok , uygulayan bir firma hüviyeti ile tüm teknolojik altyapımızla , siz değerli müşterilerimizin hizmetindeyiz. Doğançay Nakliyat olarak 1982 tarihinde girmiş olduğumuz Evden Eve Nakliyat sektöründe, müşterilerimizin ihtiyaçları ve talepleri doğrultusunda eşya depolama alanında 2010 Mayıs ayı itibariyle Akıllı Depo markası ile hizmetleriniz için yerimizi almış durumdayız.            Kurumumuz Doğançay ev & ofis taşıma tedarik zincirini tam olarak uygulamayı başaran bir firma olarak gelecek dönemlerde de yurtiçinde evden eve nakliyat sektörü için çalışmalarına devam edecektir. Firmamız kısa sürede sağlamış olduğu güveni artırarak yıllarca bu sektörde var olacaktır ve en saygın firmalar arasında yerini alacaktır. Firmamız depolama ve nakliyat sektörünün gerektirdiği tüm teknolojik ve sosyal yenilikleri kullanarak siz değerli müşterilerimize beklentileriniz doğrultusunda bir hizmet sunabilmek için kurulmuş olup sizlerle dahada büyüyecektir. Firmamız geniş araç filosu ve servis ağı ile çözüm ortağı olarak her zaman yanınızdadır. Gelecekteki en büyük amacımız depolama ve nakliyat sektöründe kalıcı üstünlükler sağlamaktır. Evden eve nakliyat ve eşya depolama hizmetinde firmamızı tercih ettiğiniz için teşekkür ederiz.\", \"title\": \"Doğançay Nakliyat ev & ofis taşıma\"}, \"image\": \"assets/images/aboutus/aboutus.jpg\"}', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `blogs`
--

INSERT INTO `blogs` (`id`, `data`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '{\"en\": {\"data\": [{\"url\": \"/planlama-hazirlik\", \"text\": \"Carrying out this preparation phase completely and correctly eliminates many problems and risks that may occur during the move before they occur.\", \"title\": \"Planning And Preparation\", \"img_url\": \"assets/images/blog/resim1.jpg\"}, {\"url\": \"/tasinma-kontrol-listesi\", \"text\": \"A transportation checklist is an important tool that indicates the steps and checks that need to be carried out during the transportation of a good or load from one point to another.\", \"title\": \"Moving Checklist\", \"img_url\": \"assets/images/blog/resim2.jpg\"}, {\"url\": \"/tasima-hizmetlerimiz\", \"text\": \"We provide this service including sea, air and land transportation, as well as packaging, self-storage and smart storage services.\", \"title\": \"Our Transportation Services\", \"img_url\": \"assets/images/blog/resim3.jpg\"}, {\"url\": \"/karayolu-tasimaciligi\", \"text\": \"Home and office transportation by road; It is the most preferred transportation method for moving addresses within the country, countries that are more convenient and closer to reach by land, and transportation destinations to European countries.\", \"title\": \"Highway transports\", \"img_url\": \"assets/images/blog/resim4.jpg\"}, {\"url\": \"/havayolu-tasimaciligi\", \"text\": \"International home and office transportation by air is the fastest transportation method compared to other transportation methods. However, you should not forget that this method is the most expensive form of transportation compared to others.\", \"title\": \"Airways transporting\", \"img_url\": \"assets/images/blog/resim5.jpg\"}, {\"url\": \"/denizyolu-tasimaciligi\", \"text\": \"International home and office transportation by sea is a logical solution in many respects, but you need to take into account that it will take some time for your belongings to arrive.\", \"title\": \"Maritime transport\", \"img_url\": \"assets/images/blog/resim6.jpg\"}, {\"url\": \"/depolama\", \"text\": \"We offer two different storage services to store your belongings in the best way and according to your needs. These are Smart Warehouse/Self Storage and Smart Warehouse/Portable Warehouse services.\", \"title\": \"Storage\", \"img_url\": \"assets/images/blog/resim7.png\"}, {\"url\": \"/gumruk-isleri-teslimat\", \"text\": \"Customs procedures are carried out both in the country where your old home is located and in the country where your new home is located. What documents should be prepared in this regard during the planning and preparation phase?\", \"title\": \"Customs Affairs and Delivery\", \"img_url\": \"assets/images/blog/resim8.jpg\"}], \"text\": \"By keeping customer satisfaction at the highest level, we meet your transportation needs in the best way possible with our expert team and modern vehicle fleet. We work meticulously to ensure that your valuable belongings are transported safely and smoothly.\", \"title\": \"We Offer Professional Transportation Solutions\", \"btn_text\": \"More\"}, \"ge\": {\"data\": [{\"url\": \"/planlama-hazirlik\", \"text\": \"Durch die vollständige und korrekte Durchführung dieser Vorbereitungsphase werden viele Probleme und Risiken, die beim Umzug auftreten können, bereits im Vorfeld beseitigt.\", \"title\": \"Planung und Vorbereitung\", \"img_url\": \"assets/images/blog/resim1.jpg\"}, {\"url\": \"/tasinma-kontrol-listesi\", \"text\": \"Eine Transportcheckliste ist ein wichtiges Hilfsmittel, das die Schritte und Kontrollen angibt, die beim Transport einer Ware oder Ladung von einem Ort zum anderen durchgeführt werden müssen.\", \"title\": \"Checkliste für den Umzug\", \"img_url\": \"assets/images/blog/resim2.jpg\"}, {\"url\": \"/tasima-hizmetlerimiz\", \"text\": \"Wir bieten diesen Service einschließlich See-, Luft- und Landtransporten sowie Verpackungs-, Self-Storage- und Smart-Storage-Dienstleistungen an.\", \"title\": \"Unsere Transportdienstleistungen\", \"img_url\": \"assets/images/blog/resim3.jpg\"}, {\"url\": \"/karayolu-tasimaciligi\", \"text\": \"Transport zu Hause und im Büro auf der Straße; Es ist die am meisten bevorzugte Transportmethode für den Umzug von Adressen innerhalb des Landes, in Länder, die auf dem Landweg bequemer und näher zu erreichen sind, sowie für Transportziele in europäische Länder.\", \"title\": \"Straßentransporte\", \"img_url\": \"assets/images/blog/resim4.jpg\"}, {\"url\": \"/havayolu-tasimaciligi\", \"text\": \"Der internationale Heim- und Bürotransport per Flugzeug ist im Vergleich zu anderen Transportmethoden die schnellste Transportmethode. Sie sollten jedoch nicht vergessen, dass diese Methode im Vergleich zu anderen die teuerste Transportart ist.\", \"title\": \"Fluglinien transportieren\", \"img_url\": \"assets/images/blog/resim5.jpg\"}, {\"url\": \"/denizyolu-tasimaciligi\", \"text\": \"Der internationale Heim- und Bürotransport auf dem Seeweg ist in vielerlei Hinsicht eine logische Lösung, Sie müssen jedoch damit rechnen, dass es einige Zeit dauern wird, bis Ihre Sachen ankommen.\", \"title\": \"Seetransport\", \"img_url\": \"assets/images/blog/resim6.jpg\"}, {\"url\": \"/depolama\", \"text\": \"Wir bieten zwei verschiedene Lagerdienstleistungen an, um Ihre Habseligkeiten bestmöglich und bedarfsgerecht aufzubewahren. Dabei handelt es sich um die Dienste Smart Warehouse/Self Storage und Smart Warehouse/Portable Warehouse.\", \"title\": \"Lagerung\", \"img_url\": \"assets/images/blog/resim7.png\"}, {\"url\": \"/gumruk-isleri-teslimat\", \"text\": \"Zollverfahren werden sowohl in dem Land durchgeführt, in dem sich Ihr altes Zuhause befindet, als auch in dem Land, in dem sich Ihr neues Zuhause befindet. Welche Unterlagen sollten diesbezüglich in der Planungs- und Vorbereitungsphase erstellt werden?\", \"title\": \"Zollangelegenheiten und Lieferung\", \"img_url\": \"assets/images/blog/resim8.jpg\"}], \"text\": \"Indem wir die Kundenzufriedenheit auf höchstem Niveau halten, erfüllen wir Ihre Transportbedürfnisse mit unserem Expertenteam und unserem modernen Fuhrpark bestmöglich. Wir arbeiten sorgfältig daran, dass Ihre wertvollen Gegenstände sicher und reibungslos transportiert werden.\", \"title\": \"Wir bieten professionelle Transportlösungen\", \"btn_text\": \"Mehr\"}, \"tr\": {\"data\": [{\"url\": \"/planlama-hazirlik\", \"text\": \"Bu hazırlık aşamasının tam ve doğru yapılması taşınma esnasında oluşabilecek birçok sorun ve riskleri daha oluşmadan ortadan kaldırır\", \"title\": \"Planlama Ve Hazırlık\", \"img_url\": \"assets/images/blog/resim1.jpg\"}, {\"url\": \"/tasinma-kontrol-listesi\", \"text\": \"Taşıma kontrol listesi, bir malın veya yükün bir noktadan diğerine taşınması sürecinde yapılması gereken adımları ve kontrolleri belirten önemli bir araçtır.\", \"title\": \"Taşınma Kontrol Listesi\", \"img_url\": \"assets/images/blog/resim2.jpg\"}, {\"url\": \"/tasima-hizmetlerimiz\", \"text\": \"Bu hizmeti deniz, hava, ve kara yoluyla yapılan taşımacılık ile paketleme, self-storage ve akıllı depolama hizmetleri dahil olarak veriyoruz.\", \"title\": \"Taşıma Hizmetlerimiz\", \"img_url\": \"assets/images/blog/resim3.jpg\"}, {\"url\": \"/karayolu-tasimaciligi\", \"text\": \"Karayolu ile ev ve ofis taşıma; ülke içerisindeki taşınma adresleri, kara yoluyla gidilmesi daha uygun ve yakın olan ülkeler ve Avrupa Ülkelerine yapılacak olan taşıma yerleri için en çok tercih edilen taşıma yöntemidir.\", \"title\": \"Karayolu Taşımacılığı\", \"img_url\": \"assets/images/blog/resim4.jpg\"}, {\"url\": \"/havayolu-tasimaciligi\", \"text\": \"Hava yoluyla yapılan uluslararası ev ve ofis taşıma işlemi diğer taşıma metotlarına göre en hızlı taşıma yöntemidir. Bunula birlikte bu yöntemin diğerlerine göre en pahalı taşıma şekli olduğunu unutmamanız gerekir.\", \"title\": \"Havayolu Taşımacılığı\", \"img_url\": \"assets/images/blog/resim5.jpg\"}, {\"url\": \"/denizyolu-tasimaciligi\", \"text\": \"Deniz yoluyla yapılan uluslararası ev ve ofis taşımacılığı birçok açıdan mantıklı bir çözümdür fakat eşyalarınız varış süresinin biraz zaman alacağını hesaba katmanız gerekir.\", \"title\": \"Denizyolu Taşımacılığı\", \"img_url\": \"assets/images/blog/resim6.jpg\"}, {\"url\": \"/depolama\", \"text\": \"Eşyalarınızı en iyi şekilde ve ihtiyaçlarınıza göre depolamak için iki farkı depolama hizmeti sunuyoruz. Bunlar Akıllı depo/Self Storage ve Akıllı Depo/Taşınabilir Depo hizmetleridir.\", \"title\": \"Depolama\", \"img_url\": \"assets/images/blog/resim7.png\"}, {\"url\": \"/gumruk-isleri-teslimat\", \"text\": \"Gümrük işlemleri hem eski evinizin bulunduğu ülkede hem de yeni evinizin bulunduğu ülkede yapılır. Bu konuda planlama ve hazırlık safhasında hangi evrakların hazırlanması\", \"title\": \"Gümrük İşleri Ve Teslimat\", \"img_url\": \"assets/images/blog/resim8.jpg\"}], \"text\": \"Müşteri memnuniyetini en üst düzeyde tutarak, uzman ekibimiz ve modern araç filomuzla nakliyat ihtiyaçlarınızı en iyi şekilde karşılıyoruz. Değerli eşyalarınızın güvenli ve sorunsuz bir şekilde taşınmasını sağlamak için titizlikle çalışıyoruz.\", \"title\": \"Profesyonel Nakliyat Çözümleri Sunuyoruz\", \"btn_text\": \"Daha Fazla\"}}', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `contacts`
--

INSERT INTO `contacts` (`id`, `data`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '{\"en\": {\"title\": \"House to House Transportation Call Center\", \"btn_text\": \"Send Message\", \"info_names\": {\"faks\": \"Fax: \", \"adres\": \"Address: \", \"email\": \"Mail: \", \"telefon\": \"Phone: \"}, \"place_holder\": {\"name\": \"Name - surname\", \"email\": \"E-Mail Address\", \"message\": \"Message\"}}, \"ge\": {\"title\": \"Callcenter für Haus-zu-Haus-Transporte\", \"btn_text\": \"Nachricht senden\", \"info_names\": {\"faks\": \"Fax: \", \"adres\": \"Adresse: \", \"email\": \"E-Mail: \", \"telefon\": \"Telefon: \"}, \"place_holder\": {\"name\": \"Vorname Familienname\", \"email\": \"E-Mail Adresse\", \"message\": \"Nachricht\"}}, \"tr\": {\"title\": \"Evden Eve Nakliyat Çağrı Merkezi\", \"btn_text\": \"Mesaj Gönder\", \"info_names\": {\"faks\": \"Faks: \", \"adres\": \"Adres: \", \"email\": \"Mail: \", \"telefon\": \"Telefon: \"}, \"place_holder\": {\"name\": \"Ad - Soyad\", \"email\": \"E-Mail Adresi\", \"message\": \"Mesaj\"}}}', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `contact_forms`
--

CREATE TABLE `contact_forms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `message` text DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `contact_forms`
--

INSERT INTO `contact_forms` (`id`, `name`, `email`, `message`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'asdsad', 'goksel.koc@invekor.com', 'asda', NULL, '2023-09-12 10:05:26', '2023-09-12 10:05:26');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `contact_us_inners`
--

CREATE TABLE `contact_us_inners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `contact_us_inners`
--

INSERT INTO `contact_us_inners` (`id`, `data`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '{\"en\": {\"title\": \"House to House Transportation Call Center\", \"btn_text\": \"Send Message\", \"form_title\": \"Contact Form\", \"info_names\": {\"faks\": \"Fax: \", \"adres\": \"Address: \", \"email\": \"Mail: \", \"telefon\": \"Phone: \"}, \"contact_text\": \"To get information about our services, you can reach us at any time of the week on our support line at 444 1980.\", \"place_holder\": {\"name\": \"Name - surname\", \"email\": \"E-Mail Address\", \"message\": \"Message\"}}, \"ge\": {\"title\": \"Callcenter für Haus-zu-Haus-Transporte\", \"btn_text\": \"Nachricht senden\", \"form_title\": \"Kontakt Formular\", \"info_names\": {\"faks\": \"Fax: \", \"adres\": \"Adresse: \", \"email\": \"E-Mail: \", \"telefon\": \"Telefon: \"}, \"contact_text\": \"Um Informationen zu unseren Dienstleistungen zu erhalten, erreichen Sie uns zu jeder Zeit der Woche unter unserer Support-Hotline unter 444 1980.\", \"place_holder\": {\"name\": \"Vorname Familienname\", \"email\": \"E-Mail Adresse\", \"message\": \"Nachricht\"}}, \"tr\": {\"title\": \"Evden Eve Nakliyat Çağrı Merkezi\", \"btn_text\": \"Mesaj Gönder\", \"form_title\": \"İletişim Formu\", \"info_names\": {\"faks\": \"Faks: \", \"adres\": \"Adres: \", \"email\": \"Mail: \", \"telefon\": \"Telefon: \"}, \"contact_text\": \"Hizmetlerimiz hakkında bilgi almak için bize 444 1980 nolu destek hattımızdan haftanın her saati ulaşabilirsiniz.\", \"place_holder\": {\"name\": \"Ad - Soyad\", \"email\": \"E-Mail Adresi\", \"message\": \"Mesaj\"}}}', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `counters`
--

CREATE TABLE `counters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `counters`
--

INSERT INTO `counters` (`id`, `data`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '{\"en\": [{\"name\": \"Projects\", \"count\": \"126\"}, {\"name\": \"Feedback\", \"count\": \"63\"}, {\"name\": \"Awards Won\", \"count\": \"18\"}, {\"name\": \"Countries\", \"count\": \"27\"}], \"ge\": [{\"name\": \"Projekte\", \"count\": \"126\"}, {\"name\": \"Rückmeldung\", \"count\": \"63\"}, {\"name\": \"Gewonnene Auszeichnungen\", \"count\": \"18\"}, {\"name\": \"Länder\", \"count\": \"27\"}], \"tr\": [{\"name\": \"Projeler\", \"count\": \"126\"}, {\"name\": \"Geri Dönüş\", \"count\": \"63\"}, {\"name\": \"Kazanılan Ödüller\", \"count\": \"18\"}, {\"name\": \"Ülkeler\", \"count\": \"27\"}], \"img_url\": \"assets/images/20140209_114057.jpg\"}', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `deniz_yolu_tasimaciligis`
--

CREATE TABLE `deniz_yolu_tasimaciligis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `deniz_yolu_tasimaciligis`
--

INSERT INTO `deniz_yolu_tasimaciligis` (`id`, `data`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '{\"en\": {\"data\": [{\"text\": \"If you have a large amount of goods to be transported internationally, are not in a hurry, are moving to a long distance such as overseas, and are looking for a cost-effective option, you should consider our international sea transportation service. International home and office transportation by sea is a logical solution in many respects, but you need to take into account that it will take some time for your belongings to arrive. In addition, you should also evaluate whether your belongings will be sent only in your own private containers or in a shared container and make your choice accordingly. The selected containers can be delivered to your door to store your belongings. If you choose a special container, containers with dimensions of 20 feet, 40 feet, 40 High Cube feet are used depending on the size of your belongings. This method is called FCL-(Fuel Container Load). If you have fewer items or want it to be less costly, you can use shared containers. In this case, each customer is allocated a certain area within that container. In this area, your belongings can also be placed in smaller wooden containers. This method is called (LCL-Less than Container Load). With these containers of different sizes (20-40-40 HC), we pick up your belongings from anywhere in Turkey and transport your belongings safely to any international destination you wish. To summarize, this method is low-cost, takes a little longer than other methods, can transport large amounts of items, and offers the opportunity to move homes and offices even to overseas countries.\", \"title\": \"Transportation by Sea:\"}], \"title\": \"MARITIME TRANSPORT\"}, \"ge\": {\"data\": [{\"text\": \"Wenn Sie eine große Menge an Gütern international transportieren müssen, es nicht eilig haben, über weite Entfernungen, beispielsweise nach Übersee, ziehen und nach einer kostengünstigen Option suchen, sollten Sie unseren internationalen Seetransportservice in Betracht ziehen. Der internationale Heim- und Bürotransport auf dem Seeweg ist in vielerlei Hinsicht eine logische Lösung, Sie müssen jedoch damit rechnen, dass es einige Zeit dauern wird, bis Ihre Sachen ankommen. Darüber hinaus sollten Sie auch abwägen, ob Ihre Sachen nur in Ihren eigenen privaten Containern oder in einem Gemeinschaftscontainer verschickt werden, und Ihre Wahl entsprechend treffen. Die ausgewählten Container können zur Aufbewahrung Ihrer Sachen an Ihre Haustür geliefert werden. Wenn Sie sich für einen Spezialcontainer entscheiden, kommen je nach Größe Ihres Hab und Guts Container mit den Maßen 20 Fuß, 40 Fuß, 40 High Cube Fuß zum Einsatz. Diese Methode wird FCL-(Fuel Container Load) genannt. Wenn Sie weniger Artikel haben oder es kostengünstiger haben möchten, können Sie gemeinsam genutzte Container verwenden. In diesem Fall wird jedem Kunden ein bestimmter Bereich innerhalb dieses Containers zugewiesen. In diesem Bereich können Ihre Habseligkeiten auch in kleineren Holzcontainern untergebracht werden. Diese Methode heißt (LCL-Less than Container Load). Mit diesen Containern unterschiedlicher Größe (20-40-40 HC) holen wir Ihre Sachen überall in der Türkei ab und transportieren Ihre Sachen sicher zu jedem gewünschten internationalen Ziel. Zusammenfassend lässt sich sagen, dass diese Methode kostengünstig ist, etwas länger dauert als andere Methoden, große Mengen an Gegenständen transportieren kann und die Möglichkeit bietet, Wohnungen und Büros sogar ins Ausland zu verlegen.\", \"title\": \"Transport auf dem Seeweg:\"}], \"title\": \"Seetransport\"}, \"tr\": {\"data\": [{\"text\": \"Uluslararası taşınacak eşyalarınız miktarı fazla ise, zaman konusunda aceleniz bulunmuyorsa,  deniz aşırı gibi uzak mesafeye taşınıyorsanız ve maliyet etkin bir seçenek arıyorsanız uluslararası deniz taşımacılığı hizmetimizi göz önünde bulundurmalısınız. Deniz yoluyla yapılan uluslararası ev ve ofis taşımacılığı birçok açıdan mantıklı bir çözümdür fakat eşyalarınız varış süresinin biraz zaman alacağını hesaba katmanız gerekir. Ayrıca, eşyalarınızı sadece size ait özel konteynırlarla veyahut ortak konteynıra koyma suretiyle gönderilmesi durumunu da değerlendirmeli ve buna göre seçim yapmalısınız. Seçilen konteynırlar eşyalarınızın konması için kapınıza kadar gelebilir. Eğer özel konteynır seçerseniz, eşyalarınızın büyüklüğüne göre 20 feet, 40 feet, 40 High Cube feet ölçülerindeki konteynırlar kullanılmaktadır. Bu yönteme FCL-(Fuel Container Load- Tam dolu Konteynır) denir. Eğer daha az miktarda eşyalarınız bulunuyor veya daha az maliyetli olsun diyorsanız bu durumda paylaşımlı konteynırlardan yararlanabilirsiniz. Bu durumda her bir müşteriye o konteynır içinde belli bir alan tahsis edilir. Bu alanda eşyalarınız ayrıca daha küçük ebatlarda tahta konteynırlara da konabilir. Bu yönteme (LCL-Less than Container Load- Konteynır yükünden daha az) denir. Farklı ölçülerdeki bu konteynırlarla (20-40-40 HC) Türkiye’nin herhangi bir yerinden eşyalarınızı alarak dilediğiniz uluslararası noktaya eşyalarınızı güvenle taşıyoruz. Özetlenecek olursa bu yöntem az masraflı, diğer yöntemlere göre biraz daha uzun zamanda götürülen, büyük miktarda eşyaların taşınabildiği ve deniz aşırı ülkelere bile ev ve ofis taşıma imkanı sunan bir yöntemdir.\", \"title\": \"Deniz Yoluyla Taşımacılık:\"}], \"title\": \"DENİZYOLU TAŞIMACILIĞI\"}, \"hero\": \"assets/images/denizyoluTas/resim1.jpg\", \"images\": [{\"img_url\": \"assets/images/denizyoluTas/resim2.jpeg\"}, {\"img_url\": \"assets/images/denizyoluTas/resim3.jpg\"}]}', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `depolamas`
--

CREATE TABLE `depolamas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `depolamas`
--

INSERT INTO `depolamas` (`id`, `data`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '{\"en\": {\"data\": [{\"text\": \"We offer two different storage services to store your belongings in the best way and according to your needs. These are Smart Warehouse/Self Storage and Smart Warehouse/Portable Warehouse services. Doğançay Nakliyat has been providing Smart Warehouse/Portable Warehouse services in Ankara and Istanbul since 2010. There is a total of 6500m2 of storage space in two separate warehouses in Ankara: 4000m2 and 2500m2. It provides storage services on both sides of Istanbul: 2700m2 on the European side and 1000m2 on the Anatolian side. In the storage service, we keep your belongings in moisture-free, completely personalized containers. The goods storage center, located in secure locations, is also monitored by cameras 24 hours a day. If our customers request, our company can deliver Smart warehouses to the customers\' door with transportation vehicles. In this type of storage, your belongings are kept safely in special wooden containers. You can store your office, institutional or household items in the rental storage area. Your various materials entering the goods storage area are insured with insurance per container.\", \"title\": \"Storage:\"}, {\"text\": \"Smart Storage/Self Storage system; It is based on providing you with the convenience of storing your belongings in a safe and insured environment, where you can come to your warehouse whenever you want, put your belongings, take what you need from your belongings or check your belongings. Fire early warning systems are kept under control with the \'Closed Circuit Camera System\' that observes and records the storage areas 24/7. Naturally; You want to store your belongings by packing and packaging them and ensure that they are transported safely. We are happy to be able to offer you the materials you need in our store at the warehouse entrance. You can store your belongings as an extension of your own home and in a way that you can intervene at any time. Our Self Storage warehouses located in closed areas protect your valuables from negativities such as dust, moisture and humidity. Self Storage is an excellent storage opportunity for those dealing with E-commerce. You can pick up and send your sold products from the warehouse whenever you want. You can safely leave your excess household items, hobbies and valuable antiques in our warehouse.\", \"title\": \"Storage Service:\"}], \"title\": \"STORAGE\"}, \"ge\": {\"data\": [{\"text\": \"Wir bieten zwei unterschiedliche Lagerdienstleistungen an, um Ihre Habseligkeiten optimal und bedarfsgerecht aufzubewahren. Dabei handelt es sich um die Dienste Smart Warehouse/Self Storage und Smart Warehouse/Portable Warehouse. Doğançay Nakliyat bietet seit 2010 Smart Warehouse/Portable Warehouse-Dienstleistungen in Ankara und Istanbul an. In Ankara gibt es insgesamt 6500 m2 Lagerfläche in zwei separaten Lagerhäusern: 4000 m2 und 2500 m2. Es bietet Lagerdienstleistungen auf beiden Seiten Istanbuls an: 2700 m2 auf der europäischen Seite und 1000 m2 auf der anatolischen Seite. Im Lagerservice bewahren wir Ihre Sachen in feuchtigkeitsfreien, komplett personalisierten Behältern auf. Auch das an sicheren Standorten befindliche Warenlagerzentrum wird 24 Stunden am Tag von Kameras überwacht. Auf Wunsch unserer Kunden kann unser Unternehmen Smart Warehouses mit Transportfahrzeugen bis vor die Haustür des Kunden liefern. Bei dieser Art der Lagerung werden Ihre Habseligkeiten in speziellen Holzbehältern sicher aufbewahrt. In der Mietlagerfläche können Sie Ihre Büro-, Einrichtungs- oder Haushaltsgegenstände einlagern. Ihre verschiedenen Materialien, die in den Warenlagerbereich gelangen, sind mit einer Versicherung pro Container versichert.\", \"title\": \"Lagerung:\"}, {\"text\": \"Smart Storage/Selbstlagersystem; Es basiert darauf, Ihnen den Komfort zu bieten, Ihre Sachen in einer sicheren und versicherten Umgebung aufzubewahren, wo Sie jederzeit in Ihr Lager kommen, Ihre Sachen ablegen, aus Ihren Sachen entnehmen können, was Sie brauchen, oder Ihre Sachen überprüfen können. Brandfrühwarnsysteme werden mit dem „Closed Circuit Camera System“, das die Lagerbereiche rund um die Uhr beobachtet und aufzeichnet, unter Kontrolle gehalten. Natürlich; Sie möchten Ihre Habseligkeiten durch Einpacken und Verpacken aufbewahren und für einen sicheren Transport sorgen. Wir freuen uns, Ihnen die von Ihnen benötigten Materialien in unserem Lager am Lagereingang anbieten zu können. Sie können Ihr Hab und Gut als Erweiterung Ihres Eigenheims lagern und so, dass Sie jederzeit eingreifen können. Unsere Self-Storage-Lager in geschlossenen Bereichen schützen Ihre Wertsachen vor negativen Einflüssen wie Staub, Feuchtigkeit und Nässe. Self Storage ist eine hervorragende Lagermöglichkeit für alle, die mit E-Commerce zu tun haben. Sie können Ihre verkauften Produkte jederzeit im Lager abholen und versenden. Ihre überschüssigen Haushaltsgegenstände, Hobbys und wertvollen Antiquitäten können Sie sicher in unserem Lager aufbewahren.\", \"title\": \"Lagerservice:\"}], \"title\": \"LAGERUNG\"}, \"tr\": {\"data\": [{\"text\": \"Eşyalarınızı en iyi şekilde ve ihtiyaçlarınıza göre depolamak için iki farkı depolama hizmeti sunuyoruz. Bunlar Akıllı depo/Self Storage ve Akıllı Depo/Taşınabilir Depo hizmetleridir. Doğançay Nakliyat, Ankara ve İstanbul şehirlerinde 2010 yılından beri Akıllı Depo/Taşınabilir Depo hizmeti sunmaktadır.  Ankara’da 4000m2 ve 2500m2 olmak üzere iki ayrı depoda toplam 6500m2 depolama alanı mevcuttur. İstanbul’da Avrupa yakasında 2700m2 ve Anadolu yakasında 1000m2 olmak üzere her iki yakada da depolama hizmeti vermektedir. Depolama hizmetinde rutubetsiz, tamamen kişiye özel konteynerler içerisinde eşyalarınızı muhafaza etmekteyiz. Güvenli yerlerden bulunan Eşya depolama merkezi ayrıca 24 saat kameralar ile izlenmektedir. Müşterilerimizin talep etmesi durumunda firmamız, Akıllı depoları müşterilerin kapısına kadar nakliye araçlarıyla birlikte götürebilir. Bu depolama şeklinde eşyalarınız güvenli bir şekilde size özel tahta konteynırlarda muhafaza edilmektedir. İster ofis eşyalarınızı ister kurum isterseniz de ev eşyalarınızı kiralık depo alanında saklayabilirsiniz. Eşya deposu alanına giren muhtelif malzemeleriniz konteyner başına sigorta ile sigortalanır.\", \"title\": \"Depolama:\"}, {\"text\": \"Akıllı Depo/Self Storage sistemi; eşyalarınızı güvenli ve sigortalı bir ortamda depolayabilmeniz sağlayacak, istediğiniz zaman deponuza gelip eşya koyabileceğiniz, eşyalarınızdan ihtiyaç duyduklarınızı alabileceğiniz veya eşyalarınızı kontrol edebileceğiniz kolaylığı sağlamak üzerine kuruludur. Depolama alanlarını 7/24 gözlemleyen ve kayıt altına alan “Kapalı Devre Kamera Sistemi” ile yangın erken uyarı sistemleri kontrol altında tutulmaktadır. Doğal olarak; eşyalarınızı ambalajlama ve paketleme yaparak depolamak ve güvenle taşınmasını sağlamak istersiniz. İhtiyaç duyacağınız malzemeleri depo girişimizdeki mağazamızda sizlere sunabildiğimiz için mutluyuz. Eşyalarınızı kendi evinizin bir uzantısı olarak ve istediğiniz zaman müdahale edebileceğiniz şekilde depolayabilirsiniz. Kapalı alanda bulunan Self Storage depolarımız değerli eşyalarınızı toz, nem ve rutubet gibi olumsuzluklardan korur. Self Storage, E-ticaret ile uğraşanlar için mükemmel bir depolama fırsatıdır. Satılan ürünlerinizi depodan istediğiniz zaman alıp gönderebilirsiniz.  Fazla ev eşyalarınızı, hobilerinizi, değerli antika eşyalarınızı güvenle depomuza bırakabilirsiniz.\", \"title\": \"Depolama Hizmeti:\"}], \"title\": \"DEPOLAMA\"}, \"hero\": \"assets/images/depolama/resim1.jpg\", \"images\": [{\"img_url\": \"assets/images/depolama/resim2.jpg\"}]}', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `features`
--

CREATE TABLE `features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `features`
--

INSERT INTO `features` (`id`, `data`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '{\"en\": [{\"text\": \"Moving to another house is a stressful process that people face in their personal and social lives. International moving increases this stress level much higher. (According to a study, this level is even higher than the divorce process). That\'s why, as Doğançay Transportation, our goal is to provide customer satisfaction that will allow you to move with peace of mind.\", \"title\": \"International Shipping\", \"img_url\": \"assets/images/noun-network-2528735.png\", \"position\": \"L\"}, {\"text\": \"It offers home and office moving services from any point within the country to many countries in the world, without encountering obstacles such as geographical borders. It deals with packaging, transportation, customs inspection procedures, storage, goods placement and other related moving processes as a whole and offers solutions.\", \"title\": \"Wide Possibilities\", \"img_url\": \"assets/images/noun-truck-1009383.png\", \"position\": \"R\"}], \"ge\": [{\"text\": \"Der Umzug in ein anderes Haus ist ein stressiger Prozess, dem Menschen in ihrem persönlichen und sozialen Leben ausgesetzt sind. Bei internationalen Umzügen erhöht sich dieser Stresspegel deutlich. (Laut einer Studie liegt dieser Wert sogar über dem Scheidungsprozess). Aus diesem Grund ist es unser Ziel als Doğançay Transportation, die Kundenzufriedenheit zu gewährleisten, damit Sie beruhigt umziehen können.\", \"title\": \"Internationaler Transport\", \"img_url\": \"assets/images/noun-network-2528735.png\", \"position\": \"L\"}, {\"text\": \"Es bietet Haus- und Büroumzugsdienste von jedem Punkt des Landes in viele Länder der Welt an, ohne auf Hindernisse wie geografische Grenzen zu stoßen. Es befasst sich mit Verpackung, Transport, Zollkontrollverfahren, Lagerung, Warenabwicklung und anderen damit verbundenen Umzugsprozessen als Ganzes und bietet Lösungen an.\", \"title\": \"Große Möglichkeiten\", \"img_url\": \"assets/images/noun-truck-1009383.png\", \"position\": \"R\"}], \"tr\": [{\"text\": \"Başka bir eve taşınmak insanların şahsi ve toplumsal hayatlarında karşılaştığı stres dolu bir süreçtir.  Uluslararası taşınma ise bu stres seviyesini çok yukarılara çıkarmaktadır. (Yapılan bir araştırmaya göre bu seviye boşanma sürecinden bile fazladır). Bu yüzden Doğançay Nakliyat olarak hedefimiz sizin gönül rahatlığıyla taşınmanızı sağlayacak bir müşteri memnuniyeti sağlamaktır.\", \"title\": \"Uluslararası Nakliyat\", \"img_url\": \"assets/images/noun-network-2528735.png\", \"position\": \"L\"}, {\"text\": \"Coğrafi sınırlar gibi engellere takılmadan ülke içinde herhangi bir noktadan dünyanın birçok ülkesine ev ve ofis taşıma servisi sunmaktadır. Paketleme, taşıma, gümrük muayene işlemleri, depolama, eşya yerleşimi ve ilgili diğer taşınma sürecinin tamamında bir bütün olarak ele çalıp çözüm sunmaktadır.\", \"title\": \"Geniş Olanaklar\", \"img_url\": \"assets/images/noun-truck-1009383.png\", \"position\": \"R\"}]}', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `features_cards`
--

CREATE TABLE `features_cards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `features_cards`
--

INSERT INTO `features_cards` (`id`, `data`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '{\"en\": [{\"text\": \"You can store your excess items or items at home in our storage centers in Ankara and Istanbul.\", \"title\": \"Item Storage\", \"img_url\": \"assets/images/featured-item-01.png\"}, {\"text\": \"We provide transportation services for your belongings in closed box trucks between the addresses you specify. For corporate home-to-home transportation service, make an appointment for an expert at the call center at 444 1980.\", \"title\": \"House to House Transportation\", \"img_url\": \"assets/images/reassembly_icon_1.png\"}, {\"text\": \"For partial goods transportation service, transport your belongings within Ankara or to other provinces with the assurance of Doğançay Home to Home Transportation.\", \"title\": \"Partial Goods Transportation\", \"img_url\": \"assets/images/reassembly_icon_2.png\"}], \"ge\": [{\"text\": \"Sie können Ihre überschüssigen Artikel oder Artikel zu Hause in unseren Lagerzentren in Ankara und Istanbul lagern.\", \"title\": \"Artikellagerung\", \"img_url\": \"assets/images/featured-item-01.png\"}, {\"text\": \"Wir bieten den Transport Ihrer Sachen in geschlossenen Kofferfahrzeugen zwischen den von Ihnen angegebenen Adressen an. Vereinbaren Sie für den Firmentransport von Haus zu Haus einen Termin mit einem Experten im Callcenter unter 444 1980.\", \"title\": \"Transport von Haus zu Haus\", \"img_url\": \"assets/images/reassembly_icon_1.png\"}, {\"text\": \"Für den Teiltransport von Gütern transportieren Sie Ihre Sachen innerhalb von Ankara oder in andere Provinzen mit der Zusicherung von Doğançay Home to Home Transportation.\", \"title\": \"Teilweiser Gütertransport\", \"img_url\": \"assets/images/reassembly_icon_2.png\"}], \"tr\": [{\"text\": \"Evinizde bulunan atmaya kıyamadığınız veya fazla malzemelerinizi Ankara ve İstanbul’da bulunan Eşya depolama merkezlerimizde saklayabilirsiniz.\", \"title\": \"Eşya Depolama\", \"img_url\": \"assets/images/featured-item-01.png\"}, {\"text\": \"Eşyalarınızın Belirlediğiniz adresler arası kapalı kasa kamyonlar içerisinde taşıma hizmetini sağlamaktayız. Kurumsal evden eve nakliyat hizmeti için 444 1980 numaralı çağrı merkezinden ekzpersiz randevusu oluşturun.\", \"title\": \"Evden Eve Nakliyat\", \"img_url\": \"assets/images/reassembly_icon_1.png\"}, {\"text\": \"Parça eşya taşıma hizmeti için İster Ankara içi isterseniz de diğer illere Doğançay Evden Eve Nakliyat güvencesi ile eşyalarınızı taşıtın.\", \"title\": \"Parça Eşya Taşıma\", \"img_url\": \"assets/images/reassembly_icon_2.png\"}]}', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `footers`
--

CREATE TABLE `footers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `footers`
--

INSERT INTO `footers` (`id`, `data`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '{\"data\": [{\"link\": \"https://www.instagram.com/dogancayinternational/?hl=tr\", \"class\": \"fa-brands fa-instagram\"}], \"languages\": {\"en\": [{\"key\": \"tr\", \"name\": \"Turkish\", \"img_url\": \"assets/images/flags/tr_flag_icon.png\"}, {\"key\": \"en\", \"name\": \"English\", \"img_url\": \"assets/images/flags/uk_flag_icon.png\"}, {\"key\": \"ge\", \"name\": \"Germany\", \"img_url\": \"assets/images/flags/ge_flag_icon.png\"}], \"ge\": [{\"key\": \"tr\", \"name\": \"Türkisch\", \"img_url\": \"assets/images/flags/tr_flag_icon.png\"}, {\"key\": \"en\", \"name\": \"Englisch\", \"img_url\": \"assets/images/flags/uk_flag_icon.png\"}, {\"key\": \"ge\", \"name\": \"Deutsch\", \"img_url\": \"assets/images/flags/ge_flag_icon.png\"}], \"tr\": [{\"key\": \"tr\", \"name\": \"Türkçe\", \"img_url\": \"assets/images/flags/tr_flag_icon.png\"}, {\"key\": \"en\", \"name\": \"İngilizce\", \"img_url\": \"assets/images/flags/uk_flag_icon.png\"}, {\"key\": \"ge\", \"name\": \"Almanca\", \"img_url\": \"assets/images/flags/ge_flag_icon.png\"}]}}', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `galeris`
--

CREATE TABLE `galeris` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `galeris`
--

INSERT INTO `galeris` (`id`, `data`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '{\"en\": {\"text\": \"Doğançay Transportation\'s gallery section showcases the unique transportation projects we have undertaken both internationally and domestically. Each photograph reflects the originality and excellence of our work. These images, proving that transportation is an art, narrate the stories behind each journey. Doğançay Transportation offers an experience beyond transportation; that\'s why we are different.\", \"title\": \"Gallery\"}, \"ge\": {\"text\": \"Der Galeriebereich von Doğançay Transport präsentiert einzigartige Transportprojekte, die wir sowohl international als auch im Inland durchgeführt haben. Jedes Foto spiegelt die Originalität und Exzellenz unserer Arbeit wider. Diese Bilder, die beweisen, dass Transport eine Kunst ist, erzählen die Geschichten hinter jeder Reise. Doğançay Transport bietet ein Erlebnis jenseits des Transports; deshalb sind wir anders.\", \"title\": \"Galerie\"}, \"tr\": {\"text\": \"Doğançay Nakliyat\'ın galeri bölümü, dünya genelinde ve yurt içinde gerçekleştirdiğimiz benzersiz nakliyat projelerini sunuyor. Her bir fotoğraf, işimizin özgünlüğünü ve mükemmelliğini yansıtıyor. Taşımanın sanat olduğunu kanıtlayan bu görüntüler, her bir yolculuğunun ardında yatan hikayeleri anlatıyor. Nakliyatın ötesinde bir deneyim sunan Doğançay Nakliyat, işte bu yüzden farklıyız.\", \"title\": \"Galeri\"}, \"images\": [{\"alt\": \"galeri resim\", \"order\": 0, \"img_url\": \"assets/images/gallery/resim1.png\"}, {\"alt\": \"galeri resim\", \"order\": 0, \"img_url\": \"assets/images/gallery/resim2.jpg\"}, {\"alt\": \"galeri resim\", \"order\": 0, \"img_url\": \"assets/images/gallery/resim3.png\"}, {\"alt\": \"galeri resim\", \"order\": 0, \"img_url\": \"assets/images/gallery/resim4.jpg\"}, {\"alt\": \"galeri resim\", \"order\": 0, \"img_url\": \"assets/images/gallery/resim5.jpg\"}, {\"alt\": \"galeri resim\", \"order\": 0, \"img_url\": \"assets/images/gallery/resim7.jpg\"}, {\"alt\": \"galeri resim\", \"order\": 0, \"img_url\": \"assets/images/gallery/resim8.jpg\"}, {\"alt\": \"galeri resim\", \"order\": 0, \"img_url\": \"assets/images/gallery/resim9.png\"}, {\"alt\": \"galeri resim\", \"order\": 0, \"img_url\": \"assets/images/gallery/resim10.png\"}, {\"alt\": \"galeri resim\", \"order\": 0, \"img_url\": \"assets/images/gallery/resim11.jpg\"}, {\"alt\": \"galeri resim\", \"order\": 0, \"img_url\": \"assets/images/gallery/resim12.jpg\"}, {\"alt\": \"galeri resim\", \"order\": 0, \"img_url\": \"assets/images/gallery/resim13.jpg\"}, {\"alt\": \"galeri resim\", \"order\": 0, \"img_url\": \"assets/images/gallery/resim14.jpg\"}, {\"alt\": \"galeri resim\", \"order\": 0, \"img_url\": \"assets/images/gallery/resim15.jpg\"}, {\"alt\": \"galeri resim\", \"order\": 0, \"img_url\": \"assets/images/gallery/resim6.jpg\"}, {\"alt\": \"galeri resim\", \"order\": 0, \"img_url\": \"assets/images/gallery/resim17.jpg\"}, {\"alt\": \"galeri resim\", \"order\": 0, \"img_url\": \"assets/images/gallery/resim18.png\"}]}', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `general_information`
--

CREATE TABLE `general_information` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `general_information`
--

INSERT INTO `general_information` (`id`, `data`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '{\"en\": {\"faks\": \"(312) 222-6844\", \"adres\": \"Bahçekapı Mahallesi, Söğütözü Caddesi, No:20 Etimesgut / Ankara\", \"email\": \"info@dogancay.com.tr\", \"company\": \"DOĞANÇAY\", \"telefon\": \"444-1980\"}, \"ge\": {\"faks\": \"(312) 222-6844\", \"adres\": \"Bahçekapı Mahallesi, Söğütözü Caddesi, No:20 Etimesgut / Ankara\", \"email\": \"info@dogancay.com.tr\", \"company\": \"DOĞANÇAY\", \"telefon\": \"444-1980\"}, \"tr\": {\"faks\": \"(312) 222-6844\", \"adres\": \"Bahçekapı Mahallesi, Söğütözü Caddesi, No:20 Etimesgut / Ankara\", \"email\": \"info@dogancay.com.tr\", \"company\": \"DOĞANÇAY\", \"telefon\": \"444-1980\"}, \"map_url\": \"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1529.644366342585!2d32.79457412203281!3d39.934930788286806!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14d348da3c473b81%3A0xf9a3849ba113f516!2zU8O2xJ_DvHTDtnrDvCwgU8O2xJ_DvHTDtnrDvCBDZC4gTm86MjAsIDA2Nzk3IFllbmltYWhhbGxlL0Fua2FyYQ!5e0!3m2!1str!2str!4v1695647237821!5m2!1str!2str\"}', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `gumruk_isleri_teslimats`
--

CREATE TABLE `gumruk_isleri_teslimats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `gumruk_isleri_teslimats`
--

INSERT INTO `gumruk_isleri_teslimats` (`id`, `data`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '{\"en\": {\"data\": [{\"text\": \"Customs procedures are carried out both in the country where your old home is located and in the country where your new home is located. You will be informed about which documents need to be prepared during the planning and preparation phase. In order to avoid any delays or problems at customs, our transportation coordinators carefully follow the entire legal process and submit the relevant documents in accordance with accurate and up-to-date legislation. We will also inform you about the items that are prohibited to be taken to the country you will go to and the goods and products that are subject to tax. We will keep you informed throughout this entire process and closely follow the process to ensure a smooth move.\", \"title\": \"Customs Inspection Affairs:\"}, {\"text\": \"Your belongings will be delivered to the specified address on the previously planned and determined date. There is more than one delivery method. In home-to-home delivery, it is delivered to your new home. There are also delivery methods up to the port (airport or sea port) and customs. If you choose the house-to-house option, our movers (for air or sea transportation, a moving company from the relevant country is arranged and their movers carry out these operations) will unpack your belongings, place them in the room you want, set up your furniture again and leave the boxes where you want, just like your belongings. After all these procedures, the packing list-inventory list is checked again to see if there are any missing or broken items.\", \"title\": \"Delivery:\"}], \"title\": \"CUSTOMS AND DELIVERY\"}, \"ge\": {\"data\": [{\"text\": \"Zollverfahren werden sowohl in dem Land durchgeführt, in dem sich Ihr altes Zuhause befindet, als auch in dem Land, in dem sich Ihr neues Zuhause befindet. Welche Unterlagen erstellt werden müssen, erfahren Sie bereits in der Planungs- und Vorbereitungsphase. Um Verzögerungen oder Probleme beim Zoll zu vermeiden, verfolgen unsere Transportkoordinatoren sorgfältig den gesamten rechtlichen Prozess und reichen die relevanten Dokumente gemäß den genauen und aktuellen Rechtsvorschriften ein. Wir informieren Sie auch über die Gegenstände, deren Mitnahme in das Zielland verboten ist, sowie über die steuerpflichtigen Waren und Produkte. Wir werden Sie während des gesamten Prozesses auf dem Laufenden halten und den Prozess genau verfolgen, um einen reibungslosen Ablauf zu gewährleisten.\", \"title\": \"Zollkontrollangelegenheiten:\"}, {\"text\": \"Ihre Sachen werden zum vorher geplanten und festgelegten Termin an die angegebene Adresse geliefert. Es gibt mehr als eine Versandart. Bei der Home-to-Home-Lieferung erfolgt die Lieferung in Ihr neues Zuhause. Es gibt auch Liefermethoden bis zum Hafen (Flughafen oder Seehafen) und zum Zoll. Wenn Sie sich für die Haus-zu-Haus-Option entscheiden, packen unsere Umzugsunternehmen (für Luft- oder Seetransporte wird ein Umzugsunternehmen aus dem jeweiligen Land beauftragt und die Umzugsunternehmen führen diese Arbeiten durch) Ihr Hab und Gut aus, stellen es in dem von Ihnen gewünschten Raum ab, Stellen Sie Ihre Möbel wieder auf und lassen Sie die Kartons dort, wo Sie möchten, genau wie Ihre Habseligkeiten. Nach all diesen Vorgängen wird die Packliste-Inventarliste noch einmal überprüft, um festzustellen, ob Artikel fehlen oder defekt sind.\", \"title\": \"Lieferung:\"}], \"title\": \"ZOLL UND LIEFERUNG\"}, \"tr\": {\"data\": [{\"text\": \"Gümrük işlemleri hem eski evinizin bulunduğu ülkede hem de yeni evinizin bulunduğu ülkede yapılır. Bu konuda planlama ve hazırlık safhasında hangi evrakların hazırlanması gerektiği size bildirilecektir. Gümrüklerde herhangi bir gecikme veya sorunla karşılaşmamak için taşıma koordinatörlerimiz tüm yasal süreci dikkatle takip ederek doğru ve güncel mevzuata göre ilgili belgeleri sunmaktadırlar. Ayrıca sizlere gideceğiniz ülkeye götürülmesi yasak olan maddeler ve vergiye tabi eşya ve ürünler hakkında da bilgilendirme yapacağız. Bütün bu süreç boyunca sizleri bilgilendirecek ve sorunsuz bir taşınma için yapılan işlemleri yakından takip edeceğiz.\", \"title\": \"Gümrük Muayene İşleri:\"}, {\"text\": \"Daha önceden planlanan ve belirlenen tarihte eşyalarınız belirlenen adrese teslim edilir. Birden fazla teslim şekli bulunmaktadır. Evden eve teslimde yeni evinize kadar bırakılmaktadır. Ayrıca limana kadar (hava limanı veya deniz limanı) ve gümrüğe kadar olan teslim şekilleri de bulunmaktadır.  Eğer evden eve seçeneğini tercih ederseniz taşıma görevlilerimiz (hava yolu ile deniz yoluyla yapılan taşımalarda ilgili ülkeden taşıma firması ayarlanır ve onların taşıma görevlileri bu işlemleri yapar) eşyalarınızı paketinden çıkartır istediğiniz odaya yerleştirir, mobilyalarınızı tekrar kurar ve kutuları da eşyalarınız gibi istediğiniz yere bırakırlar. Bütün bu işlemlerden sonra çeki listesi-envanter listesi tekrar kontrol edilir ve eksik veya kırılan eşya var mı diye bakılır.\", \"title\": \"Teslimat:\"}], \"title\": \"GÜMRÜK İŞLERİ VE TESLİMAT\"}, \"hero\": \"assets/images/gumrukislerTeslimat/eler.jpg\", \"images\": [{\"img_url\": \"assets/images/gumrukislerTeslimat/resim1.jpg\"}]}', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hava_yolu_tasimaciligis`
--

CREATE TABLE `hava_yolu_tasimaciligis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `hava_yolu_tasimaciligis`
--

INSERT INTO `hava_yolu_tasimaciligis` (`id`, `data`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '{\"en\": {\"data\": [{\"text\": \"International home and office transportation by air is the fastest transportation method compared to other transportation methods. However, you should not forget that this method is the most expensive form of transportation compared to others. We recommend that you choose air transportation for items that are relatively small in size and that you will need urgently or are very valuable. After packaging suitable for air transportation, your belongings are placed on planes with air cargo pallets of appropriate size. Factors such as the size and quantity of your belongings, aircraft type and aircraft cargo door width are important factors for home and office transportation by air.\", \"title\": \"International Home and Office Moving:\"}], \"title\": \"AIRWAYS TRANSPORTING\"}, \"ge\": {\"data\": [{\"text\": \"Der internationale Heim- und Bürotransport per Flugzeug ist im Vergleich zu anderen Transportmethoden die schnellste Transportmethode. Sie sollten jedoch nicht vergessen, dass diese Methode im Vergleich zu anderen die teuerste Transportart ist. Für relativ kleine Gegenstände, die Sie dringend benötigen oder die sehr wertvoll sind, empfehlen wir den Lufttransport. Nach der lufttransportgerechten Verpackung werden Ihre Sachen auf Luftfrachtpaletten entsprechender Größe in Flugzeuge verladen. Faktoren wie die Größe und Menge Ihrer Gegenstände, der Flugzeugtyp und die Breite der Flugzeugfrachttüren sind wichtige Faktoren für den Heim- und Bürotransport per Flugzeug.\", \"title\": \"Internationaler Haus- und Büroumzug:\"}], \"title\": \"LUFTWEGE-TRANSPORT\"}, \"tr\": {\"data\": [{\"text\": \"Hava yoluyla yapılan uluslararası ev ve ofis taşıma işlemi diğer taşıma metotlarına göre en hızlı taşıma yöntemidir. Bunula birlikte bu yöntemin diğerlerine göre en pahalı taşıma şekli olduğunu unutmamanız gerekir. Nispeten küçük ebatlarda ve sizin için acil olarak ihtiyacınız olacak veya çok değerli eşyalarınız için hava yolu tercih etmenizi öneririz. Hava yolu taşımacılığına uygun paketlemeden sonra eşyalarınız uygun büyüklükteki hava kargo paletleri ile uçaklara yerleştirilir. Eşyalarınızın büyüklüğü, miktarı, uçak cinsi ve uçak kargo kapı genişliği gibi faktörler hava yolu ile ev ve ofis taşıma için önemli olan faktörlerdir.\", \"title\": \"Uluslararası Ev ve Ofis Taşıma:\"}], \"title\": \"HAVAYOLU TAŞIMACILIĞI\"}, \"hero\": \"assets/images/havayoluTas/resim1.jpg\", \"images\": [{\"img_url\": \"assets/images/havayoluTas/havayolutasimaciligi.jpeg\"}]}', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `headers`
--

CREATE TABLE `headers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `headers`
--

INSERT INTO `headers` (`id`, `data`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '{\"en\": [{\"url\": \"home\", \"title\": \"Home\", \"subItems\": null}, {\"url\": null, \"title\": \"Institutional\", \"subItems\": [{\"url\": \"aboutus-inner.index\", \"title\": \"About Us\"}, {\"url\": \"references-inner.index\", \"title\": \"References\"}]}, {\"url\": null, \"title\": \"Services\", \"subItems\": [{\"url\": \"planlama-hazirlik.index\", \"title\": \"Planning And Preparation\"}, {\"url\": \"tasinma-kontrol-lis.index\", \"title\": \"Moving Checklist\"}, {\"url\": \"tasima-hizmetlerimiz.index\", \"title\": \"Our Transportation Services\"}, {\"url\": \"karayolu-tasimaciligi.index\", \"title\": \"Highway transports\"}, {\"url\": \"havayolu-tasimaciligi.index\", \"title\": \"Airways transporting\"}, {\"url\": \"denizyolu-tasimaciligi.index\", \"title\": \"Maritime transport\"}, {\"url\": \"depolama.index\", \"title\": \"Storage\"}, {\"url\": \"gumruk-isleri-tes.index\", \"title\": \"Customs Affairs and Delivery\"}]}, {\"url\": \"contact-us-inner.index\", \"title\": \"Communication\", \"subItems\": null}], \"ge\": [{\"url\": \"home\", \"title\": \"Startseite\", \"subItems\": null}, {\"url\": null, \"title\": \"Institutionell\", \"subItems\": [{\"url\": \"aboutus-inner.index\", \"title\": \"über uns\"}, {\"url\": \"references-inner.index\", \"title\": \"Unsere Referenzen\"}]}, {\"url\": null, \"title\": \"Unsere Dienstleistungen\", \"subItems\": [{\"url\": \"planlama-hazirlik.index\", \"title\": \"Planung und Vorbereitung\"}, {\"url\": \"tasinma-kontrol-lis.index\", \"title\": \"Checkliste für den Umzug\"}, {\"url\": \"tasima-hizmetlerimiz.index\", \"title\": \"Unsere Transportdienstleistungen\"}, {\"url\": \"karayolu-tasimaciligi.index\", \"title\": \"Straßentransporte\"}, {\"url\": \"havayolu-tasimaciligi.index\", \"title\": \"Fluglinien transportieren\"}, {\"url\": \"denizyolu-tasimaciligi.index\", \"title\": \"Seetransport\"}, {\"url\": \"depolama.index\", \"title\": \"Lagerung\"}, {\"url\": \"gumruk-isleri-tes.index\", \"title\": \"Zollangelegenheiten und Lieferung\"}]}, {\"url\": \"contact-us-inner.index\", \"title\": \"Kommunikation\", \"subItems\": null}], \"tr\": [{\"url\": \"home\", \"title\": \"Anasayfa\", \"subItems\": null}, {\"url\": null, \"title\": \"Kurumsal\", \"subItems\": [{\"url\": \"aboutus-inner.index\", \"title\": \"Hakkımızda\"}, {\"url\": \"references-inner.index\", \"title\": \"Referanslarımız\"}]}, {\"url\": null, \"title\": \"Hizmetlerimiz\", \"subItems\": [{\"url\": \"planlama-hazirlik.index\", \"title\": \"Planlama Ve Hazırlık\"}, {\"url\": \"tasinma-kontrol-lis.index\", \"title\": \"Taşınma Kontrol Listesi\"}, {\"url\": \"tasima-hizmetlerimiz.index\", \"title\": \"Taşıma Hizmetlerimiz\"}, {\"url\": \"karayolu-tasimaciligi.index\", \"title\": \"Karayolu Taşımacılığı\"}, {\"url\": \"havayolu-tasimaciligi.index\", \"title\": \"Havayolu Taşımacılığı\"}, {\"url\": \"denizyolu-tasimaciligi.index\", \"title\": \"Denizyolu Taşımacılığı\"}, {\"url\": \"depolama.index\", \"title\": \"Depolama\"}, {\"url\": \"gumruk-isleri-tes.index\", \"title\": \"Gümrük İşleri Ve Teslimat\"}]}, {\"url\": \"contact-us-inner.index\", \"title\": \"İletişim\", \"subItems\": null}], \"logo\": \"assets/images/logo/dogancaylogo.png\", \"whatsapp_phone\": \"905399300485\"}', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kara_yolu_tasimaciligis`
--

CREATE TABLE `kara_yolu_tasimaciligis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `kara_yolu_tasimaciligis`
--

INSERT INTO `kara_yolu_tasimaciligis` (`id`, `data`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '{\"en\": {\"data\": [{\"text\": \"It is the most preferred transportation method for moving addresses within the country, countries that are more convenient and closer to reach by land, and transportation destinations to European countries. Our transportation coordinators determine the most appropriate moving method by making an evaluation based on the distance, geographical characteristics of the destination address, cost effectiveness of the moving method, size of the goods and your demands. In this evaluation, if the correct transportation method is road, a study is carried out on this issue.\", \"title\": \"Home and office transportation by road:\"}, {\"text\": \"It is generally preferred that the goods go directly to the address without transferring vehicles. That\'s why trucks or trucks allocated for your belongings are assigned door-to-door. In the land transportation method, special attention is paid to transportation time, customs procedures and delivery time. In order to avoid any negativities or surprises, advance planning is of great importance. Our company, which provides home and office transportation services by land, delivers all your home or office items or partial items to be transported to the specified addresses, especially to all European countries.\", \"title\": \"Security and Tracking:\"}], \"title\": \"HIGHWAY TRANSPORTS\"}, \"ge\": {\"data\": [{\"text\": \"Es ist die am meisten bevorzugte Transportmethode für den Umzug von Adressen innerhalb des Landes, in Länder, die auf dem Landweg bequemer und näher zu erreichen sind, sowie für Transportziele in europäische Länder. Unsere Transportkoordinatoren ermitteln die am besten geeignete Umzugsmethode, indem sie eine Bewertung auf der Grundlage der Entfernung, der geografischen Merkmale der Zieladresse, der Kosteneffizienz der Umzugsmethode, der Größe der Waren und Ihrer Anforderungen vornehmen. In dieser Bewertung wird eine Studie zu diesem Thema durchgeführt, wenn die richtige Transportmethode die Straße ist.\", \"title\": \"Transport zu Hause und im Büro auf der Straße:\"}, {\"text\": \"Im Allgemeinen wird bevorzugt, dass die Waren direkt an die Adresse geliefert werden, ohne dass Fahrzeuge umgeladen werden müssen. Aus diesem Grund werden LKWs oder LKWs, die für Ihr Eigentum reserviert sind, von Tür zu Tür zugewiesen. Beim Landtransport wird besonderes Augenmerk auf Transportzeit, Zollverfahren und Lieferzeit gelegt. Um negative Aspekte oder Überraschungen zu vermeiden, ist eine vorausschauende Planung von großer Bedeutung. Unser Unternehmen, das Haus- und Bürotransporte auf dem Landweg anbietet, liefert alle Ihre Haus- oder Büroartikel oder Teilstücke für den Transport an die angegebenen Adressen, insbesondere in alle europäischen Länder.\", \"title\": \"Sicherheit und Tracking:\"}], \"title\": \"AUTOBAHNVERKEHR\"}, \"tr\": {\"data\": [{\"text\": \"Ülke içerisindeki taşınma adresleri, kara yoluyla gidilmesi daha uygun ve yakın olan ülkeler ve Avrupa Ülkelerine yapılacak olan taşıma yerleri için en çok tercih edilen taşıma yöntemidir. Taşıma koordinatörlerimiz mesafe, gidilecek adresin coğrafi özellikleri, taşınma yönteminin maliyet etkinliği, eşyaların büyüklüğü ve sizlerin talepleri doğrultusunda bir değerlendirme yaparak en doğru taşınma yöntemini belirler. Bu değerlendirmede eğer doğru taşınma yöntemi karayolu ise bu konuda çalışma yapılır.\", \"title\": \"Karayolu ile ev ve ofis taşıma:\"}, {\"text\": \"Genellikle eşyaların araç aktarması yapmadan direk olarak adrese gitmesi tercih edilen bir durumdur. Bu yüzden eşyalarınız için tahsis edilmiş tır veya kamyonlar kapıdan kapıya olacak şeklide görevlendirilirler. Kara yoluyla yapılan taşıma yönteminde taşınma zamanına, gümrük işlemlerine ve teslimat zamanına özellikle dikkat edilir. Herhangi bir olumsuzluk veya sürprizle karşılaşmamak için bu konuda önceden yapılan planlamanın önemi büyüktür. Kara yoluyla ev ve ofis taşımacılığı hizmeti veren firmamız özellikle tüm Avrupa ülkelerine tüm taşınacak ev veya ofis eşyalarınızı  veya parça eşyalarınızı belirtilen adreslere ulaştırmaktadır.\", \"title\": \"Güvenlik ve Takip:\"}], \"title\": \"KARAYOLU TAŞIMACILIĞI\"}, \"hero\": \"assets/images/karayoluTas/hero.jpg\", \"images\": [{\"img_url\": \"assets/images/karayoluTas/resim1.jpeg\"}, {\"img_url\": \"assets/images/karayoluTas/resim2.jpg\"}]}', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_09_06_123225_create_headers_table', 1),
(6, '2023_09_07_144851_create_footers_table', 2),
(7, '2023_09_08_135438_create_welcomes_table', 3),
(9, '2023_09_11_074442_create_features_cards_table', 4),
(10, '2023_09_11_074754_create_features_table', 5),
(11, '2023_09_11_115645_create_counters_table', 6),
(12, '2023_09_12_071658_create_blogs_table', 7),
(13, '2023_09_12_090231_create_general_information_table', 8),
(14, '2023_09_12_093315_create_contacts_table', 9),
(15, '2023_09_12_122344_create_contact_forms_table', 10),
(17, '2023_09_13_113032_create_planlama_hazirliks_table', 12),
(18, '2023_09_13_140704_create_tasinma_kontrol_listesis_table', 13),
(20, '2023_09_14_110603_create_kara_yolu_tasimaciligis_table', 15),
(21, '2023_09_14_113143_create_hava_yolu_tasimaciligis_table', 16),
(22, '2023_09_14_143513_create_deniz_yolu_tasimaciligis_table', 17),
(24, '2023_09_15_090123_create_gumruk_isleri_teslimats_table', 19),
(25, '2023_09_21_081704_create_galeris_table', 20),
(26, '2023_09_22_142747_create_about_us_table', 21),
(27, '2023_09_25_091004_create_about_us_inners_table', 22),
(28, '2023_09_25_122747_create_contact_us_inners_table', 23),
(30, '2023_09_26_124014_create_tasima_hizmetlerimizs_table', 25),
(31, '2023_09_26_130222_create_depolamas_table', 26),
(32, '2023_09_29_075504_create_references_table', 27);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `planlama_hazirliks`
--

CREATE TABLE `planlama_hazirliks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `planlama_hazirliks`
--

INSERT INTO `planlama_hazirliks` (`id`, `data`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '{\"en\": {\"data\": [{\"text\": \"Although all moving operations require detailed planning in advance, much more preparation and work is required in international home and office moving. Carrying out this preparation phase completely and correctly will eliminate many problems and risks that may occur during the move before they occur. Determining the transportation time, packaging requirements, insurance procedures and customs procedures in both countries are the most important steps of this stage. It is essential to make detailed planning in advance for all these stages. This stage is planned and monitored in detail by our transportation experts and international coordinators.\", \"title\": \"Planning:\"}, {\"text\": \"A dedicated moving coordinator is assigned to you for each international home and office move. After the evaluation of our moving experts at your home, they will fully analyze your expectations and provide you with the solution that best suits you and your budget and the necessary information about the entire moving process. This evaluation and explanation is followed by the process of providing you with the most appropriate price quote that will meet your needs and expectations. The price offer to be submitted includes information about what services are included in the offer and what are excluded. It also includes moving day and time, delivery date and customs information forms. Your budget situation and demands will determine the size of the quote and service provided. As a result of the agreement, we are now ready for the move and we can start the preparations for the move. We would like you to trust us on this matter and know that we will follow the process.\", \"title\": \"Preparation:\"}, {\"text\": \"On the pre-determined moving day, our transportation personnel arrive at the location of the goods subject to international transportation. Your belongings are packaged in the most appropriate way using packaging materials that comply with international transportation conditions and are safely loaded into containers or transport trucks. As Doğançay transportation, we use the most durable packaging materials on the market. We know that the most important elements of success in international home and office goods transportation are correct packaging, correct planning and good organization. The packing-material list to be made during this process is prepared in detail. This list plays a very important role especially during the customs procedures of both countries and prevents any problems that may occur after delivery.\", \"title\": \"Moving Day:\"}], \"title\": \"PLAN AND PREPARATION\"}, \"ge\": {\"data\": [{\"text\": \"Obwohl alle Umzugsvorgänge eine detaillierte Planung im Voraus erfordern, ist bei internationalen Privat- und Büroumzügen viel mehr Vorbereitung und Arbeit erforderlich. Durch die vollständige und korrekte Durchführung dieser Vorbereitungsphase werden viele Probleme und Risiken, die beim Umzug auftreten können, bereits im Vorfeld beseitigt. Die Bestimmung der Transportzeit, Verpackungsanforderungen, Versicherungsverfahren und Zollverfahren in beiden Ländern sind die wichtigsten Schritte dieser Phase. Es ist wichtig, für alle diese Phasen im Voraus eine detaillierte Planung vorzunehmen. Diese Phase wird von unseren Transportexperten und internationalen Koordinatoren detailliert geplant und überwacht.\", \"title\": \"Planung:\"}, {\"text\": \"Für jeden internationalen Privat- und Büroumzug wird Ihnen ein persönlicher Umzugskoordinator zugewiesen. Nach der Beurteilung durch unsere Umzugsexperten bei Ihnen zu Hause werden diese Ihre Erwartungen umfassend analysieren und Ihnen die Lösung liefern, die am besten zu Ihnen und Ihrem Budget passt, sowie die notwendigen Informationen über den gesamten Umzugsprozess. Auf diese Bewertung und Erläuterung folgt der Prozess, Ihnen das am besten geeignete Preisangebot zu unterbreiten, das Ihren Bedürfnissen und Erwartungen entspricht. Das abzugebende Preisangebot enthält Informationen darüber, welche Leistungen im Angebot enthalten sind und welche ausgeschlossen sind. Dazu gehören auch Umzugstag und -uhrzeit, Liefertermin und Zollinformationsformulare. Ihre Budgetsituation und Ihre Anforderungen bestimmen den Umfang des Angebots und der erbrachten Leistung. Durch die Vereinbarung sind wir nun bereit für den Umzug und können mit den Umzugsvorbereitungen beginnen. Wir möchten, dass Sie uns in dieser Angelegenheit vertrauen und wissen, dass wir den Prozess verfolgen werden.\", \"title\": \"Vorbereitung:\"}, {\"text\": \"Am vorher festgelegten Umzugstag trifft unser Transportpersonal am Standort der Güter ein, die für den internationalen Transport bestimmt sind. Ihre Sachen werden auf die am besten geeignete Weise mit Verpackungsmaterialien verpackt, die den internationalen Transportbedingungen entsprechen, und sicher in Container oder Transportfahrzeuge verladen. Als Doğançay Transportation verwenden wir die langlebigsten Verpackungsmaterialien auf dem Markt. Wir wissen, dass die wichtigsten Erfolgsfaktoren beim internationalen Warentransport zu Hause und im Büro die richtige Verpackung, die richtige Planung und eine gute Organisation sind. Die dabei zu erstellende Verpackungsmaterialliste wird detailliert erstellt. Diese Liste spielt insbesondere bei den Zollverfahren beider Länder eine sehr wichtige Rolle und beugt eventuellen Problemen nach der Lieferung vor.\", \"title\": \"Umzugstag:\"}], \"title\": \"PLAN UND VORBEREITUNG\"}, \"tr\": {\"data\": [{\"text\": \"Bütün taşınma işlemleri önceden detaylı bir planlama gerektirirse de Uluslararası ev ve ofis taşımacılığında çok daha fazla hazırlık ve çalışma gerekmektedir. Bu hazırlık aşamasının tam ve doğru yapılması taşınma esnasında oluşabilecek birçok sorun ve riskleri daha oluşmadan ortadan kaldırır. Taşıma zamanının belirlenmesi, paketleme gereksinimleri, sigortalama prosedürleri ve her iki ülkedeki gümrük işlemleri, bu aşamanın en önemli basamaklarıdır. Bütün bu aşamalar için önceden ayrıntılı bir planlama yapılması şarttır. Bu aşama bizim taşıma eksperlerimiz ve uluslararası koordinatörlerimiz tarafından detaylı bir şekilde planlanır ve takip edilir.\", \"title\": \"Planlama:\"}, {\"text\": \"Her bir uluslararası ev ve ofis taşımacılığı için size özel bir taşıma koordinatörü atanır. Taşıma eksperlerimizin evinizde yapacağı değerlendirmeden sonra sizin beklentilerinizi tam olarak analiz edip size ve bütçenize en uygun çözümü ve tüm taşınma süreci hakkında size gerekli bilgileri iletirler. Bu değerlendirmeyi ve izahatı, size ihtiyaçlarınızı ve beklentilerinizi karşılayacak en uygun fiyat teklifi verilmesi işlemi takip eder. Verilecek fiyat teklifinde, verilen teklife ne gibi hizmetlerin dahil olduğunu ve nelerin de hariç olduğu bilgileri bulunmaktadır. Ayrıca, taşınma günü ve saati, teslim tarihi ve gümrük bilgilendirme formları da bulunur. Sizin bütçe durumunuz ve talepleriniz verilen fiyat teklifi ve hizmetin boyutlarını belirleyecektir. Varılacak anlaşma sonunda artık taşınma için hazır duruma geliyoruz ve taşınma hazırlıklarına başlayabiliriz. Bu konuda bize güvenmenizi ve süreci takip edeceğimizi bilmenizi isteriz.\", \"title\": \"Hazırlık:\"}, {\"text\": \"Önceden kararlaştırılan taşınma gününde, taşıma yapacak görevlilerimiz, uluslararası taşımaya konu eşyaların bulunduğu yere gelirler. Uluslararası taşıma şartlarına uygun paketleme malzemeleri kullanılarak eşyalarınız en uygun biçimde paketlenir ve Konteynırlara veya taşıma tırlarına güvenli bir şekilde yüklenir. Doğançay nakliyat olarak piyasadaki en dayanıklı paketleme malzemelerini kullanmaktayız. Uluslararası ev ve ofis eşya taşımacılığında başarının en önemli unsurlarının doğru paketleme, doğru planlama ve iyi bir organizasyondan geçtiğini biliyoruz. Bu süreçte yapılacak çeki-malzeme listesi ise detaylı bir şekilde hazırlanmaktadır.  Bu liste özellikle her iki ülkenin gümrük işlemleri sırasında çok önemli role sahiptir ve teslimat sonrası oluşabilecek sıkıntılarında önüne geçilmiş olur.\", \"title\": \"Taşınma Günü:\"}], \"title\": \"PLAN VE HAZIRLIK\"}, \"hero\": \"assets/images/ing.jpg\", \"images\": [{\"img_url\": \"assets/images/planlamahazirlik.png\"}]}', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `references`
--

CREATE TABLE `references` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `references`
--

INSERT INTO `references` (`id`, `data`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '{\"en\": {\"home\": {\"title\": \"Our references\"}, \"inner\": {\"text\": \"Our references are a reflection of our successful projects and customer satisfaction. Many of our customers have shared their satisfaction in working with us and their trust in our services.\", \"title\": \"Our references\", \"text_footer\": \"Thank you for choosing our company in transportation service with our growing fleet and equipment.\"}}, \"ge\": {\"home\": {\"title\": \"Unsere Referenzen\"}, \"inner\": {\"text\": \"Unsere Referenzen spiegeln unsere erfolgreichen Projekte und die Zufriedenheit unserer Kunden wider. Viele unserer Kunden haben ihre Zufriedenheit mit der Zusammenarbeit mit uns und ihr Vertrauen in unsere Dienstleistungen zum Ausdruck gebracht.\", \"title\": \"Unsere Referenzen\", \"text_footer\": \"Vielen Dank, dass Sie sich für unser Transportunternehmen mit unserer wachsenden Flotte und Ausrüstung entschieden haben.\"}}, \"tr\": {\"home\": {\"title\": \"Referanslarımız\"}, \"inner\": {\"text\": \"Referanslarımız, başarılı projelerimizin ve müşteri memnuniyetinin bir yansımasıdır. Birçok müşterimiz, bizimle çalışmaktan duydukları memnuniyeti ve hizmetlerimizden duydukları güveni paylaşmışlardır.\", \"title\": \"Referanslarımız\", \"text_footer\": \"Büyüyen filo ve ekipmanlarımızla taşımacılık hizmetinde firmamızı tercih ettiğiniz için teşekkür ederiz.\"}}, \"images\": [{\"alt\": \"referanslar resim\", \"order\": 0, \"title\": \"TÜRKİYE BÜYÜK MİLLET MECLİSİ\", \"img_url\": \"assets/images/referanslarimiz/tbmm.png\"}, {\"alt\": \"referanslar resim\", \"order\": 0, \"title\": \"GENELKURMAY BAŞKANLIĞI\", \"img_url\": \"assets/images/referanslarimiz/genelkurmay.png\"}, {\"alt\": \"referanslar resim\", \"order\": 0, \"title\": \"KARA KUVVETLERİ KOMUTANLIĞI\", \"img_url\": \"assets/images/referanslarimiz/karakuvvetleri.png\"}, {\"alt\": \"referanslar resim\", \"order\": 0, \"title\": \"HAVA KUVVETLERİ KOMUTANLIĞI\", \"img_url\": \"assets/images/referanslarimiz/havakuvvetleri.png\"}, {\"alt\": \"referanslar resim\", \"order\": 0, \"title\": \"DENİZ KUVVETLERİ KOMUTANLIĞI\", \"img_url\": \"assets/images/referanslarimiz/denizkuvvetleri.png\"}, {\"alt\": \"referanslar resim\", \"order\": 0, \"title\": \"JANDARMA GENEL KOMUTANLIĞI\", \"img_url\": \"assets/images/referanslarimiz/jandargenel.png\"}, {\"alt\": \"referanslar resim\", \"order\": 0, \"title\": \"GAZİ ORDU EVİ\", \"img_url\": \"assets/images/default-image.jpg\"}, {\"alt\": \"referanslar resim\", \"order\": 0, \"title\": \"SAVUNMA SANAYİ\", \"img_url\": \"assets/images/referanslarimiz/savunmasanayi.png\"}, {\"alt\": \"referanslar resim\", \"order\": 0, \"title\": \"KARA HARP OKULU\", \"img_url\": \"assets/images/referanslarimiz/karaharpokulu.jpg\"}, {\"alt\": \"referanslar resim\", \"order\": 0, \"title\": \"TÜBİTAK\", \"img_url\": \"assets/images/referanslarimiz/tubitak.png\"}, {\"alt\": \"referanslar resim\", \"order\": 0, \"title\": \"TÜBİTAK RASAT UYDUSU TAŞIMA\", \"img_url\": \"assets/images/referanslarimiz/tubitakuzay.png\"}, {\"alt\": \"referanslar resim\", \"order\": 0, \"title\": \"HAVELSAN\", \"img_url\": \"assets/images/referanslarimiz/havelsan.png\"}, {\"alt\": \"referanslar resim\", \"order\": 0, \"title\": \"ADALET VE KALKINMA PARTİSİ\", \"img_url\": \"assets/images/referanslarimiz/akp.png\"}, {\"alt\": \"referanslar resim\", \"order\": 0, \"title\": \"MİLLİYETÇİ HAREKET PARTİSİ\", \"img_url\": \"assets/images/referanslarimiz/mhp.png\"}, {\"alt\": \"referanslar resim\", \"order\": 0, \"title\": \"CUMHURİYET HALK PARTİSİ\", \"img_url\": \"assets/images/referanslarimiz/chp.png\"}, {\"alt\": \"referanslar resim\", \"order\": 0, \"title\": \"ÇEVRE VE ORMAN BAKANLIĞI\", \"img_url\": \"assets/images/referanslarimiz/cevreormanbak.png\"}, {\"alt\": \"referanslar resim\", \"order\": 0, \"title\": \"MALİYE BAKANLIĞI\", \"img_url\": \"assets/images/referanslarimiz/maliyebakanligi.png\"}, {\"alt\": \"referanslar resim\", \"order\": 0, \"title\": \"MİLLİ EĞİTİM BAKANLIĞI\", \"img_url\": \"assets/images/referanslarimiz/meb.png\"}, {\"alt\": \"referanslar resim\", \"order\": 0, \"title\": \"GÜZEL SANATLAR GENEL MÜDÜRLÜĞÜ\", \"img_url\": \"assets/images/referanslarimiz/guzelsanatlarmud.jpg\"}, {\"alt\": \"referanslar resim\", \"order\": 0, \"title\": \"GAZİ ÜNİVERSİTESİ\", \"img_url\": \"assets/images/referanslarimiz/gaziuni.jpg\"}, {\"alt\": \"referanslar resim\", \"order\": 0, \"title\": \"YILDIRIM BEYAZIT ÜNİVERSİTESİ\", \"img_url\": \"assets/images/referanslarimiz/yildirimuni.png\"}, {\"alt\": \"referanslar resim\", \"order\": 0, \"title\": \"HACETTEPE ÜNİVERSİTESİ\", \"img_url\": \"assets/images/referanslarimiz/hacettepeuni.jpg\"}, {\"alt\": \"referanslar resim\", \"order\": 0, \"title\": \"ANKARA ÜNİVERSİTESİ\", \"img_url\": \"assets/images/referanslarimiz/ankarauni.png\"}, {\"alt\": \"referanslar resim\", \"order\": 0, \"title\": \"GENEL ENERJİ\", \"img_url\": \"assets/images/referanslarimiz/genelenerji.png\"}, {\"alt\": \"referanslar resim\", \"order\": 0, \"title\": \"DOĞUŞ OTO\", \"img_url\": \"assets/images/referanslarimiz/dogusoto.png\"}, {\"alt\": \"referanslar resim\", \"order\": 0, \"title\": \"FORD OTO KOÇ\", \"img_url\": \"assets/images/referanslarimiz/fordotokoc.png\"}, {\"alt\": \"referanslar resim\", \"order\": 0, \"title\": \"İŞ BANKASI\", \"img_url\": \"assets/images/referanslarimiz/isbankasi.png\"}, {\"alt\": \"referanslar resim\", \"order\": 0, \"title\": \"VAKIFLAR BANKASI\", \"img_url\": \"assets/images/referanslarimiz/vakifbank.jpg\"}, {\"alt\": \"referanslar resim\", \"order\": 0, \"title\": \"ZİRAAT BANKASI\", \"img_url\": \"assets/images/referanslarimiz/ziraatbankasi.png\"}, {\"alt\": \"referanslar resim\", \"order\": 0, \"title\": \"YDA İNŞAAT\", \"img_url\": \"assets/images/referanslarimiz/yda.png\"}, {\"alt\": \"referanslar resim\", \"order\": 0, \"title\": \"NUROL HOLDİNG\", \"img_url\": \"assets/images/referanslarimiz/nuraolholding.jpeg\"}, {\"alt\": \"referanslar resim\", \"order\": 0, \"title\": \"ABD SİLAHLI KUVVETLERİ ANKARA DESTEK TESİSLERİ\", \"img_url\": \"assets/images/referanslarimiz/abdarmy.jpeg\"}, {\"alt\": \"referanslar resim\", \"order\": 0, \"title\": \"TÜRK TRAKTÖR\", \"img_url\": \"assets/images/referanslarimiz/turktraktor.jpg\"}, {\"alt\": \"referanslar resim\", \"order\": 0, \"title\": \"PETROL OFİSİ\", \"img_url\": \"assets/images/referanslarimiz/petrolofisi.png\"}, {\"alt\": \"referanslar resim\", \"order\": 0, \"title\": \"ARVENTO\", \"img_url\": \"assets/images/referanslarimiz/arvento.png\"}]}', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tasima_hizmetlerimizs`
--

CREATE TABLE `tasima_hizmetlerimizs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `tasima_hizmetlerimizs`
--

INSERT INTO `tasima_hizmetlerimizs` (`id`, `data`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '{\"en\": {\"data\": [{\"text\": \"Our international transportation service covers international home and office transportation of international companies, diplomatic personnel assigned abroad and civilian individuals. We provide this service including sea, air and land transportation, as well as packaging, self-storage and smart storage services.\", \"title\": \"Our services:\"}, {\"text\": \"When determining the moving method in international home and office transportation, the decision is made according to some criteria. These are how long it will take to move, how big the belongings are, the state of your budget and the physical issue of the moving location (what floor it is on, etc.). Taking these evaluations into consideration, our transportation coordinator will offer you the most affordable price offer and determine the moving method. However, alternative offers may be presented. These methods are home and office transportation by sea, air and land. Each method has advantages and disadvantages in terms of cost effectiveness, delivery time and size of the items.\", \"title\": \"Transport Methods:\"}], \"title\": \"OUR TRANSPORTATION SERVICES\"}, \"ge\": {\"data\": [{\"text\": \"Unser internationaler Transportservice umfasst internationale Heim- und Bürotransporte von internationalen Unternehmen, im Ausland eingesetztem Diplomatenpersonal und Zivilpersonen. Wir bieten diesen Service einschließlich See-, Luft- und Landtransporten sowie Verpackungs-, Self-Storage- und Smart-Storage-Dienstleistungen an.\", \"title\": \"Unsere Dienstleistungen:\"}, {\"text\": \"Bei der Festlegung der Umzugsmethode im internationalen Heim- und Bürotransport wird die Entscheidung anhand einiger Kriterien getroffen. Dabei geht es um die Dauer des Umzugs, die Größe des Umzugsguts, den Stand Ihres Budgets und den physischen Standort des Umzugsorts (auf welcher Etage er sich befindet usw.). Unter Berücksichtigung dieser Bewertungen unterbreitet Ihnen unser Transportkoordinator das günstigste Preisangebot und legt die Umzugsmethode fest. Es können jedoch Alternativangebote vorgelegt werden. Diese Methoden sind Heim- und Bürotransporte auf dem See-, Luft- und Landweg. Jede Methode hat Vor- und Nachteile hinsichtlich Kosteneffizienz, Lieferzeit und Größe der Artikel.\", \"title\": \"Transportmethoden:\"}], \"title\": \"UNSERE TRANSPORTLEISTUNGEN\"}, \"tr\": {\"data\": [{\"text\": \"Uluslararası taşıma hizmetimiz uluslararası firmaların, yurtdışına görevlendirilmiş diplomatik personelin ve sivil şahısların uluslararası ev ve ofis taşıma işlemlerini kapsamaktadır. Bu hizmeti deniz, hava, ve kara yoluyla yapılan taşımacılık ile paketleme, self-storage ve akıllı depolama hizmetleri dahil olarak veriyoruz.\", \"title\": \"Hizmetlerimiz:\"}, {\"text\": \"Uluslararası ev ve ofis taşımacılığında taşınma metodu belirlenirken bazı kriterlere göre kara verilir. Bunlar ne kadar zamanda taşınma isteniyor, eşyaların büyüklüğü ne kadar,  bütçenizin durumu ve taşınma yerlerinin fiziksel konu(kaçıncı katta olduğu…vb). Taşıma koordinatörümüz bu değerlendirmeleri göz önüne alarak size en uygun fiyat teklifini sunacak ve taşınma metodunu belirleyecektir. Yine de alternatif teklifler sunulabilir. Bu metotlar deniz yolu, hava yolu ve kara yoluyla yapılan ev ve of taşımasıdır. Her bir metodun maliyet etkinlik, teslim süresi zamanı ve eşyaların büyüklüğü açısından avantaj ve dezavantajları bulunmaktadır.\", \"title\": \"Taşıma Metotları:\"}], \"title\": \"TAŞIMA HİZMETLERİMİZ\"}, \"hero\": \"assets/images/tasimahizmetleri/tion.jpg\", \"images\": [{\"img_url\": \"assets/images/tasimahizmetleri/resim1.jpg\"}, {\"img_url\": \"assets/images/tasimahizmetleri/resim2.jpg\"}]}', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tasinma_kontrol_listesis`
--

CREATE TABLE `tasinma_kontrol_listesis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `tasinma_kontrol_listesis`
--

INSERT INTO `tasinma_kontrol_listesis` (`id`, `data`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '{\"en\": {\"data\": [{\"text\": \"When our staff arrives on moving day, make sure there is someone to greet you at home. Check with our moving officers for the last time before the move and specify the items to be moved and the issues that need extra attention. During this check, do not forget the attic and the belongings in the cellar under the apartment. At the end of the transportation, make sure that there is no material left behind that you want to carry. After the items are moved, check the packing inventory list. Finally, sign the documents that need to be signed.\", \"title\": \"Moving Day:\"}], \"title\": \"MOVING CHECKLIST\", \"check_list\": [{\"text\": \"Check the validity period of your visa and passport.\"}, {\"text\": \"Confirm the moving day with Doğançay Nakliyat.\"}, {\"text\": \"Decide which items you will take to your new address with international moving.\"}, {\"text\": \"What will you do with leftover items? You can sell them or give them to someone. You should also consume frozen foods and cleaning supplies like detergents before moving day.\"}, {\"text\": \"Compare the quantity of items in the price quote.\"}, {\"text\": \"Examine and complete the necessary documents for vehicle import rights, residence permits, valuable items, antiques, and plants in the country you are going to.\"}, {\"text\": \"It\'s beneficial to research vaccination requirements and health conditions in the country you are moving to.\"}, {\"text\": \"Have you made a reservation for your departure ticket? If the date is fixed, there are many advantages to booking in advance. If you plan to stay in a hotel for the first few days, it\'s a good idea to make a reservation.\"}, {\"text\": \"Check your personal documents (identity card, birth certificate, health records, student certificate, driver\'s license, etc.). If necessary, contact relevant government offices, schools, doctors, lawyers, and accountants to obtain your personal documents.\"}, {\"text\": \"Request your car insurance documents from your insurance company.\"}, {\"text\": \"Check and, if necessary, negotiate transfer for accident, health, and other insurance and comprehensive insurance documents.\"}, {\"text\": \"Read the necessary documents for your driver\'s license in the country you are moving to.\"}, {\"text\": \"Research nearby schools to your new address. If necessary, make appointments.\"}, {\"text\": \"For your move, you can inform the Provincial/District Population Citizenship Directorate and the Turkish Post Office about the change of address.\"}, {\"text\": \"Have your white goods checked by a service. Also, if voltage conversion is required, learn how to do it from the service.\"}, {\"text\": \"For electricity, water, and natural gas, find out the due dates, remaining amounts, and contact the relevant units for account closure.\"}, {\"text\": \"Discuss ending your lease agreement with your landlord.\"}, {\"text\": \"Notify places like banks about your change of address.\"}, {\"text\": \"Obtain school, health, and dental records.\"}, {\"text\": \"Close your bank account. You can transfer your account to a bank with which you have an agreement in the new place you are moving to.\"}, {\"text\": \"Take your pets to the vet to ensure their vaccinations are up to date and obtain the necessary documents.\"}, {\"text\": \"Terminate subscriptions according to your moving day.\"}, {\"text\": \"Before moving, disconnect and clean your white goods. You can also hire a technician to remove chandeliers.\"}, {\"text\": \"To ensure easy access for moving vehicles, you should consult with your neighbors or the building manager before moving day.\"}, {\"text\": \"If you want to do the packing yourself and have an agreement to do so, you can obtain packing boxes, tapes, moving blankets, moving ropes, utility knives, and paper from our online service provider, evex.com.tr.\"}, {\"text\": \"If you live in a high-rise building and there is no external elevator for moving, discuss using the building\'s internal elevator with the building manager.\"}], \"check_list_title\": \"Preparatory Period\"}, \"ge\": {\"data\": [{\"text\": \"Wenn unsere Mitarbeiter am Umzugstag eintreffen, sorgen Sie dafür, dass Sie zu Hause von jemandem begrüßt werden. Sprechen Sie vor dem Umzug ein letztes Mal mit unseren Umzugsbeauftragten und legen Sie fest, welche Gegenstände bewegt werden sollen und welche Probleme besondere Aufmerksamkeit erfordern. Vergessen Sie bei dieser Kontrolle nicht den Dachboden und die Sachen im Keller unter der Wohnung. Stellen Sie am Ende des Transports sicher, dass kein Material zurückbleibt, das Sie transportieren möchten. Überprüfen Sie nach dem Umzug der Artikel die Verpackungsinventarliste. Unterschreiben Sie abschließend die zu unterzeichnenden Dokumente.\", \"title\": \"Umzugstag:\"}], \"title\": \"UMZUGS-CHECKLISTE\", \"check_list\": [{\"text\": \"Überprüfen Sie die Gültigkeitsdauer Ihres Visums und Reisepasses.\"}, {\"text\": \"Bestätigen Sie den Umzugstag bei Doğançay Nakliyat.\"}, {\"text\": \"Entscheiden Sie, welche Gegenstände Sie mit einem internationalen Umzug an Ihre neue Adresse mitnehmen möchten.\"}, {\"text\": \"Was werden Sie mit übrig gebliebenen Gegenständen tun? Sie können sie verkaufen oder jemandem geben. Sie sollten auch gefrorene Lebensmittel und Reinigungsmittel wie Waschmittel vor dem Umzugstag verbrauchen.\"}, {\"text\": \"Vergleichen Sie die Menge der Gegenstände im Preisangebot.\"}, {\"text\": \"Prüfen Sie die notwendigen Dokumente für die Einfuhrrechte für Fahrzeuge, Aufenthaltsgenehmigungen, wertvolle Gegenstände, Antiquitäten und Pflanzen im Land, in das Sie ziehen werden, und vervollständigen Sie sie.\"}, {\"text\": \"Es ist ratsam, sich über Impfanforderungen und Gesundheitsbedingungen im Land, in das Sie ziehen, zu informieren.\"}, {\"text\": \"Haben Sie bereits eine Reservierung für Ihr Abflugticket vorgenommen? Wenn das Datum feststeht, gibt es viele Vorteile, frühzeitig zu buchen. Wenn Sie planen, in den ersten Tagen in einem Hotel zu übernachten, ist es ratsam, eine Reservierung vorzunehmen.\"}, {\"text\": \"Überprüfen Sie Ihre persönlichen Dokumente (Personalausweis, Geburtsurkunde, Gesundheitsakten, Studentenausweis, Führerschein usw.). Kontaktieren Sie bei Bedarf relevante Regierungsstellen, Schulen, Ärzte, Anwälte und Steuerberater, um Ihre persönlichen Dokumente zu erhalten.\"}, {\"text\": \"Fordern Sie Ihre Kfz-Versicherungsdokumente von Ihrer Versicherungsgesellschaft an.\"}, {\"text\": \"Überprüfen Sie Unfall-, Kranken- und andere Versicherungen sowie Vollkaskoversicherungsdokumente und verhandeln Sie sie gegebenenfalls für den Transfer.\"}, {\"text\": \"Lesen Sie die notwendigen Dokumente für Ihren Führerschein im Land, in das Sie ziehen, durch.\"}, {\"text\": \"Recherchieren Sie Schulen in der Nähe Ihrer neuen Adresse. Vereinbaren Sie bei Bedarf Termine.\"}, {\"text\": \"Informieren Sie für Ihren Umzug das Provinz-/Kreisamt für Bevölkerung und Staatsbürgerschaft sowie die Türkische Post über die Änderung der Adresse.\"}, {\"text\": \"Lassen Sie Ihre Haushaltsgeräte von einem Service überprüfen. Erfahren Sie auch vom Service, wie Sie bei Bedarf eine Spannungsumwandlung durchführen können.\"}, {\"text\": \"Erfahren Sie die Fälligkeitsdaten, Restbeträge und kontaktieren Sie die zuständigen Stellen für die Kontoschließung von Strom, Wasser und Erdgas.\"}, {\"text\": \"Besprechen Sie die Beendigung Ihres Mietvertrags mit Ihrem Vermieter.\"}, {\"text\": \"Benachrichtigen Sie Stellen wie Banken über Ihre Adressänderung.\"}, {\"text\": \"Besorgen Sie sich Schul-, Gesundheits- und Zahnakten.\"}, {\"text\": \"Schließen Sie Ihr Bankkonto. Sie können Ihr Konto zu einer Bank übertragen, mit der Sie in Ihrem neuen Wohnort vereinbart haben.\"}, {\"text\": \"Bringen Sie Ihre Haustiere zum Tierarzt, um sicherzustellen, dass ihre Impfungen auf dem neuesten Stand sind, und holen Sie die erforderlichen Dokumente ein.\"}, {\"text\": \"Kündigen Sie Abonnements entsprechend Ihrem Umzugstag.\"}, {\"text\": \"Vor dem Umzug ziehen Sie die Stecker von Ihren Haushaltsgeräten, trocknen und reinigen Sie sie. Sie können auch einen Techniker beauftragen, um Kronleuchter zu entfernen.\"}, {\"text\": \"Um den Zugang für Umzugswagen zu erleichtern, sollten Sie sich vor dem Umzugstag mit Ihren Nachbarn oder dem Hausmeister absprechen.\"}, {\"text\": \"Wenn Sie das Packen selbst erledigen möchten und eine Vereinbarung getroffen haben, können Sie Verpackungskartons, Klebeband, Umzugsdecken, Umzugsseile, Teppichmesser, Papier usw. von unserem Online-Dienstleister evex.com.tr beziehen.\"}, {\"text\": \"Wenn Sie in einem Hochhaus wohnen und kein Außenaufzug für den Umzug vorhanden ist, besprechen Sie die Nutzung des inneren Aufzugs mit dem Hausmeister.\"}], \"check_list_title\": \"Vorbereitungszeit\"}, \"tr\": {\"data\": [{\"text\": \"Taşınma günü görevlilerimiz geldiğinde evde karşılayacak birisi olduğundan emin olunuz. Taşıma görevlilerimiz ile taşınma önce son kez gezerek beraber kontrol ediniz ve taşınacak eşyaları ve ekstra dikkat edilmesi gereken hususları belirtiniz. Bu kontrolde çatı katını, apartman altındaki mahzende bulunan eşyaları da unutmayınız. Taşıma sonunda geriye taşınmasını istediğiniz hiçbir malzemenin kalmadığından emin olunuz. Eşyalar taşındıktan sonra paketleme envanter listesini kontrol ediniz. En sonunda imzalanması geren belgeleri imzalayınız.\", \"title\": \"Taşınma Günü:\"}], \"title\": \"TAŞINMA KONTROL LİSTESİ\", \"check_list\": [{\"text\": \"Vize ve pasaportunuzun geçerlilik sürelerini kontrol ediniz.\"}, {\"text\": \"Doğançay Nakliyat’dan taşınma gününü teyit ediniz.\"}, {\"text\": \"Hangi eşyalarınızı uluslararası bir taşınma ile yeni adresinize götüreceğinize karar veriniz.\"}, {\"text\": \"Geride kalan eşyalarınıza ne yapacaksınız? Onları satabilir ve birilerine verebilirsiniz. Evdeki donmuş gıdalar, deterjan gibi temizlik malzemelerini de taşınma gününe kadar tüketmelisiniz.\"}, {\"text\": \"Fiyat teklifindeki eşya miktarını karşılaştırarak kontrol ediniz.\"}, {\"text\": \"Gideceğiniz ülkedeki araç getirme hakkı, oturma izni, değerli eşya ve antika bulundurma izni ve bitkiler için gerekli olan evrakları önceden inceleyip gereğini yapmalısınız.\"}, {\"text\": \"Taşınacağınız yeni ülke de aşı gereksinimlerini ve sağlık şartlarını incelemede fayda var\"}, {\"text\": \"Gidiş biletinizi için rezervasyon yaptırdınız mı? Eğer tarih belli ise önceden almanın birçok avantajı bulunmaktadır. Eğer ilk günler otel de kalacaksanız yer ayırtmanız iyi olur.\"}, {\"text\": \"Kişisel evraklarınızı (kimlik kartı, doğum belgesi, sağlık kayıtları, öğrenci belgesi, ehliyet.. gibi) kontrol etmeyi unutmayın. Gerekirse, ilgili devlet daireleriyle, okullunuzla, doktorunuzla, avukatınızla ve muhasebecinizle görüşüp kişisel belgelerinizi temin edebilirsiniz.\"}, {\"text\": \"Araba sigorta belgelerinizi Sigortacınızdan isteyiniz.\"}, {\"text\": \"Kaza, sağlık ve diğer sigorta ve kasko belgelerinizi kontrol ediniz ve gerekirse transfer için görüşünüz.\"}, {\"text\": \"Yeni taşınacağınız ülkedeki ehliyet için gerekli belgeleri okuyunuz.\"}, {\"text\": \"Taşınacağınız adresin yanındaki okulları araştırınız. Gerekirse randevu almalısınız.\"}, {\"text\": \"Taşınma için İl/ilçe Nüfus Vatandaşlık İşleri Müdürlüğüne ve PTT’ye başvurarak adres değişikliği bilgisini verebilirsiniz.\"}, {\"text\": \"Beyaz eşyalarınızı serviste kontrol ettiriniz. Ayrıca eğer voltaj değişikliği gerekiyorsa bunun için ne yapmanız gerektiğini servisten öğreniniz.\"}, {\"text\": \"Elektrik, su, doğalgaz için son ödeme tarihlerini, kalan miktarı ve hesap kapatma için ilgili birimlere başvurunuz.\"}, {\"text\": \"Kira sözleşmeniniz bitirmek için ev sahibinizle görüşünüz\"}, {\"text\": \"Adres değişikliğinizi banka gibi bildirmeniz gereken yerlere iletiniz.\"}, {\"text\": \"Okul, sağlık ve diş bilgilerinizi temin ediniz.\"}, {\"text\": \"Banka hesabınızı kapatınız. Hesabınızı yeni taşınacağınız yerdeki anlaştığınız bir bankaya transfer edebilirsiniz.\"}, {\"text\": \"Evcil hayvanlarınızı veterinere götürerek aşılarının tam olduğundan emin olunuz ve gerekli belgeleri alınız.\"}, {\"text\": \"Aboneliklerinizi taşınma gününe göre sonlandırınız.\"}, {\"text\": \"Taşınacak beyaz eşyalarınızı taşınma öncesi elektrikten çekip, kurutup temizlemelisiniz. Avizelerinizi sökmek için usta ayarlayabilirsiniz.\"}, {\"text\": \"Taşıma araçlarımızın rahat yanaşması için taşınma günü öncesinde komşularınızla veya apartman görevlisiyle görüşmelisiniz.\"}, {\"text\": \"Eğer paketlemeyi kendiniz yapmak istiyorsanız ve öyle anlaştı iseniz, taşıma kartonlarını, bantları, taşınma battaniyelerini, taşıma için ip, maket bıçağı, kağıt gibi ihtiyaçlarınızı online hizmet veren evex firmamızdan evex.com.tr adresinden temin edebilirsiniz\"}, {\"text\": \"Eğer yüksek bir apartmanda oturuyorsanız ve dışardan asansörlü taşıma imkanı yoksa bina içi asansörü kullanma için apartman görevlisi ile görüşünüz.\"}], \"check_list_title\": \"Hazırlık Dönemi\"}, \"hero\": \"assets/images/tasinmaKontrolLis/resim1.jpg\", \"images\": [{\"img_url\": \"assets/images/tasinmaKontrolLis/resim2.jpg\"}]}', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `welcomes`
--

CREATE TABLE `welcomes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `welcomes`
--

INSERT INTO `welcomes` (`id`, `data`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '{\"img_url\": \"assets/images/welcome/hero.jpg\"}', NULL, NULL, NULL);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `about_us_inners`
--
ALTER TABLE `about_us_inners`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `contact_forms`
--
ALTER TABLE `contact_forms`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `contact_us_inners`
--
ALTER TABLE `contact_us_inners`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `counters`
--
ALTER TABLE `counters`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `deniz_yolu_tasimaciligis`
--
ALTER TABLE `deniz_yolu_tasimaciligis`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `depolamas`
--
ALTER TABLE `depolamas`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Tablo için indeksler `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `features_cards`
--
ALTER TABLE `features_cards`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `footers`
--
ALTER TABLE `footers`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `galeris`
--
ALTER TABLE `galeris`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `general_information`
--
ALTER TABLE `general_information`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `gumruk_isleri_teslimats`
--
ALTER TABLE `gumruk_isleri_teslimats`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `hava_yolu_tasimaciligis`
--
ALTER TABLE `hava_yolu_tasimaciligis`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `headers`
--
ALTER TABLE `headers`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `kara_yolu_tasimaciligis`
--
ALTER TABLE `kara_yolu_tasimaciligis`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Tablo için indeksler `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Tablo için indeksler `planlama_hazirliks`
--
ALTER TABLE `planlama_hazirliks`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `references`
--
ALTER TABLE `references`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `tasima_hizmetlerimizs`
--
ALTER TABLE `tasima_hizmetlerimizs`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `tasinma_kontrol_listesis`
--
ALTER TABLE `tasinma_kontrol_listesis`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Tablo için indeksler `welcomes`
--
ALTER TABLE `welcomes`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `about_us`
--
ALTER TABLE `about_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `about_us_inners`
--
ALTER TABLE `about_us_inners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `contact_forms`
--
ALTER TABLE `contact_forms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `contact_us_inners`
--
ALTER TABLE `contact_us_inners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `counters`
--
ALTER TABLE `counters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `deniz_yolu_tasimaciligis`
--
ALTER TABLE `deniz_yolu_tasimaciligis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `depolamas`
--
ALTER TABLE `depolamas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `features`
--
ALTER TABLE `features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `features_cards`
--
ALTER TABLE `features_cards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `footers`
--
ALTER TABLE `footers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `galeris`
--
ALTER TABLE `galeris`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `general_information`
--
ALTER TABLE `general_information`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `gumruk_isleri_teslimats`
--
ALTER TABLE `gumruk_isleri_teslimats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `hava_yolu_tasimaciligis`
--
ALTER TABLE `hava_yolu_tasimaciligis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `headers`
--
ALTER TABLE `headers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `kara_yolu_tasimaciligis`
--
ALTER TABLE `kara_yolu_tasimaciligis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Tablo için AUTO_INCREMENT değeri `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `planlama_hazirliks`
--
ALTER TABLE `planlama_hazirliks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `references`
--
ALTER TABLE `references`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `tasima_hizmetlerimizs`
--
ALTER TABLE `tasima_hizmetlerimizs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `tasinma_kontrol_listesis`
--
ALTER TABLE `tasinma_kontrol_listesis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `welcomes`
--
ALTER TABLE `welcomes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
