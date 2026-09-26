-- =========================================================
-- CONSULTAS BÁSICAS
-- Projeto SQL - Sistema de Vendas
-- =========================================================


-- =========================================================
-- 1. Listar todos os clientes
-- =========================================================

SELECT *
FROM clientes;


-- =========================================================
-- 2. Listar apenas nome e email dos clientes
-- =========================================================

SELECT
    nome,
    email
FROM clientes;


-- =========================================================
-- 3. Listar clientes ativos
-- =========================================================

SELECT
    nome,
    email,
    status
FROM clientes
WHERE status = 'Ativo';


-- =========================================================
-- 4. Listar clientes de Contagem
-- =========================================================

SELECT
    nome,
    cidade,
    estado
FROM clientes
WHERE cidade = 'Contagem';


-- =========================================================
-- 5. Listar cidades diferentes dos clientes
-- =========================================================

SELECT DISTINCT
    cidade
FROM clientes;


-- =========================================================
-- 6. Listar produtos em ordem crescente de preço
-- =========================================================

SELECT
    nome,
    preco
FROM produtos
ORDER BY preco ASC;


-- =========================================================
-- 7. Listar produtos em ordem decrescente de preço
-- =========================================================

SELECT
    nome,
    preco
FROM produtos
ORDER BY preco DESC;


-- =========================================================
-- 8. Produtos com preço entre R$ 100 e R$ 500
-- =========================================================

SELECT
    nome,
    preco
FROM produtos
WHERE preco BETWEEN 100 AND 500
ORDER BY preco;


-- =========================================================
-- 9. Produtos com estoque entre 10 e 30 unidades
-- =========================================================

SELECT
    nome,
    estoque
FROM produtos
WHERE estoque BETWEEN 10 AND 30
ORDER BY estoque;


-- =========================================================
-- 10. Clientes cujo nome começa com "A"
-- =========================================================

SELECT
    nome,
    email
FROM clientes
WHERE nome LIKE 'A%';


-- =========================================================
-- 11. Clientes de Contagem ou Betim
-- =========================================================

SELECT
    nome,
    cidade
FROM clientes
WHERE cidade IN ('Contagem', 'Betim');


-- =========================================================
-- 12. Quantidade total de clientes
-- =========================================================

SELECT
    COUNT(*) AS quantidade_clientes
FROM clientes;


-- =========================================================
-- 13. Quantidade total de produtos
-- =========================================================

SELECT
    COUNT(*) AS quantidade_produtos
FROM produtos;


-- =========================================================
-- 14. Preço médio dos produtos
-- =========================================================

SELECT
    AVG(preco) AS preco_medio
FROM produtos;


-- =========================================================
-- 15. Produto mais caro
-- =========================================================

SELECT
    MAX(preco) AS maior_preco
FROM produtos;


-- =========================================================
-- 16. Produto mais barato
-- =========================================================

SELECT
    MIN(preco) AS menor_preco
FROM produtos;


-- =========================================================
-- 17. Pedidos realizados em junho de 2025
-- =========================================================

SELECT
    id_pedido,
    id_cliente,
    data_pedido,
    status
FROM pedidos
WHERE data_pedido BETWEEN '2025-06-01' AND '2025-06-30'
ORDER BY data_pedido;


-- =========================================================
-- 18. Pedidos que não foram cancelados
-- =========================================================

SELECT
    id_pedido,
    id_cliente,
    data_pedido,
    status
FROM pedidos
WHERE status <> 'Cancelado';


-- =========================================================
-- 19. Produtos com estoque maior que 20
-- =========================================================

SELECT
    nome,
    estoque
FROM produtos
WHERE estoque > 20
ORDER BY estoque DESC;


-- =========================================================
-- 20. Produtos com preço menor que R$ 300
-- =========================================================

SELECT
    nome,
    preco
FROM produtos
WHERE preco < 300
ORDER BY preco;