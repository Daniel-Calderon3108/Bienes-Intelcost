-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-06-2022 a las 22:42:57
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `intelcost_bienes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bienes`
--

CREATE TABLE `bienes` (
  `id` int(11) NOT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `ciudad` int(11) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `codigo_postal` varchar(30) DEFAULT NULL,
  `tipo` int(11) DEFAULT NULL,
  `precio` float DEFAULT NULL,
  `disponible` varchar(5) DEFAULT 'si'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `bienes`
--

INSERT INTO `bienes` (`id`, `direccion`, `ciudad`, `telefono`, `codigo_postal`, `tipo`, `precio`, `disponible`) VALUES
(1, 'Ap #549-7395 Ut Rd.', 1, '334-052-0954', '85328', 1, 30.746, 'si'),
(2, 'P.O. Box 657, 9831 Cursus St.', 2, '488-441-5521', '04436', 3, 71.045, 'si'),
(3, 'Ap #325-2507 Quisque Av.', 3, '623-807-2869', '89804', 3, 36.087, 'si'),
(4, '347-866 Laoreet Road', 3, '997-640-8188', '94526-134', 3, 16.048, 'si'),
(5, '4732 Ipsum. Rd.', 4, '802-414-8872', '162925', 1, 45.912, 'si'),
(6, '672-9576 Consectetuer Road', 2, '355-601-5749', '210020', 3, 64.37, 'si'),
(7, '549-5766 Sodales St.', 2, '557-228-6918', '16794', 1, 2.846, 'si'),
(8, 'P.O. Box 847, 2589 In Av.', 5, '390-713-8687', '70689', 2, 60.951, 'si'),
(9, '175-4344 Nec, Ave', 2, '578-170-6179', 'POC 0G3', 3, 58.902, 'si'),
(10, 'P.O. Box 497, 8679 Turpis. St.', 1, '870-559-343', '7029', 1, 17.759, 'si'),
(11, '844-8312 Molestie Road', 6, '147-920-5435', '5237JG', 1, 91.067, 'si'),
(12, 'P.O. Box 494, 674 Amet, Street', 1, '056-617-2556', '684445', 1, 36.155, 'si'),
(13, 'P.O. Box 466, 2795 Velit. Avenue', 1, '252-330-0116', '5422', 2, 78.947, 'si'),
(14, 'P.O. Box 523, 2126 Aliquet Rd.', 2, '986-825-6899', '37045', 3, 51.817, 'si'),
(15, 'Ap #669-7718 Cras St.', 1, '200-935-8531', 'RI9 6RT', 1, 39.561, 'si'),
(16, '2211 Malesuada Rd.', 3, '436-742-7954', '31519', 2, 52.433, 'si'),
(17, 'P.O. Box 181, 7858 Nisi. St.', 4, '383-252-8216', '83594', 2, 85.641, 'si'),
(18, '741-2614 Accumsan Rd.', 6, '487-609-0106', '753543', 3, 78.854, 'si'),
(19, '829-3250 In Rd.', 1, '788-832-7076', '783917', 3, 64.471, 'si'),
(20, 'Ap #393-3363 Fringilla Road', 2, '335-278-9678', '8635', 2, 47.42, 'si'),
(21, 'Ap #247-8024 Curabitur St.', 6, '167-013-1429', '15971', 3, 28.795, 'si'),
(22, '995-1099 Id, Road', 5, '491-394-8799', '37-346', 2, 69.505, 'si'),
(23, 'Ap #176-8333 Gravida St.', 6, '339-324-8859', '0318YB', 3, 73.231, 'si'),
(24, '340-985 Lobortis. Avenue', 5, '049-063-4896', '5411', 3, 83.847, 'si'),
(25, '992-7214 Pharetra Rd.', 6, '257-364-7011', '1045SO', 1, 93.907, 'si'),
(26, '7705 Fusce St.', 5, '363-540-9113', '9802', 3, 21.796, 'si'),
(27, '723-5458 Neque. Ave', 1, '512-886-8792', '1038', 1, 97.134, 'si'),
(28, 'Ap #246-9877 Ultricies Rd.', 5, '423-014-6013', '61483', 1, 32.659, 'si'),
(29, 'Ap #712-3234 Nunc Road', 6, '334-030-0048', '9738', 2, 14.56, 'si'),
(30, '4406 Justo Avenue', 4, '242-441-7733', '38707', 3, 69.433, 'si'),
(31, 'Ap #172-6600 Vivamus St.', 1, '710-649-0830', '57503', 3, 1.986, 'si'),
(32, 'Ap #728-4099 Et, Ave', 4, '535-501-0707', '0242AN', 1, 73.668, 'si'),
(33, '4648 Sem Rd.', 5, '956-749-3273', '94323', 2, 85.996, 'si'),
(34, 'Ap #539-4295 Volutpat Avenue', 6, '904-312-9292', '894922', 1, 38.835, 'si'),
(35, '500-6214 Tempus, Street', 6, '168-671-0953', '5574', 3, 62.069, 'si'),
(36, '233-9001 Cum Rd.', 1, '670-701-8060', '20705', 3, 32.174, 'si'),
(37, '4084 Sit St.', 2, '326-023-8622', '02187', 2, 23.492, 'si'),
(38, 'P.O. Box 825, 9762 Etiam Street', 6, '343-695-3228', '56309', 3, 42.579, 'si'),
(39, '5889 Luctus. Ave', 1, '259-039-5762', '6038', 2, 41.843, 'si'),
(40, 'Ap #834-3873 Nullam St.', 4, '809-587-9484', '69526', 3, 94.728, 'si'),
(41, 'P.O. Box 711, 706 Dis Rd.', 5, '354-038-8533', '65211', 3, 90.451, 'si'),
(42, 'P.O. Box 315, 6041 Duis Avenue', 2, '186-671-4205', '893592', 3, 2.261, 'si'),
(43, '5640 Dapibus St.', 5, '906-342-4567', '4263', 3, 76.404, 'si'),
(44, '5260 Sed Rd.', 1, '336-903-7567', '92501', 1, 2.055, 'si'),
(45, 'Ap #864-1235 Mi Rd.', 2, '723-547-1102', 'G9T 9P2', 3, 99.508, 'si'),
(46, '8151 Rutrum Rd.', 6, '594-072-4670', '58567', 1, 7.952, 'si'),
(47, 'P.O. Box 926, 1798 Pellentesque St.', 1, '328-063-3034', '0547ID', 1, 48.882, 'si'),
(48, 'P.O. Box 264, 6488 Euismod Avenue', 3, '210-220-4305', 'J6H 9S9', 2, 33.141, 'si'),
(49, 'Ap #694-1472 Orci Ave', 1, '362-652-3567', '63897', 2, 88.98, 'si'),
(50, 'P.O. Box 354, 6477 Eget St.', 3, '593-092-8585', '90970-060', 1, 35.831, 'si'),
(51, '128-8013 Imperdiet Avenue', 1, '611-764-9648', '727883', 3, 99.23, 'si'),
(52, 'Ap #394-8201 Pede. St.', 1, '057-000-7888', '6390', 2, 82.679, 'si'),
(53, 'Ap #210-1906 Mauris St.', 1, '742-185-0661', '4116', 1, 96.998, 'si'),
(54, '228-2036 Tincidunt Road', 2, '565-750-7079', '7217', 1, 54.71, 'si'),
(55, '681-117 Facilisis Street', 5, '695-936-1302', '83809', 1, 96.281, 'si'),
(56, 'P.O. Box 665, 3825 Nec St.', 4, '859-638-8140', '843642', 1, 3.829, 'si'),
(57, 'Ap #800-4147 In Street', 3, '324-489-2139', '66013', 3, 70.069, 'si'),
(58, '297-8960 Libero. Rd.', 3, '626-297-1082', '9133', 3, 26.514, 'si'),
(59, '5605 Nisi Ave', 2, '842-236-6720', '188876', 1, 68.927, 'si'),
(60, 'P.O. Box 870, 9855 Tristique Avenue', 6, '114-453-9481', '64899', 1, 67.772, 'si'),
(61, 'Ap #214-5963 Metus Road', 4, '337-930-6310', '5290KA', 1, 71.048, 'si'),
(62, '869 Tempus St.', 1, '235-726-7602', 'Y4V 5A1', 3, 90.138, 'si'),
(63, 'P.O. Box 916, 4350 In Avenue', 1, '292-391-9640', '26271', 3, 70.212, 'si'),
(64, 'Ap #768-2635 Eget, Avenue', 6, '909-006-0105', '93246', 1, 74.32, 'si'),
(65, 'Ap #581-5945 Ullamcorper Road', 2, '820-970-3451', '35826', 2, 15.782, 'si'),
(66, 'Ap #298-502 Dolor. Ave', 2, '339-015-5616', '8625GM', 3, 27.53, 'si'),
(67, '569-3972 Malesuada Street', 6, '712-181-4815', '857132', 3, 56.359, 'si'),
(68, 'Ap #378-8818 Molestie Ave', 3, '286-311-5133', '39945', 3, 29.789, 'si'),
(69, '766 Consequat, St.', 3, '790-137-7352', '71804', 1, 57.408, 'si'),
(70, '729-3081 Cubilia Rd.', 5, '888-946-8086', 'F7 0YF', 1, 87.871, 'si'),
(71, '457-7987 Curae; Rd.', 5, '760-938-1297', '19418', 1, 43727, 'si'),
(72, '6158 Tempor Rd.', 4, '690-850-4520', 'L18 9SC', 3, 30.425, 'si'),
(73, 'Ap #693-2983 Class St.', 1, '213-536-0655', '21712', 1, 23.311, 'si'),
(74, '841 Scelerisque Rd.', 4, '367-551-7660', 'YY0A 3TD', 3, 72.611, 'si'),
(75, '792-7569 Dolor Rd.', 1, '261-470-7647', '14844', 1, 98.815, 'si'),
(76, '444-5718 Ut Rd.', 5, '041-009-6788', '8230', 1, 50.861, 'si'),
(77, 'Ap #377-8404 Ipsum Street', 1, '534-916-5827', '37234', 3, 87.808, 'si'),
(78, '2425 Rutrum Street', 3, '494-431-4661', 'IC54 7IK', 1, 93.263, 'si'),
(79, '344-8412 Nisl. St.', 4, '050-082-4431', '99-113', 2, 99.947, 'si'),
(80, '9399 Sem Ave', 4, '909-320-3004', '03082', 1, 69.922, 'si'),
(81, 'P.O. Box 284, 8629 Egestas. St.', 2, '196-562-2718', 'A8Z 9N', 1, 25.541, 'si'),
(82, '283-2290 Aliquam Street', 1, '272-977-8230', 'G1C 0L5', 2, 97.152, 'si'),
(83, 'P.O. Box 787, 1352 Mollis Rd.', 1, '580-328-0397', '63477', 1, 70.429, 'si'),
(84, '571-3448 Ipsum. St.', 1, '451-067-8082', '1688', 3, 9.426, 'si'),
(85, '626-4183 Eros. Road', 1, '818-932-2502', '3977', 2, 82.655, 'si'),
(86, 'Ap #500-446 Accumsan Ave', 3, '453-561-4737', '3773', 3, 29.354, 'si'),
(87, '3703 Quisque Rd.', 2, '020-821-1050', '54983', 2, 96.267, 'si'),
(88, '5946 Consectetuer St.', 1, '773-538-6408', 'Q28 3PO', 1, 61.691, 'si'),
(89, 'P.O. Box 556, 1951 Vulputate Av.', 4, '670-572-1780', '4484KP', 1, 95.859, 'si'),
(90, '727-198 A Road', 4, '821-444-9824', '5962', 2, 82.504, 'si'),
(91, 'Ap #271-6835 Tempus St.', 5, '601-485-1049', '703157', 1, 80.965, 'si'),
(92, 'P.O. Box 519, 981 Nostra, Avenue', 6, '440-469-6769', '61790-368', 3, 49.957, 'si'),
(93, '2759 Faucibus St.', 5, '510-056-8508', '612383', 1, 23.498, 'si'),
(94, '5720 Urna, Street', 6, '581-094-0717', 'X45 0FA', 3, 8.187, 'si'),
(95, '283-1453 Amet, Avenue', 3, '751-107-3929', 'R1B 4Y7', 2, 32.66, 'si'),
(96, 'P.O. Box 169, 7235 Quisque Road', 3, '782-078-8565', '86541', 1, 39.721, 'si'),
(97, '6840 Rhoncus. Ave', 6, '845-500-3131', '7112', 3, 97.135, 'si'),
(98, '967-7675 A, Rd.', 3, '751-125-7876', '34981', 2, 6.672, 'si'),
(99, '227-6771 Ut Street', 4, '262-186-7762', '7131', 3, 17.16, 'si'),
(100, 'P.O. Box 432, 4652 Proin Ave', 5, '113-637-2816', '598072', 1, 42.804, 'si');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `bienes_disponibles`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `bienes_disponibles` (
`id` int(11)
,`direccion` varchar(100)
,`ciudad` varchar(50)
,`telefono` varchar(20)
,`codigo_postal` varchar(30)
,`tipo` varchar(50)
,`precio` float
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `bienes_guardados`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `bienes_guardados` (
`id` int(11)
,`direccion` varchar(100)
,`ciudad` varchar(50)
,`telefono` varchar(20)
,`codigo_postal` varchar(30)
,`tipo` varchar(50)
,`precio` float
,`idbienes` int(11)
,`idusuario` int(11)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--

CREATE TABLE `ciudad` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ciudad`
--

INSERT INTO `ciudad` (`id`, `nombre`) VALUES
(1, 'New York'),
(2, 'Orlando'),
(3, 'Los Angeles'),
(4, 'Houston'),
(5, 'Washington'),
(6, 'Miami');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mis_bienes`
--

CREATE TABLE `mis_bienes` (
  `id` int(11) NOT NULL,
  `bienes` int(11) DEFAULT NULL,
  `usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `mis_bienes`
--

INSERT INTO `mis_bienes` (`id`, `bienes`, `usuario`) VALUES
(104, 7, 1),
(105, 14, 1),
(106, 17, 1),
(107, 100, 2),
(108, 57, 2),
(109, 98, 2),
(111, 29, 2),
(112, 43, 2),
(113, 58, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo`
--

CREATE TABLE `tipo` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo`
--

INSERT INTO `tipo` (`id`, `nombre`) VALUES
(1, 'Casa'),
(2, 'Apartamento'),
(3, 'Casa de campo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `clave` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombre`, `clave`) VALUES
(1, 'Daniel', 'dani'),
(2, 'Sebastian', 'sebas'),
(3, 'Emilia', 'emy'),
(4, 'Luis', 'luis'),
(5, 'Tatiana', 'tata');

-- --------------------------------------------------------

--
-- Estructura para la vista `bienes_disponibles`
--
DROP TABLE IF EXISTS `bienes_disponibles`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `bienes_disponibles`  AS SELECT `b`.`id` AS `id`, `b`.`direccion` AS `direccion`, `c`.`nombre` AS `ciudad`, `b`.`telefono` AS `telefono`, `b`.`codigo_postal` AS `codigo_postal`, `t`.`nombre` AS `tipo`, `b`.`precio` AS `precio` FROM ((`bienes` `b` join `ciudad` `c` on(`b`.`ciudad` = `c`.`id`)) join `tipo` `t` on(`b`.`tipo` = `t`.`id`)) ORDER BY `b`.`id` ASC ;

-- --------------------------------------------------------

--
-- Estructura para la vista `bienes_guardados`
--
DROP TABLE IF EXISTS `bienes_guardados`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `bienes_guardados`  AS SELECT `m`.`id` AS `id`, `b`.`direccion` AS `direccion`, `c`.`nombre` AS `ciudad`, `b`.`telefono` AS `telefono`, `b`.`codigo_postal` AS `codigo_postal`, `t`.`nombre` AS `tipo`, `b`.`precio` AS `precio`, `b`.`id` AS `idbienes`, `u`.`id` AS `idusuario` FROM ((((`mis_bienes` `m` join `bienes` `b` on(`m`.`bienes` = `b`.`id`)) join `ciudad` `c` on(`b`.`ciudad` = `c`.`id`)) join `tipo` `t` on(`b`.`tipo` = `t`.`id`)) join `usuario` `u` on(`m`.`usuario` = `u`.`id`)) ORDER BY `m`.`id` ASC ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bienes`
--
ALTER TABLE `bienes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pk_bienes_ciudad` (`ciudad`),
  ADD KEY `pk_bienes_tipo` (`tipo`);

--
-- Indices de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `mis_bienes`
--
ALTER TABLE `mis_bienes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pk_bienes` (`bienes`),
  ADD KEY `pk_bienes_usuario` (`usuario`);

--
-- Indices de la tabla `tipo`
--
ALTER TABLE `tipo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bienes`
--
ALTER TABLE `bienes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `mis_bienes`
--
ALTER TABLE `mis_bienes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT de la tabla `tipo`
--
ALTER TABLE `tipo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `bienes`
--
ALTER TABLE `bienes`
  ADD CONSTRAINT `pk_bienes_ciudad` FOREIGN KEY (`ciudad`) REFERENCES `ciudad` (`id`),
  ADD CONSTRAINT `pk_bienes_tipo` FOREIGN KEY (`tipo`) REFERENCES `tipo` (`id`);

--
-- Filtros para la tabla `mis_bienes`
--
ALTER TABLE `mis_bienes`
  ADD CONSTRAINT `pk_bienes` FOREIGN KEY (`bienes`) REFERENCES `bienes` (`id`),
  ADD CONSTRAINT `pk_bienes_usuario` FOREIGN KEY (`usuario`) REFERENCES `usuario` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
