DROP TRIGGER IF EXISTS tr_salva_dados;

DELIMITER $$
CREATE TRIGGER tr_salva_dados
AFTER DELETE ON Entregas
FOR EACH ROW
BEGIN
	INSERT INTO Log_exclusoes(idEntrega, mensagem, quemFezAcao, dataAcao)
    VALUES (
		OLD.idEntrega, CONCAT('Entrega excluída. Descrição antiga: ', OLD.descricao),
		USER(), NOW()
    );
END $$
DELIMITER ;

SELECT * FROM Log_exclusoes;