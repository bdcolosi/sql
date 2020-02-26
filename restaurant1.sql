CREATE TABLE restaurant (
    id SERIAL PRIMARY KEY,
    name text,
    distance int,
    stars int,
    category text,
    popular_dish text,
    takeout text,
    ate_last int
);

INSERT INTO restaurant (name,distance,stars,category,popular_dish,takeout,ate_last)
VALUES ('Trident Booksellers & Cafe', 968, 4.5, 'Cafe', 'Potato Chuckwagon', 'Yes', 2016);

INSERT INTO restaurant(name, distance, stars, category, popular_dish,takeout,ate_last)
VALUES('Chilacates', 800, 5, 'Mexican', 'Burrito Bowl', 'Yes', 2019);

INSERT INTO restaurant(name,distance, stars, category, popular_dish, takeout, ate_last)
VALUES ('Varsity', 10, 5, 'American', 'Chili Dogs', 'Yes', 2020);

INSERT INTO restaurant(name, distance, stars, category, popular_dish, takeout, ate_last)
Values ('Trackside', 11, 2, 'Dive Bar', 'Patty Melt', 'No', 2020), ('Wagaya', 11, 5, 'Japanese', 'Ramen', 'Yes', 2020); 


SELECT stars, popular_dish from restaurant where stars = 5;

SELECT name FROM restaurant where restaurant.name like '%Varsity%';

SELECT name,category FROM restaurant where restaurant.category like '%Cafe%';

SELECT name, takeout from restaurant where restaurant.takeout like '%YES%';