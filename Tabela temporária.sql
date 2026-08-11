CREATE TEMPORARY TABLE tmp_fechamento_dia (
	idEntrega INT,
    descricao VARCHAR(255),
    stats VARCHAR(50),
    precoAtual DECIMAL(10,2),
    precoComImposto DECIMAL(10,2)
);

INSERT INTO tmp_fechamento_dia(idEntrega, descricao, stats, precoAtual, precoComImposto)
SELECT idEntrega, descricao, stats, preco, preco
FROM Entregas;

UPDATE tmp_fechamento_dia
SET precoComImposto = ROUND(precoAtual * 1.12)
WHERE stats = 'Pendente';

SELECT 
	idEntrega,
    descricao,
    stats,
    precoAtual,
    precoComImposto
FROM tmp_fechamento_dia WHERE stats = 'Pendente';

