EXPLAIN SELECT stats FROM Entregas;
EXPLAIN ANALYZE SELECT stats FROM Entregas WHERE idEntrega = 501;

DROP INDEX idx_stats ON Entregas;
CREATE INDEX idx_stats ON Entregas(stats);

SHOW INDEX FROM Entregas;
