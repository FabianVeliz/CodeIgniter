-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 25-09-2014 a las 07:23:08
-- Versión del servidor: 5.6.20
-- Versión de PHP: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `app_stock`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `birds`
--

CREATE TABLE IF NOT EXISTS `birds` (
`id` int(11) NOT NULL,
  `bird` varchar(50) DEFAULT NULL,
  `aka` varchar(50) DEFAULT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Volcado de datos para la tabla `birds`
--

INSERT INTO `birds` (`id`, `bird`, `aka`) VALUES
(1, 'Great Bittern', 'Botaurus stellaris'),
(2, 'Little Grebe', 'Tachybaptus ruficollis'),
(3, 'Black-necked Grebe', 'Podiceps nigricollis'),
(4, 'Little Bittern', 'Ixobrychus minutus'),
(5, 'Black-crowned Night Heron', 'Nycticorax nycticorax'),
(6, 'Purple Heron', 'Ardea purpurea'),
(7, 'White Stork', 'Ciconia ciconia'),
(8, 'Spoonbill', 'Platalea leucorodia'),
(9, 'Red-crested Pochard', 'Netta rufina'),
(10, 'Common Eider', 'Somateria mollissima'),
(11, 'Red Kite', 'Milvus milvus'),
(12, 'Hen Harrier', 'Circus cyaneus'),
(13, 'Montagu''s Harrier', 'Circus pygargus'),
(14, 'Black Grouse', 'Tetrao tetrix'),
(15, 'Grey Partridge', 'Perdix perdix'),
(16, 'Spotted Crake', 'Porzana porzana'),
(17, 'Corncrake', 'Crex crex'),
(18, 'Common Crane', 'Grus grus'),
(19, 'Avocet', 'Recurvirostra avosetta'),
(20, 'Stone Curlew', 'Burhinus oedicnemus');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
`category_id` int(11) NOT NULL,
  `category_name` varchar(80) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`) VALUES
(1, 'gaseosas'),
(2, 'chupetines'),
(3, 'alfajores'),
(4, 'caramelos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE IF NOT EXISTS `products` (
`product_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` float NOT NULL,
  `product_stock` int(20) NOT NULL,
  `product_detail` varchar(200) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_price`, `product_stock`, `product_detail`, `category_id`) VALUES
(1, 'Coca cola', 10, 100, 'Gaseosa coca cola', 1),
(2, 'Chupetin Mirter Pop', 1.5, 50, 'Chupetin misterPop', 2),
(3, 'Alfajor block', 8, 800, 'Alfajor Block chocolate', 3),
(4, 'Palitos de la selva', 0.25, 2000, 'Caramelos palitos de la selva', 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `birds`
--
ALTER TABLE `birds`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
 ADD PRIMARY KEY (`category_id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
 ADD PRIMARY KEY (`product_id`), ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `birds`
--
ALTER TABLE `birds`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `products`
--
ALTER TABLE `products`
ADD CONSTRAINT `cat` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
