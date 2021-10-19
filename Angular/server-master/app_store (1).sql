-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 19-10-2021 a las 03:27:33
-- Versión del servidor: 5.7.31
-- Versión de PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `app_store`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `config`
--

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `mensage` varchar(80) COLLATE utf8_spanish_ci NOT NULL,
  `eslogan` varchar(120) COLLATE utf8_spanish_ci NOT NULL,
  `inlogin` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `outlogin` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `eslogan_nav` varchar(80) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `config`
--

INSERT INTO `config` (`mensage`, `eslogan`, `inlogin`, `outlogin`, `eslogan_nav`) VALUES
('Bienvenidoz', 'Gracias por Venir', 'Ingresar', 'Salir', 'EL FENIS GLOTON');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `enterprise`
--

DROP TABLE IF EXISTS `enterprise`;
CREATE TABLE IF NOT EXISTS `enterprise` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `name_enterprise` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `enterprise`
--

INSERT INTO `enterprise` (`id`, `name_enterprise`, `create_at`) VALUES
(1, 'lostreseditores', '2021-09-14 13:19:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

DROP TABLE IF EXISTS `factura`;
CREATE TABLE IF NOT EXISTS `factura` (
  `id_factura` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_pedido` int(11) NOT NULL,
  `valor` int(11) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `observacion` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id_factura`),
  UNIQUE KEY `id_factura` (`id_factura`),
  KEY `id_user` (`id_user`),
  KEY `id_pedido` (`id_pedido`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `game`
--

DROP TABLE IF EXISTS `game`;
CREATE TABLE IF NOT EXISTS `game` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(180) COLLATE utf8_spanish_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `image` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `game`
--

INSERT INTO `game` (`id`, `title`, `description`, `image`, `created_at`) VALUES
(1, 'free fire', 'xiaomi', 'https://depor.com/resizer/D6DbtUwCx7Pw7ZfvzO0YZGDBUhM=/580x330/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/KI72CKUOHBF4RLJO7EBCR75SKA.jpg', '2021-04-01 20:43:44'),
(7, 'gtaV', 'epic games', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHuGDCu0cJnETp5DRU2Us9cFE5SxXzDcFxoA&usqp=CAU', '2021-04-03 21:12:51'),
(8, 'gohan', 'ojito', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_I1LupNsIrn70VIFeURf0QrjTImwUcglNKg&usqp=CAU', '2021-04-03 20:46:45'),
(5, 'gohan', 'ojito', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_I1LupNsIrn70VIFeURf0QrjTImwUcglNKg&usqp=CAU', '2021-04-03 20:46:45'),
(9, 'gohan', 'ojito', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_I1LupNsIrn70VIFeURf0QrjTImwUcglNKg&usqp=CAU', '2021-04-03 20:46:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

DROP TABLE IF EXISTS `pedido`;
CREATE TABLE IF NOT EXISTS `pedido` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `valor` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `value_pedido` tinyint(1) DEFAULT '1',
  `servicio` tinyint(1) DEFAULT '0',
  `estado_valor` int(11) DEFAULT '1',
  `pedido_estado` int(11) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `id_user` (`id_user`),
  KEY `estado_valor` (`estado_valor`),
  KEY `pedido_estado` (`pedido_estado`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`id`, `id_user`, `valor`, `created_at`, `value_pedido`, `servicio`, `estado_valor`, `pedido_estado`) VALUES
(76, 67, 10000, '2021-10-18 15:27:33', 0, 0, 1, 1),
(77, 68, 15000, '2021-10-18 15:28:54', 0, 0, 1, 1),
(78, 67, 20000, '2021-10-18 15:29:14', 0, 0, 1, 1),
(79, 68, 15000, '2021-10-18 15:29:24', 0, 0, 1, 1),
(80, 67, 15000, '2021-10-18 18:32:32', 0, 0, 1, 1),
(81, 67, 20000, '2021-10-18 23:13:26', 0, 0, 1, 1),
(82, 67, 10000, '2021-10-18 23:13:47', 0, 0, 1, 1),
(83, 67, 15000, '2021-10-18 23:26:34', 0, 0, 1, 1),
(84, 67, 10000, '2021-10-18 23:52:52', 0, 0, 1, 1),
(85, 67, 15000, '2021-10-19 01:47:20', 0, 0, 1, 1),
(86, 67, 20000, '2021-10-19 01:50:11', 0, 0, 1, 1),
(87, 67, 20000, '2021-10-19 01:50:34', 0, 1, 1, 1),
(88, 67, 32000, '2021-10-19 01:51:05', 0, 0, 1, 1),
(89, 67, 15000, '2021-10-19 01:53:08', 0, 0, 1, 1),
(90, 67, 15000, '2021-10-19 01:57:39', 0, 0, 1, 1),
(91, 67, 15000, '2021-10-19 03:05:04', 0, 0, 1, 1),
(92, 67, 15000, '2021-10-19 03:05:29', 0, 1, 1, 1),
(93, 67, 4000, '2021-10-19 03:05:56', 0, 0, 1, 1),
(94, 67, 20000, '2021-10-19 03:10:00', 0, 0, 1, 1),
(95, 67, 15000, '2021-10-19 03:10:10', 0, 0, 1, 1),
(96, 67, 15000, '2021-10-19 03:15:18', 0, 0, 1, 1),
(97, 67, 15000, '2021-10-19 03:16:37', 0, 0, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido_estado`
--

DROP TABLE IF EXISTS `pedido_estado`;
CREATE TABLE IF NOT EXISTS `pedido_estado` (
  `id_estado` int(11) NOT NULL AUTO_INCREMENT,
  `name_estado` varchar(80) COLLATE utf8_spanish_ci NOT NULL,
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_estado`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `pedido_estado`
--

INSERT INTO `pedido_estado` (`id_estado`, `name_estado`, `create_at`) VALUES
(1, 'Creada', '2021-10-18 15:27:05'),
(2, 'Proceso', '2021-10-18 15:27:05'),
(3, 'Despachada', '2021-10-18 15:27:05'),
(4, 'Finalizada', '2021-10-18 15:27:05'),
(5, 'Contabilizada', '2021-10-18 15:27:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido_est_valor`
--

DROP TABLE IF EXISTS `pedido_est_valor`;
CREATE TABLE IF NOT EXISTS `pedido_est_valor` (
  `id_estado` int(11) NOT NULL AUTO_INCREMENT,
  `name_estado` varchar(80) COLLATE utf8_spanish_ci NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_estado`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `pedido_est_valor`
--

INSERT INTO `pedido_est_valor` (`id_estado`, `name_estado`, `create_at`) VALUES
(1, 'Credito', '2021-10-18 15:09:04'),
(2, 'Debito', '2021-10-18 15:09:04'),
(3, 'Bono', '2021-10-18 15:09:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

DROP TABLE IF EXISTS `producto`;
CREATE TABLE IF NOT EXISTS `producto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8_spanish_ci NOT NULL,
  `valor` int(12) NOT NULL,
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `image` varchar(220) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(220) COLLATE utf8_spanish_ci DEFAULT NULL,
  `producto_tipo` int(11) NOT NULL,
  `menu` tinyint(1) DEFAULT '1',
  `active` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `producto_tipo` (`producto_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `name`, `valor`, `create_at`, `image`, `descripcion`, `producto_tipo`, `menu`, `active`) VALUES
(9, 'Frijolada', 5000, '2021-09-26 18:59:19', 'https://depor.com/resizer/D6DbtUwCx7Pw7ZfvzO0YZGDBUhM=/580x330/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/KI72CKUOHBF4RLJO7EBCR75SKA.jpg', 'Deliciosa frijolada con chorizo ', 1, 1, 1),
(10, 'Pollo asado', 5000, '2021-09-26 18:59:51', 'https://depor.com/resizer/D6DbtUwCx7Pw7ZfvzO0YZGDBUhM=/580x330/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/KI72CKUOHBF4RLJO7EBCR75SKA.jpg', 'Deliciosa plato con patacon ', 1, 0, 1),
(11, 'Arroz Mixto', 5000, '2021-09-26 19:00:44', 'https://depor.com/resizer/D6DbtUwCx7Pw7ZfvzO0YZGDBUhM=/580x330/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/KI72CKUOHBF4RLJO7EBCR75SKA.jpg', 'Delicioso arroz mixto con sopa', 1, 0, 1),
(12, 'Arepa con huevo', 5000, '2021-09-26 19:02:09', 'https://depor.com/resizer/D6DbtUwCx7Pw7ZfvzO0YZGDBUhM=/580x330/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/KI72CKUOHBF4RLJO7EBCR75SKA.jpg', 'Delicioso arepa con huevo', 2, 0, 1),
(13, 'calentado', 5000, '2021-09-26 19:02:33', 'https://depor.com/resizer/D6DbtUwCx7Pw7ZfvzO0YZGDBUhM=/580x330/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/KI72CKUOHBF4RLJO7EBCR75SKA.jpg', 'Delicioso calentado de frijoles', 2, 0, 1),
(14, 'empanada', 1000, '2021-09-26 19:03:41', 'https://depor.com/resizer/D6DbtUwCx7Pw7ZfvzO0YZGDBUhM=/580x330/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/KI72CKUOHBF4RLJO7EBCR75SKA.jpg', 'Delicioso empanada de carne', 2, 1, 1),
(15, 'bunuelo', 1000, '2021-09-26 19:03:57', 'https://depor.com/resizer/D6DbtUwCx7Pw7ZfvzO0YZGDBUhM=/580x330/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/KI72CKUOHBF4RLJO7EBCR75SKA.jpg', 'Delicioso bunuelo', 2, 0, 1),
(16, 'cono de nucita', 1000, '2021-09-26 19:04:53', 'https://depor.com/resizer/D6DbtUwCx7Pw7ZfvzO0YZGDBUhM=/580x330/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/KI72CKUOHBF4RLJO7EBCR75SKA.jpg', 'Delicioso cono de nucita', 5, 0, 1),
(17, 'paleta tentacion', 1000, '2021-09-26 19:05:23', 'https://depor.com/resizer/D6DbtUwCx7Pw7ZfvzO0YZGDBUhM=/580x330/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/KI72CKUOHBF4RLJO7EBCR75SKA.jpg', 'Delicioso paleta tentacion', 5, 1, 1),
(18, 'paleta de agua', 1000, '2021-09-26 19:05:56', 'https://depor.com/resizer/D6DbtUwCx7Pw7ZfvzO0YZGDBUhM=/580x330/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/KI72CKUOHBF4RLJO7EBCR75SKA.jpg', 'Delicioso paleta agua', 5, 1, 1),
(19, 'bunuelo', 1000, '2021-09-26 19:03:57', 'https://depor.com/resizer/D6DbtUwCx7Pw7ZfvzO0YZGDBUhM=/580x330/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/KI72CKUOHBF4RLJO7EBCR75SKA.jpg', 'Delicioso bunuelo', 2, 0, 1),
(20, 'bunuelo', 1000, '2021-09-26 19:03:57', 'https://depor.com/resizer/D6DbtUwCx7Pw7ZfvzO0YZGDBUhM=/580x330/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/KI72CKUOHBF4RLJO7EBCR75SKA.jpg', 'Delicioso bunuelo', 2, 0, 1),
(21, 'bunuelo', 1000, '2021-09-26 19:03:57', 'https://depor.com/resizer/D6DbtUwCx7Pw7ZfvzO0YZGDBUhM=/580x330/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/KI72CKUOHBF4RLJO7EBCR75SKA.jpg', 'Delicioso bunuelo', 2, 0, 1),
(22, 'bunuelo', 1000, '2021-09-26 19:03:57', 'https://depor.com/resizer/D6DbtUwCx7Pw7ZfvzO0YZGDBUhM=/580x330/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/KI72CKUOHBF4RLJO7EBCR75SKA.jpg', 'Delicioso bunuelo', 2, 0, 1),
(23, 'bunuelo', 1000, '2021-09-26 19:03:57', 'https://depor.com/resizer/D6DbtUwCx7Pw7ZfvzO0YZGDBUhM=/580x330/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/KI72CKUOHBF4RLJO7EBCR75SKA.jpg', 'Delicioso bunuelo', 2, 0, 1),
(24, 'bunuelo', 1000, '2021-09-26 19:03:57', 'https://depor.com/resizer/D6DbtUwCx7Pw7ZfvzO0YZGDBUhM=/580x330/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/KI72CKUOHBF4RLJO7EBCR75SKA.jpg', 'Delicioso bunuelo', 2, 0, 1),
(25, 'bunuelo', 1000, '2021-09-26 19:03:57', 'https://depor.com/resizer/D6DbtUwCx7Pw7ZfvzO0YZGDBUhM=/580x330/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/KI72CKUOHBF4RLJO7EBCR75SKA.jpg', 'Delicioso bunuelo', 2, 0, 1),
(26, 'bunuelo', 1000, '2021-09-26 19:03:57', 'https://depor.com/resizer/D6DbtUwCx7Pw7ZfvzO0YZGDBUhM=/580x330/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/KI72CKUOHBF4RLJO7EBCR75SKA.jpg', 'Delicioso bunuelo', 2, 0, 1),
(27, 'bunuelo', 1000, '2021-09-26 19:03:57', 'https://depor.com/resizer/D6DbtUwCx7Pw7ZfvzO0YZGDBUhM=/580x330/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/KI72CKUOHBF4RLJO7EBCR75SKA.jpg', 'Delicioso bunuelo', 2, 0, 1),
(28, 'bunuelo', 1000, '2021-09-26 19:03:57', 'https://depor.com/resizer/D6DbtUwCx7Pw7ZfvzO0YZGDBUhM=/580x330/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/KI72CKUOHBF4RLJO7EBCR75SKA.jpg', 'Delicioso bunuelo', 2, 0, 1),
(29, 'bunuelo', 1000, '2021-09-26 19:03:57', 'https://depor.com/resizer/D6DbtUwCx7Pw7ZfvzO0YZGDBUhM=/580x330/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/KI72CKUOHBF4RLJO7EBCR75SKA.jpg', 'Delicioso bunuelo', 2, 0, 1),
(30, 'bunuelo', 1000, '2021-09-26 19:03:57', 'https://depor.com/resizer/D6DbtUwCx7Pw7ZfvzO0YZGDBUhM=/580x330/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/KI72CKUOHBF4RLJO7EBCR75SKA.jpg', 'Delicioso bunuelo', 2, 0, 1),
(31, 'bunuelo', 1000, '2021-09-26 19:03:57', 'https://depor.com/resizer/D6DbtUwCx7Pw7ZfvzO0YZGDBUhM=/580x330/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/KI72CKUOHBF4RLJO7EBCR75SKA.jpg', 'Delicioso bunuelo', 2, 0, 1),
(32, 'bunuelo', 1000, '2021-09-26 19:03:57', 'https://depor.com/resizer/D6DbtUwCx7Pw7ZfvzO0YZGDBUhM=/580x330/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/KI72CKUOHBF4RLJO7EBCR75SKA.jpg', 'Delicioso bunuelo', 2, 0, 1),
(33, 'bunuelo', 1000, '2021-09-26 19:03:57', 'https://depor.com/resizer/D6DbtUwCx7Pw7ZfvzO0YZGDBUhM=/580x330/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/KI72CKUOHBF4RLJO7EBCR75SKA.jpg', 'Delicioso bunuelo', 2, 0, 1),
(34, 'bunuelo', 1000, '2021-09-26 19:03:57', 'https://depor.com/resizer/D6DbtUwCx7Pw7ZfvzO0YZGDBUhM=/580x330/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/KI72CKUOHBF4RLJO7EBCR75SKA.jpg', 'Delicioso bunuelo', 2, 0, 1),
(35, 'bunuelo', 1000, '2021-09-26 19:03:57', 'https://depor.com/resizer/D6DbtUwCx7Pw7ZfvzO0YZGDBUhM=/580x330/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/KI72CKUOHBF4RLJO7EBCR75SKA.jpg', 'Delicioso bunuelo', 2, 0, 1),
(36, 'bunuelo', 1000, '2021-09-26 19:03:57', 'https://depor.com/resizer/D6DbtUwCx7Pw7ZfvzO0YZGDBUhM=/580x330/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/KI72CKUOHBF4RLJO7EBCR75SKA.jpg', 'Delicioso bunuelo', 2, 0, 1),
(37, 'bunuelo', 1000, '2021-09-26 19:03:57', 'https://depor.com/resizer/D6DbtUwCx7Pw7ZfvzO0YZGDBUhM=/580x330/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/KI72CKUOHBF4RLJO7EBCR75SKA.jpg', 'Delicioso bunuelo', 2, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_user`
--

DROP TABLE IF EXISTS `role_user`;
CREATE TABLE IF NOT EXISTS `role_user` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `name_role` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `role_user`
--

INSERT INTO `role_user` (`id`, `name_role`, `create_at`) VALUES
(1, 'super_admin', '2021-09-14 13:26:33'),
(2, 'admin', '2021-09-14 13:26:33'),
(3, 'user', '2021-09-14 13:26:33'),
(4, 'enterprise', '2021-09-14 13:26:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ticket`
--

DROP TABLE IF EXISTS `ticket`;
CREATE TABLE IF NOT EXISTS `ticket` (
  `id_ticket` int(11) NOT NULL AUTO_INCREMENT,
  `user_ticket` int(11) NOT NULL,
  `producto` int(11) NOT NULL,
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `id_pedido` int(11) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id_ticket`),
  KEY `producto` (`producto`),
  KEY `user_ticket` (`user_ticket`),
  KEY `id_pedido` (`id_pedido`)
) ENGINE=InnoDB AUTO_INCREMENT=420 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ticket`
--

INSERT INTO `ticket` (`id_ticket`, `user_ticket`, `producto`, `create_at`, `id_pedido`, `estado`) VALUES
(346, 67, 9, '2021-10-18 15:27:34', 76, 1),
(347, 67, 9, '2021-10-18 15:27:34', 76, 1),
(348, 68, 9, '2021-10-18 15:28:54', 77, 1),
(349, 68, 9, '2021-10-18 15:28:54', 77, 1),
(350, 68, 9, '2021-10-18 15:28:54', 77, 1),
(351, 67, 10, '2021-10-18 15:29:14', 78, 1),
(352, 67, 9, '2021-10-18 15:29:14', 78, 1),
(353, 67, 9, '2021-10-18 15:29:14', 78, 1),
(354, 67, 9, '2021-10-18 15:29:15', 78, 1),
(355, 68, 10, '2021-10-18 15:29:24', 79, 1),
(356, 68, 10, '2021-10-18 15:29:24', 79, 1),
(357, 68, 10, '2021-10-18 15:29:24', 79, 1),
(358, 67, 9, '2021-10-18 18:32:32', 80, 1),
(359, 67, 10, '2021-10-18 18:32:32', 80, 1),
(360, 67, 10, '2021-10-18 18:32:32', 80, 1),
(361, 67, 9, '2021-10-18 23:13:26', 81, 1),
(362, 67, 10, '2021-10-18 23:13:26', 81, 1),
(363, 67, 10, '2021-10-18 23:13:26', 81, 1),
(364, 67, 10, '2021-10-18 23:13:26', 81, 1),
(365, 67, 10, '2021-10-18 23:13:47', 82, 1),
(366, 67, 10, '2021-10-18 23:13:47', 82, 1),
(367, 67, 10, '2021-10-18 23:26:34', 83, 1),
(368, 67, 10, '2021-10-18 23:26:34', 83, 1),
(369, 67, 10, '2021-10-18 23:26:34', 83, 1),
(370, 67, 9, '2021-10-18 23:52:52', 84, 1),
(371, 67, 10, '2021-10-18 23:52:52', 84, 1),
(372, 67, 9, '2021-10-19 01:47:20', 85, 1),
(373, 67, 10, '2021-10-19 01:47:20', 85, 1),
(374, 67, 10, '2021-10-19 01:47:20', 85, 1),
(375, 67, 10, '2021-10-19 01:50:11', 86, 1),
(376, 67, 10, '2021-10-19 01:50:11', 86, 1),
(377, 67, 9, '2021-10-19 01:50:11', 86, 1),
(378, 67, 9, '2021-10-19 01:50:11', 86, 1),
(379, 67, 10, '2021-10-19 01:50:34', 87, 1),
(380, 67, 9, '2021-10-19 01:50:34', 87, 1),
(381, 67, 13, '2021-10-19 01:50:34', 87, 1),
(382, 67, 12, '2021-10-19 01:50:34', 87, 1),
(383, 67, 9, '2021-10-19 01:51:05', 88, 1),
(384, 67, 10, '2021-10-19 01:51:05', 88, 1),
(385, 67, 10, '2021-10-19 01:51:05', 88, 1),
(386, 67, 13, '2021-10-19 01:51:05', 88, 1),
(387, 67, 12, '2021-10-19 01:51:05', 88, 1),
(388, 67, 17, '2021-10-19 01:51:05', 88, 1),
(389, 67, 17, '2021-10-19 01:51:05', 88, 1),
(390, 67, 12, '2021-10-19 01:51:05', 88, 1),
(391, 67, 10, '2021-10-19 01:53:08', 89, 1),
(392, 67, 9, '2021-10-19 01:53:08', 89, 1),
(393, 67, 9, '2021-10-19 01:53:08', 89, 1),
(394, 67, 10, '2021-10-19 01:57:39', 90, 1),
(395, 67, 10, '2021-10-19 01:57:39', 90, 1),
(396, 67, 10, '2021-10-19 01:57:39', 90, 1),
(397, 67, 9, '2021-10-19 03:05:04', 91, 1),
(398, 67, 9, '2021-10-19 03:05:04', 91, 1),
(399, 67, 9, '2021-10-19 03:05:04', 91, 1),
(400, 67, 10, '2021-10-19 03:05:29', 92, 1),
(401, 67, 10, '2021-10-19 03:05:29', 92, 1),
(402, 67, 10, '2021-10-19 03:05:29', 92, 1),
(403, 67, 14, '2021-10-19 03:05:57', 93, 1),
(404, 67, 14, '2021-10-19 03:05:57', 93, 1),
(405, 67, 14, '2021-10-19 03:05:57', 93, 1),
(406, 67, 14, '2021-10-19 03:05:57', 93, 1),
(407, 67, 10, '2021-10-19 03:10:00', 94, 1),
(408, 67, 10, '2021-10-19 03:10:00', 94, 1),
(409, 67, 10, '2021-10-19 03:10:00', 94, 1),
(410, 67, 10, '2021-10-19 03:10:00', 94, 1),
(411, 67, 9, '2021-10-19 03:10:11', 95, 1),
(412, 67, 9, '2021-10-19 03:10:11', 95, 1),
(413, 67, 9, '2021-10-19 03:10:11', 95, 1),
(414, 67, 10, '2021-10-19 03:15:18', 96, 1),
(415, 67, 10, '2021-10-19 03:15:18', 96, 1),
(416, 67, 10, '2021-10-19 03:15:18', 96, 1),
(417, 67, 9, '2021-10-19 03:16:37', 97, 1),
(418, 67, 9, '2021-10-19 03:16:37', 97, 1),
(419, 67, 9, '2021-10-19 03:16:37', 97, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_producto`
--

DROP TABLE IF EXISTS `tipo_producto`;
CREATE TABLE IF NOT EXISTS `tipo_producto` (
  `id_tipo` int(11) NOT NULL AUTO_INCREMENT,
  `name_tipo` varchar(120) COLLATE utf8_spanish_ci NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tipo_producto`
--

INSERT INTO `tipo_producto` (`id_tipo`, `name_tipo`, `create_at`) VALUES
(1, 'Almuerzo', '2021-09-26 18:57:35'),
(2, 'Desayuno', '2021-09-26 18:57:35'),
(3, 'Bebidas', '2021-09-26 18:57:51'),
(4, 'Despensas', '2021-09-26 18:57:51'),
(5, 'Heladeria', '2021-09-26 18:57:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `sub` varchar(220) COLLATE utf8_spanish_ci NOT NULL,
  `name` varchar(220) COLLATE utf8_spanish_ci DEFAULT NULL,
  `picture` varchar(220) COLLATE utf8_spanish_ci DEFAULT NULL,
  `email` varchar(120) COLLATE utf8_spanish_ci DEFAULT NULL,
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `given_name` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `family_name` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nickname` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `locale` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `updated_at` varchar(120) COLLATE utf8_spanish_ci DEFAULT NULL,
  `email_verified` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `role` int(11) DEFAULT '3',
  `id_empresa` int(11) DEFAULT '1',
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `sub` (`sub`),
  KEY `id_empresa` (`id_empresa`),
  KEY `role` (`role`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id_user`, `sub`, `name`, `picture`, `email`, `create_at`, `given_name`, `family_name`, `nickname`, `locale`, `updated_at`, `email_verified`, `role`, `id_empresa`) VALUES
(67, 'google-oauth2|112703936879554720334', 'Julian Guerrero', 'https://lh3.googleusercontent.com/a-/AOh14GhvDUEyiG-04sVHxOvp4dqZPiwHmokd7K40NaDAAA=s96-c', 'julgueover.05@gmail.com', '2021-09-23 00:22:35', 'Julian', 'Guerrero', 'julgueover.05', 'es', '2021-10-19T01:24:41.784Z', '1', 3, 1),
(68, 'google-oauth2|115554611911654128336', 'Andrew Cast', 'https://lh3.googleusercontent.com/a-/AOh14GjHX6L2gWJzcIUeB7-GQIxiCMs9xgHMBMUze5S3=s96-c', 'andrewcast.0707@gmail.com', '2021-10-06 01:27:29', 'Andrew', 'Cast', 'andrewcast.0707', 'es', '2021-10-18T00:57:35.982Z', '1', 3, 1),
(69, 'google-oauth2|112703936879554720345', NULL, NULL, NULL, '2021-10-18 21:32:59', NULL, NULL, NULL, NULL, NULL, NULL, 3, 1),
(71, 'google-oauth2|112703936879554720322', NULL, NULL, NULL, '2021-10-18 21:33:38', NULL, NULL, NULL, NULL, NULL, NULL, 3, 1),
(72, 'google-oauth2|112703936879554720321', NULL, NULL, NULL, '2021-10-18 21:39:51', NULL, NULL, NULL, NULL, NULL, NULL, 3, 1),
(75, 'google-oauth2|112703936879554720318', NULL, NULL, NULL, '2021-10-18 21:41:40', NULL, NULL, NULL, NULL, NULL, NULL, 3, 1),
(76, 'google-oauth2|112703936879554720316', 'juscsliasssggns', NULL, NULL, '2021-10-18 21:42:55', NULL, NULL, NULL, 'Cali', NULL, NULL, 3, 1),
(77, 'google-oauth2|112703936879554720313', NULL, NULL, NULL, '2021-10-18 22:12:50', NULL, NULL, NULL, NULL, NULL, NULL, 3, 1),
(78, 'google-oauth2|1127039368795547203111', NULL, NULL, NULL, '2021-10-18 22:19:14', NULL, NULL, NULL, NULL, NULL, NULL, 3, 1),
(79, 'google-oauth2|112703936879554720311122', 'juscsliasssggns', NULL, NULL, '2021-10-18 22:20:04', NULL, NULL, NULL, 'Cali', NULL, NULL, 3, 1),
(80, 'google-oauth2|1127039368795547203111e323', 'jugns', NULL, NULL, '2021-10-18 22:20:17', NULL, NULL, NULL, 'Cali', NULL, NULL, 3, 1),
(81, 'google-oauth2|1127039368795547203111sdasda', 'jugnddds', NULL, NULL, '2021-10-18 22:21:14', NULL, NULL, NULL, 'Cali', NULL, NULL, 3, 1),
(82, 'google-oauth2|1127039368795ss547203111sdasda', 'jugssssdds', NULL, NULL, '2021-10-18 22:21:21', NULL, NULL, NULL, 'Cali', NULL, NULL, 3, 1),
(83, 'google-oauth2|1127039368795ss547203ss111sdasda', 'jugssssdds', NULL, NULL, '2021-10-18 22:22:28', NULL, NULL, NULL, 'Cacccli', NULL, NULL, 3, 1);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`),
  ADD CONSTRAINT `factura_ibfk_2` FOREIGN KEY (`id_pedido`) REFERENCES `pedido` (`id`);

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`),
  ADD CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`estado_valor`) REFERENCES `pedido_est_valor` (`id_estado`),
  ADD CONSTRAINT `pedido_ibfk_3` FOREIGN KEY (`pedido_estado`) REFERENCES `pedido_estado` (`id_estado`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`producto_tipo`) REFERENCES `tipo_producto` (`id_tipo`);

--
-- Filtros para la tabla `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`user_ticket`) REFERENCES `user` (`id_user`),
  ADD CONSTRAINT `ticket_ibfk_2` FOREIGN KEY (`producto`) REFERENCES `producto` (`id`),
  ADD CONSTRAINT `ticket_ibfk_3` FOREIGN KEY (`id_pedido`) REFERENCES `pedido` (`id`);

--
-- Filtros para la tabla `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_3` FOREIGN KEY (`role`) REFERENCES `role_user` (`id`),
  ADD CONSTRAINT `user_ibfk_4` FOREIGN KEY (`id_empresa`) REFERENCES `enterprise` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
