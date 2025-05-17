const express = require('express');
const { getURLs, addURL, changeURL, getPrices } = require('./db');
const { startParser } = require('../parsers/index');
const PORT = 5000;
const app = express()

app.use(express.json())
app.listen(PORT, '0.0.0.0', () => console.log(`Server starting on PORT ${PORT}`))

// CORS
app.use((req, res, next) => {
  const origin = req.headers.origin
  // if (origin.startsWith('http://localhost')) {
    res.header('Access-Control-Allow-Origin', origin)
    res.header('Access-Control-Allow-Methods', 'GET, POST, PUT, PATCH, DELETE')
    res.header('Access-Control-Allow-Headers', "Content-Type, Authorization")
  // }
  next()
})

// Обработка URLов
app.get('/urls', (req, res) => {
  getURLs(req.query)
    .then(data => res.json(data))
})

app.post('/urls', async(req, res) => {
  if (await addURL(req.body)) {
    res.json(200)
  }
})

app.patch('/urls', async(req, res) => {
  if (await changeURL(req.body)) {
    res.status(200)
  }
})

// Обработка цен
app.get('/prices', (req, res) => {
  getPrices(req.query)
  .then(data => {
    res.json(data)
  })
})
// Парсинг только одного товара
app.get('/parse', (req, res) => {
  startParser(req.query.id, req.query.url)
  .then(data => {
    res.status(200)
  })
})