DROP VIEW IF EXISTS vw_painel_operacional;

CREATE VIEW vw_painel_operacional AS
SELECT
	e.idEntrega,
    m.nome AS Nome,
    e.destino AS Destino,
    e.stats AS 'Status da Entrega'
FROM Entregas e
INNER JOIN Motoristas m ON m.idMotorista = e.idMotorista;

SELECT * FROM vw_painel_operacional;
    