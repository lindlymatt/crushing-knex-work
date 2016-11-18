'use strict';

const env = 'development';
const config = require('./js/knex.js')[env];
const knex = require('knex')(config);

const express = require('express');
const app = express();

app.get('/api/albums/:name', (req, res) => {
  let album = req.params.name;

  knex('albums')
  .where('albums.name', album)
  .then(data => {
    res.set('Access-Control-Allow-Origin', '*');
    res.send(data);
  })
  .catch(err => {
    console.log(err);
  });
});

app.listen('8000', () => {
  console.log('Listening on port 8000');
});
