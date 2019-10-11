USE codeup_test_db;


SELECT name AS 'albums by Pink Floys' FROM albums WHERE artist = 'Pink Floyd';

SELECT release_date AS 'The year Sgt. Pepper''s Lonely Hearts Club Band was released' FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT genre AS 'The genre for Nevermind
' FROM albums WHERE name = 'Nevermind';

SELECT release_year, name AS 'Albums in the 90''s' FROM albums WHERE release_date > 1989 AND release_date < 2000;

SELECT name AS 'Less than 20 million certified sales' FROM albums WHERE sales <= 20;

SELECT name AS 'Rock Genre' FROM albums WHERE genre = 'rock';






