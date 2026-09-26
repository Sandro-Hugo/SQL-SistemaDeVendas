-- =========================================================
-- CONSULTAS AVANÇADAS
-- Projeto SQL - Sistema de Vendas
-- =========================================================


-- =========================================================
-- 1. Listar produtos com suas respectivas categorias
-- =========================================================

SELECT
    p.nome AS produto,
    p.preco,
    c.nome AS categoria
FROM produtos p
INNER JOIN categorias c
    ON p.id_categoria = c.id_categoria
ORDER BY c.nome, p.nome;


-- =========================================================
-- 2. Quantidade de produtos por categoria
-- =========================================================

SELECT
    c.nome AS categoria,
    COUNT(p.id_produto) AS quantidade_produtos
FROM categorias c
LEFT JOIN produtos p
    ON c.id_categoria = p.id_categoria
GROUP BY c.id_categoria, c.nome
ORDER BY quantidade_produtos DESC;


-- =========================================================
-- 3. Quantidade de pedidos realizados por cliente
-- =========================================================

SELECT
    c.nome AS cliente,
    COUNT(p.id_pedido) AS quantidade_pedidos
FROM clientes c
LEFT JOIN pedidos p
    ON c.id_cliente = p.id_cliente
GROUP BY c.id_cliente, c.nome
ORDER BY quantidade_pedidos DESC;


-- =========================================================
-- 4. Clientes que nunca realizaram pedidos
-- =========================================================

SELECT
    c.id_cliente,
    c.nome,
    c.email
FROM clientes c
LEFT JOIN pedidos p
    ON c.id_cliente = p.id_cliente
WHERE p.id_pedido IS NULL;


-- =========================================================
-- 5. Produtos que nunca foram vendidos
-- =========================================================

SELECT
    p.id_produto,
    p.nome,
    p.preco,
    p.estoque
FROM produtos p
LEFT JOIN itens_pedido ip
    ON p.id_produto = ip.id_produto
WHERE ip.id_item IS NULL;


-- =========================================================
-- 6. Quantidade total de cada produto vendido
-- =========================================================

SELECT
    p.nome AS produto,
    SUM(ip.quantidade) AS quantidade_vendida
FROM produtos p
INNER JOIN itens_pedido ip
    ON p.id_produto = ip.id_produto
GROUP BY p.id_produto, p.nome
ORDER BY quantidade_vendida DESC;


-- =========================================================
-- 7. Produto mais vendido
-- =========================================================

SELECT TOP 1
    p.nome AS produto,
    SUM(ip.quantidade) AS quantidade_vendida
FROM produtos p
INNER JOIN itens_pedido ip
    ON p.id_produto = ip.id_produto
GROUP BY p.id_produto, p.nome
ORDER BY quantidade_vendida DESC;


-- =========================================================
-- 8. Valor total de cada pedido
-- =========================================================

SELECT
    p.id_pedido,
    SUM(ip.quantidade * ip.preco_unitario) AS valor_total
FROM pedidos p
INNER JOIN itens_pedido ip
    ON p.id_pedido = ip.id_pedido
GROUP BY p.id_pedido
ORDER BY valor_total DESC;


-- =========================================================
-- 9. Faturamento total da loja
-- Considerando apenas pedidos não cancelados
-- =========================================================

SELECT
    SUM(ip.quantidade * ip.preco_unitario) AS faturamento_total
FROM pedidos p
INNER JOIN itens_pedido ip
    ON p.id_pedido = ip.id_pedido
WHERE p.status <> 'Cancelado';


-- =========================================================
-- 10. Quanto cada cliente gastou
-- =========================================================

SELECT
    c.nome AS cliente,
    SUM(ip.quantidade * ip.preco_unitario) AS total_gasto
FROM clientes c
INNER JOIN pedidos p
    ON c.id_cliente = p.id_cliente
INNER JOIN itens_pedido ip
    ON p.id_pedido = ip.id_pedido
WHERE p.status <> 'Cancelado'
GROUP BY c.id_cliente, c.nome
ORDER BY total_gasto DESC;


-- =========================================================
-- 11. Cliente que realizou mais pedidos
-- =========================================================

SELECT TOP 1
    c.nome AS cliente,
    COUNT(p.id_pedido) AS quantidade_pedidos
FROM clientes c
INNER JOIN pedidos p
    ON c.id_cliente = p.id_cliente
GROUP BY c.id_cliente, c.nome
ORDER BY quantidade_pedidos DESC;


-- =========================================================
-- 12. Categoria e seu faturamento
-- =========================================================

SELECT
    c.nome AS categoria,
    SUM(ip.quantidade * ip.preco_unitario) AS faturamento
FROM categorias c
INNER JOIN produtos p
    ON c.id_categoria = p.id_categoria
INNER JOIN itens_pedido ip
    ON p.id_produto = ip.id_produto
INNER JOIN pedidos pe
    ON ip.id_pedido = pe.id_pedido
WHERE pe.status <> 'Cancelado'
GROUP BY c.id_categoria, c.nome
ORDER BY faturamento DESC;


-- =========================================================
-- 13. Categoria com maior faturamento
-- =========================================================

SELECT TOP 1
    c.nome AS categoria,
    SUM(ip.quantidade * ip.preco_unitario) AS faturamento
FROM categorias c
INNER JOIN produtos p
    ON c.id_categoria = p.id_categoria
INNER JOIN itens_pedido ip
    ON p.id_produto = ip.id_produto
INNER JOIN pedidos pe
    ON ip.id_pedido = pe.id_pedido
WHERE pe.status <> 'Cancelado'
GROUP BY c.id_categoria, c.nome
ORDER BY faturamento DESC;


-- =========================================================
-- 14. Produtos com preço acima da média
-- =========================================================

SELECT
    nome,
    preco
FROM produtos
WHERE preco > (
    SELECT AVG(preco)
    FROM produtos
)
ORDER BY preco DESC;


-- =========================================================
-- 15. Classificar produtos pelo preço
-- =========================================================

SELECT
    nome,
    preco,
    CASE
        WHEN preco < 200 THEN 'Barato'
        WHEN preco <= 1000 THEN 'Medio'
        ELSE 'Caro'
    END AS classificacao
FROM produtos
ORDER BY preco;


-- =========================================================
-- 16. Categorias com mais de 3 produtos
-- =========================================================

SELECT
    c.nome AS categoria,
    COUNT(p.id_produto) AS quantidade_produtos
FROM categorias c
INNER JOIN produtos p
    ON c.id_categoria = p.id_categoria
GROUP BY c.id_categoria, c.nome
HAVING COUNT(p.id_produto) > 3
ORDER BY quantidade_produtos DESC;


-- =========================================================
-- 17. Clientes que realizaram mais de um pedido
-- =========================================================

SELECT
    c.nome AS cliente,
    COUNT(p.id_pedido) AS quantidade_pedidos
FROM clientes c
INNER JOIN pedidos p
    ON c.id_cliente = p.id_cliente
GROUP BY c.id_cliente, c.nome
HAVING COUNT(p.id_pedido) > 1
ORDER BY quantidade_pedidos DESC;


-- =========================================================
-- 18. Produtos vendidos em cada pedido
-- =========================================================

SELECT
    pe.id_pedido,
    c.nome AS cliente,
    p.nome AS produto,
    ip.quantidade,
    ip.preco_unitario
FROM pedidos pe
INNER JOIN clientes c
    ON pe.id_cliente = c.id_cliente
INNER JOIN itens_pedido ip
    ON pe.id_pedido = ip.id_pedido
INNER JOIN produtos p
    ON ip.id_produto = p.id_produto
ORDER BY pe.id_pedido;


-- =========================================================
-- 19. Pedidos cancelados
-- =========================================================

SELECT
    p.id_pedido,
    c.nome AS cliente,
    p.data_pedido,
    p.status
FROM pedidos p
INNER JOIN clientes c
    ON p.id_cliente = c.id_cliente
WHERE p.status = 'Cancelado'
ORDER BY p.data_pedido;


-- =========================================================
-- 20. Média de valor dos pedidos
-- =========================================================

SELECT
    AVG(valor_total) AS valor_medio_pedido
FROM (
    SELECT
        id_pedido,
        SUM(quantidade * preco_unitario) AS valor_total
    FROM itens_pedido
    GROUP BY id_pedido
) AS pedidos_totais;