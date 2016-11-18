'use strict';

const env = 'development';
const config = require('./knex.js')[env];
const knex = require('knex')(config);

// Grabs all of the information on all tables.
knex('users', 'reviews', 'albums')
  .then(data => {
    console.log(data);
    // knex.destroy();
  })
  .catch(err => {
    console.log(err);
    knex.destroy();
    process.exit(1);
  });

// Grabs all of the reviews from reviewer ID specified.
const id = 1;
knex('users')
  .innerJoin('reviews', 'users.id', 'reviews.user_id')
  .innerJoin('albums', 'reviews.album_id', 'albums.id')
  .where('users.id', id)
  .then(data => {
    console.log(data);
    // knex.destroy();
  })
  .catch(err => {
    console.log(err);
    knex.destroy();
    process.exit(1);
  });

// Grabs all users in the database.
knex('users')
  .then(data => {
    console.log(data);
    // knex.destroy();
  })
  .catch(err => {
    console.log(err);
    knex.destroy();
    process.exit(1);
  });

// Update the first reviewer.
knex('users')
  .where('id', 1)
  .increment('age', 1)
  .then(data => {
    console.log(data);
    // knex.destroy();
  })
  .catch(err => {
    console.log(err);
    knex.destroy();
    process.exit(1);
  });

  // Delete rows
knex('users')
  .del()
  .where('users.name', 'Matt')
  .then(data => {
    console.log(data);
    knex.destroy();
  })
  .catch(err => {
    console.log(err);
    knex.destroy();
    process.exit(1);
  });
