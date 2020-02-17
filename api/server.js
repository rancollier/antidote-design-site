const express = require('express')
const app = express()
const port = process.env.PORT || 3033

app.get('/', (req, res) => res.send(`Antidote ${port}`))
app.get('/api', (req, res) => res.send('Api yes123'))
app.get('/api/a', (req, res) => res.send('Api one'))
app.listen(port, () => console.log(`Example app listening on port ${port}!`))