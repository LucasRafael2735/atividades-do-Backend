Use empresa_lucas

--Exercício 1: Função para Calcular Salário Anual
--Crie uma função que, dado o ID de um cargo, retorne o salário anual correspondente ao cargo.
DELIMITER //

CREATE FUNCTION CalcularSalarioAnual (
       dep_id INT 

)

RETURNS DECIMAL(10,2)
BEGIN 
   DECLARE salario1 DECIMAL(10,2) 


   SELECT cargos.salario 
   INTO CalcularSalarioAnual
   FROM empregados
   JOIN cargos ON empregados.titulo = cargos.titulo AND empregados.departamento_id = cargos.departamento_id
   WHERE empregados.empregados_id = dep_id 

RETURN CalcularSalarioAnual
END//

DELIMITER;

SELECT  CalcularSalarioAnual (empregados_id) AS salario_anual
FROM empregados
WHERE empregados_id = 1;


DELIMITER; 
--Exercício 2: Função para Contar Empregados por Departamento
--Crie uma função que, dado o ID de um departamento, retorne o número de empregados que trabalham nesse departamento.

DELIMITER //

CREATE FUNCTION    () 

DELIMITER;

--Exercício 3: Função para Obter Nome do Departamento
--Crie uma função que, dado o ID de um departamento, retorne o nome do departamento.





--Exercício 4: Função para Obter Título do Empregado
--Crie uma função que, dado o ID de um empregado, retorne o título do cargo desse empregado.





--Exercício 5: Função para Calcular Salário Total de um Departamento
--Crie uma função que, dado o ID de um departamento, retorne o salário total de todos os empregados desse departamento.