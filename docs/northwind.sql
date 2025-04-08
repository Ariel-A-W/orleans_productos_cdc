-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         5.6.21 - MySQL Community Server (GPL)
-- SO del servidor:              Win32
-- HeidiSQL Versión:             12.10.0.7000
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para northwind
CREATE DATABASE IF NOT EXISTS `northwind` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `northwind`;

-- Volcando estructura para tabla northwind.clientes
CREATE TABLE IF NOT EXISTS `clientes` (
  `cliente_id` int(11) NOT NULL AUTO_INCREMENT,
  `empresa` varchar(50) DEFAULT NULL,
  `apellidos` varchar(50) DEFAULT NULL,
  `nombres` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `cargo` varchar(50) DEFAULT NULL,
  `telefono_trabajo` varchar(25) DEFAULT NULL,
  `telefono_particular` varchar(25) DEFAULT NULL,
  `telefono_movil` varchar(25) DEFAULT NULL,
  `fax` varchar(25) DEFAULT NULL,
  `direccion` longtext,
  `ciudad` varchar(50) DEFAULT NULL,
  `provincia` varchar(50) DEFAULT NULL,
  `codigo_postal` varchar(15) DEFAULT NULL,
  `pais` varchar(50) DEFAULT NULL,
  `web` longtext,
  `notas` longtext,
  `adjuntos` longblob,
  PRIMARY KEY (`cliente_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla northwind.clientes: ~29 rows (aproximadamente)
INSERT INTO `clientes` (`cliente_id`, `empresa`, `apellidos`, `nombres`, `email`, `cargo`, `telefono_trabajo`, `telefono_particular`, `telefono_movil`, `fax`, `direccion`, `ciudad`, `provincia`, `codigo_postal`, `pais`, `web`, `notas`, `adjuntos`) VALUES
	(1, 'Compañía A', 'Benito', 'Almudena', 'benitoalmudena@gmail.com', 'Propietario', '987 654 321', NULL, NULL, '987 654 321', 'Calle Primera, 123', 'Seattle', 'Madrid', '99999', 'España', NULL, NULL, _binary ''),
	(2, 'Compañía B', 'Bermejo', 'Antonio', 'bermejoantonio@gmail.com', 'Propietario', '987 654 321', NULL, NULL, '987 654 321', 'Calle Segunda, 123', 'Boston', 'MA', '99999', 'España', NULL, NULL, _binary ''),
	(3, 'Compañía C', 'López', 'Arturo', 'lópezarturo@gmail.com', 'Representante de compras', '987 654 321', NULL, NULL, '987 654 321', 'Calle Tercera, 123', 'Los Ángeles', 'CA', '99999', 'España', NULL, NULL, _binary ''),
	(4, 'Compañía D', 'García', 'Vanessa', 'garcíavanessa@gmail.com', 'Jefe de compras', '987 654 321', NULL, NULL, '987 654 321', 'Calle Cuarta, 123', 'Nueva York', 'NY', '99999', 'España', NULL, NULL, _binary ''),
	(5, 'Compañía E', 'Gratacós Solsona', 'Antonio', 'gratacós solsonaantonio@gmail.com', 'Propietario', '987 654 321', NULL, NULL, '987 654 321', 'Calle Quinta, 123', 'Minneapolis', 'MN', '99999', 'España', NULL, NULL, _binary ''),
	(6, 'Compañía F', 'Pérez-Olaeta', 'Francisco', 'pérezolaetafrancisco@gmail.com', 'Jefe de compras', '987 654 321', NULL, NULL, '987 654 321', 'Calle Sexta, 123', 'Milwaukee', 'WI', '99999', 'España', NULL, NULL, _binary ''),
	(7, 'Compañía G', 'Sánchez Sánchez', 'Yolanda', 'sánchezsánchezyolanda@gmail.com', 'Propietario', '987 654 321', NULL, NULL, '987 654 321', 'Calle Séptima, 123', 'Boise', 'ID', '99999', 'España', NULL, NULL, _binary ''),
	(8, 'Compañía H', 'Valdés', 'Rene', 'valdésrene@gmail.com', 'Representante de compras', '987 654 321', NULL, NULL, '987 654 321', 'Calle Octava, 123', 'Portland', 'OR', '99999', 'España', NULL, NULL, _binary ''),
	(9, 'Compañía I', 'Maldonado Guerra', 'Alfredo', 'maldonadoguerraalfredo@gmail.com', 'Jefe de compras', '987 654 321', NULL, NULL, '987 654 321', 'Calle Novena, 123', 'Salt Lake City', 'UT', '99999', 'España', NULL, NULL, _binary ''),
	(10, 'Compañía J', 'Alverca', 'Luis', 'alvercaluis@gmail.com', 'Jefe de compras', '987 654 321', NULL, NULL, '987 654 321', 'Calle Décima, 123', 'Chicago', 'IL', '99999', 'España', NULL, NULL, _binary ''),
	(11, 'Compañía K', 'Caro', 'Fernando', 'carofernando@gmail.com', 'Jefe de compras', '987 654 321', NULL, NULL, '987 654 321', 'Calle Decimoprimera, 123', 'Miami', 'FL', '99999', 'España', NULL, NULL, _binary ''),
	(12, 'Compañía L', 'De Camargo', 'Gustavo', 'decamargogustavo@gmail.com', 'Jefe de compras', '987 654 321', NULL, NULL, '987 654 321', 'Calle Decimosegunda, 123', 'Las Vegas', 'NV', '99999', 'España', NULL, NULL, _binary ''),
	(13, 'Compañía M', 'Fuentes Espinosa', 'Alfredo', 'fuentesespinosaalfredo@gmail.com', 'Representante de compras', '987 654 321', NULL, NULL, '987 654 321', 'Calle Decimotercera, 123', 'Memphis', 'TN', '99999', 'España', NULL, NULL, _binary ''),
	(14, 'Compañía N', 'Estrada', 'Modesto', 'estradamodesto@gmail.com', 'Representante de compras', '987 654 321', NULL, NULL, '987 654 321', 'Calle Decimocuarta, 123', 'Denver', 'CO', '99999', 'España', NULL, NULL, _binary ''),
	(15, 'Compañía O', 'Chaves Ferreira', 'Pedro', 'chavesferreirapedro@gmail.com', 'Jefe de compras', '987 654 321', NULL, NULL, '987 654 321', 'Calle Decimoquinta, 123', 'Honolulu', 'HI', '99999', 'España', NULL, NULL, _binary ''),
	(16, 'Compañía P', 'López García', 'Avelino', 'lópezgarcíaavelino@gmail.com', 'Representante de compras', '987 654 321', NULL, NULL, '987 654 321', 'Calle Decimosexta, 123', 'San Francisco', 'CA', '99999', 'España', NULL, NULL, _binary ''),
	(17, 'Compañía Q', 'García', 'César', 'garcíacésar@gmail.com', 'Propietario', '987 654 321', NULL, NULL, '987 654 321', 'Calle Decimoséptima, 123', 'Seattle', 'Madrid', '99999', 'España', NULL, NULL, _binary ''),
	(18, 'Compañía R', 'García', 'Miguel Ángel', 'garcíamiguelángel@gmail.com', 'Representante de compras', '987 654 321', NULL, NULL, '987 654 321', 'Calle Decimoctava, 123', 'Boston', 'MA', '99999', 'España', NULL, NULL, _binary ''),
	(19, 'Compañía S', 'Hurtado', 'Begoña', 'hurtadobegoña@gmail.com', 'Ayudante de contabilidad', '987 654 321', NULL, NULL, '987 654 321', 'Calle Decimonovena, 123', 'Los Ángeles', 'CA', '99999', 'España', NULL, NULL, _binary ''),
	(20, 'Compañía T', 'Castrejón', 'Francisco Javier', 'castrejónfranciscojavier@gmail.com', 'Jefe de compras', '987 654 321', NULL, NULL, '987 654 321', 'Calle Vigésima, 123', 'Nueva York', 'NY', '99999', 'España', NULL, NULL, _binary ''),
	(21, 'Compañía U', 'Junca', 'David', 'juncadavid@gmail.com', 'Jefe de contabilidad', '987 654 321', NULL, NULL, '987 654 321', 'Calle Vigesimoprimera, 123', 'Minneapolis', 'MN', '99999', 'España', NULL, NULL, _binary ''),
	(22, 'Compañía V', 'Ramos', 'Luciana', 'ramosluciana@gmail.com', 'Ayudante de compras', '987 654 321', NULL, NULL, '987 654 321', 'Calle Vigesimosegunda, 123', 'Milwaukee', 'WI', '99999', 'España', NULL, NULL, _binary ''),
	(23, 'Compañía W', 'Lugo', 'José', 'lugojosé@gmail.com', 'Jefe de compras', '987 654 321', NULL, NULL, '987 654 321', 'Calle Vigesimotercera, 123', 'Portland', 'OR', '99999', 'España', NULL, NULL, _binary ''),
	(24, 'Compañía X', 'Machado', 'Manuel', 'machadomanuel@gmail.com', 'Propietario', '987 654 321', NULL, NULL, '987 654 321', 'Calle Vigesimoprimera, 123', 'Salt Lake City', 'UT', '99999', 'España', NULL, NULL, _binary ''),
	(25, 'Compañía Y', 'Martínez', 'Sandra I.', 'martínezsandrai@gmail.com', 'Jefe de compras', '987 654 321', NULL, NULL, '987 654 321', 'Calle Vigesimoquinta, 123', 'Chicago', 'IL', '99999', 'España', NULL, NULL, _binary ''),
	(26, 'Compañía Z', 'Pinto', 'Armando', 'pintoarmando@gmail.com', 'Ayudante de contabilidad', '987 654 321', NULL, NULL, '987 654 321', 'Calle Vigesimosexta, 123', 'Miami', 'FL', '99999', 'España', NULL, NULL, _binary ''),
	(27, 'Compañía AA', 'Potra', 'Cristina', 'potracristina@gmail.com', 'Jefe de compras', '987 654 321', NULL, NULL, '987 654 321', 'Calle Vigesimoséptima, 123', 'Las Vegas', 'NV', '99999', 'España', NULL, NULL, _binary ''),
	(28, 'Compañía BB', 'Lacerda', 'Carlos', 'lacerdacarlos@gmail.com', 'Jefe de compras', '987 654 321', NULL, NULL, '987 654 321', 'Calle Vigesimoséptima, 123', 'Memphis', 'TN', '99999', 'España', NULL, NULL, _binary ''),
	(29, 'Compañía CC', 'Saraiva', 'José', 'saraivajosé@gmail.com', 'Jefe de compras', '987 654 321', NULL, NULL, '987 654 321', 'Calle Vigesimonovena, 123', 'Denver', 'CO', '99999', 'España', NULL, NULL, _binary '');

-- Volcando estructura para tabla northwind.cuerdas
CREATE TABLE IF NOT EXISTS `cuerdas` (
  `cuerda_id` int(11) NOT NULL AUTO_INCREMENT,
  `datos_cuerdas` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cuerda_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla northwind.cuerdas: ~62 rows (aproximadamente)
INSERT INTO `cuerdas` (`cuerda_id`, `datos_cuerdas`) VALUES
	(2, 'Northwind Traders'),
	(3, 'No se puede quitar el inventario publicado.'),
	(4, 'Producto en lista de espera servido para el pedido nº |'),
	(5, 'El precio con descuento es inferior al costo.'),
	(6, 'Inventario insuficiente.'),
	(7, 'Inventario insuficiente. ¿Desea crear un pedido de compra?'),
	(8, 'Se crearon correctamente pedidos de compra para | productos'),
	(9, 'No hay productos por debajo de sus respectivos niveles de reposición'),
	(10, 'Debe especificarse el nombre del cliente.'),
	(11, 'La reposición generará pedidos de compra para todos los productos por debajo de los niveles de inventario deseados. ¿Desea continuar?'),
	(12, 'No se puede crear el pedido de compra. No hay proveedores para el producto especificado.'),
	(13, 'El precio con descuento es inferior al costo.'),
	(14, '¿Desea continuar?'),
	(15, 'El pedido ya se ha facturado. ¿Desea imprimir la factura?'),
	(16, 'El pedido no contiene ningún elemento de línea'),
	(17, 'No se puede crear la factura. No se ha asignado inventario para cada producto especificado.'),
	(18, 'No hay ventas en el período de tiempo especificado'),
	(19, 'La reposición del producto ha sido correcta.'),
	(21, 'No es necesario reponer el producto. Ya tiene el nivel de inventario deseado.'),
	(22, 'Error de reposición de productos.'),
	(23, 'El inicio de sesión especificado no es válido.'),
	(24, 'Primero deben seleccionarse elementos para el informe.'),
	(25, 'Al cambiar el proveedor, se eliminarán los elementos de línea de compra. ¿Desea continuar?'),
	(26, 'Se enviaron correctamente pedidos de compra para | productos. ¿Desea ver el informe de reposición?'),
	(27, 'Error al intentar reponer los niveles de inventario.'),
	(28, 'Reposición correcta de | productos. ¿Desea ver el informe de reposición?'),
	(29, 'No se pueden quitar elementos de línea de compra que ya se han publicado en el inventario.'),
	(30, 'Error al quitar uno o varios elementos de línea de compra.'),
	(31, 'No se puede modificar la cantidad de los productos comprados que ya se han recibido o publicado en el inventario.'),
	(32, 'No se puede modificar el precio de los productos comprados que ya se han recibido o publicado en el inventario.'),
	(33, 'El producto se ha publicado correctamente en el inventario.'),
	(34, 'El producto no se puede publicar correctamente en el inventario.'),
	(35, 'Hay pedidos de este producto en lista de espera. ¿Desea servirlos ahora?'),
	(36, 'No se puede publicar el producto en el inventario sin especificar la fecha de recepción.'),
	(37, '¿Desea publicar el producto recibido en el inventario?'),
	(38, '¿Desea inicializar los datos de compras, pedidos e inventario?'),
	(39, 'Primero debe especificarse el nombre del empleado.'),
	(40, 'El usuario especificado debe haber iniciado sesión para aprobar la compra.'),
	(41, 'El pedido de compra debe contener elementos de línea completados para poder aprobarlo'),
	(42, 'No tiene permiso para aprobar compras.'),
	(43, 'Compra aprobada correctamente'),
	(44, 'No se puede aprobar la compra.'),
	(45, 'La compra se ha enviado correctamente para su aprobación'),
	(46, 'No se puede enviar la compra para su aprobación'),
	(47, 'El pedido de compra no contiene elementos de línea'),
	(48, '¿Desea cancelar este pedido?'),
	(49, 'Al cancelar un pedido, se eliminará permanentemente. ¿Confirma que desea cancelarlo?'),
	(100, 'El pedido se canceló correctamente.'),
	(101, 'No se puede cancelar un pedido que tiene elementos recibidos y publicados en el inventario.'),
	(102, 'Error al intentar cancelar este pedido.'),
	(103, 'Todavía no se ha creado la factura de este pedido.'),
	(104, 'La información de envío está incompleta. Especifique toda la información de envío y vuelva a intentarlo.'),
	(105, 'No se puede marcar como enviado: primero debe facturarse el pedido.'),
	(106, 'No se puede cancelar un pedido que ya se ha enviado.'),
	(107, 'Primero debe especificarse el vendedor.'),
	(108, 'El pedido está marcado como cerrado.'),
	(109, 'Primero el pedido debe marcarse como enviado antes de cerrarlo.'),
	(110, 'Primero debe especificarse la información de pago.'),
	(111, 'Error al intentar reponer los niveles de inventario. La reposición fue correcta para | productos.'),
	(112, 'Debe proporciona un coste unitario'),
	(113, 'Servir producto en lista de espera, pedido nº|'),
	(114, 'Compra generada basada en el pedido nº|');

-- Volcando estructura para tabla northwind.detalles_pedidos
CREATE TABLE IF NOT EXISTS `detalles_pedidos` (
  `detalle_pedido_id` int(11) NOT NULL AUTO_INCREMENT,
  `pedido_id` int(11) NOT NULL,
  `producto_id` int(11) DEFAULT NULL,
  `cantidad` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `precio` decimal(19,4) DEFAULT '0.0000',
  `descuento` double NOT NULL DEFAULT '0',
  `situacion_id` int(11) DEFAULT NULL,
  `fecha_asignación` datetime DEFAULT NULL,
  `pedido_compra_id` int(11) DEFAULT NULL,
  `inventario_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`detalle_pedido_id`) USING BTREE,
  KEY `FK_detalles_pedidos_pedidos` (`pedido_id`),
  KEY `FK_detalles_pedidos_productos` (`producto_id`),
  KEY `FK_detalles_pedidos_pedidos_compra` (`pedido_compra_id`),
  CONSTRAINT `FK_detalles_pedidos_pedidos` FOREIGN KEY (`pedido_id`) REFERENCES `pedidos` (`pedido_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_detalles_pedidos_pedidos_compra` FOREIGN KEY (`pedido_compra_id`) REFERENCES `pedidos_compra` (`pedido_compra_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_detalles_pedidos_productos` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`producto_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla northwind.detalles_pedidos: ~58 rows (aproximadamente)
INSERT INTO `detalles_pedidos` (`detalle_pedido_id`, `pedido_id`, `producto_id`, `cantidad`, `precio`, `descuento`, `situacion_id`, `fecha_asignación`, `pedido_compra_id`, `inventario_id`) VALUES
	(27, 30, 34, 100.0000, 14.0000, 0, 2, NULL, 96, 83),
	(28, 30, 80, 30.0000, 3.5000, 0, 2, NULL, NULL, 63),
	(29, 31, 7, 10.0000, 30.0000, 0, 2, NULL, NULL, 64),
	(30, 31, 51, 10.0000, 53.0000, 0, 2, NULL, NULL, 65),
	(31, 31, 80, 10.0000, 3.5000, 0, 2, NULL, NULL, 66),
	(32, 32, 1, 15.0000, 18.0000, 0, 2, NULL, NULL, 67),
	(33, 32, 43, 20.0000, 46.0000, 0, 2, NULL, NULL, 68),
	(34, 33, 19, 30.0000, 9.2000, 0, 2, NULL, 97, 81),
	(35, 34, 19, 20.0000, 9.2000, 0, 2, NULL, NULL, 69),
	(36, 35, 48, 10.0000, 12.7500, 0, 2, NULL, NULL, 70),
	(37, 36, 41, 200.0000, 9.6500, 0, 2, NULL, 98, 79),
	(38, 37, 8, 17.0000, 40.0000, 0, 2, NULL, NULL, 71),
	(39, 38, 43, 300.0000, 46.0000, 0, 2, NULL, 99, 77),
	(40, 39, 48, 100.0000, 12.7500, 0, 2, NULL, 100, 75),
	(41, 40, 81, 200.0000, 2.9900, 0, 2, NULL, 101, 73),
	(42, 41, 43, 300.0000, 46.0000, 0, 1, NULL, 102, 104),
	(43, 42, 6, 10.0000, 25.0000, 0, 2, NULL, NULL, 84),
	(44, 42, 4, 10.0000, 22.0000, 0, 2, NULL, NULL, 85),
	(45, 42, 19, 10.0000, 9.2000, 0, 2, NULL, 103, 110),
	(46, 43, 80, 20.0000, 3.5000, 0, 1, NULL, NULL, 86),
	(47, 43, 81, 50.0000, 2.9900, 0, 1, NULL, NULL, 87),
	(48, 44, 1, 25.0000, 18.0000, 0, 1, NULL, NULL, 88),
	(49, 44, 43, 25.0000, 46.0000, 0, 1, NULL, NULL, 89),
	(50, 44, 81, 25.0000, 2.9900, 0, 1, NULL, NULL, 90),
	(51, 45, 41, 50.0000, 9.6500, 0, 2, NULL, 104, 116),
	(52, 45, 40, 50.0000, 18.4000, 0, 2, NULL, NULL, 91),
	(53, 46, 57, 100.0000, 19.5000, 0, 2, NULL, 105, 101),
	(54, 46, 72, 50.0000, 34.8000, 0, 2, NULL, 106, 114),
	(55, 47, 34, 300.0000, 14.0000, 0, 2, NULL, 107, 108),
	(56, 48, 8, 25.0000, 40.0000, 0, 2, NULL, 108, 106),
	(57, 48, 19, 25.0000, 9.2000, 0, 2, NULL, 109, 112),
	(59, 50, 21, 20.0000, 10.0000, 0, 2, NULL, NULL, 92),
	(60, 51, 5, 25.0000, 21.3500, 0, 2, NULL, NULL, 93),
	(61, 51, 41, 30.0000, 9.6500, 0, 2, NULL, NULL, 94),
	(62, 51, 40, 30.0000, 18.4000, 0, 2, NULL, NULL, 95),
	(66, 56, 48, 10.0000, 12.7500, 0, 2, NULL, 111, 99),
	(67, 55, 34, 87.0000, 14.0000, 0, 2, NULL, NULL, 117),
	(68, 79, 7, 30.0000, 30.0000, 0, 2, NULL, NULL, 119),
	(69, 79, 51, 30.0000, 53.0000, 0, 2, NULL, NULL, 118),
	(70, 78, 17, 40.0000, 39.0000, 0, 2, NULL, NULL, 120),
	(71, 77, 6, 90.0000, 25.0000, 0, 2, NULL, NULL, 121),
	(72, 76, 4, 30.0000, 22.0000, 0, 2, NULL, NULL, 122),
	(73, 75, 48, 40.0000, 12.7500, 0, 2, NULL, NULL, 123),
	(74, 74, 48, 40.0000, 12.7500, 0, 2, NULL, NULL, 124),
	(75, 73, 41, 10.0000, 9.6500, 0, 2, NULL, NULL, 125),
	(76, 72, 43, 5.0000, 46.0000, 0, 2, NULL, NULL, 126),
	(77, 71, 40, 40.0000, 18.4000, 0, 2, NULL, NULL, 127),
	(78, 70, 8, 20.0000, 40.0000, 0, 2, NULL, NULL, 128),
	(79, 69, 80, 15.0000, 3.5000, 0, 2, NULL, NULL, 129),
	(80, 67, 74, 20.0000, 10.0000, 0, 2, NULL, NULL, 130),
	(81, 60, 72, 40.0000, 34.8000, 0, 2, NULL, NULL, 131),
	(82, 63, 3, 50.0000, 10.0000, 0, 2, NULL, NULL, 132),
	(83, 63, 8, 3.0000, 40.0000, 0, 2, NULL, NULL, 133),
	(84, 58, 20, 40.0000, 81.0000, 0, 2, NULL, NULL, 134),
	(85, 58, 52, 40.0000, 7.0000, 0, 2, NULL, NULL, 135),
	(86, 80, 56, 10.0000, 38.0000, 0, 1, NULL, NULL, 136),
	(90, 81, 81, 0.0000, 2.9900, 0, 5, NULL, NULL, NULL),
	(91, 81, 56, 0.0000, 38.0000, 0, 0, NULL, NULL, NULL);

-- Volcando estructura para tabla northwind.detalles_pedidos_compra
CREATE TABLE IF NOT EXISTS `detalles_pedidos_compra` (
  `detalle_pedido_compra_id` int(11) NOT NULL AUTO_INCREMENT,
  `pedido_compra_id` int(11) NOT NULL,
  `producto_id` int(11) DEFAULT NULL,
  `cantidad` decimal(18,4) NOT NULL,
  `unitario` decimal(19,4) NOT NULL,
  `fecha_recepción` datetime DEFAULT NULL,
  `publicacion_inventario` tinyint(1) NOT NULL DEFAULT '0',
  `inventario_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`detalle_pedido_compra_id`) USING BTREE,
  KEY `FK_detalles_pedidos_compra_pedidos_compra` (`pedido_compra_id`),
  KEY `FK_detalles_pedidos_compra_productos` (`producto_id`),
  CONSTRAINT `FK_detalles_pedidos_compra_pedidos_compra` FOREIGN KEY (`pedido_compra_id`) REFERENCES `pedidos_compra` (`pedido_compra_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_detalles_pedidos_compra_productos` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`producto_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=296 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla northwind.detalles_pedidos_compra: ~55 rows (aproximadamente)
INSERT INTO `detalles_pedidos_compra` (`detalle_pedido_compra_id`, `pedido_compra_id`, `producto_id`, `cantidad`, `unitario`, `fecha_recepción`, `publicacion_inventario`, `inventario_id`) VALUES
	(238, 90, 1, 40.0000, 14.0000, '2006-01-22 00:00:00', 1, 59),
	(239, 91, 3, 100.0000, 8.0000, '2006-01-22 00:00:00', 1, 54),
	(240, 91, 4, 40.0000, 16.0000, '2006-01-22 00:00:00', 1, 55),
	(241, 91, 5, 40.0000, 16.0000, '2006-01-22 00:00:00', 1, 56),
	(242, 92, 6, 100.0000, 19.0000, '2006-01-22 00:00:00', 1, 40),
	(243, 92, 7, 40.0000, 22.0000, '2006-01-22 00:00:00', 1, 41),
	(244, 92, 8, 40.0000, 30.0000, '2006-01-22 00:00:00', 1, 42),
	(245, 92, 14, 40.0000, 17.0000, '2006-01-22 00:00:00', 1, 43),
	(246, 92, 17, 40.0000, 29.0000, '2006-01-22 00:00:00', 1, 44),
	(247, 92, 19, 20.0000, 7.0000, '2006-01-22 00:00:00', 1, 45),
	(248, 92, 20, 40.0000, 61.0000, '2006-01-22 00:00:00', 1, 46),
	(249, 92, 21, 20.0000, 8.0000, '2006-01-22 00:00:00', 1, 47),
	(250, 90, 34, 60.0000, 10.0000, '2006-01-22 00:00:00', 1, 60),
	(251, 92, 40, 120.0000, 14.0000, '2006-01-22 00:00:00', 1, 48),
	(252, 92, 41, 40.0000, 7.0000, '2006-01-22 00:00:00', 1, 49),
	(253, 90, 43, 100.0000, 34.0000, '2006-01-22 00:00:00', 1, 61),
	(254, 92, 48, 100.0000, 10.0000, '2006-01-22 00:00:00', 1, 50),
	(255, 92, 51, 40.0000, 40.0000, '2006-01-22 00:00:00', 1, 51),
	(256, 93, 52, 100.0000, 5.0000, '2006-01-22 00:00:00', 1, 37),
	(257, 93, 56, 120.0000, 28.0000, '2006-01-22 00:00:00', 1, 38),
	(258, 93, 57, 80.0000, 15.0000, '2006-01-22 00:00:00', 1, 39),
	(259, 91, 65, 40.0000, 16.0000, '2006-01-22 00:00:00', 1, 57),
	(260, 91, 66, 80.0000, 13.0000, '2006-01-22 00:00:00', 1, 58),
	(261, 94, 72, 40.0000, 26.0000, '2006-01-22 00:00:00', 1, 36),
	(262, 92, 74, 20.0000, 8.0000, '2006-01-22 00:00:00', 1, 52),
	(263, 92, 77, 60.0000, 10.0000, '2006-01-22 00:00:00', 1, 53),
	(264, 95, 80, 75.0000, 3.0000, '2006-01-22 00:00:00', 1, 35),
	(265, 90, 81, 125.0000, 2.0000, '2006-01-22 00:00:00', 1, 62),
	(266, 96, 34, 100.0000, 10.0000, '2006-01-22 00:00:00', 1, 82),
	(267, 97, 19, 30.0000, 7.0000, '2006-01-22 00:00:00', 1, 80),
	(268, 98, 41, 200.0000, 7.0000, '2006-01-22 00:00:00', 1, 78),
	(269, 99, 43, 300.0000, 34.0000, '2006-01-22 00:00:00', 1, 76),
	(270, 100, 48, 100.0000, 10.0000, '2006-01-22 00:00:00', 1, 74),
	(271, 101, 81, 200.0000, 2.0000, '2006-01-22 00:00:00', 1, 72),
	(272, 102, 43, 300.0000, 34.0000, NULL, 0, NULL),
	(273, 103, 19, 10.0000, 7.0000, '2006-04-17 00:00:00', 1, 111),
	(274, 104, 41, 50.0000, 7.0000, '2006-04-06 00:00:00', 1, 115),
	(275, 105, 57, 100.0000, 15.0000, '2006-04-05 00:00:00', 1, 100),
	(276, 106, 72, 50.0000, 26.0000, '2006-04-05 00:00:00', 1, 113),
	(277, 107, 34, 300.0000, 10.0000, '2006-04-05 00:00:00', 1, 107),
	(278, 108, 8, 25.0000, 30.0000, '2006-04-05 00:00:00', 1, 105),
	(279, 109, 19, 25.0000, 7.0000, '2006-04-05 00:00:00', 1, 109),
	(280, 110, 43, 250.0000, 34.0000, '2006-04-10 00:00:00', 1, 103),
	(281, 90, 1, 40.0000, 14.0000, NULL, 0, NULL),
	(282, 92, 19, 20.0000, 7.0000, NULL, 0, NULL),
	(283, 111, 34, 50.0000, 10.0000, '2006-04-04 00:00:00', 1, 102),
	(285, 91, 3, 50.0000, 8.0000, NULL, 0, NULL),
	(286, 91, 4, 40.0000, 16.0000, NULL, 0, NULL),
	(288, 140, 85, 10.0000, 9.0000, NULL, 0, NULL),
	(289, 141, 6, 10.0000, 18.7500, NULL, 0, NULL),
	(290, 142, 1, 1.0000, 13.5000, NULL, 0, NULL),
	(292, 146, 20, 40.0000, 60.0000, NULL, 0, NULL),
	(293, 146, 51, 40.0000, 39.0000, NULL, 0, NULL),
	(294, 147, 40, 120.0000, 13.0000, NULL, 0, NULL),
	(295, 148, 72, 40.0000, 26.0000, NULL, 0, NULL);

-- Volcando estructura para tabla northwind.empleados
CREATE TABLE IF NOT EXISTS `empleados` (
  `empleado_id` int(11) NOT NULL AUTO_INCREMENT,
  `empresa` varchar(50) DEFAULT NULL,
  `apellidos` varchar(50) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `cargo` varchar(50) DEFAULT NULL,
  `telefono_trabajo` varchar(25) DEFAULT NULL,
  `telefono_particular` varchar(25) DEFAULT NULL,
  `telefono_movil` varchar(25) DEFAULT NULL,
  `fax` varchar(25) DEFAULT NULL,
  `direccion` longtext,
  `ciudad` varchar(50) DEFAULT NULL,
  `provincia` varchar(50) DEFAULT NULL,
  `codigo_postal` varchar(15) DEFAULT NULL,
  `pais` varchar(50) DEFAULT NULL,
  `web` longtext,
  `notas` longtext,
  `adjuntos` longblob,
  PRIMARY KEY (`empleado_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla northwind.empleados: ~9 rows (aproximadamente)
INSERT INTO `empleados` (`empleado_id`, `empresa`, `apellidos`, `nombre`, `email`, `cargo`, `telefono_trabajo`, `telefono_particular`, `telefono_movil`, `fax`, `direccion`, `ciudad`, `provincia`, `codigo_postal`, `pais`, `web`, `notas`, `adjuntos`) VALUES
	(1, 'Northwind Traders', 'González', 'María', 'nancy@northwindtraders.com', 'Representante de ventas', '987 654 321', '987 654 321', NULL, '987 654 321', 'Avenida Primera, 123', 'Seattle', 'Madrid', '99999', 'España', '#http://northwindtraders.com#', NULL, _binary ''),
	(2, 'Northwind Traders', 'Escolar', 'Jesús', 'andrew@northwindtraders.com', 'Vicepresidente de ventas', '987 654 321', '987 654 321', NULL, '987 654 321', 'Avenida Segunda, 123', 'Bellevue', 'Madrid', '99999', 'España', 'http://northwindtraders.com#http://northwindtraders.com/#', 'Empezó en la compañía como representante de ventas, ascendió a director comercial y, después, fue nombrado vicepresidente de ventas.', _binary ''),
	(3, 'Northwind Traders', 'Pinilla Gallego', 'Pilar', 'jan@northwindtraders.com', 'Representante de ventas', '987 654 321', '987 654 321', NULL, '987 654 321', 'Avenida Tercera, 123', 'Redmond', 'Madrid', '99999', 'España', 'http://northwindtraders.com#http://northwindtraders.com/#', 'Fue contratado como ayudante de ventas y ascendió a representante de ventas.', _binary ''),
	(4, 'Northwind Traders', 'Jesús Cuesta', 'María', 'mariya@northwindtraders.com', 'Representante de ventas', '987 654 321', '987 654 321', NULL, '987 654 321', 'Avenida Cuarta, 123', 'Kirkland', 'Madrid', '99999', 'España', 'http://northwindtraders.com#http://northwindtraders.com/#', NULL, _binary ''),
	(5, 'Northwind Traders', 'San Juan', 'Patricia', 'steven@northwindtraders.com', 'Jefe de ventas', '987 654 321', '987 654 321', NULL, '987 654 321', 'Avenida Quinta, 123', 'Seattle', 'Madrid', '99999', 'España', 'http://northwindtraders.com#http://northwindtraders.com/#', 'Empezó en la empresa como representante de ventas y ascendió a director comercial. Habla francés.', _binary ''),
	(6, 'Northwind Traders', 'Rivas', 'Juan Carlos', 'michael@northwindtraders.com', 'Representante de ventas', '987 654 321', '987 654 321', NULL, '987 654 321', 'Avenida Sexta, 123', 'Redmond', 'Madrid', '99999', 'España', 'http://northwindtraders.com#http://northwindtraders.com/#', 'Habla japonés y lee y escribe en francés, portugués y español.', _binary ''),
	(7, 'Northwind Traders', 'Acevedo', 'Humberto', 'robert@northwindtraders.com', 'Representante de ventas', '987 654 321', '987 654 321', NULL, '987 654 321', 'Avenida Séptima, 123', 'Seattle', 'Madrid', '99999', 'España', 'http://northwindtraders.com#http://northwindtraders.com/#', NULL, _binary ''),
	(8, 'Northwind Traders', 'Bonifaz', 'Luis', 'laura@northwindtraders.com', 'Coordinador de ventas', '987 654 321', '987 654 321', NULL, '987 654 321', 'Avenida Octava, 123', 'Redmond', 'Madrid', '99999', 'España', 'http://northwindtraders.com#http://northwindtraders.com/#', 'Lee y escribe francés.', _binary ''),
	(9, 'Northwind Traders', 'Chaves', 'Francisco', 'anne@northwindtraders.com', 'Representante de ventas', '987 654 321', '987 654 321', NULL, '987 654 321', 'Avenida Novena, 123', 'Seattle', 'Madrid', '99999', 'España', 'http://northwindtraders.com#http://northwindtraders.com/#', 'Habla francés y alemán.', _binary '');

-- Volcando estructura para tabla northwind.estado_detalles_pedidos
CREATE TABLE IF NOT EXISTS `estado_detalles_pedidos` (
  `estado_detalle_pedido_id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_estado` varchar(50) NOT NULL,
  PRIMARY KEY (`estado_detalle_pedido_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla northwind.estado_detalles_pedidos: ~6 rows (aproximadamente)
INSERT INTO `estado_detalles_pedidos` (`estado_detalle_pedido_id`, `nombre_estado`) VALUES
	(1, 'Ninguno'),
	(2, 'Asignado'),
	(3, 'Facturado'),
	(4, 'Enviado'),
	(5, 'En pedido'),
	(6, 'Sin existencias');

-- Volcando estructura para tabla northwind.estado_impuestos_pedidos
CREATE TABLE IF NOT EXISTS `estado_impuestos_pedidos` (
  `estado_impuesto_pedido_id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_estado_impuestos` varchar(50) NOT NULL,
  PRIMARY KEY (`estado_impuesto_pedido_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla northwind.estado_impuestos_pedidos: ~2 rows (aproximadamente)
INSERT INTO `estado_impuestos_pedidos` (`estado_impuesto_pedido_id`, `nombre_estado_impuestos`) VALUES
	(1, 'Exento de impuestos'),
	(2, 'Sujeto a impuestos');

-- Volcando estructura para tabla northwind.estado_pedidos
CREATE TABLE IF NOT EXISTS `estado_pedidos` (
  `estado_pedido_id` int(11) NOT NULL,
  `estado` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`estado_pedido_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla northwind.estado_pedidos: ~4 rows (aproximadamente)
INSERT INTO `estado_pedidos` (`estado_pedido_id`, `estado`) VALUES
	(0, 'Nuevo'),
	(1, 'Enviado'),
	(2, 'Aprobado'),
	(3, 'Cerrado');

-- Volcando estructura para tabla northwind.facturas
CREATE TABLE IF NOT EXISTS `facturas` (
  `factura_id` int(11) NOT NULL AUTO_INCREMENT,
  `periodo_id` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `fecha_vencimiento` datetime DEFAULT NULL,
  `impuestos` decimal(19,4) DEFAULT '0.0000',
  `envío` decimal(19,4) DEFAULT '0.0000',
  `importe_debido` decimal(19,4) DEFAULT '0.0000',
  PRIMARY KEY (`factura_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla northwind.facturas: ~35 rows (aproximadamente)
INSERT INTO `facturas` (`factura_id`, `periodo_id`, `fecha`, `fecha_vencimiento`, `impuestos`, `envío`, `importe_debido`) VALUES
	(5, 31, '2006-03-22 16:08:59', NULL, 0.0000, 0.0000, 0.0000),
	(6, 32, '2006-03-22 16:10:27', NULL, 0.0000, 0.0000, 0.0000),
	(7, 40, '2006-03-24 10:41:41', NULL, 0.0000, 0.0000, 0.0000),
	(8, 39, '2006-03-24 10:55:46', NULL, 0.0000, 0.0000, 0.0000),
	(9, 38, '2006-03-24 10:56:57', NULL, 0.0000, 0.0000, 0.0000),
	(10, 37, '2006-03-24 10:57:38', NULL, 0.0000, 0.0000, 0.0000),
	(11, 36, '2006-03-24 10:58:40', NULL, 0.0000, 0.0000, 0.0000),
	(12, 35, '2006-03-24 10:59:41', NULL, 0.0000, 0.0000, 0.0000),
	(13, 34, '2006-03-24 11:00:55', NULL, 0.0000, 0.0000, 0.0000),
	(14, 33, '2006-03-24 11:02:02', NULL, 0.0000, 0.0000, 0.0000),
	(15, 30, '2006-03-24 11:03:00', NULL, 0.0000, 0.0000, 0.0000),
	(16, 56, '2006-04-03 13:50:15', NULL, 0.0000, 0.0000, 0.0000),
	(17, 55, '2006-04-04 11:05:04', NULL, 0.0000, 0.0000, 0.0000),
	(18, 51, '2006-04-04 11:06:13', NULL, 0.0000, 0.0000, 0.0000),
	(19, 50, '2006-04-04 11:06:56', NULL, 0.0000, 0.0000, 0.0000),
	(20, 48, '2006-04-04 11:07:37', NULL, 0.0000, 0.0000, 0.0000),
	(21, 47, '2006-04-04 11:08:14', NULL, 0.0000, 0.0000, 0.0000),
	(22, 46, '2006-04-04 11:08:49', NULL, 0.0000, 0.0000, 0.0000),
	(23, 45, '2006-04-04 11:09:24', NULL, 0.0000, 0.0000, 0.0000),
	(24, 79, '2006-04-04 11:35:54', NULL, 0.0000, 0.0000, 0.0000),
	(25, 78, '2006-04-04 11:36:21', NULL, 0.0000, 0.0000, 0.0000),
	(26, 77, '2006-04-04 11:36:47', NULL, 0.0000, 0.0000, 0.0000),
	(27, 76, '2006-04-04 11:37:09', NULL, 0.0000, 0.0000, 0.0000),
	(28, 75, '2006-04-04 11:37:49', NULL, 0.0000, 0.0000, 0.0000),
	(29, 74, '2006-04-04 11:38:11', NULL, 0.0000, 0.0000, 0.0000),
	(30, 73, '2006-04-04 11:38:32', NULL, 0.0000, 0.0000, 0.0000),
	(31, 72, '2006-04-04 11:38:53', NULL, 0.0000, 0.0000, 0.0000),
	(32, 71, '2006-04-04 11:39:29', NULL, 0.0000, 0.0000, 0.0000),
	(33, 70, '2006-04-04 11:39:53', NULL, 0.0000, 0.0000, 0.0000),
	(34, 69, '2006-04-04 11:40:16', NULL, 0.0000, 0.0000, 0.0000),
	(35, 67, '2006-04-04 11:40:38', NULL, 0.0000, 0.0000, 0.0000),
	(36, 42, '2006-04-04 11:41:14', NULL, 0.0000, 0.0000, 0.0000),
	(37, 60, '2006-04-04 11:41:45', NULL, 0.0000, 0.0000, 0.0000),
	(38, 63, '2006-04-04 11:42:26', NULL, 0.0000, 0.0000, 0.0000),
	(39, 58, '2006-04-04 11:43:08', NULL, 0.0000, 0.0000, 0.0000);

-- Volcando estructura para tabla northwind.informes_ventas
CREATE TABLE IF NOT EXISTS `informes_ventas` (
  `agrupar_por` varchar(50) NOT NULL,
  `mostrar` varchar(50) DEFAULT NULL,
  `titulo` varchar(50) DEFAULT NULL,
  `origen_fila_filtro` longtext,
  `predeterminado` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`agrupar_por`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla northwind.informes_ventas: ~5 rows (aproximadamente)
INSERT INTO `informes_ventas` (`agrupar_por`, `mostrar`, `titulo`, `origen_fila_filtro`, `predeterminado`) VALUES
	('Categoría', 'Categoría', 'Ventas por categoría', 'SELECT DISTINCT [categoria] FROM [productos] ORDER BY [categoria];', 0),
	('cliente_id', 'Cliente', 'Ventas por cliente', 'SELECT DISTINCT [empresa] FROM [clientes_ampliados] ORDER BY [empresa];', 0),
	('empleado_id', 'Empleado', 'Ventas por empleado', 'SELECT DISTINCT [nombre_empleado] FROM [empleados_ampliados] ORDER BY [nombre_empleado];', 0),
	('pais', 'País o región', 'Ventas por país', 'SELECT DISTINCT [pais] FROM [clientes_ampliados] ORDER BY [pais];', 0),
	('producto_id', 'Producto', 'Ventas por producto', 'SELECT DISTINCT [nombre_producto] FROM [productos] ORDER BY [nombre_producto];', 1);

-- Volcando estructura para tabla northwind.pedidos
CREATE TABLE IF NOT EXISTS `pedidos` (
  `pedido_id` int(11) NOT NULL AUTO_INCREMENT,
  `empleado_id` int(11) DEFAULT NULL,
  `cliente_id` int(11) DEFAULT NULL,
  `fecha_pedido` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_envío` datetime DEFAULT NULL,
  `transportista_id` int(11) DEFAULT NULL,
  `nombre_envío` varchar(50) DEFAULT NULL,
  `direccion_envio` longtext,
  `ciudad_destino` varchar(50) DEFAULT NULL,
  `provincia_destino` varchar(50) DEFAULT NULL,
  `codigo_postal_envio` varchar(50) DEFAULT NULL,
  `pais_envio` varchar(50) DEFAULT NULL,
  `gastos_envio` decimal(19,4) DEFAULT '0.0000',
  `impuestos` decimal(19,4) DEFAULT '0.0000',
  `tipo_pago` varchar(50) DEFAULT NULL,
  `fecha_pago` datetime DEFAULT NULL,
  `notas` longtext,
  `tipo_impuesto` decimal(19,4) DEFAULT '0.0000',
  `estado_impuesto_pedido_id` int(11) DEFAULT NULL,
  `estado_pedido_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`pedido_id`) USING BTREE,
  KEY `FK_pedidos_empleados` (`empleado_id`),
  KEY `FK_pedidos_clientes` (`cliente_id`),
  KEY `FK_pedidos_estado_pedidos` (`estado_pedido_id`),
  KEY `FK_pedidos_estado_impuestos_pedidos` (`estado_impuesto_pedido_id`),
  KEY `FK_pedidos_transportistas` (`transportista_id`),
  CONSTRAINT `FK_pedidos_clientes` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`cliente_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_pedidos_empleados` FOREIGN KEY (`empleado_id`) REFERENCES `empleados` (`empleado_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_pedidos_estado_impuestos_pedidos` FOREIGN KEY (`estado_impuesto_pedido_id`) REFERENCES `estado_impuestos_pedidos` (`estado_impuesto_pedido_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_pedidos_estado_pedidos` FOREIGN KEY (`estado_pedido_id`) REFERENCES `estado_pedidos` (`estado_pedido_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_pedidos_transportistas` FOREIGN KEY (`transportista_id`) REFERENCES `transportistas` (`transportista_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla northwind.pedidos: ~48 rows (aproximadamente)
INSERT INTO `pedidos` (`pedido_id`, `empleado_id`, `cliente_id`, `fecha_pedido`, `fecha_envío`, `transportista_id`, `nombre_envío`, `direccion_envio`, `ciudad_destino`, `provincia_destino`, `codigo_postal_envio`, `pais_envio`, `gastos_envio`, `impuestos`, `tipo_pago`, `fecha_pago`, `notas`, `tipo_impuesto`, `estado_impuesto_pedido_id`, `estado_pedido_id`) VALUES
	(30, 9, 27, '2006-01-15 03:00:00', '2006-01-22 00:00:00', 2, 'Karen Toh', 'Calle Vigesimoséptima, 123', 'Las Vegas', 'NV', '99999', 'España', 200.0000, 0.0000, 'Cheque', '2006-01-15 00:00:00', NULL, 0.0000, NULL, 3),
	(31, 3, 4, '2006-01-20 03:00:00', '2006-01-22 00:00:00', 4, 'Christina Lee', 'Calle Cuarta, 123', 'Nueva York', 'NY', '99999', 'España', 5.0000, 0.0000, 'Tarjeta de crédito', '2006-01-20 00:00:00', NULL, 0.0000, NULL, 3),
	(32, 4, 12, '2006-01-22 03:00:00', '2006-01-22 00:00:00', 2, 'John Edwards', 'Calle Decimosegunda, 123', 'Las Vegas', 'NV', '99999', 'España', 5.0000, 0.0000, 'Tarjeta de crédito', '2006-01-22 00:00:00', NULL, 0.0000, NULL, 3),
	(33, 6, 8, '2006-01-30 03:00:00', '2006-01-31 00:00:00', 3, 'Elizabeth Andersen', 'Calle Octava, 123', 'Portland', 'OR', '99999', 'España', 50.0000, 0.0000, 'Tarjeta de crédito', '2006-01-30 00:00:00', NULL, 0.0000, NULL, 3),
	(34, 9, 4, '2006-02-06 03:00:00', '2006-02-07 00:00:00', 3, 'Christina Lee', 'Calle Cuarta, 123', 'Nueva York', 'NY', '99999', 'España', 4.0000, 0.0000, 'Cheque', '2006-02-06 00:00:00', NULL, 0.0000, NULL, 3),
	(35, 3, 29, '2006-02-10 03:00:00', '2006-02-12 00:00:00', 2, 'Soo Jung Lee', 'Calle Vigesimonovena, 123', 'Denver', 'CO', '99999', 'España', 7.0000, 0.0000, 'Cheque', '2006-02-10 00:00:00', NULL, 0.0000, NULL, 3),
	(36, 4, 3, '2006-02-23 03:00:00', '2006-02-25 00:00:00', 2, 'Thomas Axen', 'Calle Tercera, 123', 'Los Ángeles', 'CA', '99999', 'España', 7.0000, 0.0000, 'Efectivo', '2006-02-23 00:00:00', NULL, 0.0000, NULL, 3),
	(37, 8, 6, '2006-03-06 03:00:00', '2006-03-09 00:00:00', 2, 'Francisco Pérez-Olaeta', 'Calle Sexta, 123', 'Milwaukee', 'WI', '99999', 'España', 12.0000, 0.0000, 'Tarjeta de crédito', '2006-03-06 00:00:00', NULL, 0.0000, NULL, 3),
	(38, 9, 28, '2006-03-10 03:00:00', '2006-03-11 00:00:00', 3, 'Amritansh Raghav', 'Calle Vigesimoséptima, 123', 'Memphis', 'TN', '99999', 'España', 10.0000, 0.0000, 'Cheque', '2006-03-10 00:00:00', NULL, 0.0000, NULL, 3),
	(39, 3, 8, '2006-03-22 03:00:00', '2006-03-24 00:00:00', 3, 'Elizabeth Andersen', 'Calle Octava, 123', 'Portland', 'OR', '99999', 'España', 5.0000, 0.0000, 'Cheque', '2006-03-22 00:00:00', NULL, 0.0000, NULL, 3),
	(40, 4, 10, '2006-03-24 03:00:00', '2006-03-24 00:00:00', 2, 'Roland Wacker', 'Calle Décima, 123', 'Chicago', 'IL', '99999', 'España', 9.0000, 0.0000, 'Tarjeta de crédito', '2006-03-24 00:00:00', NULL, 0.0000, NULL, 3),
	(41, 1, 7, '2006-03-24 03:00:00', NULL, 1, 'Ming-Yang Xie', 'Calle Séptima, 123', 'Boise', 'ID', '99999', 'España', 0.0000, 0.0000, NULL, NULL, NULL, 0.0000, NULL, 0),
	(42, 1, 10, '2006-03-24 03:00:00', '2006-04-07 00:00:00', 4, 'Roland Wacker', 'Calle Décima, 123', 'Chicago', 'IL', '99999', 'España', 0.0000, 0.0000, NULL, NULL, NULL, 0.0000, NULL, 2),
	(43, 1, 11, '2006-03-24 03:00:00', NULL, 3, 'Peter Krschne', 'Calle Decimoprimera, 123', 'Miami', 'FL', '99999', 'España', 0.0000, 0.0000, NULL, NULL, NULL, 0.0000, NULL, 0),
	(44, 1, 1, '2006-03-24 03:00:00', NULL, 1, 'Anna Bedecs', 'Calle Primera, 123', 'Seattle', 'Madrid', '99999', 'España', 0.0000, 0.0000, NULL, NULL, NULL, 0.0000, NULL, 0),
	(45, 1, 28, '2006-04-07 03:00:00', '2006-04-07 00:00:00', 3, 'Amritansh Raghav', 'Calle Vigesimoséptima, 123', 'Memphis', 'TN', '99999', 'España', 40.0000, 0.0000, 'Tarjeta de crédito', '2006-04-07 00:00:00', NULL, 0.0000, NULL, 3),
	(46, 7, 9, '2006-04-05 03:00:00', '2006-04-05 00:00:00', 1, 'Sven Mortensen', 'Calle Novena, 123', 'Salt Lake City', 'UT', '99999', 'España', 100.0000, 0.0000, 'Cheque', '2006-04-05 00:00:00', NULL, 0.0000, NULL, 3),
	(47, 6, 6, '2006-04-08 03:00:00', '2006-04-08 00:00:00', 2, 'Francisco Pérez-Olaeta', 'Calle Sexta, 123', 'Milwaukee', 'WI', '99999', 'España', 300.0000, 0.0000, 'Tarjeta de crédito', '2006-04-08 00:00:00', NULL, 0.0000, NULL, 3),
	(48, 4, 8, '2006-04-05 03:00:00', '2006-04-05 00:00:00', 2, 'Elizabeth Andersen', 'Calle Octava, 123', 'Portland', 'OR', '99999', 'España', 50.0000, 0.0000, 'Cheque', '2006-04-05 00:00:00', NULL, 0.0000, NULL, 3),
	(50, 9, 25, '2006-04-05 03:00:00', '2006-04-05 00:00:00', 1, 'John Rodman', 'Calle Vigesimoquinta, 123', 'Chicago', 'IL', '99999', 'España', 5.0000, 0.0000, 'Efectivo', '2006-04-05 00:00:00', NULL, 0.0000, NULL, 3),
	(51, 9, 26, '2006-04-05 03:00:00', '2006-04-05 00:00:00', 3, 'Run Liu', 'Calle Vigesimosexta, 123', 'Miami', 'FL', '99999', 'España', 60.0000, 0.0000, 'Tarjeta de crédito', '2006-04-05 00:00:00', NULL, 0.0000, NULL, 3),
	(55, 1, 29, '2006-04-05 03:00:00', '2006-04-05 00:00:00', 2, 'Soo Jung Lee', 'Calle Vigesimonovena, 123', 'Denver', 'CO', '99999', 'España', 200.0000, 0.0000, 'Cheque', '2006-04-05 00:00:00', NULL, 0.0000, NULL, 3),
	(56, 2, 6, '2006-04-03 03:00:00', '2006-04-03 00:00:00', 3, 'Francisco Pérez-Olaeta', 'Calle Sexta, 123', 'Milwaukee', 'WI', '99999', 'España', 0.0000, 0.0000, 'Cheque', '2006-04-03 00:00:00', NULL, 0.0000, NULL, 3),
	(57, 9, 27, '2006-04-22 03:00:00', '2006-04-22 00:00:00', 2, 'Karen Toh', 'Calle Vigesimoséptima, 123', 'Las Vegas', 'NV', '99999', 'España', 200.0000, 0.0000, 'Cheque', '2006-04-22 00:00:00', NULL, 0.0000, NULL, 0),
	(58, 3, 4, '2006-04-22 03:00:00', '2006-04-22 00:00:00', 4, 'Christina Lee', 'Calle Cuarta, 123', 'Nueva York', 'NY', '99999', 'España', 5.0000, 0.0000, 'Tarjeta de crédito', '2006-04-22 00:00:00', NULL, 0.0000, NULL, 3),
	(59, 4, 12, '2006-04-22 03:00:00', '2006-04-22 00:00:00', 2, 'John Edwards', 'Calle Decimosegunda, 123', 'Las Vegas', 'NV', '99999', 'España', 5.0000, 0.0000, 'Tarjeta de crédito', '2006-04-22 00:00:00', NULL, 0.0000, NULL, 0),
	(60, 6, 8, '2006-04-30 03:00:00', '2006-04-30 00:00:00', 3, 'Elizabeth Andersen', 'Calle Octava, 123', 'Portland', 'OR', '99999', 'España', 50.0000, 0.0000, 'Tarjeta de crédito', '2006-04-30 00:00:00', NULL, 0.0000, NULL, 3),
	(61, 9, 4, '2006-04-07 03:00:00', '2006-04-07 00:00:00', 3, 'Christina Lee', 'Calle Cuarta, 123', 'Nueva York', 'NY', '99999', 'España', 4.0000, 0.0000, 'Cheque', '2006-04-07 00:00:00', NULL, 0.0000, NULL, 0),
	(62, 3, 29, '2006-04-12 03:00:00', '2006-04-12 00:00:00', 2, 'Soo Jung Lee', 'Calle Vigesimonovena, 123', 'Denver', 'CO', '99999', 'España', 7.0000, 0.0000, 'Cheque', '2006-04-12 00:00:00', NULL, 0.0000, NULL, 0),
	(63, 4, 3, '2006-04-25 03:00:00', '2006-04-25 00:00:00', 2, 'Thomas Axen', 'Calle Tercera, 123', 'Los Ángeles', 'CA', '99999', 'España', 7.0000, 0.0000, 'Efectivo', '2006-04-25 00:00:00', NULL, 0.0000, NULL, 3),
	(64, 8, 6, '2006-05-09 03:00:00', '2006-05-09 00:00:00', 2, 'Francisco Pérez-Olaeta', 'Calle Sexta, 123', 'Milwaukee', 'WI', '99999', 'España', 12.0000, 0.0000, 'Tarjeta de crédito', '2006-05-09 00:00:00', NULL, 0.0000, NULL, 0),
	(65, 9, 28, '2006-05-11 03:00:00', '2006-05-11 00:00:00', 3, 'Amritansh Raghav', 'Calle Vigesimoséptima, 123', 'Memphis', 'TN', '99999', 'España', 10.0000, 0.0000, 'Cheque', '2006-05-11 00:00:00', NULL, 0.0000, NULL, 0),
	(66, 3, 8, '2006-05-24 03:00:00', '2006-05-24 00:00:00', 3, 'Elizabeth Andersen', 'Calle Octava, 123', 'Portland', 'OR', '99999', 'España', 5.0000, 0.0000, 'Cheque', '2006-05-24 00:00:00', NULL, 0.0000, NULL, 0),
	(67, 4, 10, '2006-05-24 03:00:00', '2006-05-24 00:00:00', 2, 'Roland Wacker', 'Calle Décima, 123', 'Chicago', 'IL', '99999', 'España', 9.0000, 0.0000, 'Tarjeta de crédito', '2006-05-24 00:00:00', NULL, 0.0000, NULL, 3),
	(68, 1, 7, '2006-05-24 03:00:00', NULL, 1, 'Ming-Yang Xie', 'Calle Séptima, 123', 'Boise', 'ID', '99999', 'España', 0.0000, 0.0000, NULL, NULL, NULL, 0.0000, NULL, 0),
	(69, 1, 10, '2006-05-24 03:00:00', NULL, 4, 'Roland Wacker', 'Calle Décima, 123', 'Chicago', 'IL', '99999', 'España', 0.0000, 0.0000, NULL, NULL, NULL, 0.0000, NULL, 0),
	(70, 1, 11, '2006-05-24 03:00:00', NULL, 3, 'Peter Krschne', 'Calle Decimoprimera, 123', 'Miami', 'FL', '99999', 'España', 0.0000, 0.0000, NULL, NULL, NULL, 0.0000, NULL, 0),
	(71, 1, 1, '2006-05-24 03:00:00', NULL, 3, 'Anna Bedecs', 'Calle Primera, 123', 'Seattle', 'Madrid', '99999', 'España', 0.0000, 0.0000, NULL, NULL, NULL, 0.0000, NULL, 0),
	(72, 1, 28, '2006-06-07 03:00:00', '2006-06-07 00:00:00', 3, 'Amritansh Raghav', 'Calle Vigesimoséptima, 123', 'Memphis', 'TN', '99999', 'España', 40.0000, 0.0000, 'Tarjeta de crédito', '2006-06-07 00:00:00', NULL, 0.0000, NULL, 3),
	(73, 7, 9, '2006-06-05 03:00:00', '2006-06-05 00:00:00', 4, 'Sven Mortensen', 'Calle Novena, 123', 'Salt Lake City', 'UT', '99999', 'España', 100.0000, 0.0000, 'Cheque', '2006-06-05 00:00:00', NULL, 0.0000, NULL, 3),
	(74, 6, 6, '2006-06-08 03:00:00', '2006-06-08 00:00:00', 2, 'Francisco Pérez-Olaeta', 'Calle Sexta, 123', 'Milwaukee', 'WI', '99999', 'España', 300.0000, 0.0000, 'Tarjeta de crédito', '2006-06-08 00:00:00', NULL, 0.0000, NULL, 3),
	(75, 4, 8, '2006-06-05 03:00:00', '2006-06-05 00:00:00', 2, 'Elizabeth Andersen', 'Calle Octava, 123', 'Portland', 'OR', '99999', 'España', 50.0000, 0.0000, 'Cheque', '2006-06-05 00:00:00', NULL, 0.0000, NULL, 3),
	(76, 9, 25, '2006-06-05 03:00:00', '2006-06-05 00:00:00', 4, 'John Rodman', 'Calle Vigesimoquinta, 123', 'Chicago', 'IL', '99999', 'España', 5.0000, 0.0000, 'Efectivo', '2006-06-05 00:00:00', NULL, 0.0000, NULL, 3),
	(77, 9, 26, '2006-06-05 03:00:00', '2006-06-05 00:00:00', 3, 'Run Liu', 'Calle Vigesimosexta, 123', 'Miami', 'FL', '99999', 'España', 60.0000, 0.0000, 'Tarjeta de crédito', '2006-06-05 00:00:00', NULL, 0.0000, NULL, 3),
	(78, 1, 29, '2006-06-05 03:00:00', '2006-06-05 00:00:00', 2, 'Soo Jung Lee', 'Calle Vigesimonovena, 123', 'Denver', 'CO', '99999', 'España', 200.0000, 0.0000, 'Cheque', '2006-06-05 00:00:00', NULL, 0.0000, NULL, 3),
	(79, 2, 6, '2006-06-23 03:00:00', '2006-06-23 00:00:00', 3, 'Francisco Pérez-Olaeta', 'Calle Sexta, 123', 'Milwaukee', 'WI', '99999', 'España', 0.0000, 0.0000, 'Cheque', '2006-06-23 00:00:00', NULL, 0.0000, NULL, 3),
	(80, 2, 4, '2006-04-25 20:03:55', NULL, 1, 'Christina Lee', 'Calle Cuarta, 123', 'Nueva York', 'NY', '99999', 'España', 0.0000, 0.0000, NULL, NULL, NULL, 0.0000, NULL, 0),
	(81, 2, 3, '2006-04-25 20:26:53', NULL, 1, 'Thomas Axen', 'Calle Tercera, 123', 'Los Ángeles', 'CA', '99999', 'España', 0.0000, 0.0000, NULL, NULL, NULL, 0.0000, NULL, 0);

-- Volcando estructura para tabla northwind.pedidos_compra
CREATE TABLE IF NOT EXISTS `pedidos_compra` (
  `pedido_compra_id` int(11) NOT NULL AUTO_INCREMENT,
  `proveedor_id` int(11) DEFAULT NULL,
  `creado_por` int(11) DEFAULT NULL,
  `fecha_envio` datetime DEFAULT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `estado_detalle_pedido_id` int(11) DEFAULT '0',
  `fecha_prevista` datetime DEFAULT NULL,
  `gasto_envio` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `impuestos` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `fecha_pago` datetime DEFAULT NULL,
  `importe_pago` decimal(19,4) DEFAULT '0.0000',
  `modo_pago` varchar(50) DEFAULT NULL,
  `notas` longtext,
  `aprobado_por` int(11) DEFAULT NULL,
  `fecha_aprovacion` datetime DEFAULT NULL,
  `enviado_por` int(11) DEFAULT NULL,
  PRIMARY KEY (`pedido_compra_id`) USING BTREE,
  KEY `FK_pedidos_compra_proveedores` (`proveedor_id`),
  KEY `FK_pedidos_compra_estado_detalles_pedidos` (`estado_detalle_pedido_id`),
  CONSTRAINT `FK_pedidos_compra_estado_detalles_pedidos` FOREIGN KEY (`estado_detalle_pedido_id`) REFERENCES `estado_detalles_pedidos` (`estado_detalle_pedido_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_pedidos_compra_proveedores` FOREIGN KEY (`proveedor_id`) REFERENCES `proveedores` (`proveedor_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla northwind.pedidos_compra: ~28 rows (aproximadamente)
INSERT INTO `pedidos_compra` (`pedido_compra_id`, `proveedor_id`, `creado_por`, `fecha_envio`, `fecha_creacion`, `estado_detalle_pedido_id`, `fecha_prevista`, `gasto_envio`, `impuestos`, `fecha_pago`, `importe_pago`, `modo_pago`, `notas`, `aprobado_por`, `fecha_aprovacion`, `enviado_por`) VALUES
	(90, 1, 2, '2006-01-14 00:00:00', '2006-01-22 03:00:00', 2, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, NULL, 2, '2006-01-22 00:00:00', 2),
	(91, 3, 2, '2006-01-14 00:00:00', '2006-01-22 03:00:00', 2, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, NULL, 2, '2006-01-22 00:00:00', 2),
	(92, 2, 2, '2006-01-14 00:00:00', '2006-01-22 03:00:00', 2, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, NULL, 2, '2006-01-22 00:00:00', 2),
	(93, 5, 2, '2006-01-14 00:00:00', '2006-01-22 03:00:00', 2, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, NULL, 2, '2006-01-22 00:00:00', 2),
	(94, 6, 2, '2006-01-14 00:00:00', '2006-01-22 03:00:00', 2, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, NULL, 2, '2006-01-22 00:00:00', 2),
	(95, 4, 2, '2006-01-14 00:00:00', '2006-01-22 03:00:00', 2, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, NULL, 2, '2006-01-22 00:00:00', 2),
	(96, 1, 5, '2006-01-14 00:00:00', '2006-01-22 03:00:00', 2, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, 'Compra generada según pedido nº  30', 2, '2006-01-22 00:00:00', 5),
	(97, 2, 7, '2006-01-14 00:00:00', '2006-01-22 03:00:00', 2, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, 'Compra generada según el pedido nº 33', 2, '2006-01-22 00:00:00', 7),
	(98, 2, 4, '2006-01-14 00:00:00', '2006-01-22 03:00:00', 2, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, 'Compra generada según el pedido nº 36', 2, '2006-01-22 00:00:00', 4),
	(99, 1, 3, '2006-01-14 00:00:00', '2006-01-22 03:00:00', 2, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, 'Compra generada según el pedido nº 38', 2, '2006-01-22 00:00:00', 3),
	(100, 2, 9, '2006-01-14 00:00:00', '2006-01-22 03:00:00', 2, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, 'Compra generada según el pedido nº 39', 2, '2006-01-22 00:00:00', 9),
	(101, 1, 2, '2006-01-14 00:00:00', '2006-01-22 03:00:00', 2, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, 'Compra generada según el pedido nº 40', 2, '2006-01-22 00:00:00', 2),
	(102, 1, 1, '2006-03-24 00:00:00', '2006-03-24 03:00:00', 2, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, 'Compra generada según el pedido nº 41', 2, '2006-04-04 00:00:00', 1),
	(103, 2, 1, '2006-03-24 00:00:00', '2006-03-24 03:00:00', 2, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, 'Compra generada según el pedido nº 42', 2, '2006-04-04 00:00:00', 1),
	(104, 2, 1, '2006-03-24 00:00:00', '2006-03-24 03:00:00', 2, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, 'Compra generada según el pedido nº 45', 2, '2006-04-04 00:00:00', 1),
	(105, 5, 7, '2006-03-24 00:00:00', '2006-03-24 03:00:00', 2, NULL, 0.0000, 0.0000, NULL, 0.0000, 'Cheque', 'Compra generada según el pedido nº 46', 2, '2006-04-04 00:00:00', 7),
	(106, 6, 7, '2006-03-24 00:00:00', '2006-03-24 03:00:00', 2, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, 'Compra generada según el pedido nº 46', 2, '2006-04-04 00:00:00', 7),
	(107, 1, 6, '2006-03-24 00:00:00', '2006-03-24 03:00:00', 2, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, 'Compra generada según el pedido nº 47', 2, '2006-04-04 00:00:00', 6),
	(108, 2, 4, '2006-03-24 00:00:00', '2006-03-24 03:00:00', 2, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, 'Compra generada según el pedido nº 48', 2, '2006-04-04 00:00:00', 4),
	(109, 2, 4, '2006-03-24 00:00:00', '2006-03-24 03:00:00', 2, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, 'Compra generada según el pedido nº 48', 2, '2006-04-04 00:00:00', 4),
	(110, 1, 3, '2006-03-24 00:00:00', '2006-03-24 03:00:00', 2, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, 'Compra generada según el pedido nº 49', 2, '2006-04-04 00:00:00', 3),
	(111, 1, 2, '2006-03-31 00:00:00', '2006-03-31 03:00:00', 2, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, 'Compra generada según el pedido nº 56', 2, '2006-04-04 00:00:00', 2),
	(140, 6, NULL, '2006-04-25 00:00:00', '2006-04-25 19:40:51', 2, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, NULL, 2, '2006-04-25 16:41:33', 2),
	(141, 8, NULL, '2006-04-25 00:00:00', '2006-04-25 20:10:35', 2, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, NULL, 2, '2006-04-25 17:10:55', 2),
	(142, 8, NULL, '2006-04-25 00:00:00', '2006-04-25 20:18:29', 2, NULL, 0.0000, 0.0000, NULL, 0.0000, 'Cheque', NULL, 2, '2006-04-25 17:18:51', 2),
	(146, 2, 2, '2006-04-26 18:26:37', '2006-04-26 21:26:37', 1, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, NULL, NULL, NULL, 2),
	(147, 7, 2, '2006-04-26 18:33:28', '2006-04-26 21:33:28', 1, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, NULL, NULL, NULL, 2),
	(148, 5, 2, '2006-04-26 18:33:52', '2006-04-26 21:33:52', 1, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, NULL, NULL, NULL, 2);

-- Volcando estructura para tabla northwind.privilegios
CREATE TABLE IF NOT EXISTS `privilegios` (
  `privlegio_id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_privilegio` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`privlegio_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla northwind.privilegios: ~0 rows (aproximadamente)
INSERT INTO `privilegios` (`privlegio_id`, `nombre_privilegio`) VALUES
	(2, 'Aprobaciones de compras');

-- Volcando estructura para tabla northwind.privilegios_empleados
CREATE TABLE IF NOT EXISTS `privilegios_empleados` (
  `empleado_id` int(11) NOT NULL,
  `privilegio_id` int(11) NOT NULL,
  PRIMARY KEY (`empleado_id`,`privilegio_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla northwind.privilegios_empleados: ~0 rows (aproximadamente)
INSERT INTO `privilegios_empleados` (`empleado_id`, `privilegio_id`) VALUES
	(2, 2);

-- Volcando estructura para tabla northwind.productos
CREATE TABLE IF NOT EXISTS `productos` (
  `producto_id` int(11) NOT NULL AUTO_INCREMENT,
  `proveedor_id` int(11) NOT NULL DEFAULT '0',
  `codigo` varchar(25) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `descripcion` longtext,
  `costo` decimal(19,4) DEFAULT '0.0000',
  `precio_lista` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `punto_pedido` int(11) DEFAULT '0',
  `nivel_objetivo` int(11) DEFAULT '0',
  `cantidad` int(11) DEFAULT '0',
  `suspendido` int(11) NOT NULL DEFAULT '0',
  `cantidad_minima` int(11) DEFAULT '0',
  `categoria` varchar(50) DEFAULT NULL,
  `datos_adjuntos` longblob,
  PRIMARY KEY (`producto_id`) USING BTREE,
  UNIQUE KEY `codigo` (`codigo`),
  KEY `FK_productos_proveedores` (`proveedor_id`),
  CONSTRAINT `FK_productos_proveedores` FOREIGN KEY (`proveedor_id`) REFERENCES `proveedores` (`proveedor_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla northwind.productos: ~39 rows (aproximadamente)
INSERT INTO `productos` (`producto_id`, `proveedor_id`, `codigo`, `nombre`, `descripcion`, `costo`, `precio_lista`, `punto_pedido`, `nivel_objetivo`, `cantidad`, `suspendido`, `cantidad_minima`, `categoria`, `datos_adjuntos`) VALUES
	(1, 4, 'NWTB-1', 'Té Chai Northwind Traders', 'Té Chai Northwind Traders', 13.5000, 18.0000, 10, 40, 10, 0, 10, 'Bebidas', _binary ''),
	(3, 10, 'NWTCO-3', 'Almíbar Northwind Traders', 'Almíbar Northwind Traders', 7.5000, 10.0000, 25, 100, 12, 0, 25, 'Condimentos', _binary ''),
	(4, 10, 'NWTCO-4', 'Condimentos de Louisiana Northwind Traders', 'Condimentos de Louisiana Northwind Traders', 16.5000, 22.0000, 10, 40, 48, 0, 10, 'Condimentos', _binary ''),
	(5, 10, 'NWTO-5', 'Aceite de oliva Northwind Traders', 'Aceite de oliva Northwind Traders', 16.0125, 21.3500, 10, 40, 36, 0, 10, 'Aceite', _binary ''),
	(6, 2, 'NWTJP-16', 'Mermelada de moras y frambuesas Northwind Traders', 'Mermelada de moras y frambuesas Northwind Traders', 18.7500, 25.0000, 25, 100, 12, 0, 25, 'Mermeladas y confituras', _binary ''),
	(7, 2, 'NWTDFN-7', 'Peras secas Northwind Traders', 'Peras secas Northwind Traders', 22.5000, 30.0000, 10, 40, 12, 0, 10, 'Frutos secos', _binary ''),
	(8, 8, 'NWTS-8', 'Salsa curry Northwind Traders', 'Salsa curry Northwind Traders', 30.0000, 40.0000, 10, 40, 12, 0, 10, 'Salsas', _binary ''),
	(14, 2, 'NWTDFN-14', 'Nueces Northwind Traders', 'Nueces Northwind Traders', 17.4375, 23.2500, 10, 40, 40, 0, 10, 'Frutos secos', _binary ''),
	(17, 6, 'NWTCFV-17', 'Macedonia Northwind Traders', 'Macedonia Northwind Traders', 29.2500, 39.0000, 10, 40, 45, 0, 10, 'Frutas y verduras enlatadas', _binary ''),
	(19, 1, 'NWTBGM-19', 'Galletas de chocolate surtidas Northwind Traders', 'Galletas de chocolate surtidas Northwind Traders', 6.9000, 9.2000, 5, 20, 10, 0, 5, 'Productos horneados', _binary ''),
	(20, 2, 'NWTJP-26', 'Mermelada Northwind Traders', 'Mermelada Northwind Traders', 60.7500, 81.0000, 10, 40, 30, 0, 10, 'Mermeladas y confituras', _binary ''),
	(21, 1, 'NWTBGM-21', 'Bollos de pan Northwind Traders', 'Bollos de pan Northwind Traders', 7.5000, 10.0000, 5, 20, 24, 0, 5, 'Productos horneados', _binary ''),
	(34, 4, 'NWTB-34', 'Cerveza Northwind Traders', 'Cerveza Northwind Traders', 10.5000, 14.0000, 15, 60, 24, 0, 15, 'Bebidas', _binary ''),
	(40, 7, 'NWTCM-40', 'Carne de cangrejo Northwind Traders', 'Carne de cangrejo Northwind Traders', 13.8000, 18.4000, 30, 120, 24, 0, 30, 'Carne enlatada', _binary ''),
	(41, 6, 'NWTSO-41', 'Sopa de almejas Northwind Traders', 'Sopa de almejas Northwind Traders', 7.2375, 9.6500, 10, 40, 12, 0, 10, 'Sopas', _binary ''),
	(43, 3, 'NWTB-43', 'Café Northwind Traders', 'Café Northwind Traders', 34.5000, 46.0000, 25, 100, 16, 0, 25, 'Bebidas', _binary ''),
	(48, 10, 'NWTCA-48', 'Chocolate Northwind Traders', 'Chocolate Northwind Traders', 9.5625, 12.7500, 25, 100, 10, 0, 25, 'Golosinas', _binary ''),
	(51, 2, 'NWTDFN-51', 'Manzanas secas Northwind Traders', 'Manzanas secas Northwind Traders', 39.7500, 53.0000, 10, 40, 50, 0, 10, 'Frutos secos', _binary ''),
	(52, 1, 'NWTG-52', 'Arroz de grano largo Northwind Traders', 'Arroz de grano largo Northwind Traders', 5.2500, 7.0000, 25, 100, 16, 0, 25, 'Granos', _binary ''),
	(56, 1, 'NWTP-56', 'Ñoquis Northwind Traders', 'Ñoquis Northwind Traders', 28.5000, 38.0000, 30, 120, 24, 0, 30, 'Pasta', _binary ''),
	(57, 1, 'NWTP-57', 'Ravioli Northwind Traders', 'Ravioli Northwind Traders', 14.6250, 19.5000, 20, 80, 24, 0, 20, 'Pasta', _binary ''),
	(65, 8, 'NWTS-65', 'Salsa picante Northwind Traders', 'Salsa picante Northwind Traders', 15.7875, 21.0500, 10, 40, 32, 0, 10, 'Salsas', _binary ''),
	(66, 8, 'NWTS-66', 'Salsa de tomate Northwind Traders', 'Salsa de tomate Northwind Traders', 12.7500, 17.0000, 20, 80, 24, 0, 20, 'Salsas', _binary ''),
	(72, 5, 'NWTD-72', 'Mozzarella Northwind Traders', 'Mozzarella Northwind Traders', 26.1000, 34.8000, 10, 40, 24, 0, 10, 'Productos lácteos', _binary ''),
	(74, 2, 'NWTDFN-74', 'Almendras Northwind Traders', 'Almendras Northwind Traders', 7.5000, 10.0000, 5, 20, 0, 0, 5, 'Frutos secos', _binary ''),
	(77, 10, 'NWTCO-77', 'Mostaza Northwind Traders', 'Mostaza Northwind Traders', 9.7500, 13.0000, 15, 60, 12, 0, 15, 'Condimentos', _binary ''),
	(80, 2, 'NWTDFN-80', 'Ciruelas pasas Northwind Traders', 'Ciruelas pasas Northwind Traders', 3.0000, 3.5000, 50, 75, 0, 0, 25, 'Frutos secos', _binary ''),
	(81, 3, 'NWTB-81', 'Té verde Northwind Traders', 'Té verde Northwind Traders', 2.0000, 2.9900, 100, 125, 20, 0, 25, 'Bebidas', _binary ''),
	(82, 1, 'NWTC-82', 'Cereales de avena Northwind Traders', 'Cereales de avena Northwind Traders', 2.0000, 4.0000, 20, 100, 0, 0, 0, 'Cereales', _binary ''),
	(83, 9, 'NWTCS-83', 'Patatas fritas Northwind Traders', 'Patatas fritas Northwind Traders', 0.5000, 1.8000, 30, 200, 0, 0, 0, 'Patatas y tentempiés', _binary ''),
	(85, 1, 'NWTBGM-85', 'Bizcocho Northwind Traders', 'Bizcocho Northwind Traders', 9.0000, 12.4900, 10, 20, 3, 0, 5, 'Productos horneados', _binary ''),
	(86, 1, 'NWTBGM-86', 'Pastel Northwind Traders', 'Pastel Northwind Traders', 10.5000, 15.9900, 10, 20, 4, 0, 5, 'Productos horneados', _binary ''),
	(87, 7, 'NWTB-87', 'Té Northwind Traders', 'Té Northwind Traders', 2.0000, 4.0000, 20, 50, 100, 0, 0, 'Bebidas', _binary ''),
	(88, 6, 'NWTCFV-88', 'Peras Northwind Traders', 'Peras Northwind Traders', 1.0000, 1.3000, 10, 40, 45, 0, 0, 'Frutas y verduras enlatadas', _binary ''),
	(89, 6, 'NWTCFV-89', 'Melocotones Northwind Traders', 'Melocotones Northwind Traders', 1.0000, 1.5000, 10, 40, 45, 0, 0, 'Frutas y verduras enlatadas', _binary ''),
	(90, 6, 'NWTCFV-90', 'Piña Northwind Traders', 'Piña Northwind Traders', 1.0000, 1.8000, 10, 40, 45, 0, 0, 'Frutas y verduras enlatadas', _binary ''),
	(91, 6, 'NWTCFV-91', 'Relleno para tarta de cerezas Northwind Traders', 'Relleno para tarta de cerezas Northwind Traders', 1.0000, 2.0000, 10, 40, 45, 0, 0, 'Frutas y verduras enlatadas', _binary ''),
	(92, 6, 'NWTCFV-92', 'Judías verdes Northwind Traders', 'Judías verdes Northwind Traders', 1.0000, 1.2000, 10, 40, 435, 0, 0, 'Frutas y verduras enlatadas', _binary ''),
	(93, 6, 'NWTCFV-93', 'Maíz Northwind Traders', 'Maíz Northwind Traders', 1.0000, 1.2000, 10, 40, 435, 0, 0, 'Frutas y verduras enlatadas', _binary ''),
	(94, 6, 'NWTCFV-94', 'Guisantes Northwind Traders', 'Guisantes Northwind Traders', 1.0000, 1.5000, 10, 40, 435, 0, 0, 'Frutas y verduras enlatadas', _binary ''),
	(95, 7, 'NWTCM-95', 'Atún Northwind Traders', 'Atún Northwind Traders', 0.5000, 2.0000, 30, 50, 150, 0, 0, 'Carne enlatada', _binary ''),
	(96, 7, 'NWTCM-96', 'Salmón ahumado Northwind Traders', 'Salmón ahumado Northwind Traders', 2.0000, 4.0000, 30, 50, 150, 0, 0, 'Carne enlatada', _binary ''),
	(97, 1, 'NWTC-882', 'Copos de avena Northwind Traders', 'Copos de avena Northwind Traders', 3.0000, 5.0000, 50, 200, 0, 0, 0, 'Cereales', _binary ''),
	(98, 6, 'NWTSO-98', 'Sopa de verduras Northwind Traders', 'Sopa de verduras Northwind Traders', 1.0000, 1.8900, 100, 200, 0, 0, 0, 'Sopas', _binary ''),
	(99, 6, 'NWTSO-99', 'Sopa de pollo Northwind Traders', 'Sopa de pollo Northwind Traders', 1.0000, 1.9500, 100, 200, 0, 0, 0, 'Sopas', _binary ''),
	(100, 6, NULL, NULL, NULL, 0.0000, 0.0000, 0, 0, 0, 0, 0, NULL, NULL),
	(101, 6, 'NWTDFN-114', 'Nueces Northwind Traders', 'Nueces Northwind Traders', 17.4375, 23.2500, 0, 0, 0, 0, 0, 'Frutos secos', NULL),
	(102, 6, 'NWTJP-36', 'Mermelada Northwind Traders', 'Mermelada Northwind Traders', 60.7500, 81.0000, 10, 40, 30, 0, 10, 'Mermeladas y confituras', _binary ''),
	(103, 4, 'NWTB-443', 'Café Northwind Traders', 'Café Northwind Traders', 34.5000, 46.0000, 25, 100, 16, 0, 25, 'Bebidas', _binary ''),
	(104, 6, 'NWTDFN-774', 'Almendras Northwind Traders', 'Almendras Northwind Traders', 7.5000, 10.0000, 5, 20, 0, 0, 5, 'Frutos secos', _binary '');

-- Volcando estructura para tabla northwind.proveedores
CREATE TABLE IF NOT EXISTS `proveedores` (
  `proveedor_id` int(11) NOT NULL AUTO_INCREMENT,
  `empresa` varchar(50) DEFAULT NULL,
  `apellidos` varchar(50) DEFAULT NULL,
  `nombres` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `cargo` varchar(50) DEFAULT NULL,
  `telefono_trabajo` varchar(25) DEFAULT NULL,
  `telefono_particular` varchar(25) DEFAULT NULL,
  `telefono_movil` varchar(25) DEFAULT NULL,
  `fax` varchar(25) DEFAULT NULL,
  `direccion` longtext,
  `ciudad` varchar(50) DEFAULT NULL,
  `provincia` varchar(50) DEFAULT NULL,
  `codigo_postal` varchar(15) DEFAULT NULL,
  `pais` varchar(50) DEFAULT NULL,
  `web` longtext,
  `notas` longtext,
  `datos_adjuntos` longblob,
  PRIMARY KEY (`proveedor_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla northwind.proveedores: ~10 rows (aproximadamente)
INSERT INTO `proveedores` (`proveedor_id`, `empresa`, `apellidos`, `nombres`, `email`, `cargo`, `telefono_trabajo`, `telefono_particular`, `telefono_movil`, `fax`, `direccion`, `ciudad`, `provincia`, `codigo_postal`, `pais`, `web`, `notas`, `datos_adjuntos`) VALUES
	(1, 'Proveedor A', 'García', 'Miguel A.', 'garcíamiguel a.@gmail.com', 'Jefe de ventas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, _binary ''),
	(2, 'Proveedor B', 'Cornejo', 'Cecilia', 'cornejocecilia@gmail.com', 'Jefe de ventas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, _binary ''),
	(3, 'Proveedor C', 'González', 'Nuria', 'gonzáleznuria@gmail.com', 'Representante de ventas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, _binary ''),
	(4, 'Proveedor D', 'Arteaga Torreira', 'Diego', 'arteaga torreiradiego@gmail.com', 'Jefe de marketing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, _binary ''),
	(5, 'Proveedor E', 'Hernández-Echevarría', 'Amaya', 'hernández-echevarríaamaya@gmail.com', 'Jefe de ventas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, _binary ''),
	(6, 'Proveedor F', 'Gil', 'Enrique', 'gilenrique@gmail.com', 'Ayudante de marketing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, _binary ''),
	(7, 'Proveedor G', 'Navarro', 'Tomás', 'navarrotomás@gmail.com', 'Jefe de marketing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, _binary ''),
	(8, 'Proveedor H', 'Noriega', 'Fabricio', 'noriegafabricio@gmail.com', 'Representante de ventas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, _binary ''),
	(9, 'Proveedor I', 'Peiro Alba', 'José Ignacio', 'peiro albajosé ignacio@gmail.com', 'Jefe de ventas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, _binary ''),
	(10, 'Proveedor J', 'Bastidas Patiño', 'Jaime Humberto', 'bastidas patiñojaime humberto@gmail.com', 'Jefe de ventas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, _binary '');

-- Volcando estructura para tabla northwind.tipos_transacciones_inventario
CREATE TABLE IF NOT EXISTS `tipos_transacciones_inventario` (
  `tipo_transaccion_inventario_id` int(11) NOT NULL DEFAULT '0',
  `nombre_tipo` varchar(50) NOT NULL,
  PRIMARY KEY (`tipo_transaccion_inventario_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla northwind.tipos_transacciones_inventario: ~4 rows (aproximadamente)
INSERT INTO `tipos_transacciones_inventario` (`tipo_transaccion_inventario_id`, `nombre_tipo`) VALUES
	(1, 'Comprado'),
	(2, 'Vendido'),
	(3, 'Retenido'),
	(4, 'Sobrante');

-- Volcando estructura para tabla northwind.transacciones_inventario
CREATE TABLE IF NOT EXISTS `transacciones_inventario` (
  `transaccion_inventario_id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_transaccion_inventario_id` int(11) NOT NULL DEFAULT '0',
  `fecha_creacion_transaccion` datetime DEFAULT NULL,
  `fecha_modificada_transacción` datetime DEFAULT NULL,
  `producto_id` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `pedido_compra_id` int(11) DEFAULT NULL,
  `pedido_cliente_id` int(11) DEFAULT NULL,
  `comentarios` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`transaccion_inventario_id`) USING BTREE,
  KEY `FK_transacciones_inventario_tipos_transacciones_inventario` (`tipo_transaccion_inventario_id`),
  KEY `FK_transacciones_inventario_pedidos_compra` (`pedido_compra_id`),
  KEY `FK_transacciones_inventario_productos` (`producto_id`),
  CONSTRAINT `FK_transacciones_inventario_pedidos_compra` FOREIGN KEY (`pedido_compra_id`) REFERENCES `pedidos_compra` (`pedido_compra_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_transacciones_inventario_productos` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`producto_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_transacciones_inventario_tipos_transacciones_inventario` FOREIGN KEY (`tipo_transaccion_inventario_id`) REFERENCES `tipos_transacciones_inventario` (`tipo_transaccion_inventario_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla northwind.transacciones_inventario: ~102 rows (aproximadamente)
INSERT INTO `transacciones_inventario` (`transaccion_inventario_id`, `tipo_transaccion_inventario_id`, `fecha_creacion_transaccion`, `fecha_modificada_transacción`, `producto_id`, `cantidad`, `pedido_compra_id`, `pedido_cliente_id`, `comentarios`) VALUES
	(35, 1, '2006-03-22 16:02:28', '2006-03-22 16:02:28', 80, 75, NULL, NULL, NULL),
	(36, 1, '2006-03-22 16:02:48', '2006-03-22 16:02:48', 72, 40, NULL, NULL, NULL),
	(37, 1, '2006-03-22 16:03:04', '2006-03-22 16:03:04', 52, 100, NULL, NULL, NULL),
	(38, 1, '2006-03-22 16:03:09', '2006-03-22 16:03:09', 56, 120, NULL, NULL, NULL),
	(39, 1, '2006-03-22 16:03:14', '2006-03-22 16:03:14', 57, 80, NULL, NULL, NULL),
	(40, 1, '2006-03-22 16:03:40', '2006-03-22 16:03:40', 6, 100, NULL, NULL, NULL),
	(41, 1, '2006-03-22 16:03:47', '2006-03-22 16:03:47', 7, 40, NULL, NULL, NULL),
	(42, 1, '2006-03-22 16:03:54', '2006-03-22 16:03:54', 8, 40, NULL, NULL, NULL),
	(43, 1, '2006-03-22 16:04:02', '2006-03-22 16:04:02', 14, 40, NULL, NULL, NULL),
	(44, 1, '2006-03-22 16:04:07', '2006-03-22 16:04:07', 17, 40, NULL, NULL, NULL),
	(45, 1, '2006-03-22 16:04:12', '2006-03-22 16:04:12', 19, 20, NULL, NULL, NULL),
	(46, 1, '2006-03-22 16:04:17', '2006-03-22 16:04:17', 20, 40, NULL, NULL, NULL),
	(47, 1, '2006-03-22 16:04:20', '2006-03-22 16:04:20', 21, 20, NULL, NULL, NULL),
	(48, 1, '2006-03-22 16:04:24', '2006-03-22 16:04:24', 40, 120, NULL, NULL, NULL),
	(49, 1, '2006-03-22 16:04:28', '2006-03-22 16:04:28', 41, 40, NULL, NULL, NULL),
	(50, 1, '2006-03-22 16:04:31', '2006-03-22 16:04:31', 48, 100, NULL, NULL, NULL),
	(51, 1, '2006-03-22 16:04:38', '2006-03-22 16:04:38', 51, 40, NULL, NULL, NULL),
	(52, 1, '2006-03-22 16:04:41', '2006-03-22 16:04:41', 74, 20, NULL, NULL, NULL),
	(53, 1, '2006-03-22 16:04:45', '2006-03-22 16:04:45', 77, 60, NULL, NULL, NULL),
	(54, 1, '2006-03-22 16:05:07', '2006-03-22 16:05:07', 3, 100, NULL, NULL, NULL),
	(55, 1, '2006-03-22 16:05:11', '2006-03-22 16:05:11', 4, 40, NULL, NULL, NULL),
	(56, 1, '2006-03-22 16:05:14', '2006-03-22 16:05:14', 5, 40, NULL, NULL, NULL),
	(57, 1, '2006-03-22 16:05:26', '2006-03-22 16:05:26', 65, 40, NULL, NULL, NULL),
	(58, 1, '2006-03-22 16:05:32', '2006-03-22 16:05:32', 66, 80, NULL, NULL, NULL),
	(59, 1, '2006-03-22 16:05:47', '2006-03-22 16:05:47', 1, 40, NULL, NULL, NULL),
	(60, 1, '2006-03-22 16:05:51', '2006-03-22 16:05:51', 34, 60, NULL, NULL, NULL),
	(61, 1, '2006-03-22 16:06:00', '2006-03-22 16:06:00', 43, 100, NULL, NULL, NULL),
	(62, 1, '2006-03-22 16:06:03', '2006-03-22 16:06:03', 81, 125, NULL, NULL, NULL),
	(63, 2, '2006-03-22 16:07:56', '2006-03-24 11:03:00', 80, 30, NULL, NULL, NULL),
	(64, 2, '2006-03-22 16:08:19', '2006-03-22 16:08:59', 7, 10, NULL, NULL, NULL),
	(65, 2, '2006-03-22 16:08:29', '2006-03-22 16:08:59', 51, 10, NULL, NULL, NULL),
	(66, 2, '2006-03-22 16:08:37', '2006-03-22 16:08:59', 80, 10, NULL, NULL, NULL),
	(67, 2, '2006-03-22 16:09:46', '2006-03-22 16:10:27', 1, 15, NULL, NULL, NULL),
	(68, 2, '2006-03-22 16:10:06', '2006-03-22 16:10:27', 43, 20, NULL, NULL, NULL),
	(69, 2, '2006-03-22 16:11:39', '2006-03-24 11:00:55', 19, 20, NULL, NULL, NULL),
	(70, 2, '2006-03-22 16:11:56', '2006-03-24 10:59:41', 48, 10, NULL, NULL, NULL),
	(71, 2, '2006-03-22 16:12:29', '2006-03-24 10:57:38', 8, 17, NULL, NULL, NULL),
	(72, 1, '2006-03-24 10:41:30', '2006-03-24 10:41:30', 81, 200, NULL, NULL, NULL),
	(73, 2, '2006-03-24 10:41:33', '2006-03-24 10:41:42', 81, 200, NULL, NULL, 'Servir producto en lista de espera, pedido nº 40'),
	(74, 1, '2006-03-24 10:53:13', '2006-03-24 10:53:13', 48, 100, NULL, NULL, NULL),
	(75, 2, '2006-03-24 10:53:16', '2006-03-24 10:55:46', 48, 100, NULL, NULL, 'Servir producto en lista de espera, pedido nº 39'),
	(76, 1, '2006-03-24 10:53:36', '2006-03-24 10:53:36', 43, 300, NULL, NULL, NULL),
	(77, 2, '2006-03-24 10:53:39', '2006-03-24 10:56:57', 43, 300, NULL, NULL, 'Servir producto en lista de espera, pedido nº 38'),
	(78, 1, '2006-03-24 10:54:04', '2006-03-24 10:54:04', 41, 200, NULL, NULL, NULL),
	(79, 2, '2006-03-24 10:54:07', '2006-03-24 10:58:40', 41, 200, NULL, NULL, 'Servir producto en lista de espera, pedido nº 36'),
	(80, 1, '2006-03-24 10:54:33', '2006-03-24 10:54:33', 19, 30, NULL, NULL, NULL),
	(81, 2, '2006-03-24 10:54:35', '2006-03-24 11:02:02', 19, 30, NULL, NULL, 'Servir producto en lista de espera, pedido nº 33'),
	(82, 1, '2006-03-24 10:54:58', '2006-03-24 10:54:58', 34, 100, NULL, NULL, NULL),
	(83, 2, '2006-03-24 10:55:02', '2006-03-24 11:03:00', 34, 100, NULL, NULL, 'Servir producto en lista de espera, pedido nº 30'),
	(84, 2, '2006-03-24 14:48:15', '2006-04-04 11:41:14', 6, 10, NULL, NULL, NULL),
	(85, 2, '2006-03-24 14:48:23', '2006-04-04 11:41:14', 4, 10, NULL, NULL, NULL),
	(86, 3, '2006-03-24 14:49:16', '2006-03-24 14:49:16', 80, 20, NULL, NULL, NULL),
	(87, 3, '2006-03-24 14:49:20', '2006-03-24 14:49:20', 81, 50, NULL, NULL, NULL),
	(88, 3, '2006-03-24 14:50:09', '2006-03-24 14:50:09', 1, 25, NULL, NULL, NULL),
	(89, 3, '2006-03-24 14:50:14', '2006-03-24 14:50:14', 43, 25, NULL, NULL, NULL),
	(90, 3, '2006-03-24 14:50:18', '2006-03-24 14:50:18', 81, 25, NULL, NULL, NULL),
	(91, 2, '2006-03-24 14:51:03', '2006-04-04 11:09:24', 40, 50, NULL, NULL, NULL),
	(92, 2, '2006-03-24 14:55:03', '2006-04-04 11:06:56', 21, 20, NULL, NULL, NULL),
	(93, 2, '2006-03-24 14:55:39', '2006-04-04 11:06:13', 5, 25, NULL, NULL, NULL),
	(94, 2, '2006-03-24 14:55:52', '2006-04-04 11:06:13', 41, 30, NULL, NULL, NULL),
	(95, 2, '2006-03-24 14:56:09', '2006-04-04 11:06:13', 40, 30, NULL, NULL, NULL),
	(96, 3, '2006-03-30 16:46:34', '2006-03-30 16:46:34', 34, 12, NULL, NULL, NULL),
	(97, 3, '2006-03-30 17:23:27', '2006-03-30 17:23:27', 34, 10, NULL, NULL, NULL),
	(98, 3, '2006-03-30 17:24:33', '2006-03-30 17:24:33', 34, 1, NULL, NULL, NULL),
	(99, 2, '2006-04-03 13:50:08', '2006-04-03 13:50:15', 48, 10, NULL, NULL, NULL),
	(100, 1, '2006-04-04 11:00:54', '2006-04-04 11:00:54', 57, 100, NULL, NULL, NULL),
	(101, 2, '2006-04-04 11:00:56', '2006-04-04 11:08:49', 57, 100, NULL, NULL, 'Servir producto en lista de espera, pedido nº 46'),
	(102, 1, '2006-04-04 11:01:14', '2006-04-04 11:01:14', 34, 50, NULL, NULL, NULL),
	(103, 1, '2006-04-04 11:01:35', '2006-04-04 11:01:35', 43, 250, NULL, NULL, NULL),
	(104, 3, '2006-04-04 11:01:37', '2006-04-04 11:01:37', 43, 300, NULL, NULL, 'Servir producto en lista de espera, pedido nº 41'),
	(105, 1, '2006-04-04 11:01:55', '2006-04-04 11:01:55', 8, 25, NULL, NULL, NULL),
	(106, 2, '2006-04-04 11:01:58', '2006-04-04 11:07:37', 8, 25, NULL, NULL, 'Servir producto en lista de espera, pedido nº 48'),
	(107, 1, '2006-04-04 11:02:17', '2006-04-04 11:02:17', 34, 300, NULL, NULL, NULL),
	(108, 2, '2006-04-04 11:02:19', '2006-04-04 11:08:14', 34, 300, NULL, NULL, 'Servir producto en lista de espera, pedido nº 47'),
	(109, 1, '2006-04-04 11:02:37', '2006-04-04 11:02:37', 19, 25, NULL, NULL, NULL),
	(110, 2, '2006-04-04 11:02:39', '2006-04-04 11:41:14', 19, 10, NULL, NULL, 'Servir producto en lista de espera, pedido nº 42'),
	(111, 1, '2006-04-04 11:02:56', '2006-04-04 11:02:56', 19, 10, NULL, NULL, NULL),
	(112, 2, '2006-04-04 11:02:58', '2006-04-04 11:07:37', 19, 25, NULL, NULL, 'Servir producto en lista de espera, pedido nº 48'),
	(113, 1, '2006-04-04 11:03:12', '2006-04-04 11:03:12', 72, 50, NULL, NULL, NULL),
	(114, 2, '2006-04-04 11:03:14', '2006-04-04 11:08:49', 72, 50, NULL, NULL, 'Servir producto en lista de espera, pedido nº 46'),
	(115, 1, '2006-04-04 11:03:38', '2006-04-04 11:03:38', 41, 50, NULL, NULL, NULL),
	(116, 2, '2006-04-04 11:03:39', '2006-04-04 11:09:24', 41, 50, NULL, NULL, 'Servir producto en lista de espera, pedido nº 45'),
	(117, 2, '2006-04-04 11:04:55', '2006-04-04 11:05:04', 34, 87, NULL, NULL, NULL),
	(118, 2, '2006-04-04 11:35:50', '2006-04-04 11:35:54', 51, 30, NULL, NULL, NULL),
	(119, 2, '2006-04-04 11:35:51', '2006-04-04 11:35:54', 7, 30, NULL, NULL, NULL),
	(120, 2, '2006-04-04 11:36:15', '2006-04-04 11:36:21', 17, 40, NULL, NULL, NULL),
	(121, 2, '2006-04-04 11:36:39', '2006-04-04 11:36:47', 6, 90, NULL, NULL, NULL),
	(122, 2, '2006-04-04 11:37:06', '2006-04-04 11:37:09', 4, 30, NULL, NULL, NULL),
	(123, 2, '2006-04-04 11:37:45', '2006-04-04 11:37:49', 48, 40, NULL, NULL, NULL),
	(124, 2, '2006-04-04 11:38:07', '2006-04-04 11:38:11', 48, 40, NULL, NULL, NULL),
	(125, 2, '2006-04-04 11:38:27', '2006-04-04 11:38:32', 41, 10, NULL, NULL, NULL),
	(126, 2, '2006-04-04 11:38:48', '2006-04-04 11:38:53', 43, 5, NULL, NULL, NULL),
	(127, 2, '2006-04-04 11:39:12', '2006-04-04 11:39:29', 40, 40, NULL, NULL, NULL),
	(128, 2, '2006-04-04 11:39:50', '2006-04-04 11:39:53', 8, 20, NULL, NULL, NULL),
	(129, 2, '2006-04-04 11:40:13', '2006-04-04 11:40:16', 80, 15, NULL, NULL, NULL),
	(130, 2, '2006-04-04 11:40:32', '2006-04-04 11:40:38', 74, 20, NULL, NULL, NULL),
	(131, 2, '2006-04-04 11:41:39', '2006-04-04 11:41:45', 72, 40, NULL, NULL, NULL),
	(132, 2, '2006-04-04 11:42:17', '2006-04-04 11:42:26', 3, 50, NULL, NULL, NULL),
	(133, 2, '2006-04-04 11:42:24', '2006-04-04 11:42:26', 8, 3, NULL, NULL, NULL),
	(134, 2, '2006-04-04 11:42:48', '2006-04-04 11:43:08', 20, 40, NULL, NULL, NULL),
	(135, 2, '2006-04-04 11:43:05', '2006-04-04 11:43:08', 52, 40, NULL, NULL, NULL),
	(136, 3, '2006-04-25 17:04:05', '2006-04-25 17:04:57', 56, 110, NULL, NULL, NULL);

-- Volcando estructura para tabla northwind.transportistas
CREATE TABLE IF NOT EXISTS `transportistas` (
  `transportista_id` int(11) NOT NULL AUTO_INCREMENT,
  `empresa` varchar(50) DEFAULT NULL,
  `apellidos` varchar(50) DEFAULT NULL,
  `nombres` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `cargo` varchar(50) DEFAULT NULL,
  `telefono_trabajo` varchar(25) DEFAULT NULL,
  `telefono_particular` varchar(25) DEFAULT NULL,
  `telofono_movil` varchar(25) DEFAULT NULL,
  `fax` varchar(25) DEFAULT NULL,
  `direccion` longtext,
  `ciudad` varchar(50) DEFAULT NULL,
  `provincia` varchar(50) DEFAULT NULL,
  `codigo_postal` varchar(15) DEFAULT NULL,
  `pais` varchar(50) DEFAULT NULL,
  `web` longtext,
  `notas` longtext,
  `datos_adjuntos` longblob,
  PRIMARY KEY (`transportista_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla northwind.transportistas: ~4 rows (aproximadamente)
INSERT INTO `transportistas` (`transportista_id`, `empresa`, `apellidos`, `nombres`, `email`, `cargo`, `telefono_trabajo`, `telefono_particular`, `telofono_movil`, `fax`, `direccion`, `ciudad`, `provincia`, `codigo_postal`, `pais`, `web`, `notas`, `datos_adjuntos`) VALUES
	(1, 'Ninguno', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Calle Principal, 123', 'Memphis', 'TN', '99999', 'España', NULL, NULL, _binary ''),
	(2, 'Compañía de transportes A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Calle Principal, 123', 'Memphis', 'TN', '99999', 'España', NULL, NULL, _binary ''),
	(3, 'Compañía de transportes B', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Calle Principal, 123', 'Memphis', 'TN', '99999', 'España', NULL, NULL, _binary ''),
	(4, 'Compañía de transportes C', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
