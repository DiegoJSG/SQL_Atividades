SELECT 
	vendas.ID_Livro,
	livros.Nome_Livro,
	vendas.QTD_VENDIDA
from livros right join vendas
on livros.id_livro = vendas.ID_LIVRO;
