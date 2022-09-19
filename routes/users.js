const express = require('express');
const db = require('../database/db_connection');
const router = express.Router();

router.get('/', (req, res) => {
    db.query("SELECT * FROM users_info", (error, result) => {
        if (error) {
            res.status(500).send("error");
            throw error;
        }
        return res.status(200).send(result);
    });
});

router.post("/new_user", (req, res) => {
    var date = new Date();
    var datenow = date.getFullYear() + "-" + ("0" + (date.getMonth() + 1)).slice(-2) + "-" + ("0" + date.getDate()).slice(-2);
    var data = { "full_name": req.body.full_name, "phone_number": req.body.phone_number, "user_location": req.body.user_location, "reg_date": datenow }
    db.query("INSERT INTO users_info SET ?", data, (error, result) => {
        if (error) {
            res.status(500).send("error");
            throw error;
        }
        return res.status(200).send("success");
    })
});

module.exports = router