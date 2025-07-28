-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-07-2025 a las 00:54:14
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `guanentino_responda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contraseña` varchar(100) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`id_admin`, `email`, `contraseña`, `nombre`) VALUES
(2, 'npaez@gmail.com', '$2y$10$h3/NJt9FeSv0vgqHOc4PV.g3qvbu7TSJSWFqgHf1q1W5NTsah1mhu', 'Nestor paez'),
(3, 'edwinplata@colegioguanenta.edu.co', '$2y$10$9M/zR8QmVe7caMz02uCgb.wvQ0s/UqFBxYZR92qZEdpyedb/pQ9xO', 'Edwin Santiago Plata Torrado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignaturas`
--

CREATE TABLE `asignaturas` (
  `id_asignatura` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `asignaturas`
--

INSERT INTO `asignaturas` (`id_asignatura`, `nombre`) VALUES
(1, 'Matemáticas'),
(2, 'Lectura Crítica'),
(3, 'Ciencias sociales y competencias ciudadanas'),
(4, 'Biología'),
(5, 'Física'),
(6, 'Química'),
(7, 'Inglés');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `digitador`
--

CREATE TABLE `digitador` (
  `id_digitador` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contraseña` varchar(100) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `digitador`
--

INSERT INTO `digitador` (`id_digitador`, `email`, `contraseña`, `nombre`) VALUES
(1, 'edwinplata@colegioguanenta.edu.co', '1234', 'Edwin Santiago Plata Torrado'),
(3, 'rosamelan@colegioguanenta.edu.co', '$2y$10$59tWnbZI6Ovu41mx36sO4OHiVeg1ULP43TjrMb4UYQJPumtCdRftm', 'Rosa Melano'),
(4, 'npaez@gmail.com', '$2y$10$IdFA/ihtQKnWk1Apu7sD8OkyPI0/RJOxQ4t8XYjp7eMkK0ZhJIXgu', 'Nestor paez'),
(5, 'bflorez@colegioguanenta.edu.co', '$2y$10$vOqQ1HhhMLFDS7ykYMJWf.0sjJIJp0D8nNy8AZNG2TrjdwpxNFRAW', 'Bianny');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docente`
--

CREATE TABLE `docente` (
  `id_docente` int(11) NOT NULL,
  `email` varchar(1000) NOT NULL,
  `contraseña` varchar(100) NOT NULL,
  `nombre` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `docente`
--

INSERT INTO `docente` (`id_docente`, `email`, `contraseña`, `nombre`) VALUES
(1, 'npaez@colegioguanenta.edu.co', 'npaez2025', 'Néstor Paéz'),
(2, 'edwinplata@colegioguanenta.edu.co', 'eplata2025', 'Edwin Plata'),
(3, 'keinerromero@colegioguanenta.edu.co', 'kromero2025', 'Keiner Romero'),
(4, 'sarithfigueredo@colegioguanenta.edu.co', 'sfigueredo2025', 'Sarith Figueredo'),
(5, 'joségarces@colegioguaneta.edu.co', 'jgarces2025', 'José Garces'),
(6, 'rosamelan@colegioguanenta.edu.co', '$2y$10$/Aq0aUtiau91MqzBhN9KzeGfH8JpURzKrl9GyQXW4UZvjJ1xV2s5m', 'Rosa Melano'),
(7, 'bflorez@colegioguanenta.edu.co', '$2y$10$QxSp6ZN..IvYM9EUR0rtmOmE9dqBL1USi9RIyNG9ejRuXgGsCP6za', 'Bianny');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docente_grupo_asignaturas`
--

CREATE TABLE `docente_grupo_asignaturas` (
  `id_asignatura` int(11) NOT NULL,
  `id_docente` int(11) NOT NULL,
  `id_grupo` int(11) NOT NULL,
  `year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `docente_grupo_asignaturas`
--

INSERT INTO `docente_grupo_asignaturas` (`id_asignatura`, `id_docente`, `id_grupo`, `year`) VALUES
(3, 6, 3, 2025);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grado`
--

CREATE TABLE `grado` (
  `id_grado` int(11) NOT NULL,
  `nombre` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `grado`
--

INSERT INTO `grado` (`id_grado`, `nombre`) VALUES
(1, 'Primero'),
(2, 'Segundo'),
(3, 'Tercero'),
(4, 'Cuarto'),
(5, 'Quinto'),
(6, 'Sexto'),
(7, 'Séptimo '),
(8, 'Octavo'),
(9, 'Noveno'),
(10, 'Décimo'),
(11, 'Undécimo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo`
--

CREATE TABLE `grupo` (
  `id_grupo` int(11) NOT NULL,
  `nombre` varchar(111) NOT NULL,
  `id_grado` int(11) NOT NULL,
  `id_jornada` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `grupo`
--

INSERT INTO `grupo` (`id_grupo`, `nombre`, `id_grado`, `id_jornada`) VALUES
(1, '11-1', 11, 1),
(2, '11-2', 11, 1),
(3, '11-3', 11, 1),
(4, '11-4', 11, 1),
(5, '11-5', 11, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagen_ans`
--

CREATE TABLE `imagen_ans` (
  `id_imagen_ans` int(11) NOT NULL,
  `path_imagen` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagen_pregunta`
--

CREATE TABLE `imagen_pregunta` (
  `id_imagen_pregunta` int(11) NOT NULL,
  `path_imagen` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jornada`
--

CREATE TABLE `jornada` (
  `id_jornada` int(11) NOT NULL,
  `nombre_jornada` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `jornada`
--

INSERT INTO `jornada` (`id_jornada`, `nombre_jornada`) VALUES
(1, 'Mañana'),
(2, 'Tarde');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opcion_respuesta`
--

CREATE TABLE `opcion_respuesta` (
  `id_opc_respuesta` int(100) NOT NULL,
  `texto` text NOT NULL,
  `justificacion` text NOT NULL,
  `es_correcta` tinyint(1) NOT NULL,
  `id_pregunta` int(11) NOT NULL,
  `id_imagen_ans` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `opcion_respuesta`
--

INSERT INTO `opcion_respuesta` (`id_opc_respuesta`, `texto`, `justificacion`, `es_correcta`, `id_pregunta`, `id_imagen_ans`) VALUES
(2, 'bat', 'Ninguna de las demás opciones describe a un animal largo que no tenga patas.', 0, 1, NULL),
(3, 'cat', 'Ninguna de las demás opciones describe a un animal largo que no tenga patas.', 0, 1, NULL),
(4, 'dog', 'Ninguna de las demás opciones describe a un animal largo que no tenga patas.', 0, 1, NULL),
(5, 'hippo', 'Ninguna de las demás opciones describe a un animal largo que no tenga patas.', 0, 1, NULL),
(6, 'horse', 'Ninguna de las demás opciones describe a un animal largo que no tenga patas.', 0, 1, NULL),
(7, 'snake', 'Las serpientes se caracterizan por ser largas y no tener patas.', 1, 1, NULL),
(8, 'spider', 'Ninguna de las demás opciones describe a un animal largo que no tenga patas.', 0, 1, NULL),
(9, 'whale', 'Ninguna de las demás opciones describe a un animal largo que no tenga patas.', 0, 1, NULL),
(10, 'Premisa/evidencia.', 'La opción A afirma que el primer enunciado es una premisa y el segundo una\r\nevidencia para sustentar esa premisa, pero el segundo enunciado presenta evidencia que va en\r\ncontravía de lo dicho en el primero.', 0, 2, NULL),
(11, 'Introducción/descripción.', 'La opción B dice que el primer enunciado es una introducción\r\ny el segundo una descripción, pero el segundo enunciado no hace una descripción; presenta\r\nevidencia de estudios para contradecir la hipótesis inicial.', 0, 2, NULL),
(12, 'Antecedente/fundamento.', 'La opción C, por último, asegura\r\nque el primer es un antecedente y el segundo enunciado es un fundamento, pero el primer\r\nenunciado no es un antecedente de un razonamiento.', 0, 2, NULL),
(13, 'Conjetura/contraevidencia.', 'La opción D es la respuesta correcta, ya que el primer enunciado presenta una conjetura acerca\r\nde la posibilidad de verter basura sin consecuencias en los océanos, dada su profundidad, y el\r\nsegundo enunciado señala que existen estudios que prueban que la conjetura no era correcta.', 1, 2, NULL),
(14, 'a la libertad de culto.', 'La opción A es incorrecta porque, aunque hace referencia al derecho consignado en el Artículo\r\n19 sobre garantizar la libertad de cultos, en este caso la situación no apunta a que el estudiante\r\nno pueda profesar su religión, sino a que acepte participar en ceremonias religiosas diferentes\r\na la religión a la que pertenece, para que lo acepten en la institución educativa.', 0, 3, NULL),
(15, 'a la libre personalidad.', 'La opción B no es correcta porque, aunque la decisión o no de profesar una religión puede relacionarse con características de la personalidad, este implica más elementos; directamente el derecho que está en juego en la situación es el de libertad de cultos.', 0, 3, NULL),
(16, 'a la libertad de conciencia.', 'La opción C es la respuesta correcta porque este derecho hace referencia a que “nadie será molestado\r\npor razón de sus opiniones religiosas, ni compelido a profesar creencia ni a observar prácticas\r\ncontrarias a su conciencia”. Esto es lo que se pretende en la situación al indicar que será aceptado\r\nsi accede a participar en ceremonias religiosas, aunque el estudiante profese una religión distinta.', 1, 3, NULL),
(17, 'a la libre expresión.', 'La opción D no es correcta porque este derecho hace\r\nreferencia a poder manifestar sus puntos de vista y opiniones, lo cual no se relaciona directamente\r\ncon el derecho que se trata en el enunciado.', 0, 3, NULL),
(18, 'Construir más vías genera más empleos en la construcción.', 'La opción A no es correcta porque la generación de empleos es algo que se espera con la\r\nconstrucción de nuevas vías y no tendría un efecto negativo.', 0, 4, NULL),
(19, 'Construir más vías incentiva el uso del automóvil.', 'La opción B es correcta porque la solución propuesta puede llevar a que se incremente el uso del\r\nautomóvil, lo cual en principio fue la causa del problema. A largo plazo puede generar que la\r\nsolución deje de ser efectiva e incluso afectar otras dimensiones como lo ambiental, que es un efecto\r\nno deseado.', 1, 4, NULL),
(20, 'Construir más vías disminuye la velocidad de circulación de los automóviles.', 'La opción C no es correcta porque\r\nla construcción de nuevas vías no se asocia directamente con la disminución de velocidad, y\r\nde ser así, podría ser un efecto positivo si se relaciona por ejemplo con baja accidentalidad.', 0, 4, NULL),
(21, 'Construir más vías, y su posterior utilización, genera más contaminación.', 'La opción D no es correcta porque la construcción de vías y la utilización de éstas no se relaciona\r\ncon más contaminación, faltaría que se aumente el uso o la compra de más automóviles.', 0, 4, NULL),
(22, 'verdadera, pues el número de bolas de cada color no importa.', 'Es posible que los estudiantes que elijan la opción A consideren que, al haber bolas de 3 colores\r\nen la bolsa, la probabilidad de sacar una bola de cualquier color es de 1/3.', 0, 5, NULL),
(23, 'falsa, pues no se sabe el número total de bolas en la bolsa.', 'Es posible que los estudiantes que elijan la opción B consideren que las 3 bolas rojas, las 3\r\nnegras y las 12 blancas son solo una muestra del total de bolas que hay en la bolsa, por lo que se\r\ndesconoce el número total de bolas.', 0, 5, NULL),
(24, 'falsa, pues hay más bolas de un color que de los otros dos.', 'En la bolsa hay en total 18 bolas y, por tanto, la probabilidad de seleccionar al azar una roja\r\nes de 3/18; una negra, de 3/18; una blanca, de 12/18. Luego, como 3 < 12 entonces el color blanco\r\ntiene una mayor probabilidad de ser elegido al azar.', 1, 5, NULL),
(25, 'verdadera, pues las bolas están repartidas de igual manera.', 'Es posible que los estudiantes que elijan la opción D consideren que, como las bolas están\r\nmezcladas dentro de la bolsa, y no se puede ver el color, entonces están repartidas de igual\r\nmanera.', 0, 5, NULL),
(26, 'my', 'no c', 0, 11, NULL),
(27, 'coochie', 'no c', 0, 11, NULL),
(28, 'itches', 'no c', 1, 11, NULL),
(29, 'la pica me cuca', 'no c', 0, 11, NULL),
(30, 'my', 'no c', 1, 12, NULL),
(31, 'a', 'e', 0, 12, NULL),
(32, 'b', 'd', 0, 12, NULL),
(33, 'c', 'f', 0, 12, NULL),
(34, 'aa', 'bb', 0, 13, NULL),
(35, 'cc', 'dd', 0, 13, NULL),
(36, 'ee', 'ff', 1, 13, NULL),
(37, 'gg', 'hh', 0, 13, NULL),
(38, '1', '1', 0, 14, NULL),
(39, '2', '3', 1, 14, NULL),
(40, '5', '6', 0, 14, NULL),
(41, '8', '0', 0, 14, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pregunta`
--

CREATE TABLE `pregunta` (
  `id_pregunta` int(100) NOT NULL,
  `competencia` varchar(200) DEFAULT NULL,
  `evidencia` varchar(300) DEFAULT NULL,
  `afirmacion` varchar(300) DEFAULT NULL,
  `contexto` text NOT NULL,
  `evaluacion` varchar(200) DEFAULT NULL,
  `estandar` varchar(300) DEFAULT NULL,
  `nivel` varchar(100) DEFAULT NULL,
  `id_grado` int(11) NOT NULL,
  `id_asignatura` int(11) NOT NULL,
  `id_imagen_pregunta` int(11) DEFAULT NULL,
  `id_digitador` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `pregunta`
--

INSERT INTO `pregunta` (`id_pregunta`, `competencia`, `evidencia`, `afirmacion`, `contexto`, `evaluacion`, `estandar`, `nivel`, `id_grado`, `id_asignatura`, `id_imagen_pregunta`, `id_digitador`) VALUES
(1, NULL, NULL, NULL, 'It can be long and does not have feet.', NULL, NULL, 'Pre-A1', 11, 7, NULL, 1),
(2, 'Comprensión lectora.', 'Comprende las relaciones entre diferentes partes o enunciados de un texto.', 'Comprende cómo se articulan las partes de un texto para darle un sentido global.', 'LA CONTAMINACIÓN MARINA\r\n\r\nDebido a la inmensidad y profundidad de los océanos, hasta hace poco se creía que podrían ser utilizados para\r\nverter basura y sustancias químicas en cantidades ilimitadas sin que esto tuviera consecuencias importantes. Los\r\npartidarios de continuar con los vertidos en los océanos incluso tienen un eslogan: “La solución a la contaminación es\r\nla dilución”. En la actualidad, basta con fijarse en la zona muerta del tamaño del estado de Nueva Jersey que se forma\r\ncada verano en el delta del Río Mississippi, o en la extensión de 1.600 kilómetros de plástico en descomposición en el\r\nPacífico Norte para darse cuenta de que esta ideología de la “dilución” ha contribuido a llevar al borde del colapso lo\r\nque tiempo atrás fue un ecosistema oceánico próspero. Existen pruebas de que los océanos han sufrido a manos del\r\nhombre durante miles de años. Sin embargo, estudios recientes demuestran que la degradación, especialmente en\r\nlas zonas costeras, se ha acelerado notablemente en los últimos tres siglos a medida que han aumentado los vertidos\r\nindustriales y los contaminantes procedentes de explotaciones agrarias y ciudades costeras.\r\nAlgunos de los contaminantes más comunes derivados de la actividad humana son los plaguicidas, fertilizantes\r\nquímicos, detergentes, hidrocarburos, aguas residuales, plásticos y otros sólidos. Muchos de estos contaminantes\r\nse acumulan en las profundidades del océano, donde son ingeridos por pequeños organismos marinos a través\r\nde los cuales se introducen en la cadena alimentaria global. Los fertilizantes ricos en nitrógeno que utilizan los\r\nproductores agrícolas en zonas del interior, por ejemplo, acaban en las corrientes, ríos y aguas subterráneas locales,\r\ny más tarde se depositan en los estuarios, bahías y deltas. Este exceso de nutrientes puede provocar un crecimiento\r\nmasivo de algas que consumen el oxígeno del agua, lo cual genera zonas en las que no puede haber vida marina o\r\napenas existe. Los científicos han descubierto 400 zonas muertas con estas características por todo el planeta. Los\r\nhumanos comienzan a percatarse de la insostenibilidad de la filosofía de la “dilución”. Muchas leyes nacionales y\r\nprotocolos internacionales prohíben en la actualidad el vertido de sustancias nocivas en los océanos, si bien su\r\naplicación es a menudo incierta. Se están creando santuarios marinos con el fin de mantener ecosistemas marinos\r\nprístinos. Asimismo, se están llevando a cabo iniciativas aisladas que han logrado cierto éxito en la restauración\r\nde estuarios y bahías.\r\n\r\n(Tomado y adaptado de: http://www.nationalgeographic.es/el-oceano/cuestiones-criticas-sobre-el-problemas-de-la-\r\ncontaminacion-marina/cuestiones-criticas-sobre-el-problemas-de-la-contaminacion-marina.)\r\n\r\n¿Cuál es la relación argumentativa entre los dos enunciados del texto que se presentan a continuación?\r\n“Debido a la inmensidad y profundidad de los océanos, hasta hace poco se creía que podrían ser utilizados para\r\nverter basura y sustancias químicas en cantidades ilimitadas sin que esto tuviera consecuencias importantes”.\r\n“Estudios recientes demuestran que la degradación, especialmente en las zonas costeras, se ha acelerado\r\nnotablemente en los últimos tres siglos”.', 'La capacidad para identificar la relación entre dos enunciados de un texto.', 'Analizo los aspectos textuales, conceptuales y formales de cada uno de los textos que leo.', NULL, 11, 2, NULL, 1),
(3, 'Pensamiento Social (Competencias Ciudadanas).', 'Conoce el modelo de Estado Social de Derecho y su aplicación en Colombia.', 'Comprende modelos conceptuales, sus características y contextos de aplicación.', 'Un niño presenta una entrevista para ingresar en un colegio público. Durante la entrevista, le preguntan a\r\nqué religión pertenece. Al finalizar la entrevista, le dicen al niño que pueden admitirlo si accede a participar\r\nen las ceremonias religiosas del colegio, aunque él profese una religión distinta. El derecho fundamental que\r\nse le violaría al niño en este caso sería', 'La habilidad para reconocer cuándo se respeta o vulneran los derechos fundamentales.', 'Participo constructivamente en iniciativas o proyectos a favor de la no-violencia en el nivel local o\r\nglobal.', NULL, 11, 3, NULL, 1),
(4, 'Pensamiento Reflexivo y Sistémico (Competencias Ciudadanas).', 'Analiza los efectos en distintas dimensiones que tendría una posible intervención.', 'Comprende que los problemas y sus soluciones involucran distintas dimensiones y reconoce\r\nrelaciones entre estas.', 'Uno de los principales problemas de las grandes ciudades es la dificultad para movilizarse debido a la gran\r\ncantidad de automóviles. Tradicionalmente, se ha propuesto que la mejor solución para este problema es\r\nconstruir más vías que permitan el flujo de más automóviles. Esta solución puede ser efectiva, pero puede\r\ngenerar efectos no deseados. ¿Cuál es uno de estos efectos?', 'La habilidad para reconocer en una situación que las soluciones a las problemáticas tienen efectos\r\nque pueden ser no esperados o no deseados.', 'Participo constructivamente en iniciativas o proyectos a favor de la no-violencia en el nivel local\r\no global.', NULL, 11, 3, NULL, 1),
(5, 'Argumentación.', 'Plantea afirmaciones que sustentan o refutan una interpretación dada a la información disponible\r\nen el marco de la solución de un problema.', 'Valida procedimientos y estrategias matemáticas utilizadas para dar solución a problemas.', 'En una bolsa hay 3 bolas rojas, 3 negras y 12 blancas. Una persona afirma que al sacar una bola al azar, los\r\ntres colores tienen la misma probabilidad de salir. Esta afirmación es', 'La capacidad para justificar la validez de una afirmación sobre una probabilidad a partir de la\r\ndescripción de los elementos de un conjunto.', 'Justifico o refuto inferencias basadas en razonamientos estadísticos a partir de resultados de\r\nestudios publicados en los medios o diseñados en el ámbito escolar.', NULL, 11, 1, NULL, 1),
(8, 'todo', 'aquel', 'que', 'piense', 'que', 'la', 'vida', 1, 1, NULL, 1),
(9, 'a', 'b', 'c', 'd', 'e', 'f', 'g', 3, 3, NULL, 4),
(10, '1', '2', '3', '4', '5', '6', '7', 11, 6, NULL, 4),
(11, '1', '2', '3', '4', '5', '6', '7', 11, 6, NULL, 4),
(12, 'p', 'una', 'palabra', 'random', 'otra', 'palabra', 'random', 5, 3, NULL, 1),
(13, '12', '34', '56', '78', '90', '11', '22', 8, 2, NULL, 1),
(14, '1', '2', '3', '5', '6', '7', '8', 6, 2, NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuesta`
--

CREATE TABLE `respuesta` (
  `id_respuesta` int(100) NOT NULL,
  `puntaje` varchar(1000) NOT NULL,
  `fecha` date NOT NULL,
  `hora_inicio` time(6) NOT NULL,
  `hora_fin` time(6) NOT NULL,
  `PIN` int(100) NOT NULL,
  `apodo_est` varchar(100) NOT NULL,
  `id_pregunta` int(11) NOT NULL,
  `id_grupo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `respuesta`
--

INSERT INTO `respuesta` (`id_respuesta`, `puntaje`, `fecha`, `hora_inicio`, `hora_fin`, `PIN`, `apodo_est`, `id_pregunta`, `id_grupo`) VALUES
(7, '1', '2025-03-17', '31:13:07.000000', '16:13:07.000000', 123456, 'platica', 5, 3),
(8, '0', '2025-03-17', '16:13:15.000000', '23:13:07.000000', 123457, 'Sarith', 2, 1),
(9, '1', '2025-03-17', '31:13:07.000000', '16:13:07.000000', 124567, 'Keiner', 1, 2),
(10, '1', '2025-03-17', '11:20:27.000000', '16:13:07.000000', 123456, 'José Luis', 4, 4),
(11, '0', '2025-03-17', '11:20:27.000000', '16:13:07.000000', 234789, 'Mayra', 3, 5);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indices de la tabla `asignaturas`
--
ALTER TABLE `asignaturas`
  ADD PRIMARY KEY (`id_asignatura`);

--
-- Indices de la tabla `digitador`
--
ALTER TABLE `digitador`
  ADD PRIMARY KEY (`id_digitador`);

--
-- Indices de la tabla `docente`
--
ALTER TABLE `docente`
  ADD PRIMARY KEY (`id_docente`);

--
-- Indices de la tabla `docente_grupo_asignaturas`
--
ALTER TABLE `docente_grupo_asignaturas`
  ADD PRIMARY KEY (`id_asignatura`,`id_docente`,`id_grupo`),
  ADD KEY `id_asignatura` (`id_asignatura`,`id_docente`),
  ADD KEY `id_docente` (`id_docente`),
  ADD KEY `id_grupo` (`id_grupo`);

--
-- Indices de la tabla `grado`
--
ALTER TABLE `grado`
  ADD PRIMARY KEY (`id_grado`);

--
-- Indices de la tabla `grupo`
--
ALTER TABLE `grupo`
  ADD PRIMARY KEY (`id_grupo`),
  ADD KEY `id_grado` (`id_grado`),
  ADD KEY `id_jornada` (`id_jornada`);

--
-- Indices de la tabla `imagen_ans`
--
ALTER TABLE `imagen_ans`
  ADD PRIMARY KEY (`id_imagen_ans`);

--
-- Indices de la tabla `imagen_pregunta`
--
ALTER TABLE `imagen_pregunta`
  ADD PRIMARY KEY (`id_imagen_pregunta`);

--
-- Indices de la tabla `jornada`
--
ALTER TABLE `jornada`
  ADD PRIMARY KEY (`id_jornada`);

--
-- Indices de la tabla `opcion_respuesta`
--
ALTER TABLE `opcion_respuesta`
  ADD PRIMARY KEY (`id_opc_respuesta`),
  ADD KEY `id_pregunta` (`id_pregunta`),
  ADD KEY `id_imagen_ans` (`id_imagen_ans`);

--
-- Indices de la tabla `pregunta`
--
ALTER TABLE `pregunta`
  ADD PRIMARY KEY (`id_pregunta`),
  ADD KEY `id_grado` (`id_grado`),
  ADD KEY `id_asignatura` (`id_asignatura`),
  ADD KEY `id_imagen_pregunta` (`id_imagen_pregunta`),
  ADD KEY `id_digitador` (`id_digitador`);

--
-- Indices de la tabla `respuesta`
--
ALTER TABLE `respuesta`
  ADD PRIMARY KEY (`id_respuesta`),
  ADD KEY `id_pregunta` (`id_pregunta`),
  ADD KEY `id_grupo` (`id_grupo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `asignaturas`
--
ALTER TABLE `asignaturas`
  MODIFY `id_asignatura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `digitador`
--
ALTER TABLE `digitador`
  MODIFY `id_digitador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `docente`
--
ALTER TABLE `docente`
  MODIFY `id_docente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `grado`
--
ALTER TABLE `grado`
  MODIFY `id_grado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `grupo`
--
ALTER TABLE `grupo`
  MODIFY `id_grupo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `imagen_ans`
--
ALTER TABLE `imagen_ans`
  MODIFY `id_imagen_ans` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jornada`
--
ALTER TABLE `jornada`
  MODIFY `id_jornada` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `opcion_respuesta`
--
ALTER TABLE `opcion_respuesta`
  MODIFY `id_opc_respuesta` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `pregunta`
--
ALTER TABLE `pregunta`
  MODIFY `id_pregunta` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `respuesta`
--
ALTER TABLE `respuesta`
  MODIFY `id_respuesta` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `docente_grupo_asignaturas`
--
ALTER TABLE `docente_grupo_asignaturas`
  ADD CONSTRAINT `docente_grupo_asignaturas_ibfk_1` FOREIGN KEY (`id_asignatura`) REFERENCES `asignaturas` (`id_asignatura`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `docente_grupo_asignaturas_ibfk_2` FOREIGN KEY (`id_docente`) REFERENCES `docente` (`id_docente`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `docente_grupo_asignaturas_ibfk_3` FOREIGN KEY (`id_grupo`) REFERENCES `grupo` (`id_grupo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `grupo`
--
ALTER TABLE `grupo`
  ADD CONSTRAINT `grupo_ibfk_1` FOREIGN KEY (`id_grado`) REFERENCES `grado` (`id_grado`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `grupo_ibfk_2` FOREIGN KEY (`id_jornada`) REFERENCES `jornada` (`id_jornada`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `opcion_respuesta`
--
ALTER TABLE `opcion_respuesta`
  ADD CONSTRAINT `opcion_respuesta_ibfk_1` FOREIGN KEY (`id_pregunta`) REFERENCES `pregunta` (`id_pregunta`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `opcion_respuesta_ibfk_2` FOREIGN KEY (`id_imagen_ans`) REFERENCES `imagen_ans` (`id_imagen_ans`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pregunta`
--
ALTER TABLE `pregunta`
  ADD CONSTRAINT `pregunta_ibfk_1` FOREIGN KEY (`id_grado`) REFERENCES `grado` (`id_grado`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pregunta_ibfk_2` FOREIGN KEY (`id_asignatura`) REFERENCES `asignaturas` (`id_asignatura`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pregunta_ibfk_3` FOREIGN KEY (`id_imagen_pregunta`) REFERENCES `imagen_pregunta` (`id_imagen_pregunta`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pregunta_ibfk_4` FOREIGN KEY (`id_digitador`) REFERENCES `digitador` (`id_digitador`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `respuesta`
--
ALTER TABLE `respuesta`
  ADD CONSTRAINT `respuesta_ibfk_1` FOREIGN KEY (`id_pregunta`) REFERENCES `pregunta` (`id_pregunta`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `respuesta_ibfk_2` FOREIGN KEY (`id_grupo`) REFERENCES `grupo` (`id_grupo`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
