-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 03-04-2017 a las 18:27:40
-- Versión del servidor: 10.1.19-MariaDB
-- Versión de PHP: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dbJornaleros`
--
CREATE DATABASE IF NOT EXISTS `dbJornaleros` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `dbJornaleros`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbljornalero`
--

CREATE TABLE `tbljornalero` (
  `idJornalero` int(11) NOT NULL,
  `nombres` varchar(70) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `peso` int(11) NOT NULL,
  `imagen` varchar(30) NOT NULL DEFAULT 'default.png'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbljornalero`
--

INSERT INTO `tbljornalero` (`idJornalero`, `nombres`, `correo`, `fechaNacimiento`, `peso`, `imagen`) VALUES
(7, 'Yhoan Galeano', 'yhoangaleano@gmail.com', '1993-07-05', 75, 'hero.png'),
(8, 'Dulce Galeano Martinez', 'dulce0210@gmail.com', '2015-10-02', 8, 'woman.png'),
(9, 'Christian Serna Gamez', 'chgamez@gmail.com', '1991-02-10', 65, 'cool.png'),
(10, 'Jose Lopez', 'josel@gmail.com', '1992-10-12', 67, 'default.png');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbljornalero`
--
ALTER TABLE `tbljornalero`
  ADD PRIMARY KEY (`idJornalero`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbljornalero`
--
ALTER TABLE `tbljornalero`
  MODIFY `idJornalero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
