-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Mar 26, 2020 alle 10:52
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
-- Struttura della tabella `admin`
--

CREATE TABLE `admin` (
  `ruolo` int(15) NOT NULL,
  `CF` varchar(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `approva`
--

CREATE TABLE `approva` (
  `admin` varchar(100) NOT NULL,
  `quesito` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `ha`
--

CREATE TABLE `ha` (
  `risposta` varchar(100) NOT NULL,
  `quesito` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
  `quesito` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `quesito`
--

CREATE TABLE `quesito` (
  `testo_Q` int(100) NOT NULL,
  `n_quesito` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `risposta`
--

CREATE TABLE `risposta` (
  `testo_R` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
  `password` varchar(16) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `cognome` varchar(100) NOT NULL,
  `CF` varchar(16) NOT NULL,
  `email` varchar(50) NOT NULL,
  `indirizzo` varchar(30) NOT NULL,
  `data_di_nascita` date NOT NULL,
  `id` int(11) NOT NULL,
  `abilitato` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `votante`
--

INSERT INTO `votante` (`password`, `nome`, `cognome`, `CF`, `email`, `indirizzo`, `data_di_nascita`, `id`, `abilitato`) VALUES
('Password123', 'Simone', 'Menestrina', 'MNSSMN99P18D969O', 'menestrina.simone@gmail.com', 'Via Ginestrato 5P/29', '1999-09-18', 1, 0),
('akjcdjavjbv', 'pippo', 'baudo', 'uibviubsvufobsfo', 'lillo@gmail.com', 'jksdbvjdbjb', '2000-02-01', 36, 0),
('5f53278df1e8d849', 'asdasda', 'asdasdas', 'asdfasfgfafgadfg', 'francesca2112@gmail.com', 'ADadADFgf', '1222-02-22', 37, 0);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`CF`);

--
-- Indici per le tabelle `approva`
--
ALTER TABLE `approva`
  ADD PRIMARY KEY (`admin`,`quesito`);

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
  ADD PRIMARY KEY (`votante`,`quesito`);

--
-- Indici per le tabelle `quesito`
--
ALTER TABLE `quesito`
  ADD PRIMARY KEY (`n_quesito`);

--
-- Indici per le tabelle `risposta`
--
ALTER TABLE `risposta`
  ADD PRIMARY KEY (`testo_R`);

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
-- AUTO_INCREMENT per la tabella `votante`
--
ALTER TABLE `votante`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
