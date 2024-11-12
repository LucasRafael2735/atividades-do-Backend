USE empresa_lucas;


SELECT departamentos.nome, AVG(cargos.salario) 
FROM empregados
JOIN cargos ON empregados.departamento_id = cargos.departamento_id
JOIN departamentos ON empregados.departamento_id = departamentos.departamento_id
GROUP BY departamento.nome
HAVING AVG(cargos.salario) > 5000.00;

CREATE PROCEDURE AumentarSalario(
    IN dep_id INT
    IN percentual DECIMAL(5,2)
)
BEGIN
UPDATE cargos
SET salario = salario + (salario*(percentual / 100)) 
WHERE departamento_id = dep_id;
END 



--DEMILITER

CALL aumentarSalario(1,10) 


--pra ver o precesso

SHOW CREATE PROCEDURE AumentarSalario
