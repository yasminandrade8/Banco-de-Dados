DROP PROCEDURE IF EXISTS sp_registrar_saida;
DROP PROCEDURE IF EXISTS sp_status_entrega;

CALL sp_registrar_saida(
	504, 
	4,                          
    103,                         
    350.00,
    8,
    320.00,                     
    'Entrega de Produtos farmacêuticos', 
    'Santos - SP',
    'Em rota',                   
    'IJK7L89'                    
);

CALL sp_status_entrega('Entregue');
CALL sp_status_entrega('Em trânsito');
CALL sp_status_entrega('Pendente');


DELIMITER $$
CREATE PROCEDURE sp_registrar_saida(
    IN p_idEntrega INT,          
    IN p_idMotorista INT,        
    IN p_idVeiculo INT,          
    IN p_pesoCarga DECIMAL(10,2),
    IN p_qtdEntrega INT,         
    IN p_preco DECIMAL(10,2),    
    IN p_descricao VARCHAR(255),  
    IN p_destino VARCHAR(100),
    IN p_stats VARCHAR(20),
    IN p_placa VARCHAR(10)
)
BEGIN
    DECLARE v_existe_veiculo INT DEFAULT 0;
    
    SELECT COUNT(*) INTO v_existe_veiculo 
    FROM Veiculos 
    WHERE idVeiculo = p_idVeiculo AND placa = p_placa;
    
    -- Se não estiver cadastrado (count = 0), gera o erro amigável
    IF v_existe_veiculo = 0 THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'ERRO: Veículo ou placa não localizados no sistema.';
    ELSE
        -- Se estiver tudo correto, insere na tabela de entregas
        INSERT INTO Entregas(
            idEntrega, idMotorista, idVeiculo, pesoCarga, 
            qtdEntrega, preco, descricao, dataRegistro, destino, stats
        )
        VALUES (
            p_idEntrega, p_idMotorista, p_idVeiculo, p_pesoCarga, 
            p_qtdEntrega, p_preco, p_descricao, CURDATE(), p_destino, p_stats
        );
    END IF;
END $$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE sp_status_entrega(IN p_stats VARCHAR(20))
BEGIN
	SELECT
		idEntrega,
        idMotorista,
        idVeiculo,
        pesoCarga AS Peso,
		qtdEntrega AS Quantidade,
		preco AS Preço,
		descricao AS Descrição,
		dataRegistro 'Data de Registro',
		destino AS Destino,
		stats AS 'Status'
	FROM Entregas
    WHERE stats = p_stats;
END $$
DELIMITER ;