```sql
🎭 Sistema de Gerenciamento de Eventos - Evento360

Este projeto consiste no desenvolvimento de um banco de dados robusto para o gerenciamento de informações relacionadas
a eventos, participantes, ingressos, organizadores e redes sociais. A estrutura foi projetada para garantir eficiência
e organização na gestão de eventos.

🎟 Estrutura do Banco de Dados

O banco de dados contém as seguintes tabelas principais:

1. Usuários: Gerencia os organizadores e administradores do sistema.
2. Eventos: Armazena informações sobre os eventos cadastrados.
3. Participantes: Registra os dados de pessoas inscritas nos eventos.
4. Ingressos: Documenta os detalhes das vendas de ingressos.
5. Feedback: Coleta opiniões e avaliações dos participantes.
6. Redes Sociais: Monitora as redes sociais relacionadas aos eventos e participantes.
7. Auditoria: Rastreia ações realizadas no sistema.
8. Eventos Participantes: Controla os participantes inscritos em cada evento.

📋 Scripts SQL

Criação das Tabelas

Aqui está um exemplo de script SQL para a criação de uma das tabelas:

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

Inserção Inicial de Dados

INSERT INTO eventos (nome, data, local, capacidade, descricao, status, criadopor)
VALUES
('Hackathon de Inovação', '2025-05-10', 'São Paulo, SP', 100, 'Competição de desenvolvimento', 'ativo', 1),
('Workshop de Marketing', '2025-05-15', 'Rio de Janeiro, RJ', 50, 'Aprenda estratégias digitais', 'ativo', 2),
('Seminário de Segurança', '2025-06-10', 'Brasília, DF', 200, 'Discussão sobre segurança cibernética', 'ativo', 1);

🎉 Funcionalidades

1. Gestão de Usuários: Controle de administradores e organizadores.
2. Criação de Eventos: Cadastro de eventos e informações detalhadas.
3. Participantes e Ingressos: Gerenciamento de inscrições e vendas de ingressos.
4. Coleta de Feedback: Recebimento de avaliações dos participantes.
5. Redes Sociais: Monitoramento das redes sociais associadas aos eventos e usuários.
6. Auditoria: Rastreamento e histórico de ações no sistema.

🔍 Consultas SQL com JOIN

Exemplo: Relatório de Inscrições por Evento

SELECT eventos.nome AS evento, participantes.nome AS participante, ingressos.data_compra, ingressos.status_pagamento
FROM eventos
INNER JOIN eventos_participantes ON eventos.idevento = eventos_participantes.idevento
INNER JOIN participantes ON eventos_participantes.idparticipante = participantes.idparticipante
INNER JOIN ingressos ON ingressos.idevento = eventos.idevento AND ingressos.idparticipante = participantes.idparticipante;

Exemplo: Feedbacks Coletados dos Eventos

SELECT eventos.nome AS evento, participantes.nome AS participante, feedback.comentario, feedback.nota
FROM feedback
INNER JOIN eventos ON feedback.idevento = eventos.idevento
INNER JOIN participantes ON feedback.idparticipante = participantes.idparticipante;

🚀 Como Usar

1. Criação do Banco de Dados: Utilize os scripts fornecidos para criar as tabelas.
2. População de Dados: Insira dados iniciais para testes com as consultas.
3. Exploração: Experimente as consultas SQL para extrair informações úteis.
4. Adaptação: Personalize o sistema para suas necessidades específicas de gerenciamento.

📝 Conclusão

Este sistema foi projetado para facilitar o gerenciamento de eventos, permitindo controle total sobre inscrições,
vendas, feedbacks e ações do sistema. É uma solução prática e poderosa para qualquer tipo de evento.

Contribuições e melhorias são bem-vindas! 😊
