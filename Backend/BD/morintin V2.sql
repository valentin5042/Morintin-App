-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-02-2024 a las 23:36:27
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
-- Base de datos: `morintin`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalles_lista`
--

CREATE TABLE `detalles_lista` (
  `detalle_id` int(11) NOT NULL,
  `lista_id` int(11) DEFAULT NULL,
  `producto_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalles_lista`
--

INSERT INTO `detalles_lista` (`detalle_id`, `lista_id`, `producto_id`) VALUES
(3, 2, 5),
(41, 1, 3),
(42, 1, 5),
(46, 1, 1),
(47, 1, 1),
(48, 1, 1),
(50, 1, 3),
(51, 1, 1),
(53, 1, 4),
(59, 1, 1),
(60, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `listas`
--

CREATE TABLE `listas` (
  `lista_id` int(11) NOT NULL,
  `nombre_lista` varchar(100) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `listas`
--

INSERT INTO `listas` (`lista_id`, `nombre_lista`, `usuario_id`) VALUES
(1, 'comida semana', 1),
(2, 'ejemplo2', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `producto_id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `categoria` varchar(100) NOT NULL,
  `precio` varchar(100) NOT NULL,
  `nombre_superm` varchar(100) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`producto_id`, `nombre`, `categoria`, `precio`, `nombre_superm`, `image`) VALUES
(1, 'Manzana', 'frutas', '59.75', 'Soriana', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(2, 'Durazno', 'frutas', '50.11', 'Soriana', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(3, 'Manzana', 'frutas', '60.00', 'Chedraui', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
(4, 'Durazno', 'frutas', '46.46', 'Walmart', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(5, 'Durazno', 'frutas', '55.54', 'Chedraui', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
(6, 'leche lala', 'lacteos', '28.47', 'Walmart', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(7, 'leche lala', 'lacteos', '29.61', 'Chedraui', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(8, 'leche lala', 'lacteos', '31.02', 'Soriana', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
(9, 'Ariel', 'detergentes', '45.44', 'Walmart', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(10, 'Ariel', 'detergentes', '39.59', 'Chedraui', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(11, 'Ariel', 'detergentes', '54.37', 'Soriana', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
(12, 'Zucaritas', 'cereales', '85.61', 'Walmart', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(13, 'Zucaritas', 'cereales', '87.00', 'Soriana', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(14, 'Zucaritas', 'cereales', '78.51', 'Chedraui', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
(15, 'Huevo Bachoco', 'alimentos', '56.24', 'Soriana', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(16, 'Huevo Bachoco', 'alimentos', '60.31', 'Walmart', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(17, 'Huevo Bachoco', 'alimentos', '65.82', 'Chedraui', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
(18, 'Azucar', 'insumos', '35.32', 'Chedraui', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `user_id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `token` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`user_id`, `nombre`, `email`, `password`, `token`) VALUES
(1, '', 'oscar@gmail.com', '12345', ''),
(2, '', 'omar_23@algo.com', '12345', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `detalles_lista`
--
ALTER TABLE `detalles_lista`
  ADD PRIMARY KEY (`detalle_id`),
  ADD KEY `lista_id` (`lista_id`),
  ADD KEY `producto_id` (`producto_id`);

--
-- Indices de la tabla `listas`
--
ALTER TABLE `listas`
  ADD PRIMARY KEY (`lista_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`producto_id`),
  ADD UNIQUE KEY `unique_producto` (`nombre`,`nombre_superm`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `detalles_lista`
--
ALTER TABLE `detalles_lista`
  MODIFY `detalle_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de la tabla `listas`
--
ALTER TABLE `listas`
  MODIFY `lista_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `producto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalles_lista`
--
ALTER TABLE `detalles_lista`
  ADD CONSTRAINT `detalles_lista_ibfk_1` FOREIGN KEY (`lista_id`) REFERENCES `listas` (`lista_id`),
  ADD CONSTRAINT `detalles_lista_ibfk_2` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`producto_id`);

--
-- Filtros para la tabla `listas`
--
ALTER TABLE `listas`
  ADD CONSTRAINT `listas_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
