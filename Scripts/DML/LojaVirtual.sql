INSERT INTO Cliente VALUES
	(1, 'Marina', 'marina@gmail.com'),
    (2, 'João', 'joao@gmail.com'),
    (3, 'Marcia', 'marcia@gmail.com'),
    (4, 'Gabriel', 'gabs@gmail.com'),
    (5, 'Jessica', 'jessica@gmail.com'),
    (6, 'Leticia', 'letica@gmail.com'),
    (7, 'Carlos', 'carlos@gmail.com'),
    (8, 'Henrique', 'henrique@gmail.com'),
    (9, 'Fernada', 'fernanda@gmail.com'),
    (10, 'Wesley', 'wesley@gmail.com');
    
INSERT INTO Produto VALUES
	(1, 'Teclado Mecânico RGB', -250.00),
	(2, 'Mouse Gamer Wireless', 180.50),
	(3, 'Monitor 24 Polegadas Full HD', 899.90),
	(4, 'Headset com Microfone', 120.00),
	(5, 'Cadeira de Escritório Ergonômica', 650.00),
	(6, 'Webcam 1080p', 210.00),
	(7, 'Suporte para Notebook', 45.00),
	(8, 'SSD 480GB SATA3', 320.00),
	(9, 'Memória RAM 8GB DDR4', 190.00),
	(10, 'Cabo HDMI 2.0 (2 metros)', 35.00);
    
INSERT INTO Pedido VALUES
	(10, 1, '2026-01-10'),
	(20, 2, '2026-01-12'),
	(30, 3, '2026-01-15'),
	(40, 4, '2026-01-20'),
	(50, 5, '2026-02-01'),
	(60, 6, '2026-02-05'),
	(70, 7, '2026-02-10'),
	(80, 8, '2026-02-15'),
	(90, 9, '2026-03-01'),
	(100, 10, '2026-03-05');
  
INSERT INTO ItemPedido VALUES
	(1, 10, 1, 2), 
	(2, 100, 3, 1),
	(3, 20, 2, 1),
	(4, 30, 5, 1),
	(5, 40, 10, 5),
	(6, 50, 8, 4),
	(7, 60, 6, 2),
	(8, 70, 4, 3),
	(9, 80, 7, 1),
	(10, 90, 9, 2);