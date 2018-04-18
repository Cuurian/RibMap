-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-04-2018 a las 06:06:55
-- Versión del servidor: 10.1.30-MariaDB
-- Versión de PHP: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ribmap`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `casas`
--

CREATE TABLE `casas` (
  `id` int(11) NOT NULL,
  `idFraccionamiento` int(11) NOT NULL,
  `idIcono` int(11) NOT NULL,
  `manzana` int(11) NOT NULL,
  `lote` int(11) NOT NULL,
  `tipoVivienda` varchar(50) NOT NULL,
  `tipoFachada` varchar(50) NOT NULL,
  `porcentajeConstruccion` int(11) NOT NULL,
  `numeroOficial` int(11) NOT NULL,
  `claveCatastral` int(11) NOT NULL,
  `nombreCliente` varchar(200) NOT NULL,
  `urlImagen` varchar(500) NOT NULL,
  `posicionX` int(11) NOT NULL,
  `posicionY` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `casas`
--

INSERT INTO `casas` (`id`, `idFraccionamiento`, `idIcono`, `manzana`, `lote`, `tipoVivienda`, `tipoFachada`, `porcentajeConstruccion`, `numeroOficial`, `claveCatastral`, `nombreCliente`, `urlImagen`, `posicionX`, `posicionY`) VALUES
(1, 1, 0, 666, 420, 'Casa', 'Mansion de Carton', 0, 1488, 69, 'Jeff', 'https://images.homify.com/c_fill,f_auto,q_auto:eco,w_440/v1488658051/p/photo/image/1886463/Casa_AH_4.jpg', 503, 269),
(2, 1, 1, 43, 34, 'casa', 'casa', 67, 545, 666, 'Jeff', 'http://www.casasparaconstruir.com/projetos/122/01.jpg', 255, 347);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fraccionamientos`
--

CREATE TABLE `fraccionamientos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `fraccionamientos`
--

INSERT INTO `fraccionamientos` (`id`, `nombre`) VALUES
(1, 'la jolla');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `casas`
--
ALTER TABLE `casas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `casas`
--
ALTER TABLE `casas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
