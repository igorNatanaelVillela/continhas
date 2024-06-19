-- Inserção de dados na tabela Usuário
INSERT INTO usuario (id, nome, email, senha) VALUES
(1, 'João Silva', 'joao@example.com', 'senha123'),
(2, 'Maria Oliveira', 'maria@example.com', 'senha123'),
(3, 'Carlos Santos', 'carlos@example.com', 'senha123');

-- Inserção de dados na tabela Categoria
INSERT INTO categoria (id, nome, descricao) VALUES
(1, 'Alimentação', 'Despesas relacionadas a alimentação.'),
(2, 'Transporte', 'Despesas relacionadas a transporte.'),
(3, 'Lazer', 'Despesas relacionadas a atividades de lazer.');

-- Inserção de dados na tabela Transação
INSERT INTO transacao (id, usuario_id, tipo_transacao, valor, data_hora, forma_pagamento, nota_adicional, categoria_id) VALUES
(1, 1, 'Despesa', 50.00, '2024-04-10', 'Cartão de Crédito', 'Restaurante', 1),
(2, 1, 'Despesa', 350.00, '2024-04-05', 'Pix', 'Viagem', 3),
(3, 1, 'Despesa', 30.00, '2024-04-09', 'Dinheiro', 'Cinema', 3);

-- Inserção de dados na tabela Meta
INSERT INTO meta (id, valor_meta, data_vigencia, categoria_id, usuario_id) VALUES
(1, 500.00, '2024-04-30', 1, 1),
(2, 200.00, '2024-04-30', 2, 1),
(3, 100.00, '2024-04-30', 3, 2);
