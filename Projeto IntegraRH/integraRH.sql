-- MySQL dump 10.13  Distrib 8.0.41, for Linux (x86_64)
--
-- Host: localhost    Database: integraRH
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
-- Table structure for table `cargos`
--

DROP TABLE IF EXISTS `cargos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cargos` (
  `idcargos` int NOT NULL AUTO_INCREMENT,
  `nome_cargo` varchar(50) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `nivel_hierarquia` int NOT NULL,
  `salario_base_padrao` decimal(10,2) NOT NULL,
  PRIMARY KEY (`idcargos`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargos`
--

LOCK TABLES `cargos` WRITE;
/*!40000 ALTER TABLE `cargos` DISABLE KEYS */;
INSERT INTO `cargos` VALUES (1,'Gerente','Responsável pela gestão da equipe',1,8000.00),(2,'Analista','Realiza análises e relatórios',2,5000.00),(3,'Assistente','Dá suporte às tarefas administrativas',3,3000.00),(4,'Desenvolvedor','Criação de soluções tecnológicas',2,5500.00),(5,'Designer','Criação de materiais gráficos',3,4500.00),(6,'Administrador','Gerencia rotinas administrativas',1,7000.00),(7,'Coordenador','Coordena equipes e projetos',2,6000.00),(8,'Técnico','Suporte técnico em TI',3,4000.00),(9,'Consultor','Fornece orientações estratégicas',1,7500.00),(10,'Estagiário','Treinamento e suporte inicial',4,1500.00),(11,'RH','Gestão de recursos humanos',2,6500.00),(12,'Supervisor','Supervisão de operações',2,5800.00),(13,'Operador','Executa tarefas operacionais',3,3200.00),(14,'Engenheiro','Projetos e execução técnica',2,8500.00),(15,'Vendedor','Vendas e atendimento ao cliente',3,3000.00);
/*!40000 ALTER TABLE `cargos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamentos`
--

DROP TABLE IF EXISTS `departamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departamentos` (
  `iddepartamentos` int NOT NULL AUTO_INCREMENT,
  `nome_departamento` varchar(50) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `localizacao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`iddepartamentos`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamentos`
--

LOCK TABLES `departamentos` WRITE;
/*!40000 ALTER TABLE `departamentos` DISABLE KEYS */;
INSERT INTO `departamentos` VALUES (1,'Recursos Humanos','Gerencia os assuntos de pessoal','Andar 3, Sala 305'),(2,'TI','Cuida da infraestrutura tecnológica','Andar 2, Sala 210'),(3,'Marketing','Coordena campanhas publicitárias','Andar 5, Sala 508'),(4,'Financeiro','Gerencia o fluxo financeiro','Andar 1, Sala 101'),(5,'Logística','Organiza o transporte e estoque','Andar 1, Sala 102'),(6,'Jurídico','Assessoria jurídica','Andar 3, Sala 306'),(7,'Produção','Cuida da fabricação e controle','Galpão 2'),(8,'Comercial','Estratégias de vendas','Andar 4, Sala 405'),(9,'Pesquisa','Desenvolvimento de produtos','Andar 4, Sala 408'),(10,'Atendimento','Suporte ao cliente','Andar 1, Sala 108'),(11,'Qualidade','Controle de qualidade','Galpão 3'),(12,'Comunicação','Relações públicas e comunicação','Andar 5, Sala 509'),(13,'Tecnologia','Desenvolvimento de sistemas','Andar 2, Sala 212'),(14,'Manutenção','Manutenção geral','Galpão 1'),(15,'Estratégia','Planejamento estratégico','Andar 3, Sala 304');
/*!40000 ALTER TABLE `departamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frequencias`
--

DROP TABLE IF EXISTS `frequencias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `frequencias` (
  `idfrequencia` int NOT NULL AUTO_INCREMENT,
  `idfuncionarios` int DEFAULT NULL,
  `data` date NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'Presente',
  `motivo_ausencia` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idfrequencia`),
  KEY `idFuncionarios` (`idfuncionarios`),
  CONSTRAINT `frequencias_ibfk_1` FOREIGN KEY (`idfuncionarios`) REFERENCES `funcionarios` (`idfuncionarios`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frequencias`
--

LOCK TABLES `frequencias` WRITE;
/*!40000 ALTER TABLE `frequencias` DISABLE KEYS */;
INSERT INTO `frequencias` VALUES (1,1,'2023-03-01','Presente',NULL),(2,2,'2023-03-02','Ausente','Consultas médicas'),(3,3,'2023-03-03','Presente',NULL),(4,4,'2023-03-01','Presente',NULL),(5,5,'2023-03-04','Presente',NULL),(6,6,'2023-03-05','Ausente','Motivo pessoal'),(7,7,'2023-03-06','Presente',NULL),(8,8,'2023-03-07','Presente',NULL),(9,9,'2023-03-08','Ausente','Treinamento externo'),(10,10,'2023-03-09','Presente',NULL),(11,11,'2023-03-10','Presente',NULL),(12,12,'2023-03-11','Ausente','Doença'),(13,13,'2023-03-12','Presente',NULL),(14,14,'2023-03-13','Presente',NULL),(15,15,'2023-03-14','Ausente','Viagem a trabalho');
/*!40000 ALTER TABLE `frequencias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionarios`
--

DROP TABLE IF EXISTS `funcionarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionarios` (
  `idfuncionarios` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `data_nascimento` date NOT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `email_corporativo` varchar(100) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `estado_civil` varchar(20) DEFAULT NULL,
  `contato_emergencia` varchar(100) DEFAULT NULL,
  `data_admissao` date NOT NULL,
  `status_funcionario` varchar(20) DEFAULT 'Ativo',
  `idcargos` int NOT NULL,
  PRIMARY KEY (`idfuncionarios`),
  UNIQUE KEY `cpf` (`cpf`),
  UNIQUE KEY `email_corporativo` (`email_corporativo`),
  KEY `idcargos` (`idcargos`),
  CONSTRAINT `funcionarios_ibfk_1` FOREIGN KEY (`idcargos`) REFERENCES `cargos` (`idcargos`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionarios`
--

LOCK TABLES `funcionarios` WRITE;
/*!40000 ALTER TABLE `funcionarios` DISABLE KEYS */;
INSERT INTO `funcionarios` VALUES (1,'João Silva','12345678901','1985-06-15','11987654321','joao.silva@empresa.com','Rua Exemplo, 123','Solteiro','Ana Silva - 1199887766','2020-03-01','Ativo',1),(2,'Maria Oliveira','98765432100','1990-04-20','11966554432','maria.oliveira@empresa.com','Avenida Central, 456','Casada','Paulo Oliveira - 1188776655','2018-07-10','Ativo',2),(3,'Lucas Pereira','65432198700','1995-08-12','11955443322','lucas.pereira@empresa.com','Rua dos Lírios, 78','Solteiro','Márcia Pereira - 11988774455','2021-04-22','Ativo',3),(4,'Ana Lima','32178965420','1988-11-05','11944332211','ana.lima@empresa.com','Avenida Brasil, 987','Casada','Roberto Lima - 11977665544','2017-02-10','Ativo',2),(5,'Bruno Costa','78965412300','1992-01-30','11999988877','bruno.costa@empresa.com','Rua das Flores, 321','Solteiro','Carla Costa - 11966557788','2019-09-15','Ativo',3),(6,'Paula Santos','45612378909','1985-03-10','11977665533','paula.santos@empresa.com','Rua Aurora, 11','Divorciada','José Santos - 11988776655','2015-12-01','Ativo',4),(7,'Igor Souza','96325874130','1998-06-25','11944332200','igor.souza@empresa.com','Rua Verde, 456','Solteiro','Tatiana Souza - 11966558877','2022-01-18','Ativo',5),(8,'Renata Rocha','25896314777','1982-05-20','11955443366','renata.rocha@empresa.com','Avenida Azul, 789','Viúva','Rodrigo Rocha - 11999887744','2016-03-29','Ativo',1),(9,'Thiago Mendes','85274196322','1993-08-15','11988776699','thiago.mendes@empresa.com','Rua Cedro, 101','Casado','Camila Mendes - 11977665522','2020-06-11','Ativo',2),(10,'Fernanda Alves','74125896311','1987-12-10','11933221188','fernanda.alves@empresa.com','Rua Palmeira, 88','Solteira','Daniel Alves - 11966554433','2019-11-01','Ativo',3),(11,'Rafael Vieira','98765432111','1990-02-25','11999988777','rafael.vieira@empresa.com','Rua dos Sonhos, 999','Casado','Patrícia Vieira - 11955443311','2016-10-15','Ativo',4),(12,'Camila Torres','12378965444','1995-09-14','11944332255','camila.torres@empresa.com','Rua Horizonte, 100','Solteira','Marcos Torres - 11977665588','2018-04-10','Ativo',1),(13,'André Martins','65412378922','1980-07-20','11966557744','andre.martins@empresa.com','Rua Oceano, 555','Casado','Maria Martins - 11988776611','2021-09-05','Ativo',2),(14,'Juliana Barros','85296374199','1989-11-30','11988877722','juliana.barros@empresa.com','Rua Neve, 77','Divorciada','Pedro Barros - 11999886644','2017-01-15','Ativo',3),(15,'Vitor Almeida','45678912333','1986-04-18','11933221144','vitor.almeida@empresa.com','Rua Laranja, 202','Solteiro','Clara Almeida - 11955443322','2015-06-01','Ativo',4);
/*!40000 ALTER TABLE `funcionarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historico_funcionarios`
--

DROP TABLE IF EXISTS `historico_funcionarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historico_funcionarios` (
  `idhistorico_funcionarios` int NOT NULL AUTO_INCREMENT,
  `idfuncionarios` int NOT NULL,
  `data_mudanca` date NOT NULL,
  `tipo_mudanca` varchar(50) NOT NULL,
  `observacoes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idhistorico_funcionarios`),
  KEY `idfuncionarios` (`idfuncionarios`),
  CONSTRAINT `historico_funcionarios_ibfk_1` FOREIGN KEY (`idfuncionarios`) REFERENCES `funcionarios` (`idfuncionarios`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historico_funcionarios`
--

LOCK TABLES `historico_funcionarios` WRITE;
/*!40000 ALTER TABLE `historico_funcionarios` DISABLE KEYS */;
INSERT INTO `historico_funcionarios` VALUES (1,1,'2023-01-01','Promoção','Elevado ao cargo de gerente'),(2,2,'2022-10-15','Transferência','Mudança para o departamento de TI'),(3,3,'2021-08-10','Contratação','Início no cargo de assistente'),(4,4,'2023-03-01','Promoção','Avançado para analista'),(5,5,'2022-08-01','Reajuste','Salário atualizado por desempenho'),(6,6,'2021-07-15','Transferência','Mudado para o departamento comercial'),(7,7,'2022-12-20','Promoção','Passou a coordenador técnico'),(8,8,'2023-02-01','Contratação','Início no cargo de designer gráfico'),(9,9,'2021-03-10','Reajuste','Salário ajustado por novo contrato'),(10,10,'2022-11-05','Promoção','Elevação para operador pleno'),(11,11,'2021-05-15','Transferência','Movido para o setor jurídico'),(12,12,'2022-04-25','Reajuste','Bonificação por metas atingidas'),(13,13,'2023-01-15','Promoção','Designado a gerente regional'),(14,14,'2021-10-01','Contratação','Contratado como engenheiro de produto'),(15,15,'2022-12-10','Promoção','Passou a analista sênior');
/*!40000 ALTER TABLE `historico_funcionarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historico_salarios`
--

DROP TABLE IF EXISTS `historico_salarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historico_salarios` (
  `idhistorico` int NOT NULL AUTO_INCREMENT,
  `idfuncionarios` int NOT NULL,
  `salario_anterior` decimal(10,2) DEFAULT NULL,
  `novo_salario` decimal(10,2) DEFAULT NULL,
  `data_alteracao` date NOT NULL,
  `motivo_alteracao` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idhistorico`),
  KEY `idfuncionarios` (`idfuncionarios`),
  CONSTRAINT `historico_salarios_ibfk_1` FOREIGN KEY (`idfuncionarios`) REFERENCES `funcionarios` (`idfuncionarios`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historico_salarios`
--

LOCK TABLES `historico_salarios` WRITE;
/*!40000 ALTER TABLE `historico_salarios` DISABLE KEYS */;
INSERT INTO `historico_salarios` VALUES (1,1,6000.00,8000.00,'2023-01-01','Promovido para gerente'),(2,2,4500.00,5000.00,'2022-11-10','Reajuste anual'),(3,3,2800.00,3000.00,'2021-07-15','Ajuste inicial'),(4,4,6200.00,7000.00,'2023-03-01','Promoção de cargo'),(5,5,3000.00,3200.00,'2022-08-20','Reajuste padrão'),(6,6,3500.00,4000.00,'2021-05-12','Bonificação incluída'),(7,7,5000.00,5500.00,'2022-12-10','Reajuste anual'),(8,8,4300.00,4500.00,'2020-09-15','Ajuste contratual'),(9,9,5000.00,5800.00,'2023-06-01','Promoção interna'),(10,10,1200.00,1500.00,'2022-11-25','Bolsa estágio'),(11,11,5500.00,6000.00,'2021-10-10','Reajuste salarial'),(12,12,4500.00,5000.00,'2023-04-12','Promoção de analista'),(13,13,3000.00,3200.00,'2020-03-19','Reajuste técnico'),(14,14,8000.00,8500.00,'2022-07-01','Novo cargo técnico'),(15,15,2800.00,3000.00,'2021-11-17','Ajuste de contrato');
/*!40000 ALTER TABLE `historico_salarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salarios`
--

DROP TABLE IF EXISTS `salarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salarios` (
  `idsalarios` int NOT NULL AUTO_INCREMENT,
  `idfuncionarios` int NOT NULL,
  `salario_base` decimal(10,2) NOT NULL,
  `beneficios` decimal(10,2) DEFAULT NULL,
  `descontos` decimal(10,2) DEFAULT NULL,
  `data_ajuste` date NOT NULL,
  `metodo_pagamento` varchar(50) DEFAULT NULL,
  `justificativa_ajuste` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idsalarios`),
  KEY `idfuncionarios` (`idfuncionarios`),
  CONSTRAINT `salarios_ibfk_1` FOREIGN KEY (`idfuncionarios`) REFERENCES `funcionarios` (`idfuncionarios`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salarios`
--

LOCK TABLES `salarios` WRITE;
/*!40000 ALTER TABLE `salarios` DISABLE KEYS */;
INSERT INTO `salarios` VALUES (1,1,8000.00,2000.00,500.00,'2023-01-01','Transferência','Promovido para gerente'),(2,2,5000.00,1500.00,300.00,'2022-11-10','Transferência','Reajuste anual'),(3,3,3000.00,1000.00,200.00,'2021-07-15','Cheque','Ajuste inicial'),(4,4,7000.00,2200.00,400.00,'2023-03-01','Transferência','Promoção de cargo'),(5,5,3200.00,900.00,150.00,'2022-08-20','Pix','Reajuste padrão'),(6,6,4000.00,1000.00,300.00,'2021-05-12','Transferência','Bonificação incluída'),(7,7,5500.00,1200.00,250.00,'2022-12-10','Pix','Reajuste anual'),(8,8,4500.00,1100.00,400.00,'2020-09-15','Cheque','Ajuste contratual'),(9,9,5800.00,1500.00,500.00,'2023-06-01','Transferência','Promoção interna'),(10,10,1500.00,400.00,100.00,'2022-11-25','Pix','Bolsa estágio'),(11,11,6000.00,1600.00,350.00,'2021-10-10','Transferência','Reajuste salarial'),(12,12,5000.00,1300.00,300.00,'2023-04-12','Pix','Promoção de analista'),(13,13,3200.00,800.00,100.00,'2020-03-19','Cheque','Reajuste técnico'),(14,14,8500.00,2400.00,600.00,'2022-07-01','Transferência','Novo cargo técnico'),(15,15,3000.00,900.00,200.00,'2021-11-17','Pix','Ajuste de contrato');
/*!40000 ALTER TABLE `salarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `treinamentos`
--

DROP TABLE IF EXISTS `treinamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `treinamentos` (
  `idtreinamentos` int NOT NULL AUTO_INCREMENT,
  `nome_treinamentos` varchar(100) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `data_inicio` date NOT NULL,
  `data_fim` date DEFAULT NULL,
  `certificado` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idtreinamentos`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treinamentos`
--

LOCK TABLES `treinamentos` WRITE;
/*!40000 ALTER TABLE `treinamentos` DISABLE KEYS */;
INSERT INTO `treinamentos` VALUES (1,'Liderança Eficaz','Capacitação em liderança','2023-02-01','2023-03-01','Certificado Bronze'),(2,'Excel Avançado','Curso de aprimoramento em Excel','2022-09-15','2022-11-15','Certificado Prata'),(3,'Comunicação Corporativa','Treinamento em comunicação interna','2021-05-10','2021-06-20','Certificado Ouro'),(4,'Gestão de Projetos','Métodos ágeis de gestão','2023-01-05','2023-02-15','Certificado Prata'),(5,'Atendimento ao Cliente','Técnicas para atendimento eficaz','2022-08-01','2022-08-30','Certificado Bronze'),(6,'Segurança da Informação','Boas práticas de segurança cibernética','2021-07-15','2021-08-15','Certificado Prata'),(7,'Power BI Básico','Introdução à análise de dados','2023-03-10','2023-04-10','Certificado Bronze'),(8,'Redação Empresarial','Técnicas de redação formal','2022-04-20','2022-05-20','Certificado Ouro'),(9,'Planejamento Estratégico','Planejamento de longo prazo','2023-02-15','2023-03-15','Certificado Ouro'),(10,'Automação em Excel','Uso de macros e VBA','2021-03-01','2021-04-01','Certificado Prata'),(11,'Desenvolvimento Web','Introdução ao front-end','2022-06-01','2022-07-01','Certificado Ouro');
/*!40000 ALTER TABLE `treinamentos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-07 14:04:04
