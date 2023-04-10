const jwt = require('jsonwebtoken');
var express = require ('express');
var router = express.Router();
var mysql = require ('mysql2');

var Documents = require('../models/documents');
router.get('/', async function(req, res, next){
    const documents = await Documents.findAll();
    res.json(documents);
});

var Users = require('../models/users');
router.get('/', async function(req, res, next){
    const users = await Users.findAll();
    res.json(users);
});

module.exports = router;