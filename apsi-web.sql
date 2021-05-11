-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 11-05-2021 a las 20:01:17
-- Versión del servidor: 5.7.24
-- Versión de PHP: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `apsi-web`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `apsi_diagnosticos`
--

CREATE TABLE `apsi_diagnosticos` (
  `idDiagnostico` int(11) NOT NULL,
  `cie10` text COLLATE utf8_bin,
  `descripcion` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `apsi_diagnosticos`
--

INSERT INTO `apsi_diagnosticos` (`idDiagnostico`, `cie10`, `descripcion`) VALUES
(1, '99401.19', 'Consejería para el autocuidado'),
(2, 'F32.0', 'Episodio depresivo leve'),
(3, 'F41.2', 'Trastorno mixto de ansiedad y depresión'),
(4, 'F41.9', 'Trastorno de ansiedad, no especificado'),
(5, 'F43.0', 'Reacción al estrés agudo'),
(6, 'F43.1', 'Trastorno de estrés postraumático'),
(7, 'F43.2', 'Trastornos de adaptación'),
(8, 'Z65.5', 'Problemas relacionados con la exposición a desastre, guerra u otras hostilidades');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `apsi_profesionales`
--

CREATE TABLE `apsi_profesionales` (
  `idProfesional` int(11) NOT NULL,
  `dni` text COLLATE utf8_bin,
  `nomb_apellidos` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `apsi_tipseguimiento`
--

CREATE TABLE `apsi_tipseguimiento` (
  `idTipSeg` int(11) NOT NULL,
  `descTipSeg` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `apsi_tipseguimiento`
--

INSERT INTO `apsi_tipseguimiento` (`idTipSeg`, `descTipSeg`) VALUES
(1, 'FAM. FALLECIDO'),
(2, 'HOSPITALIZADOS'),
(3, 'PAC. ALTA MEDICA'),
(4, 'PERSONAL DE SALUD');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `apsi_diagnosticos`
--
ALTER TABLE `apsi_diagnosticos`
  ADD PRIMARY KEY (`idDiagnostico`);

--
-- Indices de la tabla `apsi_profesionales`
--
ALTER TABLE `apsi_profesionales`
  ADD PRIMARY KEY (`idProfesional`);

--
-- Indices de la tabla `apsi_tipseguimiento`
--
ALTER TABLE `apsi_tipseguimiento`
  ADD PRIMARY KEY (`idTipSeg`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `apsi_diagnosticos`
--
ALTER TABLE `apsi_diagnosticos`
  MODIFY `idDiagnostico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `apsi_profesionales`
--
ALTER TABLE `apsi_profesionales`
  MODIFY `idProfesional` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `apsi_tipseguimiento`
--
ALTER TABLE `apsi_tipseguimiento`
  MODIFY `idTipSeg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
