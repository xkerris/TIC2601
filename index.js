// app configuration
const express = require('express')
const cors = require('cors')
const app = express()
const port = 3000
const query = require('./query')
app.use(cors())
app.use('/', express.static('web'))

// GET request to localhost:3000/team/member gets array
app.get('/team/member', query.getTeamMembers)

// start the web server on port 3000
app.listen(port, () => {
    console.log(`Project app listening at localhost:${port}`)
})