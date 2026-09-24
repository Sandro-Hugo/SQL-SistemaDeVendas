# SQL-SistemaDeVendas
Projeto de banco de dados relacional desenvolvido em SQL Server, simulando o sistema de vendas de uma loja. O projeto aborda criação e relacionamento de tabelas, inserção e consulta de dados, utilizando comandos SQL para responder perguntas e analisar as informações do banco.


# Projeto SQL - Sistema de Vendas

Projeto desenvolvido para praticar e demonstrar conhecimentos em **SQL e banco de dados relacionais**, utilizando o SQL Server.

O projeto simula o banco de dados de uma loja, permitindo o cadastro de clientes, categorias, produtos e pedidos, além do relacionamento entre essas informações.

## Objetivo

O objetivo é desenvolver um banco de dados do zero e utilizar consultas SQL para responder perguntas relacionadas aos dados da loja.

Além da criação das tabelas, o projeto será utilizado para praticar consultas de diferentes níveis de dificuldade, desde consultas básicas até relacionamentos e análises mais completas dos dados.

## Estrutura do Banco

O banco de dados é composto pelas seguintes tabelas:

* **clientes** — informações dos clientes cadastrados.
* **categorias** — categorias dos produtos.
* **produtos** — produtos disponíveis na loja.
* **pedidos** — pedidos realizados pelos clientes.
* **itens_pedido** — produtos, quantidades e valores presentes em cada pedido.

## Relacionamentos

As tabelas possuem relacionamentos por meio de chaves primárias e estrangeiras:

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

## Conceitos e comandos praticados

Durante o desenvolvimento do projeto serão utilizados conceitos como:

* CREATE TABLE
* INSERT INTO
* SELECT
* WHERE
* ORDER BY
* DISTINCT
* BETWEEN
* LIKE
* IN
* COUNT
* SUM
* AVG
* MAX
* MIN
* GROUP BY
* HAVING
* INNER JOIN
* LEFT JOIN
* Subconsultas
* CASE
* UNION
* VIEW
* PRIMARY KEY
* FOREIGN KEY

## Consultas e perguntas

As consultas serão organizadas a partir de perguntas sobre os dados, buscando simular situações que poderiam surgir em uma análise de dados de uma loja.

Alguns exemplos:

* Quantos clientes estão cadastrados?
* Quais produtos pertencem a determinada categoria?
* Qual é o preço médio dos produtos?
* Quantos pedidos cada cliente realizou?
* Qual produto foi mais vendido?
* Qual cliente realizou mais pedidos?
* Qual cliente gastou mais?
* Qual foi o faturamento total da loja?
* Qual categoria possui maior faturamento?
* Quais clientes nunca realizaram uma compra?
* Quais produtos nunca foram vendidos?

## Tecnologias

* **SQL**
* **Microsoft SQL Server**
* **SQL Server Management Studio (SSMS)**

## Organização dos arquivos

```text
projeto-sql-loja/
│
├── 01_criacao_tabelas.sql
├── 02_insercao_dados.sql
├── 03_consultas_basicas.sql
├── 04_agregacoes.sql
├── 05_joins.sql
├── 06_subconsultas.sql
├── 07_consultas_avancadas.sql
└── README.md
```

## Status

Em desenvolvimento.

Projeto criado para estudos, prática de SQL e construção de portfólio.
