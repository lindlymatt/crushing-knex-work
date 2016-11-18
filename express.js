'use strict';

const env = 'development';
const config = require('./knex.js')[env];
const knex = require('knex')(config);

const express = require('express');
const app = express();

app.get('/api/users', (req, res, next) => {

});
