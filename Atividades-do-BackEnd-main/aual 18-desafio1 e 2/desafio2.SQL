USE carros_aluguel;

CREATE TABLE carros_aluguel (
    id INT PRIMARY KEY,
    modelo VARCHAR(255),
    marca VARCHAR(255),
    ano INT,
    cor VARCHAR(255),
    preco_aluguel DECIMAL(10, 2)
);

INSERT INTO carros_aluguel (id_carro, modelo, marca, ano, cor, preco_aluguel) VALUES
(1, 'Civic', 'Honda', 2020, 'Prata', 55.00),
(2, 'Corolla', 'Toyota', 2019, 'Branco', 45.00),
(3, 'Fiesta', 'Ford', 2021, 'Vermelho', 60.00),
(4, 'Golf', 'Volkswagen', 2018, 'Preto', 55.00),
(5, 'A3', 'Audi', 2020, 'Cinza', 80.00),
(6, 'Focus', 'Ford', 2019, 'Azul', 40.00),
(7, 'Polo', 'Volkswagen', 2021, 'Branco', 50.00),
(8, 'Yaris', 'Toyota', 2018, 'Prata', 35.00),
(9, 'Fusion', 'Ford', 2020, 'Preto', 70.00),
(10, 'A1', 'Audi', 2019, 'Vermelho', 65.00);

CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY,
    nome VARCHAR(255),
    cpf VARCHAR(14),
    email VARCHAR(255),
    endereco VARCHAR(255)
);

INSERT INTO clientes (id_cliente, nome, cpf, email, endereco) 
VALUES
(1, 'João Silva', '12345678901', 'joao@email.com', 'Rua A, 123'),
(2, 'Maria Souza', '23456789012', 'maria@email.com', 'Rua B, 456'),
(3, 'Pedro Costa', '34567890123', 'pedro@email.com', 'Rua C, 789'),
(4, 'Ana Ferreira', '45678901234', 'ana@email.com', 'Rua D, 111'),
(5, 'Rafael Lima', '56789012345', 'rafael@email.com', 'Rua E, 222');


CREATE TABLE alugueis_carros (
  id_aluguel INT PRIMARY KEY AUTO_INCREMENT,
  id_carro INT NOT NULL,
  id_cliente INT NOT NULL,
  data_inicio DATE NOT NULL,
  data_termino DATE NOT NULL,
  valor_total DECIMAL(10, 2) NOT NULL,
  FOREIGN KEY (id_carro) REFERENCES carros_aluguel(id_carro),
  FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

ALTER TABLE alugueis_carros 
ADD data_fim VARCHAR(100);


INSERT INTO alugueis_carros (id_carro, id_cliente, data_inicio, data_fim, valor_total)
VALUES
    (1, 1, '2022-01-01', '2022-01-03', 450.00),
    (2, 1, '2022-01-04', '2022-01-06', 360.00),
    (3, 1, '2022-01-07', '2022-01-09', 300.00),
    (4, 1, '2022-01-10', '2022-01-12', 240.00),
    (5, 1, '2022-01-13', '2022-01-15', 210.00),
    (6, 1, '2022-01-16', '2022-01-18', 180.00),
    (7, 2, '2022-01-01', '2022-01-03', 420.00),
    (8, 2, '2022-01-04', '2022-01-06', 330.00),
    (9, 2, '2022-01-07', '2022-01-09', 270.00),
    (10, 2, '2022-01-10', '2022-01-12', 210.00),
  



