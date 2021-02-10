module.exports = server => {
    Comments = require('../models/comment');

    server.post('/comment', async (req, res) => {
        const { author, message } = req.body;
        const result = await Comments.create({ author, message });
        res.send(result)
    })

    server.get('/comment', async (req, res) => {
        const result = await Comments.find();
        res.send(result)
    })
}    
