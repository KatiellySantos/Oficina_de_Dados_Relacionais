# 💡️ Sistema de Gerenciamento de Estoque - Controle Inteligente

Este projeto consiste no desenvolvimento de um banco de dados para gerenciar informações relacionadas ao controle de estoque de uma loja. Ele foi projetado para manter uma estrutura organizada e eficiente, com funcionalidades que atendem desde o cadastro de produtos até o gerenciamento de vendas.

# 📂 Estrutura do Banco de Dados

O banco de dados contém as seguintes tabelas principais:

1. Categorias: Organização dos produtos em grupos.
2. Fornecedores: Registro de fornecedores parceiros.
3. Produtos: Informações detalhadas sobre os produtos em estoque.
4. Movimentações: Controle de entrada e saída de produtos.
5. Usuários: Gerenciamento de usuários do sistema.
6. Vendas: Registro das vendas realizadas.
7. Itens_Venda: Relaciona os produtos vendidos em cada transação.
8. Clientes: Cadastro dos clientes da loja.
9. Configurações: Parâmetros configuráveis do sistema.
10. Histórico de Preços: Registro de alterações nos preços dos produtos.
11. Log de Ações: Auditoria das ações realizadas no sistema.

# 💻 Scripts SQL

# Criação das Tabelas

Os scripts SQL para criar as tabelas foram organizados para garantir a integridade do banco e devem ser executados nesta ordem.

Exemplo: Tabela de Produtos

CREATE TABLE Produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    SKU VARCHAR(50) UNIQUE NOT NULL,
    categoria_id INT,
    preco_venda DECIMAL(10, 2) NOT NULL,
    preco_custo DECIMAL(10, 2) NOT NULL,
    estoque INT NOT NULL DEFAULT 0,
    fornecedor INT,
    validade DATE,
    descricao TEXT,
    FOREIGN KEY (categoria_id) REFERENCES Categorias(id),
    FOREIGN KEY (fornecedor) REFERENCES Fornecedores(id)
);

# Inserção de Dados

As tabelas já possuem exemplos de registros iniciais. Exemplo: Inserção na Tabela de Produtos

INSERT INTO Produtos (nome, SKU, categoria_id, preco_venda, preco_custo, estoque, fornecedor, validade, descricao) 
VALUES
('Smartphone X', 'ELE001', 1, 1500.00, 1200.00, 50, 1, NULL, 'Smartphone de última geração');

# ⚙️ Funcionalidades

1. Cadastro de Produtos e Categorias: Gerencie facilmente os itens e seus grupos.
2. Controle de Estoque: Monitore as entradas e saídas, incluindo ajustes manuais.
3. Gestão de Vendas: Registro de vendas, com informações detalhadas dos itens vendidos.
4. Relatórios Avançados: Geração de relatórios sobre produtos em falta, mais vendidos, margens de lucro, entre outros.
5. Auditoria Completa: Histórico de ações dos usuários para rastreamento e segurança.

# 🔍 Consultas SQL com JOINs

1. Listar Produtos e Categorias
Exibe os produtos com suas categorias associadas.

SELECT p.nome AS Produto, c.nome AS Categoria, p.estoque, p.preco_venda
FROM Produtos p
JOIN Categorias c ON p.categoria_id = c.id;

2. Relatório de Vendas
Exibe os produtos vendidos por transação.

SELECT v.id AS Venda, c.nome AS Cliente, p.nome AS Produto, iv.quantidade, iv.preco_unitario
FROM Vendas v
JOIN Clientes c ON v.cliente_id = c.id
JOIN Itens_Venda iv ON v.id = iv.venda_id
JOIN Produtos p ON iv.produto_id = p.id;

3. Auditoria de Ações dos Usuários
Monitora as ações registradas no log.

SELECT u.nome AS Usuario, l.acao, l.data
FROM Log_Acoes l
JOIN Usuarios u ON l.usuario_id = u.id;

# 🚀 Como Usar

1. Clone o repositório e abra o script SQL no seu gerenciador de banco de dados (como MySQL).
2. Crie o banco de dados executando os scripts para criação das tabelas.
3. Insira os registros de exemplo para popular o sistema.
4. Utilize as consultas fornecidas para explorar os dados ou crie suas próprias consultas.

# 📝 Conclusão

O Controle Inteligente foi projetado para otimizar a gestão de estoques com uma abordagem simples, mas altamente eficiente. O sistema pode ser expandido para atender demandas específicas de diferentes tipos de negócios.

Contribuições são bem-vindas! Sinta-se à vontade para abrir issues ou enviar pull requests.
