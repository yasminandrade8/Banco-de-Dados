CREATE DATABASE ClientesDados;

DROP TABLE IF EXISTS Cliente;
DROP TABLE IF EXISTS Produtos;
DROP TABLE IF EXISTS Pedidos;

USE ClientesDados;

CREATE TABLE Cliente (
	idCliente INT PRIMARY KEY,
    nomeCliente VARCHAR(100) NOT NULL,
    cidade VARCHAR(100) NOT NULL
);

CREATE TABLE Produtos (
	idProduto INT PRIMARY KEY,
    nomeProduto VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) CHECK(preco > 0)
);

CREATE TABLE Pedidos (
	idPedido INT PRIMARY KEY,
    idCliente INT,
    idProduto INT,
    valor DECIMAL(10,2) CHECK(valor > 0),
		FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente),
        FOREIGN KEY (idProduto) REFERENCES Produtos(idProduto)
);
    
