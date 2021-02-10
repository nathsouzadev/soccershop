const mongoose = require('mongoose');

function connection() {
    mongoose.connect("mongodb://localhost/soccershop",
        { useNewUrlParser: true, useUnifiedTopology: true })
    .then(() => {
        console.log("MongoDB has connected");
    })
    .catch((error) => {
        console.log(error)
    })
}

module.exports = connection();
