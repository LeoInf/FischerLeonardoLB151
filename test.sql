-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 27. Feb 2023 um 10:46
-- Server-Version: 10.4.14-MariaDB
-- PHP-Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `test`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `antworten`
--

CREATE TABLE `antworten` (
  `id` int(11) NOT NULL,
  `antwort` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `antworten`
--

INSERT INTO `antworten` (`id`, `antwort`) VALUES
(1, 'papi min culo tut weh');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `fragen`
--

CREATE TABLE `fragen` (
  `id` int(11) NOT NULL,
  `kategorien_id` int(11) NOT NULL,
  `frage` text NOT NULL,
  `falscheAntwort1` int(11) NOT NULL,
  `falscheAntwort2` int(11) NOT NULL,
  `falscheAntwort3` int(11) NOT NULL,
  `richtigeAntwort` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `kategorien`
--

CREATE TABLE `kategorien` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `kategorien`
--

INSERT INTO `kategorien` (`id`, `name`) VALUES
(1, 'Games'),
(2, 'Titel');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `kategorien_spiele`
--

CREATE TABLE `kategorien_spiele` (
  `kategorien_id` int(11) NOT NULL,
  `spiele_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `spiele`
--

CREATE TABLE `spiele` (
  `id` int(11) NOT NULL,
  `start` datetime NOT NULL,
  `ende` datetime NOT NULL,
  `punktzahl` int(11) NOT NULL,
  `spieler` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `antworten`
--
ALTER TABLE `antworten`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `fragen`
--
ALTER TABLE `fragen`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kategorien_id` (`kategorien_id`),
  ADD UNIQUE KEY `falscheAntwort1` (`falscheAntwort1`),
  ADD UNIQUE KEY `falscheAntwort2` (`falscheAntwort2`),
  ADD UNIQUE KEY `falscheAntwort3` (`falscheAntwort3`),
  ADD UNIQUE KEY `richtigeAntwort` (`richtigeAntwort`);

--
-- Indizes für die Tabelle `kategorien`
--
ALTER TABLE `kategorien`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`) USING BTREE;

--
-- Indizes für die Tabelle `kategorien_spiele`
--
ALTER TABLE `kategorien_spiele`
  ADD UNIQUE KEY `kategorien_id` (`kategorien_id`),
  ADD UNIQUE KEY `spiele_id` (`spiele_id`);

--
-- Indizes für die Tabelle `spiele`
--
ALTER TABLE `spiele`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `kategorien`
--
ALTER TABLE `kategorien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `fragen`
--
ALTER TABLE `fragen`
  ADD CONSTRAINT `fragen_ibfk_1` FOREIGN KEY (`kategorien_id`) REFERENCES `kategorien` (`id`),
  ADD CONSTRAINT `fragen_ibfk_2` FOREIGN KEY (`falscheAntwort1`) REFERENCES `antworten` (`id`),
  ADD CONSTRAINT `fragen_ibfk_3` FOREIGN KEY (`falscheAntwort2`) REFERENCES `antworten` (`id`),
  ADD CONSTRAINT `fragen_ibfk_4` FOREIGN KEY (`falscheAntwort3`) REFERENCES `antworten` (`id`),
  ADD CONSTRAINT `fragen_ibfk_5` FOREIGN KEY (`richtigeAntwort`) REFERENCES `antworten` (`id`);

--
-- Constraints der Tabelle `kategorien_spiele`
--
ALTER TABLE `kategorien_spiele`
  ADD CONSTRAINT `kategorien_spiele_ibfk_1` FOREIGN KEY (`kategorien_id`) REFERENCES `kategorien` (`id`),
  ADD CONSTRAINT `kategorien_spiele_ibfk_2` FOREIGN KEY (`spiele_id`) REFERENCES `spiele` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
