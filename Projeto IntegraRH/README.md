```sql
📌️ Sistema de Gerenciamento de Funcionários integraRH

Este projeto consiste no desenvolvimento de um banco de dados para gerenciar informações relacionadas
a funcionários, cargos, salários, frequência, treinamentos e histórico profissional de uma empresa.
A estrutura foi projetada com foco em organização e eficiência no gerenciamento de dados corporativos.

📂 Estrutura do Banco de Dados

O banco de dados contém as seguintes tabelas principais, cada uma com um propósito específico:

1. Funcionarios: Armazena dados pessoais e profissionais dos funcionários.
2. Cargos: Contém informações sobre os diferentes cargos disponíveis na empresa.
3. Departamentos: Registra os departamentos existentes na organização.
4. Salarios: Gerencia os salários e ajustes salariais dos funcionários.
5. HistoricoSalarios: Mantém registros das alterações salariais.
6. Frequencias: Monitora a presença e ausência dos funcionários.
7. Treinamentos: Documenta os treinamentos realizados pelos funcionários.
8. HistoricoFuncionarios: Registra eventos relevantes na trajetória profissional dos colaboradores.

💻 Scripts SQL

Criação das Tabelas

Os scripts SQL para criar as tabelas foram organizados e devem ser executados sequencialmente para garantir
a integridade do banco. Aqui está um exemplo de como criar uma tabela:

CREATE TABLE Funcionarios (
  IDFuncionario INT NOT NULL AUTO_INCREMENT,
  Nome VARCHAR(100) NOT NULL,
  CPF VARCHAR(11) NOT NULL UNIQUE,
  DataNascimento DATE NOT NULL,
  Telefone VARCHAR(15),
  EmailCorporativo VARCHAR(100) UNIQUE,
  Endereco VARCHAR(255),
  EstadoCivil VARCHAR(20),
  ContatoEmergencia VARCHAR(100),
  DataAdmissao DATE NOT NULL,
  StatusFuncionario VARCHAR(20) DEFAULT 'Ativo',
  IDCargo INT NOT NULL,
  PRIMARY KEY (IDFuncionario),
  FOREIGN KEY (IDCargo) REFERENCES Cargos (IDCargo)
);

Inserção inicial para popular a tabela Funcionarios:

INSERT INTO Funcionarios (Nome, CPF, DataNascimento, Telefone, EmailCorporativo, Endereco, EstadoCivil,
ContatoEmergencia, DataAdmissao, StatusFuncionario, IDCargo)
VALUES 
('João Silva', '12345678901', '1985-06-15', '11987654321', 'joao.silva@empresa.com', 'Rua Exemplo, 123',
'Solteiro', 'Ana Silva - 1199887766', '2020-03-01', 'Ativo', 1),
('Maria Oliveira', '98765432100', '1990-04-20', '11966554432', 'maria.oliveira@empresa.com', 'Avenida Central, 456',
'Casada', 'Paulo Oliveira - 1188776655', '2018-07-10', 'Ativo', 2);

⚙️ Funcionalidades

O banco de dados foi projetado para oferecer as seguintes funcionalidades:

1. Gestão de Funcionários: Controle completo dos dados dos colaboradores.
2. Gerenciamento Salarial: Registro de salários e ajustes salariais, com histórico.
3. Controle de Frequência: Monitoramento da presença e ausência dos funcionários.
4. Registro de Treinamentos: Documentação de treinamentos e certificações dos colaboradores.
5. Histórico Profissional: Acompanhamento de eventos importantes na trajetória profissional dos funcionários.

🔍 Consultas SQL com JOINs

Aqui estão exemplos de consultas SQL para extrair informações úteis do banco:

1. Listar Funcionários e seus Cargos Relaciona os funcionários aos seus respectivos cargos.
SELECT f.Nome, c.NomeCargo, c.SalarioBasePadrao
FROM Funcionarios f
JOIN Cargos c ON f.IDCargo = c.IDCargo;

2. Ver Histórico de Salários Exibe as alterações salariais dos funcionários.
SELECT f.Nome, hs.SalarioAnterior, hs.NovoSalario, hs.DataAlteracao
FROM Funcionarios f
JOIN HistoricoSalarios hs ON f.IDFuncionario = hs.IDFuncionario;

3. Consultar Frequências Monitora a presença e ausência dos funcionários, com informações detalhadas.
SELECT f.Nome, fr.Data, fr.Status, fr.MotivoAusencia
FROM Funcionarios f
JOIN Frequencias fr ON f.IDFuncionario = fr.IDFuncionario;

🚀 Como Usar

1. Clone o repositório e abra os arquivos no seu sistema de gerenciamento de banco de dados (MySQL, PostgreSQL, etc.).
Crie as tabelas e insira os dados necessários.
2. Utilize as consultas de exemplo para extrair informações ou crie novas de acordo com suas necessidades.

📝 Conclusão

Este banco de dados foi projetado para simplificar o gerenciamento de informações de recursos humanos. Ele pode ser
expandido e customizado para atender a demandas específicas de diferentes organizações.

Contribuições são bem-vindas! Sinta-se à vontade para abrir issues ou enviar pull requests. 😊


