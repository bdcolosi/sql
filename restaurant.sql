CREATE table restaurant (
    id serial PRIMARY KEY,
    name text,
    address text, 
    category text
);

CREATE table reviewer (
    id serial PRIMARY KEY,
    name text,
    email text,
    karma numeric CHECK(karma <= 7 and karma >= 0)
);

CREATE table review (
    id serial PRIMARY KEY,
    reviewerid INTEGER REFERENCES reviewer(id), 
    stars numeric CHECK(stars <= 5 and  stars >= 0),
    title text,
    review text,
   restaurantid  INTEGER REFERENCES restaurant(id)
);

INSERT INTO restaurant (name,address,category)
VALUES ('Trident Booksellers & Cafe', '333 Newbury Street, Boston, MA 02116', 'Breakfast & Brunch'), ('Chilacates', '224 Armory Street, Jamaica Plain, MA 02130', 'Mexican'),
('Trackside', '313 E College Ave, Decatur, GA 30032','Dive Bar'),
('Wagaya','1579 N Decatur Rd, Atlanta, GA 30307','Japanese');

INSERT INTO reviewer (name,email,karma)
VALUES ('Brooklyn West', 'bdcolosi27@gmail.com', 3 ), ('Spongebob', 'sbob@gmail.com', 5), ('Yusuke Urameshi', 'spiritgun1@yahoo.com', 7), 
('Davidson Weston', 'davidsonw91@gmail.com', 6), ('Shadow Colosi-Weston', 'shadowwoah@gamil.com', 1), ('Onyx Colosi-Weston', 'bigbub@yahoo.com', 2);

INSERT INTO review (reviewerid,stars,title,review,restaurantid)
VALUES (1, 3, 'Great bookstore, Bad Food', 'a sancturary for beta male sadbois from berklee. food is bad sorry bois!', 1), 
(2,5, 'Great Authentic Mexican', 'Great food, but sometimes the service is slow', 2), 
(3,2, 'New Menus is Lackluster', 'One of my favorite bars to go play pool. They recently changed their menu and it is NOT good.', 3), 
( 6,4, 'Great Japanese!', 'I loved the ramen here!!!!!!',4);
