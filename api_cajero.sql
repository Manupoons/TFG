-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-04-2023 a las 12:12:11
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `api_cajero`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cajeros`
--

CREATE TABLE `cajeros` (
  `id_cajero` smallint(3) NOT NULL,
  `Num_Serie` varchar(40) NOT NULL,
  `Lugar` varchar(100) NOT NULL,
  `Estado` int(11) NOT NULL,
  `id_usuario` smallint(3) NOT NULL,
  `cajero_eliminado` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cajeros`
--

INSERT INTO `cajeros` (`id_cajero`, `Num_Serie`, `Lugar`, `Estado`, `id_usuario`, `cajero_eliminado`) VALUES
(1, 'C1', 'Castellon', 1, 1, 0),
(2, 'C2', 'Castellon', 1, 2, 0),
(3, 'C3', 'Barcelona', 1, 2, 0),
(4, 'C4', 'Galicia', 1, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transacciones`
--

CREATE TABLE `transacciones` (
  `id_transaccion` smallint(3) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Dinero` int(11) NOT NULL,
  `Tarjeta` varchar(16) NOT NULL,
  `Fecha` date NOT NULL,
  `id_cajero` smallint(3) NOT NULL,
  `transac_eliminada` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `transacciones`
--

INSERT INTO `transacciones` (`id_transaccion`, `Nombre`, `Dinero`, `Tarjeta`, `Fecha`, `id_cajero`, `transac_eliminada`) VALUES
(1, 'David', 5000, '1234123412341234', '2023-04-08', 2, 0),
(2, 'Manu', 5000, '4200568932104501', '2023-04-12', 2, 1),
(3, 'Lucia', 600, '4211023830200001', '2023-03-19', 3, 1),
(4, 'Manu', 456, '4200568932104501', '2023-04-07', 2, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` smallint(3) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` char(102) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `telefono` varchar(12) NOT NULL,
  `correo` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `username`, `password`, `fullname`, `telefono`, `correo`) VALUES
(1, 'lu', 'pbkdf2:sha256:260000$1Pa4Nj94ninJAt3v$10deacace896bcc529381ca41dfceace0a95f2836722ade176f96c185ce5e5bf', 'Lucia Horcajo', '640380531', 'lucia@gmail.com'),
(2, 'manu', 'pbkdf2:sha256:260000$uDGBgAZDnakswWzG$a0dad6f7090ba3f32b87cae72800cc33f001e2205f0b83d3208c575a612fc0db', 'Manuel Maratrat', '644268497', 'manumar2002@gmail.com'),
(3, 'mara', 'pbkdf2:sha256:260000$x0LxXyo6bUZH9VOT$96fd3a480fc879f432b9893205458ce8f49577b6911fb0dca9b933f064865c61', 'David', '658424513', 'mara@gmail.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cajeros`
--
ALTER TABLE `cajeros`
  ADD PRIMARY KEY (`id_cajero`);

--
-- Indices de la tabla `transacciones`
--
ALTER TABLE `transacciones`
  ADD PRIMARY KEY (`id_transaccion`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `id` (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cajeros`
--
ALTER TABLE `cajeros`
  MODIFY `id_cajero` smallint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `transacciones`
--
ALTER TABLE `transacciones`
  MODIFY `id_transaccion` smallint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` smallint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
