USE ceres_db;




INSERT INTO owners (name, address)
VALUES
('Darth Smith', '1138 Death Star Rd.'),
('Padme Smith', '1138 Death Star Rd.'),
('Luke Douglas', '18 Tatooine Ln.'),
('Lando Johnson', '777 Bespin Street');

INSERT INTO pets (pet_name, owner_id, age)
VALUES
('Spot', 1, 2),
('Puddle', 1, 2),
('Elrond', 1, 5),
('Mr. Pig', 2, 10),
('Mack', 2, 7),
('Bud', 3, 2),
('Bubbles', 4, 1);



SELECT pets.pet_name, pets.age, owner_id
FROM pets
JOIN owners ON pets.owner_id = owners.id;

SELECT pets.age, owners.address
FROM pets
JOIN owners on pets.owner_id = owners.id;

SELECT owners.address, COUNT(*)
FROM pets
JOIN owners ON pets.owner_id = owners.id
GROUP BY owners.address;


SHOW TABLES;

DESCRIBE owners;

SELECT * FROM owners;

SELECT * FROM pets;