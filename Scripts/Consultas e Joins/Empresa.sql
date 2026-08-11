--CONSULTAS--

--Vê toda a tabela "Departamento".--
SELECT * FROM Departamento;

--Vê toda a tabela "Empregado".--
SELECT * FROM Empregado;

--Vê toda a tabela "Projeto".--
SELECT * FROM Projeto;

--Vê toda a tabela "EmpregadoProjeto".--
SELECT * FROM EmpregadoProjeto;

--Vê toda a tabela "Empregado" ordenada pelo nome de cada empregado por ordem alfabetica.--
SELECT * FROM Empregado ORDER BY NomeEmpregado ASC;

--JOINS--

--Cruza a tabela de empregados com a de departamentos para mostrar o nome de cada funcionário ao lado do nome do departamento em que ele trabalha,--
-- substituindo o código numérico pelo nome real do setor.--
SELECT e.NomeEmpregado, d.NomeDepto, e.Salario
FROM Empregado e
INNER JOIN Departamento d ON e.IdDepto = d.IdDepto;

--Usa a tabela associativa EmpregadoProjeto como ponte para ligar os funcionários aos projetos--
-- em que estão alocados, mostrando também as horas trabalhadas.--
SELECT e.NomeEmpregado, p.NomeProjeto, ep.HorasTrabalhadas
FROM Empregado e
INNER JOIN EmpregadoProjeto ep ON e.IdEmpregado = ep.IdEmpregado
INNER JOIN Projeto p ON ep.IdProjeto = p.IdProjeto;

--Conecta todas as quatro tabelas do seu banco de dados para criar um relatório completo,--
-- mostrando o departamento, o funcionário, o projeto em que ele atua e o orçamento desse projeto.--
SELECT d.NomeDepto, e.NomeEmpregado, p.NomeProjeto, p.Orcamento
FROM Empregado e
JOIN Departamento d ON e.IdDepto = d.IdDepto
JOIN EmpregadoProjeto ep ON e.IdEmpregado = ep.IdEmpregado
JOIN Projeto p ON ep.IdProjeto = p.IdProjeto
ORDER BY d.NomeDepto, e.NomeEmpregado;

--Combina as tabelas necessárias para descobrir apenas os funcionários do departamento de "TI"--
-- e mostrar em quais projetos eles estão trabalhando.--
SELECT e.NomeEmpregado, p.NomeProjeto, ep.HorasTrabalhadas
FROM Empregado e
JOIN Departamento d ON e.IdDepto = d.IdDepto
JOIN EmpregadoProjeto ep ON e.IdEmpregado = ep.IdEmpregado
JOIN Projeto p ON ep.IdProjeto = p.IdProjeto
WHERE d.NomeDepto = 'TI';

--Faz o JOIN das tabelas de Empregados, Departamentos e a tabela associativa de projetos, 
-- para então agrupar os dados (GROUP BY) e calcular o total de horas de trabalho que cada departamento já dedicou.--
SELECT d.NomeDepto, SUM(ep.HorasTrabalhadas) AS Total_Horas_Trabalhadas
FROM Departamento d
JOIN Empregado e ON d.IdDepto = e.IdDepto
JOIN EmpregadoProjeto ep ON e.IdEmpregado = ep.IdEmpregado
GROUP BY d.NomeDepto;
