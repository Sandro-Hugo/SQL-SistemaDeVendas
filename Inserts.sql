-- ============================================
-- CLIENTES
-- ============================================

INSERT INTO clientes
(nome, email, telefone, data_nascimento, cidade, estado, data_cadastro, status)
VALUES
('João Silva', 'joao.silva@email.com', '31999990001', '1995-03-15', 'Contagem', 'MG', '2025-01-10', 'Ativo'),
('Maria Oliveira', 'maria.oliveira@email.com', '31999990002', '1998-07-22', 'Belo Horizonte', 'MG', '2025-01-15', 'Ativo'),
('Carlos Santos', 'carlos.santos@email.com', '31999990003', '1992-11-08', 'Betim', 'MG', '2025-02-03', 'Ativo'),
('Ana Costa', 'ana.costa@email.com', '31999990004', '2000-01-25', 'Contagem', 'MG', '2025-02-18', 'Ativo'),
('Pedro Souza', 'pedro.souza@email.com', '31999990005', '1990-05-12', 'Belo Horizonte', 'MG', '2025-03-05', 'Inativo'),
('Juliana Alves', 'juliana.alves@email.com', '31999990006', '1997-09-30', 'Nova Lima', 'MG', '2025-03-20', 'Ativo'),
('Lucas Pereira', 'lucas.pereira@email.com', '31999990007', '2001-12-10', 'Contagem', 'MG', '2025-04-02', 'Ativo'),
('Fernanda Rocha', 'fernanda.rocha@email.com', '31999990008', '1996-04-18', 'Betim', 'MG', '2025-04-15', 'Ativo'),
('Rafael Martins', 'rafael.martins@email.com', '31999990009', '1993-08-27', 'Belo Horizonte', 'MG', '2025-05-01', 'Inativo'),
('Camila Mendes', 'camila.mendes@email.com', '31999990010', '1999-06-05', 'Contagem', 'MG', '2025-05-12', 'Ativo');


-- ============================================
-- CATEGORIAS
-- ============================================

INSERT INTO categorias
(nome, descricao)
VALUES
('Informática', 'Produtos para computadores e notebooks'),
('Periféricos', 'Teclados, mouses e outros periféricos'),
('Monitores', 'Monitores para uso doméstico e profissional'),
('Celulares', 'Smartphones e acessórios para celulares'),
('Áudio', 'Fones de ouvido, headsets e caixas de som'),
('Acessórios', 'Cabos, suportes e outros acessórios');

-- ============================================
-- PRODUTOS
-- ============================================

INSERT INTO produtos
(nome, descricao, preco, estoque, id_categoria)
VALUES

-- Informática
('Notebook Lenovo LOQ', 'Notebook para jogos e uso profissional', 4299.90, 10, 1),
('Notebook Dell Inspiron', 'Notebook para estudos e trabalho', 3299.90, 15, 1),
('SSD NVMe 1TB', 'SSD NVMe com capacidade de 1TB', 499.90, 25, 1),
('Memória RAM 16GB', 'Memória RAM DDR4 de 16GB', 329.90, 30, 1),

-- Periféricos
('Mouse Logitech G203', 'Mouse gamer com sensor de alta precisão', 149.90, 40, 2),
('Teclado Mecânico Redragon', 'Teclado mecânico para jogos', 249.90, 25, 2),
('Mousepad Gamer', 'Mousepad grande para jogos', 99.90, 50, 2),
('Teclado Logitech K380', 'Teclado compacto sem fio', 219.90, 20, 2),

-- Monitores
('Monitor LG UltraGear 24', 'Monitor gamer Full HD 144Hz', 899.90, 12, 3),
('Monitor Samsung 27', 'Monitor Full HD de 27 polegadas', 1099.90, 8, 3),
('Monitor AOC 24', 'Monitor Full HD para uso geral', 799.90, 14, 3),

-- Celulares
('Samsung Galaxy A55', 'Smartphone Samsung com 128GB', 1899.90, 18, 4),
('Motorola Edge 50', 'Smartphone Motorola com 256GB', 2299.90, 10, 4),
('iPhone 15', 'Smartphone Apple com 128GB', 4499.90, 7, 4),

-- Áudio
('Headset HyperX Cloud II', 'Headset gamer com microfone', 399.90, 15, 5),
('Fone JBL Tune 520BT', 'Fone Bluetooth JBL', 249.90, 22, 5),
('Caixa de Som JBL Go 3', 'Caixa de som portátil Bluetooth', 299.90, 16, 5),

-- Acessórios
('Cabo HDMI 2.1', 'Cabo HDMI de alta velocidade', 79.90, 60, 6),
('Suporte para Notebook', 'Suporte ajustável para notebook', 129.90, 35, 6),
('Hub USB 3.0', 'Hub USB com múltiplas portas', 89.90, 45, 6);

-- ============================================
-- PEDIDOS
-- ============================================

INSERT INTO pedidos
(id_cliente, data_pedido, status)
VALUES
(1, '2025-05-15', 'Entregue'),
(2, '2025-05-16', 'Entregue'),
(3, '2025-05-18', 'Entregue'),
(4, '2025-05-20', 'Enviado'),
(5, '2025-05-22', 'Cancelado'),
(6, '2025-05-25', 'Entregue'),
(7, '2025-05-28', 'Processando'),
(8, '2025-06-01', 'Entregue'),
(9, '2025-06-03', 'Cancelado'),
(10, '2025-06-05', 'Enviado'),
(1, '2025-06-08', 'Entregue'),
(3, '2025-06-10', 'Processando'),
(4, '2025-06-12', 'Entregue'),
(6, '2025-06-15', 'Enviado'),
(7, '2025-06-18', 'Processando');

-- ============================================
-- ITENS DOS PEDIDOS
-- ============================================

INSERT INTO itens_pedido
(id_pedido, id_produto, quantidade, preco_unitario)
VALUES

-- Pedido 1
(1, 1, 1, 4299.90),
(1, 5, 1, 149.90),

-- Pedido 2
(2, 9, 1, 899.90),
(2, 7, 2, 99.90),

-- Pedido 3
(3, 12, 1, 1899.90),
(3, 16, 1, 249.90),

-- Pedido 4
(4, 6, 1, 249.90),
(4, 18, 2, 79.90),

-- Pedido 5
(5, 2, 1, 3299.90),

-- Pedido 6
(6, 3, 1, 499.90),
(6, 4, 2, 329.90),
(6, 20, 1, 89.90),

-- Pedido 7
(7, 15, 1, 399.90),
(7, 5, 1, 149.90),

-- Pedido 8
(8, 10, 1, 1099.90),
(8, 17, 1, 299.90),

-- Pedido 9
(9, 14, 1, 4499.90),

-- Pedido 10
(10, 13, 1, 2299.90),
(10, 19, 1, 129.90),

-- Pedido 11
(11, 1, 1, 4299.90),
(11, 6, 1, 249.90),
(11, 18, 1, 79.90),

-- Pedido 12
(12, 8, 1, 219.90),
(12, 20, 1, 89.90),

-- Pedido 13
(13, 9, 1, 899.90),
(13, 15, 1, 399.90),
(13, 7, 1, 99.90),

-- Pedido 14
(14, 11, 2, 799.90),
(14, 16, 1, 249.90),

-- Pedido 15
(15, 3, 1, 499.90),
(15, 5, 2, 149.90);