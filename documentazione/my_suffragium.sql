-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Mag 28, 2020 alle 10:43
-- Versione del server: 10.4.11-MariaDB
-- Versione PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_suffragium`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `approva`
--

CREATE TABLE `approva` (
  `votante` varchar(100) NOT NULL,
  `quesito_proposto` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `ha`
--

CREATE TABLE `ha` (
  `risposta` varchar(100) NOT NULL,
  `quesito` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `ha`
--

INSERT INTO `ha` (`risposta`, `quesito`) VALUES
('Blu', '9'),
('Boccioni', '10'),
('Giallo', '9'),
('Michelangelo', '10'),
('Monet', '10'),
('Nero', '9'),
('Rosso', '9'),
('Troilo', '10');

-- --------------------------------------------------------

--
-- Struttura della tabella `partecipa`
--

CREATE TABLE `partecipa` (
  `votante` varchar(100) NOT NULL,
  `quesito` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `propone`
--

CREATE TABLE `propone` (
  `votante` varchar(100) NOT NULL,
  `quesito_proposto` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `quesito`
--

CREATE TABLE `quesito` (
  `testo_Q` varchar(100) NOT NULL,
  `n_quesito` varchar(100) NOT NULL,
  `id` int(11) NOT NULL,
  `data` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `quesito`
--

INSERT INTO `quesito` (`testo_Q`, `n_quesito`, `id`, `data`) VALUES
('Quale colore starebbe bene sulla nostra parete?', 'cargo', 9, '2020-05-28'),
('Quale artista è il migliore?', 'Rimta', 10, '2020-05-28');

-- --------------------------------------------------------

--
-- Struttura della tabella `quesito_proposto`
--

CREATE TABLE `quesito_proposto` (
  `n_quesito` varchar(100) NOT NULL,
  `testo_Q` varchar(100) NOT NULL,
  `data` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `vota`
--

CREATE TABLE `vota` (
  `votante` varchar(100) NOT NULL,
  `risposta` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `votante`
--

CREATE TABLE `votante` (
  `password` varchar(255) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `cognome` varchar(100) NOT NULL,
  `CF` varchar(16) NOT NULL,
  `email` varchar(50) NOT NULL,
  `indirizzo` varchar(30) NOT NULL,
  `data_di_nascita` date NOT NULL,
  `id` int(11) NOT NULL,
  `abilitato` tinyint(1) DEFAULT NULL,
  `admin` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `votante`
--

INSERT INTO `votante` (`password`, `nome`, `cognome`, `CF`, `email`, `indirizzo`, `data_di_nascita`, `id`, `abilitato`, `admin`) VALUES
('Password123', 'Simone', 'Menestrina', 'MNSSMN99P18D969O', 'menestrina.simone@gmail.com', 'Via Ginestrato 5P/29', '1999-09-18', 1, 0, 0),
('25d55ad283aa400a', 'pippo', 'baudo', '123s4dertvfgybhn', 'test@gmail.com', 'uwbhibwribu', '2020-04-07', 38, 0, 0),
('25d55ad283aa400af464c76d713c07ad', 'simo', 'mimmo', 'rwvy3r8gbf93u8b9', 'test@test.com', 'via sti cazzi', '2020-04-15', 39, 0, 0);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `approva`
--
ALTER TABLE `approva`
  ADD PRIMARY KEY (`votante`,`quesito_proposto`);

--
-- Indici per le tabelle `ha`
--
ALTER TABLE `ha`
  ADD PRIMARY KEY (`risposta`,`quesito`);

--
-- Indici per le tabelle `partecipa`
--
ALTER TABLE `partecipa`
  ADD PRIMARY KEY (`votante`,`quesito`);

--
-- Indici per le tabelle `propone`
--
ALTER TABLE `propone`
  ADD PRIMARY KEY (`votante`,`quesito_proposto`);

--
-- Indici per le tabelle `quesito`
--
ALTER TABLE `quesito`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `quesito_proposto`
--
ALTER TABLE `quesito_proposto`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `vota`
--
ALTER TABLE `vota`
  ADD PRIMARY KEY (`votante`,`risposta`);

--
-- Indici per le tabelle `votante`
--
ALTER TABLE `votante`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `quesito`
--
ALTER TABLE `quesito`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT per la tabella `quesito_proposto`
--
ALTER TABLE `quesito_proposto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `votante`
--
ALTER TABLE `votante`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
