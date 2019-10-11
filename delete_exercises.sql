USE ceres_db;

SELECT name, release_year from albums where release_year > 1991;
DELETE from albums where release_year > 1991;
SELECT name, genre from albums where genre = 'Disco';
DELETE from albums where genre = 'Disco';
select name, artist from albums where artist = 'Metallica';
DELETE from albums where artist = 'Metallica';