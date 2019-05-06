-- --------------------------------------------------------
-- Anfitrião:                    127.0.0.1
-- Versão do servidor:           5.7.18-log - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Versão:              9.5.0.5277
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for poupar
CREATE DATABASE IF NOT EXISTS `poupar` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `poupar`;

-- Dumping structure for table poupar.compras
CREATE TABLE IF NOT EXISTS `compras` (
  `Id_compra` int(11) NOT NULL AUTO_INCREMENT,
  `Cliente` varchar(50) NOT NULL,
  `Produto` varchar(50) NOT NULL,
  `Estabelicimento` varchar(50) NOT NULL,
  PRIMARY KEY (`Id_compra`),
  KEY `FK_compras_lista` (`Cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table poupar.lista
CREATE TABLE IF NOT EXISTS `lista` (
  `Id_lista` int(11) NOT NULL AUTO_INCREMENT,
  `Data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Cliente` varchar(50) NOT NULL,
  PRIMARY KEY (`Id_lista`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table poupar.produto
CREATE TABLE IF NOT EXISTS `produto` (
  `Id_Prod` int(11) NOT NULL AUTO_INCREMENT,
  `ID_Produto` int(11) NOT NULL DEFAULT '0',
  `Produto` varchar(50) NOT NULL DEFAULT '0.00',
  `Supermercado` varchar(50) NOT NULL DEFAULT '0',
  `Preço` varchar(50) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`Id_Prod`),
  KEY `FK_Produto_estabelecimento` (`Supermercado`),
  KEY `FK_produto_mercadoria` (`ID_Produto`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table poupar.produtos
CREATE TABLE IF NOT EXISTS `produtos` (
  `Id_produtos` int(11) NOT NULL AUTO_INCREMENT,
  `Nome_produtos` varchar(50) NOT NULL,
  PRIMARY KEY (`Id_produtos`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table poupar.supermercado
CREATE TABLE IF NOT EXISTS `supermercado` (
  `Id_super` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(50) NOT NULL,
  PRIMARY KEY (`Id_super`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
