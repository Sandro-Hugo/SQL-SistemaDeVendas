CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY IDENTITY(1,1),
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    telefone VARCHAR(20),
    data_nascimento DATE,
    cidade VARCHAR(50),
    estado CHAR(2),
    data_cadastro DATE NOT NULL,
    status VARCHAR(20) NOT NULL
);

CREATE TABLE categorias (
    id_categoria INT PRIMARY KEY IDENTITY(1,1),
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(200)
);

CREATE TABLE produtos (
    id_produto INT PRIMARY KEY IDENTITY(1,1),
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(200),
    preco DECIMAL(10,2) NOT NULL,
    estoque INT NOT NULL,
    id_categoria INT NOT NULL,

    FOREIGN KEY (id_categoria)
        REFERENCES categorias(id_categoria)
);

CREATE TABLE pedidos (
    id_pedido INT PRIMARY KEY IDENTITY(1,1),
    id_cliente INT NOT NULL,
    data_pedido DATE NOT NULL,
    status VARCHAR(30) NOT NULL,

    FOREIGN KEY (id_cliente)
        REFERENCES clientes(id_cliente)
);

CREATE TABLE itens_pedido (
    id_item INT PRIMARY KEY IDENTITY(1,1),
    id_pedido INT NOT NULL,
    id_produto INT NOT NULL,
    quantidade INT NOT NULL,
    preco_unitario DECIMAL(10,2) NOT NULL,

    FOREIGN KEY (id_pedido)
        REFERENCES pedidos(id_pedido),

    FOREIGN KEY (id_produto)
        REFERENCES produtos(id_produto)
);