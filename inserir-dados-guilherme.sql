INSERT INTO cadastros (nome, email, rg) VALUES
('João Pedro Santos', 'joao.pedro@email.com', '123456789'),
('Mariana Costa', 'mariana.costa@email.com', '987654321'),
('Lucas Almeida', 'lucas.almeida@email.com', '456789123'),
('Amanda Rocha', 'amanda.rocha@email.com', '789123456'),
('Bruno Lima', 'bruno.lima@email.com', '321654987');

INSERT INTO categorias (categoria_nome) VALUES
('Romance'),
('Fantasia'),
('História'),
('Tecnologia'),
('Biografia');

INSERT INTO livros (titulo_livro, data_publicacao, categoria_id) VALUES
('A Sombra do Vento', '2001-06-05', 1),
('O Senhor dos Anéis', '1954-07-29', 2),
('História Geral da Humanidade', '1998-03-15', 3),
('Estruturas de Dados em C', '2010-09-10', 4),
('A Vida de Steve Jobs', '2011-10-24', 5);

INSERT INTO livros (titulo_livro, data_publicacao, categoria_id) VALUES
('Dom Casmurro', '1899-01-01', 1),
('O Hobbit', '1937-09-21', 2),
('Introdução à Computação', '2005-03-10', 4);


INSERT INTO emprestimos (emprestimo_id, livro_id, cadastro_id, prazo_id) VALUES
(1, 1, 1, 1),
(2, 2, 2, 2),
(3, 3, 3, 3),
(4, 4, 4, 4),
(5, 5, 5, 5);

INSERT INTO emprestimos (emprestimo_id, livro_id, cadastro_id, prazo_id) VALUES
(6, 6, 1, NULL),  
(7, 7, 2, NULL), 
(8, 8, 3, NULL);  

INSERT INTO devolucoes (prazo_id, emprestimo_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);
