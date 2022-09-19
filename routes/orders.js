const express = require('express');
const db = require('../database/db_connection');
const router = express.Router();

router.get('/', (req, res) => {
    db.query("SELECT * FROM orders", (error, result) => {
        if (error) {
            res.status(500).send("error");
            throw error;
        }
        return res.status(200).send(result);
    });
});

router.get('/:restrant_name', (req, res) => {
    db.query("SELECT * FROM orders where restrant_name=?", req.params.restrant_name, (error, result) => {
        if (error) {
            res.status(500).send("error");
            throw error;
        }
        return res.status(200).send(result);
    });
});

router.get('/user/:user_name', (req, res) => {
    db.query("SELECT * FROM orders where user_name=?", req.params.user_name, (error, result) => {
        if (error) {
            res.status(500).send("error");
            throw error;
        }
        return res.status(200).send(result);
    });
});

router.post('/add_order', (req, res) => {
    var data = {
        "user_name": req.body.user_name,
        "user_phone": req.body.user_phone,
        "food_name": req.body.food_name,
        "restrant_name": req.body.restrant_name,
        "food_amount": req.body.food_amount,
        "user_location": req.body.user_location,
        "note": req.body.note,
        "meal_price": req.body.meal_price
    }
    db.query("INSERT INTO orders SET ?", data, (error, result) => {
        if (error) {
            res.status(500).send("error");
            throw error;
        }
        return res.status(200).send("success");
    });
});

module.exports = router