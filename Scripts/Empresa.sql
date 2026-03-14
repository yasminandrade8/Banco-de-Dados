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

INSERT INTO Departamento VALUES
	(10, 'Administração'),
    (20, 'TI'),
    (30, 'RH'),
    (40, 'Contabilidade'),
    (50, 'Comercial');
    
INSERT INTO Empregado VALUES 
	(1, 'Daniel', 5600, 20),
    (2, 'Yasmin', 5660, 20),
    (3, 'Mariana Vitória', 4300, 10),
    (4, 'Geovana', 3200, 50),
    (5, 'Carlos', 3200, 40),
    (6, 'Bruno', 2100, 30),
    (7, 'Barbara', 4300, 10),
    (8, 'Eduardo', 3200, 40),
    (9, 'Humberto', 3600, 20),
    (10, 'João', 2100, 30),
    (11, 'Silvana', 2500, 30),
    (12, 'Jessica', 4100, 10),
    (13, 'Pedro', 3200, 40),
    (14, 'Marcos', 3500, 50);

INSERT INTO Projeto VALUES 
	(1, 'Implantação de um sistema de gestão (ERP)', 50000),
    (2, 'Digitalização de documentos da empresa', 8000),
    (3, 'Automação do controle financeiro', 15000),
    (4, 'Estratégia para aumento de vendas online', 20000),
    (5, 'Programa de treinamento de funcionários', 12000);
    
INSERT INTO EmpregadoProjeto VALUES
	(1, 1, 120),
    (2, 1, 80),
    (9, 1, 74),
    (3, 2, 40),
    (12, 2, 34),
    (7, 2, 25),
    (5, 3, 60),
    (8, 3, 37),
    (13, 3, 45),
    (4, 4, 30),
    (14, 4, 23),
    (6, 5, 20),
    (10, 5, 15),
    (11, 5, 18);

SELECT * FROM Departamento;
SELECT * FROM Empregado;
SELECT * FROM Projeto;
SELECT * FROM EmpregadoProjeto;

SELECT * FROM Empregado ORDER BY NomeEmpregado ASC;

