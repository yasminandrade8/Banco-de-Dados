--CONSULTAS--

SELECT * FROM Motoristas;

SELECT * FROM Veiculos; 

SELECT * FROM Entregas;

SELECT * FROM vw_painel_operacional;

CREATE VIEW vw_painel_operacional AS
SELECT
	e.idEntrega,
    m.nome AS Nome,
    e.destino AS Destino,
    e.stats AS 'Status da Entrega'
FROM Entregas e
INNER JOIN Motoristas m ON m.idMotorista = e.idMotorista;

--JOINS--

SELECT m.nome, m.cpf, e.destino, e.stats
FROM Motoristas m
INNER JOIN Entregas e ON m.idMotorista = e.idMotorista;

SELECT e.idEntrega, m.nome AS Motorista, v.modelo AS Veiculo, v.placa, e.destino, e.dataRegistro
FROM Entregas e
INNER JOIN Motoristas m ON e.idMotorista = m.idMotorista
INNER JOIN Veiculos v ON e.idVeiculo = v.idVeiculo;

SELECT v.placa, v.tipo, e.idEntrega, e.destino
FROM Veiculos v
LEFT JOIN Entregas e ON v.idVeiculo = e.idVeiculo;

SELECT m.nome, COUNT(e.idEntrega) AS Total_Entregas, SUM(e.preco) AS Valor_Total_Frete
FROM Motoristas m
JOIN Entregas e ON m.idMotorista = e.idMotorista
WHERE e.stats = 'Concluída'
GROUP BY m.nome;

SELECT l.idEntrega, l.mensagem, l.dataAcao, l.quemFezAcao, e.destino
FROM Log_exclusoes l
LEFT JOIN Entregas e ON l.idEntrega = e.idEntrega
ORDER BY l.dataAcao DESC;
