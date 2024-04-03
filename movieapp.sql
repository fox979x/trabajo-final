-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-04-2024 a las 00:59:10
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `movieapp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `director`
--

CREATE TABLE `director` (
  `id_director` int(11) NOT NULL,
  `nombre_director` varchar(55) NOT NULL,
  `apellido_director` varchar(55) NOT NULL,
  `pais` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `director`
--

INSERT INTO `director` (`id_director`, `nombre_director`, `apellido_director`, `pais`) VALUES
(100, 'Steven', 'Spielberg', 2),
(200, 'Dago', 'Garcia', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `id_genero` int(11) NOT NULL,
  `nombre_genero` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`id_genero`, `nombre_genero`) VALUES
(1, 'Accion'),
(2, 'Terror'),
(3, 'Comedia'),
(4, 'Aventura'),
(5, 'Drama'),
(6, 'Suspenso'),
(7, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

CREATE TABLE `pais` (
  `id_pais` int(11) NOT NULL,
  `nombre_pais` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pais`
--

INSERT INTO `pais` (`id_pais`, `nombre_pais`) VALUES
(1, 'Colombia'),
(2, 'EE-UU');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pelicula`
--

CREATE TABLE `pelicula` (
  `id_pelicula` int(11) NOT NULL,
  `nombre_pelicula` varchar(55) NOT NULL,
  `año` date NOT NULL,
  `clasificacion` char(3) NOT NULL,
  `genero` int(11) NOT NULL,
  `productora` int(11) NOT NULL,
  `pais` int(11) NOT NULL,
  `sinopsis` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pelicula`
--

INSERT INTO `pelicula` (`id_pelicula`, `nombre_pelicula`, `año`, `clasificacion`, `genero`, `productora`, `pais`, `sinopsis`) VALUES
(3, 'E.T', '0000-00-00', 'A', 7, 3, 2, 'Un pequeño extraterrestre de otro planeta queda abandonado en la Tierra cuando su nave se olvida de él. Está completamente solo y asustado hasta que Elliott, un niño de nueve años, lo encuentra y decide esconderlo en su casa para protegerlo. El chico y sus hermanos intentarán encontrar la forma de devolver al extraterrestre a su planeta antes de que lo encuentren los científicos y la policía.'),
(4, 'El paseo', '0000-00-00', 'A', 3, 2, 2, 'Las aventuras de la familia Peinado que realiza un viaje en carro desde Bogotá a Cartagena, Colombia.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productora`
--

CREATE TABLE `productora` (
  `id_prod` int(11) NOT NULL,
  `nombre_prod` varchar(55) NOT NULL,
  `pais` int(11) NOT NULL,
  `director` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productora`
--

INSERT INTO `productora` (`id_prod`, `nombre_prod`, `pais`, `director`) VALUES
(1, 'DreamWorks', 2, 100),
(2, 'Dago Productions', 1, 200),
(3, 'Universal', 2, 100);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `director`
--
ALTER TABLE `director`
  ADD PRIMARY KEY (`id_director`),
  ADD KEY `fk_pais` (`pais`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`id_genero`);

--
-- Indices de la tabla `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`id_pais`);

--
-- Indices de la tabla `pelicula`
--
ALTER TABLE `pelicula`
  ADD PRIMARY KEY (`id_pelicula`),
  ADD KEY `fk_genero` (`genero`),
  ADD KEY `fk_prod` (`productora`),
  ADD KEY `fk_pais_pel` (`pais`);

--
-- Indices de la tabla `productora`
--
ALTER TABLE `productora`
  ADD PRIMARY KEY (`id_prod`),
  ADD KEY `fk_pais_prod` (`pais`),
  ADD KEY `fk_director` (`director`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `id_genero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `pais`
--
ALTER TABLE `pais`
  MODIFY `id_pais` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `pelicula`
--
ALTER TABLE `pelicula`
  MODIFY `id_pelicula` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `productora`
--
ALTER TABLE `productora`
  MODIFY `id_prod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `director`
--
ALTER TABLE `director`
  ADD CONSTRAINT `fk_pais` FOREIGN KEY (`pais`) REFERENCES `pais` (`id_pais`);

--
-- Filtros para la tabla `pelicula`
--
ALTER TABLE `pelicula`
  ADD CONSTRAINT `fk_genero` FOREIGN KEY (`genero`) REFERENCES `genero` (`id_genero`),
  ADD CONSTRAINT `fk_pais_pel` FOREIGN KEY (`pais`) REFERENCES `pais` (`id_pais`),
  ADD CONSTRAINT `fk_prod` FOREIGN KEY (`productora`) REFERENCES `productora` (`id_prod`);

--
-- Filtros para la tabla `productora`
--
ALTER TABLE `productora`
  ADD CONSTRAINT `fk_director` FOREIGN KEY (`director`) REFERENCES `director` (`id_director`),
  ADD CONSTRAINT `fk_pais_prod` FOREIGN KEY (`pais`) REFERENCES `pais` (`id_pais`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
