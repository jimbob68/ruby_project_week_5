DROP TABLE animals;
DROP TABLE vets;

CREATE TABLE animals (
  animal_id SERIAL,
  animal_name VARCHAR(255),
  date_of_birth INT,
  animal_breed VARCHAR(255),
  owner_contact_no VARCHAR(255),
  treatment_notes VARCHAR(255)
);

CREATE TABLE vets (
  vet_id SERIAL
  vet_name VARCHAR(255),
  practice_no INT
);
