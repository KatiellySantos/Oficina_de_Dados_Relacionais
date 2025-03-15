-- Estrutura utilizada para criação do projeto Controle Inteligente, com todos os comandos que foram utilizados.
-- Sinta-se a vontade para fazer modificações e melhorias nesse projeto.

-- Tabela de Categorias
CREATE TABLE categorias (
    idcategorias INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao TEXT
);

-- Tabela de Fornecedores
CREATE TABLE fornecedores(
    idfornecedores INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR (255) NOT NULL,
    contato VARCHAR (20),
    email VARCHAR (100)
);

-- Tabela de Produtos
CREATE TABLE produtos (
    idprodutos INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    SKU VARCHAR(50) UNIQUE NOT NULL,
    categoria_id INT,
    preco_venda DECIMAL(10,2) NOT NULL,
    preco_custo DECIMAL(10,2) NOT NULL,
    estoque INT NOT NULL DEFAULT 0,
    fornecedor_id INT,
    validade DATE,
    descricao TEXT,
    FOREIGN KEY (categoria_id) REFERENCES categorias(idcategorias),
    FOREIGN KEY (fornecedor_id) REFERENCES fornecedores(idfornecedores)
);

-- TABELA de Usuários
CREATE TABLE usuarios (
idusuarios INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR (255) NOT NULL,
login VARCHAR (50) UNIQUE NOT NULL,
senha VARCHAR (20) NOT NULL,
tipo ENUM('admin', 'funcionario') NOT NULL
);

-- Tabela de Movimentações de Estoque
CREATE TABLE movimentacoes (
idmovimentacoes INT AUTO_INCREMENT PRIMARY KEY,
produto_id INT NOT NULL,
tipo ENUM('entrada', 'saida') NOT NULL,
data DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
quantidade INT NOT NULL,
usuario_id INT,
FOREIGN KEY (produto_id) REFERENCES produtos(idprodutos),
FOREIGN KEY (usuario_id) REFERENCES usuarios(idusuarios)
);

-- Tabela de Clientes
CREATE TABLE clientes (
    idclientes INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR (255) NOT NULL,
    contato VARCHAR (20),
    email VARCHAR (100),
    endereco TEXT
);

-- Tabela de Vendas
CREATE TABLE vendas(
    idvendas INT AUTO_INCREMENT PRIMARY KEY,
    data DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    usuario_id INT,
    cliente_id INT,
    total DECIMAL (10,2) NOT NULL,
    FOREIGN KEY (usuario_id) REFERENCES usuarios (idusuarios),
    FOREIGN KEY (cliente_id) REFERENCES clientes (idclientes)
);

-- Tabela de Itens da Venda
CREATE TABLE itens_venda (
    iditens_venda INT AUTO_INCREMENT PRIMARY KEY,
    venda_id INT NOT NULL,
    produto_id INT NOT NULL,
    quantidade INT NOT NULL,
    preco_unitario DECIMAL (10,2) NOT NULL,
    FOREIGN KEY (venda_id) REFERENCES itens_venda(iditens_venda),
    FOREIGN KEY (produto_id) REFERENCES produtos (idprodutos)
);

-- Tabela de Configurações do Sistema
CREATE TABLE configuracoes (
    idconfiguracoes INT AUTO_INCREMENT PRIMARY KEY,
    chave VARCHAR (50) NOT NULL,
    valor TEXT NOT NULL
);

-- Tabela de Historico de Preços
CREATE TABLE historico_precos (
    idhistorico_precos INT AUTO_INCREMENT PRIMARY KEY,
    produto_id INT NOT NULL,
    preco_antigo DECIMAL (10,2),
    preco_novo DECIMAL (10,2),
    data DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (produto_id) REFERENCES produtos (idprodutos)
);

-- Tabela de Log de Açoes
CREATE TABLE log_acoes (
idlog_acoes INT AUTO_INCREMENT PRIMARY KEY,
usuario_id INT NULL,
acao VARCHAR (255),
data DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
FOREIGN KEY (usuario_id) REFERENCES usuarios (idusuarios)
);
