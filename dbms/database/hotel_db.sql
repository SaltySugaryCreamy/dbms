SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `checked` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `ref_no` varchar(100) NOT NULL,
  `room_id` int(30) NOT NULL,
  `name` text NOT NULL,
  `contact_no` varchar(20) NOT NULL,
  `date_in` datetime NOT NULL,
  `date_out` datetime NOT NULL,
  `booked_cid` int(30) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 = pending, 1=checked in , 2 = checked out',
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `checked` (`id`, `ref_no`, `room_id`, `name`, `contact_no`, `date_in`, `date_out`, `booked_cid`, `status`, `date_updated`) VALUES
(1, '2323223233', 1, 'Benson', '09447284789', '2024-09-19 11:48:09', '2024-09-22 11:48:09', 0, 2, '2024-09-19 13:11:34'),
(2, '9564082520', 1, 'Luna', '09447284789', '2024-09-19 11:48:33', '2024-09-22 11:48:33', 0, 2, '2024-09-19 13:12:19'),
(3, '2765813481', 1, 'Delmo', '09447284789', '2024-09-19 13:16:00', '2024-09-24 13:16:00', 0, 2, '2024-09-19 13:43:21'),
(4, '4392831400', 3, 'Linghon', '09447284789', '2024-09-19 13:00:00', '2024-09-23 13:00:00', 0, 2, '2024-09-19 16:00:55'),
(5, '6479004224', 1, 'Sunio', '09447284789', '2024-09-23 10:31:00', '2024-09-29 10:31:00', 3, 1, '2024-09-19 16:39:59');

CREATE TABLE `rooms` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `room` varchar(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 = Available , 1= Unvailables',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `rooms` (`id`, `room`, `category_id`, `status`) VALUES
(1, 'Room-401', 4, 1),
(2, 'Room-102', 1, 0),
(3, 'Room-201', 2, 0),
(4, 'Room-301', 3, 0),
(5, 'Room-401', 4, 1);

CREATE TABLE `room_categories` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `price` float NOT NULL,
  `cover_img` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `room_categories` (`id`, `name`, `price`, `cover_img`) VALUES
(1, 'Single Room', 1200, 'r1.jpg'),
(2, 'Twin Bed Room', 2200, 'r2.jpg'),
(3, 'Family Room', 3500, 'r3.jpg'),
(4, 'Deluxe Room', 5000, 'r4.jpg');

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `hotel_name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `cover_img` text NOT NULL,
  `about_content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `system_settings` (`id`, `hotel_name`, `email`, `contact`, `cover_img`, `about_content`) VALUES
(1, 'Isla de Muerte', 'islademuerte@gmail.com', '+6950 643 7334', 'bg1.gif', '&lt;p style=&quot;text-align: center; background: transparent; position: relative; font-size: 14px;&quot;&gt;&lt;/p&gt;&lt;span style=&quot;text-align: center; background: transparent; position: relative; font-size: 20px;&quot;&gt;&lt;span style=&quot;font-size:20px;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative; font-size: 20px;&quot;&gt;&lt;br style=&quot;font-size: 20px;&quot;&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative; font-size: 20px;&quot;&gt;&lt;span style=&quot;font-size: 20px;&quot;&gt;Welcome to Isla de Muerte, where every moment is an enchanting journey into luxury and tranquility. Nestled on the shores of a secluded island paradise, our hotel offers a sanctuary for those seeking an escape from the ordinary.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative; font-size: 20px;&quot;&gt;&lt;span style=&quot;font-size: 20px;&quot;&gt;&lt;br style=&quot;font-size: 20px;&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative; font-size: 20px;&quot;&gt;&lt;span style=&quot;font-size: 20px;&quot;&gt;&lt;b style=&quot;font-size: 20px;&quot;&gt;A Haven of Tranquility&lt;/b&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative; font-size: 20px;&quot;&gt;&lt;span style=&quot;font-size: 20px;&quot;&gt;&lt;br style=&quot;font-size: 20px;&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative; font-size: 20px;&quot;&gt;&lt;span style=&quot;font-size: 20px;&quot;&gt;At Isla de Muerte, we pride ourselves on providing unparalleled hospitality and personalized service. From the moment you arrive, you will be greeted by the warm embrace of our attentive staff, dedicated to ensuring your every need is met with care and sophistication.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative; font-size: 20px;&quot;&gt;&lt;span style=&quot;font-size: 20px;&quot;&gt;&lt;br style=&quot;font-size: 20px;&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative; font-size: 20px;&quot;&gt;&lt;span style=&quot;font-size: 20px;&quot;&gt;&lt;b style=&quot;font-size: 20px;&quot;&gt;Luxurious Accommodations&lt;/b&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative; font-size: 20px;&quot;&gt;&lt;span style=&quot;font-size: 20px;&quot;&gt;&lt;br style=&quot;font-size: 20px;&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative; font-size: 20px;&quot;&gt;&lt;span style=&quot;font-size: 20px;&quot;&gt;Indulge in the ultimate comfort within our exquisite accommodations, meticulously designed to evoke a sense of opulence and serenity. Each room and suite is adorned with elegant furnishings and modern amenities, offering a sanctuary where you can unwind and rejuvenate in style.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative; font-size: 20px;&quot;&gt;&lt;span style=&quot;font-size: 20px;&quot;&gt;&lt;br style=&quot;font-size: 20px;&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative; font-size: 20px;&quot;&gt;&lt;span style=&quot;font-size: 20px;&quot;&gt;&lt;b style=&quot;font-size: 20px;&quot;&gt;Culinary Delights&lt;/b&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative; font-size: 20px;&quot;&gt;&lt;span style=&quot;font-size: 20px;&quot;&gt;&lt;br style=&quot;font-size: 20px;&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative; font-size: 20px;&quot;&gt;&lt;span style=&quot;font-size: 20px;&quot;&gt;Savor the flavors of the island at our world-class restaurants, where culinary mastery meets breathtaking ocean views. From fresh seafood delicacies to international cuisine, our diverse dining options promise a gastronomic adventure that delights the senses.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative; font-size: 20px;&quot;&gt;&lt;span style=&quot;font-size: 20px;&quot;&gt;&lt;br style=&quot;font-size: 20px;&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative; font-size: 20px;&quot;&gt;&lt;span style=&quot;font-size: 20px;&quot;&gt;&lt;b style=&quot;font-size: 20px;&quot;&gt;Unforgettable Experiences&lt;/b&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative; font-size: 20px;&quot;&gt;&lt;span style=&quot;font-size: 20px;&quot;&gt;&lt;br style=&quot;font-size: 20px;&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative; font-size: 20px;&quot;&gt;&lt;span style=&quot;font-size: 20px;&quot;&gt;Embark on a journey of discovery as you explore the wonders of Isla de Muerte. Whether you choose to relax by the infinity pool, indulge in a pampering spa treatment, or embark on an exhilarating adventure, our hotel offers a wealth of experiences to suit every taste.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative; font-size: 20px;&quot;&gt;&lt;span style=&quot;font-size: 20px;&quot;&gt;&lt;br style=&quot;font-size: 20px;&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative; font-size: 20px;&quot;&gt;&lt;span style=&quot;font-size: 20px;&quot;&gt;&lt;b style=&quot;font-size: 20px;&quot;&gt;Our Commitment&lt;/b&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative; font-size: 20px;&quot;&gt;&lt;span style=&quot;font-size: 20px;&quot;&gt;&lt;br style=&quot;font-size: 20px;&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative; font-size: 20px;&quot;&gt;&lt;span style=&quot;font-size: 20px;&quot;&gt;At Isla de Muerte, we are committed to creating memories that last a lifetime. With our unwavering dedication to excellence, we strive to exceed your expectations at every turn, ensuring that your stay with us is nothing short of extraordinary.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative; font-size: 20px;&quot;&gt;&lt;span style=&quot;font-size: 20px;&quot;&gt;&lt;br style=&quot;font-size: 20px;&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative; font-size: 20px;&quot;&gt;&lt;span style=&quot;font-size: 20px;&quot;&gt;&lt;b style=&quot;font-size: 20px;&quot;&gt;Escape to Isla de Muerte and experience the epitome of luxury and relaxation in an enchanting island paradise.&lt;/b&gt;&lt;/span&gt;&lt;/p&gt;&lt;/span&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative; font-size: 18px;&quot;&gt;&lt;/p&gt;&lt;/span&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;');

CREATE TABLE `users` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1=admin , 2 = staff',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `users` (`id`, `name`, `username`, `password`, `type`) VALUES
(1, 'Administrator', 'admin', 'admin', 1);

COMMIT;
