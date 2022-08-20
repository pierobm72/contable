-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-08-2022 a las 19:55:08
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sistema_contable`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `dni_admin` int(9) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `contraseña` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`dni_admin`, `nombre`, `apellido`, `correo`, `contraseña`) VALUES
(0, '', '', '', ''),
(54789632, 'jose', 'quispe torres', 'tes@gmail.com', ''),
(74692370, 'michael', 'enciso yancce', 'apex@gmail.com', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caja`
--

CREATE TABLE `caja` (
  `id_caja` int(11) NOT NULL,
  `id_egre_fijo` int(11) NOT NULL,
  `fecha` varchar(10) NOT NULL,
  `monto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `ruc_cliente` int(11) NOT NULL,
  `nombre_clie` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `telefono` char(9) NOT NULL,
  `inversion` double NOT NULL,
  `nombre_proyecto` varchar(100) NOT NULL,
  `id_rubro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `egreso`
--

CREATE TABLE `egreso` (
  `id_egre_redundante` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `monto` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `egresos_fijos`
--

CREATE TABLE `egresos_fijos` (
  `id_egre_fijo` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `cantidad` int(10) NOT NULL,
  `por_mes` int(10) NOT NULL,
  `monto` double NOT NULL,
  `ruc_cliente` int(11) NOT NULL,
  `id_egre_redundante` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rubro`
--

CREATE TABLE `rubro` (
  `id_rubro` int(11) NOT NULL,
  `tipo_empresa` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`dni_admin`);

--
-- Indices de la tabla `caja`
--
ALTER TABLE `caja`
  ADD PRIMARY KEY (`id_caja`),
  ADD KEY `id_egre_fijo` (`id_egre_fijo`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`ruc_cliente`),
  ADD KEY `id_rubro` (`id_rubro`);

--
-- Indices de la tabla `egreso`
--
ALTER TABLE `egreso`
  ADD PRIMARY KEY (`id_egre_redundante`);

--
-- Indices de la tabla `egresos_fijos`
--
ALTER TABLE `egresos_fijos`
  ADD PRIMARY KEY (`id_egre_fijo`),
  ADD KEY `ruc_cliente` (`ruc_cliente`),
  ADD KEY `id_egre_redundante` (`id_egre_redundante`);

--
-- Indices de la tabla `rubro`
--
ALTER TABLE `rubro`
  ADD PRIMARY KEY (`id_rubro`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `caja`
--
ALTER TABLE `caja`
  ADD CONSTRAINT `caja_ibfk_1` FOREIGN KEY (`id_egre_fijo`) REFERENCES `egresos_fijos` (`id_egre_fijo`);

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`id_rubro`) REFERENCES `rubro` (`id_rubro`);

--
-- Filtros para la tabla `egresos_fijos`
--
ALTER TABLE `egresos_fijos`
  ADD CONSTRAINT `egresos_fijos_ibfk_1` FOREIGN KEY (`ruc_cliente`) REFERENCES `cliente` (`ruc_cliente`),
  ADD CONSTRAINT `egresos_fijos_ibfk_2` FOREIGN KEY (`id_egre_redundante`) REFERENCES `egreso` (`id_egre_redundante`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
