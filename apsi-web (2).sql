-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 17-05-2021 a las 12:11:27
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
(1, '2021-05-14', 2, 10, '74642267', '743643', 'Luis Rodriguez Garrafa', 1, '24', 1, 0, 'SI', '06901209', 'Pilar Garrafa Sanchez', 2, 2, '61', 4, 0),
(2, '2021-05-14', 2, 1, '10743021', '1305560', 'Tony Ruiz Villegas', 1, '43', 5, 0, 'SI', '08131002', 'Joana Deyra Gonzales', 8, 2, '51', 5, 0),
(3, '2021-05-14', 2, 1, '09045878', '1336172', 'Angel Ataucusi Ludeña', 1, '55', 5, 0, 'SI', '09521648', 'Elena Ataucusi Ludeña', 6, 2, '49', 5, 0),
(4, '2021-05-14', 2, 1, '09984155', '491430', 'Ynes Rivera Yupanqui', 2, '46', 5, 0, 'SI', '72896185', 'Pamela Critina Tarmeño Rivera', 3, 2, '26', 5, 0),
(5, '2021-05-14', 2, 1, '06857535', '310793', 'Tomas Corona Castillo', 1, '79', 5, 2, 'SI', '09472422', 'Hilda Maria Coronado Huaman', 3, 2, '53', 2, 0),
(6, '2021-05-14', 2, 1, '44600766', '1335290', 'Ismael Severino Rivas', 1, '36', 5, 0, 'SI', '80014709', 'Maria Mercedes Bocanegra Rivas', 6, 2, '49', 2, 0),
(7, '2021-05-14', 2, 1, '09030560', '185789', 'Jorge Monge Muñoz', 1, '68', 5, 0, 'SI', '49739988', 'Lisett Monge Soto', 3, 2, '33', 5, 0),
(8, '2021-05-14', 2, 1, '48193734', '1335076', 'Edson Zanca Cuadro', 1, '47', 5, 0, 'SI', '4366004', 'Luis Angel Vivanco Cuadro', 6, 1, '35', 5, 0),
(9, '2021-05-14', 2, 10, '80645612', '1336254', 'Marco Isaias Alva Fano', 1, '41', 4, 0, 'SI', '40196938', 'Edith Castillo Gonzales', 9, 2, '38', 4, 0),
(10, '2021-05-14', 2, 10, '80645612', '1336254', 'Marco Isaias Alva Fano', 1, '41', 4, 0, 'SI', '40196938', 'Edith Castillo Gonzales', 9, 2, '38', 4, 0),
(11, '2021-05-14', 2, 10, '07074275', '1335335', 'Carlos Chavez Abanto', 1, '64', 1, 0, 'SI', '47221722', 'Brenda Chavez Giraldo', 3, 2, '25', 4, 0),
(12, '2021-05-14', 2, 10, '73771531', '1116030', 'Emiliana Quispe Hancco', 2, '24', 2, 0, 'SI', '01552621', 'Flora Hancco Apaza', 7, 2, '43', 4, 0),
(13, '2021-05-14', 2, 10, '10155015', '1336149', 'Pedro Collantes Carrasco', 1, '47', 4, 0, 'SI', '27746345', 'Elma Garcia Berneo', 9, 2, '38', 4, 0),
(14, '2021-05-14', 2, 10, '09479847', '1336428', 'Cesar Giron Arteaga', 1, '53', 2, 0, 'SI', '09732019', 'Hayde Jeronimo Carbajal', 9, 2, '45', 4, 0),
(15, '2021-05-14', 2, 10, '09045878', '1336177', 'Angel Ataucusi Ludeña', 1, '55', 1, 0, 'SI', '74885034', 'Daniel Urrutia Medina', 8, 1, '28', 1, 0),
(16, '2021-05-14', 2, 10, '06054839', '1335583', 'Maria Giraldo Zanabria', 2, '61', 4, 0, 'SI', '44557018', 'Carlos Chavez Giraldo', 3, 1, '33', 1, 0),
(17, '2021-05-14', 2, 10, '06823126', '1336372', 'Saul Chuima Ayala', 1, '81', 1, 0, 'SI', '09547020', 'Carmela Chuima Lardizabal', 3, 2, '49', 4, 0),
(18, '2021-05-15', 2, 8, '06712654', '1335713', 'Cristóbal Cardenio Sánchez Quiroz', 1, '64', 4, 0, 'SI', '48417368', 'Yaruxa Yerlandine Sánchez Ramos', 3, 2, '27', 4, 0),
(19, '2021-05-15', 2, 8, '03692991', '1197765', 'José Zacarías Coveñas Namuche', 1, '43', 4, 0, 'SI', '80372498', 'María Martha Imán Flores', 9, 2, '42', 1, 0),
(20, '2021-05-15', 2, 8, '09250003', '1336442', 'Juan José Sandoval Jiménez', 1, '56', 4, 0, 'SI', '43227196', 'Erick Sandoval Vargas', 3, 1, '35', 1, 0),
(21, '2021-05-15', 2, 8, '10160446', '1334569', 'Rosario Susana Juan Hilario', 2, '63', 4, 0, 'SI', '44869333', 'Blaise Pascal Berru Huaman', 3, 1, '33', 4, 0),
(22, '2021-05-15', 2, 8, '07815407', '1336381', 'Francisco  Luis Jines Bravo', 1, '64', 4, 0, 'SI', '49586292', 'Carlos Javier Marroquín Buiza', 8, 1, '41', 4, 0),
(23, '2021-05-15', 2, 8, '1336147', '06733983', 'Julio Dolores Arévalo', 1, '65', 4, 0, 'SI', '06779591', 'Raquel Francisca Dolores Arévalo', 6, 2, '63', 2, 0),
(24, '2021-05-15', 2, 8, '08750121', '1333492', 'Ines Cuello Aguilar', 2, '56', 4, 0, 'SI', '45103230', 'Andrea Nathaly Mogollón Cuello', 3, 2, '32', 1, 0),
(25, '2021-05-15', 2, 8, '10391720', '672407', 'Pedro Jacob Guerrero Bello', 1, '44', 4, 0, 'SI', '42368722', 'María Del Pilar Carhuayal Soto', 9, 2, '38', 1, 0),
(26, '2021-05-15', 2, 8, '10743021', '1305560', 'Tony Ruiz Villegas', 1, '43', 4, 0, 'SI', '08131002', 'Joana Elsa Deyra Gonzáles', 6, 2, '52', 1, 0),
(27, '2021-05-15', 2, 8, '07059841', '657021', 'Andrés Walter Aguirre Yataco', 1, '62', 4, 0, 'SI', '41773512', 'Christian Andrés Aguirre Saavedra', 3, 2, '38', 1, 0),
(28, '2021-05-15', 2, 8, '06857535', '310793', 'Tomas Coronado Castillo', 1, '79', 4, 0, 'SI', '09472422', 'Hilda María Coronado Huamsn', 3, 2, '53', 2, 0),
(29, '2021-05-15', 2, 8, '22977852', '1062807', 'Florentino Huaranga Castañeda', 1, '72', 2, 0, 'SI', '40229921', 'Raquel Corina Huaranga Castro De Nazar', 3, 2, '42', 4, 0),
(30, '2021-05-16', 3, 3, '77478995', '1515', 'Olger Castro', 1, '25 AÑOS', 1, 2, 'NO', NULL, NULL, 0, 0, NULL, 0, 0),
(31, '2021-05-16', 4, 5, '77478995', '15151', 'Asas', 1, '55', 1, 2, 'NO', NULL, NULL, 0, 0, NULL, 0, 0);

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
  MODIFY `idSeguimiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

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
