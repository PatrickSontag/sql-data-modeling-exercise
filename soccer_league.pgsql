DROP DATABASE IF EXISTS soccer_league;

CREATE DATABASE soccer_league;

\c soccer_league;

CREATE TABLE teams (
    id SERIAL PRIMARY KEY,
    name TEXT
    city TEXT
    wins INTEGER
);
CREATE TABLE players (
    id SERIAL PRIMARY KEY,
    name TEXT
    team TEXT
);
CREATE TABLE stats (
    id SERIAL PRIMARY KEY,
    player TEXT
    goals INTEGER
);
CREATE TABLE referees (
    id SERIAL PRIMARY KEY,
    name TEXT
);
CREATE TABLE matches (
    id SERIAL PRIMARY KEY,
    team_1 TEXT
    team_2 TEXT
);
CREATE TABLE dates (
    id SERIAL PRIMARY KEY,
    start_date TEXT
    end_date TEXT
);

INSERT INTO categories
    (name)
VALUES
    ('Travel'),
    ('Sports'),
    ('Food'),
    ('Wine');

INSERT INTO teams
    (name, city, wins, ranking)
VALUES
    ('Tigers', 'Marshall', 3),
    ('Vikings', 'Minneota', 2),
    ('Big Birds', 'Sesame Street', 4),
    ('Broncos', 'Denver', 1),
    ('Lions', 'Duluth', 1)
    ('Dumpster', 'Crows', 'Homer', 1),
    ('Narwahls', 'Colorado Springs', 4);
