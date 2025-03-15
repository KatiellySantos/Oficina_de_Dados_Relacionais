-- MySQL dump 10.13  Distrib 8.0.41, for Linux (x86_64)
--
-- Host: localhost    Database: controle_inteligente
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
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `idcategorias` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `descricao` text,
  PRIMARY KEY (`idcategorias`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Eletrônicos','Produtos eletrônicos como smartphones e laptops'),(2,'Roupas','Vestuário masculino, feminino e infantil'),(3,'Alimentos','Comida e bebidas em geral'),(4,'Livros','Livros impressos de várias categorias'),(5,'Esportes','Equipamentos e acessórios esportivos'),(6,'Beleza','Produtos de cuidados pessoais e cosméticos'),(7,'Móveis','Móveis para casa e escritório'),(8,'Brinquedos','Jogos e brinquedos para crianças'),(9,'Automotivo','Peças e acessórios para veículos'),(10,'Informática','Componentes e acessórios de informática');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `idclientes` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `contato` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `endereco` text,
  PRIMARY KEY (`idclientes`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'José Ferreira','11-98765-4321','jose@cliente.com','Rua A, 123'),(2,'Carla Menezes','21-99887-6655','carla@cliente.com','Avenida B, 456'),(3,'Paulo César','31-98877-5544','paulo@cliente.com','Praça C, 789'),(4,'Ana Clara','41-97766-4433','ana@cliente.com','Travessa D, 101'),(5,'Lucas Oliveira','51-96655-3322','lucas@cliente.com','Rua E, 202'),(6,'Fernanda Maia','61-95544-2211','fernanda@cliente.com','Avenida F, 303'),(7,'Roberto Souza','71-94433-1100','roberto@cliente.com','Praça G, 404'),(8,'Juliana Dias','81-93322-0099','juliana@cliente.com','Rua H, 505'),(9,'Ricardo Lima','91-92211-9988','ricardo@cliente.com','Avenida I, 606'),(10,'Patrícia Andrade','99-91100-8877','patricia@cliente.com','Praça J, 707');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configuracoes`
--

DROP TABLE IF EXISTS `configuracoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `configuracoes` (
  `idconfiguracoes` int NOT NULL AUTO_INCREMENT,
  `chave` varchar(50) NOT NULL,
  `valor` text NOT NULL,
  PRIMARY KEY (`idconfiguracoes`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuracoes`
--

LOCK TABLES `configuracoes` WRITE;
/*!40000 ALTER TABLE `configuracoes` DISABLE KEYS */;
INSERT INTO `configuracoes` VALUES (1,'estoque_minimo','10'),(2,'notificacao_email','ativado'),(3,'limite_estoque','1000'),(4,'tema_sistema','claro'),(5,'idioma','pt-BR'),(6,'moeda','BRL'),(7,'taxa_imposto','0.15'),(8,'envio_auto_relatorio','ativado'),(9,'prazo_entrega','7 dias'),(10,'frete_gratis_acima','300');
/*!40000 ALTER TABLE `configuracoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornecedores`
--

DROP TABLE IF EXISTS `fornecedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fornecedores` (
  `idfornecedores` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `contato` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idfornecedores`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedores`
--

LOCK TABLES `fornecedores` WRITE;
/*!40000 ALTER TABLE `fornecedores` DISABLE KEYS */;
INSERT INTO `fornecedores` VALUES (1,'Tech Supplies Ltda','11-98765-4321','contato@techsupplies.com'),(2,'Moda Vip','21-99887-6655','modavip@moda.com'),(3,'Super Alimentos','31-98877-5544','contato@superalimentos.com'),(4,'Livraria Central','41-97766-4433','vendas@livrariacentral.com'),(5,'Esporte Total','51-96655-3322','vendas@esportetotal.com'),(6,'Beleza Pura','61-95544-2211','atendimento@belezapura.com'),(7,'Móveis Confort','71-94433-1100','confort@moveis.com'),(8,'Brinquedos Diversão','81-93322-0099','diversao@brinquedos.com'),(9,'Auto Parts Brasil','91-92211-9988','suporte@autoparts.com'),(10,'Smart Hardware','99-91100-8877','hardware@smarthard.com');
/*!40000 ALTER TABLE `fornecedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historico_precos`
--

DROP TABLE IF EXISTS `historico_precos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historico_precos` (
  `idhistorico_precos` int NOT NULL AUTO_INCREMENT,
  `produto_id` int NOT NULL,
  `preco_antigo` decimal(10,2) DEFAULT NULL,
  `preco_novo` decimal(10,2) DEFAULT NULL,
  `data` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idhistorico_precos`),
  KEY `produto_id` (`produto_id`),
  CONSTRAINT `historico_precos_ibfk_1` FOREIGN KEY (`produto_id`) REFERENCES `produtos` (`idprodutos`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historico_precos`
--

LOCK TABLES `historico_precos` WRITE;
/*!40000 ALTER TABLE `historico_precos` DISABLE KEYS */;
INSERT INTO `historico_precos` VALUES (1,2,30.00,35.00,'2025-02-28 09:30:00'),(2,3,18.00,20.00,'2025-02-27 15:45:00'),(3,4,40.00,45.00,'2025-02-26 14:00:00'),(4,5,75.00,80.00,'2025-02-25 13:00:00'),(5,6,110.00,120.00,'2025-02-24 11:00:00'),(6,7,700.00,750.00,'2025-02-23 16:00:00'),(7,8,65.00,70.00,'2025-02-22 12:00:00'),(8,9,400.00,450.00,'2025-02-21 10:30:00'),(9,10,220.00,250.00,'2025-02-20 09:00:00'),(10,2,30.00,35.00,'2025-02-28 09:30:00'),(11,3,18.00,20.00,'2025-02-27 15:45:00'),(12,4,40.00,45.00,'2025-02-26 14:00:00'),(13,5,75.00,80.00,'2025-02-25 13:00:00'),(14,6,110.00,120.00,'2025-02-24 11:00:00'),(15,7,700.00,750.00,'2025-02-23 16:00:00'),(16,8,65.00,70.00,'2025-02-22 12:00:00'),(17,9,400.00,450.00,'2025-02-21 10:30:00'),(18,10,220.00,250.00,'2025-02-20 09:00:00'),(19,1,1400.00,1500.00,'2025-03-01 08:00:00');
/*!40000 ALTER TABLE `historico_precos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itens_venda`
--

DROP TABLE IF EXISTS `itens_venda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itens_venda` (
  `iditens_venda` int NOT NULL AUTO_INCREMENT,
  `venda_id` int NOT NULL,
  `produto_id` int NOT NULL,
  `quantidade` int NOT NULL,
  `preco_unitario` decimal(10,2) NOT NULL,
  PRIMARY KEY (`iditens_venda`),
  KEY `venda_id` (`venda_id`),
  KEY `produto_id` (`produto_id`),
  CONSTRAINT `itens_venda_ibfk_1` FOREIGN KEY (`venda_id`) REFERENCES `itens_venda` (`iditens_venda`),
  CONSTRAINT `itens_venda_ibfk_2` FOREIGN KEY (`produto_id`) REFERENCES `produtos` (`idprodutos`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itens_venda`
--

LOCK TABLES `itens_venda` WRITE;
/*!40000 ALTER TABLE `itens_venda` DISABLE KEYS */;
INSERT INTO `itens_venda` VALUES (1,1,1,2,1500.00),(2,1,3,5,20.00),(3,2,5,1,80.00),(4,2,10,1,250.00),(5,3,2,3,35.00),(6,4,7,1,750.00),(7,5,6,2,120.00),(8,6,8,1,70.00),(9,7,4,4,45.00),(10,8,9,1,450.00);
/*!40000 ALTER TABLE `itens_venda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_acoes`
--

DROP TABLE IF EXISTS `log_acoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_acoes` (
  `idlog_acoes` int NOT NULL AUTO_INCREMENT,
  `usuario_id` int DEFAULT NULL,
  `acao` varchar(255) DEFAULT NULL,
  `data` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idlog_acoes`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `log_acoes_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`idusuarios`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_acoes`
--

LOCK TABLES `log_acoes` WRITE;
/*!40000 ALTER TABLE `log_acoes` DISABLE KEYS */;
INSERT INTO `log_acoes` VALUES (1,1,'Cadastro de novo produto: Smartphone X','2025-02-28 10:00:00'),(2,2,'Atualização do estoque: entrada de 20 unidades do produto \"Arroz 5kg\"','2025-03-01 09:00:00'),(3,3,'Venda registrada: cliente José Ferreira, total de R$200,00','2025-03-01 11:15:00'),(4,1,'Alteração de preço: Bola de Futebol de R$75,00 para R$80,00','2025-02-25 13:00:00'),(5,2,'Cadastro de novo cliente: Carla Menezes','2025-03-01 12:00:00'),(6,3,'Ajuste manual no estoque: saída de 5 unidades do produto \"Teclado Mecânico\"','2025-03-02 10:00:00'),(7,1,'Geração de relatório: produtos mais vendidos','2025-03-02 15:00:00'),(8,2,'Venda registrada: cliente Paulo César, total de R$450,00','2025-03-02 16:00:00'),(9,3,'Cadastro de nova categoria: \"Periféricos\"','2025-03-03 14:30:00'),(10,1,'Alteração de permissão: usuário João Silva de funcionário para administrador','2025-03-04 10:00:00');
/*!40000 ALTER TABLE `log_acoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movimentacoes`
--

DROP TABLE IF EXISTS `movimentacoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movimentacoes` (
  `idmovimentacoes` int NOT NULL AUTO_INCREMENT,
  `produto_id` int NOT NULL,
  `tipo` enum('entrada','saida') NOT NULL,
  `data` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `quantidade` int NOT NULL,
  `usuario_id` int DEFAULT NULL,
  PRIMARY KEY (`idmovimentacoes`),
  KEY `produto_id` (`produto_id`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `movimentacoes_ibfk_1` FOREIGN KEY (`produto_id`) REFERENCES `produtos` (`idprodutos`),
  CONSTRAINT `movimentacoes_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`idusuarios`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movimentacoes`
--

LOCK TABLES `movimentacoes` WRITE;
/*!40000 ALTER TABLE `movimentacoes` DISABLE KEYS */;
INSERT INTO `movimentacoes` VALUES (41,1,'entrada','2025-03-09 14:33:24',20,1),(42,2,'saida','2025-03-09 14:33:24',5,2),(43,3,'entrada','2025-03-09 14:33:24',50,1),(44,4,'saida','2025-03-09 14:33:24',10,3),(45,5,'entrada','2025-03-09 14:33:24',15,2),(46,6,'saida','2025-03-09 14:33:24',3,1),(47,7,'entrada','2025-03-09 14:33:24',5,3),(48,8,'saida','2025-03-09 14:33:24',8,1),(49,9,'entrada','2025-03-09 14:33:24',10,2),(50,10,'saida','2025-03-09 14:33:24',2,3);
/*!40000 ALTER TABLE `movimentacoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos` (
  `idprodutos` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `SKU` varchar(50) NOT NULL,
  `categoria_id` int DEFAULT NULL,
  `preco_venda` decimal(10,2) NOT NULL,
  `preco_custo` decimal(10,2) NOT NULL,
  `estoque` int NOT NULL DEFAULT '0',
  `fornecedor_id` int DEFAULT NULL,
  `validade` date DEFAULT NULL,
  `descricao` text,
  PRIMARY KEY (`idprodutos`),
  UNIQUE KEY `SKU` (`SKU`),
  KEY `categoria_id` (`categoria_id`),
  KEY `fornecedor_id` (`fornecedor_id`),
  CONSTRAINT `produtos_ibfk_1` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`idcategorias`),
  CONSTRAINT `produtos_ibfk_2` FOREIGN KEY (`fornecedor_id`) REFERENCES `fornecedores` (`idfornecedores`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (1,'Smartphone X','ELE001',1,1500.00,1200.00,50,1,NULL,'Smartphone de última geração'),(2,'Camiseta Básica','ROP001',2,35.00,20.00,100,2,NULL,'Camiseta 100% algodão'),(3,'Arroz 5kg','ALI001',3,20.00,15.00,200,3,'2025-12-31','Pacote de arroz branco 5kg'),(4,'Livro de Ficção','LIV001',4,45.00,30.00,80,4,NULL,'Livro de ficção científica'),(5,'Bola de Futebol','ESP001',5,80.00,60.00,30,5,NULL,'Bola oficial de futebol'),(6,'Creme Facial','BEL001',6,120.00,80.00,40,6,'2024-06-30','Creme hidratante facial'),(7,'Mesa de Jantar','MOV001',7,750.00,500.00,10,7,NULL,'Mesa de madeira para 6 pessoas'),(8,'Boneca','BRI001',8,70.00,50.00,60,8,NULL,'Boneca articulada com roupas adicionais'),(9,'Pneu Aro 16','AUT001',9,450.00,350.00,20,9,NULL,'Pneu resistente para carros'),(10,'Teclado Mecânico','INF001',10,250.00,200.00,25,10,NULL,'Teclado mecânico para gamers');
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `idusuarios` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `login` varchar(50) NOT NULL,
  `senha` varchar(20) NOT NULL,
  `tipo` enum('admin','funcionario') NOT NULL,
  PRIMARY KEY (`idusuarios`),
  UNIQUE KEY `login` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Admin Master','admin','123456','admin'),(2,'João Silva','joao','senha123','funcionario'),(3,'Maria Santos','maria','senha123','funcionario'),(4,'Carlos Souza','carlos','senha123','admin'),(5,'Ana Paula','ana','senha123','funcionario'),(6,'Pedro Lima','pedro','senha123','funcionario'),(7,'Fernanda Costa','fernanda','senha123','admin'),(8,'Luiz Almeida','luiz','senha123','funcionario'),(9,'Mariana Lopes','mariana','senha123','funcionario'),(10,'Ricardo Gomes','ricardo','senha123','funcionario');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendas`
--

DROP TABLE IF EXISTS `vendas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendas` (
  `idvendas` int NOT NULL AUTO_INCREMENT,
  `data` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `usuario_id` int DEFAULT NULL,
  `cliente_id` int DEFAULT NULL,
  `total` decimal(10,2) NOT NULL,
  PRIMARY KEY (`idvendas`),
  KEY `usuario_id` (`usuario_id`),
  KEY `cliente_id` (`cliente_id`),
  CONSTRAINT `vendas_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`idusuarios`),
  CONSTRAINT `vendas_ibfk_2` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`idclientes`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendas`
--

LOCK TABLES `vendas` WRITE;
/*!40000 ALTER TABLE `vendas` DISABLE KEYS */;
INSERT INTO `vendas` VALUES (21,'2025-03-01 10:00:00',2,1,200.00),(22,'2025-03-01 11:00:00',3,2,450.00),(23,'2025-03-02 12:00:00',2,3,75.00),(24,'2025-03-02 13:00:00',1,4,600.00),(25,'2025-03-03 14:00:00',3,5,80.00),(26,'2025-03-03 15:00:00',2,1,35.00),(27,'2025-03-04 16:00:00',3,6,120.00),(28,'2025-03-04 17:00:00',1,7,150.00),(29,'2025-03-05 18:00:00',2,8,250.00),(30,'2025-03-05 19:00:00',3,9,500.00);
/*!40000 ALTER TABLE `vendas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-15 14:13:07
