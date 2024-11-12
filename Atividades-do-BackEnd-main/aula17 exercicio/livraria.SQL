USE livraria_lucas; 


CREATE TABLE autores (
    idAutor INT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    nacionalidade VARCHAR(50)
);

CREATE TABLE livros (
   idLivros INT PRIMARY KEY, 
   titulo VARCHAR(100) NOT NULL,
   genero VARCHAR(50),
   anoPublicacao INT,
   idAutor INT,
   FOREIGN KEY(idAutor) REFERENCES autores(idAutor)
   );

   CREATE TABLE clientes (
  idClientes INT PRIMARY KEY,
  nome VARCHAR (50) NOT NULL,
  endereco VARCHAR(100),
  telefone VARCHAR (25)
);


CREATE TABLE emprestimos (
   idEmprestimos INT PRIMARY KEY, 
   idLivros INT,
   idClientes INT,
   dataEmprestimo DATE,
     FOREIGN KEY(idLivros) REFERENCES livros (idLivros),
   FOREIGN KEY (idClientes) REFERENCES clientes (idClientes)
   
   ); 

   INSERT INTO autores (nome,nacionalidade)
   VALUES (1,'Rhonda Byrne','Australiana'),
          (2,'T. Harv Eker','Canadense')
          (3,'J.R.R Tolkien','Britânica');


INSERT INTO livros( idLivro,titulo,genero,anoPublicacao,idAutor) 
VALUES (4,'O Segredo','autoajuda', 2006, 1),
(5,'Os Segredos da Mente Milionária','autoajuda',
2005, 2),
(6,'O Senhor dos Anéis', 'Fantasia', 1954, 3);


INSERT INTO clientes( idClientes,nome,endereco,telefone)VALUES
(4,'João Silva', 'Rua dos Livros 123', 1234-5678),
(5,'Maria Oliveira', 'Avenida dos Livros 456', 9876-5432),
(6,'Pedro Martins', 'Rua da Leitura789', 5555-1234);

ALTER TABLE autores ADD COLUMN DataNascimento DATE, ADD COLUMN Biografia TEXT;


ALTER TABLE livros ADD COLUMN editora VARCHAR(50), ADD COLUMN numeroPaginas INT, ADD COLUMN idioma VARCHAR(20);

ALTER TABLE clientes ADD COLUMN email VARCHAR(50), ADD COLUMN dataNascimento DATE;


ALTER TABLE emprestimos ADD COLUMN dataPrevistaDevolucao DATE, ADD COLUMN Status VARCH (20);


UPDATE autores SET dataNascimento = '1951-03-2',
Biografia = 'escritora Australiana' WHERE idAutor = 1;


UPDATE autores SET dataNascimento = '1951-03-2',
Biografia = 'escritor Canadense' WHERE idAutor = 2;


UPDATE autores SET dataNascimento = '1951-03-2',
Biografia = 'escritor Britânico' WHERE idAutor = 3;


UPDATE livros SET editora = 'sextante', numeroPaginas = 216, idioma = 'portugues' WHERE idLivros = 1;
UPDATE livros SET editora = 'sextante', numeroPaginas = 176, idioma = 'Inglês' WHERE idLivros = 2;
UPDATE livros SET editora = 'HarperCollins ', numeroPaginas = 1680, idioma = 'Inglês' WHERE idLivros = 3;


UPDATE clientes SET email = 'joao.silva@example.com', dataNascimento = '1990-02-12' WHERE idClientes = 7;
UPDATE clientes SET email = 'maria.souza@example.com', dataNascimento = '1985-08-25' WHERE idClientes = 8;


UPDATE emprestimos SET dataPrevistaDevolucao = '2023-03-15', Status = 'Emprestado' WHERE idEmprestimos = 23;