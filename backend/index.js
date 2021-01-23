const express = require('express'),
    server = express(),
    cors = require('cors'),
    Connection = require('./config/database')
    
server.use(cors());
server.use(express.json());

require('./routes/comment.routes.js')(server);
require('./routes/product.routes.js')(server);

server.get('/', (req, res) =>{
    res.json({message: "Wellcome to Soccershop API"})
})

server.post('/register', (req, res) =>{
    const { user, password } = req.body;
    const sql = `INSERT INTO users (email, password) VALUES ('${user}', '${password}')`;
    Connection.query(sql, (err, res) =>{
        console.log(err);
    })
})

server.post('/login', (req, res) =>{
    const { user, password } = req.body;
    const sql = `SELECT * FROM users WHERE email = '${user}' AND password = '${password}'`;
    Connection.query(sql, (error, result) => {
        if (error){
            res.send({error: error})
        } else {
            if(result.length > 0){
                res.send(result);
            } else {
                res.send({message: "Wrong user/password combination!"})
            }
        }
    })
})

server.listen(5000, () => {
    console.log("Server on!")
});
