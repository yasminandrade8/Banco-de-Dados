CREATE DATABASE Empresa;
USE Empresa;

DROP TABLE IF EXISTS Departamento;
DROP TABLE IF EXISTS Empregado;
DROP TABLE IF EXISTS Projeto;
DROP TABLE IF EXISTS EmpregadoProjeto;

CREATE TABLE Departamento (
	IdDepto INT PRIMARY KEY,
    NomeDepto VARCHAR(100)
);

CREATE TABLE Empregado (
	IdEmpregado INT PRIMARY KEY,
    NomeEmpregado VARCHAR(100),
    Salario DECIMAL(10,2),
    IdDepto INT,
		FOREIGN KEY (IdDepto) REFERENCES Departamento(IdDepto)
);

CREATE TABLE Projeto (
	IdProjeto INT PRIMARY KEY,
    NomeProjeto VARCHAR(100),
    Orcamento DECIMAL(10,2)
);

CREATE TABLE EmpregadoProjeto (
	IdEmpregado INT,
    IdProjeto INT,
    HorasTrabalhadas INT,
		FOREIGN KEY (IdEmpregado) REFERENCES Empregado(IdEmpregado),
		FOREIGN KEY (IdProjeto) REFERENCES Projeto(IdProjeto)
);


