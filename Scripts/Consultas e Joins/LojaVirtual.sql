--CONSULTAS--

SELECT * FROM Cliente;
SELECT Nome, preco FROM Produto;
SELECT Nome, preco FROM Produto WHERE preco > 100;
SELECT Nome, preco FROM Produto ORDER BY preco DESC LIMIT 10;

SELECT Nome FROM Cliente WHERE Nome LIKE 'A%';
SELECT Nome, preco FROM Produto WHERE preco BETWEEN 50 AND 200;

SELECT p.idPedido, c.nome FROM Pedido p INNER JOIN Cliente c ON p.idCliente = c.idCliente;
SELECT p.nome, i.Qtd FROM Produto p LEFT JOIN ItemPedido i ON p.idProduto = i.idProduto;


--JOINS--

SELECT c.nome AS Cliente, p.nome AS Produto, i.Qtd AS Quantidade FROM Cliente c 
INNER JOIN Pedido ped ON c.idCliente = ped.idCliente
INNER JOIN ItemPedido i ON ped.idPedido = i.idPedido
INNER JOIN Produto p ON i.idProduto = p.idProduto;

SELECT c.nome AS Cliente, SUM(i.Qtd) AS TotalProdutos FROM Cliente c
INNER JOIN Pedido ped ON c.idCliente = ped.idCliente
INNER JOIN ItemPedido i ON ped.idPedido = i.idPedido GROUP BY c.nome;

SELECT p.nome AS Produto, SUM(i.Qtd) AS TotalProdutos FROM Produto p
INNER JOIN ItemPedido i ON p.idProduto = i.idProduto GROUP BY p.nome;

SELECT p.nome AS Produto, p.preco AS Preço, i.Qtd AS Quantidade, (p.preco * i.Qtd) AS Subtotal FROM Produto p 
INNER JOIN ItemPedido i ON p.idProduto = i.idProduto;

SELECT c.nome AS Cliente, ped.idPedido AS ID_Pedido, SUM(p.preco * i.Qtd) AS TotalGasto FROM Cliente c
INNER JOIN Pedido ped ON c.idCliente = ped.idCliente
INNER JOIN ItemPedido i ON ped.idPedido = i.idPedido
INNER JOIN Produto p ON i.idProduto = p.idProduto GROUP BY ped.idPedido, c.nome;
