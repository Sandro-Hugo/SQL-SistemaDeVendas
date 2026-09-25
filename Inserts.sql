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

INSERT INTO categorias 
(nome, descricao)
VALUES
('Informática', 'Produtos para computadores e notebooks'),
('Periféricos', 'Teclados, mouses e outros periféricos'),
('Monitores', 'Monitores para uso doméstico e profissional'),
('Celulares', 'Smartphones e acessórios para celulares'),
('Áudio', 'Fones de ouvido, headsets e caixas de som'),
('Acessórios', 'Cabos, suportes e outros acessórios');

INSERT INTO produtos 
(nome, descricao, preco, estoque, id_categoria)
VALUES
('Notebook Lenovo LOQ', 'Notebook para jogos e uso profissional', 4299.90, 10, 1),
('Notebook Dell Inspiron', 'Notebook para estudos e trabalho', 3299.90, 15, 1),
('SSD NVMe 1TB', 'SSD NVMe com capacidade de 1TB', 499.90, 25, 1),
('Memória RAM 16GB', 'Memória RAM DDR4 16GB', 329.90, 30, 1),

('Mouse Logitech G203', 'Mouse gamer com sensor de alta precisão', 149.90, 40, 2),
('Teclado Mecânico Redragon', 'Teclado mecânico para jogos', 249.90, 25, 2),
('Mousepad Gamer', 'Mousepad grande para jogos', 99.90, 50, 2),
('Teclado Logitech K380', 'Teclado compacto sem fio', 219.90, 20, 2),

('Monitor LG UltraGear 24', 'Monitor gamer Full HD 144Hz', 899.90, 12, 3),
('Monitor Samsung 27', 'Monitor Full HD de 27 polegadas', 1099.90, 8, 3),
('Monitor AOC 24', 'Monitor Full HD para uso geral', 799.90, 14, 3),

('Smartphone Samsung Galaxy A55', 'Smartphone Samsung com 128GB', 1899.90, 18, 4),
('Smartphone Motorola Edge 50', 'Smartphone Motorola com 256GB', 2299.90, 10, 4),
('iPhone 15', 'Smartphone Apple com 128GB', 4499.90, 7, 4),

('Headset HyperX Cloud II', 'Headset gamer com microfone', 399.90, 15, 5),
('Fone JBL Tune 520BT', 'Fone Bluetooth JBL', 249.90, 22, 5),
('Caixa de Som JBL Go 3', 'Caixa de som portátil Bluetooth', 299.90, 16, 5),

('Cabo HDMI 2.1', 'Cabo HDMI de alta velocidade', 79.90, 60, 6),
('Suporte para Notebook', 'Suporte ajustável para notebook', 129.90, 35, 6),
('Hub USB 3.0', 'Hub USB com múltiplas portas', 89.90, 45, 6);