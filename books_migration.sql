USE codeup_test_db;

DROP TABLE IF EXISTS books;
CREATE TABLE books(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    title VARCHAR(250) NOT NULL,
    author_first_name VARCHAR(50),
    author_last_name VARCHAR(100) NOT NULL DEFAULT 'UNKNOWN',
    genre VARCHAR(50),
    description VARCHAR(250),
    release_year int(4),
    PRIMARY KEY (id)
);