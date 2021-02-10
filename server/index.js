const server = require('./src/config/server'),
    connection = require('./src/config/connection'),
    comments = require('./src/routes/comments.routes');

comments(server)

server.get('/', (req, res) => {
    res.json({message: "Wellcome to API Soccershop"})
})
