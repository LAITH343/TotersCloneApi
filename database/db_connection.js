const mysql = require('mysql');

const db = mysql.createPool({
    host: "localhost",
    user: "root",
    password: "root",
    database: "laith",
    multipleStatements: true
});

module.exports = db;