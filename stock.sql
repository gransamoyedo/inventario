-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-06-2019 a las 13:47:42
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `stock`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `nombre_categoria` varchar(255) NOT NULL,
  `descripcion_categoria` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `nombre_categoria`, `descripcion_categoria`, `date_added`) VALUES
(10, 'Cable', 'Cable RG 6 C/ portante\r\nCable RG 59 C/ portante\r\nCable RG 6\r\nCable RG 59 ', '2019-06-08 01:55:35'),
(11, 'Retencion pref alu', 'Retenciones', '2019-06-08 01:56:09'),
(12, 'Conector', 'Conector F RG 6\r\nConector F RG 59\r\nConector H H\r\nConector candado\r\nConector RG 11\r\nConector RG 11 a F\r\nConector ,500 \r\nConector ,500 C/ Pim\r\nConector ,750\r\nConector KS-KS\r\nConector de F a ,500', '2019-06-08 01:58:41'),
(13, 'Taps', 'Taps 4 vias -8\r\nTaps 4 vias -11\r\nTaps 4 vias -14\r\nTaps 4 vias -17\r\nTaps 4 vias -20\r\nTaps 4 vias -23\r\nTaps 4 vias -26\r\nTaps 4 vias -29\r\nTaps 8 vias -11\r\nTaps 8 vias -14\r\nTaps 8 vias -17\r\nTaps 8 vias -20\r\nTaps 8 vias -23\r\nTaps 8 vias -26\r\nTaps 8 vias -29\r\nT', '2019-06-08 02:00:18'),
(14, 'Fibra optica', 'Fibra optica 8 pelos\r\nFibra optica 12 pelos\r\nFibra optica 24 pelos\r\nFibra optica 36 pelos\r\nFibra optica 48 pelos\r\nFibra optica 72 pelos', '2019-06-08 02:01:00'),
(15, 'Cablemodem ', 'Cablemodem\r\nCablemodem wi fi', '2019-06-08 02:06:03'),
(16, 'Morceto ', 'Morceto pesasdo 3 bulones\r\nMorceto cruce americ\r\nMorceto 1 bulon', '2019-06-08 02:06:38'),
(17, 'Splitters ', 'Splitters dom 2 vias\r\nSplitters dom 3 vias\r\nSplitters dom 4 vias', '2019-06-08 02:08:12'),
(18, 'DD1', 'DD1 V -8\r\nDD1 V -12\r\nDD1 V -16', '2019-06-08 02:09:15'),
(19, 'SP X', 'SP X 2 vias\r\nSP X 3 vias', '2019-06-08 02:09:45'),
(20, 'Amplificador ', 'Amplificador troncal\r\nAmplificador Line Extender', '2019-06-08 02:10:19'),
(21, 'FTTH', 'Todo lo relacionado a FTTH', '2019-06-08 02:13:00'),
(22, 'InstalaciÃ³n domiciliaria ', 'Precintos plasticos\r\nCinta aisladora\r\nGrampa clavo\r\n', '2019-06-08 02:15:39'),
(23, 'NN', '\r\nRetencion pref alu\r\n\r\nAdaptador F pim grueso\r\n\r\nCinta autosoldante\r\n\r\nFiltro pas alto P/ internet\r\nSetup box\r\nAlambre para devanar\r\nLinga de acero\r\nRetencion para fibra\r\nSoporte pasante para fibra\r\nTermocontrible\r\n\r\nCurva a 90Âº\r\nCurva universal\r\nEmpalm', '2019-06-08 02:16:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial`
--

CREATE TABLE `historial` (
  `id_historial` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `nota` varchar(255) NOT NULL,
  `referencia` varchar(100) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `historial`
--

INSERT INTO `historial` (`id_historial`, `id_producto`, `user_id`, `fecha`, `nota`, `referencia`, `cantidad`) VALUES
(9, 69, 1, '2019-06-08 02:59:01', 'Renzo eliminÃ³ 1 producto(s) del inventario', 'prueba', 1),
(10, 69, 1, '2019-06-08 02:59:31', 'Renzo eliminÃ³ 8 producto(s) del inventario', 'prueba', 8),
(11, 84, 1, '2019-06-08 03:51:16', 'Renzo agregÃ³ 654 producto(s) al inventario', 'Llega de truncad', 654),
(12, 84, 1, '2019-06-08 03:58:58', 'Renzo agregÃ³ 654 producto(s) al inventario', 'Llega de truncad', 654);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id_producto` int(11) NOT NULL,
  `codigo_producto` char(20) NOT NULL,
  `nombre_producto` char(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `minimo` double NOT NULL,
  `sttruncado` int(11) NOT NULL,
  `stheras` int(11) NOT NULL,
  `stolivia` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id_producto`, `codigo_producto`, `nombre_producto`, `date_added`, `minimo`, `sttruncado`, `stheras`, `stolivia`, `id_categoria`) VALUES
(1, '1', 'Cable RG 6 C/ portante', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(2, '2', 'Cable RG 59 C/ portante', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(3, '3', 'Cable RG 6', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(4, '4', 'Cable RG 59', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(5, '5', 'Retencion pref alu', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(6, '6', 'Conector F RG 6', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(7, '7', 'Conector F RG 59', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(8, '8', 'Adaptador F pim grueso', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(9, '9', 'Conector H H', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(10, '10', 'Cinta aisladora', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(11, '11', 'Cinta autosoldante', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(12, '12', 'Splitters dom 2 vias', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(13, '13', 'Splitters dom 3 vias', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(14, '14', 'Splitters dom 4 vias', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(15, '15', 'Grampa clavo', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(16, '16', 'Filtro pas alto P/ internet', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(17, '17', 'Setup box', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(18, '18', 'Cablemodem', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(19, '19', 'Cablemodem wi fi', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(20, '20', 'Taps 4 vias -8', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(21, '21', 'Taps 4 vias -11', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(22, '22', 'Taps 4 vias -14', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(23, '23', 'Taps 4 vias -17', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(24, '24', 'Taps 4 vias -20', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(25, '25', 'Taps 4 vias -23', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(26, '26', 'Taps 4 vias -26', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(27, '27', 'Taps 4 vias -29', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(28, '28', 'Taps 8 vias -11', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(29, '29', 'Taps 8 vias -14', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(30, '30', 'Taps 8 vias -17', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(31, '31', 'Taps 8 vias -20', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(32, '32', 'Taps 8 vias -23', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(33, '33', 'Taps 8 vias -26', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(34, '34', 'Taps 8 vias -29', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(35, '35', 'Taps 2 vias -8', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(36, '36', 'Taps 2 vias -11', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(37, '37', 'Taps 2 vias -14', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(38, '38', 'Taps 2 vias -17', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(39, '39', 'Taps 2 vias -20', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(40, '40', 'Taps 2 vias -23', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(41, '41', 'Taps 2 vias -26', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(42, '42', 'Taps 2 vias -29', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(43, '43', 'DD1 V -8', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(44, '44', 'DD1 V -12', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(45, '45', 'DD1 V -16', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(46, '46', 'Morceto pesasdo 3 bulones', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(47, '47', 'Morceto cruce americ', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(48, '48', 'Morceto 1 bulon', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(49, '49', 'Alambre para devanar', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(50, '50', 'Linga de acero', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(51, '51', 'Retencion para fibra', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(52, '52', 'Soporte pasante para fibra', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(53, '53', 'Termocontrible', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(54, '54', 'SP X 2 vias', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(55, '55', 'SP X 3 vias', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(56, '56', 'Conector candado', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(57, '57', 'Conector RG 11', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(58, '58', 'Conector RG 11 a F', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(59, '59', 'Conector ,500', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(60, '60', 'Conector ,500 C/ Pim', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(61, '61', 'Conector ,750', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(62, '62', 'Curva a 90º', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(63, '63', 'Curva universal', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(64, '64', 'Conector KS-KS', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(65, '65', 'Conector de F a ,500', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(66, '66', 'Empalme ,500', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(67, '67', 'Empalme ,750', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(68, '68', 'Bottellas para fiobra', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(69, '69', 'Cable de servicio', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(70, '70', 'Nodo Optoco', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(71, '71', 'Pigtail SC/APC', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(72, '72', 'Patchcord SC/APC', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(73, '73', 'Bandeja para fibra 24 pelos', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(74, '74', 'Fibra optica 8 pelos', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(75, '75', 'Fibra optica 12 pelos', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(76, '76', 'Fibra optica 24 pelos', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(77, '77', 'Fibra optica 36 pelos', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(78, '78', 'Fibra optica 48 pelos', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(79, '79', 'Fibra optica 72 pelos', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(80, '80', 'Amplificador troncal', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(81, '81', 'Amplificador Line Extender', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(82, '82', 'Receptor optico de rev', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(83, '83', 'Transmisor Optico', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(84, '84', 'Separador con precineto', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(85, '85', 'Precintos plasticos', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(86, '86', 'Fuente de alimentacion', '2019-06-08 02:17:21', 5, 10, 10, 10, 23),
(87, '87qwe', 'Fuente de alim auto', '2019-06-08 02:17:21', 5, 10, 10, 10, 23);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL COMMENT 'auto incrementing user_id of each user, unique index',
  `firstname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `user_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT 'user''s name, unique',
  `user_password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'user''s password in salted and hashed format',
  `user_email` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT 'user''s email, unique',
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='user data';

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`user_id`, `firstname`, `lastname`, `user_name`, `user_password_hash`, `user_email`, `date_added`) VALUES
(2, 'Renzo', 'Bolatti', 'renzo', '$2y$10$7QzWjq/nKFCLjtNEVx1gre4teXbWMCyQGhzW7F9EVNqjYDdDXbYaO', 'rbolatti@paralelo46.com.ar', '2019-06-04 06:35:50');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `historial`
--
ALTER TABLE `historial`
  ADD PRIMARY KEY (`id_historial`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id_producto`),
  ADD UNIQUE KEY `codigo_producto` (`codigo_producto`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_name` (`user_name`),
  ADD UNIQUE KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `historial`
--
ALTER TABLE `historial`
  MODIFY `id_historial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'auto incrementing user_id of each user, unique index', AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `historial`
--
ALTER TABLE `historial`
  ADD CONSTRAINT `fk_id_producto` FOREIGN KEY (`id_producto`) REFERENCES `products` (`id_producto`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
