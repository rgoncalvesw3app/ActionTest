--1. Escreva uma consulta em SQL que selecione o nome do produto, o preço do produto e o nome da
--categoria dos produtos que contenham a palavra “sapato” em seu nome ou que sejam da categoria
--com ID 2, sendo que o resultado deve ser ordenado pelo preço decrescentemente.

SELECT A.Nome As NomeProduto, A.Preco, B.Nome As NomeCategoria  
FROM Produto (NOLOCK) A INNER JOIN Categoria (NOLOCK) B ON B.Id = A.IdCategoria
Where (A.Nome Like '%sapato%' Or A.IdCategoria = 2)
Order By A.Preco desc

--2. Escreva uma consulta em SQL que selecione o código das vendas já faturadas que possuem mais de 2 produtos.
SELECT A.Codigo, B.Quantidade FROM VENDA (NOLOCK) A INNER JOIN ITEMVENDA (NOLOCK) B ON A.Id = B.IdVenda
WHERE A.FATURADO = 1
Group by A.Codigo, B.Quantidade
Having B.Quantidade > 2

--3. Escreva uma consulta em SQL que selecione o valor total vendido por produto entre os dias
--20/07/2018 e 30/07/2018 (o cálculo deve considerar o preço do produto e a quantidade de itens
--vendidos, e apenas vendas faturadas).
SELECT C.Nome, (ISNULL(C.Preco,0) * SUM(ISNULL(B.Quantidade,0))) as total
FROM Venda (NOLOCK) A 
	 Inner Join ItemVenda (NOLOCK) B ON A.Id = B.IdVenda 
	 Inner Join Produto (NOLOCK) C ON B.IdProduto = C.Id
Where A.Data between '20/07/2018' AND '30/07/2018' And A.Faturado = 1
Group  By C.Nome, C.Preco
Order By 1 

--4. Escreva uma consulta em SQL que selecione o nome dos produtos com preço maior que 100
--juntamente com o nome das categorias dos produtos com preço menor que 100.

SELECT A.Nome, B.Nome As NomeCategoria
FROM 
	PRODUTO (NOLOCK) A 
	INNER JOIN CATEGORIA (NOLOCK) B ON A.IdCategoria = B.Id
WHERE A.preco > 100
And Exists(SELECT 1
FROM 
	PRODUTO (NOLOCK) C 
WHERE 
	A.Id = C.Id AND
	A.IdCategoria = C.IdCategoria AND
	C.preco < 100)


--5. Descreva quais alterações seriam necessárias na estrutura das tabelas caso fosse necessário que o
--produto fosse associado a mais de uma categoria (um para muitos).

--Remover a coluna (IdCategoria) da tabela Produto e criar uma tabela com os Ids Produto_X_Categoria desta forma você consegue associar mais de uma categoria (um para muitos).
--Segue o script da tabela:
CREATE TABLE [dbo].[Produto_X_Categoria](
	[IdProduto] [int] NOT NULL,
	[IdCategoria] [int] NOT NULL,
 CONSTRAINT [PK_Produto_X_Categoria] PRIMARY KEY CLUSTERED 
(
	[IdProduto] ASC,
	[IdCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO