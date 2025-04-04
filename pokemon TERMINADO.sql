-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-03-2025 a las 00:42:56
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pokemon`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrenador`
--

CREATE TABLE `entrenador` (
  `ID_ENTRENADOR` int(11) NOT NULL,
  `USUARIO` varchar(20) NOT NULL,
  `PASSWORD` varchar(20) NOT NULL,
  `POKEDOLLARES` int(11) NOT NULL DEFAULT 1000
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `entrenador`
--

INSERT INTO `entrenador` (`ID_ENTRENADOR`, `USUARIO`, `PASSWORD`, `POKEDOLLARES`) VALUES
(1, 'YULIA', '123456', 1000),
(2, 'ANGELA', '123456', 1000),
(3, 'LARA', '123456', 1000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mochila`
--

CREATE TABLE `mochila` (
  `ID_ENTRENADOR` int(11) NOT NULL,
  `ID_OBJETO` int(11) NOT NULL,
  `CANTIDAD` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `mochila`
--

INSERT INTO `mochila` (`ID_ENTRENADOR`, `ID_OBJETO`, `CANTIDAD`) VALUES
(1, 1, 2),
(1, 6, 10),
(1, 7, 1),
(1, 8, 12),
(2, 2, 1),
(2, 4, 2),
(2, 8, 4),
(3, 1, 1),
(3, 3, 2),
(3, 5, 1),
(3, 8, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimiento`
--

CREATE TABLE `movimiento` (
  `ID_MOVIMIENTO` int(11) NOT NULL,
  `NOM_MOVIMIENTO` varchar(20) NOT NULL,
  `NIVEL_APRENDIZAJE` int(11) NOT NULL,
  `TIPO` varchar(20) NOT NULL,
  `TIPO_MOV` varchar(20) DEFAULT NULL,
  `PP_MAX` int(11) NOT NULL,
  `POTENCIA` int(11) DEFAULT NULL,
  `ESTADO` varchar(20) DEFAULT NULL,
  `TURNOS` int(11) DEFAULT NULL,
  `MEJORA` varchar(20) DEFAULT NULL,
  `CANTIDAD` int(11) DEFAULT 1
) ;

--
-- Volcado de datos para la tabla `movimiento`
--

INSERT INTO `movimiento` (`ID_MOVIMIENTO`, `NOM_MOVIMIENTO`, `NIVEL_APRENDIZAJE`, `TIPO`, `TIPO_MOV`, `PP_MAX`, `POTENCIA`, `ESTADO`, `TURNOS`, `MEJORA`, `CANTIDAD`) VALUES
(1, 'LÁTIGO CEPA', 7, 'ATAQUE', 'NORMAL', 25, 45, NULL, NULL, NULL, NULL),
(2, 'DRENADORAS', 10, 'ESTADO', 'ELECTRICO', 10, 3, NULL, NULL, NULL, NULL),
(3, 'BOMBA LODO', 20, 'ATAQUE', 'FUEGO', 10, 90, NULL, NULL, NULL, NULL),
(4, 'ASCUAS', 5, 'MEJORA', 'BICHO', 25, 40, 'QUEMADO', NULL, NULL, 1),
(5, 'LANZALLAMAS', 36, 'ATAQUE', 'PSIQUICO', 15, 90, 'QUEMADO', 2, NULL, 1),
(6, 'VUELO', 34, 'ATAQUE', 'PSIQUICO', 15, 90, NULL, NULL, NULL, 1),
(7, 'PISTOLA AGUA', 5, 'ATAQUE', 'AGUA', 25, 40, NULL, NULL, NULL, 1),
(8, 'HIDROBOMBA', 40, 'ATAQUE', 'AGUA', 5, 110, NULL, NULL, NULL, NULL),
(9, 'RAYO HIELO', 30, 'ATAQUE', 'PLANTA', 10, 90, 'CONGELADO', NULL, NULL, 1),
(10, 'PLACAJE', 1, 'ATAQUE', 'PLANTA', 35, 40, NULL, NULL, NULL, 1),
(11, 'FORTALEZA', 5, 'MEJORA', 'DRAGON', 30, NULL, NULL, NULL, NULL, 1),
(12, 'RAPIDO', 34, 'ATAQUE', 'PSIQUICO', 10, 90, NULL, NULL, NULL, 1),
(13, 'PICOTAZO VENENO', 1, 'ATAQUE', 'VENENO', 35, 35, 'ENVENENADO', NULL, NULL, 1),
(14, 'DOBLE ATAQUE', 20, 'ATAQUE', 'NORMAL', 20, 25, NULL, NULL, NULL, 1),
(15, 'TÓXICO', 30, 'ESTADO', 'VENENO', 10, NULL, 'ENVENENADO', NULL, NULL, 1),
(16, 'ATAQUE RÁPIDO', 10, 'ATAQUE', 'NORMAL', 30, 40, NULL, NULL, NULL, 1),
(17, 'TORNADO', 15, 'ATAQUE', 'VOLADOR', 35, 40, NULL, NULL, NULL, 1),
(18, 'DANZA PLUMA', 36, 'ESTADO', 'VOLADOR', 15, 30, NULL, NULL, NULL, 1),
(19, 'MORDISCO', 7, 'ATAQUE', 'BICHO', 25, 60, NULL, NULL, NULL, 1),
(20, 'HIPERCOLMILLO', 30, 'ATAQUE', 'FANTASMA', 15, 80, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimiento_pokemon`
--

CREATE TABLE `movimiento_pokemon` (
  `ID_POKEMON` int(11) NOT NULL,
  `ID_MOVIMIENTO` int(11) NOT NULL,
  `PP` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `movimiento_pokemon`
--

INSERT INTO `movimiento_pokemon` (`ID_POKEMON`, `ID_MOVIMIENTO`, `PP`) VALUES
(1, 101, 25),
(1, 102, 10),
(1, 103, 10),
(4, 104, 25),
(4, 105, 15),
(4, 106, 15),
(7, 107, 25),
(7, 108, 5),
(7, 109, 10),
(10, 110, 35),
(10, 111, 30),
(12, 112, 10),
(13, 113, 35),
(15, 114, 20),
(15, 115, 10),
(16, 116, 30),
(16, 117, 35),
(18, 118, 15),
(19, 119, 25),
(19, 120, 15),
(20, 121, 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `objeto`
--

CREATE TABLE `objeto` (
  `ID_OBJETO` int(11) NOT NULL,
  `NOMBRE_OBJETO` varchar(20) NOT NULL,
  `ATAQUE` int(11) DEFAULT NULL,
  `AT_ESPECIAL` int(11) DEFAULT NULL,
  `DEFENSA` int(11) DEFAULT NULL,
  `DEF_ESPECIAL` int(11) DEFAULT NULL,
  `VELOCIDAD` int(11) DEFAULT NULL,
  `PRECIO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `objeto`
--

INSERT INTO `objeto` (`ID_OBJETO`, `NOMBRE_OBJETO`, `ATAQUE`, `AT_ESPECIAL`, `DEFENSA`, `DEF_ESPECIAL`, `VELOCIDAD`, `PRECIO`) VALUES
(1, 'PESA', 20, NULL, 20, NULL, -20, 100),
(2, 'PLUMA', 30, NULL, -20, -20, NULL, 150),
(3, 'CHALECO', -15, NULL, 20, 20, -15, 200),
(4, 'BASTÓN', NULL, NULL, NULL, NULL, -15, 1000),
(5, 'PILAS', NULL, NULL, NULL, NULL, -30, 3000),
(6, 'ETER', NULL, NULL, NULL, NULL, NULL, 150),
(7, 'ANILLO UNICO', 10, NULL, NULL, NULL, NULL, 100000),
(8, 'POKEBALL', NULL, NULL, NULL, NULL, NULL, 50);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pokedex`
--

CREATE TABLE `pokedex` (
  `NUM_POKEDEX` int(11) NOT NULL,
  `NOMBRE` varchar(20) NOT NULL,
  `IMG_FRONTAL` varchar(20) NOT NULL,
  `IMG_BACK` varchar(20) NOT NULL,
  `SONIDO` varchar(20) NOT NULL,
  `NIVEL_EVO` int(11) DEFAULT NULL,
  `TIPO_1` varchar(20) NOT NULL,
  `TIPO_2` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pokedex`
--

INSERT INTO `pokedex` (`NUM_POKEDEX`, `NOMBRE`, `IMG_FRONTAL`, `IMG_BACK`, `SONIDO`, `NIVEL_EVO`, `TIPO_1`, `TIPO_2`) VALUES
(1, 'BULBASAUR', '1.PNG', '1.PNG', '1.wav', 16, 'PLANTA', 'VENENO'),
(2, 'IVYSAUR', '2.PNG', '2.PNG', '2.wav', 32, 'PLANTA', 'VENENO'),
(3, 'VENUSAUR', '3.PNG', '3.PNG', '3.wav', NULL, 'PLANTA', 'VENENO'),
(4, 'CHARMANDER', '4.PNG', '4.PNG', '4.wav', 16, 'FUEGO', NULL),
(5, 'CHARMELEON', '5.PNG', '5.PNG', '5.wav', 36, 'FUEGO', NULL),
(6, 'CHARIZARD', '6.PNG', '6.PNG', '6.wav', NULL, 'FUEGO', 'VOLADOR'),
(7, 'SQUIRTLE', '7.PNG', '7.PNG', '7.wav', 16, 'AGUA', NULL),
(8, 'WARTORFLE', '8.PNG', '8.PNG', '8.wav', 36, 'AGUA', NULL),
(9, 'BLASTOISE', '9.PNG', '9.PNG', '9.wav', NULL, 'AGUA', NULL),
(10, 'CATERPIE', '10.PNG', '10.PNG', '10.wav', 7, 'BICHO', NULL),
(11, 'METAPOD', '11.PNG', '11.PNG', '11.wav', 10, 'BICHO', NULL),
(12, 'BUTTERFREE', '12.PNG', '12.PNG', '12.wav', NULL, 'BICHO', 'VOLADOR'),
(13, 'WEEDLE', '13.PNG', '13.PNG', '13.wav', 7, 'BICHO', 'VENENO'),
(14, 'KAKUNA', '14.PNG', '14.PNG', '14.wav', 10, 'BICHO', 'VENENO'),
(15, 'BEEDRILL', '15.PNG', '15.PNG', '15.wav', NULL, 'BICHO', 'VENENO'),
(16, 'PIDGEY', '16.PNG', '16.PNG', '16.wav', 18, 'NORMAL', 'VOLADOR'),
(17, 'PIDGEOTTO', '17.PNG', '17.PNG', '17.wav', 36, 'NORMAL', 'VOLADOR'),
(18, 'PIDGEOT', '18.PNG', '18.PNG', '18.wav', NULL, 'NORMAL', 'VOLADOR'),
(19, 'RATTATA', '19.PNG', '19.PNG', '19.wav', 20, 'NORMAL', NULL),
(20, 'TARICATE', '20.PNG', '20.PNG', '20.wav', NULL, 'NORMAL', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pokemon`
--

CREATE TABLE `pokemon` (
  `ID_POKEMON` int(11) NOT NULL,
  `NUM_POKEDEX` int(11) DEFAULT NULL,
  `ID_ENTRENADOR` int(11) DEFAULT NULL,
  `MOTE` varchar(20) DEFAULT NULL,
  `VITALIDAD` int(11) NOT NULL,
  `ATAQUE` int(11) NOT NULL,
  `ATAQUE_ESPECIAL` int(11) NOT NULL,
  `DEFENSA` int(11) NOT NULL,
  `DEFENSA_ESPECIAL` int(11) NOT NULL,
  `VELOCIDAD` int(11) NOT NULL,
  `NIVEL` int(11) NOT NULL,
  `FERTILIDAD` int(11) NOT NULL CHECK (`FERTILIDAD` between 0 and 5),
  `SEXO` char(1) NOT NULL CHECK (`SEXO` in ('H','M','X')),
  `ESTADO` varchar(20) DEFAULT NULL,
  `EQUIPO` int(11) NOT NULL DEFAULT 3,
  `ID_OBJETO` int(11) DEFAULT NULL,
  `EXPERIENCIA` int(11) DEFAULT 0
) ;

--
-- Volcado de datos para la tabla `pokemon`
--

INSERT INTO `pokemon` (`ID_POKEMON`, `NUM_POKEDEX`, `ID_ENTRENADOR`, `MOTE`, `VITALIDAD`, `ATAQUE`, `ATAQUE_ESPECIAL`, `DEFENSA`, `DEFENSA_ESPECIAL`, `VELOCIDAD`, `NIVEL`, `FERTILIDAD`, `SEXO`, `ESTADO`, `EQUIPO`, `ID_OBJETO`, `EXPERIENCIA`) VALUES
(1, 1, 1, 'BROTO', 45, 49, 65, 49, 65, 45, 5, 5, 'M', 'NORMAL', 1, NULL, 0),
(2, 2, 1, 'FLORA', 60, 62, 80, 63, 80, 60, 16, 4, 'X', 'NORMAL', 1, NULL, 0),
(3, 3, 1, 'TITANIA', 80, 82, 100, 83, 100, 80, 32, 3, 'M', 'NORMAL', 1, NULL, 0),
(4, 4, 2, 'CHISPA', 39, 52, 60, 43, 50, 65, 5, 4, 'H', 'NORMAL', 2, NULL, 0),
(5, 5, 2, 'INFERNO', 58, 64, 80, 58, 65, 80, 16, 4, 'M', 'NORMAL', 2, NULL, 0),
(6, 6, 2, 'DRACO', 78, 84, 109, 78, 85, 100, 36, 3, 'X', 'NORMAL', 2, NULL, 0),
(7, 7, 3, 'TURBO', 44, 48, 50, 65, 64, 43, 5, 5, 'H', 'NORMAL', 3, NULL, 0),
(8, 8, 3, 'MAREA', 59, 63, 65, 80, 80, 58, 16, 4, 'M', 'NORMAL', 3, NULL, 0),
(9, 9, 3, 'CAÑÓN', 79, 83, 85, 100, 105, 78, 36, 3, 'M', 'NORMAL', 3, NULL, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `entrenador`
--
ALTER TABLE `entrenador`
  ADD PRIMARY KEY (`ID_ENTRENADOR`);

--
-- Indices de la tabla `mochila`
--
ALTER TABLE `mochila`
  ADD PRIMARY KEY (`ID_ENTRENADOR`,`ID_OBJETO`),
  ADD KEY `FK_MOCHILA_OBJETO` (`ID_OBJETO`);

--
-- Indices de la tabla `movimiento`
--
ALTER TABLE `movimiento`
  ADD PRIMARY KEY (`ID_MOVIMIENTO`);

--
-- Indices de la tabla `movimiento_pokemon`
--
ALTER TABLE `movimiento_pokemon`
  ADD PRIMARY KEY (`ID_POKEMON`,`ID_MOVIMIENTO`);

--
-- Indices de la tabla `objeto`
--
ALTER TABLE `objeto`
  ADD PRIMARY KEY (`ID_OBJETO`);

--
-- Indices de la tabla `pokedex`
--
ALTER TABLE `pokedex`
  ADD PRIMARY KEY (`NUM_POKEDEX`);

--
-- Indices de la tabla `pokemon`
--
ALTER TABLE `pokemon`
  ADD PRIMARY KEY (`ID_POKEMON`),
  ADD KEY `POKE_POKEDEX_FK` (`NUM_POKEDEX`),
  ADD KEY `POKEMON_ENTRENADOR_FK` (`ID_ENTRENADOR`),
  ADD KEY `POKEMON_OBJETO_FK` (`ID_OBJETO`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `mochila`
--
ALTER TABLE `mochila`
  ADD CONSTRAINT `FK_MOCHILA_ENTRENADOR` FOREIGN KEY (`ID_ENTRENADOR`) REFERENCES `entrenador` (`ID_ENTRENADOR`),
  ADD CONSTRAINT `FK_MOCHILA_OBJETO` FOREIGN KEY (`ID_OBJETO`) REFERENCES `objeto` (`ID_OBJETO`),
  ADD CONSTRAINT `MOCHILA_ENTRENADOR_FK` FOREIGN KEY (`ID_ENTRENADOR`) REFERENCES `entrenador` (`ID_ENTRENADOR`);

--
-- Filtros para la tabla `pokemon`
--
ALTER TABLE `pokemon`
  ADD CONSTRAINT `POKEMON_ENTRENADOR_FK` FOREIGN KEY (`ID_ENTRENADOR`) REFERENCES `entrenador` (`ID_ENTRENADOR`),
  ADD CONSTRAINT `POKEMON_OBJETO_FK` FOREIGN KEY (`ID_OBJETO`) REFERENCES `objeto` (`ID_OBJETO`) ON DELETE SET NULL,
  ADD CONSTRAINT `POKE_POKEDEX_FK` FOREIGN KEY (`NUM_POKEDEX`) REFERENCES `pokedex` (`NUM_POKEDEX`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
