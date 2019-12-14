DROP TABLE animals;
DROP TABLE vets;

CREATE TABLE animals (
  id SERIAL,
  name VARCHAR(255),
  dob VARCHAR(255),
  type VARCHAR(255),
  owner_contact_no VARCHAR(255)

);

CREATE TABLE vets (
  id SERIAL,
  vet_name VARCHAR(255),
  practice_no INT
);
