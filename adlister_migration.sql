DROP DATABASE IF EXISTS lister_db;
CREATE DATABASE lister_db;

USE lister_db;

CREATE TABLE users (
    id INT UNSIGNED AUTO_INCREMENT,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(50) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE ads (
    id INT UNSIGNED AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    content TEXT NOT NULL,
    user_id INT UNSIGNED,
    FOREIGN KEY (user_id) REFERENCES users(id),
    PRIMARY KEY (id)
);

CREATE TABLE ad_categorie (
    ad_id INT UNSIGNED,
    categories_id INT UNSIGNED,
    FOREIGN KEY (ad_id) REFERENCES ads(id),
    FOREIGN KEY (categories_id) REFERENCES categories(id)

);

CREATE TABLE categories (
    id INT UNSIGNED AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    PRIMARY KEY(id)
);

show tables;