-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-03-2017 a las 13:36:35
-- Versión del servidor: 10.1.19-MariaDB
-- Versión de PHP: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dbsistemaventa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tcliente`
--

CREATE TABLE `tcliente` (
  `dniCliente` varchar(15) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `direccion` varchar(60) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefono` varchar(40) NOT NULL,
  `sexo` varchar(10) NOT NULL,
  `fechaRegistro` datetime NOT NULL,
  `fechaModificacion` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tcliente`
--

INSERT INTO `tcliente` (`dniCliente`, `nombre`, `apellido`, `direccion`, `email`, `telefono`, `sexo`, `fechaRegistro`, `fechaModificacion`) VALUES
('11111111', 'Mariana', 'Marean Rivera', 'av. brasil', 'maria@gamil.com', '122222222', 'Mujer', '2017-03-24 15:03:09', '2017-03-25 06:03:30'),
('22222222', 'juana', 'torbisco Ramos', 'jr. ica', 'juana@gamil.com', '123214234', 'Mujer', '2017-03-24 15:03:08', '2017-03-24 15:03:08'),
('33333333', 'ronal', 'perez tamares', 'av. aviacion', 'ronal@gamil.com', '584964214', 'Varon', '2017-03-24 15:03:55', '2017-03-25 10:03:33'),
('47589464', 'Adalbert', 'Tambraico Chuhui', 'asoc.Nuevo Amanecer FLoriana', 'mekal-r10@hotmail.com', '921296782', 'Varon', '2017-03-26 07:03:12', '2017-03-26 07:03:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tdetalleventa`
--

CREATE TABLE `tdetalleventa` (
  `idDetalle` int(11) NOT NULL,
  `dniCliente` int(8) NOT NULL,
  `nombreCliente` varchar(50) NOT NULL,
  `direccion` varchar(70) NOT NULL,
  `nombreProducto` varchar(100) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precioUnitario` float NOT NULL,
  `importe` float NOT NULL,
  `precioTotal` float NOT NULL,
  `fechaVenta` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tdetalleventa`
--

INSERT INTO `tdetalleventa` (`idDetalle`, `dniCliente`, `nombreCliente`, `direccion`, `nombreProducto`, `descripcion`, `cantidad`, `precioUnitario`, `importe`, `precioTotal`, `fechaVenta`) VALUES
(3, 47589464, 'Adalbert Tambraico Chuhui', 'asoc.Nuevo Amanecer FLoriana', 'Vino', 'vsfgv freejk', 10, 10, 100, 100, '2017-03-27 09:03:44'),
(4, 11111111, 'Mariana Marean Rivera', 'av. brasil', 'Case', 'k FPD', 12, 565, 6780, 6780, '2017-03-27 09:03:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tproducto`
--

CREATE TABLE `tproducto` (
  `idProducto` int(11) NOT NULL,
  `nombreProducto` varchar(50) NOT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `descripcion` text NOT NULL,
  `stock` int(11) NOT NULL,
  `precio` float NOT NULL,
  `fechaRegistro` datetime DEFAULT NULL,
  `fechaModificacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tproducto`
--

INSERT INTO `tproducto` (`idProducto`, `nombreProducto`, `imagen`, `descripcion`, `stock`, `precio`, `fechaRegistro`, `fechaModificacion`) VALUES
(1, 'Vino', '1.jpg', 'red label', 10, 10, '2017-03-23 19:03:17', '2017-03-23 19:03:57'),
(2, 'Case', '', 'case Negro Jf5', 12, 565, '2017-03-25 00:03:38', '2017-03-25 00:03:38'),
(3, 'Mouse', '', 'color negro genius', 20, 25, '2017-03-25 10:03:52', '2017-03-25 10:03:52'),
(4, 'discoduro', '', 'de 1tb, marca pilaet, 7200rpm, temporizador de recursos', 20, 350, '2017-03-25 10:03:40', '2017-03-25 10:03:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tusuario`
--

CREATE TABLE `tusuario` (
  `idUsuario` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `sexo` varchar(10) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `cargo` varchar(20) NOT NULL,
  `fechaRegistro` datetime NOT NULL,
  `fechaModificacion` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tusuario`
--

INSERT INTO `tusuario` (`idUsuario`, `nombre`, `apellido`, `sexo`, `email`, `password`, `imagen`, `cargo`, `fechaRegistro`, `fechaModificacion`) VALUES
(1, 'Jainor', 'Montes Retamozo', 'Varon', 'jainormontes@gmail.com', 'eyJpdiI6Im44ZTI2RFBqNWIzSHhaZWZBRTByZ1E9PSIsInZhbHVlIjoiU2dsZVMxcnRwY3oreU1nbVdWUVVPWTNmY3YxRFMrdGZNbmcrcGtlTm93ND0iLCJtYWMiOiJmYzdjZjAyZDViYjkxNmY2Y2E5NWNkMzRmYTYyNmYyYmFkMmFhMWJmNmExOTNjYTMzODIyNDYwN2E0NDM2YjUxIn0=', '', 'Administrador', '2017-03-22 22:03:08', '2017-03-24 23:03:46'),
(2, 'Adalbert', 'Tambraico Chuhui', 'Varon', 'mekal-r10@hotmail.com', 'eyJpdiI6Inh4YnRiK0wxcXYzanBmWGJwZDNLTlE9PSIsInZhbHVlIjoiRWtHVkNHb1F0Nld5U1dSa1dPeVFOSG1mZnJVZnRzdlJhR0FMMjh2d2RsMD0iLCJtYWMiOiI2OWI5OTc2ZGM3M2JjMTY2MzhjOGExOTU2NjUwZmYzM2FhZDVjOGZhNzM5ZjJkZWE0OGNjMjVjMDNhNjI2ODgyIn0=', '2.jpg', 'Empleado', '2017-03-27 09:03:29', '2017-03-27 09:03:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tventa`
--

CREATE TABLE `tventa` (
  `idVenta` int(11) NOT NULL,
  `dniCliente` varchar(15) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `nombreProducto` varchar(50) NOT NULL,
  `unidadVendida` int(11) NOT NULL,
  `fechaRegistro` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tventa`
--

INSERT INTO `tventa` (`idVenta`, `dniCliente`, `idUsuario`, `nombreProducto`, `unidadVendida`, `fechaRegistro`) VALUES
(2, '47589464', 1, 'Vino', 10, '2017-03-27 09:03:44'),
(3, '11111111', 1, 'Case', 12, '2017-03-27 09:03:25');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tcliente`
--
ALTER TABLE `tcliente`
  ADD PRIMARY KEY (`dniCliente`);

--
-- Indices de la tabla `tdetalleventa`
--
ALTER TABLE `tdetalleventa`
  ADD PRIMARY KEY (`idDetalle`);

--
-- Indices de la tabla `tproducto`
--
ALTER TABLE `tproducto`
  ADD PRIMARY KEY (`idProducto`);

--
-- Indices de la tabla `tusuario`
--
ALTER TABLE `tusuario`
  ADD PRIMARY KEY (`idUsuario`);

--
-- Indices de la tabla `tventa`
--
ALTER TABLE `tventa`
  ADD PRIMARY KEY (`idVenta`),
  ADD KEY `dniCliente` (`dniCliente`),
  ADD KEY `idUsuario` (`idUsuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tdetalleventa`
--
ALTER TABLE `tdetalleventa`
  MODIFY `idDetalle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `tproducto`
--
ALTER TABLE `tproducto`
  MODIFY `idProducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `tusuario`
--
ALTER TABLE `tusuario`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `tventa`
--
ALTER TABLE `tventa`
  MODIFY `idVenta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tventa`
--
ALTER TABLE `tventa`
  ADD CONSTRAINT `tventa_ibfk_1` FOREIGN KEY (`dniCliente`) REFERENCES `tcliente` (`dniCliente`),
  ADD CONSTRAINT `tventa_ibfk_2` FOREIGN KEY (`idUsuario`) REFERENCES `tusuario` (`idUsuario`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
