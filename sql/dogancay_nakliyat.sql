-- --------------------------------------------------------
-- Sunucu:                       localhost
-- Sunucu sürümü:                8.0.30 - MySQL Community Server - GPL
-- Sunucu İşletim Sistemi:       Win64
-- HeidiSQL Sürüm:               10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- dogancay_nakliyat için veritabanı yapısı dökülüyor
CREATE DATABASE IF NOT EXISTS `dogancay_test` /*!40100 DEFAULT CHARACTER SET utf16 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `dogancay_test`;

-- tablo yapısı dökülüyor dogancay_nakliyat.blogs
CREATE TABLE IF NOT EXISTS `blogs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `data` json DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- dogancay_nakliyat.blogs: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
INSERT INTO `blogs` (`id`, `data`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, '{"en": {"data": [{"url": "", "text": "Bu nakliyat türü, ülkeler arasında malların ve hizmetlerin taşınmasını sağlar.Uluslararası taşıma, ulaşım altyapısının gelişmesini teşvik edebilir.", "title": "Uluslararası Taşıma", "img_url": "assets/images/697e8a2cb443195f7ae041e8f145b63a.jpg"}, {"url": "", "text": "Bu hazırlık aşamasının tam ve doğru yapılması taşınma esnasında oluşabilecek birçok sorun ve riskleri daha oluşmadan ortadan kaldırır", "title": "Planlama Ve Hazırlık", "img_url": "assets/images/95da5559f040ee348a90d622cec2411c.jpg"}, {"url": "", "text": "Taşıma kontrol listesi, bir malın veya yükün bir noktadan diğerine taşınması sürecinde yapılması gereken adımları ve kontrolleri belirten önemli bir araçtır.", "title": "Taşınma Kontrol Listesi", "img_url": "assets/images/fa5fb1df31def4bde86af615848e6296.jpg"}, {"url": "", "text": "Bu hizmeti deniz, hava, ve kara yoluyla yapılan taşımacılık ile paketleme, self-storage ve akıllı depolama hizmetleri dahil olarak veriyoruz.Farklı ülkeler, doğal kaynaklarını ve üretim yeteneklerini paylaşarak daha verimli bir şekilde kullanabilirler", "title": "Uluslararası Taşıma Hizmetimiz", "img_url": "assets/images/fd7de9eaadf0cf6950a9858a1b6b4723.jpg"}, {"url": "", "text": "Karayolu ile ev ve ofis taşıma; ülke içerisindeki taşınma adresleri, kara yoluyla gidilmesi daha uygun ve yakın olan ülkeler ve Avrupa Ülkelerine yapılacak olan taşıma yerleri için en çok tercih edilen taşıma yöntemidir.", "title": "Karayolu Taşımacılığı", "img_url": "assets/images/7a3573780882bd1d004511a8106b82dd.jpg"}, {"url": "", "text": "Hava yoluyla yapılan uluslararası ev ve ofis taşıma işlemi diğer taşıma metotlarına göre en hızlı taşıma yöntemidir. Bunula birlikte bu yöntemin diğerlerine göre en pahalı taşıma şekli olduğunu unutmamanız gerekir.", "title": "Havayolu Taşımacılığı", "img_url": "assets/images/0854328c83c346709c430756173de697.jpg"}, {"url": "", "text": "Deniz yoluyla yapılan uluslararası ev ve ofis taşımacılığı birçok açıdan mantıklı bir çözümdür fakat eşyalarınız varış süresinin biraz zaman alacağını hesaba katmanız gerekir.", "title": "Denizyolu Taşımacılığı", "img_url": "assets/images/d6b1871dd200e97b3aa7129a788a2e20.jpg"}, {"url": "", "text": "Eşyalarınızı en iyi şekilde ve ihtiyaçlarınıza göre depolamak için iki farkı depolama hizmeti sunuyoruz. Bunlar Akıllı depo/Self Storage ve Akıllı Depo/Taşınabilir Depo hizmetleridir.", "title": "Uluslararası Depolama", "img_url": "assets/images/cad5bdba44d2392ab82ed8bead1f33d7.jpg"}, {"url": "", "text": "Gümrük işlemleri hem eski evinizin bulunduğu ülkede hem de yeni evinizin bulunduğu ülkede yapılır. Bu konuda planlama ve hazırlık safhasında hangi evrakların hazırlanması", "title": "Gümrük İşleri Ve Teslimat", "img_url": "assets/images/0a3b80e7fb46d1d0738ca83814163c33.jpg"}], "text": "Müşteri memnuniyetini en üst düzeyde tutarak, uzman ekibimiz ve modern araç filomuzla nakliyat ihtiyaçlarınızı en iyi şekilde karşılıyoruz. Değerli eşyalarınızın güvenli ve sorunsuz bir şekilde taşınmasını sağlamak için titizlikle çalışıyoruz.", "title": "Profesyonel Nakliyat Çözümleri Sunuyoruz", "btn_text": "More"}, "ge": {"data": [{"url": "", "text": "Bu nakliyat türü, ülkeler arasında malların ve hizmetlerin taşınmasını sağlar.Uluslararası taşıma, ulaşım altyapısının gelişmesini teşvik edebilir.", "title": "Uluslararası Taşıma", "img_url": "assets/images/697e8a2cb443195f7ae041e8f145b63a.jpg"}, {"url": "", "text": "Bu hazırlık aşamasının tam ve doğru yapılması taşınma esnasında oluşabilecek birçok sorun ve riskleri daha oluşmadan ortadan kaldırır", "title": "Planlama Ve Hazırlık", "img_url": "assets/images/95da5559f040ee348a90d622cec2411c.jpg"}, {"url": "", "text": "Taşıma kontrol listesi, bir malın veya yükün bir noktadan diğerine taşınması sürecinde yapılması gereken adımları ve kontrolleri belirten önemli bir araçtır.", "title": "Taşınma Kontrol Listesi", "img_url": "assets/images/fa5fb1df31def4bde86af615848e6296.jpg"}, {"url": "", "text": "Bu hizmeti deniz, hava, ve kara yoluyla yapılan taşımacılık ile paketleme, self-storage ve akıllı depolama hizmetleri dahil olarak veriyoruz.Farklı ülkeler, doğal kaynaklarını ve üretim yeteneklerini paylaşarak daha verimli bir şekilde kullanabilirler", "title": "Uluslararası Taşıma Hizmetimiz", "img_url": "assets/images/fd7de9eaadf0cf6950a9858a1b6b4723.jpg"}, {"url": "", "text": "Karayolu ile ev ve ofis taşıma; ülke içerisindeki taşınma adresleri, kara yoluyla gidilmesi daha uygun ve yakın olan ülkeler ve Avrupa Ülkelerine yapılacak olan taşıma yerleri için en çok tercih edilen taşıma yöntemidir.", "title": "Karayolu Taşımacılığı", "img_url": "assets/images/7a3573780882bd1d004511a8106b82dd.jpg"}, {"url": "", "text": "Hava yoluyla yapılan uluslararası ev ve ofis taşıma işlemi diğer taşıma metotlarına göre en hızlı taşıma yöntemidir. Bunula birlikte bu yöntemin diğerlerine göre en pahalı taşıma şekli olduğunu unutmamanız gerekir.", "title": "Havayolu Taşımacılığı", "img_url": "assets/images/0854328c83c346709c430756173de697.jpg"}, {"url": "", "text": "Deniz yoluyla yapılan uluslararası ev ve ofis taşımacılığı birçok açıdan mantıklı bir çözümdür fakat eşyalarınız varış süresinin biraz zaman alacağını hesaba katmanız gerekir.", "title": "Denizyolu Taşımacılığı", "img_url": "assets/images/d6b1871dd200e97b3aa7129a788a2e20.jpg"}, {"url": "", "text": "Eşyalarınızı en iyi şekilde ve ihtiyaçlarınıza göre depolamak için iki farkı depolama hizmeti sunuyoruz. Bunlar Akıllı depo/Self Storage ve Akıllı Depo/Taşınabilir Depo hizmetleridir.", "title": "Uluslararası Depolama", "img_url": "assets/images/cad5bdba44d2392ab82ed8bead1f33d7.jpg"}, {"url": "", "text": "Gümrük işlemleri hem eski evinizin bulunduğu ülkede hem de yeni evinizin bulunduğu ülkede yapılır. Bu konuda planlama ve hazırlık safhasında hangi evrakların hazırlanması", "title": "Gümrük İşleri Ve Teslimat", "img_url": "assets/images/0a3b80e7fb46d1d0738ca83814163c33.jpg"}], "text": "Müşteri memnuniyetini en üst düzeyde tutarak, uzman ekibimiz ve modern araç filomuzla nakliyat ihtiyaçlarınızı en iyi şekilde karşılıyoruz. Değerli eşyalarınızın güvenli ve sorunsuz bir şekilde taşınmasını sağlamak için titizlikle çalışıyoruz.", "title": "Profesyonel Nakliyat Çözümleri Sunuyoruz", "btn_text": "Daha Fazla Almanca"}, "tr": {"data": [{"url": "", "text": "Bu nakliyat türü, ülkeler arasında malların ve hizmetlerin taşınmasını sağlar.Uluslararası taşıma, ulaşım altyapısının gelişmesini teşvik edebilir.", "title": "Uluslararası Taşıma", "img_url": "assets/images/697e8a2cb443195f7ae041e8f145b63a.jpg"}, {"url": "", "text": "Bu hazırlık aşamasının tam ve doğru yapılması taşınma esnasında oluşabilecek birçok sorun ve riskleri daha oluşmadan ortadan kaldırır", "title": "Planlama Ve Hazırlık", "img_url": "assets/images/95da5559f040ee348a90d622cec2411c.jpg"}, {"url": "", "text": "Taşıma kontrol listesi, bir malın veya yükün bir noktadan diğerine taşınması sürecinde yapılması gereken adımları ve kontrolleri belirten önemli bir araçtır.", "title": "Taşınma Kontrol Listesi", "img_url": "assets/images/fa5fb1df31def4bde86af615848e6296.jpg"}, {"url": "", "text": "Bu hizmeti deniz, hava, ve kara yoluyla yapılan taşımacılık ile paketleme, self-storage ve akıllı depolama hizmetleri dahil olarak veriyoruz.Farklı ülkeler, doğal kaynaklarını ve üretim yeteneklerini paylaşarak daha verimli bir şekilde kullanabilirler", "title": "Uluslararası Taşıma Hizmetimiz", "img_url": "assets/images/fd7de9eaadf0cf6950a9858a1b6b4723.jpg"}, {"url": "", "text": "Karayolu ile ev ve ofis taşıma; ülke içerisindeki taşınma adresleri, kara yoluyla gidilmesi daha uygun ve yakın olan ülkeler ve Avrupa Ülkelerine yapılacak olan taşıma yerleri için en çok tercih edilen taşıma yöntemidir.", "title": "Karayolu Taşımacılığı", "img_url": "assets/images/7a3573780882bd1d004511a8106b82dd.jpg"}, {"url": "", "text": "Hava yoluyla yapılan uluslararası ev ve ofis taşıma işlemi diğer taşıma metotlarına göre en hızlı taşıma yöntemidir. Bunula birlikte bu yöntemin diğerlerine göre en pahalı taşıma şekli olduğunu unutmamanız gerekir.", "title": "Havayolu Taşımacılığı", "img_url": "assets/images/0854328c83c346709c430756173de697.jpg"}, {"url": "", "text": "Deniz yoluyla yapılan uluslararası ev ve ofis taşımacılığı birçok açıdan mantıklı bir çözümdür fakat eşyalarınız varış süresinin biraz zaman alacağını hesaba katmanız gerekir.", "title": "Denizyolu Taşımacılığı", "img_url": "assets/images/d6b1871dd200e97b3aa7129a788a2e20.jpg"}, {"url": "", "text": "Eşyalarınızı en iyi şekilde ve ihtiyaçlarınıza göre depolamak için iki farkı depolama hizmeti sunuyoruz. Bunlar Akıllı depo/Self Storage ve Akıllı Depo/Taşınabilir Depo hizmetleridir.", "title": "Uluslararası Depolama", "img_url": "assets/images/cad5bdba44d2392ab82ed8bead1f33d7.jpg"}, {"url": "", "text": "Gümrük işlemleri hem eski evinizin bulunduğu ülkede hem de yeni evinizin bulunduğu ülkede yapılır. Bu konuda planlama ve hazırlık safhasında hangi evrakların hazırlanması", "title": "Gümrük İşleri Ve Teslimat", "img_url": "assets/images/0a3b80e7fb46d1d0738ca83814163c33.jpg"}], "text": "Müşteri memnuniyetini en üst düzeyde tutarak, uzman ekibimiz ve modern araç filomuzla nakliyat ihtiyaçlarınızı en iyi şekilde karşılıyoruz. Değerli eşyalarınızın güvenli ve sorunsuz bir şekilde taşınmasını sağlamak için titizlikle çalışıyoruz.", "title": "Profesyonel Nakliyat Çözümleri Sunuyoruz", "btn_text": "Daha Fazla"}}', NULL, NULL, NULL);
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;

-- tablo yapısı dökülüyor dogancay_nakliyat.contacts
CREATE TABLE IF NOT EXISTS `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `data` json DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- dogancay_nakliyat.contacts: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` (`id`, `data`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, '{"en": {"title": "House to House Transportation Call Center", "btn_text": "Send Message", "info_names": {"faks": "Fax: ", "adres": "Address: ", "email": "Mail: ", "telefon": "Phone: "}, "place_holder": {"name": "Name - surname", "email": "E-Mail Address", "message": "Message"}}, "ge": {"title": "Evden Eve Nakliyat Çağrı Merkezi Almanca", "btn_text": "Mesaj Gönder Almanca", "info_names": {"faks": "Faks GE: ", "adres": "Adres GE: ", "email": "Mail GE: ", "telefon": "Telefon GE: "}, "place_holder": {"name": "Ad - Soyad", "email": "E-Mail Adresi", "message": "Mesaj"}}, "tr": {"title": "Evden Eve Nakliyat Çağrı Merkezi", "btn_text": "Mesaj Gönder", "info_names": {"faks": "Faks: ", "adres": "Adres: ", "email": "Mail: ", "telefon": "Telefon: "}, "place_holder": {"name": "Ad - Soyad", "email": "E-Mail Adresi", "message": "Mesaj"}}}', NULL, NULL, NULL);
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;

-- tablo yapısı dökülüyor dogancay_nakliyat.contact_forms
CREATE TABLE IF NOT EXISTS `contact_forms` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb4_unicode_ci,
  `email` text COLLATE utf8mb4_unicode_ci,
  `message` text COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- dogancay_nakliyat.contact_forms: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `contact_forms` DISABLE KEYS */;
INSERT INTO `contact_forms` (`id`, `name`, `email`, `message`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, 'asdsad', 'goksel.koc@invekor.com', 'asda', NULL, '2023-09-12 13:05:26', '2023-09-12 13:05:26');
/*!40000 ALTER TABLE `contact_forms` ENABLE KEYS */;

-- tablo yapısı dökülüyor dogancay_nakliyat.counters
CREATE TABLE IF NOT EXISTS `counters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `data` json DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- dogancay_nakliyat.counters: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `counters` DISABLE KEYS */;
INSERT INTO `counters` (`id`, `data`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, '{"en": [{"name": "Projects", "count": "126"}, {"name": "Feedback", "count": "63"}, {"name": "Awards Won", "count": "18"}, {"name": "Countries", "count": "27"}], "ge": [{"name": "Projeler AL", "count": "126"}, {"name": "Geri Dönüş AL", "count": "63"}, {"name": "Kazanılan Ödüller AL", "count": "18"}, {"name": "Ülkeler AL", "count": "27"}], "tr": [{"name": "Projeler", "count": "126"}, {"name": "Geri Dönüş", "count": "63"}, {"name": "Kazanılan Ödüller", "count": "18"}, {"name": "Ülkeler", "count": "27"}]}', NULL, NULL, NULL);
/*!40000 ALTER TABLE `counters` ENABLE KEYS */;

-- tablo yapısı dökülüyor dogancay_nakliyat.deniz_yolu_tasimaciligis
CREATE TABLE IF NOT EXISTS `deniz_yolu_tasimaciligis` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `data` json DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- dogancay_nakliyat.deniz_yolu_tasimaciligis: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `deniz_yolu_tasimaciligis` DISABLE KEYS */;
INSERT INTO `deniz_yolu_tasimaciligis` (`id`, `data`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, '{"en": {"data": [{"text": "Cargoes are placed in containers of standard sizes. In this way, cargo can be transported on ships in an orderly manner. Container transportation provides fast loading and unloading.", "title": "Container Transportation:"}, {"text": "The selected containers can be delivered to your door to store your belongings. If you choose a special container, containers with dimensions of 20 feet, 40 feet, 40 High Cube feet are used depending on the size of your belongings.", "title": "Fuel Container Load:"}, {"text": "In this method, called \\"Roll-on/Roll-off\\", vehicles and other cargo can be easily loaded or unloaded onto the ship. This method is especially used in vehicle transportation.", "title": "Roro Transportation:"}, {"text": "If you have fewer items or want it to be less costly, you can use shared containers.", "title": "LCL-Less Container Load:"}], "hero": "assets/images/hdenizyolu.jpg", "title": "MARITIME TRANSPORT", "img_url": "assets/images/denizyolutasimaciligi.jpeg"}, "ge": {"data": [{"text": "Yükler, standart boyutlardaki konteynerlara yerleştirilir. Bu şekilde yükler, gemilerde düzenli bir şekilde taşınabilir. Konteyner taşımacılığı, hızlı yükleme ve boşaltma imkanı sağlar.", "title": "Konteyner Taşımacılığı Al:"}, {"text": "Seçilen konteynırlar eşyalarınızın konması için kapınıza kadar gelebilir. Eğer özel konteynır seçerseniz, eşyalarınızın büyüklüğüne göre 20 feet, 40 feet, 40 High Cube feet ölçülerindeki konteynırlar kullanılmaktadır.", "title": "Fuel Container Load Al:"}, {"text": "\\"Roll-on/Roll-off\\" olarak adlandırılan bu yöntemde, araçlar ve diğer yükler gemiye rahatça sürülebilir veya indirilebilir. Bu yöntem özellikle taşıt taşımacılığında kullanılır.", "title": "Roro Taşımacılığı Al:"}, {"text": "Eğer daha az miktarda eşyalarınız bulunuyor veya daha az maliyetli olsun diyorsanız bu durumda paylaşımlı konteynırlardan yararlanabilirsiniz.", "title": "LCL-Less Container Load Al:"}], "hero": "assets/images/hdenizyolu.jpg", "title": "DENİZYOLU TAŞIMACILIĞI Almanca", "img_url": "assets/images/denizyolutasimaciligi.jpeg"}, "tr": {"data": [{"text": "Yükler, standart boyutlardaki konteynerlara yerleştirilir. Bu şekilde yükler, gemilerde düzenli bir şekilde taşınabilir. Konteyner taşımacılığı, hızlı yükleme ve boşaltma imkanı sağlar.", "title": "Konteyner Taşımacılığı:"}, {"text": "Seçilen konteynırlar eşyalarınızın konması için kapınıza kadar gelebilir. Eğer özel konteynır seçerseniz, eşyalarınızın büyüklüğüne göre 20 feet, 40 feet, 40 High Cube feet ölçülerindeki konteynırlar kullanılmaktadır.", "title": "Fuel Container Load:"}, {"text": "\\"Roll-on/Roll-off\\" olarak adlandırılan bu yöntemde, araçlar ve diğer yükler gemiye rahatça sürülebilir veya indirilebilir. Bu yöntem özellikle taşıt taşımacılığında kullanılır.", "title": "Roro Taşımacılığı:"}, {"text": "Eğer daha az miktarda eşyalarınız bulunuyor veya daha az maliyetli olsun diyorsanız bu durumda paylaşımlı konteynırlardan yararlanabilirsiniz.", "title": "LCL-Less Container Load:"}], "hero": "assets/images/hdenizyolu.jpg", "title": "DENİZYOLU TAŞIMACILIĞI", "img_url": "assets/images/denizyolutasimaciligi.jpeg"}}', NULL, NULL, NULL);
/*!40000 ALTER TABLE `deniz_yolu_tasimaciligis` ENABLE KEYS */;

-- tablo yapısı dökülüyor dogancay_nakliyat.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- dogancay_nakliyat.failed_jobs: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- tablo yapısı dökülüyor dogancay_nakliyat.features
CREATE TABLE IF NOT EXISTS `features` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `data` json DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- dogancay_nakliyat.features: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `features` DISABLE KEYS */;
INSERT INTO `features` (`id`, `data`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, '{"en": [{"text": "Başka bir eve taşınmak insanların şahsi ve toplumsal hayatlarında karşılaştığı stres dolu bir süreçtir.  Uluslararası taşınma ise bu stres seviyesini çok yukarılara çıkarmaktadır. (Yapılan bir araştırmaya göre bu seviye boşanma sürecinden bile fazladır). Bu yüzden Doğançay Nakliyat olarak hedefimiz sizin gönül rahatlığıyla taşınmanızı sağlayacak bir müşteri memnuniyeti sağlamaktır.", "title": "International Shipping", "img_url": "assets/images/noun-network-2528735.png", "position": "L"}, {"text": "Coğrafi sınırlar gibi engellere takılmadan ülke içinde herhangi bir noktadan dünyanın birçok ülkesine ev ve ofis taşıma servisi sunmaktadır. Paketleme, taşıma, gümrük muayene işlemleri, depolama, eşya yerleşimi ve ilgili diğer taşınma sürecinin tamamında bir bütün olarak ele çalıp çözüm sunmaktadır.", "title": "Wide Possibilities", "img_url": "assets/images/noun-truck-1009383.png", "position": "R"}], "ge": [{"text": "Başka bir eve taşınmak insanların şahsi ve toplumsal hayatlarında karşılaştığı stres dolu bir süreçtir.  Uluslararası taşınma ise bu stres seviyesini çok yukarılara çıkarmaktadır. (Yapılan bir araştırmaya göre bu seviye boşanma sürecinden bile fazladır). Bu yüzden Doğançay Nakliyat olarak hedefimiz sizin gönül rahatlığıyla taşınmanızı sağlayacak bir müşteri memnuniyeti sağlamaktır.", "title": "Uluslararası Nakliyat ALMANCA", "img_url": "assets/images/noun-network-2528735.png", "position": "L"}, {"text": "Coğrafi sınırlar gibi engellere takılmadan ülke içinde herhangi bir noktadan dünyanın birçok ülkesine ev ve ofis taşıma servisi sunmaktadır. Paketleme, taşıma, gümrük muayene işlemleri, depolama, eşya yerleşimi ve ilgili diğer taşınma sürecinin tamamında bir bütün olarak ele çalıp çözüm sunmaktadır.", "title": "Geniş Olanaklar ALMANCA", "img_url": "assets/images/noun-truck-1009383.png", "position": "R"}], "tr": [{"text": "Başka bir eve taşınmak insanların şahsi ve toplumsal hayatlarında karşılaştığı stres dolu bir süreçtir.  Uluslararası taşınma ise bu stres seviyesini çok yukarılara çıkarmaktadır. (Yapılan bir araştırmaya göre bu seviye boşanma sürecinden bile fazladır). Bu yüzden Doğançay Nakliyat olarak hedefimiz sizin gönül rahatlığıyla taşınmanızı sağlayacak bir müşteri memnuniyeti sağlamaktır.", "title": "Uluslararası Nakliyat", "img_url": "assets/images/noun-network-2528735.png", "position": "L"}, {"text": "Coğrafi sınırlar gibi engellere takılmadan ülke içinde herhangi bir noktadan dünyanın birçok ülkesine ev ve ofis taşıma servisi sunmaktadır. Paketleme, taşıma, gümrük muayene işlemleri, depolama, eşya yerleşimi ve ilgili diğer taşınma sürecinin tamamında bir bütün olarak ele çalıp çözüm sunmaktadır.", "title": "Geniş Olanaklar", "img_url": "assets/images/noun-truck-1009383.png", "position": "R"}]}', NULL, NULL, NULL);
/*!40000 ALTER TABLE `features` ENABLE KEYS */;

-- tablo yapısı dökülüyor dogancay_nakliyat.features_cards
CREATE TABLE IF NOT EXISTS `features_cards` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `data` json DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- dogancay_nakliyat.features_cards: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `features_cards` DISABLE KEYS */;
INSERT INTO `features_cards` (`id`, `data`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, '{"en": [{"text": "Uluslararası hizmetler sunan işletmeler, yerel rekabetin ötesine geçme ve kendilerini öne çıkarma fırsatına sahiptir.", "title": "Superiority", "img_url": "assets/images/featured-item-01.png"}, {"text": "Yerel pazarda büyüme sınırlı olabilir, ancak uluslararası pazarlar genişleme için daha fazla fırsat suna", "title": "Growth", "img_url": "assets/images/reassembly_icon_1.png"}, {"text": "Sizi yalnızca yerel pazarla sınırlamaz. Farklı coğrafyalardaki müşterilere ulaşma fırsatı sunar.", "title": "International", "img_url": "assets/images/reassembly_icon_2.png"}], "ge": [{"text": "Uluslararası hizmetler sunan işletmeler, yerel rekabetin ötesine geçme ve kendilerini öne çıkarma fırsatına sahiptir.", "title": "Überlegenheit", "img_url": "assets/images/featured-item-01.png"}, {"text": "Yerel pazarda büyüme sınırlı olabilir, ancak uluslararası pazarlar genişleme için daha fazla fırsat suna", "title": "Wachstum", "img_url": "assets/images/reassembly_icon_1.png"}, {"text": "Sizi yalnızca yerel pazarla sınırlamaz. Farklı coğrafyalardaki müşterilere ulaşma fırsatı sunar.", "title": "International", "img_url": "assets/images/reassembly_icon_2.png"}], "tr": [{"text": "Uluslararası hizmetler sunan işletmeler, yerel rekabetin ötesine geçme ve kendilerini öne çıkarma fırsatına sahiptir.", "title": "Üstünlük", "img_url": "assets/images/featured-item-01.png"}, {"text": "Yerel pazarda büyüme sınırlı olabilir, ancak uluslararası pazarlar genişleme için daha fazla fırsat suna", "title": "Büyüme", "img_url": "assets/images/reassembly_icon_1.png"}, {"text": "Sizi yalnızca yerel pazarla sınırlamaz. Farklı coğrafyalardaki müşterilere ulaşma fırsatı sunar.", "title": "Uluslararası", "img_url": "assets/images/reassembly_icon_2.png"}]}', NULL, NULL, NULL);
/*!40000 ALTER TABLE `features_cards` ENABLE KEYS */;

-- tablo yapısı dökülüyor dogancay_nakliyat.footers
CREATE TABLE IF NOT EXISTS `footers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `data` json DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- dogancay_nakliyat.footers: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `footers` DISABLE KEYS */;
INSERT INTO `footers` (`id`, `data`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, '{"data": [{"link": "#", "class": "fa fa-facebook"}, {"link": "#", "class": "fa fa-twitter"}, {"link": "#", "class": "fa fa-linkedin"}, {"link": "#", "class": "fa fa-rss"}, {"link": "#", "class": "fa fa-dribbble"}]}', NULL, NULL, NULL);
/*!40000 ALTER TABLE `footers` ENABLE KEYS */;

-- tablo yapısı dökülüyor dogancay_nakliyat.general_information
CREATE TABLE IF NOT EXISTS `general_information` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `data` json DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- dogancay_nakliyat.general_information: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `general_information` DISABLE KEYS */;
INSERT INTO `general_information` (`id`, `data`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, '{"en": {"faks": "(312) 222-6844", "adres": "Bahçekapı Mahallesi, Söğütözü Caddesi, No:20 Etimesgut / Ankara", "email": "info@dogancay.com.tr", "company": "DOĞANÇAY", "telefon": "444-1980"}, "ge": {"faks": "(312) 222-6844", "adres": "Bahçekapı Mahallesi, Söğütözü Caddesi, No:20 Etimesgut / Ankara", "email": "info@dogancay.com.tr", "company": "DOĞANÇAY", "telefon": "444-1980"}, "tr": {"faks": "(312) 222-6844", "adres": "Bahçekapı Mahallesi, Söğütözü Caddesi, No:20 Etimesgut / Ankara", "email": "info@dogancay.com.tr", "company": "DOĞANÇAY", "telefon": "444-1980"}}', NULL, NULL, NULL);
/*!40000 ALTER TABLE `general_information` ENABLE KEYS */;

-- tablo yapısı dökülüyor dogancay_nakliyat.gumruk_isleri_teslimats
CREATE TABLE IF NOT EXISTS `gumruk_isleri_teslimats` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `data` json DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- dogancay_nakliyat.gumruk_isleri_teslimats: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `gumruk_isleri_teslimats` DISABLE KEYS */;
INSERT INTO `gumruk_isleri_teslimats` (`id`, `data`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, '{"en": {"data": [{"text": "While an exporting country aims to sell the goods it produces or the services it provides to other countries, the importing country aims to meet its own needs by purchasing goods or services from other countries.", "title": "Export and Import:"}, {"text": "Delivery is the process of delivering a good or service to a person or organization. The delivery process includes stages such as shipping the product, shipping method selection, traceability, and customs clearance.", "title": "Delivery:"}, {"text": "This declaration includes the type of goods, value, quantity and other relevant information. The customs declaration provides details of the goods and the transaction to the customs authorities.", "title": "Customs declaration:"}, {"text": "When bringing goods or services into a country, customs duties or fees may be paid. These taxes or fees may vary depending on the type of product imported, its value, and the country\'s policies.", "title": "Customs Duties and Fees:"}], "hero": "assets/images/eler.jpg", "title": "CUSTOMS AND DELIVERY", "img_url": "assets/images/gumrukisleriteslimat.jpeg"}, "ge": {"data": [{"text": "İhracat yapan bir ülke, ürettiği malları veya sağladığı hizmetleri diğer ülkelere satma amacı güderken, ithalat yapan ülke, diğer ülkelerden mal veya hizmet alarak kendi ihtiyaçlarını karşılamayı amaçlar.", "title": "İhracat ve İthalat Al:"}, {"text": "Teslimat, bir mal veya hizmetin bir kişiye veya kuruluşa ulaştırılması işlemidir. Teslimat süreci, ürünün sevk edilmesi, nakliye yöntemi seçimi, takip edilebilirlik, gümrük işlemleri gibi aşamaları içerir.", "title": "Teslimat Al:"}, {"text": "Bu beyanname, malın türü, değeri, miktarı ve diğer ilgili bilgileri içerir. Gümrük beyannamesi, gümrük yetkililerine malın ve işlemin detaylarını sunar.", "title": "Gümrük Beyannamesi Al:"}, {"text": "Bir ülkeye mal veya hizmet getirilirken, gümrük vergileri veya ücretleri ödenebilir. Bu vergiler veya ücretler, ithal edilen ürünün türüne, değerine ve ülkenin politikalarına göre değişebilir.", "title": "Gümrük Vergileri ve Ücretleri Al:"}], "hero": "assets/images/eler.jpg", "title": "GÜMRÜK İŞLERİ VE TESLİMAT Almanca", "img_url": "assets/images/gumrukisleriteslimat.jpeg"}, "tr": {"data": [{"text": "İhracat yapan bir ülke, ürettiği malları veya sağladığı hizmetleri diğer ülkelere satma amacı güderken, ithalat yapan ülke, diğer ülkelerden mal veya hizmet alarak kendi ihtiyaçlarını karşılamayı amaçlar.", "title": "İhracat ve İthalat:"}, {"text": "Teslimat, bir mal veya hizmetin bir kişiye veya kuruluşa ulaştırılması işlemidir. Teslimat süreci, ürünün sevk edilmesi, nakliye yöntemi seçimi, takip edilebilirlik, gümrük işlemleri gibi aşamaları içerir.", "title": "Teslimat:"}, {"text": "Bu beyanname, malın türü, değeri, miktarı ve diğer ilgili bilgileri içerir. Gümrük beyannamesi, gümrük yetkililerine malın ve işlemin detaylarını sunar.", "title": "Gümrük Beyannamesi:"}, {"text": "Bir ülkeye mal veya hizmet getirilirken, gümrük vergileri veya ücretleri ödenebilir. Bu vergiler veya ücretler, ithal edilen ürünün türüne, değerine ve ülkenin politikalarına göre değişebilir.", "title": "Gümrük Vergileri ve Ücretleri:"}], "hero": "assets/images/eler.jpg", "title": "GÜMRÜK İŞLERİ VE TESLİMAT", "img_url": "assets/images/gumrukisleriteslimat.jpeg"}}', NULL, NULL, NULL);
/*!40000 ALTER TABLE `gumruk_isleri_teslimats` ENABLE KEYS */;

-- tablo yapısı dökülüyor dogancay_nakliyat.hava_yolu_tasimaciligis
CREATE TABLE IF NOT EXISTS `hava_yolu_tasimaciligis` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `data` json DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- dogancay_nakliyat.hava_yolu_tasimaciligis: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `hava_yolu_tasimaciligis` DISABLE KEYS */;
INSERT INTO `hava_yolu_tasimaciligis` (`id`, `data`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, '{"en": {"data": [{"text": "Airline provides much faster delivery than other modes of transport. It is especially preferred for urgent or time-sensitive loads.", "title": "Fast Delivery:"}, {"text": "When transporting valuable or sensitive cargo (e.g. medicines, medical devices, electronic parts) by air, it is preferred because it provides fast delivery and safe transportation.", "title": "Sensitive and Valuable Cargoes:"}, {"text": "The airline provides access to many airports around the world. This is a great advantage in terms of international trade and fast delivery.", "title": "Global Reach:"}, {"text": "Air transportation generally allows for good tracking of cargo. It is easier to track shipment movements and know estimated delivery times.", "title": "Traceability:"}], "hero": "assets/images/hhavayolu.jpg", "title": "AIRWAYS TRANSPORTING", "img_url": "assets/images/havayolutasimaciligi.jpeg"}, "ge": {"data": [{"text": "Havayolu, diğer taşıma modlarına göre çok daha hızlı teslimat sağlar. Özellikle acil veya zaman duyarlı yükler için tercih edilir.", "title": "Hızlı Teslimat:"}, {"text": "Değerli veya hassas yükler (örneğin ilaçlar, tıbbi cihazlar, elektronik parçalar) havayoluyla taşınırken, hızlı teslimat ve güvenli taşıma sağlaması nedeniyle tercih edilir.", "title": "Hassas ve Değerli Yükler:"}, {"text": "Havayolu, dünya genelinde birçok hava limanına erişim sağlar. Bu da uluslararası ticaret ve hızlı teslimat açısından büyük avantajdır.", "title": "Global Erişim:"}, {"text": "Havayolu taşımacılığı, yüklerin genellikle iyi bir şekilde takip edilmesine olanak tanır. Gönderi hareketlerini izlemek ve tahmini teslimat zamanlarını bilmek daha kolaydır.", "title": "Takip Edilebilirlik:"}], "hero": "assets/images/hhavayolu.jpg", "title": "HAVAYOLU TAŞIMACILIĞI Almanca", "img_url": "assets/images/havayolutasimaciligi.jpeg"}, "tr": {"data": [{"text": "Havayolu, diğer taşıma modlarına göre çok daha hızlı teslimat sağlar. Özellikle acil veya zaman duyarlı yükler için tercih edilir.", "title": "Hızlı Teslimat:"}, {"text": "Değerli veya hassas yükler (örneğin ilaçlar, tıbbi cihazlar, elektronik parçalar) havayoluyla taşınırken, hızlı teslimat ve güvenli taşıma sağlaması nedeniyle tercih edilir.", "title": "Hassas ve Değerli Yükler:"}, {"text": "Havayolu, dünya genelinde birçok hava limanına erişim sağlar. Bu da uluslararası ticaret ve hızlı teslimat açısından büyük avantajdır.", "title": "Global Erişim:"}, {"text": "Havayolu taşımacılığı, yüklerin genellikle iyi bir şekilde takip edilmesine olanak tanır. Gönderi hareketlerini izlemek ve tahmini teslimat zamanlarını bilmek daha kolaydır.", "title": "Takip Edilebilirlik:"}], "hero": "assets/images/hhavayolu.jpg", "title": "HAVAYOLU TAŞIMACILIĞI", "img_url": "assets/images/havayolutasimaciligi.jpeg"}}', NULL, NULL, NULL);
/*!40000 ALTER TABLE `hava_yolu_tasimaciligis` ENABLE KEYS */;

-- tablo yapısı dökülüyor dogancay_nakliyat.headers
CREATE TABLE IF NOT EXISTS `headers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `data` json DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- dogancay_nakliyat.headers: ~1 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `headers` DISABLE KEYS */;
INSERT INTO `headers` (`id`, `data`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, '{"en": [{"url": "home", "title": "Home", "subItems": null}, {"url": "#features", "title": "Abouts", "subItems": null}, {"url": "#testimonials", "title": "Services", "subItems": null}, {"url": null, "title": "International Shipping", "subItems": [{"url": "uluslararasi-nakliyat.index", "title": "Uluslararası Nakliyat"}, {"url": "planlama-hazirlik.index", "title": "Planlama Ve Hazırlık"}, {"url": "tasinma-kontrol-lis.index", "title": "Taşınma Kontrol Listesi"}, {"url": "uluslararasi-tasima.index", "title": "Uluslararası Taşıma"}, {"url": "karayolu-tasimaciligi.index", "title": "Karayolu Taşımacılığı"}, {"url": "havayolu-tasimaciligi.index", "title": "Havayolu Taşımacılığı"}, {"url": "denizyolu-tasimaciligi.index", "title": "Denizyolu Taşımacılığı"}, {"url": "uluslararasi-depolama.index", "title": "Uluslararası Depolama"}, {"url": "gumruk-isleri-tes.index", "title": "Gümrük İşleri Ve Teslimat"}]}, {"url": "#contact-us", "title": "İletişim", "subItems": null}], "ge": [{"url": "home", "title": "Anasayfa GE", "subItems": null}, {"url": "#features", "title": "Hakkımızda GE", "subItems": null}, {"url": "#testimonials", "title": "Hizmetlerimiz GE", "subItems": null}, {"url": null, "title": "Ulusararası Taşıma GE", "subItems": [{"url": "uluslararasi-nakliyat.index", "title": "Uluslararası Nakliyat"}, {"url": "planlama-hazirlik.index", "title": "Planlama Ve Hazırlık"}, {"url": "tasinma-kontrol-lis.index", "title": "Taşınma Kontrol Listesi"}, {"url": "uluslararasi-tasima.index", "title": "Uluslararası Taşıma"}, {"url": "karayolu-tasimaciligi.index", "title": "Karayolu Taşımacılığı"}, {"url": "havayolu-tasimaciligi.index", "title": "Havayolu Taşımacılığı"}, {"url": "denizyolu-tasimaciligi.index", "title": "Denizyolu Taşımacılığı"}, {"url": "uluslararasi-depolama.index", "title": "Uluslararası Depolama"}, {"url": "gumruk-isleri-tes.index", "title": "Gümrük İşleri Ve Teslimat"}]}, {"url": "#contact-us", "title": "İletişim GE", "subItems": null}], "tr": [{"url": "home", "title": "Anasayfa", "subItems": null}, {"url": "#features", "title": "Hakkımızda", "subItems": null}, {"url": "#testimonials", "title": "Hizmetlerimiz", "subItems": null}, {"url": null, "title": "Ulusararası Taşıma", "subItems": [{"url": "uluslararasi-nakliyat.index", "title": "Uluslararası Nakliyat"}, {"url": "planlama-hazirlik.index", "title": "Planlama Ve Hazırlık"}, {"url": "tasinma-kontrol-lis.index", "title": "Taşınma Kontrol Listesi"}, {"url": "uluslararasi-tasima.index", "title": "Uluslararası Taşıma"}, {"url": "karayolu-tasimaciligi.index", "title": "Karayolu Taşımacılığı"}, {"url": "havayolu-tasimaciligi.index", "title": "Havayolu Taşımacılığı"}, {"url": "denizyolu-tasimaciligi.index", "title": "Denizyolu Taşımacılığı"}, {"url": "uluslararasi-depolama.index", "title": "Uluslararası Depolama"}, {"url": "gumruk-isleri-tes.index", "title": "Gümrük İşleri Ve Teslimat"}]}, {"url": "#contact-us", "title": "İletişim", "subItems": null}], "logo": "assets/images/logo.png", "languages": {"en": [{"key": "tr", "name": "Turkish"}, {"key": "en", "name": "English"}, {"key": "ge", "name": "Germany"}], "ge": [{"key": "tr", "name": "Turkish Almanca"}, {"key": "en", "name": "English Almanca"}, {"key": "ge", "name": "Germany Almanca"}], "tr": [{"key": "tr", "name": "Türkçe"}, {"key": "en", "name": "İngilizce"}, {"key": "ge", "name": "Almanca"}]}}', NULL, NULL, NULL);
/*!40000 ALTER TABLE `headers` ENABLE KEYS */;

-- tablo yapısı dökülüyor dogancay_nakliyat.kara_yolu_tasimaciligis
CREATE TABLE IF NOT EXISTS `kara_yolu_tasimaciligis` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `data` json DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- dogancay_nakliyat.kara_yolu_tasimaciligis: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `kara_yolu_tasimaciligis` DISABLE KEYS */;
INSERT INTO `kara_yolu_tasimaciligis` (`id`, `data`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, '{"en": {"data": [{"text": "Thanks to technological developments, road transportation has become safer and more trackable with vehicle tracking systems, security cameras and other methods.", "title": "Security and Tracking:"}, {"text": "Manufacturers use highways to move products between distribution centers, warehouses and retail outlets.", "title": "Logistics Networks:"}, {"text": "Road transportation provides fast delivery for short and medium distance transportation. It is especially ideal for urgent and time-sensitive products.", "title": "Fast Delivery:"}, {"text": "Trucks, vans and other commercial vehicles are used to transport products to different points within the supply chain.", "title": "Commercial Transportation:"}], "hero": "assets/images/bg2.jpg", "title": "HIGHWAY TRANSPORTS", "img_url": "assets/images/karayolutasimaciligi.jpeg"}, "ge": {"data": [{"text": "Teknolojik gelişmeler sayesinde karayolu taşımacılığı, araç takip sistemleri, güvenlik kameraları ve diğer yöntemlerle daha güvenli ve izlenebilir hale gelmiştir.", "title": "Güvenlik ve Takip Al:"}, {"text": "Üreticiler, dağıtım merkezleri, depolar ve perakende satış noktaları arasındaki ürün hareketini sağlamak için kara yollarını kullanırlar.", "title": "Lojistik Ağları Al:"}, {"text": "Karayolu taşımacılığı, kısa ve orta mesafeli taşımalarda hızlı teslimat sağlar. Özellikle acil ve zaman-duyarlı ürünler için idealdir.", "title": "Hızlı Teslimat Al:"}, {"text": "Ürünlerin tedarik zinciri içindeki farklı noktalara taşınması için kamyonlar, kamyonetler ve diğer ticari araçlar kullanılır.", "title": "Ticari Taşımacılık Al:"}], "hero": "assets/images/bg2.jpg", "title": "KARAYOLU TAŞIMACILIĞI Almanca", "img_url": "assets/images/karayolutasimaciligi.jpeg"}, "tr": {"data": [{"text": "Teknolojik gelişmeler sayesinde karayolu taşımacılığı, araç takip sistemleri, güvenlik kameraları ve diğer yöntemlerle daha güvenli ve izlenebilir hale gelmiştir.", "title": "Güvenlik ve Takip:"}, {"text": "Üreticiler, dağıtım merkezleri, depolar ve perakende satış noktaları arasındaki ürün hareketini sağlamak için kara yollarını kullanırlar.", "title": "Lojistik Ağları:"}, {"text": "Karayolu taşımacılığı, kısa ve orta mesafeli taşımalarda hızlı teslimat sağlar. Özellikle acil ve zaman-duyarlı ürünler için idealdir.", "title": "Hızlı Teslimat:"}, {"text": "Ürünlerin tedarik zinciri içindeki farklı noktalara taşınması için kamyonlar, kamyonetler ve diğer ticari araçlar kullanılır.", "title": "Ticari Taşımacılık:"}], "hero": "assets/images/bg2.jpg", "title": "KARAYOLU TAŞIMACILIĞI", "img_url": "assets/images/karayolutasimaciligi.jpeg"}}', NULL, NULL, NULL);
/*!40000 ALTER TABLE `kara_yolu_tasimaciligis` ENABLE KEYS */;

-- tablo yapısı dökülüyor dogancay_nakliyat.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- dogancay_nakliyat.migrations: ~21 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
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
	(16, '2023_09_12_140316_create_uluslararasi_nakliyats_table', 11),
	(17, '2023_09_13_113032_create_planlama_hazirliks_table', 12),
	(18, '2023_09_13_140704_create_tasinma_kontrol_listesis_table', 13),
	(19, '2023_09_14_083530_create_uluslararasi_tasimas_table', 14),
	(20, '2023_09_14_110603_create_kara_yolu_tasimaciligis_table', 15),
	(21, '2023_09_14_113143_create_hava_yolu_tasimaciligis_table', 16),
	(22, '2023_09_14_143513_create_deniz_yolu_tasimaciligis_table', 17),
	(23, '2023_09_15_080523_create_uluslararasi_depolamas_table', 18),
	(24, '2023_09_15_090123_create_gumruk_isleri_teslimats_table', 19);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- tablo yapısı dökülüyor dogancay_nakliyat.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- dogancay_nakliyat.password_resets: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- tablo yapısı dökülüyor dogancay_nakliyat.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- dogancay_nakliyat.personal_access_tokens: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;

-- tablo yapısı dökülüyor dogancay_nakliyat.planlama_hazirliks
CREATE TABLE IF NOT EXISTS `planlama_hazirliks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `data` json DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- dogancay_nakliyat.planlama_hazirliks: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `planlama_hazirliks` DISABLE KEYS */;
INSERT INTO `planlama_hazirliks` (`id`, `data`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, '{"en": {"data": [{"text": "Logistics planning is a fundamental step for effective and efficient supply chain management. The planning process is done with the aim of optimizing the flow of materials and information and coordinating processes.", "title": "Planning:"}, {"text": "A moving checklist is very useful to prevent forgotten details, organize the process and ensure a stress-free moving experience.", "title": "Documentation:"}, {"text": "It can be considered as the phase of putting the plan into practice. The preparation process is necessary to put the established plans into practice, prepare the equipment and organize all the details.", "title": "Preparation:"}, {"text": "The price offer to be submitted includes information about what services are included in the offer and what are excluded.", "title": "Information:"}], "hero": "assets/images/ing.jpg", "title": "PLAN AND PREPARATION", "img_url": "assets/images/-e3.jpg"}, "ge": {"data": [{"text": "Lojistik planlama, etkili ve verimli bir tedarik zinciri yönetimi için temel bir adımdır. Planlama süreci, malzemelerin ve bilgilerin akışını optimize etmek ve süreçleri koordine etmek amacıyla yapılır.", "title": "Planlama Almanca:"}, {"text": "Taşınma kontrol listesi, unutulan detayları önlemek, süreci düzenlemek ve stressiz bir taşınma deneyimi sağlamak için oldukça faydalıdır.", "title": "Dokümantasyon Almanca:"}, {"text": "Planın uygulamaya konulması aşaması olarak düşünülebilir. Hazırlık süreci, belirlenen planları uygulamaya koymak, ekipmanları hazırlamak ve tüm detayları düzenlemek için gereklidir.", "title": "Hazırlık Almanca:"}, {"text": "Verilecek fiyat teklifinde, verilen teklife ne gibi hizmetlerin dahil olduğunu ve nelerin de hariç olduğu bilgileri bulunmaktadır.", "title": "Bilgi Almanca:"}], "hero": "assets/images/ing.jpg", "title": "PLAN VE HAZIRLIK ALMANCA", "img_url": "assets/images/-e3.jpg"}, "tr": {"data": [{"text": "Lojistik planlama, etkili ve verimli bir tedarik zinciri yönetimi için temel bir adımdır. Planlama süreci, malzemelerin ve bilgilerin akışını optimize etmek ve süreçleri koordine etmek amacıyla yapılır.", "title": "Planlama:"}, {"text": "Taşınma kontrol listesi, unutulan detayları önlemek, süreci düzenlemek ve stressiz bir taşınma deneyimi sağlamak için oldukça faydalıdır.", "title": "Dokümantasyon:"}, {"text": "Planın uygulamaya konulması aşaması olarak düşünülebilir. Hazırlık süreci, belirlenen planları uygulamaya koymak, ekipmanları hazırlamak ve tüm detayları düzenlemek için gereklidir.", "title": "Hazırlık:"}, {"text": "Verilecek fiyat teklifinde, verilen teklife ne gibi hizmetlerin dahil olduğunu ve nelerin de hariç olduğu bilgileri bulunmaktadır.", "title": "Bilgi:"}], "hero": "assets/images/ing.jpg", "title": "PLAN VE HAZIRLIK", "img_url": "assets/images/-e3.jpg"}}', NULL, NULL, NULL);
/*!40000 ALTER TABLE `planlama_hazirliks` ENABLE KEYS */;

-- tablo yapısı dökülüyor dogancay_nakliyat.tasinma_kontrol_listesis
CREATE TABLE IF NOT EXISTS `tasinma_kontrol_listesis` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `data` json DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- dogancay_nakliyat.tasinma_kontrol_listesis: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `tasinma_kontrol_listesis` DISABLE KEYS */;
INSERT INTO `tasinma_kontrol_listesis` (`id`, `data`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, '{"en": {"data": [{"text": "Do not forget to check your personal documents (such as ID card, birth certificate, health records, student certificate, driver\'s license, etc.).", "title": "Plan:"}, {"text": "Check with our moving officers for the last time before the move and specify the items to be moved and the issues that need extra attention.", "title": "Moving Day:"}, {"text": "Before moving, you should unplug your white goods, dry them and clean them. You can arrange a master to dismantle your chandeliers.", "title": "Preparation:"}, {"text": "You should examine in advance the documents required for the right to bring a vehicle, residence permit, permit to keep valuables and antiques, and plants in the country you are going to and do what is necessary.", "title": "Permission:"}], "hero": "assets/images/tasimaciligi.jpg", "title": "MOVING CHECKLIST", "img_url": "assets/images/32.png"}, "ge": {"data": [{"text": "Kişisel evraklarınızı (kimlik kartı, doğum belgesi, sağlık kayıtları, öğrenci belgesi, ehliyet.. gibi) kontrol etmeyi unutmayın.", "title": "Plan Almanca:"}, {"text": "Taşıma görevlilerimiz ile taşınma önce son kez gezerek beraber kontrol ediniz ve taşınacak eşyaları ve ekstra dikkat edilmesi gereken hususları belirtiniz.", "title": "Taşınma Günü Almanca:"}, {"text": "Taşınacak beyaz eşyalarınızı taşınma öncesi elektrikten çekip, kurutup temizlemelisiniz. Avizelerinizi sökmek için usta ayarlayabilirsiniz.", "title": "Hazırlık Almanca:"}, {"text": "Gideceğiniz ülkedeki araç getirme hakkı, oturma izni, değerli eşya ve antika bulundurma izni ve bitkiler için gerekli olan evrakları önceden inceleyip gereğini yapmalısınız.", "title": "İzin Almanca:"}], "hero": "assets/images/tasimaciligi.jpg", "title": "TAŞINMA KONTROL LİSTESİ ALMANCA", "img_url": "assets/images/32.png"}, "tr": {"data": [{"text": "Kişisel evraklarınızı (kimlik kartı, doğum belgesi, sağlık kayıtları, öğrenci belgesi, ehliyet.. gibi) kontrol etmeyi unutmayın.", "title": "Plan:"}, {"text": "Taşıma görevlilerimiz ile taşınma önce son kez gezerek beraber kontrol ediniz ve taşınacak eşyaları ve ekstra dikkat edilmesi gereken hususları belirtiniz.", "title": "Taşınma Günü:"}, {"text": "Taşınacak beyaz eşyalarınızı taşınma öncesi elektrikten çekip, kurutup temizlemelisiniz. Avizelerinizi sökmek için usta ayarlayabilirsiniz.", "title": "Hazırlık:"}, {"text": "Gideceğiniz ülkedeki araç getirme hakkı, oturma izni, değerli eşya ve antika bulundurma izni ve bitkiler için gerekli olan evrakları önceden inceleyip gereğini yapmalısınız.", "title": "İzin:"}], "hero": "assets/images/tasimaciligi.jpg", "title": "TAŞINMA KONTROL LİSTESİ", "img_url": "assets/images/32.png"}}', NULL, NULL, NULL);
/*!40000 ALTER TABLE `tasinma_kontrol_listesis` ENABLE KEYS */;

-- tablo yapısı dökülüyor dogancay_nakliyat.uluslararasi_depolamas
CREATE TABLE IF NOT EXISTS `uluslararasi_depolamas` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `data` json DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- dogancay_nakliyat.uluslararasi_depolamas: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `uluslararasi_depolamas` DISABLE KEYS */;
INSERT INTO `uluslararasi_depolamas` (`id`, `data`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, '{"en": {"data": [{"text": "The main purpose of storage transportation is to store items safely for a certain period of time. People may temporarily move their belongings to storage during a home or office move.", "title": "Purposes:"}, {"text": "The security of storage areas is of great importance. Various security measures are taken to prevent items from being stolen or damaged. These measures may include security cameras, alarm systems, access control and fire safety measures.", "title": "Security:"}, {"text": "Storage areas specially designed for storage transportation are used. These areas may have the features required for the safety and protection of goods. Storage areas can often take the form of storage units or containers of different sizes.", "title": "Storage Areas:"}, {"text": "Storage transportation is a useful type of service that meets transportation and storage needs. However, you should remember that special attention should be paid to issues such as safety and regular inspection.", "title": "Transportation and Storage Process:"}], "hero": "assets/images/dir.jpg", "title": "INTERNATIONAL STORAGE", "img_url": "assets/images/uluslararasiDepolama.jpeg"}, "ge": {"data": [{"text": "Depolama nakliyatın temel amacı, eşyaları belirli bir süre boyunca güvenli bir şekilde saklamaktır. İnsanlar ev veya ofis taşıması sırasında eşyalarını geçici olarak depolama alanına taşıyabilirler.", "title": "Amaçlar Al:"}, {"text": "Depolama alanlarının güvenliği büyük önem taşır. Eşyaların çalınmasını veya hasar görmesini önlemek için çeşitli güvenlik önlemleri alınır. Bu önlemler arasında güvenlik kameraları, alarm sistemleri, erişim kontrolü ve yangın güvenliği önlemleri yer alabilir.", "title": "Güvenlik Al:"}, {"text": "Depolama nakliyat için özel olarak tasarlanmış depolama alanları kullanılır. Bu alanlar, eşyaların güvenliği ve korunması için gereken özelliklere sahip olabilir. Depolama alanları genellikle farklı boyutlarda depolama üniteleri veya konteynerler şeklinde olabilir.", "title": "Depolama Alanları Al:"}, {"text": "Depolama nakliyat, taşıma ve depolama ihtiyaçlarını karşılayan kullanışlı bir hizmet türüdür. Ancak, güvenlik ve düzenli kontrol gibi konulara özellikle dikkat edilmesi gerektiğini unutmamalısınız.", "title": "Taşıma ve Depolama Süreci Al:"}], "hero": "assets/images/dir.jpg", "title": "ULUSLARARASI DEPOLAMA Almanca", "img_url": "assets/images/uluslararasiDepolama.jpeg"}, "tr": {"data": [{"text": "Depolama nakliyatın temel amacı, eşyaları belirli bir süre boyunca güvenli bir şekilde saklamaktır. İnsanlar ev veya ofis taşıması sırasında eşyalarını geçici olarak depolama alanına taşıyabilirler.", "title": "Amaçlar:"}, {"text": "Depolama alanlarının güvenliği büyük önem taşır. Eşyaların çalınmasını veya hasar görmesini önlemek için çeşitli güvenlik önlemleri alınır. Bu önlemler arasında güvenlik kameraları, alarm sistemleri, erişim kontrolü ve yangın güvenliği önlemleri yer alabilir.", "title": "Güvenlik:"}, {"text": "Depolama nakliyat için özel olarak tasarlanmış depolama alanları kullanılır. Bu alanlar, eşyaların güvenliği ve korunması için gereken özelliklere sahip olabilir. Depolama alanları genellikle farklı boyutlarda depolama üniteleri veya konteynerler şeklinde olabilir.", "title": "Depolama Alanları:"}, {"text": "Depolama nakliyat, taşıma ve depolama ihtiyaçlarını karşılayan kullanışlı bir hizmet türüdür. Ancak, güvenlik ve düzenli kontrol gibi konulara özellikle dikkat edilmesi gerektiğini unutmamalısınız.", "title": "Taşıma ve Depolama Süreci:"}], "hero": "assets/images/dir.jpg", "title": "ULUSLARARASI DEPOLAMA", "img_url": "assets/images/uluslararasiDepolama.jpeg"}}', NULL, NULL, NULL);
/*!40000 ALTER TABLE `uluslararasi_depolamas` ENABLE KEYS */;

-- tablo yapısı dökülüyor dogancay_nakliyat.uluslararasi_nakliyats
CREATE TABLE IF NOT EXISTS `uluslararasi_nakliyats` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `data` json DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- dogancay_nakliyat.uluslararasi_nakliyats: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `uluslararasi_nakliyats` DISABLE KEYS */;
INSERT INTO `uluslararasi_nakliyats` (`id`, `data`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, '{"en": {"data": [{"text": "Uluslararası taşıma, uluslararası ticaretin temelini oluşturur. Ülkeler, farklı kaynaklara ve pazarlara erişim sağlayarak ekonomik büyümeyi destekler. Aynı zamanda kültürel etkileşim, teknoloji transferi ve insan hareketliliğini teşvik eder.", "title": "Uluslararası Ticaretin Önemi:"}, {"text": "Uluslararası taşıma sırasında çeşitli belgeler ve gümrük işlemleri gereklidir. İhracat ve ithalat işlemleri, gümrük beyannameleri, taşıma konşimentoları, fatura ve paketleme listeleri gibi belgeler bu sürecin bir parçasıdır. Her ülkenin kendi gümrük prosedürleri ve gereksinimleri vardır.", "title": "Belgeler ve Gümrük İşlemleri:"}, {"text": "Uluslararası taşıma, karmaşık bir süreç olabilir. Bu nedenle birçok lojistik ve nakliyat firması, müşterilere bu süreçte destek sunar. Bu firmalar, taşıma modlarına göre uzmanlaşmış, gümrük işlemlerini yönetebilen ve teslimatın sorunsuz gerçekleşmesini sağlayan profesyonellerdir.", "title": "Lojistik ve Nakliyat Firmaları:"}, {"text": "Uluslararası taşıma sırasında çeşitli belgeler ve gümrük işlemleri gereklidir. İhracat ve ithalat işlemleri, gümrük beyannameleri, taşıma konşimentoları, fatura ve paketleme listeleri gibi belgeler bu sürecin bir parçasıdır. Her ülkenin kendi gümrük prosedürleri ve gereksinimleri vardır.", "title": "Ticari Taşımacılık:"}], "hero": "assets/images/ULUS.jpg", "title": "INTERNATIONAL SHPPING", "img_url": "assets/images/709130984ddc07b51d6b7a996df34ae5.jpg"}, "ge": {"data": [{"text": "Uluslararası taşıma, uluslararası ticaretin temelini oluşturur. Ülkeler, farklı kaynaklara ve pazarlara erişim sağlayarak ekonomik büyümeyi destekler. Aynı zamanda kültürel etkileşim, teknoloji transferi ve insan hareketliliğini teşvik eder.", "title": "Uluslararası Ticaretin Önemi:"}, {"text": "Uluslararası taşıma sırasında çeşitli belgeler ve gümrük işlemleri gereklidir. İhracat ve ithalat işlemleri, gümrük beyannameleri, taşıma konşimentoları, fatura ve paketleme listeleri gibi belgeler bu sürecin bir parçasıdır. Her ülkenin kendi gümrük prosedürleri ve gereksinimleri vardır.", "title": "Belgeler ve Gümrük İşlemleri:"}, {"text": "Uluslararası taşıma, karmaşık bir süreç olabilir. Bu nedenle birçok lojistik ve nakliyat firması, müşterilere bu süreçte destek sunar. Bu firmalar, taşıma modlarına göre uzmanlaşmış, gümrük işlemlerini yönetebilen ve teslimatın sorunsuz gerçekleşmesini sağlayan profesyonellerdir.", "title": "Lojistik ve Nakliyat Firmaları:"}, {"text": "Uluslararası taşıma sırasında çeşitli belgeler ve gümrük işlemleri gereklidir. İhracat ve ithalat işlemleri, gümrük beyannameleri, taşıma konşimentoları, fatura ve paketleme listeleri gibi belgeler bu sürecin bir parçasıdır. Her ülkenin kendi gümrük prosedürleri ve gereksinimleri vardır.", "title": "Ticari Taşımacılık:"}], "hero": "assets/images/ULUS.jpg", "title": "ULUSLARARASI NAKLİYAT ALMANCA", "img_url": "assets/images/709130984ddc07b51d6b7a996df34ae5.jpg"}, "tr": {"data": [{"text": "Uluslararası taşıma, uluslararası ticaretin temelini oluşturur. Ülkeler, farklı kaynaklara ve pazarlara erişim sağlayarak ekonomik büyümeyi destekler. Aynı zamanda kültürel etkileşim, teknoloji transferi ve insan hareketliliğini teşvik eder.", "title": "Uluslararası Ticaretin Önemi:"}, {"text": "Uluslararası taşıma sırasında çeşitli belgeler ve gümrük işlemleri gereklidir. İhracat ve ithalat işlemleri, gümrük beyannameleri, taşıma konşimentoları, fatura ve paketleme listeleri gibi belgeler bu sürecin bir parçasıdır. Her ülkenin kendi gümrük prosedürleri ve gereksinimleri vardır.", "title": "Belgeler ve Gümrük İşlemleri:"}, {"text": "Uluslararası taşıma, karmaşık bir süreç olabilir. Bu nedenle birçok lojistik ve nakliyat firması, müşterilere bu süreçte destek sunar. Bu firmalar, taşıma modlarına göre uzmanlaşmış, gümrük işlemlerini yönetebilen ve teslimatın sorunsuz gerçekleşmesini sağlayan profesyonellerdir.", "title": "Lojistik ve Nakliyat Firmaları:"}, {"text": "Uluslararası taşıma sırasında çeşitli belgeler ve gümrük işlemleri gereklidir. İhracat ve ithalat işlemleri, gümrük beyannameleri, taşıma konşimentoları, fatura ve paketleme listeleri gibi belgeler bu sürecin bir parçasıdır. Her ülkenin kendi gümrük prosedürleri ve gereksinimleri vardır.", "title": "Ticari Taşımacılık:"}], "hero": "assets/images/ULUS.jpg", "title": "ULUSLARARASI NAKLİYAT", "img_url": "assets/images/709130984ddc07b51d6b7a996df34ae5.jpg"}}', NULL, NULL, NULL);
/*!40000 ALTER TABLE `uluslararasi_nakliyats` ENABLE KEYS */;

-- tablo yapısı dökülüyor dogancay_nakliyat.uluslararasi_tasimas
CREATE TABLE IF NOT EXISTS `uluslararasi_tasimas` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `data` json DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- dogancay_nakliyat.uluslararasi_tasimas: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `uluslararasi_tasimas` DISABLE KEYS */;
INSERT INTO `uluslararasi_tasimas` (`id`, `data`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, '{"en": {"data": [{"text": "Logistics is of great importance in the international transportation process. Logistics planning, tracking and coordination are required to ensure that loads reach the right place at the right time.", "title": "Documentation and Customs Procedures:"}, {"text": "We recommend that you choose air transportation for items that are relatively small in size and that you will need urgently or are very valuable.", "title": "Logistics Networks:"}, {"text": "Air traffic may cause delays. Security checks and other procedures at airports may also affect delivery time.", "title": "Air Traffic and Delays:"}, {"text": "After packaging suitable for air transportation, your belongings are placed on planes with air cargo pallets of appropriate size.", "title": "Commercial Transportation:"}], "hero": "assets/images/tion.jpg", "title": "INTERNATIONAL TRANSPORTATION", "img_url": "assets/images/uluslararasiTasima.jpeg"}, "ge": {"data": [{"text": "Uluslararası taşıma sürecinde lojistik büyük önem taşır. Yüklerin doğru zamanda doğru yere ulaşması için lojistik planlama, takip ve koordinasyon gereklidir.", "title": "Dokümantasyon ve Gümrük İşlemleri Al:"}, {"text": "Nispeten küçük ebatlarda ve sizin için acil olarak ihtiyacınız olacak veya çok değerli eşyalarınız için hava yolu tercih etmenizi öneririz.", "title": "Lojistik Ağları Al:"}, {"text": "Hava trafiği, gecikmelere neden olabilir. Havaalanlarında güvenlik kontrolleri ve diğer prosedürler de teslimat süresini etkileyebilir.", "title": "Hava Trafiği ve Gecikmeler Al:"}, {"text": "Hava yolu taşımacılığına uygun paketlemeden sonra eşyalarınız uygun büyüklükteki hava kargo paletleri ile uçaklara yerleştirilir.", "title": "Ticari Taşımacılık Al:"}], "hero": "assets/images/tion.jpg", "title": "ULUSLARASI TAŞIMA Almanca", "img_url": "assets/images/uluslararasiTasima.jpeg"}, "tr": {"data": [{"text": "Uluslararası taşıma sürecinde lojistik büyük önem taşır. Yüklerin doğru zamanda doğru yere ulaşması için lojistik planlama, takip ve koordinasyon gereklidir.", "title": "Dokümantasyon ve Gümrük İşlemleri:"}, {"text": "Nispeten küçük ebatlarda ve sizin için acil olarak ihtiyacınız olacak veya çok değerli eşyalarınız için hava yolu tercih etmenizi öneririz.", "title": "Lojistik Ağları:"}, {"text": "Hava trafiği, gecikmelere neden olabilir. Havaalanlarında güvenlik kontrolleri ve diğer prosedürler de teslimat süresini etkileyebilir.", "title": "Hava Trafiği ve Gecikmeler:"}, {"text": "Hava yolu taşımacılığına uygun paketlemeden sonra eşyalarınız uygun büyüklükteki hava kargo paletleri ile uçaklara yerleştirilir.", "title": "Ticari Taşımacılık:"}], "hero": "assets/images/tion.jpg", "title": "ULUSLARASI TAŞIMA", "img_url": "assets/images/uluslararasiTasima.jpeg"}}', NULL, NULL, NULL);
/*!40000 ALTER TABLE `uluslararasi_tasimas` ENABLE KEYS */;

-- tablo yapısı dökülüyor dogancay_nakliyat.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- dogancay_nakliyat.users: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- tablo yapısı dökülüyor dogancay_nakliyat.welcomes
CREATE TABLE IF NOT EXISTS `welcomes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `data` json DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- dogancay_nakliyat.welcomes: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `welcomes` DISABLE KEYS */;
INSERT INTO `welcomes` (`id`, `data`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, '{"en": {"title": "International Shipping \'DOĞANÇAY\'", "button": {"url": "#features", "title": "More"}}, "ge": {"title": "Uluslararası Nakliyat Almanca \'DOĞANÇAY\'", "button": {"url": "#features", "title": "Daha Fazla Almanca"}}, "tr": {"title": "Uluslararası Nakliyat \'DOĞANÇAY\'", "button": {"url": "#features", "title": "Daha Fazla"}}}', NULL, NULL, NULL);
/*!40000 ALTER TABLE `welcomes` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
