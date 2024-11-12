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
   

   