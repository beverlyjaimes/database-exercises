USE lister_db;




INSERT INTO users (email, password)
VALUES
    ('darthsmith@gmail.com', 'passds'),
    ('padmesmith@gmail.com', 'passps'),
    ('lukedouglas@gmail.com', 'passld');



INSERT INTO ads (title, content, user_id)
VALUES
    ('Vans Shoes', 'Shoes for sale!', 1),
    ('Honda Civic 09', 'Come fix my car!', 3),
    ('Couch', 'I am moving and need this couch gone(FREE)',2);

INSERT INTO categories (name)
VALUES
    ('For Sale'),
    ('Giveaway'),
    ('Furniture'),
('Help wanted');

INSERT INTO ad_categorie (ad_id, categories_id)
VALUES (1,1),
       (2,4),
       (3,3),
       (3,2);


       SELECT * FROM categories;
        SELECT * FROM users;
        SELECT * FROM ads;
        SELECT * FROM ad_categorie;

#
# SELECT first_name, last_name
# FROM employees
# WHERE emp_no IN (
#
#     select emp_no
#     from dept_manager
#     where to_date > now()
#       AND gender = 'F'
#
# );

# view categ and adds that go with cat

# SELECT pets.pet_name, pets.age, owner_id
# FROM pets
#          JOIN owners ON pets.owner_id = owners.id;

# 1For a given ad, what is the email address of the user that created it?

select ads.title, users.email
FROM ads
JOIN users ON ads.user_id = users.id;

SELECT email
FROM users
WHERE id IN (
        select user_id from ads where id = 1
    );

# For a given ad, what category, or categories, does it belong to?

SELECT name
FROM categories
WHERE id IN (
    select categories_id from ad_categorie where ad_id = 1
    );

# 3 For a given category, show all the ads that are in that category.

SELECT title
FROM ads
WHERE id IN(
    SELECT ad_id from ad_categorie where categories_id = 2
          );

# 4 For a given user, show all the ads they have posted.

SELECT title
FROM ads
WHERE user_id IN (
    SELECT id FROM users where id = 3
    );