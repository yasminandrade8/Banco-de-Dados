--CONSULTAS--

--Lista todos os produtos do mais caro para o mais barato.--
SELECT nomeProduto, preco 
FROM Produtos 
ORDER BY preco DESC;

--Busca todos os clientes que moram em cidades que começam com a letra "S".--
SELECT nomeCliente, cidade 
FROM Cliente 
WHERE cidade LIKE 'S%';

--Simula uma promoção. Esta consulta retorna o nome do produto, o preço original e uma nova coluna calculando o preço com 15% de desconto.--
SELECT nomeProduto, 
       preco AS preco_original, 
       (preco * 0.85) AS preco_com_desconto 
FROM Produtos;

--Calcula qual é o ticket médio (a média de valor) de todos os pedidos registrados na tabela de pedidos.--
SELECT AVG(valor) AS media_valor_pedidos 
FROM Pedidos;

--Descobre o nome do cliente que fez o pedido mais caro.--
SELECT nomeCliente 
FROM Cliente 
WHERE idCliente = (
    SELECT idCliente 
    FROM Pedidos 
    WHERE valor = (SELECT MAX(valor) FROM Pedidos)
);



--JOINS--

--Liga a tabela de clientes a tabela de pedidos.--
SELECT c.nomeCliente, p.idPedido, p.valor
FROM Cliente c
INNER JOIN Pedidos p ON c.idCliente = p.idCliente;

--Conecta as 3 tabelas (Cliente, Pedidos e Produtos) para mostrar exatamente quem comprou o que, cruzando todas as chaves estrangeiras.--
SELECT c.nomeCliente, pr.nomeProduto, p.valor
FROM Pedidos p
INNER JOIN Cliente c ON p.idCliente = c.idCliente
INNER JOIN Produtos pr ON p.idProduto = pr.idProduto;

--Usa o JOIN das 3 tabelas, mas adiciona um WHERE para filtrar apenas os pedidos com valor mais alto.--
SELECT c.nomeCliente, c.cidade, pr.nomeProduto, p.valor
FROM Pedidos p
JOIN Cliente c ON p.idCliente = c.idCliente
JOIN Produtos pr ON p.idProduto = pr.idProduto
WHERE p.valor > 50.00;

--O LEFT JOIN garante que todos os clientes aparecam no resultado, mesmo que nao tenham feito nenhum pedido.--
SELECT c.nomeCliente, p.idPedido, p.valor
FROM Cliente c
LEFT JOIN Pedidos p ON c.idCliente = p.idCliente;

--Usa o JOIN combinado com GROUP BY e a funcao SUM() para calcular o total que cada cliente ja gastou na loja.--
SELECT c.nomeCliente, SUM(p.valor) AS total_gasto
FROM Cliente c
JOIN Pedidos p ON c.idCliente = p.idCliente
GROUP BY c.nomeCliente;
