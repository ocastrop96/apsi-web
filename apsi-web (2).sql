-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 14-05-2021 a las 20:13:38
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

CREATE DEFINER=`root`@`localhost` PROCEDURE `registrar_seguimiento_cf` (IN `_fechaRegSeg` DATE, IN `_tipoSeguimiento` INT(11), IN `_idprofesional` INT(11), IN `_nroDocPac` TEXT, IN `_nroHisPac` TEXT, IN `_nombApPac` TEXT, IN `_tipSexPac` INT(11), IN `_edadPac` TEXT, IN `_diag1Pac` INT(11), IN `_diag2Pac` INT(11), IN `_comFamiliar` TEXT, IN `_nroDocFam` TEXT, IN `_nombApFam` TEXT, IN `_parentFam` INT(11), IN `_tipSexFam` INT(11), IN `_edadFam` TEXT, IN `_diag1Fam` INT(11), IN `_diag2Fam` INT(11))  INSERT INTO apsi_seguimiento (
	fechaRegSeg,
	tipoSeguimiento,
	idprofesional,
	nroDocPac,
	nroHisPac,
	nombApPac,
	tipSexPac,
	edadPac,
	diag1Pac,
	diag2Pac,
	comFamiliar,
	nroDocFam,
	nombApFam,
	parentFam,
	tipSexFam,
	edadFam,
	diag1Fam,
	diag2Fam 
)
VALUES
	(
		_fechaRegSeg,
		_tipoSeguimiento,
		_idprofesional,
		_nroDocPac,
		_nroHisPac,
		_nombApPac,
		_tipSexPac,
		_edadPac,
		_diag1Pac,
		_diag2Pac,
		_comFamiliar,
		_nroDocFam,
		_nombApFam,
		_parentFam,
		_tipSexFam,
		_edadFam,
		_diag1Fam,
	_diag2Fam 
	)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `registrar_seguimiento_sf` (IN `_fechaRegSeg` DATE, IN `_tipoSeguimiento` INT(11), IN `_idprofesional` INT(11), IN `_nroDocPac` TEXT, IN `_nroHisPac` TEXT, IN `_nombApPac` TEXT, IN `_tipSexPac` INT(11), IN `_edadPac` TEXT, IN `_diag1Pac` INT(11), IN `_diag2Pac` INT(11), IN `_comFamiliar` TEXT)  INSERT INTO apsi_seguimiento ( fechaRegSeg, tipoSeguimiento, idprofesional, nroDocPac, nroHisPac, nombApPac, tipSexPac, edadPac, diag1Pac, diag2Pac, comFamiliar )
VALUES
	(_fechaRegSeg,_tipoSeguimiento,_idprofesional,_nroDocPac,_nroHisPac,_nombApPac,_tipSexPac,_edadPac,_diag1Pac,_diag2Pac,_comFamiliar)$$

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
(8, 'SOBRINO(A)'),
(9, 'ESPOSO(A)');

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

--
-- Volcado de datos para la tabla `apsi_seguimiento`
--

INSERT INTO `apsi_seguimiento` (`idSeguimiento`, `fechaRegSeg`, `tipoSeguimiento`, `idprofesional`, `nroDocPac`, `nroHisPac`, `nombApPac`, `tipSexPac`, `edadPac`, `diag1Pac`, `diag2Pac`, `comFamiliar`, `nroDocFam`, `nombApFam`, `parentFam`, `tipSexFam`, `edadFam`, `diag1Fam`, `diag2Fam`) VALUES
(1, '2021-04-12', 1, 1, '77478995', '1233466', 'Olger Castro', 1, '25 años', 1, 0, 'NO', NULL, NULL, 0, 0, NULL, 0, 0),
(2, '2021-03-16', 3, 1, '77478995', '1233466', 'Olger Castro', 1, '25 años', 1, 0, 'NO', NULL, NULL, 0, 0, NULL, 0, 0),
(3, '2021-05-13', 3, 1, '77478995', '1233466', 'Olger Castro', 1, '25 años', 1, 0, 'NO', NULL, NULL, 0, 0, NULL, 0, 0),
(4, '2021-02-15', 3, 1, '77478995', '1233466', 'Olger Castro', 1, '25 años', 1, 0, 'NO', NULL, NULL, 0, 0, NULL, 0, 0),
(5, '2021-05-13', 3, 1, '77478995', '1233466', 'Olger Castro', 1, '25 años', 1, 0, 'NO', NULL, NULL, 0, 0, NULL, 0, 0),
(6, '2021-05-13', 3, 1, '77478995', '1233466', 'Olger Castro', 1, '25 años', 1, 0, 'NO', NULL, NULL, 0, 0, NULL, 0, 0),
(7, '2021-05-13', 3, 1, '77478995', '1233466', 'Olger Castro', 1, '25 años', 1, 0, 'NO', NULL, NULL, 0, 0, NULL, 0, 0),
(8, '2021-05-13', 3, 1, '77478995', '1233466', 'Olger Castro', 1, '25 años', 1, 0, 'NO', NULL, NULL, 0, 0, NULL, 0, 0),
(9, '2021-05-13', 4, 1, '77478995', '1233466', 'Olger Castro', 1, '25 años', 1, 0, 'NO', NULL, NULL, 0, 0, NULL, 0, 0),
(10, '2021-05-13', 4, 1, '77478995', '1233466', 'Olger Castro', 1, '25 años', 1, 0, 'NO', NULL, NULL, 0, 0, NULL, 0, 0),
(11, '2021-05-13', 4, 1, '77478995', '123', 'Olger Ivan Castro Palacios', 1, '25 años', 1, 0, 'NO', NULL, NULL, 0, 0, NULL, 0, 0),
(12, '2021-05-13', 4, 1, '77478995', '123', 'Olger Ivan Castro Palacios', 1, '25 años', 1, 0, 'NO', NULL, NULL, 0, 0, NULL, 0, 0),
(13, '2021-05-13', 4, 1, '77478995', '123', 'Olger Ivan Castro Palacios', 1, '25 años', 1, 0, 'NO', NULL, NULL, 0, 0, NULL, 0, 0),
(14, '2021-05-13', 4, 1, '77478995', '123', 'Olger Ivan Castro Palacios', 1, '25 años', 1, 0, 'NO', NULL, NULL, 0, 0, NULL, 0, 0),
(15, '2021-05-13', 4, 1, '77478995', '123', 'Olger Ivan Castro Palacios', 1, '25 años', 1, 0, 'NO', NULL, NULL, 0, 0, NULL, 0, 0),
(16, '2021-05-13', 4, 1, '77478995', '123', 'Olger Ivan Castro Palacios', 1, '25 años', 1, 0, 'NO', NULL, NULL, 0, 0, NULL, 0, 0),
(17, '2021-05-13', 4, 1, '77478995', '123', 'Olger Ivan Castro Palacios', 1, '25 años', 1, 0, 'NO', NULL, NULL, 0, 0, NULL, 0, 0),
(18, '2021-05-13', 4, 1, '77478995', '123', 'Olger Ivan Castro Palacios', 1, '25 años', 1, 0, 'NO', NULL, NULL, 0, 0, NULL, 0, 0),
(19, '2021-05-13', 4, 1, '77478995', '123', 'Olger Ivan Castro Palacios', 1, '25 años', 1, 0, 'NO', NULL, NULL, 0, 0, NULL, 0, 0),
(20, '2021-05-13', 4, 1, '77478995', '123', 'Olger Ivan Castro Palacios', 1, '25 años', 1, 0, 'NO', NULL, NULL, 0, 0, NULL, 0, 0),
(21, '2021-05-13', 4, 1, '77478995', '123', 'Olger Ivan Castro Palacios', 1, '25 años', 1, 0, 'NO', NULL, NULL, 0, 0, NULL, 0, 0),
(22, '2021-05-13', 2, 1, '77478995', '123', 'Olger Ivan Castro Palacios', 1, '25 años', 1, 0, 'NO', NULL, NULL, 0, 0, NULL, 0, 0),
(23, '2021-05-13', 3, 10, '42162499', '348158', 'William Guerrero Sandoval', 1, '39 AÑOS', 1, 0, 'NO', NULL, NULL, 0, 0, NULL, 0, 0),
(24, '2021-05-13', 4, 8, '77478995', '1212212', 'Olger Castro', 1, '24 AÑOS', 1, 2, 'NO', NULL, NULL, 0, 0, NULL, 0, 0),
(25, '2021-05-13', 1, 2, '77478995', '1515151', 'Ocastrop', 1, '25 AÑOS', 1, 2, 'SI', '1515151', 'Jajajaj', 3, 1, '45 AÑOS', 1, 2),
(26, '2021-05-13', 3, 5, '11', '11', 'Asas', 2, 'A1', 3, 0, 'NO', NULL, NULL, 0, 0, NULL, 0, 0),
(27, '2021-05-13', 3, 8, '10402790', '15151515', 'Palerma Velazco Castro', 1, '71 AÑOS', 1, 7, 'NO', NULL, NULL, 0, 0, NULL, 0, 0),
(28, '2021-05-13', 2, 4, '77478995', '111', 'Asas', 1, '25 AÑOS', 1, 0, 'SI', '151551', 'Akakak', 1, 1, 'AJAJ', 1, 0),
(29, '2021-05-13', 3, 4, '111', '111', 'Asasas', 1, '1QA', 2, 1, 'NO', NULL, NULL, 0, 0, NULL, 0, 0),
(30, '2021-05-13', 2, 9, '77478995', '1211151', 'Olger Castro', 1, '25 AÑOS', 1, 2, 'SI', '10402790', 'Palerma Velazco', 4, 2, '71 AÑOS', 2, 3),
(31, '2021-05-13', 3, 5, '77478995', '15151', 'Olger Castro', 1, '25 AÑOS', 1, 2, 'NO', NULL, NULL, 0, 0, NULL, 0, 0),
(32, '2021-05-14', 1, 4, '11', '11', 'Asas', 1, 'ASAS', 3, 0, 'SI', '111', 'Asasas', 2, 1, 'AASAS', 8, 0),
(33, '2021-05-14', 4, 2, '454545', '15154', 'Kakak', 1, '254', 1, 2, 'NO', NULL, NULL, 0, 0, NULL, 0, 0),
(34, '2021-05-15', 4, 2, '111', '1', 'Sasas', 1, 'ASASA', 2, 3, 'NO', NULL, NULL, 0, 0, NULL, 0, 0);

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
  MODIFY `idParentesco` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `apsi_profesionales`
--
ALTER TABLE `apsi_profesionales`
  MODIFY `idProfesional` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `apsi_seguimiento`
--
ALTER TABLE `apsi_seguimiento`
  MODIFY `idSeguimiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

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
