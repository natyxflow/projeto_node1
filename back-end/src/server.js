import express from 'express';
import cors from 'cors';
import mysql from 'mysql';

const server = express();

server.use(express.json());
server.use(cors());

const connection = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "",
    database: "fullstackeletro"
});

server.get('/produtos', (req,res) => {
    
    connection.query("SELECT * FROM produtos", (error, result) => {
        if(error) {
            res.send(error)
        } else {
            res.send(result)
        }
    })
});

server.post("/pedidos", (req,res) => {
    const {nome, endereco, fone, produto, valor_unit, qtd, preco_final} = req.body;
    connection.query(`INSERT INTO pedidos(nome, endereco, fone, produto, valor_unit, qtd, preco_final) values ('${nome}', '${endereco}', '${fone}', '${produto}', '${valor_unit}', '${qtd}', '${preco_final}')`, (error,result) => {
        if(error) {
            res.send("Erro ao enviar o seu pedido!")
        } else {
            res.send("Seu pedido foi enviado com sucesso!")
        }
    });

})

server.listen(3333);