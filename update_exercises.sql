USE codeup_test_db;

-- SELECT 'These are all the albums';
SELECT * FROM albums;
UPDATE albums SET sales = sales * 10;
SELECT * FROM albums;


-- SELECT 'All albums released before 1980';
SELECT * FROM albums WHERE release_date < 1980;
UPDATE albums SET release_date = release_date - 100 WHERE release_date < 1980;
SELECT * FROM albums WHERE release_date < 1980;


-- SELECT 'All albums by Michael Jackson';
SELECT * FROM albums WHERE artist = 'Michael Jackson';
UPDATE albums SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';
SELECT * FROM albums WHERE artist = 'Michael Jackson';




-- UPDATE table_name
-- SET column1 = 'value1', column2 = 'value2', ...
-- WHERE columnA = 'valueA';








