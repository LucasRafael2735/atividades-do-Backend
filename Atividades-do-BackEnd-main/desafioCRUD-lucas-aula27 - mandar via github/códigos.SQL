USE catalogo_produtos_lucas;

--criei o data base 
CREATE DATABASE catalogo_produtos_lucas 

--criar a tabela
CREATE TABLE produtos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(225) NOT NULL,
  descricao TEXT,
  preco DECIMAL(10,2) NOT NULL
);

--fizemos os endpoints

--rodamos o node server.js no terminal

-- depois adicionamos os produtos 

 {
    "nome": "Fones de Ouvido Sem Fio",
    "descricao": "Fones de ouvido sem fio com bateria de longa duração e som de alta qualidade",
    "preco": 199.90
  }


  {
    "nome": "Tablet Android",
    "descricao": "Tablet com tela de 10 polegadas e sistema operacional Android",
    "preco": 499.90
  }

  --depois usamos o get

  --depois atualizamos 
  
  {
    "nome": "Fones de Ouvido Sem Fio da Adidas",
    "descricao": "Fones de ouvido sem fio com bateria de longa duração e de ferro super duradouro",
    "preco": 499.99
  }
  
  
  
  
  {
    "nome": "Tablet Android da Nike",
    "descricao": "Tablet com tela de 30 polegadas e exclusivo da Nike e sistema operacional Android",
    "preco": 1099.99
  }

-- e por ultimo deletamnos 
--deletei os dois