-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 13-05-2021 a las 06:38:25
-- Versión del servidor: 5.7.24
-- Versión de PHP: 7.4.13

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

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `listar_diagnosticos` ()  SELECT idDiagnostico,UPPER(CONCAT(cie10,' - ',descripcion)) as descripcion FROM `apsi_diagnosticos`$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `LISTAR_DIAGNOSTICO_NO_SELECCIONADO` (IN `_idDiagnostico` INT(11))  SELECT idDiagnostico,UPPER(CONCAT(cie10,' - ',descripcion)) as descripcion FROM apsi_diagnosticos WHERE idDiagnostico != _idDiagnostico$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `listar_parentesco` ()  select idParentesco,descParent from apsi_parentesco$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `listar_profesionales` ()  SELECT idProfesional,apellidos_nombres FROM apsi_profesionales ORDER BY apellidos_nombres ASC$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `listar_tipoSexo` ()  SELECT * FROM apsi_tiposexo$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `listar_tipSeguimiento` ()  SELECT idTipSeg,descTipSeg FROM apsi_tipseguimiento$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `apsi_condlaboral`
--

CREATE TABLE `apsi_condlaboral` (
  `idCondicion` int(11) NOT NULL,
  `desCond` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `apsi_condlaboral`
--

INSERT INTO `apsi_condlaboral` (`idCondicion`, `desCond`) VALUES
(1, 'Nombrado'),
(2, 'CAS');

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
-- Estructura de tabla para la tabla `apsi_parentesco`
--

CREATE TABLE `apsi_parentesco` (
  `idParentesco` int(11) NOT NULL,
  `descParent` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `apsi_parentesco`
--

INSERT INTO `apsi_parentesco` (`idParentesco`, `descParent`) VALUES
(1, 'PADRE'),
(2, 'MADRE'),
(3, 'HIJO(A)'),
(4, 'ABUELO(A)'),
(5, 'NIETO(A)'),
(6, 'HERMANO(A)'),
(7, 'TIO(A)'),
(8, 'SOBRINO(A)');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `apsi_profesionales`
--

CREATE TABLE `apsi_profesionales` (
  `idProfesional` int(11) NOT NULL,
  `dni` text COLLATE utf8_bin,
  `cpsp` text COLLATE utf8_bin NOT NULL,
  `apellidos_nombres` text COLLATE utf8_bin,
  `fecha_nacimiento` date NOT NULL,
  `condicion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `apsi_profesionales`
--

INSERT INTO `apsi_profesionales` (`idProfesional`, `dni`, `cpsp`, `apellidos_nombres`, `fecha_nacimiento`, `condicion`) VALUES
(1, '6958470', '12936', 'CORDOVA CACHAY MATILDE', '1956-10-19', 1),
(2, '9851044', '4398', 'FLORES CASTILLO IRMA', '1958-05-05', 1),
(3, '9512967', '6287', 'MORI ZUBIATE ZONIA EMPERATRÍZ', '1968-12-10', 1),
(4, '9479664', '32629', 'PABLO JARAMILLO NORMA BEATRIZ', '1969-01-29', 1),
(5, '10725238', '10444', 'RAPRI SOLANO EDSON', '1977-11-25', 1),
(6, '6781469', '7045', 'SALDAÑA CHAVEZ KELLY', '1971-07-29', 1),
(7, '6123251', '10097', 'SANCHEZ AQUINO NORMA NELIDA', '1962-08-25', 1),
(8, '10288615', '25775', 'TRUJILLO CASTILLO MIRIAM ROCÍO', '1977-11-25', 2),
(9, '7178930', '34522', 'VELASQUEZ REYES MARIA ANGELA', '1966-08-02', 1),
(10, '46624029', '21470', 'ZAVALETA LOPEZ DARNELLY JAHAIRA', '1990-11-21', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `apsi_seguimiento`
--

CREATE TABLE `apsi_seguimiento` (
  `idSeguimiento` int(11) NOT NULL,
  `fechaRegSeg` date NOT NULL,
  `tipoSeguimiento` int(11) NOT NULL,
  `idprofesional` int(11) NOT NULL,
  `nroDocPac` text COLLATE utf8_bin NOT NULL,
  `nroHisPac` text COLLATE utf8_bin NOT NULL,
  `nombApPac` text COLLATE utf8_bin NOT NULL,
  `tipSexPac` int(11) NOT NULL,
  `edadPac` text COLLATE utf8_bin NOT NULL,
  `diag1Pac` int(11) NOT NULL,
  `diag2Pac` int(11) NOT NULL DEFAULT '0',
  `comFamiliar` text COLLATE utf8_bin,
  `nroDocFam` text COLLATE utf8_bin,
  `nombApFam` text COLLATE utf8_bin,
  `parentFam` int(11) NOT NULL DEFAULT '0',
  `tipSexFam` int(11) NOT NULL DEFAULT '0',
  `edadFam` text COLLATE utf8_bin,
  `diag1Fam` int(11) NOT NULL DEFAULT '0',
  `diag2Fam` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `apsi_tiposexo`
--

CREATE TABLE `apsi_tiposexo` (
  `idTipSexo` int(11) NOT NULL,
  `desctipSexo` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `apsi_tiposexo`
--

INSERT INTO `apsi_tiposexo` (`idTipSexo`, `desctipSexo`) VALUES
(1, 'MASCULINO'),
(2, 'FEMENINO');

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
-- Indices de la tabla `apsi_condlaboral`
--
ALTER TABLE `apsi_condlaboral`
  ADD PRIMARY KEY (`idCondicion`);

--
-- Indices de la tabla `apsi_diagnosticos`
--
ALTER TABLE `apsi_diagnosticos`
  ADD PRIMARY KEY (`idDiagnostico`);

--
-- Indices de la tabla `apsi_parentesco`
--
ALTER TABLE `apsi_parentesco`
  ADD PRIMARY KEY (`idParentesco`);

--
-- Indices de la tabla `apsi_profesionales`
--
ALTER TABLE `apsi_profesionales`
  ADD PRIMARY KEY (`idProfesional`);

--
-- Indices de la tabla `apsi_seguimiento`
--
ALTER TABLE `apsi_seguimiento`
  ADD PRIMARY KEY (`idSeguimiento`);

--
-- Indices de la tabla `apsi_tiposexo`
--
ALTER TABLE `apsi_tiposexo`
  ADD PRIMARY KEY (`idTipSexo`);

--
-- Indices de la tabla `apsi_tipseguimiento`
--
ALTER TABLE `apsi_tipseguimiento`
  ADD PRIMARY KEY (`idTipSeg`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `apsi_condlaboral`
--
ALTER TABLE `apsi_condlaboral`
  MODIFY `idCondicion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `apsi_diagnosticos`
--
ALTER TABLE `apsi_diagnosticos`
  MODIFY `idDiagnostico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `apsi_parentesco`
--
ALTER TABLE `apsi_parentesco`
  MODIFY `idParentesco` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `apsi_profesionales`
--
ALTER TABLE `apsi_profesionales`
  MODIFY `idProfesional` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `apsi_seguimiento`
--
ALTER TABLE `apsi_seguimiento`
  MODIFY `idSeguimiento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `apsi_tiposexo`
--
ALTER TABLE `apsi_tiposexo`
  MODIFY `idTipSexo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `apsi_tipseguimiento`
--
ALTER TABLE `apsi_tipseguimiento`
  MODIFY `idTipSeg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
