-- phpMyAdmin SQL Dump
-- version 4.1.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 12, 2020 alle 09:11
-- Versione del server: 5.6.33-log
-- PHP Version: 5.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `my_suffragium`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `ruolo` int(15) NOT NULL,
  `CF` varchar(16) NOT NULL,
  PRIMARY KEY (`CF`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `approva`
--

CREATE TABLE IF NOT EXISTS `approva` (
  `admin` varchar(100) NOT NULL,
  `quesito` varchar(100) NOT NULL,
  PRIMARY KEY (`admin`,`quesito`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `ha`
--

CREATE TABLE IF NOT EXISTS `ha` (
  `risposta` varchar(100) NOT NULL,
  `quesito` varchar(100) NOT NULL,
  PRIMARY KEY (`risposta`,`quesito`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `partecipa`
--

CREATE TABLE IF NOT EXISTS `partecipa` (
  `votante` varchar(100) NOT NULL,
  `quesito` varchar(100) NOT NULL,
  PRIMARY KEY (`votante`,`quesito`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `propone`
--

CREATE TABLE IF NOT EXISTS `propone` (
  `votante` varchar(100) NOT NULL,
  `quesito` varchar(100) NOT NULL,
  PRIMARY KEY (`votante`,`quesito`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `quesito`
--

CREATE TABLE IF NOT EXISTS `quesito` (
  `testo_Q` int(100) NOT NULL,
  `n_quesito` varchar(10) NOT NULL,
  PRIMARY KEY (`n_quesito`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `risposta`
--

CREATE TABLE IF NOT EXISTS `risposta` (
  `testo_R` varchar(100) NOT NULL,
  PRIMARY KEY (`testo_R`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `vota`
--

CREATE TABLE IF NOT EXISTS `vota` (
  `votante` varchar(100) NOT NULL,
  `risposta` varchar(100) NOT NULL,
  PRIMARY KEY (`votante`,`risposta`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `votante`
--

CREATE TABLE IF NOT EXISTS `votante` (
  `n_utente` varchar(20) NOT NULL,
  `password` varchar(16) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `cognome` varchar(100) NOT NULL,
  `CF` varchar(16) NOT NULL,
  `email` varchar(50) NOT NULL,
  `indirizzo` varchar(30) NOT NULL,
  `data_di_nascita` date NOT NULL,
  `id` varchar(128) NOT NULL,
  `abilitato` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`CF`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `votante`
--

INSERT INTO `votante` (`n_utente`, `password`, `nome`, `cognome`, `CF`, `email`, `indirizzo`, `data_di_nascita`, `id`, `abilitato`) VALUES
('Ouija1733', 'Password123', 'Simone', 'Menestrina', 'MNSSMN99P18D969O', 'menestrina.simone@gmail.com', 'Via Ginestrato 5P/29', '1999-09-18', '', 0),
('ciccio', 'akjcdjavjbv', 'pippo', 'baudo', 'uibviubsvufobsfo', 'lillo@gmail.com', 'jksdbvjdbjb', '2000-02-01', '36e4f7cca142d5042a9eed0613afbc4f0067296991757cd35a7388070337b3cc79b99ba7eddd50d7d1dff58127733ef7a3c722ea67bfd127675e1bd65c2d65ad', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
