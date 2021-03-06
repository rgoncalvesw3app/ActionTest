USE [action_db]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 06/05/2021 12:33:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoria](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contato]    Script Date: 06/05/2021 12:33:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contato](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](100) NOT NULL,
	[Telefone] [varchar](11) NOT NULL,
	[Celular] [varchar](11) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemVenda]    Script Date: 06/05/2021 12:33:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemVenda](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdVenda] [int] NOT NULL,
	[IdProduto] [int] NOT NULL,
	[Quantidade] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Produto]    Script Date: 06/05/2021 12:33:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Produto](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdCategoria] [int] NOT NULL,
	[Nome] [varchar](50) NOT NULL,
	[Preco] [money] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Venda]    Script Date: 06/05/2021 12:33:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venda](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](10) NOT NULL,
	[Data] [date] NOT NULL,
	[Faturado] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categoria] ON 

INSERT [dbo].[Categoria] ([Id], [Nome]) VALUES (1, N'Perfumes')
INSERT [dbo].[Categoria] ([Id], [Nome]) VALUES (2, N'Vestuário')
INSERT [dbo].[Categoria] ([Id], [Nome]) VALUES (3, N'Calçados')
INSERT [dbo].[Categoria] ([Id], [Nome]) VALUES (4, N'Acessórios')
SET IDENTITY_INSERT [dbo].[Categoria] OFF
SET IDENTITY_INSERT [dbo].[Contato] ON 

INSERT [dbo].[Contato] ([Id], [Nome], [Telefone], [Celular]) VALUES (1, N'Rogério Gonçalves', N'11981261942', N'2167542345')
INSERT [dbo].[Contato] ([Id], [Nome], [Telefone], [Celular]) VALUES (2, N'Peter Andras Koppany', N'1198123378', N'21981261932')
SET IDENTITY_INSERT [dbo].[Contato] OFF
SET IDENTITY_INSERT [dbo].[ItemVenda] ON 

INSERT [dbo].[ItemVenda] ([Id], [IdVenda], [IdProduto], [Quantidade]) VALUES (3, 1, 1, 10)
INSERT [dbo].[ItemVenda] ([Id], [IdVenda], [IdProduto], [Quantidade]) VALUES (4, 1, 2, 5)
INSERT [dbo].[ItemVenda] ([Id], [IdVenda], [IdProduto], [Quantidade]) VALUES (5, 1, 3, 8)
INSERT [dbo].[ItemVenda] ([Id], [IdVenda], [IdProduto], [Quantidade]) VALUES (6, 1, 9, 5)
INSERT [dbo].[ItemVenda] ([Id], [IdVenda], [IdProduto], [Quantidade]) VALUES (7, 2, 4, 10)
INSERT [dbo].[ItemVenda] ([Id], [IdVenda], [IdProduto], [Quantidade]) VALUES (8, 2, 3, 5)
INSERT [dbo].[ItemVenda] ([Id], [IdVenda], [IdProduto], [Quantidade]) VALUES (9, 3, 4, 20)
INSERT [dbo].[ItemVenda] ([Id], [IdVenda], [IdProduto], [Quantidade]) VALUES (10, 3, 4, 20)
INSERT [dbo].[ItemVenda] ([Id], [IdVenda], [IdProduto], [Quantidade]) VALUES (11, 3, 7, 20)
INSERT [dbo].[ItemVenda] ([Id], [IdVenda], [IdProduto], [Quantidade]) VALUES (12, 3, 8, 100)
INSERT [dbo].[ItemVenda] ([Id], [IdVenda], [IdProduto], [Quantidade]) VALUES (13, 4, 9, 100)
INSERT [dbo].[ItemVenda] ([Id], [IdVenda], [IdProduto], [Quantidade]) VALUES (14, 4, 1, 100)
INSERT [dbo].[ItemVenda] ([Id], [IdVenda], [IdProduto], [Quantidade]) VALUES (15, 4, 4, 80)
INSERT [dbo].[ItemVenda] ([Id], [IdVenda], [IdProduto], [Quantidade]) VALUES (16, 5, 2, 10)
INSERT [dbo].[ItemVenda] ([Id], [IdVenda], [IdProduto], [Quantidade]) VALUES (17, 5, 8, 40)
INSERT [dbo].[ItemVenda] ([Id], [IdVenda], [IdProduto], [Quantidade]) VALUES (18, 7, 1, 20)
INSERT [dbo].[ItemVenda] ([Id], [IdVenda], [IdProduto], [Quantidade]) VALUES (19, 7, 2, 40)
INSERT [dbo].[ItemVenda] ([Id], [IdVenda], [IdProduto], [Quantidade]) VALUES (20, 7, 3, 40)
INSERT [dbo].[ItemVenda] ([Id], [IdVenda], [IdProduto], [Quantidade]) VALUES (21, 7, 4, 40)
INSERT [dbo].[ItemVenda] ([Id], [IdVenda], [IdProduto], [Quantidade]) VALUES (22, 7, 8, 40)
INSERT [dbo].[ItemVenda] ([Id], [IdVenda], [IdProduto], [Quantidade]) VALUES (23, 9, 1, 300)
INSERT [dbo].[ItemVenda] ([Id], [IdVenda], [IdProduto], [Quantidade]) VALUES (24, 9, 1, 300)
INSERT [dbo].[ItemVenda] ([Id], [IdVenda], [IdProduto], [Quantidade]) VALUES (25, 10, 4, 50)
INSERT [dbo].[ItemVenda] ([Id], [IdVenda], [IdProduto], [Quantidade]) VALUES (26, 10, 3, 50)
INSERT [dbo].[ItemVenda] ([Id], [IdVenda], [IdProduto], [Quantidade]) VALUES (27, 12, 1, 500)
INSERT [dbo].[ItemVenda] ([Id], [IdVenda], [IdProduto], [Quantidade]) VALUES (33, 10, 8, 100)
INSERT [dbo].[ItemVenda] ([Id], [IdVenda], [IdProduto], [Quantidade]) VALUES (34, 10, 9, 50)
INSERT [dbo].[ItemVenda] ([Id], [IdVenda], [IdProduto], [Quantidade]) VALUES (35, 11, 4, 50)
INSERT [dbo].[ItemVenda] ([Id], [IdVenda], [IdProduto], [Quantidade]) VALUES (36, 12, 2, 30)
INSERT [dbo].[ItemVenda] ([Id], [IdVenda], [IdProduto], [Quantidade]) VALUES (37, 12, 3, 60)
SET IDENTITY_INSERT [dbo].[ItemVenda] OFF
SET IDENTITY_INSERT [dbo].[Produto] ON 

INSERT [dbo].[Produto] ([Id], [IdCategoria], [Nome], [Preco]) VALUES (1, 2, N'Calça Jeans', 200.0000)
INSERT [dbo].[Produto] ([Id], [IdCategoria], [Nome], [Preco]) VALUES (2, 2, N'Bermuda', 80.0000)
INSERT [dbo].[Produto] ([Id], [IdCategoria], [Nome], [Preco]) VALUES (3, 2, N'Camiseta', 60.0000)
INSERT [dbo].[Produto] ([Id], [IdCategoria], [Nome], [Preco]) VALUES (4, 2, N'Polo', 80.0000)
INSERT [dbo].[Produto] ([Id], [IdCategoria], [Nome], [Preco]) VALUES (5, 3, N'Sapato Masculino', 100.0000)
INSERT [dbo].[Produto] ([Id], [IdCategoria], [Nome], [Preco]) VALUES (6, 3, N'Sapato Feminino', 150.0000)
INSERT [dbo].[Produto] ([Id], [IdCategoria], [Nome], [Preco]) VALUES (7, 2, N'Jaqueta', 150.0000)
INSERT [dbo].[Produto] ([Id], [IdCategoria], [Nome], [Preco]) VALUES (8, 2, N'Meias', 8.0000)
INSERT [dbo].[Produto] ([Id], [IdCategoria], [Nome], [Preco]) VALUES (9, 2, N'Camisa Social', 90.0000)
INSERT [dbo].[Produto] ([Id], [IdCategoria], [Nome], [Preco]) VALUES (10, 3, N'Sandália', 50.0000)
INSERT [dbo].[Produto] ([Id], [IdCategoria], [Nome], [Preco]) VALUES (11, 4, N'Brinco', 25.8000)
INSERT [dbo].[Produto] ([Id], [IdCategoria], [Nome], [Preco]) VALUES (12, 4, N'Pulseira', 10.9000)
INSERT [dbo].[Produto] ([Id], [IdCategoria], [Nome], [Preco]) VALUES (13, 3, N'Tênis', 400.0000)
SET IDENTITY_INSERT [dbo].[Produto] OFF
SET IDENTITY_INSERT [dbo].[Venda] ON 

INSERT [dbo].[Venda] ([Id], [Codigo], [Data], [Faturado]) VALUES (1, N'C01', CAST(N'2018-07-15' AS Date), 1)
INSERT [dbo].[Venda] ([Id], [Codigo], [Data], [Faturado]) VALUES (2, N'C02', CAST(N'2018-07-15' AS Date), 1)
INSERT [dbo].[Venda] ([Id], [Codigo], [Data], [Faturado]) VALUES (3, N'C03', CAST(N'2018-07-16' AS Date), 1)
INSERT [dbo].[Venda] ([Id], [Codigo], [Data], [Faturado]) VALUES (4, N'C04', CAST(N'2018-07-16' AS Date), 1)
INSERT [dbo].[Venda] ([Id], [Codigo], [Data], [Faturado]) VALUES (5, N'C05', CAST(N'2018-07-20' AS Date), 1)
INSERT [dbo].[Venda] ([Id], [Codigo], [Data], [Faturado]) VALUES (6, N'C06', CAST(N'2018-07-20' AS Date), 1)
INSERT [dbo].[Venda] ([Id], [Codigo], [Data], [Faturado]) VALUES (7, N'C07', CAST(N'2018-07-28' AS Date), 0)
INSERT [dbo].[Venda] ([Id], [Codigo], [Data], [Faturado]) VALUES (8, N'C08', CAST(N'2018-07-28' AS Date), 1)
INSERT [dbo].[Venda] ([Id], [Codigo], [Data], [Faturado]) VALUES (9, N'C09', CAST(N'2018-07-28' AS Date), 1)
INSERT [dbo].[Venda] ([Id], [Codigo], [Data], [Faturado]) VALUES (10, N'C10', CAST(N'2018-07-30' AS Date), 1)
INSERT [dbo].[Venda] ([Id], [Codigo], [Data], [Faturado]) VALUES (11, N'V01', CAST(N'2018-08-01' AS Date), 1)
INSERT [dbo].[Venda] ([Id], [Codigo], [Data], [Faturado]) VALUES (12, N'C11', CAST(N'2018-08-01' AS Date), 0)
SET IDENTITY_INSERT [dbo].[Venda] OFF
ALTER TABLE [dbo].[ItemVenda]  WITH CHECK ADD  CONSTRAINT [FK_ItemVenda_Venda] FOREIGN KEY([IdVenda])
REFERENCES [dbo].[Venda] ([Id])
GO
ALTER TABLE [dbo].[ItemVenda] CHECK CONSTRAINT [FK_ItemVenda_Venda]
GO
ALTER TABLE [dbo].[Produto]  WITH CHECK ADD  CONSTRAINT [FK_Produto_Categoria] FOREIGN KEY([IdCategoria])
REFERENCES [dbo].[Categoria] ([Id])
GO
ALTER TABLE [dbo].[Produto] CHECK CONSTRAINT [FK_Produto_Categoria]
GO
