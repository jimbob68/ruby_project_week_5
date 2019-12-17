DROP TABLE animals;
DROP TABLE vets;



CREATE TABLE vets (
  id SERIAL PRIMARY KEY,
  vet_name VARCHAR(255),
  practice_no VARCHAR(255)
);
CREATE TABLE animals (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  dob VARCHAR(255),
  type VARCHAR(255),
  owner_contact_no VARCHAR(255),
  vet_id INT REFERENCES vets(id) ON DELETE CASCADE
);
