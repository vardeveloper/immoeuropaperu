-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 26-01-2021 a las 16:42:06
-- Versión del servidor: 10.3.27-MariaDB
-- Versión de PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `immoeuro_immo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `adm_id` int(11) UNSIGNED NOT NULL,
  `adm_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `adm_pass` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `adm_apellido` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `adm_nombre` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `adm_email` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `adm_fecha` date DEFAULT '0000-00-00',
  `adm_estado` tinyint(1) DEFAULT 1 COMMENT '0:inactivo, 1:activo',
  `adm_tipo` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `adm_ip` varchar(50) DEFAULT NULL,
  `adm_last_visit` datetime DEFAULT NULL,
  `adm_browser` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`adm_id`, `adm_user`, `adm_pass`, `adm_apellido`, `adm_nombre`, `adm_email`, `adm_fecha`, `adm_estado`, `adm_tipo`, `adm_ip`, `adm_last_visit`, `adm_browser`) VALUES
(87, 'admin', '+LH0IMhmhCl//AIBKZ7PrjyOYlWcVhIDmICE75pABTg=', 'alcantara', 'victor', 'victor@vardeveloper.com', '2011-09-17', 1, 'administrador', '89.44.36.66', '2020-11-24 08:22:30', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banner`
--

CREATE TABLE `banner` (
  `ba_id` int(11) UNSIGNED NOT NULL,
  `ba_titulo` varchar(255) DEFAULT NULL,
  `ba_url` varchar(255) DEFAULT NULL,
  `ba_estado` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `banner`
--

INSERT INTO `banner` (`ba_id`, `ba_titulo`, `ba_url`, `ba_estado`) VALUES
(2, 'slider', NULL, 1),
(13, 'Banner SB', NULL, 1),
(16, 'Mar Pacifico', NULL, 1),
(17, 'Punta Nueva Mar y Bosques', NULL, 1),
(20, 'Bolnou', NULL, 1),
(21, 'Benidorm Beach', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `cat_id` int(11) UNSIGNED NOT NULL,
  `cat_padre_id` int(11) DEFAULT NULL,
  `cat_nombre` varchar(255) DEFAULT NULL,
  `cat_key` varchar(255) DEFAULT NULL,
  `cat_orden` tinyint(4) DEFAULT 0,
  `cat_estado` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`cat_id`, `cat_padre_id`, `cat_nombre`, `cat_key`, `cat_orden`, `cat_estado`) VALUES
(1, 0, 'Departamentos', 'departamentos', 1, 1),
(3, 0, 'Oficinas', 'oficinas', 3, 1),
(6, 0, 'Casas', 'casas', 6, 1),
(5, 0, 'Locales Comerciales', 'locales-comerciales', 5, 1),
(7, 0, 'Industria y Agrícola', 'industria-y-agricola', 7, 1),
(8, 0, 'Terrenos', 'terrenos', 8, 1),
(9, 0, 'Edificios y Hoteles', 'edificios-y-hoteles', 9, 1),
(10, 0, 'Perú', 'peru', 0, 1),
(11, 0, 'España', 'espana', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_detalle`
--

CREATE TABLE `categoria_detalle` (
  `det_id` int(11) UNSIGNED NOT NULL,
  `det_padre_id` int(11) DEFAULT NULL,
  `det_cat_id` int(11) DEFAULT 0,
  `det_pro_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categoria_detalle`
--

INSERT INTO `categoria_detalle` (`det_id`, `det_padre_id`, `det_cat_id`, `det_pro_id`) VALUES
(181, 11, 0, 126),
(79, 6, 0, 75),
(156, 11, 0, 114),
(160, 6, 0, 116),
(196, 1, 0, 134),
(42, 1, 0, 39),
(173, 11, 0, 122),
(163, 11, 0, 117),
(236, 11, 0, 153),
(70, 6, 0, 70),
(197, 11, 0, 134),
(249, 10, 0, 70),
(177, 11, 0, 124),
(174, 6, 0, 123),
(242, 11, 0, 156),
(76, 1, 0, 79),
(172, 6, 0, 122),
(81, 1, 0, 83),
(47, 1, 0, 44),
(241, 1, 0, 156),
(43, 1, 0, 40),
(159, 10, 0, 115),
(72, 1, 0, 72),
(71, 1, 0, 71),
(53, 6, 0, 51),
(176, 6, 0, 124),
(175, 11, 0, 123),
(180, 6, 0, 126),
(74, 6, 0, 74),
(235, 6, 0, 153),
(59, 6, 0, 58),
(61, 1, 0, 61),
(158, 1, 0, 115),
(183, 11, 0, 127),
(64, 1, 0, 63),
(182, 6, 0, 127),
(73, 1, 0, 73),
(83, 1, 0, 85),
(84, 6, 0, 86),
(85, 1, 0, 87),
(155, 6, 0, 114),
(161, 10, 0, 116),
(167, 10, 0, 119),
(91, 1, 0, 92),
(92, 1, 0, 93),
(93, 6, 0, 94),
(94, 1, 0, 95),
(96, 1, 0, 97),
(97, 1, 0, 98),
(98, 6, 0, 99),
(189, 11, 0, 130),
(100, 6, 0, 101),
(238, 11, 0, 154),
(102, 6, 0, 103),
(103, 11, 0, 103),
(237, 6, 0, 154),
(188, 6, 0, 130),
(106, 11, 0, 98),
(107, 10, 0, 99),
(166, 1, 0, 119),
(110, 10, 0, 85),
(111, 6, 0, 104),
(112, 11, 0, 104),
(113, 10, 0, 101),
(114, 10, 0, 39),
(115, 11, 0, 97),
(117, 11, 0, 92),
(118, 10, 0, 43),
(119, 1, 0, 43),
(121, 10, 0, 51),
(122, 11, 0, 95),
(123, 11, 0, 94),
(124, 11, 0, 93),
(126, 10, 0, 72),
(127, 10, 0, 87),
(129, 10, 0, 75),
(130, 10, 0, 74),
(131, 10, 0, 44),
(162, 6, 0, 117),
(134, 6, 0, 105),
(135, 11, 0, 105),
(136, 10, 0, 58),
(137, 1, 0, 76),
(138, 10, 0, 76),
(185, 11, 0, 128),
(184, 1, 0, 128),
(141, 1, 0, 107),
(142, 11, 0, 107),
(201, 11, 0, 136),
(200, 6, 0, 136),
(145, 6, 0, 109),
(146, 11, 0, 109),
(179, 11, 0, 125),
(178, 6, 0, 125),
(149, 1, 0, 111),
(150, 10, 0, 111),
(151, 1, 0, 112),
(152, 10, 0, 112),
(153, 1, 0, 113),
(154, 10, 0, 113),
(164, 6, 0, 118),
(165, 11, 0, 118),
(168, 6, 0, 120),
(169, 10, 0, 120),
(170, 6, 0, 121),
(171, 11, 0, 121),
(186, 6, 0, 129),
(187, 11, 0, 129),
(190, 6, 0, 131),
(191, 11, 0, 131),
(192, 1, 0, 132),
(193, 11, 0, 132),
(194, 3, 0, 133),
(195, 11, 0, 133),
(202, 1, 0, 137),
(203, 11, 0, 137),
(204, 6, 0, 138),
(205, 11, 0, 138),
(240, 11, 0, 155),
(239, 6, 0, 155),
(208, 1, 0, 140),
(209, 11, 0, 140),
(210, 6, 0, 141),
(211, 11, 0, 141),
(212, 1, 0, 142),
(213, 11, 0, 142),
(214, 1, 0, 143),
(215, 11, 0, 143),
(216, 1, 0, 144),
(217, 11, 0, 144),
(218, 6, 0, 145),
(219, 11, 0, 145),
(222, 11, 0, 147),
(223, 6, 0, 147),
(226, 6, 0, 149),
(227, 11, 0, 149),
(231, 6, 0, 151),
(229, 11, 0, 150),
(230, 6, 0, 150),
(232, 11, 0, 151),
(233, 6, 0, 152),
(234, 11, 0, 152),
(245, 10, 0, 40),
(246, 10, 0, 61),
(247, 1, 0, 158),
(248, 10, 0, 158),
(250, 10, 0, 159),
(251, 1, 0, 159),
(252, 10, 0, 79),
(253, 1, 0, 160),
(254, 10, 0, 160),
(255, 1, 0, 161),
(256, 11, 0, 161);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `foto`
--

CREATE TABLE `foto` (
  `fot_id` int(11) UNSIGNED NOT NULL,
  `fot_gal_id` int(11) DEFAULT NULL,
  `fot_titulo` varchar(255) DEFAULT NULL,
  `fot_fecha` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `foto`
--

INSERT INTO `foto` (`fot_id`, `fot_gal_id`, `fot_titulo`, `fot_fecha`) VALUES
(65, 3, 'Casa de Playa San Bartolo Departamento 1', '2019-12-04'),
(50, 2, 'Calpe Beach II Vista aérea ', '2019-11-13'),
(51, 2, 'Calpe Beach II Fachada', '2019-11-13'),
(66, 3, 'Casa de Playa San Bartolo Departamento 1', '2019-12-04'),
(62, 3, 'Casa de Playa San Bartolo Departamento 2', '2019-12-04'),
(63, 3, 'Casa de Playa San Bartolo Departamento 2', '2019-12-04'),
(64, 3, 'Casa de Playa San Bartolo Departamento 2', '2019-12-04'),
(52, 2, 'Calpe Beach II', '2019-11-13'),
(57, 5, 'Casa El Limonar Torrevieja - Portico', '2019-12-04'),
(58, 5, 'Casa El Limonar Torrevieja - Parrilla', '2019-12-04'),
(55, 6, 'Denia Beach Fotos de obras', '2019-11-13'),
(53, 6, 'Denia Beach Fotos de obras', '2019-11-13'),
(54, 6, 'Denia Beach Fotos de obras', '2019-11-13'),
(56, 6, 'Denia Beach Fotos de obras', '2019-11-13'),
(59, 5, 'Casa El Limonar Torrevieja - Sala 2do Piso', '2019-12-04'),
(60, 5, 'Casa El Limonar Torrevieja - 3 er dormitorio', '2019-12-04'),
(61, 3, 'Casa de Playa San Bartolo Departamento 2', '2019-12-04'),
(67, 3, 'Casa de Playa San Bartolo Departamento 1', '2019-12-04'),
(68, 3, 'Casa de Playa San Bartolo Departamento 1', '2019-12-04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `galeria`
--

CREATE TABLE `galeria` (
  `gal_id` int(11) UNSIGNED NOT NULL,
  `gal_titulo` varchar(255) DEFAULT NULL,
  `gal_key` varchar(255) DEFAULT NULL,
  `gal_estado` tinyint(1) DEFAULT NULL,
  `gal_fecha` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `galeria`
--

INSERT INTO `galeria` (`gal_id`, `gal_titulo`, `gal_key`, `gal_estado`, `gal_fecha`) VALUES
(2, 'Galeria 1', 'galeria-1', 1, '2014-05-14'),
(3, 'Galería 2', 'galeria-2', 1, '2014-05-22'),
(6, 'Galería 4', 'galeria-4', 1, '2014-05-23'),
(5, 'Galería 3', 'galeria-3', 1, '2014-05-23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticia`
--

CREATE TABLE `noticia` (
  `not_id` int(11) UNSIGNED NOT NULL,
  `not_titulo` varchar(255) DEFAULT NULL,
  `not_key` varchar(255) DEFAULT NULL,
  `not_descripcion` text DEFAULT NULL,
  `not_fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  `not_estado` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `noticia`
--

INSERT INTO `noticia` (`not_id`, `not_titulo`, `not_key`, `not_descripcion`, `not_fecha`, `not_estado`) VALUES
(2, 'Obligaciones si es el transferente:', 'obligaciones-si-es-el-transferente', 'A su vez, el vendedor o transferente deberá presentar la Declaración Jurada de Descargo del Impuesto Predial, teniendo como plazo hasta el último día hábil del mes siguiente de producida la transferencia, en caso contrario se le aplicará una multa.\r\n    Además, estará obligado a efectuar el pago total del Impuesto Predial incluido el de todo el año en el que se realizó la transferencia.', '2014-05-21 01:45:37', 1),
(3, 'Obligaciones si es el adquiriente:', 'obligaciones-si-es-el-adquiriente', 'En caso de inmuebles ubicados en el Cercado de Lima, también deberá cumplir con su obligación de presentar ante el SAT la Declaración Jurada de Inscripción del Impuesto Predial, teniendo como plazo hasta el último día hábil del mes de febrero del año siguiente de efectuada la transferencia. También evitará la aplicación de una multa por la omisión a la presentación de la declaración jurada.', '2014-05-21 01:46:18', 1),
(4, 'Alcabala - Primera Venta Realizada por el Constructor', 'alcabala---primera-venta-realizada-por-el-constructor', 'La primera venta de inmuebles que realizan las empresas constructoras no se encuentra afecta al impuesto, salvo en la parte correspondiente al valor del terreno (conforme se encuentra registrado en el autovalúo). \r\n    En este caso, se tiene que presentar además de los requisitos antes indicados lo siguiente:\r\n    \r\n    •	Si se trata de una empresa constructora: exhibir los documentos que acrediten que el transferente es una empresa constructora (Ej.: la ficha RUC de la empresa constructora o la escritura pública de constitución en donde se indique o se desprenda que se dedica a la actividad empresarial de construcción y/o venta de inmuebles). \r\n    •	En el caso de personas que no realicen actividad empresarial: acreditar por lo menos 2 ventas en los últimos 12 meses (adicionales a la venta materia de liquidación). (Directiva Base Legal: Decreto Legislativo 972, Directiva SAT 001-006-00000012).', '2014-05-21 01:55:58', 1),
(5, '¿Qué es el Impuesto de Alcabala?', 'que-es-el-impuesto-de-alcabala', 'Es un Impuesto que grava las transferencias de propiedad de bienes inmuebles urbanos o rústicos a título oneroso o gratuito, cualquiera sea su forma o modalidad, inclusive las ventas con reserva de dominio.', '2014-05-21 02:12:41', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `privilegios`
--

CREATE TABLE `privilegios` (
  `mod_id` int(11) UNSIGNED NOT NULL,
  `mod_id_admin` int(11) DEFAULT NULL,
  `mod_modulo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `pro_id` int(11) UNSIGNED NOT NULL,
  `pro_nombre` varchar(255) DEFAULT NULL,
  `pro_key` varchar(255) DEFAULT NULL,
  `pro_descripcion` text DEFAULT NULL,
  `pro_video` text DEFAULT NULL,
  `pro_tipo_moneda` enum('US $','PEN S/','EUR €') DEFAULT 'US $',
  `pro_precio` double(10,2) DEFAULT NULL,
  `pro_tipo` enum('alquiler','alquilado','venta','vendido') DEFAULT NULL,
  `pro_destacar` tinyint(1) DEFAULT NULL,
  `pro_estado` tinyint(1) DEFAULT NULL,
  `pro_fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`pro_id`, `pro_nombre`, `pro_key`, `pro_descripcion`, `pro_video`, `pro_tipo_moneda`, `pro_precio`, `pro_tipo`, `pro_destacar`, `pro_estado`, `pro_fecha`) VALUES
(154, 'España, Venta Bungalow Duplex, 3 dormitorios con piscina, Torrevieja', 'espana-venta-bungalow-duplex-3-dormitorios-con-piscina-torrevieja', 'Bungalow Duplex, 3 dormitorios, amueblado y equipado, cocina americana, armarios empotrados, 2 baños con ventana, patio, parcela de 65 m², solarium privado de 35 m², aire acondicionado, plaza de parkin en parcela, trastero, orientación este, pìscina comunitaria con zonas verdes, urbanizacion a 3 Km de las playas de Torrevieja.\r\nZona Paraje natural\r\n•	Metros del Inmueble: 85 m²\r\n•	Gastos Comunidad: 20 € por mes\r\n•	Suma/IBI: 250 € al año\r\n', '', 'EUR €', 113700.00, 'venta', 1, 1, '2020-08-14 10:23:33'),
(134, 'España, Venta ÁTICO EN ESQUINA EN GUARDAMAR DEL SEGURA', 'espana-venta-atico-en-esquina-en-guardamar-del-segura', 'Ático en esquina en Guardamar del Segura zona Avenida del puerto, 44 m2. de superficie construida, 4 m2 de cocina, 16 m2 de comedor, 20 m2 de terraza, una habitación doble, un baño, propiedad totalmente exterior y con mucha luz (soleado) para entrar a vivir, cocina equipada, carpinteria interior de cerezo, orientación suroeste.\r\n\r\nExtras: persianas eléctricas, agua, armarios empotrados, ascensor, jardín, línea telefónica, luminoso, luz, piscina comunitaria, solárium (comunitario), terraza (dos), trastero, árboles, céntrico, costa, urbanización, vistas al mar, parking incluido\r\nAño de construcción 2007', '', 'EUR €', 99000.00, 'venta', 1, 1, '2020-02-27 08:03:01'),
(124, 'España, Villa de lujo - Daya Vieja (pueblo)', 'espana-villa-de-lujo---daya-vieja-(pueblo)', 'Villa de Lujo en Daya Vieja completamente legal , 190 m2 construidos , 4000 m2 de parcela incluye un huerto de Naranjos, 10 m2 de cocina, 20 m2 de terraza, 5,5 Km de la playa, 3 habitaciones dobles, 2 baños, propiedad para entrar a vivir, cocina equipada, orientación sur, suelo de gres, carpintería exterior de aluminio / climalit.Techo abuhardillado con una habitación enorme.A 5 minutos andando del centro del Pueblo.\r\nExtras: aire acondicionado , arma. empotrados, chimenea, jardín , línea telefónica, luminoso, luz, muebles, piscina propia , puerta blindada, solárium, terraza, video portero, vistas despejadas, parking incluido', '', 'EUR €', 256500.00, 'venta', 1, 1, '2020-01-22 17:11:48'),
(39, 'Perú Alquiler Departamento  Amoblado Verano 2021', 'peru-alquiler-departamento-amoblado-verano-2021', 'Tiene vista al mar desde la sala y el dormitorio principal, cómodas pueden dormir hasta 6 personas:\r\n                        • 3 Dormitorios con roperos (2 camas de 2 plazas, 1 camarotes de 1.5 plaza )\r\n                        • 2 Baños completos\r\n                        Sala comedor con balcón, tiene cable para TV dormitorio principal y sala\r\n                        Cocina con reposteros altos y bajos, linea blanca completa\r\n                        Lavandería (con lavadora) y tendedero\r\n                        01 Estacionamiento en sótano\r\n                        Sistema de seguridad en el ingreso con intercomunicador y cámaras de vigilancia.\r\n                        Cisterna de agua con equipo de Bombeo de presión Constante\r\n                        Área común con Piscina , vista al mar.', '', 'US $', 2200.00, 'alquiler', 0, 1, '2015-08-22 20:54:44'),
(71, 'Alquiler Mini Departamento con Terraza Vista Al Mar Playa Sur San Bartolo', 'alquiler-mini-departamento-con-terraza-vista-al-mar-playa-sur-san-bartolo', 'Alquiler Mini departamento, ubicado en calle Bahia Sur 131 - Zona Costa Sur baja - San Bartolo \r\nUn Ambiente con dormitorio, sala y kitchenette, baño completo con agua caliente, ventanas amplias muy buena iluminación, cuenta con una terraza en el 5to piso \r\nAlquiler del 03 al 31 Enero $1,000 \r\nAlquiler del 01 al 31 Marzo $1000 \r\nAlquiler Semana Santa del 15 al 21 Abril $500\r\nGarantía $500 , mantenimiento S/130 incluye el agua, luz según consumo, al retirarse S/50 por la limpieza', '', 'US $', 1000.00, 'alquiler', 1, 2, '2018-10-01 21:03:13'),
(127, 'España, Chalet en Torrevieja zona Los balcones', 'espana-chalet-en-torrevieja-zona-los-balcones', 'Chalet en Torrevieja zona Los balcones, 266 m. de superficie, 580 m. superficie parcela, 3 habitaciones dobles y una habitación sencilla, 2 baños, propiedad para entrar a vivir, suelo de gres, carpintería exterior de PVC / climalit, carpintería interior de cerezo en la planta baja y en la planta alta lacada en blanco.\r\nExtras: aire acondicionado, calefacción central, jardín, luminoso, muebles, terraza, garaje incluido de 85m2 en semi-sótano con ventanas. Puerta acorazada. Panel de cristal en la fachada con vidrio térmico blindado anti reflectante.\r\nSe vende amueblado y equipado incluyendo aire-acondicionado por conductos con mandos individuales, calefacción de gas natural, aspiración central, chimenea con turbina, puertas de garaje y acceso para vehículos motorizadas. De diseño único, esta vivienda ofrece el máximo confort y bienestar.\r\nSituado: Torrevieja - Alicante\r\n', '', 'EUR €', 425000.00, 'venta', NULL, 1, '2020-01-24 16:03:10'),
(155, 'España, Obra Nueva, Villas con piscina - Ciudad Quesada', 'espana-obra-nueva-villas-con-piscina---ciudad-quesada', 'Villas de obra nueva, un diseño moderno y acabados de primera calidad. Su diseño y orientación sur han sido minuciosamente estudiados para que puedas disfrutar del sol durante todo el día y experimentar lo mejor del Mediterráneo.\r\nLas Villas: desde su terraza, se puede disfrutar de una magnífica vista del parque natural de las Lagunas de la Mata.\r\n• 3 habitaciones\r\n• 2 baños completos y aseos de invitados (uno en suite en el dormitorio principal)\r\n• Solárium\r\n• Jardín\r\n• Piscina privada\r\n• Estacionamiento privado\r\nEl conjunto residencial, está situado en una zona privilegiada de Rojales, cerca del Parque Natural Laguna de La Mata, y a tan solo 5 kilómetros de las mejores playas de la Costa Blanca.\r\nEn los alrededores encontrarás una amplia oferta deportiva y comercial, hoteles, centros comerciales, restaurantes, 4 campos de golf de 18 hoyos, centro ecuestre, pistas de tenis, deportes acuáticos, etc.\r\nEl acceso a la autopista AP-7 se encuentra a 2 km y los aeropuertos de Alicante y Murcia a 30 minutos en coche.\r\n', '', 'EUR €', 269000.00, 'venta', 1, 1, '2020-08-26 13:54:09'),
(136, 'España, Proyecto VILLA ISLA WAKE - Altea', 'espana-proyecto-villa-isla-wake---altea', 'Chalet en construcción de 402m2 distribuido en dos plantas con un total de 4 dormitorios, 4 baños, aseo de cortesía, espacioso salón-comedor y cocina de diseño equipada, zona de SPA con jacuzzi y sauna. parcela de 1046m2 con 100% privacidad, ajardinada y con piscina individual, zona barbacoa A tan sólo 20m de supermercados y tiendas y 300m de la playa y del puerto de Campomanes.\r\n•         Aire Acondicionado Centralizado\r\n•         Armarios Empotrados\r\n•         Dressing\r\n•         En Suite\r\n•         Iluminación de Jardín\r\n•         Iluminación Exterior\r\n•         Jacuzzi Interior\r\n•         Lavadero\r\n•         Parcela Llana\r\n•         Parcela Vallada\r\n•         Parking Nº Coches\r\n•         Piscina Privada\r\n•         Puerta Automática\r\n•         Riego Automático\r\n•         Sauna\r\n•         Suelo Radiante\r\n•         Terraza Abierta\r\n•         Un paso de los servicios\r\n•         Vistas a la Montaña', '', 'EUR €', 895000.00, 'venta', NULL, 1, '2020-02-27 14:45:36'),
(137, 'España, Apartamento en Campomanes - Altea ', 'espana-apartamento-en-campomanes---altea', 'Apartamento de 145m2 con terraza de 17m2, 3 dormitorios, 2 baños, amplio salón, cocina con electrodomésticos de alta gama (Bosch, Siemens, ..) Habitación principal con jacuzzi y vestidor. Terraza con suelos de madera. Fecha de construcción 2007\r\nEXTRAS\r\n•	Cocina: americana\r\n•	Balcón: terraza abierta\r\n•	Orientación: Sureste\r\n•	Vistas: vista al mar\r\n•	Piscina: comunitaria\r\n•	Jardín: comunidad\r\n•	Garaje: si\r\n•	Estacionamiento: si\r\n•	Piso de la propiedad: madera\r\n•	Puerta reforzada: sí\r\n•	Aire Acondicionado: Si\r\n•	Ascensor: sí\r\n•	Armarios Empotrados: Si\r\n•	Doble acristalamiento: sí\r\n', '', 'EUR €', 399000.00, 'venta', NULL, 1, '2020-02-27 15:02:14'),
(159, 'Perú Alquiler Departamento Frente al Mar Playa Peñascal - San Bartolo', 'peru-alquiler-departamento-frente-al-mar-playa-penascal---san-bartolo', 'Tipo de Propiedad: Departamento de Playa en Condominio Privado\r\nCapacidad Máxima: 07 personas\r\nDistribución de camas y habitaciones\r\nHabitaciones: 03\r\n01 Habitación principal con vista al mar y acceso directo a la terraza, cama queen, TV 47″, baño con ducha española, cabina de hidromasaje y jacuzzi. 01 Habitación con camarote y una cama de plaza y media, baño privado. 01 Habitación tipo estudio con cama matrimonial y TV 65″.\r\nBaños: 03\r\nMínimo de estadía: 3 días.\r\nPrecio por día: $265 dólares\r\nSemana completa: $908 dólares\r\nMes: $3400 dólares + servicios\r\nFERIADOS\r\nAño Nuevo del 28 al 04 de enero $1509 dólares.\r\nSERVICIOS INCLUIDOS\r\nCocina full equipada, Estacionamiento, Jacuzzi, Parrilla, Vigilancia 24 horas, Wifi\r\nUbicación: Playa Peñascal - San Bartolo 15856\r\nREGLAS DE LA CASA\r\nEntrada: 12:00 pm\r\nSalida: 05:00 pm\r\nNo se permiten mascotas.\r\nProhibido fiestas o eventos. Sólo para familias o grupo de parejas adultas.\r\nSe permite un niño adicional sin costo alguno.\r\nNo se hacen descuentos por menos personas.\r\nPAGOS ADICIONALES\r\nGarantía de $150 dólares a la llegada (se devuelve a la salida).\r\nPago de $25 de dólares por limpieza.', '', 'US $', 3400.00, 'alquiler', NULL, 1, '2020-10-21 17:48:07'),
(51, 'Perú Alquiler Casa con Piscina 7 dormitorios Frente al Mar San Bartolo', 'peru-alquiler-casa-con-piscina-7-dormitorios-frente-al-mar-san-bartolo', 'Excelente y muy amplia casa y departamento frente al mar, Peñascal, totalmente amoblada, 3 terrazas: (primer piso, segundo y tercer piso). \r\n                                - Amplia piscina. \r\n                                - Frente al mar de Peñascal (primera fila). \r\n                                - 7 dormitorios y 5 baños. \r\n                                - Además 1 cuarto y 1 baño de servicio. \r\n                                - Patio con más de 250 m2 de áreas libres. \r\n                                - Amoblada. \r\n                                - Ingreso vigilado por portero. \r\n                                - 4 estacionamientos. \r\n                                - Lavandería. \r\n                                - Frente a lindo parque. \r\n                                * Camas para 20 personas. (Perfecto hasta para 3 familias). \r\n                                * PRECIO: US$ 17,500 por alquiler a partir del 27 de diciembre de 2020 al 04 abril 2021\r\n                    Cuenta con cable e Internet', '', 'US $', 5500.00, 'alquiler', 0, 1, '2015-11-13 22:18:30'),
(79, 'Perú Alquiler Departamento duplex con Linda vista al Mar Playa Sur San Bartolo', 'peru-alquiler-departamento-duplex-con-linda-vista-al-mar-playa-sur-san-bartolo', 'Se alquila lindo duplex en Playa San Bartolo Malecón Sur. \r\n        3 habitaciones / 2 con vista al mar. 1 en interior. 1 Baño completo. Terraza, sala, kitchenet, 1/2 baño y comedor. Patio. 1 Estacionamiento. Excelente ubicación, cerca de todo, frente al mar, la entrada es por arriba por el malecón, El alquiler incluye gastos de agua y luz, Directv, Cochera, Mini OLO router a disposición para recargar. Para 6 o 7 personas. Tiene 2 camas de 2 plazas y 3 simples. Tenemos ropa de cama, Toallas, y menaje básico de cocina. La idea es que lleves lo mínimo. \r\n        Alquiler por semana $700 + $200 garantía \r\n        Alquiler por mes $2,200 + $300 garantía \r\n        Alquiler temporada del 27 Dic 2018 al 21 Abr 2019 $6500 + $500 garantía', '', 'US $', 2200.00, 'alquilado', 0, 1, '2018-10-30 14:03:05'),
(138, 'España, PROYECTO VILLA ISLA KOSRAE en Benissa - Alicante', 'espana-proyecto-villa-isla-kosrae-en-benissa---alicante', 'Nueva villa en construcción en Benissa, a solo 1,4 km del mar y cerca de todos los servicios. La propiedad tiene 235m2 en una parcela de 1.000m2, 3 dormitorios, 3 baños, aseo, amplio salón, cocina. También cuenta con un estudio independiente para invitados con dormitorio y baño. Jardín ajardinado con piscina privada. Extras: aire acondicionado, suelo radiante preinstalado, sistema de alarma, Parking, Armarios emportados, Vistas al mar\r\n \r\n', '', 'EUR €', 795000.00, 'venta', 0, 1, '2020-02-27 15:48:23'),
(156, 'España, Obra Nueva, Apartamentos - Ciudad Quesada', 'espana-obra-nueva-apartamentos---ciudad-quesada', 'Es un conjunto residencial compuesto de 20 apartamentos con un diseño moderno y acabados de primera calidad.\r\nSu diseño y orientación sur han sido minuciosamente estudiados para que puedas disfrutar del sol durante todo el día y experimentar lo mejor del Mediterráneo.\r\nLos apartamentos se componen de cinco bloques de cuatro apartamentos, ubicados en planta baja o planta alta.\r\nCon grandes ventanales en todas las habitaciones, todos los apartamentos se benefician de la máxima luz durante todo el día.\r\nPlanta baja\r\n• 2 dormitorios\r\n• 2 baños completos (uno en suite en el dormitorio principal)\r\n• Terraza cubierta\r\n• Jardín\r\n• Piscina comunitaria\r\n• Estacionamiento privado\r\n\r\nPrimer Piso\r\n• 2 dormitorios\r\n• 2 baños completos (uno en suite en el dormitorio principal)\r\n• Terraza cubierta\r\n• Solárium\r\n• Piscina comunitaria\r\n• Estacionamiento privado\r\nEstá situado en una zona privilegiada de Rojales, cerca del Parque Natural Laguna de La Mata, y a tan solo 5 kilómetros de las mejores playas de la Costa Blanca.\r\nEn los alrededores encontrarás una amplia oferta deportiva y comercial, hoteles, centros comerciales, restaurantes, 4 campos de golf de 18 hoyos, centro ecuestre, pistas de tenis, deportes acuáticos, etc.\r\nEl acceso a la autopista AP-7 se encuentra a 2 km y los aeropuertos de Alicante y Murcia a 30 minutos en coche.\r\n', '', 'EUR €', 210000.00, 'venta', NULL, 1, '2020-08-26 17:37:56'),
(140, 'España, Apartamento en la Playa del cura - Torrevieja', 'espana-apartamento-en-la-playa-del-cura---torrevieja', '•	Tipo de inmueble: Apartamento\r\n•	Estado: Seminuevo\r\n•	Zona: Playa del Cura\r\n•	Orientación: Este\r\n•	Núm. Planta: 4\r\n•	Amueblado\r\n•	Equipado\r\n•	Cocina Independiente\r\n•	Dormitorios: 3\r\n•	Armarios Empotrados\r\n•	Baños: 2\r\n•	Terraza : 10 m²\r\n•	Solarium\r\n•	Ascensor\r\n•	Toldos\r\n•	Aire Acondicionado\r\n•	Vistas al Mar\r\n•	Soleado\r\n•	Metros del Inmueble: 84 m²\r\n•	Gastos Comunidad: 54 €\r\n•	Suma/IBI: 500 €\r\n', '', 'EUR €', 129500.00, 'venta', NULL, 1, '2020-02-27 17:05:15'),
(122, 'ESPAÑA, ESTUPENDO ADOSADO DE 3 DORMITORIOS, EN EL CORAZON DE LA ZENIA', 'espana-estupendo-adosado-de-3-dormitorios-en-el-corazon-de-la-zenia', 'ADOSADO EN LA ZENIA ORIENTACIÓN SUR FRENTE A PISCINA DISTANCIA A LA PLAYA\r\n800 METROS\r\n3 DORMITORIOS\r\n2 BAÑOS\r\nJARDIN\r\nPATIO\r\nTERRAZA\r\nSOLARIUM CON VISTAS AL MAR\r\nIBI: 258,17€ AÑO\r\nCOMUNIDAD: 27€ MES\r\nUBICADO: ORIHUELA DE LA COSTA – ALICANTE\r\n', '', 'EUR €', 160000.00, 'venta', NULL, 1, '2020-01-21 16:35:04'),
(123, 'España, Villa - Torrevieja (Los balcones)', 'espana-villa---torrevieja-(los-balcones)', 'Maravilloso chalet en uno de los mejores complejos residenciales de Torrevieja, a solo 5 minutos del mar y del centro comercial Zenia Boulevard, a 3 minutos en coche del hospital de Torrevieja y a 40 minutos del aeropuerto de Alicante. Su diseño en forma de cubo permite una reforma moderna a un precio bajo. El chalet tiene un jardín soleado de 1000m2 con palmeras, abetos centenarios y otros arbustos ornamentales. Está a solo 2 minutos a pie del supermercado Mercadona, bares y clubes de tenis.\r\nCuenta con 135 m2, 4 habitaciones con armarios empotrados, cocina independiente con muebles y electrodomésticos, lavadero, amplio comedor con chimenea, terraza de 25 m2 con vistas al mar, carpintería interior de madera, garaje para 2 coches, bajo -suelo.', '', 'EUR €', 389000.00, 'venta', NULL, 1, '2020-01-22 14:39:29'),
(40, 'Perú Alquiler Departamento Amoblado 2 Dormitorios - San Bartolo', 'peru-alquiler-departamento-amoblado-2-dormitorios---san-bartolo', 'Alquiler departamento malecón Grau 391El departamento está en una casa, pero es completamente independiente, con puerta a la calle, está en primer piso, se puede estacionar afuera, es un pasaje con una tranquera y la zona es tranquila, además que se cuenta con serenazgo.\r\n    Alquiler del 27 dic 2020 al 05 abr 2021 $4800 + $400 garantía, incluye los servicios agua luz y cable, no hay Internet\r\n        \r\n    Distribución: Una habitación con cama dos plazas, ropero empotrado Una habitación con 3 camas de 1.5 plaza Un Baño completo (cuenta con terma) Kitchenette Lavandería Sala comedor y Star TV Se muestra previa cita.', '', 'US $', 1500.00, 'alquiler', 1, 1, '2015-08-22 23:51:10'),
(72, 'Perú Alquiler Departamento 3 Dorm. con Vista Al Mar Playa Norte San Bartolo', 'peru-alquiler-departamento-3-dorm-con-vista-al-mar-playa-norte-san-bartolo', 'Alquiler Enero con Año nuevo $2,200, Alquiler por mes $1800\r\n                Luz según consumo, mantenimiento S/200 incluye el agua \r\n                Se paga S/100 de limpieza al retirarse \r\n                Tiene : 3 Dormitorios 2 baños, Sala y comedor con mamparas que dan a un balcón con vista al mar, cocina equipada y pequeña lavandería, tiene ascensor con acceso directo a la playa, cuenta con 2 estacionamientos, tiene cable e Internet.', '', 'US $', 1800.00, 'alquilado', 0, 1, '2018-10-01 21:13:33'),
(43, 'Perú Departamento Amoblado con vista al Mar San Bartolo', 'peru-departamento-amoblado-con-vista-al-mar-san-bartolo', 'Alquiler por mes  $1800, por 2 semanas $1100, por 1 semana 600 + Una garantía (No incluye los servicios) Tiene vista al mar desde la sala y el dormitorio principal, cómodas pueden dormir 7 personas: • 3 Dormitorios con roperos (2 camas de 2 plazas, y 2 camarotes de 1.5 plaza, 1 cama plegable de 1 plaza ) • 2 Baños completos • Sala comedor con balcón • Cocina con reposteros altos y bajos, línea blanca completa • Lavandería y tendedero • 01 Estacionamiento en sótano • Sistema de seguridad en el ingreso con  intercomunicador y cámaras de vigilancia. • Cable para TV en Sala, dormitorio principal y 2do dormitorio • Área común con Piscina , vista al mar.  Demostración Previa cita', '', 'US $', 1800.00, 'alquiler', 0, 2, '2015-09-11 00:06:38'),
(44, 'Perú Alquiler departamentos Amoblados 3 y 2 dorm. Punta Negra', 'peru-alquiler-departamentos-amoblados-3-y-2-dorm-punta-negra', 'En este condominio hay 4 departamentos en alquiler, es en el Malecón de punta negra, frente a la Playa, cerca de Punta Rocas. \r\n        Departamentos Amoblados y equipado, cuenta con vajilla, con vista al mar, Estacionamiento, agua caliente, área BBQ y Piscina, Wi-Fi, \r\n        Departamentos 2 dormitorios, 1 baño Alquiler por mes Precio USD $ 1200 + USD $300 garantía. (1 cama 2 plazas, 1 camarote 1.5 plaza) \r\n        Alquiler por Temporada del 28 Dic al 21 Abr $4000 + $500 garantía \r\n    Departamentos 3 dormitorios, 2 baño Alquiler por mes Precio USD $ 1500 + USD $300 garantía. (3 camas 2 plazas) \r\n        Alquiler por Temporada del 28 Dic al 21 Abr $4400 + $500 garantía \r\n        Alquiler incluye el pago del agua y luz, eso es según consumo. \r\n        Demostración Previa Cita', '', 'US $', 1500.00, 'alquiler', 0, 1, '2015-09-11 00:11:22'),
(76, 'Perú Alquier Departamento 3 Dormitorio, Vista Al Mar, Santa María del Mar', 'peru-alquier-departamento-3-dormitorio-vista-al-mar-santa-maria-del-mar', 'Alquiler Departamento 3 dormitorios, 2 baños, sala con mamparas que dan al balcón con vista al mar, comedor, cocina, Patio con Parrilla, Lavandería, Cuarto y baño de servicio, 2 estacionamiento, ubicado en Mercedes Leccari 110 Dpto 102, Frente al Club Esmeralda, muy cerca de la playa. \r\n    Alquiler del 30 Dic al 30 Abril marzo 2019 $9,500 + $1,000 \r\n    Alquiler por mes $3,000 + $1,000 \r\n    Pago de agua y luz según consumo', '', 'US $', 3000.00, 'alquiler', NULL, 2, '2018-10-23 01:05:29'),
(125, 'España Venta Bungalow con Solárium en Torrevieja, Urb. Jardín del mar V', 'espana-venta-bungalow-con-solarium-en-torrevieja-urb-jardin-del-mar-v', 'Apartamento Planta Alta tipo Bungalow Duplex con Solárium y Terraza, situado en zona residencial tranquila, junto a todo tipo de servicios. AÑO De Construcción 1999. Características: 2 dormitorios, 1 baño, sala-comedor, cocina Plantas 2, Balcones 2, Superficie de Terrazas 75 m2 Piscina comunitaria y jardines Ubicación Torrevieja (sector Urb. Jardín del Mar V) Distancia Al Hospital 5 km Distancia Aeropuerto 45 Km.\r\ncomunidad: 25€ al mes\r\nibi: 150€ año', '', 'EUR €', 75000.00, 'venta', NULL, 1, '2020-01-22 17:39:36'),
(153, 'España, Venta Bungalow 3 dormitorios Torrevieja - Zona Las Torretas I', 'espana-venta-bungalow-3-dormitorios-torrevieja---zona-las-torretas-i', 'Bonito Bungalow 3 dormitorios en planta baja, totalmente reformado, amueblado y equipado, cocina independiente, 2 baños, uno con plato de ducha, porche de 4 m², parcela 25 m², urbanización cerrada con amplias zonas comunes, orientación oeste, muy cerca de centros Comerciales Habaneras y Carrefour, a 10 minutos a la las playas de La Mata o Torrevieja. Garaje cerrado opcional.\r\n        •	Metros del Inmueble: 75 m²\r\n        •	Gastos Comunidad: 36 €\r\n        •	IBI: 150 € al año\r\n\r\n        ', '', 'EUR €', 97500.00, 'venta', 0, 1, '2020-08-04 14:22:02'),
(58, 'Perú Alquiler Casa 3 dormitorios Miguel Grau San Bartolo -  Lima Perú', 'peru-alquiler-casa-3-dormitorios-miguel-grau-san-bartolo---lima-peru', 'Alquiler de casa en San Bartolo Casa de 1 Piso, 3 dormitorios 2 baños, cocina comedor, cala, patio y Estacionamiento para 1 o 2 carros Cuenta con agua directo de sedapal y adicional tiene Cisterna con bomba de presión. Esta semi amoblada Precio del Alquiler por mes S/1,500 soles, contrato de un año\r\n        Forma de pago: Dos meses de garantía por un mes de adelanto', '', 'PEN S/', 1500.00, 'alquiler', 0, 1, '2017-05-05 23:37:49'),
(70, 'Alquiler Casa con Piscina 6 Dorm. San Bartolo', 'alquiler-casa-con-piscina-6-dorm-san-bartolo', 'Amplia Casa con Piscina, 6 Dormitorios 3 Baños, cuarto de servicio, sala, comedor, living, cocina, jardín, terraza y Piscina, estacionamiento para 4 autos, Pago de agua y luz según consumo, mantenimiento de piscina por parte del inquilino, limpieza al retirarse S/200, cable e Internet de cortesía. \r\n    Alquiler del 28 Dic al 04 Abr 2021 USD $10,000 + Garantía $1,500\r\n    Ubicada en Av. El Bosque - San Bartolo \r\n    Visitas previa cita con Martina Herrera al +51932228858 o +51951724622, por WhatsApp +34643090533', '', 'US $', 3500.00, 'alquilado', 0, 1, '2018-10-01 20:57:05'),
(116, 'Perú Alquiler Casa 3 Dorm. 1er Fila Playa Santa María', 'peru-alquiler-casa-3-dorm-1er-fila-playa-santa-maria', 'Casa, En planta baja: cocina equipada mas alacena, sala comedor y terraza en 1era fila frente al mar, dormitorio de servicio mas baño, lavandería. \r\n    En 2do piso: 3 dormitorios, 2 baños, (dormitorio principal con terraza y baño incluido)\r\nEstacionamiento para 3 autos', '', 'US $', 4200.00, 'alquiler', NULL, 2, '2019-12-30 17:06:37'),
(61, 'Perú Alquiler Mini-departamento Amoblado San Bartolo', 'peru-alquiler-mini-departamento-amoblado-san-bartolo', 'El departamento esta en una casa, pero es completamente independiente, esta en primer piso y con puerta lateral a la calle, se puede estacionar a fuera, es un pasaje y la zona es tranquila, además que se cuenta con serenazgo.\r\n    Distribución:\r\n    1 habitación con cama de dos plazas y TV\r\n    1 Baño completo con agua caliente\r\n    Kitchenette  con cocina a gas refrigerador,  Sala-comedor   Alquiler del 28 Dic 2020 al 04 Abril 2021USD $1,500 + $200 garantía, incluye los servicios de agua, luz y cable, no hay internet.', '', 'US $', 500.00, 'alquilado', 0, 1, '2017-05-08 21:11:32'),
(132, 'España, Ático Dúplex con gran terraza y solarium en Guardamar', 'espana-atico-duplex-con-gran-terraza-y-solarium-en-guardamar', 'Bonito y soleado ático dúplex de 3 dormitorios, 2 baños, con terraza y solárium con vistas laterales al mar. Vivienda en perfecto estado para entrar a vivir donde podrá disfrutar del sol todo el día por su orientación sur en una gran terraza totalmente amueblada con muebles de exterior de calidad y solárium privado con acceso directo desde la vivienda ( 55 m2 ) con barbacoa desde el que se ve el mar y la pinada de Guardamar. También dispone de 2 plazas de garaje incluídas en el precio y un gran trastero en planta sótano del edificio. Una vivienda única en un enclave ideal y a dos minutos andando de todos los servicios.', '', 'EUR €', 185000.00, 'venta', NULL, 1, '2020-02-13 11:11:36'),
(63, 'Alquiler Mini Departamento Playa Sur San Bartolo', 'alquiler-mini-departamento-playa-sur-san-bartolo', 'Mini departamento 1 dormitorios, 1 camarote 2 plaza abajo y 1.5 plaza arriba Sala comedor, kitchenette con barra de granito, lavandería y patio interno Se alquila por mes S/1000 un mes de adelanto y 1 mes de garantía Precio incluye los servicios el cable e Internet', '', 'US $', 310.00, 'alquiler', 1, 2, '2017-05-08 21:26:31'),
(131, 'España, Adosado de 2 dormitorios en La Zenia', 'espana-adosado-de-2-dormitorios-en-la-zenia', 'Bonito adosado reformado, distribuido en 2 plantas con 2 dormitorios y 2 baños, en La Zenia, con parcela de 90 m2, cocina independiente y totalmente amueblado con muebles de diseño ¡a estrenar! Muy soleado ya que su orientación es sur y solo a 800 metros de la playa de La Zenia y a 500 metros del centro comercial La Zenia Boulevard. Rodeado de centros comerciales, bares, restaurantes y todo tipo de comercio. Dispone también de piscina comunitaria y parking en superficie privado.', '', 'EUR €', 140000.00, 'venta', NULL, 1, '2020-02-03 17:35:14'),
(75, 'Perú Alquiler Casa de 3 Niveles Estacionamiento 1 Er Fila Santa María del Mar Temporada', 'peru-alquiler-casa-de-3-niveles-estacionamiento-1-er-fila-santa-maria-del-mar-temporada', 'Amplia casa de 3 niveles con 5 habitaciones, 5 baños, sala comedor, terraza, cocina, sala de estar, alacena con comedor, cuarto de servicio, estacionamiento para 2 autos, en primera fila playa Santa María\r\n                        Cuenta con cable,\r\n                        Alquiler temporada completa del 27 Diciembre 2020 al 05 Abril 2021 $14,000 + $1,500 garantía\r\n                        Pago de agua y luz según consumo', '', 'US $', 4500.00, 'alquiler', 0, 2, '2018-10-23 00:59:43'),
(73, 'Alquiler Departamento 3 dormitorios Av. Miramar 190 Santa Maria del Mar', 'alquiler-departamento-3-dormitorios-av-miramar-190-santa-maria-del-mar', 'Lindo departamento 3 dormitorios 2 Baños, cocina, lavandería, comedor, sala con balcón terraza, cuenta con un estacionamiento, tiene cable e Internet, edificio con ascensor y vigilancia. muy cerca de la playa\r\n\r\nAlquiler por mes $3000 + $1000 garantía\r\n', '', 'US $', 3000.00, 'alquiler', 1, 2, '2018-10-21 21:52:23'),
(74, 'Perú Alquiler Casa de Playa con 4 Dormitorios', 'peru-alquiler-casa-de-playa-con-4-dormitorios', 'Alquiler de Casa en 1er Piso, Amoblada con 4 dormitorios, 2 baños, sala comedor, cocina, lavandería y Patio interno donde se puede hacer parrilla \r\n                        iluminada, ventilada, tiene cable e Internet, ubicada en la Playa Sur de San Bartolo\r\n                    Se alquila del 20 Noviembre al 21 Abril $6,300', '', 'US $', 2000.00, 'alquiler', 1, 1, '2018-10-21 23:05:22'),
(128, 'España, Apartamento Villamartín, Sector Las Ramblas Golf', 'espana-apartamento-villamartin-sector-las-ramblas-golf', 'APARTAMENTO EN LAS RAMBLAS GOLF.\r\n        3 DORMITORIOS\r\n        2 BAÑOS\r\n        TERRAZA DE 20 METROS\r\n        GARAJE\r\n        TRASTERO\r\n        PISCINA COMUNITARIA\r\n        SE VENDE COMPLETAMENTE AMUEBLADO\r\n    AREA CONSTRUIDA 100 M2\r\n    PAGO DE COMUNIDAD 800 EUR € AL AÑO\r\n        ', '', 'EUR €', 134900.00, 'venta', NULL, 1, '2020-01-27 11:42:55'),
(129, 'ESPAGNE, BUNGALOW EN ORIHUELA COSTA, SECTEUR LA ZENIA', 'espagne-bungalow-en-orihuela-costa-secteur-la-zenia', 'Bungalow Planta Baja con terraza soleada ORIENTACIÓN SUR, Ubicación permite ir andando a todo tipo de Servicios, como Parada de Bus, Centro Comercial Zenia Boulevard, Mercadona, McDonalds,...a 600 m de la Playa de La Zenia y a 2 km de los Campos de Golf de Orihuela Costa.\r\n    \r\n    Se compone de: 2 DORMITORIOS, 1 BAÑO, JARDIN, PATIO, y PISCINA COMUNITARIA\r\nTiene una superficie construida de 65 m2, más 20 m2 de jardín.\r\nse paga unos 520€ al año de comunidad.', '', 'EUR €', 117995.00, 'venta', NULL, 1, '2020-01-27 17:34:04'),
(115, 'Perú Alquiler Departamento 2 Dormitorio con vista al Mar San Bartolo', 'peru-alquiler-departamento-2-dormitorio-con-vista-al-mar-san-bartolo', 'Departamento con 2 dormitorios (1 con vista al mar), 1 Baño completo, cocina con menaje completo, sala comedor, terraza, 2 televisores. Terma eléctrica, Piscina en el área común, ascensor y Cámaras de Seguridad 24 hr. Estacionamiento para 1 auto. Pago de luz y agua según consumo', '', 'US $', 1300.00, 'alquiler', NULL, 1, '2019-12-30 16:35:59'),
(83, 'Perú Alquiler Dpto 2 Dorm. Frente Al Mar Punta Negra', 'peru-alquiler-dpto-2-dorm-frente-al-mar-punta-negra', 'Distribución: sala comedor y kitchenette, mesa de comedor para 6 personas cómodamente. \r\n    Tiene un balcón terracita frente al mar, la cocina está totalmente equipada. Hay 2 dormitorios, ambos con closet. El principal tiene cama de 2 pzs y de abajo se jala un colchón más por si acaso. Tiene baño incorporado, completo, con ducha. \r\n    El otro dormitorio tiene un camarote de 1 1/2 pz y de abajo se jala una cama más de 1 pz. \r\n    En la sala tiene un sofá cama (el azul) \r\n    El segundo baño también es completo. Tiene una zona de lavandería con tendal de pie (para toallas x ej) y tiene cochera para un auto. \r\n    El TV es nuevo de 42 pulgadas con decodificador \r\n    Es bastante ventilado y como está en el 3er piso tiene buena iluminación \r\n    El edificio por el frente tiene una pequeña piscinita (puedes verla en las fotos). \r\n    Esta en una zona donde no se repleta la playa, es tranquila y las personas en el edificio también lo son. \r\n    Alquiler Año nuevo del 27 al 02 ene $800 \r\n    Garantía $300 \r\n    Pago de Agua y Luz según consumo', '', 'US $', 1800.00, 'alquiler', 0, 2, '2018-12-11 15:16:48'),
(114, 'España Venta Bungalow Urb. El Chaparral - Torrevieja', 'espana-venta-bungalow-urb-el-chaparral---torrevieja', 'Es una propiedad que podría interesarles mucho por su ubicación y las ventajas como alquilar esta propiedad, muy cerca de la piscina, es un bungalow en la planta baja y el único en el que puede ingresar a un vehículo, Tiene su puerta de garaje de acceso.\r\nDistribución: 2 dormitorios, 1 baño, salón, cocina, lavadero y terraza de 15 m2.\r\nsuperficie habitable 54 m2 superficie total 69 m2\r\nPero este tipo de propiedad se alquila fácilmente gracias a la proximidad de su piscina, \r\nSituado: a 10 minutos de las playas, a 5 minutos de las tiendas y restaurantes a 2 minutos.\r\n', '', 'EUR €', 68000.00, 'venta', 1, 1, '2019-12-26 11:21:47'),
(85, 'Perú Alquiler Departamento 2 Dorm. Vista Al Mar Playa Sur San Bartolo', 'peru-alquiler-departamento-2-dorm-vista-al-mar-playa-sur-san-bartolo', 'Lindo departamento en 1er piso. 2 dormitorios, 2 baños, lavandería, kitchenette, Sala Comedor, Balcón Terraza con vista al mar, 1 estacionamiento, Tiene doble ingreso por la Av. San Martín y por el malecón Grau. \r\n        Garantía $300 si es por mes por temporada $500,Pago mantenimiento S/200 por mes, Pago de agua y luz según consumo, cable e Internet de cortesía.', '', 'US $', 1800.00, 'alquilado', 0, 1, '2018-12-11 15:23:39'),
(86, 'Perú Alquiler Casa 3 Dorm. Calle Las Gaviotas San Bartolo', 'peru-alquiler-casa-3-dorm-calle-las-gaviotas-san-bartolo', '3 dormitorios (para 6 personas), 1 baño, salita comedor, patio, cable e internet. Estacionamiento para 1 auto \r\n    Precio x temporada completa USD $3,000 (del 28 de dic al 21 de abril) + $300 de garantía \r\n    Por mes USD $800 + $200 de garantía \r\n    Semana de año nuevo USD $500 \r\n    Pago de agua y luz según consumo', '', 'US $', 800.00, 'alquiler', 0, 2, '2018-12-11 15:28:21'),
(87, 'Perú Departamento 4 Dorm. frente al mar Playa Norte San Bartolo', 'peru-departamento-4-dorm-frente-al-mar-playa-norte-san-bartolo', '4 cuartos (camas para 7 personas), 3 baños y medio. Amplia terraza, Dos entradas al depa por la playa y por el malecón, esta en el 5to piso \r\n    Tele con cable y Internet , Agua incluida \r\n    Temporada completa hasta semana santa USD $7,800 \r\n    Enero con año nuevo USD $ 3,000 \r\n    Febrero USD $2,500 \r\n    Marzo hasta semana santa USD $2,500 \r\n    Garantía $500 por mes', '', 'US $', 2500.00, 'alquiler', 0, 1, '2018-12-11 15:32:24'),
(119, 'Perú Alquiler Duplex 2 Dormitorios, Terraza con Vista Al Mar Playa Santa María', 'peru-alquiler-duplex-2-dormitorios-terraza-con-vista-al-mar-playa-santa-maria', 'Alquiler Departamento Duplex en 5to piso con magnifica vista al mar con 146.92 m2 de área total.\r\n                        Primer nivel: 2 dormitorios , 2 baños, cocina, sala y comedor con balcón, tiene mamparas que dan una excelente vista. Segundo nivel: cuarto y baño de servicio, que puede servir como otro dormitorio con baño, lavandería y Terraza 53.80 m2 con vista al mar ( equipada con parrilla, poltronas, mesa con sombrilla y sillas), Amoblado y equipado, cable en TV e Internet, cuenta con agua caliente. 1 Estacionamiento, Edificio con recepción y vigilancia.\r\n                        Alquiler por mes $2,800 + $1,000 garantía.\r\n            Alquiler del 27 Dic 2020 al 05 Abril 2021 $8,500 + $1500 garantía\r\n                        Pago de agua y Luz según consumo, mantenimiento S/368 por mes.\r\n                        Cable e Internet de cortesía \"', 'https://youtu.be/0uPRuIU4jss', 'US $', 2800.00, 'alquiler', 1, 1, '2020-01-12 17:07:47'),
(92, 'España Venta Dptos. Calpe Beach II', 'espana-venta-dptos-calpe-beach-ii', 'Amplias terrazas, con vistas al mar, a la playa o incluso al Peñón de Ifach, hasta 88 m2. Podrá disfrutar de los alrededores y los 300 días de sol al año, o más, que la Costa Blanca tiene para ofrecer. Descubrirá una hermosa urbanización con jardines, una piscina común para niños y adultos y una zona de juegos infantiles con juegos al aire libre. La azotea es un lugar común único: una zona de descanso, con jacuzzi común y pérgolas con plantas trepadoras para disfrutar de las impresionantes vistas al mar y al Peñón de Ifach.\r\n            Los apartamentos tienen una superficie promedio de 65 m2 distribuidos en 2 dormitorios y 2 baños completos, con cabezal de ducha tipo lluvia y platos de ducha de piedra natural.\r\n        Precio de venta desde 231.500,00 Euros hasta 415.000,00 Euros', '', 'EUR €', 231500.00, 'venta', 1, 1, '2019-11-13 16:40:40'),
(93, 'España Venta Dptos. Denia Beach', 'espana-venta-dptos-denia-beach', 'Obra nueva en primera línea playa\r\n    Un exclusivo complejo residencial con apartamentos únicas de hasta 3 dormitoriosy grandes terrazas con vistas increíbles en la Playa de la Marina de Denia.\r\n    Este residencial busca ser un remanso de paz tanto dentro como en su ubicación, a pocos pasos de la playa y a la sombra del Montgó. Por ello, las zonas comunes, se han diseñado para proporcionar agradables paseos rodeados de zonas verdes. Además se encuentra completamente vallado para mayor privacidad y tranquilidad.\r\n    Precios de venta desde 190.850,00 Euros hasta 482.900,00 Euros', '', 'EUR €', 190850.00, 'venta', 1, 1, '2019-11-13 17:38:24'),
(94, 'España Venta Villa en San Luis - Torrevieja ', 'espana-venta-villa-en-san-luis---torrevieja', 'Una oportunidad para comprar esta fantástica villa independiente de 6 dormitorios y 3 baños con piscina privada en la zona de San Luis.\r\n    Una parcela fantástica que ofrece mucho espacio, incluida una piscina con jardines establecidos y una gran área para estacionamiento para hasta 4 autos\r\n    Hay un gran salón acristalado que conduce a un amplio y luminoso salón con chimenea, que conduce a la gran cocina con unidades equipadas.\r\n    A la derecha de la cocina hay acceso a un dormitorio principal muy grande con baño privado con puertas de vidrio que dan al patio con vista a la piscina privada.\r\n    Hay otras 4 habitaciones dobles y 2 baños, la habitación individual se está utilizando como oficina.\r\n    Al lado de la villa hay una escalera que lo lleva al solárium bañado por el sol con impresionantes vistas sobre lagos y alrededores. Esta propiedad única tiene muchos extras, como aire acondicionado.\r\n    ', '', 'EUR €', 310000.00, 'venta', 1, 1, '2019-11-14 14:50:08'),
(95, 'España Alquiler Dpto. 2 dorm. Playa Famenca, Orihuela', 'espana-alquiler-dpto-2-dorm-playa-famenca-orihuela', 'El apartamento dispone de terraza, que tiene vista a la piscina o al jardín, cocina, TV de pantalla plana vía satélite, reproductor de DVD, armario, lavadora y baño privado con bidet y secador de pelo. tiene zona de estar y de comedor.  Torrevieja se encuentra a 7 km del alojamiento, mientras que San Pedro del Pinatar está a 15 km. El aeropuerto internacional de la Región de Murcia, situado a 48 km \r\n        Alquiler por 3 días 220 Euros Alquiler 7 días 420 Euros', '', 'US $', 1500.00, 'alquiler', 1, 2, '2019-11-14 15:18:40'),
(97, 'España Venta Apartamentos en Alicante sector Benidorm Beach', 'espana-venta-apartamentos-en-alicante-sector-benidorm-beach', 'Obra Nueva en Benidorm en la mejor zona de la Playa de Poniente, entrega aproximada noviembre 2021\r\nAl aire libre todo el año en la nueva urbanización de Benidorm/ La costa de Alicante es bien conocida por sus temperaturas suaves y sus más de 300 días de sol al año. Nuestro residencial de obra nueva en Benidorm está diseñado para disfrutar cada uno de esos días, con sus amplisimas terrazas orientadas al mar y sus cuidadas zonas comunes. \r\nDesayuna cada día respirando la brisa del Mediterráneo y la animada atmósfera de Benidorm. \r\nPrecio de venta desde 282.000,00 Euros, 90m2, 2 dormitorios y 2 baños', '', 'EUR €', 282000.00, 'venta', 1, 1, '2019-11-20 10:26:54'),
(98, 'España Venta Apartamentos en Villajoyosa, Residencial Bolnou', 'espana-venta-apartamentos-en-villajoyosa-residencial-bolnou', 'Amplios apartamentos de 2 y 3 dormitorios, con amplias terrazas desde 59 m² con vistas al mar al mar mediterráneo.\r\n        Un complejo acogedor y de diseño vanguardista, situado a pocos minutos de la playa del Bolnou y playa Paraíso en Villajoyosa.\r\n        Con acceso controlado, salón social, piscina cubierta, Spa con salas de masaje, sauna, jacuzzi, etc.., Sala gimnasio acristalada con vistas al mar, Chill-out Exterior junto a la zona de piscinas.\r\n            Tu apartamento junto al mar en Villajoyosa desde 395.000,00 € con garaje y trastero, Entrega aproximada verano 2021', '', 'EUR €', 395000.00, 'venta', 0, 1, '2019-11-20 10:48:54'),
(99, 'Perú Alquiler Casa amoblada con vista al Playa Sur San Bartolo', 'peru-alquiler-casa-amoblada-con-vista-al-playa-sur-san-bartolo', 'Alquiler Casa Tres niveles con vista al mar\r\n                    Capacidad para 16 personas\r\n                    05 Dormitorios, 05 Baños, Cocina equipada, sala-comedor, Terraza y una Piscina con vista al mar, lavandería. \r\n                    Estacionamiento para 1 auto, dentro y 2 fuera zona tranquila.\r\nALQUILER INVIERNO\r\nAlquiler por mes USD $1200 + $350 de garantía Condiciones de Pago: Pago adelantado, en cuenta bancaria Pago de agua y luz según consumo Al retirarse se paga S/150 por la limpieza y mantenimiento.\r\n\r\nTEMPORADA VERANO 2021 DEL 15 DIC AL 15 ABRIL\r\nAlquiler por mes USD $3200 + $350 de garantía Condiciones de Pago: Pago adelantado, en cuenta bancaria Pago de agua y luz según consumo Al retirarse se paga S/150 por la limpieza y mantenimiento.\r\nMayores informes comunicarse por WhatsApp con Nelly Loyola +51990050235\r\n                    ', '', 'US $', 3200.00, 'alquiler', 0, 1, '2019-11-22 14:07:40'),
(130, 'España Venta Bungalow en Torrevieja, Urb. La siesta', 'espana-venta-bungalow-en-torrevieja-urb-la-siesta', 'Bonito bungalow, superficie ocupada 81 m2, gastos generales construidos 44.85 m2 con 2 dormitorios, 1 baño, salón-cocina, lavadero, terraza acristalada y terraza exterior 11.94 m2.\r\n  El precio de venta incluye los muebles y equipos instalados, cuenta con equipos de aire acondicionado.\r\nResidencial tranquilo, con plaza de aparcamiento,\r\nCerca: la entrada al parque natural de Mata, restaurantes, centro médico y parada de autobús.\r\nUbicada: Torrevieja (sector Urb. La Siesta) - Alicante', '', 'EUR €', 69500.00, 'venta', 1, 1, '2020-01-31 10:18:57'),
(101, 'Perú Venta Casa de Playa con 2 departamentos San Bartolo - Lima', 'peru-venta-casa-de-playa-con-2-departamentos-san-bartolo---lima', 'BAJO DE PRECIO ANTES 680.000,00 CASA CON INMEJORABLE UBICACION Y ESPECTACULAR VISTA AL MAR Y LA BAHIA. Superficie Total 300 m2 Superficie construida 360 m2\r\n            Tiene 3 frentes; a Malecón Grau, pasaje los Cocos y Av. San Martín. Ubicada en Playa Sur Alta.\r\n            La casa está elevada para mejor vista y más privacidad. En el primer nivel cuenta con un cuarto de huéspedes, 1 baño, garaje para dos autos y jardín. En el segundo nivel: tiene una amplia terraza con una linda piscina de 7 X 3 mts. Vista al mar y 1 baño, ademas sala, comedor, cocina de concepto abierto y baño de visitas.\r\n            el tercer piso consta de un pequeño estar para la TV y dos dormitorios con closets grandes y baño cada uno.\r\n            Además tiene 2 departamentos que están a nivel de la calle y son totalmente independientes.\r\n            Departamento 1: con 2 dormitorios, baño, sala, comedor, kitchenet, pequeño lavadero y patio (lugar para colgar ropa) puerta al malecón.\r\n            Departamento 2 : 1 dormitorio, 1 baño y un ambiente sala-comedor- kichenet, puerta a la calle lateral.\r\n    Ver nuestra Galería 2 hay fotos de los dos departamentos ', '', 'US $', 550000.00, 'venta', 0, 1, '2019-11-23 18:18:27'),
(103, 'España Venta Casa 2 dormitorios 2 baños Urb. La Siesta - Torrevieja', 'espana-venta-casa-2-dormitorios-2-banos-urb-la-siesta---torrevieja', 'Distribución: salón-comedor, cocina,distribuidor, 2 dormitorios, dos baños, terraza y terraza solárium con muy buena vista.\r\n        Casa en esquina, en la terraza tiene parrilla, en la sala cuenta con aire acondicionado, los muebles de cocina son empotrados, equipada con refrigeradora, cocina eléctrica, horno eléctrico, lavadora, y calentador eléctrico, cerca de banco, farmacia, centro medico, grifo, supermercado y restaurantes.\r\n        Parcela 135 m2, Superficie construida total 71 m2', '', 'EUR €', 120000.00, 'venta', 1, 2, '2019-11-29 10:40:49'),
(104, 'España Bungalow sin vecinos arriba en la Siesta Torevieja', 'espana-bungalow-sin-vecinos-arriba-en-la-siesta-torevieja', 'Bungalow 2 Dormitorios, 1 Baño, sala-comedor, cocina Semireformado En La Siesta.\r\n            Patio, Terraza-Jardín, Orientación Sur-Oeste. terreno 82 m2 superficie útil 45 m2\r\n            No Tiene Comunidad\r\n            Ibi: 99,18€ Año\r\n            Ubicado En Zona Tranquila, Con Fácil Acceso A Restaurantes Y Supermercado\r\n            Precio Antes 66.900,00 Euros  Ahora 65.000,00 Euros', '', 'EUR €', 65000.00, 'venta', 0, 1, '2019-12-02 10:54:46'),
(105, 'España VENTA DE CASA 3 DORMITORIOS URB. EL LIMONAR - TORREV', 'espana-venta-de-casa-3-dormitorios-urb-el-limonar---torrev', 'En venta muy bonita casa que consta de 2 niveles\r\nEn la planta baja 1 salón, comedor, cocina, 2 dormitorios, 1 baño, superficie habitable 78.02 m2, terraza, jardín delantero y terraza trasera. Exterior 262 M2 área\r\nEn el primer piso\r\n1 sala de estar, 1 cocina, 1 dormitorio 1 baño, balcón. Superficie habitable 54.50 m2\r\ntiene aire acondicionado, el mobiliario de cocina es de diseño Schmidt, equipado con nevera, cocina de inducción, horno eléctrico, lavavajillas, lavadora y radiador eléctrico. Se vende con los muebles.\r\nEl cableado eléctrico y la unidad de control han sido renovados.\r\nEs una casa de doble fachada,\r\nPosible instalación de una piscina.\r\nÁrea del terreno 340 m2\r\nCerca: banco, farmacia, centro médico, gasolinera, supermercado y restaurantes.', '', 'EUR €', 190000.00, 'venta', 0, 2, '2019-12-04 11:21:12'),
(133, 'España, Venta de Piso para oficina en Guardamar', 'espana-venta-de-piso-para-oficina-en-guardamar', 'Oficina en Guardamar del Segura zona CENTRO, 95 m. de superficie, 4 m2 de terraza, un baño, propiedad de origen, orientación este, suelo de mármol.\r\nExtras: adaptado minus., agua, aire acondicionado , alarma , ascensor, centrico, línea telefónica, luminoso, vistas al mar\r\nOrientación  Este,  Superficie Útil  90 m2,  Superficie Construida  95 m2,  Planta   4,  Gastos Comunidad  30 €/mensual,  Conservación  De origen,  Baños  1,  Antigüedad  2000,  Agua Caliente  Termo Eléctrico,  Tipo Suelo   Mármol,  Nº de plantas  1. ', '', 'EUR €', 99900.00, 'venta', NULL, 1, '2020-02-20 16:48:51'),
(107, 'España ÁTICO CON EXCELENTE VISTA EN ALDEA DE MAR', 'espana-atico-con-excelente-vista-en-aldea-de-mar', '3 Dormitorios, 2 Baños, Sala-comedor, Cocina equipada, Amueblado, Electrodomésticos, calefacción eléctrica, Piscina comunitaria, Garaje cerrado, frente al parque\r\n        Terraza Con Vistas, superficie útil 94 m2\r\n        Cerca de la Playa Los Locos\r\n        Orientación Sur\r\n    COMUNIDAD: 580€ AÑO\r\n    IBI: 320€ AÑO', '', 'EUR €', 210000.00, 'venta', NULL, 1, '2019-12-04 18:10:07'),
(141, 'España, Bungalow Duplex en el Salado - Torrevieja', 'espana-bungalow-duplex-en-el-salado---torrevieja', 'Bungalow Duplex de 2 dormitorios con piscina\r\n    Bungalow Duplex de 2 dormitorios, consta en planta baja de gran salon y cocina independiente con despensa, pequeño lavadero y aseo con ventana, la segunda planta consta de 2 dormitorios, baño completo con ventana, solarium privado de 18 m², vistas a las salinas, piscina comunitaria, muy cerca de centros comerciales, orientación suroeste, a 10 minutos en coche a las playas de Torrevieja.\r\n•	Metros del Inmueble: 72 m²\r\n•	Gastos Comunidad: 25 €\r\n•	Suma/IBI: 190 €\r\n', '', 'EUR €', 84900.00, 'venta', NULL, 1, '2020-02-27 17:56:10'),
(109, 'España OPORTUNIDAD VENTA VILLA MONTEGOLF, VILLAMARTIN', 'espana-oportunidad-venta-villa-montegolf-villamartin', 'Villa independiente en una parcela de 156 m2 con acceso a piscina comunitaria ubicada en una zona tranquila dominada por Filipinas\r\n        La casa tiene un total de 145 m2 de construcción divididos en 2 plantas y tiene 3 dormitorios, 2 baños, cocina, terraza delantera, solárium privado, garaje cerrado y jardín privado en esquina.\r\n            Se vende amueblado y equipado\r\n            Ubicación: Villamartín (zona El Presidente, Villa Montegolf)\r\n            A solo 4 km de las playas de Orihuela Costa y cerca de todos los servicios locales.', '', 'EUR €', 159000.00, 'venta', NULL, 2, '2019-12-04 18:22:29'),
(126, 'España, espaciosa villa junto al mar, Ciudad Guardamar del Segura, Zona Residencial Benamor', 'espana-espaciosa-villa-junto-al-mar-ciudad-guardamar-del-segura-zona-residencial-benamor', 'Área de 210 m2, en tres plantas, con gran salón amueblado en estilo rústico con chimenea, muebles de madera maciza y techo con vigas de madera, cocina americana equipada, amplios dormitorios con armarios de madera maciza.\r\nGran balcón que le permite disfrutar de una vista impresionante del mar, terraza de 12 m2 con vistas al mar, sótano, garaje cerrado. La casa está muy bien conservada, muy luminosa, orientación este, a solo 20 metros de la playa.\r\nLos adicionales: aire acondicionado, electricidad, agua, TV, línea telefónica.\r\nUbicado: Guardamar del Segura - Alicante', '', 'EUR €', 399000.00, 'venta', NULL, 1, '2020-01-23 11:35:09'),
(111, 'Perú Alquiler Departamento 3 Dorm. Amoblado con Vista Al Mar San Bartolo', 'peru-alquiler-departamento-3-dorm-amoblado-con-vista-al-mar-san-bartolo', 'Ubicación Malecón José de San Martín Playa Sur San Bartolo\r\nExcelente vista al mar desde sala y dormitorio principal Amoblado y equipado. Balcón-terraza. 3 dormitorios con closets, 3 baños completos, dos de ellos incorporados. Capacidad para 8 personas cómodas: 2 camas de 2 plazas y 2 camarotes de 1.5 plazas. Kichenette con reposteros altos y bajos. línea blanca completa, menaje y vajilla. Barra. TV en sala y dos dormitorios con cable, Hay Internet.\r\nTendedero. Un estacionamiento. Ascensor. Sistema de seguridad con intercomunicador y cámaras. Vigilancia 24 horas. Cisterna con equipo de bombeo.\r\nÁrea común con piscina.', '', 'US $', 2400.00, 'alquiler', 0, 2, '2019-12-05 17:07:45'),
(112, 'Perú Alquiler Departamento 3 Dorm. Primera Linea Playa Sur San Bartolo', 'peru-alquiler-departamento-3-dorm-primera-linea-playa-sur-san-bartolo', 'Tiene 3 dormitorios, 2 baños completos, sala, cocina con barra des ayunador con vista al mar, terraza, esta en primera fila frente al mar, se encuentra en 3er piso\r\n    amueblado, con terraza, área total 120 m2', '', 'US $', 2000.00, 'alquilado', 0, 1, '2019-12-05 17:39:42');
INSERT INTO `producto` (`pro_id`, `pro_nombre`, `pro_key`, `pro_descripcion`, `pro_video`, `pro_tipo_moneda`, `pro_precio`, `pro_tipo`, `pro_destacar`, `pro_estado`, `pro_fecha`) VALUES
(113, 'Perú Alquiler departamento 4 dormitorios con vista al Mar San Bartolo', 'peru-alquiler-departamento-4-dormitorios-con-vista-al-mar-san-bartolo', 'Tiene vista al mar desde la sala y el dormitorio principal, cómodas pueden dormir 9 personas: • 4 Dormitorios con roperos (2 cama de 2 plazas, 1 camarotes 1.5 Plaza y 1 cama de 1.5 plaza), 3 Baños completos • Sala comedor con terraza • Cocina con reposteros altos y bajos, línea blanca completa y menaje , Lavandería y tendedero, 01 Estacionamiento en sótano Sistema de seguridad en el ingreso con intercomunicador y cámaras de vigilancia. Cable para TV en todos los dormitorios, Internet • Área común con Piscina , vista al mar.', 'https://www.youtube.com/watch?v=-kHRCbtUSWM', 'US $', 2800.00, 'alquiler', NULL, 1, '2019-12-10 13:12:41'),
(117, 'España, Alquiler vacacional, Casa en Torrevieja.', 'espana-alquiler-vacacional-casa-en-torrevieja', 'Preciosa casa de vacaciones en Torrevieja (a 45 km del aeropuerto de Alicante) para 8 personas\r\nCompletamente equipado, lavavajillas, lavadora, nevera americana, secador de pelo, plancha de pelo, wifi, antena parabólica francesa\r\nTerraza delantera y trasera de la casa, estacionamiento delantero y trasero de la casa.\r\nCama plegable para BB y cochecito disponible.\r\nRestaurante, farmacia, hipermercado a menos de 100 m.\r\nPlayas y puerto de Torrevieja a 1500m.\r\nParque acuatico a 500m\r\nCentro comercial Habaneras 400 m\r\nDel 15 de septiembre al 15 de junio. (450 euros por semana)\r\nDel 15 de junio al 15 de septiembre (625 euros por semana)\r\nEl precio incluye agua, electricidad, wifi, ropa de baño y ropa de cama, así como la limpieza final.\r\nDepósito de 200 euros para bloquear tus fechas', '', 'EUR €', 2500.00, 'alquiler', 0, 2, '2020-01-04 14:51:53'),
(118, 'España, Venta de 12 Villas de Lujo Residencial Sun Rise Bay Finestrat, en Benidorm', 'espana-venta-de-12-villas-de-lujo-residencial-sun-rise-bay-finestrat-en-benidorm', 'En una de las mejores zonas residenciales de la costa levantina\r\nEl Complejo\r\nRodeadas de zonas verdes y campos de Golf, que abarcarán una superﬁcie total de unas 3 hectáreas, y que se convertirán en una de las mejores zonas residenciales de la costa levantina.\r\nResidir en Finestrat es un lujo para algunos afortunados y su maravilloso clima que acompaña durante todo el año hace que sea una de las localidades alicantinas con mejor calidad de vida. \r\nLa brisa marina en el verano hace que la temperatura no sea excesivamente alta y los inviernos son relativamente suaves\r\nParcela privada, Lujosa piscina de lámina de agua\r\n• Separación entre parcelas formado por muro mediante enfoscado maestreado con mortero monocapa acabado raspado grano ﬁno y valla tipo hércules o similar. \r\n• Frente de la calle aplacado de piedra. \r\n• Puerta de vehículos motorizada. \r\n• Puerta de acceso peatonal con pérgola de cubrición de hormigón armado \r\n• Solados exteriores de gres porcelánico antideslizante. \r\n• Césped artiﬁcial en el resto de parcela.\r\nAmplios espacios exteriores: Terraza - Solárium \r\n• Cubierta invertida transitable en la terraza de tu vivienda. Este tipo de cubierta es una solución ideal para mejorar el aislamiento térmico de tu vivienda y conservar la impermeabilización, acabado con gres antideslizante. \r\nMáxima Confortabilidad: Salón – Cocina\r\nMobiliario de cocina modelo Finger Pull (tiradores ocultos superiores) con núcleo de partículas de ﬁbra en blanco mate seda. Tablero encolado con cola PUR antihumedad, herrajes con auto cierre y frenos integrados.\r\n• Columna de Horno y microondas. • Placa de inducción • Fregadero. • Campana decorativa.\r\n\r\nSituado: Alicante, Benidorm\r\nLocalización inmejorable, A escasos 5 minutos del Mar Mediterráneo y rodeado de pinares, campos de golf, centros de ocio y parques temáticos como Terra Mítica o Terra Natura. \r\nPrecio de venta desde 399.000,00 € hasta 485.000,00 €\r\nEntrega aproximada: 8 a 9 meses después de la firma del contrato de compraventa', '', 'EUR €', 399000.00, 'venta', NULL, 1, '2020-01-08 17:00:42'),
(120, 'Perú, Alquiler temporada larga, casa 2 dormitorios Playa Sur San Bartolo', 'peru-alquiler-temporada-larga-casa-2-dormitorios-playa-sur-san-bartolo', 'Linda Casita, con una excelente vista del mar, cuenta con 2 dormitorios, 1 Baño, Sala-comedor, cocina, tiene ducha eléctrica, se alquila sin amoblar, tiene amplia terraza, en la parte baja hay lugar donde se puede estacionar según disponibilidad. El pago del agua y la luz es según consumo, tiene medidores independientes.\r\n    El precio del alquiler es solo por contrato de 1 año y que se cumpla con el plazo establecido.\r\n    Forma de pago 2 meses de garantía por 1 mes de adelanto.', '', 'PEN S/', 1200.00, 'alquilado', 0, 2, '2020-01-14 14:07:26'),
(121, 'España, Venta Casa independiente, en Orihuela de la Costa, sector Playa Golf', 'espana-venta-casa-independiente-en-orihuela-de-la-costa-sector-playa-golf', 'Espectacular vivienda independiente con 116 m2 de parcela, con tres dormitorios y dos baños. Además, se ha habilitado el sótano de 84 m2 como apartamento con acceso independiente. La vivienda está situada cerca de los campos de golf de Campoamor y Las Ramblas y las playas de Orihuela Costa se encuentran a tan sólo cinco minutos en coche.\r\nCaracterísticas\r\n•	 Aire acondicionado\r\n•	 Calefacción\r\n•	 Piscina comunitaria\r\n•	 Cocina Independiente\r\n•	 Parcialmente amueblado\r\n•	 Armarios empotrados\r\n•	 Acabado de 1ª calidad\r\n•	 Trastero\r\n•	 Vistas al mar\r\n•	 Alarma\r\n•	 Rejas', '', 'EUR €', 250000.00, 'venta', 0, 1, '2020-01-17 15:46:49'),
(142, 'España, Apartamento primera línea playa Guardamar del Segura - Alicante', 'espana-apartamento-primera-linea-playa-guardamar-del-segura---alicante', 'Apartamento en Guardamar del Segura zona PUERTO, 80 m2. de superficie, 8 m2 de terraza, a 400 m. de la playa, 2 habitaciones dobles, 2 baños, propiedad  con conservación de origen, cocina equipada, carpinteria interior de haya, orientación noreste, suelo de gres, carpintería exterior de aluminio / climalit., Superficie Útil  72 m2,   Año de construcción 2007.\r\n\r\nExtras: adaptado pmr, agua, armarios empotrados (en los dos dormitorios), ascensor, esquina, línea telefónica, luminoso, luz, muebles, piscina comunitaria, puerta blindada, terraza, videoportero (con clave de seguridad), primera línea, vistas al mar\r\nComunidad : 65 €/mes    IBI : 235 € por año', '', 'EUR €', 139900.00, 'venta', NULL, 1, '2020-02-28 14:19:26'),
(143, 'España, Apartamento planta baja, con piscina, Torrevieja', 'espana-apartamento-planta-baja-con-piscina-torrevieja', 'Apartamento en planta Baja, 2 dormitorios, muy bien cuidado, amueblado y equipado, listo para entrar a vivir, cocina americana con pequeño lavadero, armarios empotrados, porche de 8 m², patio de 12 m², aire acondicionado, toldos, piscina comunitaria, junto a todos los servicios propios de la ciudad, a 5 minutos andando a Centro de Salud y a 15 minutos de la playa. zona muy tranquila.\r\n•	Zona: Nueva Torrevieja\r\n•	Orientación: Este\r\n•	Despensa : 2 m²\r\n•	Patio : 12 m²\r\n•	Porche : 8 m²\r\n•	Toldos\r\n•	Metros del Inmueble: 62 m²\r\n•	Gastos Comunidad: 28 €\r\n•	Suma/IBI: 85 €\r\n', '', 'EUR €', 67500.00, 'venta', NULL, 1, '2020-02-29 16:27:30'),
(144, 'España, Apartamento primera planta, en la Playa del cura - Torrevieja', 'espana-apartamento-primera-planta-en-la-playa-del-cura---torrevieja', 'Precioso Apartamento 2 dormitorios, equipado y amueblado, cocina independiente con ventana, baño completo, salón comedor, armario empotrado, aire acondicionado, piscina comunitaria, terraza 5 m², toldos, orientacion sur, rodeado de todos los servicios, Estacion de Bus, Policia, supermecados, a 5 minutos de centro de Salud y a 10 minutos andando a la playa. Opcional garaje y trastero no incluido en el precio.\r\nCaracterísticas del Inmueble:\r\n•	Estado: Seminuevo\r\n•	Zona: La Loma-Playa del Cura\r\n•	Orientación: Sur\r\n•	Núm. Planta: 1\r\n•	Solarium\r\n•	Toldos\r\n•	Metros del Inmueble: 60 m²\r\n•	Gastos Comunidad: 25 €\r\n•	Suma/IBI: 185 €\r\n', '', 'EUR €', 66700.00, 'venta', NULL, 1, '2020-02-29 17:29:45'),
(145, 'España, Bungalow en Altos del Limonar - Torrevieja', 'espana-bungalow-en-altos-del-limonar---torrevieja', 'Bungalow 2 dormitorios en planta baja, amueblado y equipado, salón comedor, cocina americana con salida a patio trasero de 5 m², armarios empotrados, porche de entrada de 6 m², rejas, plaza para coche en parcela, vistas despejadas, piscina comunitaria con zonas verdes y de juegos, orientación Suroeste, muy cerca de centros comerciales, urbanización tranquila, a 15 minutos de la playa.\r\nCaracterísticas del Inmueble:\r\n•	Estado: Seminuevo\r\n•	Zona: Altos del Limonar\r\n•	Orientación: SurOeste\r\n•	Patio : 5 m²\r\n•	Porche : 6 m²\r\n•	Parcela : 25 m²\r\n•	Garaje\r\n•	Piscina Comunitaria\r\n•	Vistas\r\n•	Soleado\r\n•	Metros del Inmueble: 54 m²\r\n•	Gastos Comunidad: 15 €\r\n•	Suma/IBI: 150 €', '', 'EUR €', 77300.00, 'venta', NULL, 1, '2020-02-29 17:52:13'),
(147, 'España, Villa Independiente, en Parajes de la Peña, Murcia', 'espana-villa-independiente-en-parajes-de-la-pena-murcia', 'Magnifica villa independiente rodeada de paraje natural, en plena naturaleza, con 600 metros de parcela y 110 metros de vivienda, consta de 3 dormitorios, 2 baños completos con ventanas, salón comedor con chimenea y aire acondicionado, gran cocina independiente con salida a la parcela, amueblado y equipado, lavadero, mosquiteras en todas las estancias, ventanas climalit, vistas a las montañas.\r\nCaracterísticas Generales:\r\nZona: Paraje las Peñas\r\nOrientación: Sur\r\nLavadero : 3 m²\r\nPorche : 12 m²', '', 'EUR €', 145000.00, 'venta', NULL, 1, '2020-02-29 18:45:10'),
(149, 'España, Villa con Piscina, zona Pinar de Campoverde - Pilar de la Horadada ', 'espana-villa-con-piscina-zona-pinar-de-campoverde---pilar-de-la-horadada', 'Villa 3 dormitorios - 3 baños.\r\nAgradable villa de 151m² con piscina privada en 481m² de terreno ubicada en una zona tranquila de Pinar de Campoverde, cerca de tiendas.\r\nSe compone de una terraza, 1 salón / comedor con chimenea de pellets, 1 cocina equipada con zona de comedor, 1 dormitorio con baño, 1 segundo dormitorio, 1 segundo baño con ducha.\r\nEn el nivel inferior hay un cuarto de servicio con un trastero, 1 hermoso dormitorio / estudio con cocina pequeña y sauna.\r\nLa casa está equipada con calefacción central, chimenea de pellets, aire acondicionado, paneles solares para agua caliente.\r\nExterior: una terraza cubierta con barbacoa, posibilidad de cocina al aire libre, 1 jacuzzi, una piscina privada y una cochera con puerta eléctrica.\r\nLa casa se vende semi-amueblada.\r\nCerca de tiendas y del centro del pueblo.\r\n3 kms de campos de golf\r\nA 10 km del mar ya 10 minutos en coche.\r\n20 km del aeropuerto de Murcia y 65 km del aeropuerto de Alicante\r\nCentro comercial Dos Mares a 15 minutos y Zenia Boulevard a 20 minutos.\r\nUbicción Pilar de la Horadada - Alicante', '', 'EUR €', 239000.00, 'venta', 1, 1, '2020-03-08 12:03:04'),
(150, 'España, Bungalow planta alta, en Orihuela Costa, zona Parque del Duque', 'espana-bungalow-planta-alta-en-orihuela-costa-zona-parque-del-duque', 'PARQUE DEL DUQUE ATICO 3 DORMITORIOS\r\nBUNGALOW PLANTA ALTA EN ORIHUELA COSTA\r\n3 DORMITORIOS,\r\n2 BAÑOS,\r\nCOCINA,\r\nTERRAZA,\r\nSOLARIUM,\r\nPISCINA COMUNITARIA,', '', 'EUR €', 125000.00, 'venta', NULL, 1, '2020-03-09 10:25:08'),
(151, 'España, Venta Adosado en esquina en Urb. Las Viñas Guardamar', 'espana-venta-adosado-en-esquina-en-urb-las-vinas-guardamar', 'Adosado en esquina distribuido en 3 plantas en urbanización Las Viñas de 5 dormitorios, 3 baños y garaje privado con acceso directo a la vivienda. Esta urbanización cuenta con piscina comunitaria y está situada a escasos 300 metros de la playa de Guardamar del Segura y rodeada de supermercados, restaurantes, colegio y comercios. También cuenta con una parcela en esquina de 40 m2 y barbacoa.\r\nTipo de Propiedad Adosado, Ciudad   Guardamar del Segura, Zona las viñas, Orientación  Noreste,  Superficie Útil  145 m2,  Superficie Construida  165 m2,  Superficie parcela   70 m2,  Superficie terraza   5 m2,  Gastos Comunidad  400 €/año,  Conservación  Buen estado,  Habitaciones  5,  Baños  3,  Antigüedad  1990,  Tipo Cocina  Independiente – Equipada,  Carpintería Interior  Madera,  Tipo Suelo   Gres,  Vistas   A la calle,  Nº de plantas  3, Distancia al mar  400 m.', '', 'EUR €', 240000.00, 'venta', NULL, 1, '2020-03-10 11:04:01'),
(152, 'ESPAÑA VENTA DE CASA ADOSADA, RESIDENCIAL MARIBLANCA - ORIHUELA COSTA', 'espana-venta-de-casa-adosada-residencial-mariblanca---orihuela-costa', 'Casa adosada de 100 metros en Punta Prima 3 amplios dormitorios, 2 baños, salón, cocina, balcón, calefacción eléctrica Jardín, terraza con entrada para coche, gran patio, solarium Orientación Este y Suroeste, piscina comunitaria a 5 min. del mar de Punta Prima, a 10 minutos de la autopista Orihuela-Costa\r\nCOMUNIDAD: 380€ AÑO\r\nIBI. 326€ AÑO', '', 'EUR €', 179999.00, 'venta', NULL, 1, '2020-03-10 15:17:35'),
(158, 'Perú Alquiler Departamento 2 dormitorios, con vista al mar, Playa Sur - San Bartolo,', 'peru-alquiler-departamento-2-dormitorios-con-vista-al-mar-playa-sur---san-bartolo', 'Distribución2 dormitorios ( 1 con 2 camas y 1 con cama matrimonial) , sala comedor con tv y refrigeradora, cable e internet, baño, kitchenette, terraza/patio con lavandería con mesa y  4 sillas y sombrilla.  Se puede estacionar en el pasaje hay una tranquera con candado.\r\nAlquiler por mes $2000 + $800 garantía.\r\nAlquiler por año nuevo $800\r\nMantenimiento, cable y agua incluido en el alquiler , Luz según consumo. No tiene Internet', '', 'US $', 2000.00, 'alquiler', NULL, 1, '2020-10-15 15:44:21'),
(160, 'Perú Alquiler Departamento Frente al Mar Playa Norte - San Bartolo', 'peru-alquiler-departamento-frente-al-mar-playa-norte---san-bartolo', 'Distribución: 3 dormitorios, 2 baños completos más cuarto de servicio con baño. \r\n(Dormitorio principal con baño incluido). \r\nSala con vista al mar, cocina equipada con reposteros altos y bajos, lavandería y terraza con excelente vista a playa Norte.\r\nEsta en el 6to piso. No hay ascensor, pero tiene acceso tanto x el Malecón San Martin como por Rivera Norte. Salida directo a la playa.\r\nPrecio por temporada únicamente $7700, mantenimiento S/250 mensuales (incluye el agua), luz según consumo. Se pagan S/100 al salir por limpieza.', '', 'US $', 7700.00, 'alquiler', 1, 1, '2020-10-26 14:53:28'),
(161, 'España, Venta Apartamentos adosados (nueva obra) en Torrevieja', 'espana-venta-apartamentos-adosados-(nueva-obra)-en-torrevieja', 'Residencial \"La Isla II\" es un complejo compuesto por dos fases que sumarán un total de 56 apartamentos adosados de 2 y 3 dormitorios. El conjunto cuenta con amplias zonas comunes ajardinadas, piscina comunitaria, zona de juego para niños. El residencial está situado al lado de todo tipo servicios y a unos 500 metro de la playa de \"los Locos\".\r\n    Residencial \"La Isla II\" es un nuevo concepto de adosados, de estilo actual y diseño moderno, siguiendo una arquitectura lineal. Los espacios abiertos y conectados entre sí son característicos en la construcción del complejo residencial, permitiendo que se creen distintos tipos de ambientes en la vivienda.\r\n    La construcción del complejo está realizada en dos alturas, con opción de 2 o 3 dormitorios, terraza solárium o jardín, todas las viviendas disponen de garaje incluido en el precio, y unas vistas inmejorables.\r\n    Precio de venta desde 162.900 Euros\r\n    Fecha de entrega Junio 2022', '', 'EUR €', 162900.00, 'venta', 1, 1, '2020-10-30 12:34:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `video`
--

CREATE TABLE `video` (
  `vid_id` int(11) UNSIGNED NOT NULL,
  `vid_titulo` varchar(255) DEFAULT NULL,
  `vid_link` text DEFAULT NULL,
  `vid_key` varchar(255) DEFAULT NULL,
  `vid_estado` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);
ALTER TABLE `admin` ADD FULLTEXT KEY `administrador` (`adm_user`,`adm_apellido`,`adm_nombre`);

--
-- Indices de la tabla `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`ba_id`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`cat_id`),
  ADD UNIQUE KEY `cat_id` (`cat_id`) USING BTREE,
  ADD KEY `cat_padre_id` (`cat_padre_id`) USING BTREE,
  ADD KEY `cat_key` (`cat_key`) USING BTREE,
  ADD KEY `cat_estado` (`cat_estado`) USING BTREE;

--
-- Indices de la tabla `categoria_detalle`
--
ALTER TABLE `categoria_detalle`
  ADD PRIMARY KEY (`det_id`),
  ADD UNIQUE KEY `det_id` (`det_id`) USING BTREE,
  ADD KEY `det_padre_id` (`det_padre_id`) USING BTREE,
  ADD KEY `det_cat_id` (`det_cat_id`) USING BTREE,
  ADD KEY `det_pro_id` (`det_pro_id`) USING BTREE;

--
-- Indices de la tabla `foto`
--
ALTER TABLE `foto`
  ADD PRIMARY KEY (`fot_id`);

--
-- Indices de la tabla `galeria`
--
ALTER TABLE `galeria`
  ADD PRIMARY KEY (`gal_id`);

--
-- Indices de la tabla `noticia`
--
ALTER TABLE `noticia`
  ADD PRIMARY KEY (`not_id`);

--
-- Indices de la tabla `privilegios`
--
ALTER TABLE `privilegios`
  ADD PRIMARY KEY (`mod_id`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`pro_id`),
  ADD UNIQUE KEY `pro_id` (`pro_id`) USING BTREE,
  ADD KEY `pro_key` (`pro_key`) USING BTREE,
  ADD KEY `pro_estado` (`pro_estado`) USING BTREE;
ALTER TABLE `producto` ADD FULLTEXT KEY `pro_nombre` (`pro_nombre`);

--
-- Indices de la tabla `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`vid_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT de la tabla `banner`
--
ALTER TABLE `banner`
  MODIFY `ba_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `cat_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `categoria_detalle`
--
ALTER TABLE `categoria_detalle`
  MODIFY `det_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=257;

--
-- AUTO_INCREMENT de la tabla `foto`
--
ALTER TABLE `foto`
  MODIFY `fot_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT de la tabla `galeria`
--
ALTER TABLE `galeria`
  MODIFY `gal_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `noticia`
--
ALTER TABLE `noticia`
  MODIFY `not_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `privilegios`
--
ALTER TABLE `privilegios`
  MODIFY `mod_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `pro_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT de la tabla `video`
--
ALTER TABLE `video`
  MODIFY `vid_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
