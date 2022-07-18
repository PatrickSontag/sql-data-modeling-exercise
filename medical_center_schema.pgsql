DROP DATABASE IF EXISTS medical_center;

CREATE DATABASE medical_center;

\c medical_center;

CREATE TABLE doctors (
    id SERIAL PRIMARY KEY,
    name TEXT
);

CREATE TABLE patients (
    id SERIAL PRIMARY KEY,
    name TEXT
);

CREATE TABLE diseases (
    id SERIAL PRIMARY KEY,
    name TEXT,
    severity TEXT
);

CREATE TABLE doctors_patients(
    id SERIAL PRIMARY KEY,
    doctor_id INTEGER,
    patient_id INTEGER
);
CREATE TABLE patients_diseases(
    id SERIAL PRIMARY KEY,
    patient_id INTEGER,
    disease TEXT
);

INSERT INTO doctors 
    (name)
VALUES
    ('Dr. John Jones'),
    ('Dr. Maranda Montag'),
    ('Dr. Denise Dawson'),
    ('Dr. Randy Rich');

INSERT INTO patients
    (name)
VALUES
    ('Larry Bramer'),
    ('Dan Lopez'),
    ('Mary Johnson'),
    ('Arlene Mills');

INSERT INTO diseases
    (name, severity)
VALUES
    ('Chickenpox', Mid),
    ('Influenza', Low),
    ('Measles', Mid),
    ('Pneumonia', High);

INSERT INTO doctors_patients
    (doctor_id, patient_id)
VALUES
    (1, 1),
    (2, 1),
    (2, 2),
    (3, 1),
    (3, 4),
    (4, 2),
    (4, 3),
    (4, 1);

INSERT INTO patients_diseases
    (patient_id, disease)
VALUES
    (1, 'Pneumonia'),
    (1, 'Chickenpox'),
    (2, 'Measles'),
    (3, 'Chinkenpox'),
    (3, 'Influenza'),
    (4, 'Measles'),
    (4, 'Influenza');



