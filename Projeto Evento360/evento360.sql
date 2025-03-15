-- MySQL dump 10.13  Distrib 8.0.41, for Linux (x86_64)
--
-- Host: localhost    Database: evento360
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
-- Table structure for table `auditoria`
--

DROP TABLE IF EXISTS `auditoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auditoria` (
  `idauditoria` int NOT NULL AUTO_INCREMENT,
  `idusuario` int DEFAULT NULL,
  `acao` varchar(100) DEFAULT NULL,
  `detalhes` text,
  `data_hora` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idauditoria`),
  KEY `idusuario` (`idusuario`),
  CONSTRAINT `auditoria_ibfk_1` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`idusuario`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria`
--

LOCK TABLES `auditoria` WRITE;
/*!40000 ALTER TABLE `auditoria` DISABLE KEYS */;
INSERT INTO `auditoria` VALUES (1,1,'Criação de evento','Evento Hackathon de Inovação criado.','2025-03-01 13:00:00'),(2,2,'Edição de evento','Detalhes do Workshop de Marketing atualizados.','2025-03-02 17:00:00'),(3,3,'Exclusão de evento','Evento Simpósio de Meio Ambiente excluído.','2025-03-03 19:30:00'),(4,4,'Registro de participante','Novo participante Diego Fonseca registrado.','2025-03-04 14:20:00'),(5,5,'Alteração de senha','Senha do usuário Fernanda Oliveira alterada.','2025-03-05 12:45:00'),(6,6,'Criação de ingresso','Ingresso para o evento Hackathon de IA criado.','2025-03-06 18:10:00'),(7,1,'Edição de participante','E-mail do participante Juliana Souza atualizado.','2025-03-07 16:25:00'),(8,2,'Criação de evento','Evento Congresso de Medicina criado.','2025-03-08 15:40:00'),(9,3,'Edição de ingresso','Status do pagamento atualizado para ingresso 5.','2025-03-09 21:00:00'),(10,4,'Registro de participante','Novo participante Thais Rocha registrado.','2025-03-10 14:50:00'),(11,5,'Alteração de evento','Capacidade do evento Conferência de Tecnologia ajustada.','2025-03-11 13:10:00'),(12,6,'Criação de evento','Evento Cúpula de Educação criado.','2025-03-12 17:30:00'),(13,1,'Criação de feedback','Novo feedback inserido para o evento Hackathon de Inovação.','2025-03-13 12:55:00'),(14,2,'Exclusão de participante','Participante Isadora Melo removido.','2025-03-14 20:15:00'),(15,3,'Criação de evento','Evento Encontro de Startups criado.','2025-03-15 19:45:00');
/*!40000 ALTER TABLE `auditoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eventos`
--

DROP TABLE IF EXISTS `eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eventos` (
  `idevento` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `data` date NOT NULL,
  `local` varchar(150) DEFAULT NULL,
  `capacidade` int DEFAULT NULL,
  `descricao` text,
  `status` enum('ativo','inativo') DEFAULT 'ativo',
  `criadopor` int DEFAULT NULL,
  PRIMARY KEY (`idevento`),
  KEY `criadopor` (`criadopor`),
  CONSTRAINT `eventos_ibfk_1` FOREIGN KEY (`criadopor`) REFERENCES `usuarios` (`idusuario`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eventos`
--

LOCK TABLES `eventos` WRITE;
/*!40000 ALTER TABLE `eventos` DISABLE KEYS */;
INSERT INTO `eventos` VALUES (1,'Hackathon de Inovação','2025-05-10','São Paulo, SP',100,'Competição de desenvolvimento','ativo',2),(2,'Workshop de Marketing','2025-05-15','Rio de Janeiro, RJ',50,'Aprenda estratégias digitais','ativo',3),(3,'Seminário de Segurança','2025-06-10','Brasília, DF',200,'Discussão sobre segurança cibernética','ativo',1),(4,'Palestra de Empreendedorismo','2025-06-20','Fortaleza, CE',80,'Dicas de como empreender','inativo',2),(5,'Feira de Negócios','2025-07-05','Recife, PE',300,'Conexão entre empresas e startups','ativo',6),(6,'Conferência de Tecnologia','2025-07-20','Curitiba, PR',150,'Novas tendências na tecnologia','ativo',3),(7,'Simpósio de Meio Ambiente','2025-08-10','Manaus, AM',200,'Discussão sobre sustentabilidade','ativo',5),(8,'Treinamento em Finanças','2025-08-25','Porto Alegre, RS',100,'Gestão financeira pessoal','ativo',6),(9,'Congresso de Medicina','2025-09-15','São Paulo, SP',500,'Avanços na área médica','ativo',3),(10,'Festival de Inovação','2025-09-25','Belo Horizonte, MG',400,'Novas ideias para o futuro','ativo',2),(11,'Evento de Redes Sociais','2025-10-05','Salvador, BA',80,'Tendências no marketing digital','ativo',5),(12,'Encontro de Startups','2025-10-20','Campinas, SP',200,'Pitchs e networking','ativo',6),(13,'Workshop de Design','2025-11-01','Florianópolis, SC',50,'Aprenda técnicas de design','ativo',2),(14,'Cúpula de Educação','2025-11-15','Vitória, ES',100,'Inovações no ensino','ativo',5),(15,'Hackathon de Inteligência Artificial','2025-12-01','São Paulo, SP',120,'Soluções inovadoras usando IA','ativo',3);
/*!40000 ALTER TABLE `eventos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eventos_participantes`
--

DROP TABLE IF EXISTS `eventos_participantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eventos_participantes` (
  `idevento` int NOT NULL,
  `idparticipante` int NOT NULL,
  PRIMARY KEY (`idevento`,`idparticipante`),
  KEY `idparticipante` (`idparticipante`),
  CONSTRAINT `eventos_participantes_ibfk_1` FOREIGN KEY (`idevento`) REFERENCES `eventos` (`idevento`),
  CONSTRAINT `eventos_participantes_ibfk_2` FOREIGN KEY (`idparticipante`) REFERENCES `participantes` (`idparticipante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eventos_participantes`
--

LOCK TABLES `eventos_participantes` WRITE;
/*!40000 ALTER TABLE `eventos_participantes` DISABLE KEYS */;
INSERT INTO `eventos_participantes` VALUES (1,1),(1,2),(2,3),(2,4),(3,5),(3,6),(4,7),(4,8),(5,9),(5,10),(6,11),(6,12),(7,13),(7,14),(8,15);
/*!40000 ALTER TABLE `eventos_participantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `idfeedback` int NOT NULL AUTO_INCREMENT,
  `idevento` int DEFAULT NULL,
  `idparticipante` int DEFAULT NULL,
  `comentario` text,
  `nota` int DEFAULT NULL,
  `data_hora` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idfeedback`),
  KEY `idevento` (`idevento`),
  KEY `idparticipante` (`idparticipante`),
  CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`idevento`) REFERENCES `eventos` (`idevento`),
  CONSTRAINT `feedback_ibfk_2` FOREIGN KEY (`idparticipante`) REFERENCES `participantes` (`idparticipante`),
  CONSTRAINT `feedback_chk_1` CHECK ((`nota` between 1 and 5))
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (1,1,1,'Ótimo evento!',5,'2025-05-10 13:00:00'),(2,1,2,'Muito bem organizado.',4,'2025-05-10 14:00:00'),(3,2,3,'Gostei bastante.',5,'2025-05-15 13:00:00'),(4,2,4,'Poderia ser melhor.',3,'2025-05-15 14:30:00'),(5,3,5,'Adorei o conteúdo.',5,'2025-06-10 12:00:00'),(6,3,6,'Palestra excelente.',4,'2025-06-10 13:30:00'),(7,4,7,'Pouco interativo.',3,'2025-06-20 15:00:00'),(8,4,8,'Achei fraco.',2,'2025-06-20 16:00:00'),(9,5,9,'Muito interessante.',5,'2025-07-05 17:00:00'),(10,5,10,'Excelente networking.',4,'2025-07-05 18:30:00'),(11,6,11,'Conferência incrível.',5,'2025-07-20 19:00:00'),(12,6,12,'Aprendi bastante.',5,'2025-07-20 20:00:00'),(13,7,13,'Evento muito bem organizado.',4,'2025-08-10 13:00:00'),(14,7,14,'Pouca interação com o público.',3,'2025-08-10 14:00:00'),(15,8,15,'Gostei dos palestrantes.',4,'2025-08-25 17:00:00');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingressos`
--

DROP TABLE IF EXISTS `ingressos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ingressos` (
  `idingresso` int NOT NULL AUTO_INCREMENT,
  `idevento` int DEFAULT NULL,
  `idparticipante` int DEFAULT NULL,
  `data_compra` date NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `status_pagamento` enum('pendente','pago','cancelado') DEFAULT 'pendente',
  PRIMARY KEY (`idingresso`),
  KEY `idevento` (`idevento`),
  KEY `idparticipante` (`idparticipante`),
  CONSTRAINT `ingressos_ibfk_1` FOREIGN KEY (`idevento`) REFERENCES `eventos` (`idevento`),
  CONSTRAINT `ingressos_ibfk_2` FOREIGN KEY (`idparticipante`) REFERENCES `participantes` (`idparticipante`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingressos`
--

LOCK TABLES `ingressos` WRITE;
/*!40000 ALTER TABLE `ingressos` DISABLE KEYS */;
INSERT INTO `ingressos` VALUES (1,1,1,'2025-04-01',50.00,'pago'),(2,1,2,'2025-04-01',50.00,'pago'),(3,2,3,'2025-04-02',70.00,'pago'),(4,2,4,'2025-04-02',70.00,'pago'),(5,3,5,'2025-04-03',100.00,'pendente'),(6,3,6,'2025-04-03',100.00,'pago'),(7,4,7,'2025-04-04',30.00,'cancelado'),(8,4,8,'2025-04-04',30.00,'pago'),(9,5,9,'2025-04-05',150.00,'pago'),(10,5,10,'2025-04-05',150.00,'pendente'),(11,6,11,'2025-04-06',200.00,'pago'),(12,6,12,'2025-04-06',200.00,'pendente'),(13,7,13,'2025-04-07',40.00,'pago'),(14,7,14,'2025-04-07',40.00,'pago'),(15,8,15,'2025-04-08',50.00,'pago');
/*!40000 ALTER TABLE `ingressos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participantes`
--

DROP TABLE IF EXISTS `participantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `participantes` (
  `idparticipante` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`idparticipante`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participantes`
--

LOCK TABLES `participantes` WRITE;
/*!40000 ALTER TABLE `participantes` DISABLE KEYS */;
INSERT INTO `participantes` VALUES (1,'Amanda Dias','amanda.dias@email.com'),(2,'Breno Teixeira','breno.teixeira@email.com'),(3,'Camila Barbosa','camila.barbosa@email.com'),(4,'Diego Fonseca','diego.fonseca@email.com'),(5,'Elaine Costa','elaine.costa@email.com'),(6,'Fernando Pereira','fernando.pereira@email.com'),(7,'Giovana Lopes','giovana.lopes@email.com'),(8,'Henrique Santos','henrique.santos@email.com'),(9,'Isadora Melo','isadora.melo@email.com'),(10,'Juliana Souza','juliana.souza@email.com'),(11,'Leandro Almeida','leandro.almeida@email.com'),(12,'Marcelo Silva','marcelo.silva@email.com'),(13,'Patrícia Ribeiro','patricia.ribeiro@email.com'),(14,'Rafael Campos','rafael.campos@email.com'),(15,'Thais Rocha','thais.rocha@email.com');
/*!40000 ALTER TABLE `participantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `redes_sociais`
--

DROP TABLE IF EXISTS `redes_sociais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `redes_sociais` (
  `idrede_social` int NOT NULL AUTO_INCREMENT,
  `entidade_tipo` enum('evento','participante','organizador') NOT NULL,
  `identidade` int NOT NULL,
  `plataforma` varchar(50) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`idrede_social`),
  KEY `identidade` (`identidade`),
  CONSTRAINT `redes_sociais_ibfk_1` FOREIGN KEY (`identidade`) REFERENCES `eventos` (`idevento`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `redes_sociais`
--

LOCK TABLES `redes_sociais` WRITE;
/*!40000 ALTER TABLE `redes_sociais` DISABLE KEYS */;
INSERT INTO `redes_sociais` VALUES (1,'evento',1,'Facebook','https://facebook.com/hackathon-inovacao'),(2,'evento',1,'Instagram','https://instagram.com/hackathon-inovacao'),(3,'evento',2,'Twitter','https://twitter.com/workshop-marketing'),(4,'evento',3,'LinkedIn','https://linkedin.com/company/seguranca-cibernetica'),(5,'participante',4,'Instagram','https://instagram.com/diego_fonseca'),(6,'participante',5,'Twitter','https://twitter.com/elaine_costa'),(7,'organizador',6,'LinkedIn','https://linkedin.com/in/fernando-pereira'),(8,'evento',6,'Facebook','https://facebook.com/conferencia-tecnologia'),(9,'evento',7,'Instagram','https://instagram.com/simposio-meioambiente'),(10,'participante',8,'LinkedIn','https://linkedin.com/in/henrique_santos'),(11,'participante',9,'Facebook','https://facebook.com/isadora-melo'),(12,'evento',10,'Twitter','https://twitter.com/festival-inovacao'),(13,'evento',11,'Instagram','https://instagram.com/evento-redes-sociais'),(14,'organizador',12,'Twitter','https://twitter.com/lucas_martins'),(15,'participante',13,'Facebook','https://facebook.com/giovana-lopes');
/*!40000 ALTER TABLE `redes_sociais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `idusuario` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha_hash` varchar(255) NOT NULL,
  `tipo_usuario` enum('admin','organizador','participante') NOT NULL,
  PRIMARY KEY (`idusuario`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Ana Clara','ana.clara@email.com','senha123','admin'),(2,'Bruno Silva','bruno.silva@email.com','senha123','organizador'),(3,'Carlos Santos','carlos.santos@email.com','senha123','organizador'),(4,'Daniela Costa','daniela.costa@email.com','senha123','participante'),(5,'Eduardo Lima','eduardo.lima@email.com','senha123','participante'),(6,'Fernanda Oliveira','fernanda.oliveira@email.com','senha123','organizador'),(7,'Gabriel Almeida','gabriel.almeida@email.com','senha123','admin'),(8,'Heloisa Mendes','heloisa.mendes@email.com','senha123','participante'),(9,'Isabela Souza','isabela.souza@email.com','senha123','participante'),(10,'João Pedro','joao.pedro@email.com','senha123','participante'),(11,'Karina Rocha','karina.rocha@email.com','senha123','organizador'),(12,'Lucas Martins','lucas.martins@email.com','senha123','participante'),(13,'Mariana Freitas','mariana.freitas@email.com','senha123','organizador'),(14,'Nathalia Ribeiro','nathalia.ribeiro@email.com','senha123','admin'),(15,'Otávio Pereira','otavio.pereira@email.com','senha123','participante');
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

-- Dump completed on 2025-03-15 14:10:05
