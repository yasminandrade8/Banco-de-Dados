INSERT INTO Motoristas (idMotorista, nome, cpf, idade) VALUES
	(1, 'Carlos Silva Ramos', '613.881.332-94', 42),
	(2, 'Ana Souza Pereira', '336.566.273-58', 31),
	(3, 'Marcos Oliveira Costa', '495.215.719-74', 55),
	(4, 'Juliana Lima Nascimento', '109.431.114-16', 26),
	(5, 'Roberto Costa Barbosa', '855.932.617-38', 50),
	(6, 'Fernanda Ribeiro Teixeira', '362.469.754-85', 29),
	(7, 'Ricardo Almeida Gomes', '458.745.215-62', 43),
	(8, 'Camila Santos Alves', '921.412.356-99', 38),
	(9, 'Bruno Carvalho Melo', '159.264.738-41', 27),
	(10, 'Amanda Martins Rodrigues', '753.159.852-64', 49);

INSERT INTO Veiculos (idVeiculo, tipo, modelo, placa) VALUES
	(101, 'Caminhão Baú', 'Mercedes-Benz Accelo', 'ABC1D23'),
	(102, 'Furgão', 'Renault Master', 'EFG4H56'),
	(103, 'Van', 'Chevrolet Spin', 'IJK7L89'),
	(104, 'Carreta', 'Scania R450', 'MNO0P12'),
	(105, 'Furgão', 'Fiat Ducato', 'QRS3T45'),
	(106, 'Caminhão Toco', 'Volkswagen Delivery', 'UVW6X78'),
	(107, 'Van', 'Mercedes-Benz Sprinter', 'YZB9A01'),
	(108, 'Caminhão Baú', 'Volvo VM 270', 'CDE2F34'),
	(109, 'Furgão', 'Peugeot Expert', 'GHI5J67'),
	(110, 'Carreta', 'Volvo FH 540', 'KLM8N90');


INSERT INTO Entregas (idEntrega, idMotorista, idVeiculo, pesoCarga, qtdEntrega, preco, descricao, dataRegistro, destino, stats) VALUES
	(501, 1, 101, 2500.00, 4, 1200.50, 'Eletrodomésticos linha branca', '2026-05-10', 'São Paulo - SP', 'Entregue'),
	(502, 2, 102, 800.50, 12, 450.00, 'Encomendas e-commerce', '2026-05-12', 'Campinas - SP', 'Entregue'),
	(503, 3, 106, 4200.00, 2, 2100.00, 'Materiais de construção civil', '2026-05-15', 'Rio de Janeiro - RJ', 'Em trânsito'),
	(505, 5, 104, 18500.00, 1, 5800.00, 'Carga de grãos (soja)', '2026-05-18', 'Paranaguá - PR', 'Em trânsito'),
	(506, 6, 105, 950.00, 15, 600.00, 'Suprimentos de escritório', '2026-05-19', 'Belo Horizonte - MG', 'Pendente'),
	(507, 7, 108, 3100.00, 5, 1750.80, 'Bobinas de papelão industrial', '2026-05-20', 'Sorocaba - SP', 'Pendente'),
	(508, 8, 107, 600.00, 10, 550.00, 'Roupas e calçados varejo', '2026-05-20', 'Curitiba - PR', 'Pendente'),
	(509, 9, 109, 450.00, 20, 720.00, 'Alimentos não perecíveis', '2026-05-21', 'São Paulo - SP', 'Em trânsito'),
	(510, 10, 110, 22000.00, 1, 7500.00, 'Bobinas de aço laminado', '2026-05-21', 'Vitória - ES', 'Pendente');