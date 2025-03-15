-- Estrutura utilizada para criação do projeto Evento360, com todos os comandos que foram utilizados.
-- Sinta-se a vontade para fazer modificações e melhorias nesse projeto.

-- Tabela de usuários
CREATE TABLE usuarios (
    idusuario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    senha_hash VARCHAR(255) NOT NULL,
    tipo_usuario ENUM('admin', 'organizador', 'participante') NOT NULL
);

-- Tabela de eventos
CREATE TABLE eventos (
    idevento INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    data DATE NOT NULL,
    local VARCHAR(150),
    capacidade INT,
    descricao TEXT,
    status ENUM('ativo', 'inativo') DEFAULT 'ativo',
    criadopor INT,
    FOREIGN KEY (criadopor) REFERENCES usuarios(idusuario)
);

-- Tabela de auditoria
CREATE TABLE auditoria (
    idauditoria INT PRIMARY KEY AUTO_INCREMENT,
    idusuario INT,
    acao VARCHAR(100),
    detalhes TEXT,
    data_hora TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (idusuario) REFERENCES usuarios(idusuario)
);

-- Tabela de participantes
CREATE TABLE participantes (
    idparticipante INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

-- Tabela para participação em eventos
CREATE TABLE eventos_participantes (
    idevento INT,
    idparticipante INT,
    PRIMARY KEY (idevento, idparticipante),
    FOREIGN KEY (idevento) REFERENCES eventos(idevento),
    FOREIGN KEY (idparticipante) REFERENCES participantes(idparticipante)
);

-- Tabela de ingressos
CREATE TABLE ingressos (
    idingresso INT PRIMARY KEY AUTO_INCREMENT,
    idevento INT,
    idparticipante INT,
    data_compra DATE NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    status_pagamento ENUM('pendente', 'pago', 'cancelado') DEFAULT 'pendente',
    FOREIGN KEY (idevento) REFERENCES eventos(idevento),
    FOREIGN KEY (idparticipante) REFERENCES participantes(idparticipante)
);

-- Tabela de feedback
CREATE TABLE feedback (
    idfeedback INT PRIMARY KEY AUTO_INCREMENT,
    idevento INT,
    idparticipante INT,
    comentario TEXT,
    nota INT CHECK (nota BETWEEN 1 AND 5),
    data_hora TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (idevento) REFERENCES eventos(idevento),
    FOREIGN KEY (idparticipante) REFERENCES participantes(idparticipante)
);

-- Tabela de redes sociais
CREATE TABLE redes_sociais (
    idrede_social INT PRIMARY KEY AUTO_INCREMENT,
    entidade_tipo ENUM('evento', 'participante', 'organizador') NOT NULL,
    identidade INT NOT NULL,
    plataforma VARCHAR(50) NOT NULL,
    url VARCHAR(255) NOT NULL,
    FOREIGN KEY (identidade) REFERENCES eventos(idevento)
        ON DELETE CASCADE ON UPDATE CASCADE
);

