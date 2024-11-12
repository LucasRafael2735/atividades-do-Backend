USE empresa_lucas;


DELIMITER // 
CREATE FUNCTION CalcularSalarioBruto(
    emp_id  INT
)

RETURNS DECIMAL(10,2)
BEGIN 
   DECLARE CalcularSalarioAnual DECIMAL(10,2);

   SELECT cargos.salario 
   INTO CalcularSalarioAnual
   FROM empregados
   JOIN cargos ON empregados.titulo = cargos.titulo
   WHERE empregados.empregados_id = emp_id AND empregados.empregados_id = cargos.departamento_id


RETURN CalcularSalarioAnual; 
END // 

DELIMITER;
SELECT nome, CalcularSalarioAnual (empregados_id) AS salario_bruto
FROM empregados
WHERE empregados_id = 1;

