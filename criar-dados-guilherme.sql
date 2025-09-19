CREATE TABLE cadastros(
    cadastro_id SERIAL PRIMARY KEY,
    nome VARCHAR (150) NOT NULL,
    email VARCHAR(150) NOT NULL,
    rg VARCHAR(9) NOT NULL
)

/*Correcao de erro*/
DROP TABLE devolucoes;
DROP TABLE emprestimos;
DROP TABLE livros;
DROP TABLE cadastros;
DROP TABLE categorias;


CREATE TABLE categorias(
    categoria_id SERIAL PRIMARY KEY,
    categoria_nome TEXT NOT NULL
    
)

CREATE TABLE livros(
    livro_id SERIAL PRIMARY KEY,
    titulo_livro VARCHAR (150) NOT NULL,
    data_publicacao TIMESTAMP,
    categoria_id INT REFERENCES categorias(categoria_id)
)


CREATE TABLE devolucoes(
    prazo_id SERIAL PRIMARY KEY,
    emprestimo_id INT REFERENCES emprestimos(emprestimo_id)
    
)

CREATE TABLE emprestimos(
    emprestimo_id SERIAL PRIMARY KEY,
    livro_id INT REFERENCES livros(livro_id),
    cadastro_id INT REFERENCES cadastros(cadastro_id),
    prazo_id INT 
);

CREATE TABLE devolucoes(
    prazo_id INT PRIMARY KEY,
    emprestimo_id INT REFERENCES emprestimos(emprestimo_id)
);


/*Adicionando a chave estrangeira após a criação da outra tabela para evitar erro*/
ALTER TABLE emprestimos
ADD CONSTRAINT fk_prazo_id FOREIGN KEY (prazo_id)
REFERENCES devolucoes(prazo_id);

DROP TABLE devolucoes, emprestimos, livros, cadastros, categorias CASCADE;
