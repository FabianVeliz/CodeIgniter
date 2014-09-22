-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 22-09-2014 a las 23:58:09
-- Versión del servidor: 5.6.16
-- Versión de PHP: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `products`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `article_id` int(11) NOT NULL AUTO_INCREMENT,
  `article_name` varchar(100) NOT NULL,
  `article_content` text NOT NULL,
  `article_date` date NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`article_id`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `articles`
--

INSERT INTO `articles` (`article_id`, `article_name`, `article_content`, `article_date`, `category_id`) VALUES
(1, 'Declaran "Ciudadano Ilustre de Tucumán" a Muratore, presidente de la FIBA', 'El flamante presidente de la Federación Internacional de Basquetbol (FIBA), el tucumano Horacio Muratore, fue declarado Ciudadano Ilustre de Tucumán por decisión del gobernador, José Alperovich. El mandatario consideró que la reciente designación de Muratore en la entidad matriz del baloncesto mundial significa una “profunda satisfacción y orgullo que este destacado comprovinciano nos represente ante el mundo del deporte”.\n\n"Lo más importante es que Horacio es muy buena gente, una muy buena persona, de la cual no he oído hablar mal y eso es un orgullo para los tucumanos que lo conocemos”, remarcó Alperovich, durante una ceremonia privada que se llevó a cabo en el antedespacho del mandatario en Casa de Gobierno. El dirigente estuvo acompañado por su esposa Nelly Tous y sus hijas Luciana, Silvina y Eliana. También participaron el ministro de Salud de la Nación, Juan Manzur, la secretaria General de la Gobernación, Carolina Vargas Aignasse, y el secretario de Deportes, José “Cacho” Banegas, promotor de la iniciativa. Faltó el hijo varón, Ramiro Muratore, por razones laborales.', '2014-09-10', 1),
(3, 'Estefanía Banini, la "Messi" que bailó a las brasileñas', 'La futbolista mendocina Estefanía Banini fue la figura en el partido en que la Selección argentina que participa de la Copa América de Ecuador se impuso por 2 a 0 a Brasil. La joven jugadora argentina hizo un gol y "bailó" a las defensoras del seleccionado brasileño. Tan buena fue su actuación, que fue advertida por la mujer árbitro para que no provocara a sus rivales, destaca Losandes.com.ar.\n\nBanini llamó la atención de diversos medios de comunicación que la compararon con Lionel Messi, y resaltaron tanto su belleza como su habilidad con la pelota. \n\nBanini jugó por primera vez el fútbol de campo para Huracán Las Heras, en Mendoza, aunque su gran amor fue Las Pumas. Desde allí, dio el salto, primero, con el Mundial de Corrientes 2006 de futbol de salón, donde Región Andino salió subcampeón. Allí compartió formación con su hermana Paola, quien luego se definió por el voley. Luego, con la sub 20 conducida por Carlos Borello, y tras eso, a la Selección mayor donde la denominación de "La Messi" tomó fuerza en Ecuador, durante la Copa América 2010. Al cabo de aquella experiencia, pasó a Colo Colo, de Chile, donde actualmente juega. ', '2014-09-02', 2);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
