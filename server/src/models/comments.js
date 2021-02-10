const { Schema, model } = require('mongoose')

const CommentSchema = new Schema({
    author: {
        type: String
    },
    message: {
        type: String
    }
})

schemaModel = model('comment', CommentSchema)

module.exports = schemaModel;
