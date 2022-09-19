const express = require('express');
const db = require('../database/db_connection');
const router = express.Router();

router.get('/', (req, res) => {
    db.query("SELECT * FROM food_info", (error, result) => {
        if (error) {
            res.status(500).send("error");
            throw error;
        }
        return res.status(200).send(result);
    });
});

router.get('/:restran_name', (req, res) => {
    db.query("SELECT * FROM food_info where restrant_name=?", req.params.restran_name, (error, result) => {
        if (error) {
            res.status(500).send("error");
            throw error;
        }
        return res.status(200).send(result);
    });
});

module.exports = router