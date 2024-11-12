USE empresa_lucas;

SELECT departamentos.nome, AVG(cargos.salario) 
FROM empregados
JOIN cargos ON empregados.departamento_id = cargos.departamento_id
JOIN departamentos ON empregados.departamento_id = departamentos.departamento_id
GROUP BY departamento.nome
HAVING AVG(cargos.salario) > 5000.00;

--exercicio 1

SELECT departamento_id, SUM(salario) AS soma_salario
FROM empregados
GROUP BY departamento_id
HAVING SUM(salario) > 12000.00;

--exercico 2 
SELECT titulo, COUNT(*) AS empregados
FROM empregados
GROUP BY titulo
HAVING COUNT(*) > 2;

--exercicio 3



--exercicio 4

SELECT departamento_id, MAX(salario) AS maior_salario 
FROM empregados 
GROUP BY departamento_id 
HAVING MAX(salario) > 6000;

--exercicio 5

SELECT departamento_id, MIN(salario) AS menor_salario
FROM empregados
GROUP BY departamento_id
HAVING MIN(salario) > 2500;