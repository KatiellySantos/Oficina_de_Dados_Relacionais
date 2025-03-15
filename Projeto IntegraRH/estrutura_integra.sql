-- Estrutura utilizada para criação do projeto da integraRH, com todos os comandos que foram utilizados.
-- Sinta-se a vontade para fazer modificações e melhorias nesse projeto.

-- Estrutura da tabela 'cargos'
CREATE TABLE cargos (
  idcargos INT NOT NULL AUTO_INCREMENT,
  nome_cargo VARCHAR(50) NOT NULL,
  descricao VARCHAR(255),
  nivel_hierarquia INT NOT NULL,
  salario_base_padrao DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (idcargos)
);

-- Estrutura da tabela 'departamentos'
CREATE TABLE departamentos (
  iddepartamentos INT NOT NULL AUTO_INCREMENT,
  nome_departamento VARCHAR(50) NOT NULL,
  descricao VARCHAR(255),
  localizacao VARCHAR(100),
  PRIMARY KEY (iddepartamentos)
);

-- Estrutura da tabela 'frequencias'
CREATE TABLE frequencias (
  idfrequencia INT NOT NULL AUTO_INCREMENT,
  idfuncionarios INT,
  data DATE NOT NULL,
  status VARCHAR(20) DEFAULT 'Presente',
  motivo_ausencia VARCHAR(100),
  PRIMARY KEY (idfrequencia),
  KEY (idfuncionarios),
  FOREIGN KEY (idfuncionarios) REFERENCES funcionarios (idfuncionarios)
);

-- Estrutura da tabela 'funcionarios'
CREATE TABLE funcionarios (
  idfuncionarios INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL,
  cpf VARCHAR(11) NOT NULL UNIQUE,
  data_nascimento DATE NOT NULL,
  telefone VARCHAR(15),
  email_corporativo VARCHAR(100) UNIQUE,
  endereco VARCHAR(255),
  estado_civil VARCHAR(20),
  contato_emergencia VARCHAR(100),
  data_admissao DATE NOT NULL,
  status_funcionario VARCHAR(20) DEFAULT 'Ativo',
  idcargos INT NOT NULL,
  PRIMARY KEY (idfuncionarios),
  FOREIGN KEY (idcargos) REFERENCES cargos (idcargos)
);

-- Estrutura da tabela 'historico_funcionarios'
CREATE TABLE historico_funcionarios (
  idhistorico_funcionarios INT NOT NULL AUTO_INCREMENT,
  idfuncionarios INT NOT NULL,
  data_mudanca DATE NOT NULL,
  tipo_mudanca VARCHAR(50) NOT NULL,
  observacoes VARCHAR(255),
  PRIMARY KEY (idhistorico_funcionarios),
  FOREIGN KEY (idfuncionarios) REFERENCES funcionarios (idfuncionarios)
);

-- Estrutura da tabela 'historico_salarios'
CREATE TABLE historico_salarios (
  idhistorico INT NOT NULL AUTO_INCREMENT,
  idfuncionarios INT NOT NULL,
  salario_anterior DECIMAL(10,2),
  novo_salario DECIMAL(10,2),
  data_alteracao DATE NOT NULL,
  motivo_alteracao VARCHAR(255),
  PRIMARY KEY (idhistorico),
  FOREIGN KEY (idfuncionarios) REFERENCES funcionarios (idfuncionarios)
);

-- Estrutura da tabela 'salarios'
CREATE TABLE salarios (
  idsalarios INT NOT NULL AUTO_INCREMENT,
  idfuncionarios INT NOT NULL,
  salario_base DECIMAL(10,2) NOT NULL,
  beneficios DECIMAL(10,2),
  descontos DECIMAL(10,2),
  data_ajuste DATE NOT NULL,
  metodo_pagamento VARCHAR(50),
  justificativa_ajuste VARCHAR(255),
  PRIMARY KEY (idsalarios),
  FOREIGN KEY (idfuncionarios) REFERENCES funcionarios (idfuncionarios)
);

-- Estrutura da tabela 'treinamentos'
CREATE TABLE treinamentos (
  idtreinamentos INT NOT NULL AUTO_INCREMENT,
  nome_treinamentos VARCHAR(100) NOT NULL,
  descricao VARCHAR(255),
  data_inicio DATE NOT NULL,
  data_fim DATE,
  certificado VARCHAR(100),
  PRIMARY KEY (idtreinamentos)
);
