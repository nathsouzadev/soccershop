const express = require('express'),
    cors = require('cors'),
    server = express();

server.use(express.json());
server.use(cors());
const port = 5000;

server.listen(port, () => {
    console.log(`http://localhost:${port}/`)
})

module.exports = server
