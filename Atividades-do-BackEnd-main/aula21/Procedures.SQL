USE empresa_lucas; 

--1

CREATE PROCEDURE DiminuirSalarioDepartamento(IN dep_id INT, IN valor DECIMAL(10,2));
BEGIN
UPDATE empregados
SET salario = salario - valor
WHERE departamento_id = dep_id;
END 

--2

CREATE PROCEDURE AtualizarTituloEmpregado(
   IN emp_id INT,
   IN novo_titulo VARCHAR(50)

)

BEGIN
UPDATE EMPREGADOS 
SET titulo = novo_titulo
WHERE empregados_id = emp_id
--outra forma
CREATE PROCEDURE MudarCargo(
    IN emp_id INT,
    IN novo_titulo VARCHAR(50)
)

BEGIN
 DECLARE titulo_existe INT;

 SELECT COUNT(*)
INTO titulo_existe
FROM cargos
WHERE  titulo = novo_titulo;

IF titulo_existe > 0 THEN 


UPDATE empregados
SET titulo = novo_titulo
WHERE empregados_id = emp_id;
END IF;

END //

--3


DELIMITER //

CREATE PROCEDURE TransferirEmpregado(
    IN emp_id INT,
    IN novo_departamento_id INT
)
BEGIN
    DECLARE dep_existe INT;

    
    SELECT COUNT(*)
    INTO dep_existe
    FROM departamentos
    WHERE departamento_id = novo_departamento_id;

    
    IF dep_existe > 0 THEN
      
        UPDATE empregados
        SET departamento_id = novo_departamento_id
        WHERE departamento_id = emp_id;
    ELSE
        
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'O departamento fornecido não existe';
    END IF;
END //

DELIMITER ;