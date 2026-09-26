# SQL - Sistema de Vendas

Projeto desenvolvido para estudo e prática de **SQL e banco de dados relacionais** utilizando **Microsoft SQL Server**.

O projeto simula o banco de dados de uma loja, com cadastro de clientes, categorias, produtos e pedidos. O objetivo é praticar desde a criação e manipulação das tabelas até consultas envolvendo relacionamentos, agregações e análises dos dados.

## Objetivo

Construir um banco de dados relacional do zero e utilizar SQL para consultar e analisar os dados de uma loja.

O projeto aborda consultas de diferentes níveis de complexidade, utilizando filtros, funções de agregação, relacionamentos entre tabelas, subconsultas e outros recursos do SQL.

## Banco de Dados

O banco é composto por cinco tabelas:

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

Os relacionamentos são implementados por meio de **PRIMARY KEY** e **FOREIGN KEY**.

## Dados

O banco possui dados de exemplo distribuídos da seguinte forma:

* 10 clientes
* 6 categorias
* 20 produtos
* 15 pedidos
* 31 itens de pedidos

Os dados foram criados para possibilitar diferentes tipos de consultas e análises.

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

As consultas são baseadas em situações que poderiam ser encontradas em uma análise de dados de uma loja.

Alguns exemplos:

* Quantos clientes estão cadastrados?
* Quais clientes estão ativos?
* Quais produtos pertencem a cada categoria?
* Qual é o preço médio dos produtos?
* Qual é o produto mais caro?
* Qual é o produto mais barato?
* Quantos produtos existem em cada categoria?
* Quantos pedidos cada cliente realizou?
* Quais clientes nunca realizaram uma compra?
* Quais produtos nunca foram vendidos?
* Qual produto foi mais vendido?
* Qual cliente realizou mais pedidos?
* Qual cliente gastou mais?
* Qual foi o faturamento total da loja?
* Qual categoria possui maior faturamento?
* Quais produtos possuem preço acima da média?
* Qual foi o valor médio dos pedidos?

## Tecnologias

* SQL
* Microsoft SQL Server
* SQL Server Management Studio (SSMS)

## Status

Em desenvolvimento.

Projeto criado para estudo, prática de SQL e construção de portfólio.
