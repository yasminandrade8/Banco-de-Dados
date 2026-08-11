CREATE DATABASE xpto_express;
USE xpto_express;
DROP DATABASE xpto_express;

DROP TABLE IF EXISTS Motoristas;
DROP TABLE IF EXISTS Veiculos;
DROP TABLE IF EXISTS Entregas;
DROP TABLE IF EXISTS Log_exclusoes;

CREATE TABLE Motoristas (
	idMotorista INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(50) UNIQUE,
    idade INT NOT NULL    
);

CREATE TABLE Veiculos (
	idVeiculo INT PRIMARY KEY,
    tipo VARCHAR(50) NOT NULL,
    modelo VARCHAR(100) NOT NULL,
    placa VARCHAR(10) UNIQUE NOT NULL
);

CREATE TABLE Entregas (
	idEntrega INT PRIMARY KEY,
    idMotorista INT NOT NULL,
    idVeiculo INT NOT NULL,
    pesoCarga DECIMAL(10,2) CHECK(pesoCarga > 0),
    qtdEntrega INT,
    preco DECIMAL(10,2),
    descricao VARCHAR(255),
    dataRegistro DATE,
    destino VARCHAR(100),
    stats VARCHAR(20),
		FOREIGN KEY (idVeiculo) REFERENCES Veiculos(idVeiculo),
        FOREIGN KEY (idMotorista) REFERENCES Motoristas(idMotorista)
);

CREATE TABLE Log_exclusoes (
	id INT PRIMARY KEY,
    idEntrega INT NOT NULL,
    mensagem VARCHAR(255),
    quemFezAcao VARCHAR(100),
    dataAcao DATETIME
);

