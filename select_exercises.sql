USE codeup_test_db;

SELECT name FROM albums WHERE artist = 'Pink Floyd';

SELECT release_date FROM albums WHERE artist = 'Sgt. Pepper''s' AND name = 'Lonely Hearts Club Band';

SELECT genre FROM albums WHERE name = 'Nevermind';

SELECT * FROM albums WHERE release_date > 1989 AND release_date < 2000;

SELECT * FROM albums WHERE sales <= 20;

SELECT * FROM albums WHERE genre = 'rock';






