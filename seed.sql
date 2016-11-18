-- ALBUMS
INSERT INTO albums (name, artist, num_songs, genre)
VALUES ('Bring Yr Camera', 'The President', 9, 'Jazz');

INSERT INTO albums (name, artist, num_songs, genre)
VALUES ('ZABA', 'Glass Animals', 11, 'Indie Pop');

INSERT INTO albums (name, artist, num_songs, genre)
VALUES ('My Beautiful Dark Twisted Fantasy', 'Kanye West', 13, 'Hip Hop');

INSERT INTO albums (name, artist, num_songs, genre)
VALUES ('Man-Eater', 'El Tigre', 7, 'Rock');

INSERT INTO albums (name, artist, num_songs, genre)
VALUES ('Glory', 'Good Morning', 6, 'Experimental');

--USERS
INSERT INTO users (name, age, location)
VALUES ('Gerald', 45, 'Boulder, CO');

INSERT INTO users (name, age, location)
VALUES ('Matt', 67, 'Boulder, CO');

INSERT INTO users (name, age, location)
VALUES ('Jim', 32, 'Seattle, WA');

INSERT INTO users (name, age, location)
VALUES ('Tom', 19, 'New York City, NY');

INSERT INTO users (name, age, location)
VALUES ('Janet', 56, 'Portland, OR');

INSERT INTO users (name, age, location)
VALUES ('Krista', 87, 'Fort Collins, CO');

--REVIEWS
INSERT INTO reviews (album_id, user_id, review, rating, submit_time)
VALUES (1, 1, 'This album saved my life!', 10, CURRENT_TIMESTAMP);

INSERT INTO reviews (album_id, user_id, review, rating, submit_time)
VALUES (2, 1, 'This album also saved my life!', 10, CURRENT_TIMESTAMP);

INSERT INTO reviews (album_id, user_id, review, rating, submit_time)
VALUES (1, 2, 'Worst album I''ve ever heard. Complete trash!', 0, CURRENT_TIMESTAMP);

INSERT INTO reviews (album_id, user_id, review, rating, submit_time)
VALUES (3, 2, 'I don''t think I have ever heard an album quite as bad as this', 0, CURRENT_TIMESTAMP);

INSERT INTO reviews (album_id, user_id, review, rating, submit_time)
VALUES (5, 3, 'This album is aight...', 6, CURRENT_TIMESTAMP);

INSERT INTO reviews (album_id, user_id, review, rating, submit_time)
VALUES (3, 3, 'Kanye is the GOAT', 10, CURRENT_TIMESTAMP);

INSERT INTO reviews (album_id, user_id, review, rating, submit_time)VALUES (3, 4, 'I love this album!', 7, CURRENT_TIMESTAMP);

SELECT * FROM users;
SELECT * FROM albums;
SELECT * FROM reviews;
