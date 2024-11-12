USE ti3k5791_lucasrafael; 

CREATE TABLE clientes (
 -- coluna / tipo de dados / restrição 
 idClientes INT PRIMARY KEY,
  nome VARCHAR (100),
  telefone VARCHAR (100)


);

CREATE TABLE IF NOT EXISTS clientes (idCLIENTES INT PRIMARY KEY,nome VARCHAR(100),telefone VARCHAR(50))



ALTER TABLE clientes 
ADD email VARCHAR(100);




ALTER TABLE clientes MODIFY email TEXT;




ALTER TABLE clientes 
CHANGE COLUMN email emailClientes VARCHAR(255); 


ALTER TABLE clientes 
DROP COLUMN telefone;



ALTER TABLE Clientes 
RENAME TO clientes; 


-- DROP TABLE clientes 

INSERT INTO clientes (idCliente, nome, email) 
VALUES (1, 'Mario Pinto','mário.pinto@email.com' );
VALUES (2,'Ana silva','ana.silva@email.com');
VALUES (3,'João Oliveira','joão.oliveira@email.com'),
VALUES (4,'Maria Rodrigues','maria.rodrigues@email.com');


-- todo update tem um where

update clientes 
SET email = 'josé.pinto@email.com'
WHERE idCLIENTES = 1; -- condição



DELETE FROM clientes 
WHERE idClientes=  1



SELECT idClientes,nome,email
FROM clientes
SELECT *
 FROM clientes;

 SELECT email
 FROM clientes
 where idClientes = 1;


 SELECT idClientes, nome, email
 FROM clientes 
 ORDER BY nome ASC;


SELECT idClientes, nome, email
 FROM clientes 
 ORDER BY nome DESC;
   
DELETE FROM clientes 
WHERE idClientes = 1;

SELECT idClientes, nome, email
FROM clientes 
LIMIT 3;

ALTER TABLE clientes
DROP COLUMN telefone;



CREATE TABLE pedidos (
  idPedido INT AUTO_INCREMENT PRIMARY KEY,
  idClients INT,
  numeroPedido VARCHAR(50)
  valorTotal DECIMAL(10, 2)
  dataPedido DATE,
  FOREIGN KEY (idClientes) REFERENCES clientes (idClientes) 
)


INSERT INTO pedidos (idClientes, numeroPedido,valorTotal,dataPedido) 
VALUES (1,'PED-001', 150.00, '2024-07-12')
      (2,'PED-002', 250.00, '2024-07-12')
      (3,'PED-003', 180.00, '2024-07-13') 


   SELECT SUM(valorTotal) AS valor_total_pedidos 
   FROM pedidos;   
   

SELECT AVG(valorTotal) AS valor_medio-pedidos 
FROM pedidos 

SELECT clientes.idClientes, clientes.nome, clientes.email,pedidos.numeroPedido
FROM clientes 
INNER JOIN pedidos ON clientes.idClientes = pedidos.idPedido;


SELECT clientes.idClientes, clientes.nome, clientes.email,pedidos.numeroPedido
FROM clientes 
INNER JOIN pedidos ON clientes.idClientes = pedidos.idPedido,
WHERE pedidos.valorTotal > 200;

SELECT COUNT(*)

FROM pedidos


SELECT clientes.nome, COUNT(pedidos.idPedido) AS total_pedido 
FROM clientes 
LEFT JOIN pedidos ON clientes.idClientes = pedidos.idClientes 
GROUP BY clientes.nome;

