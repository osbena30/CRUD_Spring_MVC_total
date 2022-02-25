-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-03-2021 a las 14:59:27
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `prueba`
--
CREATE DATABASE IF NOT EXISTS `prueba` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `prueba`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `CategoryID` int(11) NOT NULL,
  `CategoryName` varchar(15) NOT NULL,
  `Description` longtext DEFAULT NULL,
  `Picture` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`CategoryID`, `CategoryName`, `Description`, `Picture`) VALUES
(1, 'Beverages', 'Soft drinks, coffees, teas, beers, and ales', NULL),
(2, 'Condiments', 'Sweet and savory sauces, relishes, spreads, and seasonings', NULL),
(3, 'Confections', 'Desserts, candies, and sweet breads', NULL),
(4, 'Dairy Products', 'Cheeses', NULL),
(5, 'Grains/Cereals', 'Breads, crackers, pasta, and cereal', NULL),
(6, 'Meat/Poultry', 'Prepared meats', NULL),
(7, 'Produce', 'Dried fruit and bean curd', 0x3132333435),
(8, 'Seafood', 'Seaweed and fish', NULL),
(9, '9', '9', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `salario` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id`, `nombre`, `direccion`, `correo`, `telefono`, `salario`) VALUES
(2, 'oscar', '3', '3', '3', 3),
(4, '534543', '3', '3', '3', 3),
(6, 'oscar', 'sasda df adf a', 'nada@nada.com', '1234567', 12345),
(19, '4', '4', '4', '4', 4),
(20, '4', '4', '4', '4', 4),
(21, '4', '4', '4', '4', 4),
(22, '4', '4', '4', '4', 4),
(23, '4', '4', '4', '4', 4),
(26, '55', '22', '22', '22', 22),
(28, '', 'sasda df adf a', 'nada@nada.com', '1234567', 123456),
(29, 'oscar', 'prueba2', 'nada@nada.com', '1234567', 12345),
(30, 'qwerty', 'qwex 2132454', 'nada@nada.com', '1234567', 123456);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `cod_producto` int(11) NOT NULL,
  `nombre` varchar(55) DEFAULT NULL,
  `descripcion` varchar(55) DEFAULT NULL,
  `Cat_ID` int(11) NOT NULL,
  `cod_prov` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`cod_producto`, `nombre`, `descripcion`, `Cat_ID`, `cod_prov`) VALUES
(10, 'nada', 'nada de na da', 5, 1),
(11, 'nada', 'nada de na da', 5, 1),
(12, 'nada', 'nada de na da', 5, 1),
(13, 'nada', 'nada de na da', 5, 1),
(14, 'nada', 'nada de na da', 5, 1),
(15, 'nada', 'nada de na da', 5, 1),
(16, 'nada', 'nada de na da', 5, 1),
(17, 'nada', 'nada de na da', 5, 1),
(18, 'nada', 'nada de na da', 5, 1),
(19, 'nada', 'nada de na da', 5, 1),
(20, 'nada', 'nada de na da', 5, 1),
(21, 'nada', 'nada de na da', 5, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `cod_proveedor` int(11) NOT NULL,
  `nombre` varchar(55) DEFAULT NULL,
  `email` varchar(55) DEFAULT NULL,
  `telefono` varchar(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`cod_proveedor`, `nombre`, `email`, `telefono`) VALUES
(1, 'oscar', 'nada@nada.com', '12345678');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`CategoryID`),
  ADD KEY `Categories_CategoryName` (`CategoryName`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`cod_producto`),
  ADD KEY `Cat_ID` (`Cat_ID`),
  ADD KEY `cod_prov` (`cod_prov`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`cod_proveedor`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `CategoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`Cat_ID`) REFERENCES `categories` (`CategoryID`),
  ADD CONSTRAINT `producto_ibfk_2` FOREIGN KEY (`cod_prov`) REFERENCES `proveedor` (`cod_proveedor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
