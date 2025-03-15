-- Estrutura utilizada para criação do projeto InfoTransporte, com todos os comandos que foram utilizados.
-- Sinta-se a vontade para fazer modificações e melhorias nesse projeto.

-- Tabela de Veículos
CREATE TABLE veiculos (
    idveiculo INT PRIMARY KEY AUTO_INCREMENT,
    marca VARCHAR(255) NOT NULL,
    modelo VARCHAR(255) NOT NULL,
    ano INT,
    placa VARCHAR(20) UNIQUE NOT NULL,
    tipo VARCHAR(50),
    capacidade FLOAT,
    status VARCHAR(50)
);

-- Tabela de Motoristas
CREATE TABLE motoristas (
    idmotorista INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    cpf VARCHAR(14) UNIQUE NOT NULL,
    cnh VARCHAR(20) UNIQUE NOT NULL,
    categoria_cnh VARCHAR(5),
    validade_cnh DATE,
    telefone VARCHAR(15),
    endereco TEXT
);

-- Tabela de Rotas
CREATE TABLE rotas (
    idrota INT PRIMARY KEY AUTO_INCREMENT,
    origem VARCHAR(255) NOT NULL,
    destino VARCHAR(255) NOT NULL,
    distancia FLOAT,
    descricao TEXT,
    status VARCHAR(50)
);

-- Tabela de Viagens
CREATE TABLE viagens (
    idviagem INT PRIMARY KEY AUTO_INCREMENT,
    idrota INT NOT NULL,
    idveiculo INT NOT NULL,
    idmotorista INT NOT NULL,
    data_inicio DATE,
    data_fim DATE,
    status VARCHAR(50),
    observacoes TEXT,
    FOREIGN KEY (idrota) REFERENCES rotas(idrota),
    FOREIGN KEY (idveiculo) REFERENCES veiculos(idveiculo),
    FOREIGN KEY (idmotorista) REFERENCES motoristas(idmotorista)
);

-- Tabela de Manuntençoes
CREATE TABLE manutencoes (
    idmanutencao INT PRIMARY KEY AUTO_INCREMENT,
    idveiculo INT NOT NULL,
    data_manutencao DATE NOT NULL,
    tipo VARCHAR(50),
    custo FLOAT,
    observacoes TEXT,
    FOREIGN KEY (idveiculo) REFERENCES veiculos(idveiculo)
);
