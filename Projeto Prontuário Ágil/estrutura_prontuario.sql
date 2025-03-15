-- Estrutura utilizada para criação do projeto da Prontuário Ágil, com todos os comandos que foram utilizados.
-- Sinta-se a vontade para fazer modificações e melhorias nesse projeto.

-- Tabela de Pacientes
CREATE TABLE pacientes (
    idpaciente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR (255) NOT NULL,
    cpf VARCHAR (14) UNIQUE, 
    data_nascimento DATE,
    telefone VARCHAR (15),
    endereco TEXT,
    email VARCHAR (255) UNIQUE, 
    genero VARCHAR (10)
);

-- Tabela de Médicos
CREATE TABLE medicos (
    idmedico INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR (255) NOT NULL,
    especializacao VARCHAR (255),
    crm VARCHAR (20) UNIQUE,
    telefone VARCHAR (15)
);

-- Tabela de Consultas
CREATE TABLE consultas (
    idconsulta INT PRIMARY KEY AUTO_INCREMENT,
    idpaciente INT,
    data_consulta DATETIME,
    motivo TEXT,
    diagnostico TEXT,
    tratamento TEXT,
    medico_responsavel VARCHAR (255),
    FOREIGN KEY (idpaciente) REFERENCES pacientes (idpaciente)
);

-- Tabelas de Agendamentos
CREATE TABLE agendamentos (
    idagendamento INT PRIMARY KEY AUTO_INCREMENT,
    idpaciente INT,
    idmedico INT,
    data_agendamento DATETIME,
    FOREIGN KEY (idpaciente) REFERENCES pacientes (idpaciente),
    FOREIGN KEY (idmedico) REFERENCES medicos (idmedico)
);

-- Tabela de Histórico Médico
CREATE TABLE historico_medico (
    idhistorico INT PRIMARY KEY AUTO_INCREMENT,
    idpaciente INT,
    descricao TEXT,
    data_registro DATETIME,
    FOREIGN KEY (idpaciente) REFERENCES pacientes (idpaciente)
);

-- Tabela de Exames
CREATE TABLE exames (
    idexame INT PRIMARY KEY AUTO_INCREMENT,
    idconsulta INT,
    tipo_exame VARCHAR (255),
    resultado TEXT,
    data_exame DATETIME,
    FOREIGN KEY (idconsulta) REFERENCES consultas (idconsulta)
);

-- Tabela de Pagamentos
CREATE TABLE pagamentos (
    idpagamento INT PRIMARY KEY AUTO_INCREMENT,
    idconsulta INT,
    valor DECIMAL (10,2),
    metodo_pagamento VARCHAR (50)
    data_pagamento DATETIME,
    FOREIGN KEY (idconsulta) REFERENCES consultas (idconsulta)
);

-- Tabela de Usuários (Sistema Login)
CREATE TABLE usuarios (
    idusuario INT PRIMARY KEY AUTO_INCREMENT,
    nome_usuario VARCHAR (255) UNIQUE,
    senha VARCHAR (255),
    tipo_usuario VARCHAR (50)
);

-- Tabela de Notificações
CREATE TABLE notificacoes (
    idnotificacao INT PRIMARY KEY AUTO_INCREMENT,
    idusuario INT,
    mensagem TEXT,
    data_notificacao DATETIME,
    FOREIGN KEY (idusuario) REFERENCES usuarios (idusuario)
);












