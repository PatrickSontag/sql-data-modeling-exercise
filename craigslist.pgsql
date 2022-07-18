DROP DATABASE IF EXISTS craigslist;

CREATE DATABASE craigslist;

\c craigslist;

CREATE TABLE regions (
    id SERIAL PRIMARY KEY,
    name TEXT
);

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name TEXT,
    prefered_region TEXT
);

CREATE TABLE posts (
    id SERIAL PRIMARY KEY,
    title TEXT,
    text_body TEXT,
    user_id INTEGER,
    region_id INTEGER
);

CREATE TABLE categories(
    id SERIAL PRIMARY KEY,
    name TEXT
);

CREATE TABLE posts_categories(
    id SERIAL PRIMARY KEY,
    post_id INTEGER,
    category_id INTEGER
);

INSERT INTO regions 
    (name)
VALUES
    ('Minnesota'),
    ('Wisconsin'),
    ('Iowa'),
    ('Colorado');

INSERT INTO users
    (name)
VALUES
    ('LarryB'),
    ('BetoMex'),
    ('ObiWan'),
    ('Arlene');

INSERT INTO categories
    (name)
VALUES
    ('Travel'),
    ('Sports'),
    ('Food'),
    ('Wine');

INSERT INTO posts
    (title, text_body, user_id, region_id)
VALUES
    ('soccer', 'what is soccer again?', 3, 3),
    ('food', 'Tengo un taco', 2, 2),
    ('biking', 'my bike has wheels.  two of them.', 4, 1),
    ('drive', 'wanted to head west, but it is too hot in the west', 4, 4),
    ('mountains', 'Colorado has mountains', 1, 4);

INSERT INTO posts_categories
    (post_id, category_id)
VALUES
    (1, 2),
    (2, 1),
    (2, 3),
    (3, 1),
    (3, 2),
    (4, 1),
    (5, 1),
    (5, 4);

SELECT * FROM users
    JOIN posts
    ON users.id = posts.user_id
    JOIN regions
    ON regions.id = posts.region_id;

-- SELECT * FROM diseases
--     JOIN patients_diseases
--     ON diseases.id = patients_diseases.disease_id
--     JOIN patients
--     ON patients_diseases.patient_id = patients.id;
