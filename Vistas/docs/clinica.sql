-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-11-2022 a las 21:30:31
-- Versión del servidor: 10.4.13-MariaDB
-- Versión de PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `clinica`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administradores`
--

CREATE TABLE `administradores` (
  `id` int(11) NOT NULL,
  `usuario` text NOT NULL,
  `clave` text NOT NULL,
  `nombre` text NOT NULL,
  `apellido` text NOT NULL,
  `foto` text NOT NULL,
  `rol` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `administradores`
--

INSERT INTO `administradores` (`id`, `usuario`, `clave`, `nombre`, `apellido`, `foto`, `rol`) VALUES
(1, 'pro', '123', 'usuario', 'administrador', 'Vistas/img/Usuarios/A-510.jpg', 'Administrador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `citas`
--

CREATE TABLE `citas` (
  `id` int(11) NOT NULL,
  `id_doctor` int(11) NOT NULL,
  `id_consultorio` int(11) NOT NULL,
  `id_paciente` int(11) NOT NULL,
  `nyaP` text NOT NULL,
  `documento` text NOT NULL,
  `inicio` datetime NOT NULL,
  `fin` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `citas`
--

INSERT INTO `citas` (`id`, `id_doctor`, `id_consultorio`, `id_paciente`, `nyaP`, `documento`, `inicio`, `fin`) VALUES
(28, 1, 3, 2, 'Alejandro Petrelli', '123', '2022-11-25 07:00:00', '2022-11-25 08:00:00'),
(29, 1, 3, 2, 'Alejandro Petrelli', '123', '2022-11-24 08:00:00', '2022-11-24 09:00:00'),
(30, 1, 3, 2, 'Alejandro Petrelli', '123', '2022-11-23 09:00:00', '2022-11-23 10:00:00'),
(31, 2, 2, 2, 'Alejandro Petrelli', '123', '2022-11-25 07:00:00', '2022-11-25 08:00:00'),
(32, 1, 2, 2, 'Alejandro Petrelli', '123', '2022-11-23 11:00:00', '2022-11-23 12:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consultorios`
--

CREATE TABLE `consultorios` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `consultorios`
--

INSERT INTO `consultorios` (`id`, `nombre`) VALUES
(1, 'Cardiología'),
(2, 'Odontología'),
(3, 'Psicología'),
(4, 'Nutrición');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `doctores`
--

CREATE TABLE `doctores` (
  `id` int(11) NOT NULL,
  `id_consultorio` int(11) NOT NULL,
  `apellido` text NOT NULL,
  `nombre` text NOT NULL,
  `foto` text NOT NULL,
  `usuario` text NOT NULL,
  `clave` text NOT NULL,
  `sexo` text NOT NULL,
  `horarioE` time NOT NULL,
  `horarioS` time NOT NULL,
  `rol` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `doctores`
--

INSERT INTO `doctores` (`id`, `id_consultorio`, `apellido`, `nombre`, `foto`, `usuario`, `clave`, `sexo`, `horarioE`, `horarioS`, `rol`) VALUES
(1, 1, 'Leiser', 'José', 'Vistas/img/Doctores/Doc-976.png', 'doc1', '123', 'Masculino', '07:00:00', '20:00:00', 'Doctor'),
(2, 1, 'Pérez Dominguez', 'Manuel', '', 'Perez123', 'p157', 'Masculino', '07:00:00', '17:00:00', 'Doctor'),
(3, 4, 'Bercellone', 'Celia', '', 'Celia123', 'nutri523', 'Femenino', '00:00:00', '00:00:00', 'Doctor'),
(4, 1, 'Villalda', 'Miguel', 'Vistas/img/Doctores/Doc-603.png', 'mig', '123', 'Masculino', '08:00:00', '17:00:00', 'Doctor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inicio`
--

CREATE TABLE `inicio` (
  `id` int(11) NOT NULL,
  `intro` text NOT NULL,
  `horaE` time NOT NULL,
  `horaS` time NOT NULL,
  `telefono` text NOT NULL,
  `correo` text NOT NULL,
  `direccion` text NOT NULL,
  `logo` text NOT NULL,
  `favicon` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `inicio`
--

INSERT INTO `inicio` (`id`, `intro`, `horaE`, `horaS`, `telefono`, `correo`, `direccion`, `logo`, `favicon`) VALUES
(1, 'Bievenidos a Centro de Salud Omia', '07:00:00', '18:00:00', '0000001', 'clinica@direccion.com', 'Dirección 113', 'Vistas/img/logo.png', 'Vistas/img/favicon.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pacientes`
--

CREATE TABLE `pacientes` (
  `id` int(11) NOT NULL,
  `apellido` text NOT NULL,
  `nombre` text NOT NULL,
  `documento` text NOT NULL,
  `foto` text NOT NULL,
  `usuario` text NOT NULL,
  `clave` text NOT NULL,
  `rol` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pacientes`
--

INSERT INTO `pacientes` (`id`, `apellido`, `nombre`, `documento`, `foto`, `usuario`, `clave`, `rol`) VALUES
(1, 'Mamaní', 'Pablo', '112', '', 'pm', '123', 'Paciente'),
(2, 'Petrelli', 'Alejandro', '123', 'Vistas/img/Pacientes/Paciente888.png', 'ale11', '123456', 'Paciente'),
(3, 'bendeta', 'luigui', '112', '', 'luigui', '123', 'Paciente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secretarias`
--

CREATE TABLE `secretarias` (
  `id` int(11) NOT NULL,
  `usuario` text NOT NULL,
  `clave` text NOT NULL,
  `nombre` text NOT NULL,
  `apellido` text NOT NULL,
  `foto` text NOT NULL,
  `rol` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `secretarias`
--

INSERT INTO `secretarias` (`id`, `usuario`, `clave`, `nombre`, `apellido`, `foto`, `rol`) VALUES
(1, 'mary', '123', 'Mary', 'Cano', 'Vistas/img/Secretarias/S-18.png', 'Secretaria'),
(2, 'esther123', 'bercellone123', 'Esther', 'Bercellone', '', 'Secretaria');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administradores`
--
ALTER TABLE `administradores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `citas`
--
ALTER TABLE `citas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `consultorios`
--
ALTER TABLE `consultorios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `doctores`
--
ALTER TABLE `doctores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `inicio`
--
ALTER TABLE `inicio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `secretarias`
--
ALTER TABLE `secretarias`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administradores`
--
ALTER TABLE `administradores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `citas`
--
ALTER TABLE `citas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `consultorios`
--
ALTER TABLE `consultorios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `doctores`
--
ALTER TABLE `doctores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `inicio`
--
ALTER TABLE `inicio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `secretarias`
--
ALTER TABLE `secretarias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
