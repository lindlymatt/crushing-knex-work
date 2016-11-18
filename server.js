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
    // console.log(data);
    res.send(data);
    knex.destroy();
    // process.exit(1);
  })
  .catch(err => {
    console.log(err);
    process.exit(1);
  });
});

app.listen('8000', () => {
  console.log('Listening on port 8000');
});
