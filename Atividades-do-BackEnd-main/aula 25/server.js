const express = require('express');
const mysql = require('mysql2');
const bodyParser = require('body-parser');

const app = express();
app.use(bodyParser.json());

// Configuração da conexão com o banco de dados
const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '', // Senha padrão do XAMPP é vazia
  database: 'banco_lucas'
});

// Conectar ao banco de dados
connection.connect(error => {
  if (error) {
    console.error('Erro ao conectar ao banco de dados: ' + error.stack);
    return;
  }
  console.log('Conectado ao banco de dados com ID ' + connection.threadId);
});

// Endpoint para adicionar um usuário (POST)
/*
app.post('/usuarios', (req, res) => {
  const { nome, email, senha } = req.body;
  const sql = 'INSERT INTO usuarios (nome, email, senha) VALUES (?, ?, ?)';
  connection.query(sql, [nome, email, senha], (error, results) => {
    if (error) {
      res.status(500).send('Erro ao adicionar usuário.');
      return;
    }
    res.status(201).send('Usuário adicionado com sucesso.');
  });
});
*/

// Endpoint para obter todos os usuários (GET)
app.get('/usuarios', (req, res) => {
  connection.query('SELECT * FROM usuarios', (error, results) => {
    if (error) {
      res.status(500).send('Erro ao obter usuários.');
      return;
    }
    res.json(results);
  });
});

// Endpoint para obter um usuário por ID (GET)
app.get('/usuarios/:id', (req, res) => {
  const { id } = req.params;
  connection.query('SELECT * FROM usuarios WHERE id = ?', [id], (error, results) => {
    if (error) {
      res.status(500).send('Erro ao obter usuário.');
      return;
    }
    res.json(results[0]);
  });
});

// Endpoint para atualizar um usuário (PUT)
app.put('/usuarios/:id', (req, res) => {
  const { id } = req.params;
  const { nome, email, senha } = req.body;
  const sql = 'UPDATE usuarios SET nome = ?, email = ?, senha = ? WHERE id = ?';
  connection.query(sql, [nome, email, senha, id], (error, results) => {
    if (error) {
      res.status(500).send('Erro ao atualizar usuário.');
      return;
    }
    res.send('Usuário atualizado com sucesso.');
  });
});

// Endpoint para deletar um usuário (DELETE)
app.delete('/usuarios/:id', (req, res) => {
  const { id } = req.params;
  connection.query('DELETE FROM usuarios WHERE id = ?', [id], (error, results) => {
    if (error) {
      res.status(500).send('Erro ao deletar usuário.');
      return;
    }
    res.send('Usuário deletado com sucesso.');
  });
});

// Iniciar o servidor
const PORT = 3000;
app.listen(PORT, () => {
  console.log(`Servidor rodando na porta ${PORT}`);
});

//função de callback para inserção de usuário

function adicionarUsurioCallback (error,results,res) {
    if (error ) {
        res.status(500),send('Erro aoadicionar usuário. ');
        return;
    }

    res.status(201).send('Usuário adcionado com sucesso. ');
}
//função para a rota POST

function adicionarUsuario(req,res) {
const{nome,email,senha } = req.body;
const sql = 'INSERT INTO usuarios (nome,email,senha) VALUES (?,?,?)';
connection.query(sql,[nome,email,senha], function(error,results)) {
    adicionarUsurioCallback(error,results,res);
}
}

//rota para add um usuario
app postMessage('/usuarios', adicionarUsuario);