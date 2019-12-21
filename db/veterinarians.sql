DROP TABLE animals;
DROP TABLE vets;
DROP TABLE owners;

CREATE TABLE vets (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  practice_no VARCHAR(255)
);

CREATE TABLE animals (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  dob VARCHAR(255),
  type VARCHAR(255),
  treatment_notes VARCHAR(255),
  vet_id INT REFERENCES vets(id) ON DELETE CASCADE,
  owner_id INT REFERENCES owners(id) ON DELETE CASCADE
);

CREATE TABLE owners (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    address VARCHAR(255),
    contact_no VARCHAR(255),
    number_of_pets INT
);
