

CREATE TABLE IF NOT EXISTS parents(
  id BIGSERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(250) NOT NULL,
  county_name VARCHAR(250),
  town VARCHAR(250),
  longitude REAL,
  latitude REAL,
  house_no VARCHAR(200)
);

CREATE TABLE IF NOT EXISTS parent_address(
  id BIGSERIAL PRIMARY KEY,
  parent_id BIGINT REFERENCES parents(id),
  county_name VARCHAR(250),
  town VARCHAR(250),
  longitude REAL,
  latitude REAL,
  house_no VARCHAR(200)
);


INSERT INTO parents
(name,email)
VALUES
('john doe', 'johndoe@gmail.com'),
('sammy will', 'sammywill@mail.com');



INSERT INTO parent_address
(parent_id, county_name, town, longitude, latitude, house_no)
VALUES
(1, 'Nairobi', 'Embakasi', 42.2, 42.1, '99a'),
(2, 'Nairobi', 'Umoja', 43.1, 42.2, '89b');


