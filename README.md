# SQL - Sistema de Vendas

Projeto desenvolvido para estudo e prática de **SQL e banco de dados relacionais** utilizando **Microsoft SQL Server**.

O projeto simula o banco de dados de uma loja, com cadastro de clientes, categorias, produtos e pedidos. O objetivo é praticar a criação, manipulação e consulta de dados utilizando diferentes recursos do SQL.

## Objetivo

Construir um banco de dados relacional do zero e utilizar SQL para consultar e analisar os dados de uma loja.

Durante o desenvolvimento, são praticados conceitos como criação de tabelas, inserção de dados, filtros, ordenação, funções de agregação, relacionamentos entre tabelas, subconsultas e outras operações comuns em bancos de dados relacionais.

## Banco de Dados

O banco de dados é composto por cinco tabelas:

| Tabela         | Descrição                                       |
| -------------- | ----------------------------------------------- |
| `clientes`     | Dados dos clientes cadastrados                  |
| `categorias`   | Categorias dos produtos                         |
| `produtos`     | Produtos disponíveis na loja                    |
| `pedidos`      | Pedidos realizados pelos clientes               |
| `itens_pedido` | Produtos e quantidades presentes em cada pedido |

### Relacionamentos

```text
clientes
    │
    └── pedidos
           │
           └── itens_pedido
                   │
                   └── produtos
                          │
                          └── categorias
```

Os relacionamentos entre as tabelas são implementados utilizando **PRIMARY KEY** e **FOREIGN KEY**.

## Dados

O banco possui dados de exemplo distribuídos da seguinte forma:

* 10 clientes
* 6 categorias
* 20 produtos
* 15 pedidos
* 31 itens de pedidos

Os dados foram criados para possibilitar diferentes tipos de consultas e análises.

## Estrutura do Projeto

```text
SQL-SistemaDeVendas/
│
├── README.md
│
├── database/
│   ├── 01_create_tables.sql
│   └── 02_insert_data.sql
│
├── queries/
│   ├── consultas_basicas.sql
│   └── consultas_avancadas.sql
│
└── ...
```

A estrutura dos arquivos pode variar conforme a organização do projeto no GitHub.

## Conceitos Praticados

Durante o desenvolvimento do projeto são praticados:

* `CREATE TABLE`
* `INSERT INTO`
* `SELECT`
* `WHERE`
* `ORDER BY`
* `DISTINCT`
* `BETWEEN`
* `LIKE`
* `IN`
* `COUNT`
* `SUM`
* `AVG`
* `MAX`
* `MIN`
* `GROUP BY`
* `HAVING`
* `INNER JOIN`
* `LEFT JOIN`
* Subconsultas
* `CASE`
* `UNION`
* `VIEW`
* `PRIMARY KEY`
* `FOREIGN KEY`

## Consultas

As consultas foram divididas em **básicas** e **avançadas**, utilizando situações relacionadas ao funcionamento de uma loja.

### Consultas Básicas

1. Listar todos os clientes.
2. Listar apenas o nome e o email dos clientes.
3. Listar clientes ativos.
4. Listar clientes de Contagem.
5. Listar as cidades diferentes dos clientes.
6. Listar produtos em ordem crescente de preço.
7. Listar produtos em ordem decrescente de preço.
8. Listar produtos com preço entre R$ 100 e R$ 500.
9. Listar produtos com estoque entre 10 e 30 unidades.
10. Listar clientes cujo nome começa com "A".
11. Listar clientes de Contagem ou Betim.
12. Verificar a quantidade total de clientes.
13. Verificar a quantidade total de produtos.
14. Calcular o preço médio dos produtos.
15. Identificar o maior preço entre os produtos.
16. Identificar o menor preço entre os produtos.
17. Listar pedidos realizados em junho de 2025.
18. Listar pedidos que não foram cancelados.
19. Listar produtos com estoque maior que 20 unidades.
20. Listar produtos com preço menor que R$ 300.

### Consultas Avançadas

1. Listar produtos com suas respectivas categorias.
2. Verificar a quantidade de produtos por categoria.
3. Verificar a quantidade de pedidos realizados por cliente.
4. Listar clientes que nunca realizaram pedidos.
5. Listar produtos que nunca foram vendidos.
6. Verificar a quantidade total de cada produto vendido.
7. Identificar o produto mais vendido.
8. Calcular o valor total de cada pedido.
9. Calcular o faturamento total da loja, considerando apenas pedidos não cancelados.
10. Calcular quanto cada cliente gastou.
11. Identificar o cliente que realizou mais pedidos.
12. Calcular o faturamento de cada categoria.
13. Identificar a categoria com maior faturamento.
14. Listar produtos com preço acima da média.
15. Classificar produtos de acordo com o preço.
16. Listar categorias com mais de 3 produtos.
17. Listar clientes que realizaram mais de um pedido.
18. Listar os produtos vendidos em cada pedido.
19. Listar os pedidos cancelados.
20. Calcular o valor médio dos pedidos.

## Tecnologias

* SQL
* Microsoft SQL Server
* SQL Server Management Studio (SSMS)

## Status

Em desenvolvimento.

Projeto criado para estudo, prática de SQL e construção de portfólio.

## Autor

**Sandro Hugo**

Estudante de Ciência da Computação.

[GitHub](https://github.com/Sandro-Hugo)
