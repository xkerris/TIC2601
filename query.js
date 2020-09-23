const express = require('express');

// init mysql
var mysql = require('mysql');
var connection = mysql.createConnection({
    host: 'localhost',
    user: 'user1', // depends on the user you create for your db
    password: 'password1',
    database: 'tic2601'
})

// example function
function getTeamMembers(req, res) {
    // define statement
    var statement = 'SELECT * FROM TeamMember'

    // define the result handler
    function handler(error, results, fields) {
        if (error) res.status(400).end()
        res.send(results)
    }

    // execute the query
    connection.query(statement, handler)
}

module.exports = {
    getTeamMembers
}