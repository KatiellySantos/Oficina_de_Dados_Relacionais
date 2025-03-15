# 🚑️ Sistema de Registro de Pacientes - Prontuário Ágil

Este projeto consiste no desenvolvimento de um banco de dados robusto para o gerenciamento de informações relacionadas a pacientes, médicos, consultas, exames, pagamentos e histórico médico. A estrutura foi cuidadosamente planejada para garantir organização e eficiência no atendimento clínico.

# 📂 Estrutura do Banco de Dados

O banco de dados contém as seguintes tabelas principais:

1. Pacientes: Armazena informações dos pacientes.
2. Consultas: Registra informações sobre as consultas realizadas.
3. Médicos: Contém informações dos médicos disponíveis.
4. Agendamentos: Controla os agendamentos de consultas.
5. Histórico Médico: Armazena registros sobre alergias, doenças pré-existentes, cirurgias, etc.
6. Exames: Documenta os exames realizados pelos pacientes.
7. Pagamentos: Monitora os pagamentos das consultas e serviços.
8. Usuários: Controla o acesso ao sistema por diferentes tipos de usuários (administrador, médicos, recepcionistas).
9. Notificações: Armazena alertas e lembretes.

# 💻 Scripts SQL

# Criação das Tabelas

Aqui está um exemplo do script SQL para criar as tabelas:

-- Tabela Pacientes
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

# Inserção Inicial de Dados

-- Tabela Pacientes
INSERT INTO pacientes (nome, cpf, data_nascimento, telefone, endereco, email, genero)
VALUES 
('Ana Souza', '123.456.789-00', '1990-05-12', '85991234567', 'Rua A, 123', 'ana.souza@gmail.com', 'F'),
('Carlos Lima', '987.654.321-00', '1985-02-25', '85992345678', 'Rua B, 456', 'carlos.lima@gmail.com', 'M');

-- Tabela Médicos
INSERT INTO medicos (nome, especializacao, crm, telefone)
VALUES 
('Dr. Roberto Almeida', 'Cardiologia', '123456-CE', '85994567890'),
('Dra. Fernanda Costa', 'Pediatria', '654321-CE', '85995678901');

# ⚙️ Funcionalidades

1. Gestão de Pacientes: Controle completo de informações de pacientes.
2. Agendamento de Consultas: Organização eficiente dos agendamentos.
3. Histórico Médico: Registro de informações importantes do paciente.
4. Gestão de Pagamentos: Acompanhamento dos pagamentos realizados.
5. Notificações: Alertas sobre consultas e exames futuros.

# 🔍 Consultas SQL com JOINs

SELECT p.Nome AS Paciente, c.Data_Consulta, c.Motivo, c.Diagnostico
FROM Pacientes p
JOIN Consultas c ON p.ID_Paciente = c.ID_Paciente;

# 🚀 Como Usar

1. Clone o repositório e abra os arquivos no sistema de gerenciamento de banco de dados (MySQL ou PostgreSQL).
2. Execute os scripts SQL fornecidos para criar as tabelas e popular o banco de dados com dados de exemplo.
3. Utilize as consultas SQL fornecidas para explorar e gerenciar os dados.

# 📝 Conclusão

Este sistema de gerenciamento foi projetado para atender clínicas e hospitais que buscam uma solução eficiente para organizar informações de pacientes e serviços médicos. Ele pode ser adaptado às necessidades específicas de qualquer instituição.

Contribuições são bem-vindas! Sinta-se à vontade para colaborar. 😊









