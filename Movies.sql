-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 10-06-2024 a las 20:11:48
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `Movies`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Movies`
--

CREATE TABLE `Movies` (
  `movieID` int(11) NOT NULL,
  `movieName` varchar(40) DEFAULT NULL,
  `movieProtagonist` varchar(50) DEFAULT NULL,
  `movieYear` date NOT NULL,
  `movieGeners` varchar(30) DEFAULT NULL,
  `movieSeller` decimal(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `Movies`
--

INSERT INTO `Movies` (`movieID`, `movieName`, `movieProtagonist`, `movieYear`, `movieGeners`, `movieSeller`) VALUES
(1, 'Caza Fantasma', 'Bill Murray, Dan Aykroyd', '1988-12-31', 'Comedia', 12.00),
(2, 'El Padrino', 'Marlon Brando', '1972-02-21', 'Crimen', 245.00),
(39, 'Inception', 'Leonardo Dicaprio', '2010-03-15', 'Ficción', 829900000.00),
(40, 'The Dark Knight', 'Christian Bale', '2008-05-04', 'Crimen', 1005000000.00),
(41, 'Titanic', 'Leonardo DiCaprio, Kate Winslet', '1997-08-30', 'Romance', 2195000000.00),
(42, 'The Godfather', 'Marlon Brando, Al Pacino', '1972-01-13', 'Drama', 246100000.00),
(43, 'The Shawshank Redemption', 'Tim Robbins, Morgan Freeman', '1994-07-28', 'Drama', 58300000.00),
(44, 'Avatar', 'Sam Worthington, Zoe Saldana', '2009-04-09', 'Ciencia ficción', 2847000000.00),
(45, 'Pulp Fiction', 'John Travolta, Uma Thurman', '1994-06-22', 'Crimen', 213900000.00),
(46, 'The Lord of the Rings', 'Elijah Wood, Viggo Mortensen', '2003-02-12', 'Aventura, Fantasía', 1142000000.00),
(47, 'Jurassic Park', 'Sam Neill, Laura Dern', '1993-03-15', 'Aventura, Ciencia ficción', 1033000000.00);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Movies`
--
ALTER TABLE `Movies`
  ADD PRIMARY KEY (`movieID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Movies`
--
ALTER TABLE `Movies`
  MODIFY `movieID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
