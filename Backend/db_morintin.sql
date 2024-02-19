/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

CREATE TABLE `productos` (
  `nombreProducto` varchar(255) DEFAULT NULL,
  `Precio` decimal(12,2) DEFAULT NULL,
  `Supermercado` varchar(100) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `usuarios` (
  `nombre` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `productos` (`nombreProducto`, `Precio`, `Supermercado`, `imagen`) VALUES
('Manzana', '59.75', 'Soriana', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg');
INSERT INTO `productos` (`nombreProducto`, `Precio`, `Supermercado`, `imagen`) VALUES
('Durazno', '50.11', 'Soriana', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
('Manzana', '60.00', 'Chedraui', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
('Durazno', '46.46', 'Walmart', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
('Durazno', '55.54', 'Chedraui', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
('leche lala', '28.47', 'Walmart', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
('leche lala', '29.61', 'Chedraui', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
('leche lala', '31.02', 'Soriana', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
('Ariel', '45.44', 'Walmart', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
('Ariel', '39.59', 'Chedraui', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
('Ariel', '4.37', 'Soriana', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
('Zucaritas', '85.61', 'Walmart', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
('Zucaritas', '87.00', 'Soriana', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
('Zucaritas', '78.51', 'Chedraui', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
('Huevo Bachoco', '56.24', 'Soriana', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
('Huevo Bachoco', '60.31', 'Walmart', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
('Huevo Bachoco', '65.82', 'Chedraui', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
('Azucar', '35.32', 'Chedraui', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg'),
('Manzana', '57.50', 'Sam\'s Club', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
('Durazno', '48.90', 'Costco', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
('Manzana', '62.25', 'Alsuper', 'https://thumbs.dreamstime.com/b/apple-rojo-aislado-con-el-camino-de-recortes-19130134.jpg'),
('Durazno', '43.75', 'Samart', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
('Durazno', '58.70', 'Sam\'s Club', 'https://st.depositphotos.com/1076754/1743/v/450/depositphotos_17436069-stock-illustration-rpe-peach-isolated-on-white.jpg'),
('leche lala', '30.20', 'Costco', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
('leche lala', '32.45', 'Alsuper', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
('leche lala', '34.00', 'Sam\'s Club', 'https://comercializadorajm.com/wp-content/uploads/2021/01/3266.jpg'),
('Ariel', '47.80', 'Costco', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
('Ariel', '41.60', 'Alsuper', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
('Ariel', '5.45', 'Samart', 'https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/1/6/16620_1.jpg'),
('Zucaritas', '90.15', 'Costco', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
('Zucaritas', '89.50', 'Alsuper', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
('Zucaritas', '82.75', 'Sam\'s Club', 'https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1391755_A_1280_AL.jpg'),
('Huevo Bachoco', '49.25', 'Costco', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
('Huevo Bachoco', '53.40', 'Alsuper', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
('Huevo Bachoco', '58.35', 'Sam\'s Club', 'https://media.justo.mx/products/Huevo_Bachoco_Blanco_30_pzas_2.jpg'),
('Azucar', '41.65', 'Costco', 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00066144000005L.jpg');




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;