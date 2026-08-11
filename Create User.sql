CREATE USER 'ti_suporte@localhost' IDENTIFIED BY 'admin'; 

GRANT SELECT ON xpto_express.Motoristas TO 'ti_suporte@localhost'; 
GRANT SELECT ON xpto_express.Veiculos TO 'ti_suporte@localhost'; 
GRANT SELECT ON xpto_express.Entregas TO 'ti_suporte@localhost'; 
GRANT SELECT ON xpto_express.Log_exclusoes TO 'ti_suporte@localhost'; 

GRANT INSERT ON Log_exclusoes TO 'ti_suporte@localhost'; 
