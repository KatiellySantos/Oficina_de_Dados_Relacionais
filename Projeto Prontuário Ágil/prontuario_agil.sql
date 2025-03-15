-- MySQL dump 10.13  Distrib 8.0.41, for Linux (x86_64)
--
-- Host: localhost    Database: prontuario_agil
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
-- Table structure for table `agendamentos`
--

DROP TABLE IF EXISTS `agendamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agendamentos` (
  `idagendamento` int NOT NULL AUTO_INCREMENT,
  `idpaciente` int DEFAULT NULL,
  `idmedico` int DEFAULT NULL,
  `data_agendamento` datetime DEFAULT NULL,
  PRIMARY KEY (`idagendamento`),
  KEY `idpaciente` (`idpaciente`),
  KEY `idmedico` (`idmedico`),
  CONSTRAINT `agendamentos_ibfk_1` FOREIGN KEY (`idpaciente`) REFERENCES `pacientes` (`idpaciente`),
  CONSTRAINT `agendamentos_ibfk_2` FOREIGN KEY (`idmedico`) REFERENCES `medicos` (`idmedico`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agendamentos`
--

LOCK TABLES `agendamentos` WRITE;
/*!40000 ALTER TABLE `agendamentos` DISABLE KEYS */;
INSERT INTO `agendamentos` VALUES (1,1,1,'2025-03-01 09:30:00'),(2,2,2,'2025-03-02 13:30:00'),(3,3,3,'2025-03-03 09:00:00'),(4,4,4,'2025-03-04 15:00:00'),(5,5,5,'2025-03-05 10:30:00'),(6,6,6,'2025-03-06 14:00:00'),(7,7,7,'2025-03-07 08:00:00'),(8,8,8,'2025-03-08 11:00:00'),(9,9,9,'2025-03-09 16:00:00'),(10,10,10,'2025-03-10 12:30:00');
/*!40000 ALTER TABLE `agendamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consultas`
--

DROP TABLE IF EXISTS `consultas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consultas` (
  `idconsulta` int NOT NULL AUTO_INCREMENT,
  `idpaciente` int DEFAULT NULL,
  `data_consulta` datetime DEFAULT NULL,
  `motivo` text,
  `diagnostico` text,
  `tratamento` text,
  `medico_responsavel` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idconsulta`),
  KEY `idpaciente` (`idpaciente`),
  CONSTRAINT `consultas_ibfk_1` FOREIGN KEY (`idpaciente`) REFERENCES `pacientes` (`idpaciente`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consultas`
--

LOCK TABLES `consultas` WRITE;
/*!40000 ALTER TABLE `consultas` DISABLE KEYS */;
INSERT INTO `consultas` VALUES (1,1,'2025-03-01 10:00:00','Dor no peito','Angina','Mudança de dieta e medicamentos','Dr. Roberto Almeida'),(2,2,'2025-03-02 14:00:00','Febre alta','Gripe','Antitérmico e repouso','Dra. Fernanda Costa'),(3,3,'2025-03-03 09:30:00','Manchas na pele','Dermatite','Pomada antialérgica','Dr. Marcos Dias'),(4,4,'2025-03-04 15:00:00','Cólica menstrual intensa','Dismenorreia','Analgésicos e anti-inflamatórios','Dra. Renata Nogueira'),(5,5,'2025-03-05 10:30:00','Dor nas costas','Hérnia de disco','Fisioterapia e medicação','Dr. André Santos'),(6,6,'2025-03-06 14:00:00','Dores de cabeça frequentes','Enxaqueca','Mudança de hábitos e medicação preventiva','Dra. Paula Vieira'),(7,7,'2025-03-07 08:00:00','Insônia e ansiedade','Transtorno de ansiedade','Terapia e ansiolíticos','Dr. Henrique Lopes'),(8,8,'2025-03-08 11:00:00','Ganho de peso repentino','Hipotireoidismo','Reposição hormonal','Dra. Juliana Ramos'),(9,9,'2025-03-09 16:00:00','Visão turva','Miopia','Prescrição de óculos','Dr. Ricardo Pires'),(10,10,'2025-03-10 12:30:00','Infecção urinária','Cistite','Antibióticos','Dra. Carolina Torres');
/*!40000 ALTER TABLE `consultas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exames`
--

DROP TABLE IF EXISTS `exames`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exames` (
  `idexame` int NOT NULL AUTO_INCREMENT,
  `idconsulta` int DEFAULT NULL,
  `tipo_exame` varchar(255) DEFAULT NULL,
  `resultado` text,
  `data_exame` datetime DEFAULT NULL,
  PRIMARY KEY (`idexame`),
  KEY `idconsulta` (`idconsulta`),
  CONSTRAINT `exames_ibfk_1` FOREIGN KEY (`idconsulta`) REFERENCES `consultas` (`idconsulta`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exames`
--

LOCK TABLES `exames` WRITE;
/*!40000 ALTER TABLE `exames` DISABLE KEYS */;
INSERT INTO `exames` VALUES (51,1,'Eletrocardiograma','Sem anormalidades','2025-03-01 11:00:00'),(52,2,'Hemograma completo','Leucócitos elevados','2025-03-02 15:00:00'),(53,3,'Biópsia de pele','Lesão benigna','2025-03-03 10:30:00'),(54,4,'Ultrassonografia abdominal','Tudo normal','2025-03-04 16:00:00'),(55,5,'Ressonância magnética','Hérnia de disco identificada','2025-03-05 13:00:00'),(56,6,'Teste de intolerância à lactose','Positivo','2025-03-06 15:30:00'),(57,7,'Eletroencefalograma','Atividade cerebral normal','2025-03-07 09:30:00'),(58,8,'Ecocardiograma','Função cardíaca normal','2025-03-08 12:00:00'),(59,9,'Raio-X do braço','Fratura consolidada','2025-03-09 17:00:00'),(60,10,'Endoscopia digestiva','Sem alterações','2025-03-10 14:00:00');
/*!40000 ALTER TABLE `exames` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historico_medico`
--

DROP TABLE IF EXISTS `historico_medico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historico_medico` (
  `idhistorico` int NOT NULL AUTO_INCREMENT,
  `idpaciente` int DEFAULT NULL,
  `descricao` text,
  `data_registro` datetime DEFAULT NULL,
  PRIMARY KEY (`idhistorico`),
  KEY `idpaciente` (`idpaciente`),
  CONSTRAINT `historico_medico_ibfk_1` FOREIGN KEY (`idpaciente`) REFERENCES `pacientes` (`idpaciente`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historico_medico`
--

LOCK TABLES `historico_medico` WRITE;
/*!40000 ALTER TABLE `historico_medico` DISABLE KEYS */;
INSERT INTO `historico_medico` VALUES (1,1,'Hipertensão diagnosticada em 2020.','2025-03-01 10:00:00'),(2,2,'Alergia a medicamentos anti-inflamatórios.','2025-03-02 14:00:00'),(3,3,'Diabetes tipo 2 controlada.','2025-03-03 09:30:00'),(4,4,'Histórico de asma na infância.','2025-03-04 15:00:00'),(5,5,'Cirurgia de apendicite em 2018.','2025-03-05 10:30:00'),(6,6,'Intolerância à lactose.','2025-03-06 14:00:00'),(7,7,'Tratamento de ansiedade desde 2019.','2025-03-07 08:00:00'),(8,8,'Histórico familiar de doenças cardíacas.','2025-03-08 11:00:00'),(9,9,'Fratura no braço direito em 2022.','2025-03-09 16:00:00'),(10,10,'Tratamento odontológico extensivo.','2025-03-10 12:30:00');
/*!40000 ALTER TABLE `historico_medico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicos`
--

DROP TABLE IF EXISTS `medicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicos` (
  `idmedico` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `especializacao` varchar(255) DEFAULT NULL,
  `crm` varchar(20) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`idmedico`),
  UNIQUE KEY `crm` (`crm`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicos`
--

LOCK TABLES `medicos` WRITE;
/*!40000 ALTER TABLE `medicos` DISABLE KEYS */;
INSERT INTO `medicos` VALUES (1,'Dr. Roberto Almeida','Cardiologia','123456-CE','85991234567'),(2,'Dra. Fernanda Costa','Pediatria','654321-CE','85992345678'),(3,'Dr. Marcos Dias','Dermatologia','789456-CE','85993456789'),(4,'Dra. Renata Nogueira','Ginecologia','321654-CE','85994567890'),(5,'Dr. André Santos','Ortopedia','987123-CE','85995678901'),(6,'Dra. Paula Vieira','Neurologia','147258-CE','85996789012'),(7,'Dr. Henrique Lopes','Psiquiatria','852369-CE','85997890123'),(8,'Dra. Juliana Ramos','Endocrinologia','963741-CE','85998901234'),(9,'Dr. Ricardo Pires','Oftalmologia','258147-CE','85999012345'),(10,'Dra. Carolina Torres','Urologia','369258-CE','85999123456');
/*!40000 ALTER TABLE `medicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notificacoes`
--

DROP TABLE IF EXISTS `notificacoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notificacoes` (
  `idnotificacao` int NOT NULL AUTO_INCREMENT,
  `idusuario` int DEFAULT NULL,
  `mensagem` text,
  `data_notificacao` datetime DEFAULT NULL,
  PRIMARY KEY (`idnotificacao`),
  KEY `idusuario` (`idusuario`),
  CONSTRAINT `notificacoes_ibfk_1` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`idusuario`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notificacoes`
--

LOCK TABLES `notificacoes` WRITE;
/*!40000 ALTER TABLE `notificacoes` DISABLE KEYS */;
INSERT INTO `notificacoes` VALUES (31,1,'Consulta agendada para 2025-03-01 às 10:00.','2025-02-28 09:00:00'),(32,2,'Consulta agendada para 2025-03-02 às 14:00.','2025-03-01 10:00:00'),(33,3,'Exame de sangue agendado.','2025-03-03 08:00:00'),(34,4,'Nova consulta marcada.','2025-03-04 13:00:00'),(35,5,'Pagamento pendente.','2025-03-05 12:00:00'),(36,6,'Consulta agendada para amanhã.','2025-03-06 09:00:00'),(37,7,'Atualização no histórico médico.','2025-03-07 11:00:00'),(38,8,'Exame de ultrassom realizado.','2025-03-08 10:00:00'),(39,9,'Resultado do exame disponível.','2025-03-09 15:00:00'),(40,10,'Consulta de retorno agendada.','2025-03-10 08:00:00');
/*!40000 ALTER TABLE `notificacoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pacientes`
--

DROP TABLE IF EXISTS `pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pacientes` (
  `idpaciente` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `cpf` varchar(14) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `endereco` text,
  `email` varchar(255) DEFAULT NULL,
  `genero` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idpaciente`),
  UNIQUE KEY `cpf` (`cpf`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pacientes`
--

LOCK TABLES `pacientes` WRITE;
/*!40000 ALTER TABLE `pacientes` DISABLE KEYS */;
INSERT INTO `pacientes` VALUES (1,'Maria Oliveira','123.456.789-00','1990-05-12','85991234567','Rua A, 123','maria@gmail.com','F'),(2,'João Silva','987.654.321-00','1985-02-25','85992345678','Rua B, 456','joao@gmail.com','M'),(3,'Ana Souza','321.654.987-00','2000-08-15','85993456789','Rua C, 789','ana@gmail.com','F'),(4,'Carlos Costa','456.789.123-00','1992-11-10','85994567890','Rua D, 321','carlos@gmail.com','M'),(5,'Beatriz Lima','654.321.987-00','1998-07-20','85995678901','Rua E, 654','beatriz@gmail.com','F'),(6,'Lucas Ferreira','789.123.456-00','1987-04-05','85996789012','Rua F, 987','lucas@gmail.com','M'),(7,'Camila Santos','147.258.369-00','1995-09-15','85997890123','Rua G, 147','camila@gmail.com','F'),(8,'Gustavo Mendes','258.369.147-00','1993-03-18','85998901234','Rua H, 258','gustavo@gmail.com','M'),(9,'Isabela Nunes','369.147.258-00','2001-12-30','85999012345','Rua I, 369','isabela@gmail.com','F'),(10,'Pedro Martins','741.852.963-00','1989-01-22','85999123456','Rua J, 741','pedro@gmail.com','M');
/*!40000 ALTER TABLE `pacientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagamentos`
--

DROP TABLE IF EXISTS `pagamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagamentos` (
  `idpagamento` int NOT NULL AUTO_INCREMENT,
  `idconsulta` int DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  `metodo_pagamento` varchar(50) DEFAULT NULL,
  `data_pagamento` datetime DEFAULT NULL,
  PRIMARY KEY (`idpagamento`),
  KEY `idconsulta` (`idconsulta`),
  CONSTRAINT `pagamentos_ibfk_1` FOREIGN KEY (`idconsulta`) REFERENCES `consultas` (`idconsulta`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagamentos`
--

LOCK TABLES `pagamentos` WRITE;
/*!40000 ALTER TABLE `pagamentos` DISABLE KEYS */;
INSERT INTO `pagamentos` VALUES (1,1,250.00,'Cartão de Crédito','2025-03-01 12:00:00'),(2,2,150.00,'Dinheiro','2025-03-02 16:00:00'),(3,3,300.00,'Cartão de Débito','2025-03-03 11:00:00'),(4,4,200.00,'Pix','2025-03-04 17:00:00'),(5,5,350.00,'Cartão de Crédito','2025-03-05 14:00:00'),(6,6,100.00,'Dinheiro','2025-03-06 16:00:00'),(7,7,400.00,'Pix','2025-03-07 10:00:00'),(8,8,220.00,'Cartão de Crédito','2025-03-08 13:00:00'),(9,9,180.00,'Dinheiro','2025-03-09 18:00:00'),(10,10,270.00,'Cartão de Débito','2025-03-10 15:00:00');
/*!40000 ALTER TABLE `pagamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `idusuario` int NOT NULL AUTO_INCREMENT,
  `nome_usuario` varchar(255) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL,
  `tipo_usuario` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idusuario`),
  UNIQUE KEY `nome_usuario` (`nome_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'admin1','senha123','admin'),(2,'medico1','senha123','medico'),(3,'recepcao1','senha123','recepcionista'),(4,'admin2','senha456','admin'),(5,'medico2','senha456','medico'),(6,'recepcao2','senha456','recepcionista'),(7,'admin3','senha789','admin'),(8,'medico3','senha789','medico'),(9,'recepcao3','senha789','recepcionista'),(10,'admin4','senha987','admin');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-15 14:18:39
