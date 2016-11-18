DROP DATABASE IF EXISTS reviewerdb;
CREATE DATABASE reviewerdb;

\c reviewerdb

DROP TABLE IF EXISTS reviews CASCADE;
DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS albums CASCADE;

CREATE TABLE users (
  id serial PRIMARY KEY,
  name text,
  age integer,
  location text
);

CREATE TABLE albums (
  id serial PRIMARY KEY,
  artist text,
  name text,
  num_songs integer,
  genre text
);

CREATE TABLE reviews (
  id serial PRIMARY KEY,
  album_id integer NOT NULL,
  user_id integer NOT NULL,
  review text,
  rating integer,
  submit_time timestamp with time zone,
  FOREIGN KEY (user_id) references users(id) ON DELETE CASCADE,
  FOREIGN KEY (album_id) references albums(id) ON DELETE CASCADE
);
