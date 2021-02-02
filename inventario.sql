-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-01-2021 a las 18:57:47
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `inventario`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `disciplinas`
--

CREATE TABLE `disciplinas` (
  `idDisciplina` int(11) NOT NULL,
  `disciplinaCodigo` varchar(4) COLLATE utf8_spanish_ci NOT NULL,
  `disciplinaDescripcion` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `disciplinas`
--

INSERT INTO `disciplinas` (`idDisciplina`, `disciplinaCodigo`, `disciplinaDescripcion`) VALUES
(1, 'PT', 'Plata Thailandesa'),
(2, 'AC', 'Acero Inoxidable'),
(3, 'OT', 'Otros'),
(4, 'ORO', 'Oro venezolano');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupos`
--

CREATE TABLE `grupos` (
  `idGrupo` int(11) NOT NULL,
  `disciplina` int(11) NOT NULL,
  `grupoCodigo` varchar(4) COLLATE utf8_spanish_ci NOT NULL,
  `grupoDescripcion` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `grupos`
--

INSERT INTO `grupos` (`idGrupo`, `disciplina`, `grupoCodigo`, `grupoDescripcion`) VALUES
(1, 1, 'ANI', 'Anillos de Plata Tailandesa'),
(2, 2, 'ANI', 'Anillos de Acero Inoxidable'),
(5, 1, 'CAD', 'Cadenas de Plata'),
(6, 1, 'PUL', 'Pulseras de Plata'),
(7, 3, 'CAJ', 'Cajas de Regalo'),
(8, 3, 'BOL', 'Bolsas de Regalo'),
(9, 2, 'CAD', 'Cadenas de Acero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `idProducto` int(11) NOT NULL,
  `subgrupo` int(11) NOT NULL,
  `productoCodigo` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `productoDescripcion` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `ubicacion` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `precioMayor` decimal(10,2) NOT NULL,
  `fechaPrecio` date NOT NULL,
  `productoFoto` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `unidad` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `unidadPieza` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `piezas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`idProducto`, `subgrupo`, `productoCodigo`, `productoDescripcion`, `ubicacion`, `precio`, `precioMayor`, `fechaPrecio`, `productoFoto`, `unidad`, `unidadPieza`, `piezas`) VALUES
(1, 1, '123', 'Anillo 1234', 'pza', '1000.00', '900.00', '2021-01-04', '', 'pza', 'pza', 1),
(4, 7, 'PTCA', 'Cadena de Plata Marca XYZ Modelo 1', 'Gaveta 2', '1000.00', '600.00', '2021-01-05', '', 'pza', 'pza', 1),
(5, 2, 'PTCA', 'Cadena Modelo 1', 'Gaveta 1', '2000.00', '1800.00', '2021-01-05', '', 'pza', 'pza', 1),
(6, 1, 'PTANICAR0001', 'Anillo 1234', 'Gaveta 2', '1000.00', '900.00', '2021-01-08', '', 'pza', 'pza', 1),
(7, 1, 'PTANICAR0003', 'Anillo 12345', 'Gaveta 1', '1200.00', '1100.00', '2021-01-08', '', 'pza', 'pza', 1),
(8, 1, 'PTANICAR0004', 'Anillo 1237', 'Gaveta 1', '1000.00', '900.00', '2021-01-07', '', 'pza', 'pza', 1),
(9, 1, 'PTANICAR0001', 'Anillo 1238', 'Gaveta 2', '1000.00', '900.00', '2021-01-08', '', 'pza', 'pza', 1),
(10, 3, 'PTANILTE0001', 'Anillo LTE 1234', 'Gaveta 1', '500.00', '300.00', '2021-01-01', '', 'pza', 'pza', 1),
(11, 3, 'PTANILTE0001', 'Anillo LTE 1235', 'Gaveta 1', '1500.00', '1400.00', '2021-01-01', '', 'pza', 'pza', 1),
(12, 3, 'PTANILTE0003', 'Anillo LTE 5555', 'Gaveta 2', '1300.00', '1200.00', '2021-01-08', '', 'pza', 'pza', 1),
(13, 2, 'PTCADCAR0002', 'Cadena modelo 2', 'Gaveta 2', '1000.00', '1000.00', '2021-01-01', '', 'pza', 'pza', 1),
(14, 6, 'PTCADLTE0001', 'Cadena de Plata LTE', 'Gaveta 2', '1000.00', '900.00', '2020-01-08', '', 'pza', 'pza', 1),
(15, 4, 'PTPULCAR0001', 'Pulsera de Plata', 'Gaveta 1', '1000.00', '900.00', '2021-01-08', '', 'pza', 'pza', 1),
(16, 4, 'PTPULCAR0002', 'Pulseras de Plata Cartier Modelo 1', 'Gaveta 2', '2000.00', '1800.00', '2021-01-01', '', 'pza', 'pza', 1),
(17, 4, 'PTPULCAR0003', 'Pulsera de Plata Cartier Modelo 2', 'Gaveta 2', '500.00', '400.00', '2021-01-08', '', 'pza', 'pza', 1),
(18, 4, 'PTPULCAR0004', 'Pulseras', 'Gaveta 1', '1000.00', '800.00', '2021-01-01', '', 'pza', 'pza', 1),
(19, 8, 'ACANIANI0001', 'Anillo Acero', 'Gaveta 1', '700.00', '500.00', '2021-01-09', '', 'pza', 'pza', 1),
(20, 8, 'ACANIANI0001', 'Anillo 1234', 'Gaveta 1', '3000.00', '2000.00', '2021-01-01', 'ACANIANI0001', 'pza', 'pza', 1),
(21, 1, 'PTANICAR0006', 'Anillo 0006', 'Gaveta 1', '600.00', '500.00', '2021-01-25', 'PTANICAR0006', 'pza', 'pza', 1),
(22, 3, 'PTANILTE0004', 'Anillo LTE 004', 'Gaveta 2', '1000.00', '900.00', '2021-01-25', 'PTANILTE0004', 'pza', 'Pza', 1),
(23, 3, 'PTANILTE0005', 'Anillo LTE 005', 'Gaveta 1', '600.00', '400.00', '2020-01-25', 'PTANILTE0005', 'pza', 'pza', 1),
(24, 3, 'PTANILTE0006', 'Anillo LTE 0006', 'Gaveta 1', '1200.00', '1100.00', '2021-01-25', 'PTANILTE0006', 'pza', 'pza', 1),
(25, 3, 'PTANILTE0007', 'Anillo LTE 0007', 'Gaveta 1', '1000.00', '900.00', '2021-01-25', 'PTANILTE0007', 'pza', 'pza', 1),
(26, 3, 'PTANILTE0008', 'Anillo LTE 0008', 'Gaveta 1', '1000.00', '900.00', '2021-01-25', 'PTANILTE0008', 'pza', 'pza', 1),
(27, 3, 'PTANILTE0009', 'Anillo LTE 0009', 'Gaveta 1', '600.00', '400.00', '2021-01-25', 'PTANILTE0009', 'pza', 'pza', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subgrupos`
--

CREATE TABLE `subgrupos` (
  `idSubgrupo` int(11) NOT NULL,
  `grupo` int(11) NOT NULL,
  `subgrupoCodigo` varchar(4) COLLATE utf8_spanish_ci NOT NULL,
  `subgrupoDescripcion` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `subgrupos`
--

INSERT INTO `subgrupos` (`idSubgrupo`, `grupo`, `subgrupoCodigo`, `subgrupoDescripcion`) VALUES
(1, 1, 'CAR', 'Anillos de Plata Marca Cartier'),
(2, 5, 'CAR', 'Cadenas de Plata Marca Cartier'),
(3, 1, 'LTE', 'Anillos de Plata Marca LTE'),
(4, 6, 'CAR', 'Pulseras de Plata Cartier'),
(6, 5, 'LTE', 'Cadenas de Plata Marca LTE'),
(7, 5, 'XYZ', 'Cadenas de Plata Marca XYZ'),
(8, 2, 'ANI', 'Anillos de Acero Inoxidable');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `disciplinas`
--
ALTER TABLE `disciplinas`
  ADD PRIMARY KEY (`idDisciplina`);

--
-- Indices de la tabla `grupos`
--
ALTER TABLE `grupos`
  ADD PRIMARY KEY (`idGrupo`),
  ADD KEY `disciplina` (`disciplina`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`idProducto`),
  ADD KEY `subgrupo` (`subgrupo`);

--
-- Indices de la tabla `subgrupos`
--
ALTER TABLE `subgrupos`
  ADD PRIMARY KEY (`idSubgrupo`),
  ADD KEY `grupo` (`grupo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `disciplinas`
--
ALTER TABLE `disciplinas`
  MODIFY `idDisciplina` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `grupos`
--
ALTER TABLE `grupos`
  MODIFY `idGrupo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `idProducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `subgrupos`
--
ALTER TABLE `subgrupos`
  MODIFY `idSubgrupo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `grupos`
--
ALTER TABLE `grupos`
  ADD CONSTRAINT `grupos_ibfk_1` FOREIGN KEY (`disciplina`) REFERENCES `disciplinas` (`idDisciplina`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`subgrupo`) REFERENCES `subgrupos` (`idSubgrupo`);

--
-- Filtros para la tabla `subgrupos`
--
ALTER TABLE `subgrupos`
  ADD CONSTRAINT `subgrupos_ibfk_1` FOREIGN KEY (`grupo`) REFERENCES `grupos` (`idGrupo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
