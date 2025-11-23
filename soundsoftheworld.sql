-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 10-06-2024 a las 00:22:34
-- Versión del servidor: 10.6.17-MariaDB-cll-lve
-- Versión de PHP: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `soundsoftheworld`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cards`
--

CREATE TABLE `cards` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `title` varchar(150) NOT NULL,
  `video_id` varchar(25) NOT NULL,
  `audio_id` int(30) NOT NULL,
  `author` varchar(150) NOT NULL,
  `date` date NOT NULL,
  `location` varchar(100) NOT NULL,
  `description` text CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  `tags` text CHARACTER SET utf16 COLLATE utf16_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Volcado de datos para la tabla `cards`
--

INSERT INTO `cards` (`id`, `name`, `title`, `video_id`, `audio_id`, `author`, `date`, `location`, `description`, `tags`) VALUES
(1, 'gnaoua', 'Gnaoua Music Festival', 'QZikzsJFsLk', 523899282, 'b1tdreamer', '2017-06-15', 'Essaouira, Maroc', 'Inauguration of the 21st edition of the festival of gnawa music and world music in Essaouira, Morocco.', '獯畮摳捡灥⁧湡潵愠䕳獡潵楲愠䵡牯挠䵯牯捣漠'),
(2, 'lalibela', 'Lalibela churches', '', 524174118, 'b1tdreamer', '2018-02-06', 'Lalibela, Ethiopia', 'Praying in the Orthodox Christian churches of Lalibella, Ethiopia on 6 February 2018', 's潵湤獣慰攠灲慹楮朠䱡汩扥污⁅桩潰楡⁃桲楳瑩慮⁁晲楣愠'),
(3, 'masai', 'Masai Mara', 'ly341f2eXY0', 739654618, 'b1tdreamer', '2018-09-11', 'Masai Mara, Kenya', 'Masai welcome song recorded in Masai Mara on September 2019', '䵡獡楍慲愠坥汣潭敓潮朠䭥湹愠䅦物捡'),
(4, 'maroc-woman', 'Maroc woman singing', '', 772732222, 'b1tdreamer', '2017-06-11', 'Dalmaghmik, Maroc', 'Woman singing with a guitar in Dalmaghmik, Morocco in June 2018', 'w潭慮⁳楮杩湧⁄慬浡杨浩欠䵡牯挠杵楴慲'),
(5, 'dalol', 'Dalol', '', 772744015, 'b1tdreamer', '2018-03-22', 'Dalol, Ethiopia', 'Soundscape of the fumaroles in Dalol, Dankil depression, Ethiopia.\r\nRecorded in March 2018.', 'f畭慲潬敳⁄慬潬⁄慮慫楬䑥灲敳獩潮⁅瑨楯灩愠䅦物捡'),
(6, 'spider', 'The spider web', '', 734770768, 'b1tdreamer', '2018-12-23', 'Reserva Yotoco, Colombia', 'Howler monkey soundscape in the Yotoco reserve near Lake Calima in Colombia in December 2019\r\n\r\nPaisaje sonoro de los monos aulladores en la reserva Yotoco, cerca del lago Calima en Colombia en diciembre de 2019', 'h潷汥牍潮步祳Ⱐ牥獥牶慙潴潣漬⁮慴畲攬⁳灩摥牳Ⱐ䍯汯浢楡'),
(7, 'violin-vilcas', 'Carnival orquestra', '', 769004857, 'b1tdreamer', '2020-02-22', 'Vilcashuaman, Peru', 'Parades during the Vilcashuaman carnival in Peru Violin and Harp in the interludes with winds in the choruses.', '癩潬楮⁡牰愠捡牮慶慬⁯牱略獴牡⁖楬捡獨畡浡渠健狺'),
(8, 'condor', 'Condor', '', 772815802, 'b1tdreamer', '2020-03-04', 'Colca canyon, Peru', 'Poem about the condor, in the Colca Canyon, Peru</p>\r\n<p>Accompanied by Yawar Mestas to the sicu.\r\n</p>\r\n<p>Poem by Yeison Medina Medina<br/>\r\nPhotography by Sandra Ramirez Giraldo</p>\r\n<p>Condor</p>\r\n<p>', 'c潮摯爠捯汣愠灯敭⁰潥瑲礠健牵');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cards`
--
ALTER TABLE `cards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
