-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-06-2026 a las 05:38:58
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
-- Base de datos: `sigf_aduanas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `declaraciones_sag`
--

CREATE TABLE `declaraciones_sag` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `productos` varchar(255) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `declaraciones_sag`
--

INSERT INTO `declaraciones_sag` (`id`, `usuario_id`, `productos`, `descripcion`, `fecha_registro`) VALUES
(1, NULL, '', '', '2026-06-11 01:57:39'),
(2, NULL, 'Sí', 'verduras', '2026-06-11 02:13:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mascotas`
--

CREATE TABLE `mascotas` (
  `id` int(11) NOT NULL,
  `microchip` varchar(50) NOT NULL,
  `raza` varchar(100) DEFAULT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `mascotas`
--

INSERT INTO `mascotas` (`id`, `microchip`, `raza`, `fecha_registro`) VALUES
(1, '123456789', 'Labrador', '2026-06-11 02:13:15'),
(2, '23424343', 'Labrador', '2026-06-18 00:44:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menores`
--

CREATE TABLE `menores` (
  `id` int(11) NOT NULL,
  `rut_menor` varchar(15) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `autorizacion` varchar(100) DEFAULT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `menores`
--

INSERT INTO `menores` (`id`, `rut_menor`, `nombre`, `autorizacion`, `fecha_registro`) VALUES
(1, '13776254-5', 'marta silva', 'Autorización notarial', '2026-06-18 00:10:30'),
(2, '34567234-0', 'aquiles sanchez', 'Autorización notarial', '2026-06-18 00:37:51'),
(3, '34567234-0', 'aquiles sanchez', 'Autorización notarial', '2026-06-18 00:39:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registros`
--

CREATE TABLE `registros` (
  `id` int(11) NOT NULL,
  `tipo` varchar(100) DEFAULT NULL,
  `detalle` text DEFAULT NULL,
  `usuario` varchar(50) DEFAULT NULL,
  `qr` varchar(100) DEFAULT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `registros`
--

INSERT INTO `registros` (`id`, `tipo`, `detalle`, `usuario`, `qr`, `fecha_registro`) VALUES
(1, '', '', '', '', '2026-06-18 00:45:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `rut` varchar(15) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `rol` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `rut`, `nombre`, `password`, `rol`) VALUES
(1, '12345678-9', 'Funcionario Aduanas', 'admin123', 'Funcionario Aduanas'),
(2, '22222222-2', 'Funcionario SAG/PDI', 'sag2026', 'Funcionario SAG/PDI'),
(3, '99999999-9', 'Administrador SIGF', 'admin2026', 'Administrador SIGF');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculos`
--

CREATE TABLE `vehiculos` (
  `id` int(11) NOT NULL,
  `patente` varchar(20) NOT NULL,
  `modelo` varchar(100) DEFAULT NULL,
  `anio` int(11) DEFAULT NULL,
  `pais` varchar(50) DEFAULT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `vehiculos`
--

INSERT INTO `vehiculos` (`id`, `patente`, `modelo`, `anio`, `pais`, `fecha_registro`) VALUES
(1, '', '', 0, '', '2026-06-11 01:25:24'),
(2, 'ABCD12', 'Toyota', 2024, 'Chile', '2026-06-11 01:40:21');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `declaraciones_sag`
--
ALTER TABLE `declaraciones_sag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `mascotas`
--
ALTER TABLE `mascotas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `menores`
--
ALTER TABLE `menores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `registros`
--
ALTER TABLE `registros`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rut` (`rut`);

--
-- Indices de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `declaraciones_sag`
--
ALTER TABLE `declaraciones_sag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `mascotas`
--
ALTER TABLE `mascotas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `menores`
--
ALTER TABLE `menores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `registros`
--
ALTER TABLE `registros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `declaraciones_sag`
--
ALTER TABLE `declaraciones_sag`
  ADD CONSTRAINT `declaraciones_sag_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
