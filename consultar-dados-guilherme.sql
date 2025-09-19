SELECT titulo_livro, data_publicacao
FROM livros
WHERE data_publicacao < '2000-01-01';

/*Neste exemplo, estou buscando os livros que foram publicados antes do ano 2000*/ 

SELECT l.titulo_livro, l.data_publicacao, c.categoria_nome FROM livros AS l
INNER JOIN categorias AS c ON c.categoria_id = l.categoria_id
WHERE c.categoria_nome ILIKE 'fantasia'

/*Aqui, alguém que tem acesso ao software da biblioteca, está procurando por livros da categoria de fantasia*/

SELECT livro_id, e.cadastro_id, emprestimo_id, c.nome, c.email FROM emprestimos AS e 
INNER JOIN cadastros AS c ON e.cadastro_id = c.cadastro_id
WHERE e.prazo_id IS NULL
/*Neste exememplo, alguém da parte da administração dos empréstimos está vendo quais empréstimos estão em aberto, ou seja, sem devolução*/
/*Com esta informação, ele está buscando o cadtro_id, o nome e o email do responsável*/

SELECT  e.cadastro_id, e.emprestimo_id, l.titulo_livro, c.nome, c.email, d.prazo_id FROM emprestimos AS e 
INNER JOIN cadastros AS c ON e.cadastro_id = c.cadastro_id
INNER JOIN devolucoes AS d ON e.emprestimo_id = d.emprestimo_id
INNER JOIN livros AS l ON e.livro_id = l.livro_id
/*Já nesta situação, o administrador da biblioteca está consultando os livros que já foram devolvidos do empréstimo*/

SELECT count(emprestimo_id) AS Qntde FROM emprestimos
WHERE cadastro_id = 3;
/*Nessa situação, o administrador está buscando a quantidade de empréstimos de um certo usuário pelo seu ID de cadastro*/

SELECT count(emprestimo_id) AS Qntde FROM emprestimos AS e
INNER JOIN livros AS l ON l.livro_id = e.emprestimo_id 
INNER JOIN categorias AS c ON l.categoria_id = c.categoria_id
WHERE c.categoria_nome ILIKE 'fantasia'
/*Nesta última consulta, o administrador está buscando a quantidade de empréstimos de livros com a categoria fantasia */




