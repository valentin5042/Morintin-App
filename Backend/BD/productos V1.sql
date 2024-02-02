-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-12-2023 a las 22:32:35
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_medusa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `precio` varchar(50) NOT NULL,
  `nombre_superm` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `categoria`, `precio`, `nombre_superm`) VALUES
(1, 'Drambuie', 'Baby', '$23.05', 'Buzzshare'),
(2, 'Milk 2% 500 Ml', 'Outdoors', '$15.19', 'Dazzlesphere'),
(3, 'Sardines', 'Movies', '$6.66', 'Blogpad'),
(4, 'Mackerel Whole Fresh', 'Baby', '$24.35', 'Demivee'),
(5, 'Nantucket Cranberry Juice', 'Home', '$20.59', 'Ooba'),
(6, 'Lid Tray - 12in Dome', 'Movies', '$6.49', 'Browsebug'),
(7, 'Veal - Inside', 'Jewelry', '$11.73', 'Roombo'),
(8, 'Pepper - Red, Finger Hot', 'Books', '$17.89', 'Teklist'),
(9, 'Chicken - Breast, 5 - 7 Oz', 'Tools', '$13.29', 'Cogidoo'),
(10, 'Barley - Pearl', 'Movies', '$19.26', 'Quaxo'),
(11, 'Island Oasis - Strawberry', 'Industrial', '$19.59', 'Katz'),
(12, 'Bread Roll Foccacia', 'Toys', '$26.11', 'Yamia'),
(13, 'Napkin - Beverge, White 2 - Ply', 'Garden', '$8.09', 'Fatz'),
(14, 'Juice - Mango', 'Books', '$14.08', 'Jaxspan'),
(15, 'Tea - Jasmin Green', 'Health', '$12.92', 'Quinu'),
(16, 'Cod - Black Whole Fillet', 'Tools', '$23.91', 'Oyoloo'),
(17, 'Duck - Legs', 'Movies', '$7.83', 'Gabspot'),
(18, 'Cheese - Brick With Onion', 'Outdoors', '$26.90', 'Devpulse'),
(19, 'Wine - Red, Cooking', 'Games', '$21.21', 'Meembee'),
(20, 'Ecolab - Hobart Upr Prewash Arm', 'Automotive', '$23.84', 'Trilith'),
(21, 'Cake Slab', 'Baby', '$21.35', 'Edgewire'),
(22, 'V8 Splash Strawberry Banana', 'Sports', '$17.60', 'Rhybox'),
(23, 'Veal - Insides, Grains', 'Tools', '$28.56', 'Wordify'),
(24, 'Garbage Bags - Clear', 'Sports', '$4.29', 'Browsecat'),
(25, 'Lettuce - Sea / Sea Asparagus', 'Baby', '$11.50', 'Agimba'),
(26, 'Cabbage - Green', 'Games', '$4.81', 'Jabbersphere'),
(27, 'Alize Gold Passion', 'Clothing', '$28.55', 'Realblab'),
(28, 'Flounder - Fresh', 'Clothing', '$27.38', 'Yambee'),
(29, 'Sambuca - Opal Nera', 'Clothing', '$9.90', 'Twinte'),
(30, 'Nut - Peanut, Roasted', 'Jewelry', '$23.67', 'Latz'),
(31, 'Sunflower Seed Raw', 'Toys', '$4.46', 'Jamia'),
(32, 'Chicken - Livers', 'Garden', '$27.99', 'Rhyloo'),
(33, 'Sauce - Caesar Dressing', 'Home', '$5.04', 'Kayveo'),
(34, 'Hinge W Undercut', 'Music', '$21.26', 'Fliptune'),
(35, 'Wine - Alsace Riesling Reserve', 'Garden', '$8.46', 'Brainverse'),
(36, 'Beer - Sleemans Honey Brown', 'Automotive', '$17.12', 'Jaxworks'),
(37, 'Ham - Procutinni', 'Beauty', '$26.72', 'Yodo'),
(38, 'Star Fruit', 'Industrial', '$3.82', 'Gigashots'),
(39, 'Instant Coffee', 'Games', '$4.82', 'Photobean'),
(40, 'Lotus Rootlets - Canned', 'Clothing', '$18.01', 'Feedspan'),
(41, 'Dr. Pepper - 355ml', 'Garden', '$28.75', 'Voonte'),
(42, 'Lettuce - Lambs Mash', 'Games', '$7.28', 'Skaboo'),
(43, 'Foam Tray S2', 'Baby', '$2.17', 'Buzzster'),
(44, 'Dried Apple', 'Shoes', '$18.68', 'Chatterpoint'),
(45, 'Cheese - Camembert', 'Shoes', '$28.17', 'Kanoodle'),
(46, 'Veal - Knuckle', 'Jewelry', '$16.56', 'Kanoodle'),
(47, 'Tuna - Canned, Flaked, Light', 'Outdoors', '$2.44', 'Gigabox'),
(48, 'Wine - Red, Concha Y Toro', 'Books', '$25.93', 'Kwinu'),
(49, 'Nut - Pistachio, Shelled', 'Baby', '$11.12', 'Centizu'),
(50, 'Beans - Navy, Dry', 'Kids', '$8.40', 'Brainbox');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
