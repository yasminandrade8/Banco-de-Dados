USE xpto_express;

SELECT * FROM Entregas;
SELECT * FROM Veiculos;
SELECT * FROM Motoristas;

SELECT * FROM Log_exclusoes;

INSERT INTO Motoristas (idMotorista, nome, cpf, idade) VALUES
	(11, 'yasmin', '222.111.333-54', 19);
    
INSERT INTO Log_exclusoes (id, idEntrega, mensagem, quemFezAcao, dataAcao) VALUES
	(11, 512, 'Entrega excluída. Descrição antiga: Alimentos não perecíveis', 'ti_suporte@localhost', '2026-05-21 14:37:50');