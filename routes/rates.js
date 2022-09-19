const express = require('express');
const db = require('../database/db_connection');
const router = express.Router();

router.get('/', (req, res) => {
    db.query("SELECT * FROM rates", (error, result) => {
        if (error) {
            res.status(500).send("error");
            throw error;
        }
        return res.status(200).send(result);
    });
});

router.get('/:restrant_name', (req, res) => {
    db.query("SELECT * FROM rates where restrant_name=?", req.params.restrant_name, (error, result) => {
        if (error) {
            res.status(500).send("error");
            throw error;
        }
        return res.status(200).send(result);
    });
});


module.exports = router