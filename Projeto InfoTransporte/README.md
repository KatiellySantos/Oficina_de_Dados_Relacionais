# 🚛 Sistema de Gerenciamento de Transportes - InfoTransporte

Este projeto consiste no desenvolvimento de um banco de dados robusto para o gerenciamento de informações relacionadas a veículos, motoristas, rotas, viagens e manutenções. A estrutura foi projetada para garantir organização e eficiência nas operações de transporte.

# 📂 Estrutura do Banco de Dados

O banco de dados contém as seguintes tabelas principais:

1. Veículos: Armazena informações dos veículos cadastrados.
2. Motoristas: Registra os dados dos motoristas.
3. Rotas: Gerencia informações sobre as rotas disponíveis.
4. Viagens: Documenta os detalhes das viagens realizadas.
5. Manutenções: Monitora e registra as manutenções dos veículos.

# 💻 Scripts SQL

# Criação das Tabelas

Aqui está um exemplo do script SQL para criar as tabelas:

-- Tabela Veículos 
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

# Inserção Inicial de Dados

-- Tabela Veículos 
INSERT INTO veiculos (marca, modelo, ano, placa, tipo, capacidade, status) 
VALUES 
('Volkswagen', 'Constellation', 2020, 'ABC1D23', 'Caminhão', 12.5, 'Disponível'), 
('Mercedes-Benz', 'Sprinter', 2019, 'EFG4H56', 'Van', 4.0, 'Em Manutenção'), ('Scania', 'R450', 2021, 'IJK7L89', 'Caminhão', 18.0, 'Disponível');

# ⚙️ Funcionalidades

1. Gestão de Veículos: Controle completo das informações sobre os veículos.
2. Gerenciamento de Motoristas: Monitoramento dos dados pessoais e de habilitação dos motoristas.
3. Administração de Rotas: Organização das rotas ativas e inativas.
4. Planejamento de Viagens: Registro das viagens realizadas e em andamento.
5. Monitoramento de Manutenções: Controle detalhado das manutenções preventivas e corretivas.

# 🛠 Consultas SQL com JOIN

-- Detalhes completos das viagens
SELECT viagens.idviagem, rotas.origem, rotas.destino,
veiculos.marca AS veiculo, motoristas.nome AS motorista,
viagens.data_inicio, viagens.data_fim, viagens.status
FROM 
    viagens
INNER JOIN rotas ON viagens.idrota = rotas.idrota
INNER JOIN veiculos ON viagens.idveiculo = veiculos.idveiculo
INNER JOIN motoristas ON viagens.idmotorista = motoristas.idmotorista;

-- Histórico de manutenções realizadas
SELECT manutencoes.idmanutencao, veiculos.marca, veiculos.modelo,
manutencoes.data_manutencao, manutencoes.tipo, manutencoes.custo,
manutencoes.observacoes
FROM 
    manutencoes
INNER JOIN veiculos ON manutencoes.idveiculo = veiculos.idveiculo;

# 🚀 Como Usar

1. Criação do Banco de Dados: Execute os scripts SQL fornecidos para criar e popular as tabelas.
2. Consultas SQL: Use os exemplos fornecidos para explorar as informações do banco de dados.
3. Adaptação: Personalize o sistema para atender às suas necessidades específicas.

# 📝 Conclusão

Este sistema foi projetado para facilitar o gerenciamento de transportes, otimizando o controle de veículos, motoristas, rotas e manutenções. É uma solução eficiente e adaptável para atender às diversas necessidades do setor. Contribuições são bem-vindas! 😊
