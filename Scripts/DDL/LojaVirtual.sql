CREATE DATABASE LojaVirtual;
USE LojaVirtual;

DROP TABLE IF EXISTS ItemPedido;

CREATE TABLE Cliente (
	idCliente INT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE
);

CREATE TABLE Produto (
	idProduto INT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Preco DECIMAL(10,2) CHECK (preco > 0)
);

CREATE TABLE Pedido (
	idPedido INT PRIMARY KEY,
    idCliente INT,
    DataPedido DATE,
		FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente)
);

CREATE TABLE ItemPedido (
	idItem INT PRIMARY KEY,
	idPedido INT NOT NULL,
    idProduto INT NOT NULL,
    Qtd INT CHECK (qtd > 0)
);
    
