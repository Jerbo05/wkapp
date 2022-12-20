-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 20 dec 2022 om 10:53
-- Serverversie: 10.4.21-MariaDB
-- PHP-versie: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wkapp`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `landen`
--

CREATE TABLE `landen` (
  `id` int(11) NOT NULL,
  `naam` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `landen`
--

INSERT INTO `landen` (`id`, `naam`) VALUES
(2, 'Tunesië'),
(3, 'Engeland'),
(4, 'Mexico'),
(5, 'Spanje'),
(6, 'Wales'),
(7, 'Zuid-Korea'),
(8, 'Kameroen'),
(9, 'Polen'),
(10, 'Costa Rica'),
(11, 'Verenigde Staten'),
(12, 'België'),
(13, 'Italië\r\n');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `wk_app`
--

CREATE TABLE `wk_app` (
  `id` int(11) NOT NULL,
  `LAND1` varchar(11) NOT NULL,
  `LAND2` varchar(11) NOT NULL,
  `TIJD` text NOT NULL,
  `SCORE` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `wk_app`
--

INSERT INTO `wk_app` (`id`, `LAND1`, `LAND2`, `TIJD`, `SCORE`) VALUES
(1, 'Engeland', 'België', '38:58', '1-0\r\n'),
(2, 'Engeland', 'België', '61:21', '2-0'),
(3, 'Engeland', 'België', '75:33', '2-1');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `landen`
--
ALTER TABLE `landen`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `wk_app`
--
ALTER TABLE `wk_app`
  ADD PRIMARY KEY (`id`),
  ADD KEY `landen_id` (`LAND1`,`LAND2`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `landen`
--
ALTER TABLE `landen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT voor een tabel `wk_app`
--
ALTER TABLE `wk_app`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
