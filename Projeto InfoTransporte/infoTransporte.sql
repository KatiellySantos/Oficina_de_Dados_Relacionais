-- MySQL dump 10.13  Distrib 8.0.41, for Linux (x86_64)
--
-- Host: localhost    Database: infotransporte
-- ------------------------------------------------------
-- Server version	8.0.41-0ubuntu0.24.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `manutencoes`
--

DROP TABLE IF EXISTS `manutencoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manutencoes` (
  `idmanutencao` int NOT NULL AUTO_INCREMENT,
  `idveiculo` int NOT NULL,
  `data_manutencao` date NOT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `custo` float DEFAULT NULL,
  `observacoes` text,
  PRIMARY KEY (`idmanutencao`),
  KEY `idveiculo` (`idveiculo`),
  CONSTRAINT `manutencoes_ibfk_1` FOREIGN KEY (`idveiculo`) REFERENCES `veiculos` (`idveiculo`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manutencoes`
--

LOCK TABLES `manutencoes` WRITE;
/*!40000 ALTER TABLE `manutencoes` DISABLE KEYS */;
INSERT INTO `manutencoes` VALUES (1,1,'2025-01-10','Preventiva',1200,'Troca de óleo e revisão geral.'),(2,2,'2025-01-15','Corretiva',800,'Reparo no sistema de freios.'),(3,3,'2025-01-20','Preventiva',1500,'Troca de pneus e alinhamento.'),(4,4,'2025-01-25','Corretiva',2000,'Reparo no motor.'),(5,5,'2025-02-01','Preventiva',1000,'Manutenção programada.'),(6,6,'2025-02-05','Corretiva',500,'Substituição de bateria.'),(7,7,'2025-02-10','Preventiva',1300,'Checagem de suspensão e freios.'),(8,8,'2025-02-15','Corretiva',700,'Reparo em componentes elétricos.'),(9,9,'2025-02-20','Preventiva',1100,'Revisão geral antes da viagem.'),(10,10,'2025-02-25','Corretiva',900,'Correção de vazamento de óleo.');
/*!40000 ALTER TABLE `manutencoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `motoristas`
--

DROP TABLE IF EXISTS `motoristas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `motoristas` (
  `idmotorista` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `cnh` varchar(20) NOT NULL,
  `categoria_cnh` varchar(5) DEFAULT NULL,
  `validade_cnh` date DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `endereco` text,
  PRIMARY KEY (`idmotorista`),
  UNIQUE KEY `cpf` (`cpf`),
  UNIQUE KEY `cnh` (`cnh`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `motoristas`
--

LOCK TABLES `motoristas` WRITE;
/*!40000 ALTER TABLE `motoristas` DISABLE KEYS */;
INSERT INTO `motoristas` VALUES (1,'João Silva','123.456.789-00','AB1234567','D','2025-08-15','(11) 98765-4321','Rua A, 123, São Paulo, SP'),(2,'Maria Oliveira','234.567.890-11','CD2345678','E','2026-12-01','(21) 91234-5678','Rua B, 456, Rio de Janeiro, RJ'),(3,'Carlos Santos','345.678.901-22','EF3456789','C','2024-05-20','(31) 97654-3210','Rua C, 789, Belo Horizonte, MG'),(4,'Ana Pereira','456.789.012-33','GH4567890','D','2025-07-30','(41) 93456-7890','Rua D, 101, Curitiba, PR'),(5,'José Souza','567.890.123-44','IJ5678901','E','2027-01-10','(51) 99876-5432','Rua E, 202, Porto Alegre, RS'),(6,'Fernanda Costa','678.901.234-55','KL6789012','B','2024-11-25','(61) 91234-7654','Rua F, 303, Brasília, DF'),(7,'Ricardo Lima','789.012.345-66','MN7890123','C','2025-03-15','(71) 97654-4321','Rua G, 404, Salvador, BA'),(8,'Patrícia Ribeiro','890.123.456-77','OP8901234','D','2026-09-05','(81) 99876-3210','Rua H, 505, Recife, PE'),(9,'Lucas Almeida','901.234.567-88','QR9012345','E','2027-02-20','(91) 93456-8901','Rua I, 606, Belém, PA'),(10,'Juliana Martins','012.345.678-99','ST0123456','C','2024-06-30','(31) 98765-1234','Rua J, 707, Vitória, ES');
/*!40000 ALTER TABLE `motoristas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rotas`
--

DROP TABLE IF EXISTS `rotas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rotas` (
  `idrota` int NOT NULL AUTO_INCREMENT,
  `origem` varchar(255) NOT NULL,
  `destino` varchar(255) NOT NULL,
  `distancia` float DEFAULT NULL,
  `descricao` text,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idrota`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rotas`
--

LOCK TABLES `rotas` WRITE;
/*!40000 ALTER TABLE `rotas` DISABLE KEYS */;
INSERT INTO `rotas` VALUES (1,'São Paulo','Rio de Janeiro',430,'Rota de transporte urbano','Ativa'),(2,'Belo Horizonte','Vitória',540,'Rota interestadual','Ativa'),(3,'Curitiba','Porto Alegre',710,'Transporte de cargas pesadas','Ativa'),(4,'Brasília','Goiânia',209,'Entrega rápida de mercadorias','Ativa'),(5,'Salvador','Recife',806,'Rota litorânea','Ativa'),(6,'Manaus','Boa Vista',746,'Rota na região norte','Ativa'),(7,'Belém','Macapá',328,'Travessia fluvial','Ativa'),(8,'Fortaleza','Natal',536,'Rota regional nordeste','Ativa'),(9,'Campo Grande','Cuiabá',698,'Rota centro-oeste','Ativa'),(10,'Florianópolis','Joinville',180,'Distribuição de produtos','Ativa');
/*!40000 ALTER TABLE `rotas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `veiculos`
--

DROP TABLE IF EXISTS `veiculos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `veiculos` (
  `idveiculo` int NOT NULL AUTO_INCREMENT,
  `marca` varchar(255) NOT NULL,
  `modelo` varchar(255) NOT NULL,
  `ano` int DEFAULT NULL,
  `placa` varchar(20) NOT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `capacidade` float DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idveiculo`),
  UNIQUE KEY `placa` (`placa`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `veiculos`
--

LOCK TABLES `veiculos` WRITE;
/*!40000 ALTER TABLE `veiculos` DISABLE KEYS */;
INSERT INTO `veiculos` VALUES (1,'Volkswagen','Constellation',2020,'ABC1D23','Caminhão',12.5,'Disponível'),(2,'Mercedes-Benz','Sprinter',2019,'EFG4H56','Van',4,'Disponível'),(3,'Scania','R450',2021,'IJK7L89','Caminhão',18,'Em Manutenção'),(4,'Ford','Transit',2020,'MNO1P23','Van',3.5,'Disponível'),(5,'Iveco','Daily',2018,'QRS4T56','Caminhão',10,'Disponível'),(6,'Chevrolet','S10',2022,'UVW7X89','Carro',1.5,'Disponível'),(7,'Toyota','Hilux',2019,'YZA1B23','Carro',1.8,'Em Manutenção'),(8,'Fiat','Ducato',2020,'CDE4F56','Van',4.5,'Disponível'),(9,'MAN','TGX',2021,'GHI7J89','Caminhão',20,'Disponível'),(10,'Renault','Kangoo',2019,'KLM1N23','Van',2,'Disponível');
/*!40000 ALTER TABLE `veiculos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viagens`
--

DROP TABLE IF EXISTS `viagens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `viagens` (
  `idviagem` int NOT NULL AUTO_INCREMENT,
  `idrota` int NOT NULL,
  `idveiculo` int NOT NULL,
  `idmotorista` int NOT NULL,
  `data_inicio` date DEFAULT NULL,
  `data_fim` date DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `observacoes` text,
  PRIMARY KEY (`idviagem`),
  KEY `idrota` (`idrota`),
  KEY `idveiculo` (`idveiculo`),
  KEY `idmotorista` (`idmotorista`),
  CONSTRAINT `viagens_ibfk_1` FOREIGN KEY (`idrota`) REFERENCES `rotas` (`idrota`),
  CONSTRAINT `viagens_ibfk_2` FOREIGN KEY (`idveiculo`) REFERENCES `veiculos` (`idveiculo`),
  CONSTRAINT `viagens_ibfk_3` FOREIGN KEY (`idmotorista`) REFERENCES `motoristas` (`idmotorista`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viagens`
--

LOCK TABLES `viagens` WRITE;
/*!40000 ALTER TABLE `viagens` DISABLE KEYS */;
INSERT INTO `viagens` VALUES (1,1,1,1,'2025-03-01','2025-03-02','Concluída','Entrega realizada com sucesso.'),(2,2,2,2,'2025-03-03','2025-03-04','Concluída','Entrega realizada dentro do prazo.'),(3,3,3,3,'2025-03-05','2025-03-06','Cancelada','Problema no veículo.'),(4,4,4,4,'2025-03-07','2025-03-08','Em Andamento','Entrega em progresso.'),(5,5,5,5,'2025-03-09','2025-03-10','Concluída','Carga entregue sem problemas.'),(6,6,6,6,'2025-03-11','2025-03-12','Em Andamento','Entrega próxima da conclusão.'),(7,7,7,7,'2025-03-13','2025-03-14','Concluída','Rota finalizada com sucesso.'),(8,8,8,8,'2025-03-15','2025-03-16','Concluída','Sem incidentes na viagem.'),(9,9,9,9,'2025-03-17','2025-03-18','Concluída','Carga entregue a tempo.'),(10,10,10,10,'2025-03-19','2025-03-20','Em Andamento','Preparando para entrega final.');
/*!40000 ALTER TABLE `viagens` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-15 14:16:04
