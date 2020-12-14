-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 05, 2020 at 12:26 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bd_sicaab`
--

-- --------------------------------------------------------

--
-- Table structure for table `acta_destruccion`
--

CREATE TABLE `acta_destruccion` (
  `id_acta` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `descripcion` text NOT NULL,
  `id_orden_produccion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE `area` (
  `id_area` int(11) NOT NULL,
  `nombre_area` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `area`
--

INSERT INTO `area` (`id_area`, `nombre_area`) VALUES
(1, 'Gerencia'),
(2, 'Diseño'),
(3, 'Calidad'),
(4, 'Encuadernacion'),
(5, 'Corte'),
(6, 'Impresion'),
(7, 'Troquelado'),
(8, 'Almacen');

-- --------------------------------------------------------

--
-- Table structure for table `arte_producto`
--

CREATE TABLE `arte_producto` (
  `id_arte` int(11) NOT NULL,
  `nombre_producto` varchar(45) NOT NULL,
  `alto` varchar(45) NOT NULL,
  `largo` varchar(45) NOT NULL,
  `ancho` varchar(45) DEFAULT NULL,
  `imagen` varchar(45) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `estado` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `arte_producto`
--

INSERT INTO `arte_producto` (`id_arte`, `nombre_producto`, `alto`, `largo`, `ancho`, `imagen`, `id_cliente`, `estado`) VALUES
(1, 'Opharflex', '69 mm', '28 mm', '28 mm', 'Opharflex.PNG', 6, 'Activo'),
(2, 'Laca automotiva cuarto plano', '72 mm', '460 mm', NULL, 'lacaautomotivacuartoplano.PNG', 1, 'Activo'),
(3, 'Bg13 230x290 Premier Plus CO G120', '290 mm', '230 mm', NULL, 'premierplus.PNG', 2, 'Activo'),
(4, 'Hydroclean x 30 ml', '95 mm', '33 mm', '33 mm', 'hydroclean30ml.PNG', 3, 'Activo'),
(5, 'Humecsol 120 ml', '142 mm', '47 mm', '47 mm', 'humecsol120ml.PNG', 3, 'Activo'),
(6, 'Hydrosol 60 ml', '112 mm', '55 mm', '40 mm', 'hydrosol60ml.PNG', 3, 'Activo'),
(7, 'Hydrosol 120 ml', '142 mm', '67 mm', '47 mm', 'hydrosol120ml.PNG', 3, 'Activo'),
(8, 'Hydrosol 240 ml', '180 mm', '70 mm', '57 mm', 'hydrosol240ml.PNG', 3, 'Activo'),
(9, 'See soft', '60 mm', '100 mm', '10 mm', 'seesoft.PNG', 3, 'Activo'),
(10, 'Laca maderable catalizada', '184 mm', '554 mm', NULL, 'Lacamaderablecatalizada.PNG', 1, 'Activo'),
(11, 'Folleto tapa digestar x 300', '57 mm', '114 mm', NULL, 'digestar.PNG', 5, 'Activo'),
(12, 'Viga sex men', '65 mm', '82 mm', '20 mm', 'vigasexmen.PNG', 5, 'Activo'),
(13, 'Viga sex women forte x 3 cap', '65 mm', '82 mm', '20 mm', 'vigasexwoman.PNG', 5, 'Activo'),
(14, 'Venasfull max forte blister x 30 cap', '84 mm', '122 mm', '34 mm', 'Venasfull_30cap.PNG', 5, 'Activo'),
(15, 'Venasfull x 60 cap', '84 mm', '122 mm', '34 mm', 'Venasfull_60cap.PNG', 5, 'Activo'),
(16, 'Paratos miel x 120 ml', '150 mm', '62 mm', '62 mm', 'Paratos.PNG', 5, 'Activo'),
(17, 'Multisoluter x 120 ml', '145 mm', '60 mm', '50 mm', 'Multisoluter_120ml.PNG', 6, 'Activo'),
(18, 'Multisoluter x 50 ml', '110 mm', '58 mm', '40 mm', 'Multisoluter_50ml.PNG', 6, 'Activo'),
(19, 'Pataler (ILAB)', '69 mm', '28 mm', '28 mm', 'Pataler.PNG', 6, 'Activo'),
(20, 'Labsoft (ILAB)', '68,28 mm', '35,01 mm', '28 mm', 'Labsoft.PNG', 6, 'Activo'),
(21, 'Laca maderable nitro', '114 mm', '360 mm', NULL, 'Lacamaderablenitro.PNG', 1, 'Activo'),
(22, 'Osmotears', '69 mm', '28 mm', '28 mm', 'osmotears.PNG', 6, 'Activo'),
(23, 'Tobramicina', '69 mm', '28 mm', '28 mm', 'tobramicina.PNG', 6, 'Activo'),
(24, 'Leberlim', '36 mm', '81 mm', '15 mm', 'Leberlim.PNG', 4, 'Activo'),
(25, 'Bitrozil', '34 mm', '80 mm', '13 mm', 'bitrozil.PNG', 4, 'Activo'),
(26, 'Dolinstan', '112 mm', '55 mm', '55 mm', 'Dolinstan.PNG', 4, 'Activo');

-- --------------------------------------------------------

--
-- Table structure for table `cargo`
--

CREATE TABLE `cargo` (
  `id_cargo` int(11) NOT NULL,
  `nombre_cargo` varchar(45) NOT NULL,
  `id_area` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cargo`
--

INSERT INTO `cargo` (`id_cargo`, `nombre_cargo`, `id_area`) VALUES
(1, 'Gerente', 1),
(2, 'Coordinador produccion y calidad', 3),
(3, 'Diseñador', 2),
(4, 'Prensista', 6),
(5, 'Encuadernadora', 4),
(6, 'Troquelador', 7);

-- --------------------------------------------------------

--
-- Table structure for table `categoria_maq_equi`
--

CREATE TABLE `categoria_maq_equi` (
  `id_categoria` int(11) NOT NULL,
  `categoria` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categoria_maq_equi`
--

INSERT INTO `categoria_maq_equi` (`id_categoria`, `categoria`) VALUES
(1, 'Equipo'),
(2, 'Maquina');

-- --------------------------------------------------------

--
-- Table structure for table `categoria_material`
--

CREATE TABLE `categoria_material` (
  `id_categoria` int(11) NOT NULL,
  `categoria` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categoria_material`
--

INSERT INTO `categoria_material` (`id_categoria`, `categoria`) VALUES
(1, 'Caja empaque'),
(2, 'Consumibles'),
(3, 'Insumos'),
(4, 'Papel empaque'),
(5, 'Papeles'),
(6, 'Tintas');

-- --------------------------------------------------------

--
-- Table structure for table `categoria_proceso`
--

CREATE TABLE `categoria_proceso` (
  `id_categoria` int(11) NOT NULL,
  `categoria` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categoria_proceso`
--

INSERT INTO `categoria_proceso` (`id_categoria`, `categoria`) VALUES
(1, 'Acabados'),
(2, 'Principales'),
(3, 'Pegue');

-- --------------------------------------------------------

--
-- Table structure for table `categoria_producto`
--

CREATE TABLE `categoria_producto` (
  `id_categoria` int(11) NOT NULL,
  `categoria` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categoria_producto`
--

INSERT INTO `categoria_producto` (`id_categoria`, `categoria`) VALUES
(1, 'Etiqueta'),
(2, 'Caja plegadiza'),
(3, 'Papeleria'),
(4, 'Publicomercial'),
(5, 'Inserto');

-- --------------------------------------------------------

--
-- Table structure for table `categoria_proveedor`
--

CREATE TABLE `categoria_proveedor` (
  `id_categoria` int(11) NOT NULL,
  `categoria` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categoria_proveedor`
--

INSERT INTO `categoria_proveedor` (`id_categoria`, `categoria`) VALUES
(1, 'Material'),
(2, 'Servicio');

-- --------------------------------------------------------

--
-- Table structure for table `certificado_calidad`
--

CREATE TABLE `certificado_calidad` (
  `id_certificado` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `id_orden_produccion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `nit` varchar(45) NOT NULL,
  `razon_social` varchar(45) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `telefono` varchar(45) NOT NULL,
  `correo` varchar(45) NOT NULL,
  `persona_contacto` varchar(45) NOT NULL,
  `ciudad` varchar(45) NOT NULL,
  `id_usuarios` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nit`, `razon_social`, `direccion`, `telefono`, `correo`, `persona_contacto`, `ciudad`, `id_usuarios`) VALUES
(1, '800171079', 'Pinturas Tonner SAS', 'CLL 53 3 41 ENTRADA 3 CAZUCA', '6980722', 'comercial@pinturastonner.com', 'Dilan Cruz', 'Bogota', 9),
(2, '830041598', 'Saint Gobain Colombia SAS', 'KM 20 CARRETERA OCCIDENTE 25 00 40', '2012843', 'ventas@saintgobain.com', 'Lina Robles', 'Bogota', 10),
(3, '860054366', 'Ital Lent', 'CR 18 118 33', '1792778', 'contacto@itallent.com', 'Carlos Ochoa', 'Bogota', 11),
(4, '870053466', 'LG Pharma', 'CL 8 A 42 68', '2511513', 'asistentecomercial@lgpharma.com', 'Jenny Villarreal', 'Cali', 12),
(5, '800014338', 'Laboratorios Natural Freshly Infabo SAS', 'VDA PUEBLO VIEJO KM 1 COTA - CHIA', '1499573', 'asistentecompras@natural.com', 'Rocio Torres', 'Bogota', 13),
(6, '860050321', 'Opharm Limitada', 'CL 21 42 60', '6057277', 'compras@opharm.com', 'Linda Cañaveral', 'Bogota', 14),
(7, '830111304', 'Quirupos SAS', 'CR 31 A 2 A 77', '2350340', 'contacto@quirupos.com', 'Samuel Saenz', 'Bogota', 15),
(8, '830054656', 'Laboratorios Novaderma SA', 'CLL 101 B 45 A 49', '4384595', 'ventas@novaderma.com', 'Jenny Rodriguez', 'Bucaramanga', 16),
(9, '1054679529', 'Fabrica de Bocadillos La Moniquireña', 'CARRETERA CENTRAL 21277', '4817019', 'yulymoniquireña@gmail.com', 'Yuly Villamil', 'Moniquira', 17),
(10, '830072323', 'LG Pharma', 'CR 20 A 43 A 50', '2355955', 'asistentecompras@arbofarma.com', 'José Pinto', 'Bogota', 18);

-- --------------------------------------------------------

--
-- Table structure for table `condicion_pago`
--

CREATE TABLE `condicion_pago` (
  `id_pago` int(11) NOT NULL,
  `tipo` varchar(45) NOT NULL,
  `plazo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `condicion_pago`
--

INSERT INTO `condicion_pago` (`id_pago`, `tipo`, `plazo`) VALUES
(1, 'Contado', '0 dias'),
(2, 'Corto plazo', '30 dias'),
(3, 'Mediano plazo', '60 dias'),
(4, 'Largo plazo', '90 dias');

-- --------------------------------------------------------

--
-- Table structure for table `cotizacion`
--

CREATE TABLE `cotizacion` (
  `id_cotizacion` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `descripcion` text NOT NULL,
  `sustrato` varchar(45) NOT NULL,
  `pantones` varchar(45) NOT NULL,
  `cnt_inferior` int(11) NOT NULL,
  `vunitario_inferior` float NOT NULL,
  `vtotal_inferior` float NOT NULL,
  `cnt_superior` int(11) DEFAULT NULL,
  `vunitario_superior` float DEFAULT NULL,
  `vtotal_superior` float DEFAULT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_arte` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `detalle_requerimiento`
--

CREATE TABLE `detalle_requerimiento` (
  `id_requerimiento` int(11) NOT NULL,
  `id_material` int(11) NOT NULL,
  `cantidad` float NOT NULL,
  `vlr_unitario` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detalle_requerimiento`
--

INSERT INTO `detalle_requerimiento` (`id_requerimiento`, `id_material`, `cantidad`, `vlr_unitario`) VALUES
(1, 197, 5, 32941),
(1, 192, 3, 45000),
(30, 3, 1, 190000),
(32, 29, 4, 16500),
(33, 5, 1, 102000);

-- --------------------------------------------------------

--
-- Table structure for table `empleado`
--

CREATE TABLE `empleado` (
  `id_empleado` int(11) NOT NULL,
  `documento` varchar(45) NOT NULL,
  `primer_nombre` varchar(45) NOT NULL,
  `segundo_nombre` varchar(45) DEFAULT NULL,
  `primer_apellido` varchar(45) NOT NULL,
  `segundo_apellido` varchar(45) NOT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `id_usuarios` int(11) NOT NULL,
  `id_cargo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `empleado`
--

INSERT INTO `empleado` (`id_empleado`, `documento`, `primer_nombre`, `segundo_nombre`, `primer_apellido`, `segundo_apellido`, `correo`, `telefono`, `direccion`, `fecha_nacimiento`, `id_usuarios`, `id_cargo`) VALUES
(1, '1030586383', 'Diego', 'Alejandro', ' Torres', 'Reyes', 'dialet@gmail.com', '3132695359', 'CLL 100 15 A 43', '1991-01-14', 1, 1),
(2, '52504265', 'Elizabeth', '', ' Pinto', ' Robayo', 'elipinto@gmail.com', '3123594407', 'CLL 48 A SUR 88 C', '1979-11-11', 2, 5),
(3, '51807666', 'Emma', ' Yaneth', ' Rojas', ' Rodriguez', 'emmarojas@gmail.com', '3204344489', 'CLL 12 A 12A Este 2-20 INT 1 CASA 12 MANZANA ', '1972-07-04', 3, 3),
(4, '52480652', 'Yudi', 'Jimena', ' Criollo', ' Silva', 'yudisilva@gmail.com', '3202318659', 'CR 6 23 70 BLQ 13 CASA 11', '1980-06-14', 4, 5),
(5, '79835426', 'Luis', ' Eduardo', ' Martinez', ' Ruiz', 'luisacost@gmail.com', '3203112548', 'CLL 73 Sur 79 D 71', '1977-01-01', 5, 4),
(6, '79667219', 'Nelson', ' Andres', ' Aguirre', ' Villamarin', 'nelsaguirre@gmail.com', '3214998806', 'TV 73 H 75 67 SUR', '1977-09-10', 6, 4),
(7, '79453281', 'Ricardo', '', 'Calderón ', 'Ricardi', 'ricardoricardi@gmail.com', '3125738793', 'CR 72 J BIS 34 38 SUR', '1964-12-03', 7, 6),
(8, '1018476596', 'Nicolás', 'Santiago', 'Naranjo', 'Echeverry', 'nisanech@gmail.com', '3144680117', 'CR 94 J BIS 80 B 36 APTO 101', '1995-06-02', 8, 2);

-- --------------------------------------------------------

--
-- Table structure for table `entrada_material`
--

CREATE TABLE `entrada_material` (
  `id_entrada` int(11) NOT NULL,
  `fecha_ingreso` date NOT NULL,
  `num_factura` varchar(45) NOT NULL,
  `id_requerimiento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `estado_pedido`
--

CREATE TABLE `estado_pedido` (
  `id_orden_compra` int(11) NOT NULL,
  `id_orden_produccion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `estado_produccion`
--

CREATE TABLE `estado_produccion` (
  `id_estado` int(11) NOT NULL,
  `estado` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `estado_produccion`
--

INSERT INTO `estado_produccion` (`id_estado`, `estado`) VALUES
(1, 'Cancelado'),
(2, 'Ejecucion'),
(3, 'Entregado'),
(4, 'Pendiente'),
(5, 'Suspendido'),
(6, 'Terminado');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ficha_tecnica`
--

CREATE TABLE `ficha_tecnica` (
  `id_ficha_tecnica` int(11) NOT NULL,
  `fecha_aprobacion` date NOT NULL,
  `version_arte` int(11) NOT NULL,
  `registro_sanitario` varchar(45) DEFAULT NULL,
  `codigo_barras` varchar(45) DEFAULT NULL,
  `id_producto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ficha_tecnica`
--

INSERT INTO `ficha_tecnica` (`id_ficha_tecnica`, `fecha_aprobacion`, `version_arte`, `registro_sanitario`, `codigo_barras`, `id_producto`) VALUES
(1, '2019-02-27', 8, 'INVIMA 2018M-0002760-R2', '7707277580183', 1),
(2, '2019-08-14', 1, '', '', 2),
(3, '2019-03-04', 7, 'INVIMA 2016M-0011500-R1', '7707277580442', 3),
(4, '2019-07-29', 1, 'INVIMA 2009DM-004183', '', 4),
(5, '2018-03-15', 1, '', '', 5),
(6, '2020-02-19', 2, 'INVIMA 2016M-0017269', '7709946708393', 6),
(7, '2020-03-10', 1, 'INVIMA 2016M-0011686-R1', '7707357200109', 7),
(8, '2020-02-20', 1, 'INVIMA 2016M-0017258', '7709946708331', 8),
(9, '2018-06-23', 1, 'INVIMA PFM2011-0001794', '7707232097459', 9),
(10, '2019-08-14', 1, '', '', 10),
(11, '2018-02-21', 1, 'INVIMA PFM2011-0001839', '7707232093420', 11),
(12, '2018-02-21', 1, 'INVIMA PFM2011-0001839', '7707232097701', 12),
(13, '2018-09-26', 1, 'INVIMA 2016DM-0003682-R1', '7707174406098', 13),
(14, '2018-09-26', 2, 'INVIMA 2016DM-0003682-R1', '7707174406098', 14),
(15, '2020-07-15', 1, 'INVIMA 2016DM-0003686-R1', '7707174406098', 15),
(16, '2018-09-26', 1, 'INVIMA 2016DM-0003682-R1', '7707174406111', 16),
(17, '2018-06-15', 1, 'INVIMA SD2012-0002445', '7707232096551', 17),
(18, '2018-02-23', 1, '', '', 18),
(19, '2019-03-04', 4, 'INVIMA 2010DM-0006196', '7707277580022', 19),
(20, '2018-09-18', 3, 'INVIMA 2010DM-0006196', '7707277580459', 20),
(21, '2016-02-16', 3, 'INVIMA 2016M-0004669-R1', '7707277580275', 21),
(22, '2015-09-14', 1, 'INVIMA 2013M-0014189', '7707372340019', 22),
(23, '2016-02-12', 2, 'INVIMA 2013M-0014190', '7707372300037', 23),
(24, '2019-03-07', 1, 'INVIMA SD2011-0001861', '7707232095158', 24),
(25, '2019-08-21', 1, '', '', 25),
(26, '2018-09-28', 1, 'INVIMA 2011DM-0000480-R1', '7707174401017', 26);

-- --------------------------------------------------------

--
-- Table structure for table `hoja_vida`
--

CREATE TABLE `hoja_vida` (
  `id_hoja_vida` int(11) NOT NULL,
  `fabricante` varchar(45) NOT NULL,
  `modelo` varchar(45) NOT NULL,
  `peso` varchar(45) NOT NULL,
  `marca` varchar(45) NOT NULL,
  `funcion` text NOT NULL,
  `alto` varchar(45) NOT NULL,
  `largo` varchar(45) NOT NULL,
  `ancho` varchar(45) NOT NULL,
  `caracteristicas` text NOT NULL,
  `año` varchar(8) NOT NULL,
  `id_maq_equi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hoja_vida`
--

INSERT INTO `hoja_vida` (`id_hoja_vida`, `fabricante`, `modelo`, `peso`, `marca`, `funcion`, `alto`, `largo`, `ancho`, `caracteristicas`, `año`, `id_maq_equi`) VALUES
(1, 'Komori', 'SPRINT II-228P', '5800 KG', 'Komori Corporation', 'Impresión offset a medio pliego ', '1900 mm', '3500 mm', '2800 mm', 'Max. Tamaño de la hoja (mm): 520 x 720\nMin. Tamaño de la hoja (mm): 230 x 305 \nArea ed impresión maxima (mm): 510 x 710\nVelocidad (S/H): 10.000 - 12.000\nPotencia requerida (KW): 13.5', '2000', 1),
(2, 'Challenge', 'MPC', '1157 kg', 'Challenge', 'Se utiliza para cortar grandes pilas de papel, cartón o materiales similares. Las hojas de corte se desplazan en forma vertical en sentido ascendente y descendente', '1470 mm', '1780 mm', '2000 mm', 'Ancho máximo de corte: 77.5 cm\nCorte mínimo: 5 cm\nProfundidad máxima de corte: 77.5 cm\nApertura de la abrazadera: 9.5 cm\nFuerza máxima de sujeción: 5000 lbs', '1986', 2),
(3, 'Troquimax', 'Medio mayor 142', '3500 kg', 'Hercules Barcino', 'Máquina encargada de ejercer presión sobre un troquel o matriz para cortar un material. Ésta se puede ajustar a la altura deseada ya que todos los troqueles no tienen el mismo tamaño.', '1920 mm', '1870 mm', '1670 mm', 'Tamaño mesa de trabajo: 64 x 85 cms.\nEnergía (W): 4KW\nCertificación: CE\nTipo: Máquina de corte y troquelado', '1970', 3),
(4, 'Heidelberg', 'GTO 52', '2950 kg', 'Heidelberg', 'Impresión offset a cuarto. Versión plus, numeradora incluido, mojado convencional, control de doble hoja, cambio de planchas rápido, antimaculador', '1790 mm', '2100 mm', '1750 mm', 'Número de colores: 1 color\nFormato : 48x65cm\nFormato de la hoja (mm): 480x650\nMin. Tamaño de la hoja (mm): 140x210\nMax. Área de impresión (mm): 472X645\nVelocidad (F / H): 8000\nRequisito de energía (KW): 4', '1998', 4),
(5, 'MAQGRAF', 'Doble intensidad', '403 kg', 'MAQGRAF', 'Estos primeros sistemas de curado UV se basaban en la emisión de luz ultravioleta de lámparas fluorescentes de mercurio o mercurio-xenón;para aplicar todos los procesos de terminación en línea usuales en la producción de etiquetas autoadhesivas.', '1250 mm', '1900 mm', '890 mm', 'Máxima velocidad: Hasta 13 mts/min.\nDimensiones del papel: Máx: 356mm (ancho) x 510mm (largo) Mín: 210mm (ancho) x 280mm (largo)\nGramajes admitidos: 120 -350 gsm\nRequisitos eléctricos: 400 VAC, 50 Hz, 13,4 A, 380 V (3 fases)', '1997', 5);

-- --------------------------------------------------------

--
-- Table structure for table `inspeccion`
--

CREATE TABLE `inspeccion` (
  `id_inspeccion` int(11) NOT NULL,
  `descripcion` text NOT NULL,
  `id_maq_equi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `maquina_equipo`
--

CREATE TABLE `maquina_equipo` (
  `id_maq_equi` int(11) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `id_area` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `maquina_equipo`
--

INSERT INTO `maquina_equipo` (`id_maq_equi`, `descripcion`, `id_categoria`, `id_area`) VALUES
(1, 'Impresora offset Komori Japan ', 2, 6),
(2, 'Guillotina Challenge', 2, 5),
(3, 'Troqueladora Hércules Barcino', 2, 7),
(4, 'Impresora offset Heidelberg MO', 2, 6),
(5, 'Banda brillo UV MAQGRAF', 2, 6);

-- --------------------------------------------------------

--
-- Table structure for table `material`
--

CREATE TABLE `material` (
  `id_material` int(11) NOT NULL,
  `nombre_material` varchar(45) NOT NULL,
  `unidad_medida` varchar(45) NOT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `material`
--

INSERT INTO `material` (`id_material`, `nombre_material`, `unidad_medida`, `id_categoria`) VALUES
(1, 'CAJAS EMPAQUE (CM)\nINS16', 'Unidad', 1),
(2, 'PLANCHA 520X400\nBPC001', 'Unidad', 2),
(3, 'TROQUEL', 'Unidad', 2),
(4, 'ACEITE DE MAQUINAS (L)\nINS4', 'Litro', 3),
(5, 'ALCOHOL (GL)\nINS3', 'Galon', 3),
(6, 'ANILLO DOBLE 0 BLANCO 11MM 1/2 PASO 3-1\nMP016', 'Loop', 3),
(7, 'ANILLO DOBLE 0 BLANCO 12MM 1/2 PASO 2-1\nMP015', 'Loop', 3),
(8, 'ANILLO DOBLE 0 BLANCO 12MM 1/2 PASO 3-1\nMP016', 'Loop', 3),
(9, 'ANILLO DOBLE 0 BLANCO 14MM 1/2 PASO 3-1\nMP016', 'Loop', 3),
(10, 'ANILLO DOBLE 0 BLANCO 14MM 9/16 PASO 2-1\nMP01', 'Loop', 3),
(11, 'ANILLO DOBLE 0 BLANCO 16MM 5/8 PASO 2-1\nMP015', 'Loop', 3),
(12, 'ANILLO DOBLE 0 BLANCO 19MM 3/4 PASO 2-1\nMP015', 'Loop', 3),
(13, 'ANILLO DOBLE 0 BLANCO 22MM 7/8 PASO 2-1\nMP015', 'Loop', 3),
(14, 'ANILLO DOBLE 0 BLANCO 25MM 1 PASO 2-1\nMP0157', 'Loop', 3),
(15, 'ANILLO DOBLE 0 BLANCO 28MM 11/8 PASO 2-1\nMP01', 'Loop', 3),
(16, 'ANILLO DOBLE 0 BLANCO 32MM 11/4 PASO 2-1\nMP01', 'Loop', 3),
(17, 'ANILLO DOBLE 0 BLANCO 8MM 1/2 PASO 3-1\nMP0160', 'Loop', 3),
(18, 'ANILLO DOBLE 0 BLANCO 9MM 1/2 PASO 3-1\nMP0161', 'Loop', 3),
(19, 'ANTISECANTE (ML)\nINS12', 'Mililitro', 3),
(20, 'CINTA DE ENMASCARAR (M)\nINS5', 'Metro', 3),
(21, 'CINTA DOBLE FAZ TISU 24MM X 50 MTS\nBPC005', 'Metro', 3),
(22, 'CINTA TRANSPARENTE (M)\nINS6', 'Metro', 3),
(23, 'CITO (CM)\nINS15', 'Centimetro', 3),
(24, 'GOMA (L)\nINS11', 'Litro', 3),
(25, 'LECHE LIMPIADORA (GL)\nINS13', 'Galon', 3),
(26, 'LIMPIADOR (GL)\nINS8', 'Galon', 3),
(27, 'PEGANTE (ML)\nINS7', 'Mililitro', 3),
(28, 'PLANCHA 450X370\nBPC004', 'Unidad', 3),
(29, 'PLANCHA 650X550\nBPC002', 'Unidad', 3),
(30, 'PLANCHA 730X600\nBPC003', 'Unidad', 3),
(31, 'POLVO ANTIDESTINTE (KG)\nINS14', 'Kilogramo', 3),
(32, 'SILICONA (ML)\nINS1', 'Mililitro', 3),
(33, 'TINNHER (GL)\nINS2', 'Galon', 3),
(34, 'TRAPOS (M)\nINS10', 'Metro', 3),
(35, 'KRAFT PARA EMPAQUE\nKRE01', 'Unidad', 4),
(36, 'ADHESIVO ARCLAD SH 140 GR 70X100\nMP0143', 'Pliego', 5),
(37, 'ADHESIVO BASE CAUCHO 140 GR 70X100\nMP0147', 'Pliego', 5),
(38, 'ADHESIVO BOND 140 GR 70X100\nMP0144', 'Pliego', 5),
(39, 'ADHESIVO CASCARA DE HUEVO 140 GR 70X100\nMP014', 'Pliego', 5),
(40, 'ADHESIVO FASSON 140 GR 70X100\nMP0142', 'Pliego', 5),
(41, 'ADHESIVO FREEZER 140 GR 70X100\nMP0145', 'Pliego', 5),
(42, 'ADHESIVO RADIANTE ROSADO 140 GR 70X100\nMP0146', 'Pliego', 5),
(43, 'ADHESIVO VINILO BLANCO 140 GR 70X100\nMP0150', 'Pliego', 5),
(44, 'ADHESIVO VINILO TRANSPARENTE 140 GR 70X100\nMP', 'Pliego', 5),
(45, 'ALTERNATIVE BOOK CREAM 59.2 60*90\nMP0122', 'Pliego', 5),
(46, 'ALTERNATIVE BOOK CREAM 59.2 70*100\nMP0121', 'Pliego', 5),
(47, 'BAHIA BOND 70 GR 70X100 \nMP0056', 'Pliego', 5),
(48, 'BAHIA BOND 70GR 60X90\nMP0059', 'Pliego', 5),
(49, 'BAHIA BOND 75 GR 70X100\nMP0057', 'Pliego', 5),
(50, 'BAHIA BOND 75GR 60X90\nMP0060', 'Pliego', 5),
(51, 'BAHIA BOND 90 GR 60 X90\nMP0061', 'Pliego', 5),
(52, 'BAHIA BOND 90 GR 70X100 \nMP0058', 'Pliego', 5),
(53, 'BRIGHT BOND 60 GR 70X100 \nMP0048', 'Pliego', 5),
(54, 'BRIGHT BOND 60GR 60X90\nMP0052', 'Pliego', 5),
(55, 'BRIGHT BOND 70 GR 70X100 \nMP0049', 'Pliego', 5),
(56, 'BRIGHT BOND 70GR 60X90\nMP0053', 'Pliego', 5),
(57, 'BRIGHT BOND 75 GR 70X100\nMP0050', 'Pliego', 5),
(58, 'BRIGHT BOND 75GR 60X90\nMP0054', 'Pliego', 5),
(59, 'BRIGHT BOND 90 GR 60 X90\nMP0055', 'Pliego', 5),
(60, 'BRIGHT BOND 90 GR 70X100 \nMP0051', 'Pliego', 5),
(61, 'BRISTOL BLANCA 150GR 70*100\nMP0072', 'Pliego', 5),
(62, 'CAME 12 C/ 30 260GR 70X100\nMP0083', 'Pliego', 5),
(63, 'CAME 12 C/30 260 GR 60X90\nMP0088', 'Pliego', 5),
(64, 'CAME 14 C/ 36 305GR 60X90\nMP0089', 'Pliego', 5),
(65, 'CAME 14 C/36 305GR 70X100\nMP0084', 'Pliego', 5),
(66, 'CAME 16 C/ 40 335GR 70X100\nMP0085', 'Pliego', 5),
(67, 'CAME 16 C/40 335GR 60X90\nMP0090', 'Pliego', 5),
(68, 'CAME 20 C/48 390GR 60X90\nMP0091', 'Pliego', 5),
(69, 'CAME C/20 .48 390GR 70X100\nMP0086', 'Pliego', 5),
(70, 'CAME C/24 56 440GR 70X100\nMP0087', 'Pliego', 5),
(71, 'CART. DEDICA FIRM C/ 12 195GR 60X90\nMP0110', 'Pliego', 5),
(72, 'CART. DEDICA FIRM C/ 12 195GR. 70*100\nMP0102', 'Pliego', 5),
(73, 'CART. DEDICA FIRM C/ 14 220GR 60X90\nMP0111', 'Pliego', 5),
(74, 'CART. DEDICA FIRM C/ 14 220GR. 70*100\nMP0103', 'Pliego', 5),
(75, 'CART. DEDICA FIRM C/ 16.3 245GR 60X90\nMP0112', 'Pliego', 5),
(76, 'CART. DEDICA FIRM C/ 16.3 245GR. 70*100\nMP010', 'Pliego', 5),
(77, 'CART. DEDICA FIRM C/ 17.1 255GR. 60X90\nMP0113', 'Pliego', 5),
(78, 'CART. DEDICA FIRM C/ 17.1 255GR. 70*100\nMP010', 'Pliego', 5),
(79, 'CART. DEDICA FIRM C/ 18 265GR. 70*100\nMP0106', 'Pliego', 5),
(80, 'CART. DEDICA FIRM C/ 19.1 280 GR. 60X90\nMP011', 'Pliego', 5),
(81, 'CART. DEDICA FIRM C/ 19.1 280GR. 70*100\nMP010', 'Pliego', 5),
(82, 'CART. DEDICA FIRM C/ 19.9 290GR. 70*100\nMP010', 'Pliego', 5),
(83, 'CART. DEDICA FIRM C/ 21.9 315 GR. 70*100\nMP01', 'Pliego', 5),
(84, 'CART. SOLIDA FBB C/ 10.2 185GR. 70*100\nMP0115', 'Pliego', 5),
(85, 'CART. SOLIDA FIRM C/ 14 225GR. 70*100\nMP0117', 'Pliego', 5),
(86, 'CART. SOLIDA FIRM C/ 17.1 260GR. 70*100\nMP011', 'Pliego', 5),
(87, 'CART. SOLIDA FIRM C/ 18 270GR. 70*100\nMP0119', 'Pliego', 5),
(88, 'CART. SOLIDA FIRM C/ 19 295GR. 70*100\nMP0120', 'Pliego', 5),
(89, 'CART. TP WHITE C/12 210GR. 70*100\nMP0095', 'Pliego', 5),
(90, 'CART. TP WHITE C/14 225GR. 70*100\nMP0096', 'Pliego', 5),
(91, 'CART. TP WHITE C/17 262GR. 70*100\nMP0097', 'Pliego', 5),
(92, 'CART. TP WHITE C/18 275GR. 70*100\nMP0098', 'Pliego', 5),
(93, 'CART. TP WHITE C/19 285GR. 70*100\nMP0099', 'Pliego', 5),
(94, 'CART. TP WHITE C/21 310GR. 70*100\nMP0100', 'Pliego', 5),
(95, 'CART. TP WHITE C/22 330GR. 70*100\nMP0101', 'Pliego', 5),
(96, 'CART.SOLIDA FIRM C/ 12 200GR. 70*100\nMP0116', 'Pliego', 5),
(97, 'CARTO BOND 115 GR 60*90\nMP0071', 'Pliego', 5),
(98, 'CARTO BOND 115GR 70X100 \nMP0066', 'Pliego', 5),
(99, 'CARTO BOND 60 60*90\nMP0067', 'Pliego', 5),
(100, 'CARTO BOND 60 70X100 \nMP0062', 'Pliego', 5),
(101, 'CARTO BOND 70 60*90\nMP0068', 'Pliego', 5),
(102, 'CARTO BOND 70 70X100 \nMP0063', 'Pliego', 5),
(103, 'CARTO BOND 75 60*90\nMP0069', 'Pliego', 5),
(104, 'CARTO BOND 75 70X100\nMP0064', 'Pliego', 5),
(105, 'CARTO BOND 90 60*90\nMP0070', 'Pliego', 5),
(106, 'CARTO BOND 90 70X100 \nMP0065', 'Pliego', 5),
(107, 'CARTON DE 1 MM 650gr 70*100\nMP0134', 'Pliego', 5),
(108, 'CARTON DE 1.2 MM 70*100\nMP0135', 'Pliego', 5),
(109, 'CARTON DE 1.4 MM 70*100\nMP0136', 'Pliego', 5),
(110, 'CARTON DE 1.5 MM 945gr 70*100\nMP0137', 'Pliego', 5),
(111, 'CARTON DE 1.7 MM 1070gr 70*100\nMP0138', 'Pliego', 5),
(112, 'CARTON DE 1.9MM 1195gr 70*100\nMP0139', 'Pliego', 5),
(113, 'CARTON DE 2.5 MM 1575 gr 70*100\nMP0141', 'Pliego', 5),
(114, 'CARTON DE 2mm 1260 gr 70*100\nMP0140', 'Pliego', 5),
(115, 'ESM AL IMP 130 70X100\nMP0004', 'Pliego', 5),
(116, 'ESM AL IMP 150 60X90\nMP0014', 'Pliego', 5),
(117, 'ESM AL IMP 150 70X100\nMP0005', 'Pliego', 5),
(118, 'ESMAL IMP 104 Y 105GR 70X100\nMP0002', 'Pliego', 5),
(119, 'ESMAL IMP 104/105 GR 60X90\nMP0011', 'Pliego', 5),
(120, 'ESMAL IMP 115 60X90\nMP0012', 'Pliego', 5),
(121, 'ESMAL IMP 115GR 70X100\nMP0003', 'Pliego', 5),
(122, 'ESMAL IMP 130GR 60X90\nMP0013', 'Pliego', 5),
(123, 'ESMAL IMP 200 60X90\nMP0015', 'Pliego', 5),
(124, 'ESMAL IMP 200 70X100\nMP0006', 'Pliego', 5),
(125, 'ESMAL IMP 250 60X90\nMP0016', 'Pliego', 5),
(126, 'ESMAL IMP 250 70X100\nMP0007', 'Pliego', 5),
(127, 'ESMAL IMP 300 60X90\nMP0017', 'Pliego', 5),
(128, 'ESMAL IMP 300 70X100\nMP0008', 'Pliego', 5),
(129, 'ESMAL IMP 350 70X100\nMP0009', 'Pliego', 5),
(130, 'ESMAL IMP 350GR 60X90\nMP0018', 'Pliego', 5),
(131, 'ESMAL IMP 90 60X90\nMP0010', 'Pliego', 5),
(132, 'ESMAL IMP 90GR 70X100\nMP0001', 'Pliego', 5),
(133, 'KRAFT PLEGABLE C/40 295GR 70*100\nMP0092', 'Pliego', 5),
(134, 'KRAFT PLEGABLE C/48 335 GR 70*100\nMP0093', 'Pliego', 5),
(135, 'KRAFT PLEGABLE C/56 395GR 70*100\nMP0094', 'Pliego', 5),
(136, 'MAULE CAL. 12 200GR 60X90\nMP0031', 'Pliego', 5),
(137, 'MAULE CAL. 12 200GR 70X100\nMP0026', 'Pliego', 5),
(138, 'MAULE CAL. 12 205GR 60X90\nMP0042', 'Pliego', 5),
(139, 'MAULE CAL. 12 205GR 70X100\nMP0035', 'Pliego', 5),
(140, 'MAULE CAL. 14 225 GR70X100\nMP0027', 'Pliego', 5),
(141, 'MAULE CAL. 14 225GR 105X42\nMP0170', 'Pliego', 5),
(142, 'MAULE CAL. 14 225gr 60X90\nMP0032', 'Pliego', 5),
(143, 'MAULE CAL. 14 225GR 60X90\nMP0043', 'Pliego', 5),
(144, 'MAULE CAL. 14 225GR 70X100\nMP0036', 'Pliego', 5),
(145, 'MAULE CAL. 15 240 GR 70X100\nMP0037', 'Pliego', 5),
(146, 'MAULE CAL. 16 245GR 105X50\nBPC0005', 'Pliego', 5),
(147, 'MAULE CAL. 16 245gr 60X90\nMP0033', 'Pliego', 5),
(148, 'MAULE CAL. 16 245GR 70X100\nMP0028', 'Pliego', 5),
(149, 'MAULE CAL. 16 255GR 60X90\nMP0044', 'Pliego', 5),
(150, 'MAULE CAL. 16 255GR 70X100\nMP0038', 'Pliego', 5),
(151, 'MAULE CAL. 18 275 GR 70X100\nMP0029', 'Pliego', 5),
(152, 'MAULE CAL. 18 275gr 60X90\nMP0034', 'Pliego', 5),
(153, 'MAULE CAL. 18 280 GR 60X90\nMP0045', 'Pliego', 5),
(154, 'MAULE CAL. 18 280GR 70X100\nMP0039', 'Pliego', 5),
(155, 'MAULE CAL. 20 300GR 60X90\nMP0046', 'Pliego', 5),
(156, 'MAULE CAL. 20 300GR 70X100\nMP0040', 'Pliego', 5),
(157, 'MAULE CAL. 20 305GR 70X100\nMP0030', 'Pliego', 5),
(158, 'MAULE CAL. 22 330GR 60X90\nMP0047', 'Pliego', 5),
(159, 'MAULE CAL. 22 330GR 70X100\nMP0041', 'Pliego', 5),
(160, 'MICROCORRUGADO BLANCO/KRAFT\nMP0123', 'Pliego', 5),
(161, 'MICROCORRUGADO KRAFT/ KRAFT \nMP0124', 'Pliego', 5),
(162, 'PAPEL ANTIGRASO DE 40GR 70*100\nMP0131', 'Pliego', 5),
(163, 'PAPEL ANTIGRASO DE 50GR 70*100\nMP0132', 'Pliego', 5),
(164, 'PAPEL DE HORNEO PRIME BAKER 40GR 70*100\nMP013', 'Pliego', 5),
(165, 'PAPEL LWC 70GR 60*90\nMP0128', 'Pliego', 5),
(166, 'PAPEL LWC 70GR 70*100\nMP0127', 'Pliego', 5),
(167, 'PAPEL LWC 80GR 60*90\nMP0130', 'Pliego', 5),
(168, 'PAPEL LWC 80GR 70*100\nMP0129', 'Pliego', 5),
(169, 'PAPEL PERIODICO CORRIENTE 48.8 70*100\nMP0125', 'Pliego', 5),
(170, 'PAPEL PERIODICO CORRIENTE 48.8 GR. 60*90\nMP01', 'Pliego', 5),
(171, 'PAPEL QUIMICO FINAL\nMP0025', 'Pliego', 5),
(172, 'PAPEL QUIMICO INTERMEDIO\nMP0024', 'Pliego', 5),
(173, 'PAPEL QUIMICO ORIGINAL\nMP0023', 'Pliego', 5),
(174, 'PCOTE B.D. 225 GR 70*100\nMP0074', 'Pliego', 5),
(175, 'PCOTE B.D. 250 GR 70*100\nMP0075', 'Pliego', 5),
(176, 'PCOTE B.D. 280 GR 60*90\nMP0080', 'Pliego', 5),
(177, 'PCOTE B.D. 280 GR 70*100\nMP0076', 'Pliego', 5),
(178, 'PCOTE B.D. 300 GR 60*90\nMP0081', 'Pliego', 5),
(179, 'PCOTE B.D. 300 GR 70*100\nMP0077', 'Pliego', 5),
(180, 'PCOTE B.D. 320 GR 60*90\nMP0082', 'Pliego', 5),
(181, 'PCOTE B.D. 320 GR 70*100\nMP0078', 'Pliego', 5),
(182, 'PCOTE BAJADENSIDAD 250 60*90\nMP0079', 'Pliego', 5),
(183, 'PROPALBOND BEIGE 70GR 70*100\nMP0073', 'Pliego', 5),
(184, 'PROPALCOTE 210 C1S 70*100\nMP0022', 'Pliego', 5),
(185, 'PROPALCOTE C1S 115 70*100\nMP0020', 'Pliego', 5),
(186, 'PROPALCOTE C1S 160GR 70*100\nMP0021', 'Pliego', 5),
(187, 'PROPALCOTE C1S 90 70*100\nMP0019', 'Pliego', 5),
(188, 'AMARILLO PIRALVEX (amarillo) (KG)\nAM1', 'Kilogramo', 6),
(189, 'AZUL INVENT ANTIALXALY (azul) (KG)\nAZ1', 'Kilogramo', 6),
(190, 'AZUL MOULTISOLUTER (azul) (KG)\nAZ60', 'Kilogramo', 6),
(191, 'AZUL ORIENTAL (azul) (KG)\nAZ2', 'Kilogramo', 6),
(192, 'AZUL REFLEX IMITACION (azul) (KG)\nAZ4', 'Kilogramo', 6),
(193, 'BARNIZ OP ALTO SECADO :BF01 (KG)\nBAR01', 'Kilogramo', 6),
(194, 'BARNIZ SLIM P AROMATIZADO (KG)\nRD2', 'Kilogramo', 6),
(195, 'BARNIZ UV OFFSET (KG)\nBAR02', 'Kilogramo', 6),
(196, 'BLANCO OPACO (blanco) (KG)\nBL1', 'Kilogramo', 6),
(197, 'BRILLO LITOGRAFICO (KG)\nLT1', 'Kilogramo', 6),
(198, 'BRILLO UV (KG)\nUV1', 'Kilogramo', 6),
(199, 'CROMOPHARM (verde) (KG)\nVE1', 'Kilogramo', 6),
(200, 'MORADO PLEG FENNYN (morado) (KG)\nMD3', 'Kilogramo', 6),
(201, 'PANTONE 021-C (naranja) (KG)\nNJ1', 'Kilogramo', 6),
(202, 'PANTONE 032-C (rojo) (KG)\nRJ1', 'Kilogramo', 6),
(203, 'PANTONE 072-C (azul) (KG)\nAZ6', 'Kilogramo', 6),
(204, 'PANTONE 0821 (azul) (KG)\nAZ5', 'Kilogramo', 6),
(205, 'PANTONE 100-C (amarillo) (KG)\nAM2', 'Kilogramo', 6),
(206, 'PANTONE 104-C (ocre) (KG)\nOC1', 'Kilogramo', 6),
(207, 'PANTONE 110-C (amarillo) (KG)\nAM3', 'Kilogramo', 6),
(208, 'PANTONE 116-C (amarillo) (KG)\nAM4', 'Kilogramo', 6),
(209, 'PANTONE 123-C (amarillo) (KG)\nAM5', 'Kilogramo', 6),
(210, 'PANTONE 124-C (amarillo) (KG)\nAM7', 'Kilogramo', 6),
(211, 'PANTONE 1245-C (ocre) (KG)\nOC2', 'Kilogramo', 6),
(212, 'PANTONE 129-C (amarillo) (KG)\nAM8', 'Kilogramo', 6),
(213, 'PANTONE 130-C (amarillo) (KG)\nAM9', 'Kilogramo', 6),
(214, 'PANTONE 137-C (naranja) (KG)\nNJ5', 'Kilogramo', 6),
(215, 'PANTONE 1375-C (naranja) (KG)\nNJ3', 'Kilogramo', 6),
(216, 'PANTONE 1405-C (sepia) (KG)\nSP1', 'Kilogramo', 6),
(217, 'PANTONE 143-C (amarillo) (KG)\nAM10', 'Kilogramo', 6),
(218, 'PANTONE 1505-C (naranja) (KG)\nNJ6', 'Kilogramo', 6),
(219, 'PANTONE 151-C (naranja) (KG)\nNJ7', 'Kilogramo', 6),
(220, 'PANTONE 152-C (naranja) (KG)\nNJ10', 'Kilogramo', 6),
(221, 'PANTONE 1525-C (naranja) (KG)\nNJ9', 'Kilogramo', 6),
(222, 'PANTONE 158-C (naranja) (KG)\nNJ12', 'Kilogramo', 6),
(223, 'PANTONE 1585-C (naranja) (KG)\nNJ11', 'Kilogramo', 6),
(224, 'PANTONE 162-C (naranja) (KG)\nNJ13', 'Kilogramo', 6),
(225, 'PANTONE 1665-C (naranja) (KG)\nNJ14', 'Kilogramo', 6),
(226, 'PANTONE 171-C (172) (naranja) (KG)\nNJ15', 'Kilogramo', 6),
(227, 'PANTONE 174-C (sepia) (KG)\nSP2', 'Kilogramo', 6),
(228, 'PANTONE 1767-C (KG)\nRD1', 'Kilogramo', 6),
(229, 'PANTONE 1795-C (rojo) (KG)\nRJ2', 'Kilogramo', 6),
(230, 'PANTONE 185-C (rojo) (KG)\nRJ3', 'Kilogramo', 6),
(231, 'PANTONE 193-C (rojo) (KG)\nRJ5', 'Kilogramo', 6),
(232, 'PANTONE 200-C (rojo) (KG)\nRJ6', 'Kilogramo', 6),
(233, 'PANTONE 200-C PREPARADO (rojo) (KG)\nRJ7', 'Kilogramo', 6),
(234, 'PANTONE 208-C (rojo) (KG)\nRJ8', 'Kilogramo', 6),
(235, 'PANTONE 213-C (rojo) (KG)\nRJ9', 'Kilogramo', 6),
(236, 'PANTONE 219-C (rojo) (KG)\nRJ10', 'Kilogramo', 6),
(237, 'PANTONE 2272-C (verde) (KG)\nVE3', 'Kilogramo', 6),
(238, 'PANTONE 228-C (rojo) (KG)\nRJ11', 'Kilogramo', 6),
(239, 'PANTONE 2295-C (verde) (KG)\nVE4', 'Kilogramo', 6),
(240, 'PANTONE 2425-C (purpura) (KG)\nPR1', 'Kilogramo', 6),
(241, 'PANTONE 247-C (purpura) (KG)\nPR4', 'Kilogramo', 6),
(242, 'PANTONE 253-C (purpura) (KG)\nPR5', 'Kilogramo', 6),
(243, 'PANTONE 254-C (purpura) (KG)\nPR6', 'Kilogramo', 6),
(244, 'PANTONE 258-C (violeta) (KG)\nVT2', 'Kilogramo', 6),
(245, 'PANTONE 2582-C (purpura) (KG)\nPR7', 'Kilogramo', 6),
(246, 'PANTONE 2592-C (purpura) (KG)\nPR8', 'Kilogramo', 6),
(247, 'PANTONE 2602-C (violeta) (KG)\nVT3', 'Kilogramo', 6),
(248, 'PANTONE 2603-C (violeta) (KG)\nVT4', 'Kilogramo', 6),
(249, 'PANTONE 261-C (morado) (KG)\nMD1', 'Kilogramo', 6),
(250, 'PANTONE 266-C (violeta) (KG)\nVT6', 'Kilogramo', 6),
(251, 'PANTONE 2718-C (azul) (KG)\nAZ7', 'Kilogramo', 6),
(252, 'PANTONE 2745-C (violeta) (KG)\nVT7', 'Kilogramo', 6),
(253, 'PANTONE 2746-C (azul) (KG)\nAZ8', 'Kilogramo', 6),
(254, 'PANTONE 2747-C (azul) (KG)\nAZ10', 'Kilogramo', 6),
(255, 'PANTONE 275-C (azul) (KG)\nAZ11', 'Kilogramo', 6),
(256, 'PANTONE 279-C (azul) (KG)\nAZ12', 'Kilogramo', 6),
(257, 'PANTONE 280-C (azul) (KG)\nAZ13', 'Kilogramo', 6),
(258, 'PANTONE 282-C (azul) (KG)\nAZ14', 'Kilogramo', 6),
(259, 'PANTONE 284-C (azul) (KG)\nAZ16', 'Kilogramo', 6),
(260, 'PANTONE 285-C (azul) (KG)\nAZ17', 'Kilogramo', 6),
(261, 'PANTONE 286-C (azul) (KG)\nAZ20', 'Kilogramo', 6),
(262, 'PANTONE 291-C (azul) (KG)\nAZ21', 'Kilogramo', 6),
(263, 'PANTONE 292-C (azul) (KG)\nAZ23', 'Kilogramo', 6),
(264, 'PANTONE 2925-C (azul) (KG)\nAZ22', 'Kilogramo', 6),
(265, 'PANTONE 293-C (azul) (KG)\nAZ26', 'Kilogramo', 6),
(266, 'PANTONE 2935-C (azul) (KG)\nAZ24', 'Kilogramo', 6),
(267, 'PANTONE 2945-C (azul) (KG)\nAZ29', 'Kilogramo', 6),
(268, 'PANTONE 295-C (azul) (KG)\nAZ31', 'Kilogramo', 6),
(269, 'PANTONE 298-C (azul) (KG)\nAZ34', 'Kilogramo', 6),
(270, 'PANTONE 2985-C (azul) (KG)\nAZ33', 'Kilogramo', 6),
(271, 'PANTONE 299-C (azul) (KG)\nAZ36', 'Kilogramo', 6),
(272, 'PANTONE 2995-C (azul) (KG)\nAZ35', 'Kilogramo', 6),
(273, 'PANTONE 300-C (azul) (KG)\nAZ38', 'Kilogramo', 6),
(274, 'PANTONE 3005-C (azul) (KG)\nAZ61', 'Kilogramo', 6),
(275, 'PANTONE 301-C (azul) (KG)\nAZ40', 'Kilogramo', 6),
(276, 'PANTONE 302-C (azul) (KG)\nAZ42', 'Kilogramo', 6),
(277, 'PANTONE 308-C (azul) (KG)\nAZ43', 'Kilogramo', 6),
(278, 'PANTONE 309-C (azul) (KG)\nAZ44', 'Kilogramo', 6),
(279, 'PANTONE 3105-C (azul) (KG)\nAZ45', 'Kilogramo', 6),
(280, 'PANTONE 311-C (azul) (KG)\nAZ46', 'Kilogramo', 6),
(281, 'PANTONE 3125-C (azul) (KG)\nAZ48', 'Kilogramo', 6),
(282, 'PANTONE 313-C (azul) (KG)\nAZ49', 'Kilogramo', 6),
(283, 'PANTONE 3145-C (azul) (KG)\nAZ51', 'Kilogramo', 6),
(284, 'PANTONE 3155-C (verde) (KG)\nVE5', 'Kilogramo', 6),
(285, 'PANTONE 318-C (verde) (KG)\nVE6', 'Kilogramo', 6),
(286, 'PANTONE 319-C (azul) (KG)\nAZ50', 'Kilogramo', 6),
(287, 'PANTONE 319-C (verde) (KG)\nVE7', 'Kilogramo', 6),
(288, 'PANTONE 320-C (verde) (KG)\nVE10', 'Kilogramo', 6),
(289, 'PANTONE 320-C (verde) (KG)\nVE9', 'Kilogramo', 6),
(290, 'PANTONE 320-C AGUAMARINA (verde) (KG)\nVE11', 'Kilogramo', 6),
(291, 'PANTONE 322-C (verde) (KG)\nVE12', 'Kilogramo', 6),
(292, 'PANTONE 323-C (verde) (KG)\nVE13', 'Kilogramo', 6),
(293, 'PANTONE 3258-C (verde) (KG)\nVE14', 'Kilogramo', 6),
(294, 'PANTONE 326-C OLOPHARM (verde) (KG)\nVE16', 'Kilogramo', 6),
(295, 'PANTONE 3262-C (verde) (KG)\nVE15', 'Kilogramo', 6),
(296, 'PANTONE 328-C (verde) (KG)\nVE17', 'Kilogramo', 6),
(297, 'PANTONE 3295-C (verde) (KG)\nVE18', 'Kilogramo', 6),
(298, 'PANTONE 340-C (verde) (KG)\nVE20', 'Kilogramo', 6),
(299, 'PANTONE 347-C (verde) (KG)\nVE21', 'Kilogramo', 6),
(300, 'PANTONE 348-C (verde) (KG)\nVE23', 'Kilogramo', 6),
(301, 'PANTONE 354-C (verde) (KG)\nVE24', 'Kilogramo', 6),
(302, 'PANTONE 357-C (verde) (KG)\nVE25', 'Kilogramo', 6),
(303, 'PANTONE 359-C (verde) (KG)\nVE26', 'Kilogramo', 6),
(304, 'PANTONE 360-C (verde) (KG)\nVE27', 'Kilogramo', 6),
(305, 'PANTONE 361-C (verde) (KG)\nVE28', 'Kilogramo', 6),
(306, 'PANTONE 367-C (verde) (KG)\nVE29', 'Kilogramo', 6),
(307, 'PANTONE 368-C (verde) (KG)\nVE30', 'Kilogramo', 6),
(308, 'PANTONE 369-C (verde) (KG)\nVE31', 'Kilogramo', 6),
(309, 'PANTONE 373-C (verde) (KG)\nVE34', 'Kilogramo', 6),
(310, 'PANTONE 374-C (verde) (KG)\nVE35', 'Kilogramo', 6),
(311, 'PANTONE 378-C (verde) (KG)\nVE36', 'Kilogramo', 6),
(312, 'PANTONE 382-C (verde) (KG)\nVE37', 'Kilogramo', 6),
(313, 'PANTONE 384-C (verde) (KG)\nVE38', 'Kilogramo', 6),
(314, 'PANTONE 384-C OPHARDEX (verde) (KG)\nVE39', 'Kilogramo', 6),
(315, 'PANTONE 390-C (verde) (KG)\nVE40', 'Kilogramo', 6),
(316, 'PANTONE 3955-C (amarillo) (KG)\nAM11', 'Kilogramo', 6),
(317, 'PANTONE 3965-C (amarillo) (KG)\nAM12', 'Kilogramo', 6),
(318, 'PANTONE 397-C (verde) (KG)\nVE41', 'Kilogramo', 6),
(319, 'PANTONE 415-C (gris) (KG)\nGR1', 'Kilogramo', 6),
(320, 'PANTONE 425-C (gris) (KG)\nGR2', 'Kilogramo', 6),
(321, 'PANTONE 430-C (gris) (KG)\nGR3', 'Kilogramo', 6),
(322, 'PANTONE 485-C (rojo) (KG)\nRJ12', 'Kilogramo', 6),
(323, 'PANTONE 533-C (azul) (KG)\nAZ52', 'Kilogramo', 6),
(324, 'PANTONE 541-C (azul) (KG)\nAZ53', 'Kilogramo', 6),
(325, 'PANTONE 5467-C (verde) (KG)\nVE43', 'Kilogramo', 6),
(326, 'PANTONE 5535-C (verde) (KG)\nVE44', 'Kilogramo', 6),
(327, 'PANTONE 562-C (verde) (KG)\nVE45', 'Kilogramo', 6),
(328, 'PANTONE 5743-C (verde) (KG)\nVE46', 'Kilogramo', 6),
(329, 'PANTONE 5773-C (verde) (KG)\nVE48', 'Kilogramo', 6),
(330, 'PANTONE 5773-C (verde) (KG)\nVE49', 'Kilogramo', 6),
(331, 'PANTONE 631-C (azul) (KG)\nAZ54', 'Kilogramo', 6),
(332, 'PANTONE 635-C (azul) (KG)\nAZ55', 'Kilogramo', 6),
(333, 'PANTONE 661-C (azul) (KG)\nAZ56', 'Kilogramo', 6),
(334, 'PANTONE 725-C (violeta) (KG)\nVT9', 'Kilogramo', 6),
(335, 'PANTONE 7406-C (amarillo) (KG)\nAM13', 'Kilogramo', 6),
(336, 'PANTONE 7427-C (rojo) (KG)\nRJ13', 'Kilogramo', 6),
(337, 'PANTONE 7432-C (rojo) (KG)\nRJ15', 'Kilogramo', 6),
(338, 'PANTONE 7474-C (verde) (KG)\nVE50', 'Kilogramo', 6),
(339, 'PANTONE 7488-C (verde) (KG)\nVE51', 'Kilogramo', 6),
(340, 'PANTONE 7683-C (azul) (KG)\nAZ57', 'Kilogramo', 6),
(341, 'PANTONE 7704-C (azul) (KG)\nAZ58', 'Kilogramo', 6),
(342, 'PANTONE 7729-C (verde) (KG)\nVE52', 'Kilogramo', 6),
(343, 'PANTONE 7742-C (verde) (KG)\nVE53', 'Kilogramo', 6),
(344, 'PANTONE 821-C (azul) (KG)\nAZ59', 'Kilogramo', 6),
(345, 'PANTONE 8321-C VERDE METALIZADO (verde) (KG)\n', 'Kilogramo', 6),
(346, 'PANTONE COOL GRAY 10C (gris) (KG)\nGR4', 'Kilogramo', 6),
(347, 'PANTONE REFLEX BLUE C (azul) (KG)\nAZ3', 'Kilogramo', 6),
(348, 'PANTONE WARN GRAY 10C (gris) (KG)\nGR5', 'Kilogramo', 6),
(349, 'PRINTLAC MATE (KG)\nBAR04', 'Kilogramo', 6),
(350, 'RHODAMINE 213C (KG)\nBAR03', 'Kilogramo', 6),
(351, 'ROJO FUEGO (rojo) (KG)\nRJ18', 'Kilogramo', 6),
(352, 'ROJO INDIO (rojo) (KG)\nRJ16', 'Kilogramo', 6),
(353, 'ROJO RODAMINA (rojo) (KG)\nRJ17', 'Kilogramo', 6),
(354, 'SUNCURE STARLUXE AQUE WHITE CK01 (KG)\nBAR05', 'Kilogramo', 6),
(355, 'T- NEGRO STARLUXE (negro) (KG)\nNG1', 'Kilogramo', 6),
(356, 'VERDE ESPECIAL (verde) (KG)\nVE55', 'Kilogramo', 6),
(357, 'CYAN', 'Kilogramo', 6),
(358, 'YELLOW', 'Kilogramo', 6),
(359, 'MAGENTA', 'Kilogramo', 6),
(360, 'BLACK', 'Kilogramo', 6),
(361, 'PANTONE 732-C (cafe) (KG)', 'Kilogramo', 6);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orden_compra`
--

CREATE TABLE `orden_compra` (
  `id_orden_compra` int(11) NOT NULL,
  `num_orden` varchar(45) NOT NULL,
  `fecha_solicitud` date NOT NULL,
  `fecha_entrega` date NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_pago` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orden_compra`
--

INSERT INTO `orden_compra` (`id_orden_compra`, `num_orden`, `fecha_solicitud`, `fecha_entrega`, `id_cliente`, `id_pago`) VALUES
(1, '22819', '2020-02-07', '2020-02-13', 1, 2),
(2, '4502820985', '2020-02-07', '2020-02-18', 2, 3),
(3, '1121', '2020-02-10', '2020-02-25', 3, 2),
(4, '1120', '2020-02-10', '2020-02-25', 3, 2),
(5, '22851', '2020-02-12', '2020-02-19', 1, 2),
(6, '28', '2020-02-12', '2020-02-20', 4, 1),
(7, '575', '2020-02-12', '2020-02-20', 4, 1),
(8, '8862', '2020-02-07', '2020-02-25', 5, 3),
(9, '8854', '2020-02-07', '2020-02-25', 5, 3),
(10, '8857', '2020-02-07', '2020-04-01', 5, 3),
(11, '8765', '2020-01-30', '2020-02-07', 5, 3),
(12, '22771', '2020-01-31', '2020-02-06', 1, 2),
(13, '22770', '2020-01-31', '2020-02-06', 1, 2),
(14, '566', '2020-02-08', '2020-02-21', 4, 1),
(15, '2381', '2020-03-24', '2020-04-10', 6, 4),
(16, '2382', '2020-03-24', '2020-04-10', 6, 3),
(17, '2414', '2020-04-06', '2020-04-22', 6, 3),
(18, '2408', '2020-03-31', '2020-04-16', 6, 3),
(19, '2440', '2020-05-05', '2020-05-15', 6, 2),
(20, '2441', '2020-05-05', '2020-05-22', 6, 2);

-- --------------------------------------------------------

--
-- Table structure for table `orden_pago`
--

CREATE TABLE `orden_pago` (
  `id_orden_pago` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `fecha_vencimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orden_produccion`
--

CREATE TABLE `orden_produccion` (
  `id_orden_produccion` int(11) NOT NULL,
  `fecha_orden` date NOT NULL,
  `lote` varchar(45) NOT NULL,
  `maculatura` int(11) NOT NULL,
  `tamaños_buenos` int(11) NOT NULL,
  `cnt_no_conforme` int(11) NOT NULL,
  `cnt_aprobada` int(11) NOT NULL,
  `cnt_entrega` int(11) NOT NULL,
  `embalaje` varchar(45) NOT NULL,
  `id_estado` int(11) NOT NULL,
  `id_planeacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orden_servicio`
--

CREATE TABLE `orden_servicio` (
  `id_servicio` int(11) NOT NULL,
  `fecha_envio` date NOT NULL,
  `fehca_entrega` date NOT NULL,
  `cantidad` int(11) NOT NULL,
  `descripcion` text NOT NULL,
  `id_orden_produccion` int(11) NOT NULL,
  `id_proveedor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `planeacion_produccion`
--

CREATE TABLE `planeacion_produccion` (
  `id_planeacion` int(11) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_entrega` date NOT NULL,
  `medida_corte` varchar(45) NOT NULL,
  `tamaños` int(11) NOT NULL,
  `sobrante` int(11) NOT NULL,
  `total_tamaños` int(11) NOT NULL,
  `total_pliegos` int(11) NOT NULL,
  `id_ficha_tecnica` int(11) NOT NULL,
  `id_orden_compra` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `procesos`
--

CREATE TABLE `procesos` (
  `id_proceso` int(11) NOT NULL,
  `nombre_proceso` varchar(45) NOT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `procesos`
--

INSERT INTO `procesos` (`id_proceso`, `nombre_proceso`, `id_categoria`) VALUES
(1, 'Corte', 2),
(2, 'Impresion', 2),
(3, 'Plastificado mate', 1),
(4, 'Plastificado frio mate', 1),
(5, 'Dry brillante', 1),
(6, 'Plastificado al calor', 1),
(7, 'Realce', 1),
(8, 'Brillo litografico parcial', 1),
(9, 'Brillo litografico total', 1),
(10, 'Repujado', 1),
(11, 'Brillo uv parcial', 1),
(12, 'Brillo uv total', 1),
(13, 'Estampado', 1),
(14, 'Troquelado', 2),
(15, 'Descartone', 2),
(16, 'Refile', 2),
(17, 'Pegue lateral', 3),
(18, 'Pegue automatico', 3),
(19, 'Pegue semi-automatico', 3),
(20, 'Semicorte', 2),
(21, 'Revision', 2),
(22, 'Empaque', 2);

-- --------------------------------------------------------

--
-- Table structure for table `producto`
--

CREATE TABLE `producto` (
  `id_producto` int(11) NOT NULL,
  `vlr_unitario` float NOT NULL,
  `id_arte` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `producto`
--

INSERT INTO `producto` (`id_producto`, `vlr_unitario`, `id_arte`, `id_categoria`) VALUES
(1, 67, 1, 2),
(2, 108, 2, 1),
(3, 67, 22, 2),
(4, 750, 9, 2),
(5, 224, 3, 1),
(6, 145, 26, 2),
(7, 50, 25, 2),
(8, 49, 24, 2),
(9, 480, 16, 2),
(10, 126, 21, 1),
(11, 335, 14, 2),
(12, 335, 15, 2),
(13, 165, 6, 2),
(14, 260, 7, 2),
(15, 260, 5, 2),
(16, 410, 8, 2),
(17, 267, 13, 2),
(18, 138, 11, 1),
(19, 298, 17, 2),
(20, 125, 18, 2),
(21, 90, 23, 2),
(22, 150, 20, 2),
(23, 145, 19, 2),
(24, 267, 12, 2),
(25, 126, 10, 1),
(26, 200, 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `programacion_mto`
--

CREATE TABLE `programacion_mto` (
  `id_programacion_mto` int(11) NOT NULL,
  `fecha_inicio` datetime NOT NULL,
  `fecha_fin` datetime NOT NULL,
  `horas_previstas` time NOT NULL,
  `observaciones` text DEFAULT NULL,
  `id_tipo_mto` int(11) NOT NULL,
  `id_reporte` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `proveedor`
--

CREATE TABLE `proveedor` (
  `id_proveedor` int(11) NOT NULL,
  `nit` varchar(45) NOT NULL,
  `razon_social` varchar(45) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `telefono` varchar(45) NOT NULL,
  `correo` varchar(45) NOT NULL,
  `persona_contacto` varchar(45) NOT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `proveedor`
--

INSERT INTO `proveedor` (`id_proveedor`, `nit`, `razon_social`, `direccion`, `telefono`, `correo`, `persona_contacto`, `id_categoria`) VALUES
(1, '900046016', 'Termigrafic SAS', 'CR 58 137 B 21', '4201009', 'ventas@termigrafic.com', 'Robinson Pinzon', 2),
(2, '860518132', 'Plastificamos SAS', 'CR 55 17 A 27', '4205061', 'comercial@plastificamos.com', 'Martha Agudelo', 2),
(3, '901009449', 'Plastificadora Colombia SAS', 'CR 28 7 25', '5553654', 'auxiliar.ventas@plasticolombia.com', 'José Aguirre', 2),
(4, '900007348', 'Plasticenter JS', 'CR 25 17 B 24', '2256789', 'comercial@plasticenter.com', 'Camilo Vargas', 2),
(5, ' 800061301', 'Pegacart', 'CL 28 13A 15', '4678634', 'contacto@pegacart.com', 'Leo Garzon', 2),
(6, '901144306', 'Digital Center', 'CL 11 28 31', '5349087', 'digitalcenter@gmail.com', 'Natalia Ramirez', 2),
(7, ' 900308123', 'Xepia', 'CR 27 9 43', '3459056', 'diseño@xepia.com', 'Diego Lopez', 2),
(8, '860047066', 'Cooperativa de Impresores de Bogotá', 'CR 31 22 B 15', '2088700', 'puntodeventa@copi.com', 'Jonathan Rodriguez', 1),
(9, '901243602', 'Papeleria Belpar', 'CLL 4 G 59 17 ', '3456789', 'contacto@papebel.com', 'Maritza Rojas', 1),
(10, '800055353', 'CMPI SAS', 'CLL 14 57 36', '4142934', 'wcolon@cmpi.com', 'Wilson Colo', 1),
(11, '860028580', 'Dispapeles SAS', 'AV CR 30 13 A 33', '2774052', 'ventas.bogota@dispapeles.com', 'Nestor Bello', 1),
(12, '900305711', 'Destek Comercial SAS', 'CR 60 4G 53', '2602281', 'comercial@destek.com', 'Diego Prada', 1),
(13, '901137443', 'Produquimica Diaz SAS', 'CR 47 A 59 C 48 SUR', '3006069', '', 'Rosa Torres', 1),
(14, '901320194', 'Monograma Digital', 'CLL 63 BIS 70 D 47', '2001551', 'planchas@monograma.com', 'Jose Avendaño', 1),
(15, '900440928', 'Marketeando', 'CR 62 17 32', '4057139', 'troqueles@marketeando.com', 'William Ospina', 1);

-- --------------------------------------------------------

--
-- Table structure for table `rel_entmat_mat`
--

CREATE TABLE `rel_entmat_mat` (
  `cantidad` float NOT NULL,
  `id_material` int(11) NOT NULL,
  `id_entrada` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `rel_ftecnica_material`
--

CREATE TABLE `rel_ftecnica_material` (
  `id_ficha_tecnica` int(11) NOT NULL,
  `id_material` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rel_ftecnica_material`
--

INSERT INTO `rel_ftecnica_material` (`id_ficha_tecnica`, `id_material`) VALUES
(1, 142),
(1, 300),
(1, 305),
(1, 360),
(2, 185),
(2, 357),
(2, 358),
(2, 359),
(2, 360),
(6, 90),
(6, 357),
(6, 358),
(6, 359),
(6, 360),
(9, 152),
(9, 357),
(9, 358),
(9, 359),
(9, 360),
(10, 185),
(10, 357),
(10, 358),
(10, 359),
(10, 360),
(11, 151),
(11, 357),
(11, 358),
(11, 359),
(11, 360),
(11, 228),
(12, 151),
(12, 357),
(12, 358),
(12, 359),
(12, 360),
(12, 228),
(17, 146),
(17, 357),
(17, 358),
(17, 359),
(17, 360),
(17, 247),
(18, 186),
(18, 357),
(18, 358),
(18, 359),
(18, 360),
(24, 146),
(24, 357),
(24, 358),
(24, 359),
(24, 360),
(24, 347),
(25, 185),
(25, 357),
(25, 358),
(25, 359),
(25, 360),
(25, 361),
(3, 142),
(3, 238),
(3, 244),
(3, 360),
(4, 142),
(4, 326),
(4, 339),
(5, 184),
(5, 352),
(5, 360),
(8, 177),
(8, 324),
(8, 360),
(22, 142),
(22, 287),
(22, 260),
(23, 142),
(23, 248),
(23, 260),
(26, 140),
(26, 235),
(26, 324),
(7, 177),
(7, 306),
(7, 338),
(7, 339),
(7, 360),
(13, 90),
(13, 235),
(13, 263),
(13, 324),
(15, 146),
(15, 342),
(15, 339),
(15, 226),
(16, 90),
(16, 235),
(16, 263),
(16, 324),
(19, 146),
(19, 190),
(19, 360),
(19, 358),
(20, 147),
(20, 190),
(20, 360),
(20, 358),
(21, 142),
(21, 292),
(21, 208),
(21, 360);

-- --------------------------------------------------------

--
-- Table structure for table `rel_ftecnica_procesos`
--

CREATE TABLE `rel_ftecnica_procesos` (
  `id_ficha_tecnica` int(11) NOT NULL,
  `id_proceso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rel_ftecnica_procesos`
--

INSERT INTO `rel_ftecnica_procesos` (`id_ficha_tecnica`, `id_proceso`) VALUES
(1, 1),
(1, 2),
(1, 8),
(1, 10),
(1, 14),
(1, 15),
(1, 17),
(1, 21),
(1, 22),
(2, 1),
(2, 2),
(2, 16),
(2, 21),
(2, 22),
(3, 1),
(3, 2),
(3, 8),
(3, 10),
(3, 14),
(3, 15),
(3, 17),
(3, 21),
(3, 22),
(21, 1),
(21, 2),
(21, 8),
(21, 10),
(21, 14),
(21, 15),
(21, 17),
(21, 21),
(21, 22),
(4, 1),
(4, 2),
(4, 11),
(4, 14),
(4, 15),
(4, 17),
(4, 21),
(4, 22),
(5, 1),
(5, 2),
(4, 14),
(4, 15),
(4, 21),
(4, 22),
(18, 1),
(18, 2),
(18, 14),
(18, 15),
(18, 21),
(18, 22),
(6, 1),
(6, 2),
(6, 8),
(6, 14),
(6, 15),
(6, 17),
(6, 18),
(6, 21),
(6, 22),
(19, 1),
(19, 2),
(19, 8),
(19, 14),
(19, 15),
(19, 17),
(19, 18),
(19, 21),
(19, 22),
(20, 1),
(20, 2),
(20, 8),
(20, 14),
(20, 15),
(20, 17),
(20, 18),
(20, 21),
(20, 22),
(7, 1),
(7, 2),
(7, 8),
(7, 14),
(7, 15),
(7, 17),
(7, 21),
(7, 22),
(8, 1),
(8, 2),
(8, 8),
(8, 14),
(8, 15),
(8, 17),
(8, 21),
(8, 22),
(9, 1),
(9, 2),
(9, 11),
(9, 14),
(9, 15),
(9, 17),
(9, 18),
(9, 21),
(9, 22),
(11, 1),
(11, 2),
(11, 11),
(11, 14),
(11, 15),
(11, 17),
(11, 18),
(11, 21),
(11, 22),
(12, 1),
(12, 2),
(12, 11),
(12, 14),
(12, 15),
(12, 17),
(12, 18),
(12, 21),
(12, 22),
(10, 1),
(10, 2),
(10, 16),
(10, 21),
(10, 22),
(13, 1),
(13, 2),
(13, 3),
(13, 14),
(13, 15),
(13, 17),
(13, 21),
(13, 22),
(14, 1),
(14, 2),
(14, 3),
(14, 14),
(14, 15),
(14, 17),
(14, 21),
(14, 22),
(15, 1),
(15, 2),
(15, 3),
(15, 14),
(15, 15),
(15, 17),
(15, 21),
(15, 22),
(16, 1),
(16, 2),
(16, 3),
(16, 14),
(16, 15),
(16, 17),
(16, 21),
(16, 22),
(26, 1),
(26, 2),
(26, 3),
(26, 14),
(26, 15),
(26, 17),
(26, 21),
(26, 22),
(17, 1),
(17, 2),
(17, 5),
(17, 14),
(17, 15),
(17, 17),
(17, 21),
(17, 22),
(24, 1),
(24, 2),
(24, 5),
(24, 14),
(24, 15),
(24, 17),
(24, 21),
(24, 22),
(22, 1),
(22, 2),
(22, 11),
(22, 10),
(22, 14),
(22, 15),
(22, 17),
(22, 21),
(22, 22),
(23, 1),
(23, 2),
(23, 3),
(23, 11),
(23, 10),
(23, 14),
(23, 15),
(23, 17),
(23, 21),
(23, 22),
(25, 1),
(25, 2),
(25, 11),
(25, 16),
(25, 21),
(25, 22);

-- --------------------------------------------------------

--
-- Table structure for table `rel_oproduccion_procesos`
--

CREATE TABLE `rel_oproduccion_procesos` (
  `inicio_proceso` datetime NOT NULL,
  `fin_proceso` datetime NOT NULL,
  `id_orden_produccion` int(11) NOT NULL,
  `id_proceso` int(11) NOT NULL,
  `id_empleado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `rel_prod_opago`
--

CREATE TABLE `rel_prod_opago` (
  `precio` float NOT NULL,
  `iva` float NOT NULL,
  `total` float NOT NULL,
  `id_orden_pago` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `id_remision` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `rel_pro_ocompra`
--

CREATE TABLE `rel_pro_ocompra` (
  `id_orden_compra` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rel_pro_ocompra`
--

INSERT INTO `rel_pro_ocompra` (`id_orden_compra`, `id_producto`, `cantidad`, `precio`) VALUES
(1, 2, 3000, 324000),
(2, 5, 1000, 224000),
(3, 26, 3000, 600000),
(4, 15, 5000, 1300000),
(4, 13, 15000, 2475000),
(4, 14, 5000, 1300000),
(4, 16, 3500, 1435000),
(4, 4, 1000, 750000),
(5, 25, 4000, 504000),
(6, 8, 50000, 2450000),
(7, 7, 100000, 5000000),
(8, 18, 6000, 828000),
(9, 24, 1500, 400500),
(9, 17, 1000, 267000),
(9, 11, 6600, 2211000),
(9, 12, 4100, 1373500),
(10, 12, 4000, 1340000),
(11, 9, 5000, 2400000),
(12, 10, 3000, 378000),
(12, 25, 5000, 630000),
(13, 2, 3000, 324000),
(14, 6, 52000, 7540000),
(15, 19, 6000, 1788000),
(16, 20, 30000, 3750000),
(17, 1, 30000, 2010000),
(18, 23, 10000, 1450000),
(18, 22, 16000, 2400000),
(19, 3, 20000, 1340000),
(20, 21, 10000, 900000);

-- --------------------------------------------------------

--
-- Table structure for table `rel_salmat_mat`
--

CREATE TABLE `rel_salmat_mat` (
  `cantidad` float NOT NULL,
  `id_material` int(11) NOT NULL,
  `id_salida` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `remision`
--

CREATE TABLE `remision` (
  `id_remision` int(11) NOT NULL,
  `fecha_entrega` date NOT NULL,
  `id_orden_produccion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `reporte`
--

CREATE TABLE `reporte` (
  `id_reporte` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `descripcion` text NOT NULL,
  `id_inspeccion` int(11) NOT NULL,
  `id_empleado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `requerimiento_interno`
--

CREATE TABLE `requerimiento_interno` (
  `id_requerimiento` int(11) NOT NULL,
  `num_comprobante` varchar(11) NOT NULL,
  `fecha_hora` date NOT NULL,
  `estado` varchar(45) NOT NULL,
  `id_proveedor` int(11) NOT NULL,
  `id_pago` int(11) NOT NULL,
  `id_planeacion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `requerimiento_interno`
--

INSERT INTO `requerimiento_interno` (`id_requerimiento`, `num_comprobante`, `fecha_hora`, `estado`, `id_proveedor`, `id_pago`, `id_planeacion`) VALUES
(1, '0001', '2020-06-02', 'Cancelado', 12, 1, NULL),
(30, '0002', '2020-09-03', 'Cancelado', 15, 1, NULL),
(32, '0003', '2020-09-03', 'Cancelado', 14, 1, NULL),
(33, '0004', '2020-09-03', 'Activo', 13, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rol`
--

CREATE TABLE `rol` (
  `id_rol` int(11) NOT NULL,
  `nombre_rol` varchar(45) NOT NULL,
  `descripcion` text NOT NULL,
  `permisos` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rol`
--

INSERT INTO `rol` (`id_rol`, `nombre_rol`, `descripcion`, `permisos`) VALUES
(1, 'Gerente', 'Administración de los usuarios y módulos del sistema', 'Crear usuarios, cambio de contraseñas, inactivar usuarios, todas las funciones de los módulos'),
(2, 'Coordinador', 'Permite la gestión del módulo de producción y almacén', 'Generar planeación de producción, generar órdenes de producción, generar orden de servicio, generar acta de destrucción, generar certificado de calidad, generar requerimiento interno, actualizar entrada y salida de material, generar remisiones de entrega'),
(3, 'Diseñador', 'Permite la gestión de la ficha técnica de los productos', 'Generar ficha técnica, visualizar arte del producto, visualizar materiales, visualizar órden de producción'),
(4, 'Operario', 'Permite el ingreso de información a la orden de producción', 'Visualizar ficha técnica del producto, ingresar información a la orden de producción'),
(5, 'Cliente', 'Permite la interacción en el módulo comercial ', 'Solicitar cotizaciones, ingresar órdenes de compra, ingresar arte del producto, solicitar estado del pedido');

-- --------------------------------------------------------

--
-- Table structure for table `salida_material`
--

CREATE TABLE `salida_material` (
  `id_salida` int(11) NOT NULL,
  `fecha_salida` date NOT NULL,
  `id_orden_produccion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `seguimiento`
--

CREATE TABLE `seguimiento` (
  `id_seguimiento` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `horas_realizadas` time NOT NULL,
  `responsable` varchar(45) NOT NULL,
  `descripcion` text NOT NULL,
  `repuesto` varchar(45) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `id_programacion_mto` int(11) NOT NULL,
  `id_hoja_vida` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tiempo_procesos`
--

CREATE TABLE `tiempo_procesos` (
  `id_tiempo` int(11) NOT NULL,
  `tiempo_preparacion` time NOT NULL,
  `tiempo_muerto` time NOT NULL,
  `tiempo_proceso` time NOT NULL,
  `id_proceso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tipo_mto`
--

CREATE TABLE `tipo_mto` (
  `id_tipo_mto` int(11) NOT NULL,
  `tipo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tipo_mto`
--

INSERT INTO `tipo_mto` (`id_tipo_mto`, `tipo`) VALUES
(1, 'Correctivo'),
(2, 'Preventivo');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuarios` int(11) NOT NULL,
  `activo` tinyint(4) NOT NULL,
  `nombre_usuario` varchar(16) NOT NULL,
  `contraseña` varchar(16) NOT NULL,
  `id_rol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id_usuarios`, `activo`, `nombre_usuario`, `contraseña`, `id_rol`) VALUES
(1, 1, 'dialet', 'admin', 1),
(2, 1, 'elpinro', '12345678', 4),
(3, 1, 'emyar', '12345678', 3),
(4, 1, 'yujicrio', '12345678', 4),
(5, 1, 'luismart', '12345678', 4),
(6, 1, 'nelagui', '12345678', 4),
(7, 1, 'ricarcalde', '12345678', 4),
(8, 1, 'nisanech', '12345678', 2),
(9, 1, 'pintonner', '12345678', 5),
(10, 1, 'saintgobain', '12345678', 5),
(11, 1, 'itallent', '12345678', 5),
(12, 1, 'lgpharma', '12345678', 5),
(13, 1, 'labnatural', '12345678', 5),
(14, 1, 'opharmlimit', '12345678', 5),
(15, 1, 'quirupossas', '12345678', 5),
(16, 1, 'labnovaderma', '12345678', 5),
(17, 1, 'lamoniquireña', '12345678', 5),
(18, 1, 'lgpharma', '12345678', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acta_destruccion`
--
ALTER TABLE `acta_destruccion`
  ADD PRIMARY KEY (`id_acta`),
  ADD KEY `id_orden_produccion` (`id_orden_produccion`);

--
-- Indexes for table `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`id_area`);

--
-- Indexes for table `arte_producto`
--
ALTER TABLE `arte_producto`
  ADD PRIMARY KEY (`id_arte`),
  ADD KEY `id_cliente` (`id_cliente`);

--
-- Indexes for table `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`id_cargo`),
  ADD KEY `id_area` (`id_area`);

--
-- Indexes for table `categoria_maq_equi`
--
ALTER TABLE `categoria_maq_equi`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indexes for table `categoria_material`
--
ALTER TABLE `categoria_material`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indexes for table `categoria_proceso`
--
ALTER TABLE `categoria_proceso`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indexes for table `categoria_producto`
--
ALTER TABLE `categoria_producto`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indexes for table `categoria_proveedor`
--
ALTER TABLE `categoria_proveedor`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indexes for table `certificado_calidad`
--
ALTER TABLE `certificado_calidad`
  ADD PRIMARY KEY (`id_certificado`),
  ADD KEY `id_orden_produccion` (`id_orden_produccion`);

--
-- Indexes for table `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`),
  ADD KEY `id_usuarios` (`id_usuarios`);

--
-- Indexes for table `condicion_pago`
--
ALTER TABLE `condicion_pago`
  ADD PRIMARY KEY (`id_pago`);

--
-- Indexes for table `cotizacion`
--
ALTER TABLE `cotizacion`
  ADD PRIMARY KEY (`id_cotizacion`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `id_arte` (`id_arte`);

--
-- Indexes for table `detalle_requerimiento`
--
ALTER TABLE `detalle_requerimiento`
  ADD KEY `id_material` (`id_material`),
  ADD KEY `id_requerimiento` (`id_requerimiento`);

--
-- Indexes for table `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`id_empleado`),
  ADD KEY `id_usuarios` (`id_usuarios`),
  ADD KEY `id_cargo` (`id_cargo`);

--
-- Indexes for table `entrada_material`
--
ALTER TABLE `entrada_material`
  ADD PRIMARY KEY (`id_entrada`),
  ADD KEY `id_requerimiento` (`id_requerimiento`);

--
-- Indexes for table `estado_pedido`
--
ALTER TABLE `estado_pedido`
  ADD KEY `id_orden_compra` (`id_orden_compra`),
  ADD KEY `id_orden_produccion` (`id_orden_produccion`);

--
-- Indexes for table `estado_produccion`
--
ALTER TABLE `estado_produccion`
  ADD PRIMARY KEY (`id_estado`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ficha_tecnica`
--
ALTER TABLE `ficha_tecnica`
  ADD PRIMARY KEY (`id_ficha_tecnica`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indexes for table `hoja_vida`
--
ALTER TABLE `hoja_vida`
  ADD PRIMARY KEY (`id_hoja_vida`),
  ADD KEY `id_maq_equi` (`id_maq_equi`);

--
-- Indexes for table `inspeccion`
--
ALTER TABLE `inspeccion`
  ADD PRIMARY KEY (`id_inspeccion`),
  ADD KEY `id_maq_equi` (`id_maq_equi`);

--
-- Indexes for table `maquina_equipo`
--
ALTER TABLE `maquina_equipo`
  ADD PRIMARY KEY (`id_maq_equi`),
  ADD KEY `id_categoria` (`id_categoria`),
  ADD KEY `id_area` (`id_area`);

--
-- Indexes for table `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`id_material`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orden_compra`
--
ALTER TABLE `orden_compra`
  ADD PRIMARY KEY (`id_orden_compra`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `id_pago` (`id_pago`);

--
-- Indexes for table `orden_pago`
--
ALTER TABLE `orden_pago`
  ADD PRIMARY KEY (`id_orden_pago`);

--
-- Indexes for table `orden_produccion`
--
ALTER TABLE `orden_produccion`
  ADD PRIMARY KEY (`id_orden_produccion`),
  ADD KEY `id_estado` (`id_estado`),
  ADD KEY `id_planeacion` (`id_planeacion`);

--
-- Indexes for table `orden_servicio`
--
ALTER TABLE `orden_servicio`
  ADD PRIMARY KEY (`id_servicio`),
  ADD KEY `id_orden_produccion` (`id_orden_produccion`),
  ADD KEY `id_proveedor` (`id_proveedor`);

--
-- Indexes for table `planeacion_produccion`
--
ALTER TABLE `planeacion_produccion`
  ADD PRIMARY KEY (`id_planeacion`),
  ADD UNIQUE KEY `id_ficha_tecnica` (`id_ficha_tecnica`) USING BTREE,
  ADD KEY `id_orden_compra` (`id_orden_compra`);

--
-- Indexes for table `procesos`
--
ALTER TABLE `procesos`
  ADD PRIMARY KEY (`id_proceso`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indexes for table `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `id_arte` (`id_arte`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indexes for table `programacion_mto`
--
ALTER TABLE `programacion_mto`
  ADD PRIMARY KEY (`id_programacion_mto`),
  ADD KEY `id_tipo_mto` (`id_tipo_mto`),
  ADD KEY `id_reporte` (`id_reporte`);

--
-- Indexes for table `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`id_proveedor`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indexes for table `rel_entmat_mat`
--
ALTER TABLE `rel_entmat_mat`
  ADD KEY `id_material` (`id_material`),
  ADD KEY `id_entrada` (`id_entrada`);

--
-- Indexes for table `rel_ftecnica_material`
--
ALTER TABLE `rel_ftecnica_material`
  ADD KEY `id_ficha_tecnica` (`id_ficha_tecnica`),
  ADD KEY `id_material` (`id_material`);

--
-- Indexes for table `rel_ftecnica_procesos`
--
ALTER TABLE `rel_ftecnica_procesos`
  ADD KEY `id_ficha_tecnica` (`id_ficha_tecnica`),
  ADD KEY `id_proceso` (`id_proceso`);

--
-- Indexes for table `rel_oproduccion_procesos`
--
ALTER TABLE `rel_oproduccion_procesos`
  ADD KEY `id_orden_produccion` (`id_orden_produccion`),
  ADD KEY `id_proceso` (`id_proceso`),
  ADD KEY `id_empleado` (`id_empleado`);

--
-- Indexes for table `rel_prod_opago`
--
ALTER TABLE `rel_prod_opago`
  ADD KEY `id_orden_pago` (`id_orden_pago`),
  ADD KEY `id_producto` (`id_producto`),
  ADD KEY `id_remision` (`id_remision`);

--
-- Indexes for table `rel_pro_ocompra`
--
ALTER TABLE `rel_pro_ocompra`
  ADD KEY `id_orden_compra` (`id_orden_compra`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indexes for table `rel_salmat_mat`
--
ALTER TABLE `rel_salmat_mat`
  ADD KEY `id_material` (`id_material`),
  ADD KEY `id_salida` (`id_salida`);

--
-- Indexes for table `remision`
--
ALTER TABLE `remision`
  ADD PRIMARY KEY (`id_remision`),
  ADD KEY `id_orden_produccion` (`id_orden_produccion`);

--
-- Indexes for table `reporte`
--
ALTER TABLE `reporte`
  ADD PRIMARY KEY (`id_reporte`),
  ADD KEY `id_inspeccion` (`id_inspeccion`),
  ADD KEY `id_empleado` (`id_empleado`);

--
-- Indexes for table `requerimiento_interno`
--
ALTER TABLE `requerimiento_interno`
  ADD PRIMARY KEY (`id_requerimiento`),
  ADD KEY `id_proveedor` (`id_proveedor`),
  ADD KEY `id_pago` (`id_pago`),
  ADD KEY `id_planeacion` (`id_planeacion`);

--
-- Indexes for table `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indexes for table `salida_material`
--
ALTER TABLE `salida_material`
  ADD PRIMARY KEY (`id_salida`),
  ADD KEY `id_orden_produccion` (`id_orden_produccion`);

--
-- Indexes for table `seguimiento`
--
ALTER TABLE `seguimiento`
  ADD PRIMARY KEY (`id_seguimiento`),
  ADD KEY `id_programacion_mto` (`id_programacion_mto`),
  ADD KEY `id_hoja_vida` (`id_hoja_vida`);

--
-- Indexes for table `tiempo_procesos`
--
ALTER TABLE `tiempo_procesos`
  ADD PRIMARY KEY (`id_tiempo`),
  ADD KEY `id_proceso` (`id_proceso`);

--
-- Indexes for table `tipo_mto`
--
ALTER TABLE `tipo_mto`
  ADD PRIMARY KEY (`id_tipo_mto`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuarios`),
  ADD KEY `id_rol` (`id_rol`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acta_destruccion`
--
ALTER TABLE `acta_destruccion`
  MODIFY `id_acta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `area`
--
ALTER TABLE `area`
  MODIFY `id_area` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `arte_producto`
--
ALTER TABLE `arte_producto`
  MODIFY `id_arte` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `cargo`
--
ALTER TABLE `cargo`
  MODIFY `id_cargo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categoria_maq_equi`
--
ALTER TABLE `categoria_maq_equi`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categoria_material`
--
ALTER TABLE `categoria_material`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categoria_proceso`
--
ALTER TABLE `categoria_proceso`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `categoria_producto`
--
ALTER TABLE `categoria_producto`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categoria_proveedor`
--
ALTER TABLE `categoria_proveedor`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `condicion_pago`
--
ALTER TABLE `condicion_pago`
  MODIFY `id_pago` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cotizacion`
--
ALTER TABLE `cotizacion`
  MODIFY `id_cotizacion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `empleado`
--
ALTER TABLE `empleado`
  MODIFY `id_empleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `entrada_material`
--
ALTER TABLE `entrada_material`
  MODIFY `id_entrada` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `estado_produccion`
--
ALTER TABLE `estado_produccion`
  MODIFY `id_estado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ficha_tecnica`
--
ALTER TABLE `ficha_tecnica`
  MODIFY `id_ficha_tecnica` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `hoja_vida`
--
ALTER TABLE `hoja_vida`
  MODIFY `id_hoja_vida` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `inspeccion`
--
ALTER TABLE `inspeccion`
  MODIFY `id_inspeccion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `maquina_equipo`
--
ALTER TABLE `maquina_equipo`
  MODIFY `id_maq_equi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `material`
--
ALTER TABLE `material`
  MODIFY `id_material` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=362;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orden_compra`
--
ALTER TABLE `orden_compra`
  MODIFY `id_orden_compra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `orden_pago`
--
ALTER TABLE `orden_pago`
  MODIFY `id_orden_pago` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orden_produccion`
--
ALTER TABLE `orden_produccion`
  MODIFY `id_orden_produccion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orden_servicio`
--
ALTER TABLE `orden_servicio`
  MODIFY `id_servicio` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `planeacion_produccion`
--
ALTER TABLE `planeacion_produccion`
  MODIFY `id_planeacion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `procesos`
--
ALTER TABLE `procesos`
  MODIFY `id_proceso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `producto`
--
ALTER TABLE `producto`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `programacion_mto`
--
ALTER TABLE `programacion_mto`
  MODIFY `id_programacion_mto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `id_proveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `remision`
--
ALTER TABLE `remision`
  MODIFY `id_remision` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reporte`
--
ALTER TABLE `reporte`
  MODIFY `id_reporte` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `requerimiento_interno`
--
ALTER TABLE `requerimiento_interno`
  MODIFY `id_requerimiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `rol`
--
ALTER TABLE `rol`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `salida_material`
--
ALTER TABLE `salida_material`
  MODIFY `id_salida` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seguimiento`
--
ALTER TABLE `seguimiento`
  MODIFY `id_seguimiento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tiempo_procesos`
--
ALTER TABLE `tiempo_procesos`
  MODIFY `id_tiempo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tipo_mto`
--
ALTER TABLE `tipo_mto`
  MODIFY `id_tipo_mto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `acta_destruccion`
--
ALTER TABLE `acta_destruccion`
  ADD CONSTRAINT `acta_destruccion_ibfk_1` FOREIGN KEY (`id_orden_produccion`) REFERENCES `orden_produccion` (`id_orden_produccion`);

--
-- Constraints for table `arte_producto`
--
ALTER TABLE `arte_producto`
  ADD CONSTRAINT `arte_producto_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`);

--
-- Constraints for table `cargo`
--
ALTER TABLE `cargo`
  ADD CONSTRAINT `cargo_ibfk_1` FOREIGN KEY (`id_area`) REFERENCES `area` (`id_area`);

--
-- Constraints for table `certificado_calidad`
--
ALTER TABLE `certificado_calidad`
  ADD CONSTRAINT `certificado_calidad_ibfk_1` FOREIGN KEY (`id_orden_produccion`) REFERENCES `orden_produccion` (`id_orden_produccion`);

--
-- Constraints for table `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `clientes_ibfk_1` FOREIGN KEY (`id_usuarios`) REFERENCES `usuarios` (`id_usuarios`);

--
-- Constraints for table `cotizacion`
--
ALTER TABLE `cotizacion`
  ADD CONSTRAINT `cotizacion_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`),
  ADD CONSTRAINT `cotizacion_ibfk_2` FOREIGN KEY (`id_arte`) REFERENCES `arte_producto` (`id_arte`);

--
-- Constraints for table `detalle_requerimiento`
--
ALTER TABLE `detalle_requerimiento`
  ADD CONSTRAINT `detalle_requerimiento_ibfk_1` FOREIGN KEY (`id_material`) REFERENCES `material` (`id_material`),
  ADD CONSTRAINT `detalle_requerimiento_ibfk_2` FOREIGN KEY (`id_requerimiento`) REFERENCES `requerimiento_interno` (`id_requerimiento`);

--
-- Constraints for table `empleado`
--
ALTER TABLE `empleado`
  ADD CONSTRAINT `empleado_ibfk_1` FOREIGN KEY (`id_usuarios`) REFERENCES `usuarios` (`id_usuarios`),
  ADD CONSTRAINT `empleado_ibfk_2` FOREIGN KEY (`id_cargo`) REFERENCES `cargo` (`id_cargo`);

--
-- Constraints for table `entrada_material`
--
ALTER TABLE `entrada_material`
  ADD CONSTRAINT `entrada_material_ibfk_1` FOREIGN KEY (`id_requerimiento`) REFERENCES `requerimiento_interno` (`id_requerimiento`);

--
-- Constraints for table `estado_pedido`
--
ALTER TABLE `estado_pedido`
  ADD CONSTRAINT `estado_pedido_ibfk_1` FOREIGN KEY (`id_orden_compra`) REFERENCES `orden_compra` (`id_orden_compra`),
  ADD CONSTRAINT `estado_pedido_ibfk_2` FOREIGN KEY (`id_orden_produccion`) REFERENCES `orden_produccion` (`id_orden_produccion`);

--
-- Constraints for table `ficha_tecnica`
--
ALTER TABLE `ficha_tecnica`
  ADD CONSTRAINT `ficha_tecnica_ibfk_3` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`);

--
-- Constraints for table `hoja_vida`
--
ALTER TABLE `hoja_vida`
  ADD CONSTRAINT `hoja_vida_ibfk_1` FOREIGN KEY (`id_maq_equi`) REFERENCES `maquina_equipo` (`id_maq_equi`);

--
-- Constraints for table `inspeccion`
--
ALTER TABLE `inspeccion`
  ADD CONSTRAINT `inspeccion_ibfk_1` FOREIGN KEY (`id_maq_equi`) REFERENCES `maquina_equipo` (`id_maq_equi`);

--
-- Constraints for table `maquina_equipo`
--
ALTER TABLE `maquina_equipo`
  ADD CONSTRAINT `maquina_equipo_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categoria_maq_equi` (`id_categoria`),
  ADD CONSTRAINT `maquina_equipo_ibfk_2` FOREIGN KEY (`id_area`) REFERENCES `area` (`id_area`);

--
-- Constraints for table `material`
--
ALTER TABLE `material`
  ADD CONSTRAINT `material_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categoria_material` (`id_categoria`);

--
-- Constraints for table `orden_compra`
--
ALTER TABLE `orden_compra`
  ADD CONSTRAINT `orden_compra_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`),
  ADD CONSTRAINT `orden_compra_ibfk_2` FOREIGN KEY (`id_pago`) REFERENCES `condicion_pago` (`id_pago`);

--
-- Constraints for table `orden_produccion`
--
ALTER TABLE `orden_produccion`
  ADD CONSTRAINT `orden_produccion_ibfk_1` FOREIGN KEY (`id_estado`) REFERENCES `estado_produccion` (`id_estado`),
  ADD CONSTRAINT `orden_produccion_ibfk_2` FOREIGN KEY (`id_planeacion`) REFERENCES `planeacion_produccion` (`id_planeacion`);

--
-- Constraints for table `orden_servicio`
--
ALTER TABLE `orden_servicio`
  ADD CONSTRAINT `orden_servicio_ibfk_1` FOREIGN KEY (`id_orden_produccion`) REFERENCES `orden_produccion` (`id_orden_produccion`),
  ADD CONSTRAINT `orden_servicio_ibfk_2` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`id_proveedor`);

--
-- Constraints for table `planeacion_produccion`
--
ALTER TABLE `planeacion_produccion`
  ADD CONSTRAINT `planeacion_produccion_ibfk_1` FOREIGN KEY (`id_ficha_tecnica`) REFERENCES `ficha_tecnica` (`id_ficha_tecnica`),
  ADD CONSTRAINT `planeacion_produccion_ibfk_2` FOREIGN KEY (`id_orden_compra`) REFERENCES `orden_compra` (`id_orden_compra`);

--
-- Constraints for table `procesos`
--
ALTER TABLE `procesos`
  ADD CONSTRAINT `procesos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categoria_proceso` (`id_categoria`);

--
-- Constraints for table `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`id_arte`) REFERENCES `arte_producto` (`id_arte`),
  ADD CONSTRAINT `producto_ibfk_2` FOREIGN KEY (`id_categoria`) REFERENCES `categoria_producto` (`id_categoria`);

--
-- Constraints for table `programacion_mto`
--
ALTER TABLE `programacion_mto`
  ADD CONSTRAINT `programacion_mto_ibfk_1` FOREIGN KEY (`id_tipo_mto`) REFERENCES `tipo_mto` (`id_tipo_mto`),
  ADD CONSTRAINT `programacion_mto_ibfk_2` FOREIGN KEY (`id_reporte`) REFERENCES `reporte` (`id_reporte`);

--
-- Constraints for table `proveedor`
--
ALTER TABLE `proveedor`
  ADD CONSTRAINT `proveedor_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categoria_proveedor` (`id_categoria`);

--
-- Constraints for table `rel_entmat_mat`
--
ALTER TABLE `rel_entmat_mat`
  ADD CONSTRAINT `rel_entmat_mat_ibfk_1` FOREIGN KEY (`id_material`) REFERENCES `material` (`id_material`),
  ADD CONSTRAINT `rel_entmat_mat_ibfk_2` FOREIGN KEY (`id_entrada`) REFERENCES `entrada_material` (`id_entrada`);

--
-- Constraints for table `rel_ftecnica_material`
--
ALTER TABLE `rel_ftecnica_material`
  ADD CONSTRAINT `rel_ftecnica_material_ibfk_1` FOREIGN KEY (`id_ficha_tecnica`) REFERENCES `ficha_tecnica` (`id_ficha_tecnica`),
  ADD CONSTRAINT `rel_ftecnica_material_ibfk_2` FOREIGN KEY (`id_material`) REFERENCES `material` (`id_material`);

--
-- Constraints for table `rel_ftecnica_procesos`
--
ALTER TABLE `rel_ftecnica_procesos`
  ADD CONSTRAINT `rel_ftecnica_procesos_ibfk_1` FOREIGN KEY (`id_ficha_tecnica`) REFERENCES `ficha_tecnica` (`id_ficha_tecnica`),
  ADD CONSTRAINT `rel_ftecnica_procesos_ibfk_2` FOREIGN KEY (`id_proceso`) REFERENCES `procesos` (`id_proceso`);

--
-- Constraints for table `rel_oproduccion_procesos`
--
ALTER TABLE `rel_oproduccion_procesos`
  ADD CONSTRAINT `rel_oproduccion_procesos_ibfk_1` FOREIGN KEY (`id_orden_produccion`) REFERENCES `orden_produccion` (`id_orden_produccion`),
  ADD CONSTRAINT `rel_oproduccion_procesos_ibfk_2` FOREIGN KEY (`id_proceso`) REFERENCES `procesos` (`id_proceso`),
  ADD CONSTRAINT `rel_oproduccion_procesos_ibfk_3` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id_empleado`);

--
-- Constraints for table `rel_prod_opago`
--
ALTER TABLE `rel_prod_opago`
  ADD CONSTRAINT `rel_prod_opago_ibfk_1` FOREIGN KEY (`id_orden_pago`) REFERENCES `orden_pago` (`id_orden_pago`),
  ADD CONSTRAINT `rel_prod_opago_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`),
  ADD CONSTRAINT `rel_prod_opago_ibfk_3` FOREIGN KEY (`id_remision`) REFERENCES `remision` (`id_remision`);

--
-- Constraints for table `rel_pro_ocompra`
--
ALTER TABLE `rel_pro_ocompra`
  ADD CONSTRAINT `rel_pro_ocompra_ibfk_1` FOREIGN KEY (`id_orden_compra`) REFERENCES `orden_compra` (`id_orden_compra`),
  ADD CONSTRAINT `rel_pro_ocompra_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`);

--
-- Constraints for table `rel_salmat_mat`
--
ALTER TABLE `rel_salmat_mat`
  ADD CONSTRAINT `rel_salmat_mat_ibfk_1` FOREIGN KEY (`id_material`) REFERENCES `material` (`id_material`),
  ADD CONSTRAINT `rel_salmat_mat_ibfk_2` FOREIGN KEY (`id_salida`) REFERENCES `salida_material` (`id_salida`);

--
-- Constraints for table `remision`
--
ALTER TABLE `remision`
  ADD CONSTRAINT `remision_ibfk_1` FOREIGN KEY (`id_orden_produccion`) REFERENCES `orden_produccion` (`id_orden_produccion`);

--
-- Constraints for table `reporte`
--
ALTER TABLE `reporte`
  ADD CONSTRAINT `reporte_ibfk_1` FOREIGN KEY (`id_inspeccion`) REFERENCES `inspeccion` (`id_inspeccion`),
  ADD CONSTRAINT `reporte_ibfk_2` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id_empleado`);

--
-- Constraints for table `requerimiento_interno`
--
ALTER TABLE `requerimiento_interno`
  ADD CONSTRAINT `requerimiento_interno_ibfk_1` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`id_proveedor`),
  ADD CONSTRAINT `requerimiento_interno_ibfk_2` FOREIGN KEY (`id_pago`) REFERENCES `condicion_pago` (`id_pago`),
  ADD CONSTRAINT `requerimiento_interno_ibfk_3` FOREIGN KEY (`id_planeacion`) REFERENCES `planeacion_produccion` (`id_planeacion`);

--
-- Constraints for table `salida_material`
--
ALTER TABLE `salida_material`
  ADD CONSTRAINT `salida_material_ibfk_1` FOREIGN KEY (`id_orden_produccion`) REFERENCES `orden_produccion` (`id_orden_produccion`);

--
-- Constraints for table `seguimiento`
--
ALTER TABLE `seguimiento`
  ADD CONSTRAINT `seguimiento_ibfk_1` FOREIGN KEY (`id_programacion_mto`) REFERENCES `programacion_mto` (`id_programacion_mto`),
  ADD CONSTRAINT `seguimiento_ibfk_2` FOREIGN KEY (`id_hoja_vida`) REFERENCES `hoja_vida` (`id_hoja_vida`);

--
-- Constraints for table `tiempo_procesos`
--
ALTER TABLE `tiempo_procesos`
  ADD CONSTRAINT `tiempo_procesos_ibfk_1` FOREIGN KEY (`id_proceso`) REFERENCES `procesos` (`id_proceso`);

--
-- Constraints for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id_rol`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
