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
    goals TEXT
);

CREATE TABLE referees (
    id SERIAL PRIMARY KEY,
    name TEXT
);
CREATE TABLE matches (
    id SERIAL PRIMARY KEY,
    team_1 TEXT
    team_2 TEXT
    referee TEXT
    date TEXT
);
CREATE TABLE dates (
    id SERIAL PRIMARY KEY,
    start_date TEXT
    end_date TEXT
);

INSERT INTO teams
    (name, city, wins)
VALUES
    ('Tacos', 'Marshall', 3),
    ('Vikings', 'Minneota', 2),
    ('Big Birds', 'Sesame Street', 4),
    ('Broncos', 'Denver', 0),
    ('Lions', 'Duluth', 1)
    ('Dumpster Crows', 'Homer', 1),
    ('Modest Mice', 'Madison', 0),
    ('Narwahls', 'Colorado Springs', 4);

INSERT INTO players
    (name, team, goals)
    ('Dan Bicknell', 'Tacos', 3),
    ('Randy Johnson', 'Vikings', 6),
    ('Ron Weasley', 'Big Birds', 4),
    ('Russel Wilson', 'Broncos', 1),
    ('Barry Sanders', 'Lions', 5)
    ('Jerry Saprano', 'Dumpster Crows', 1),
    ('Ben Malfoy', 'Modest Mice', 3),
    ('Lawerence Falco', 'Narwahls', 4);

INSERT INTO referees
    (name)
    ('Fred Durst'),
    ('Wes Borland'),
    ('Method Man'),
    ('Jon Davis');

INSERT INTO matches
    (team_1, team_2, referee, date)
    ('Vikings', 'Tacos', 1, '1/10/22'),
    ('Bkg Birds', 'Vikings', 2, '1/17/22'),
    ('Broncos', 'Big Birds', 3, '1/20/22'),
    ('Lions', 'Broncos', 4, '1/30/22'),
    ('Dumpster Crows', 'Lions',1, '2/5/22')
    ('Modest Mice', 'Dumpster Crows', 2, '2/9/22'),
    ('Narwahls', 'Modest Mice', 3, '2/18/22'),
    ('Tacos', 'Narwahls', 4, '2/25/22');

INSERT INTO dates
    (start_date, end_date)
    ('1/10/22', '2/25/22');