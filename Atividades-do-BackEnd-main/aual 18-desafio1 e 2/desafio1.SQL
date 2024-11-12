USE desafio1_lucas;

CREATE TABLE produtos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    categoria VARCHAR(50) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    descricao TEXT,
    marca VARCHAR(50),
    modelo VARCHAR(50),
    cor VARCHAR(20)
);



INSERT INTO produtos (nome, categoria, preco, descricao, marca, modelo, cor)
VALUES
    ('TV 4K', 'Eletrônicos', 2500.00, 'TV 4K de 50 polegadas', 'Samsung', 'UN50TU8000', 'Preto'),
    ('Notebook', 'Informática', 1500.00, 'Notebook com processador Intel Core i5', 'Dell', 'Inspiron 15 5000', 'Prata'),
    ('Smartphone', 'Telefonia', 800.00, 'Smartphone com câmera de 12MP', 'Apple', 'iPhone 12', 'Branco'),
    ('Geladeira', 'Eletrodomésticos', 1200.00, 'Geladeira de 2 portas', 'Brastemp', 'BRM45', 'Branco'),
    ('Fogão', 'Eletrodomésticos', 900.00, 'Fogão de 4 bocas', 'Electrolux', 'FE45', 'Inox'),
    ('Micro-ondas', 'Eletrodomésticos', 300.00, 'Micro-ondas de 20 litros', 'Panasonic', 'NN-ST34HBPR', 'Branco'),
    ('Lavadora', 'Eletrodomésticos', 1000.00, 'Lavadora de 10 kg', 'LG', 'WD-80490N', 'Branco'),
    ('Secadora', 'Eletrodomésticos', 800.00, 'Secadora de 8 kg', 'Samsung', 'DV80M7550US', 'Branco'),
    ('Batedeira', 'Eletrodomésticos', 200.00, 'Batedeira de 5 velocidades', 'KitchenAid', 'KSM150PSWH', 'Branco'),
    ('Aspirador', 'Eletrodomésticos', 400.00, 'Aspirador de pó de 1200W', 'Eureka', ' Mighty Mite 3681GZ', 'Preto');



DELETE FROM produtos WHERE id = 4;
DELETE FROM produtos WHERE id = 7;

ALTER TABLE produtos ADD COLUMN sem_estoque BOOLEAN DEFAULT FALSE; 


UPDATE produtos SET sem_estoque = TRUE WHERE id != 2;


SELECT * FROM produtos ORDER BY id LIMIT 5;