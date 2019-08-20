CREATE TABLE user (
  user_id INT not null PRIMARY Key,
  first_name VARCHAR (20),
  last_name VARCHAR (20),
  birth_date VARCHAR (20),
  country VARCHAR (30),
  city VARCHAR (56),
  street VARCHAR (50),
  street_number VARCHAR (5),
  postal_code VARCHAR (20),
  mail VARCHAR (20)
);
ALTER TABLE
  user DROP country,
  DROP city,
  DROP street,
  DROP street_number,
  DROP postal_code,
  CREATE TABLE animal (
    animal_id INT not null PRIMARY KEY,
    name VARCHAR (20),
    birth_date DATE
  );
CREATE TABLE permission (
    permission_id INT not null PRIMARY KEY,
    permission_type VARCHAR (20)
  );
CREATE TABLE users_animals (
    relation_id INT not null primary key,
    user_id NUMBER references user,
    animal_id NUMBER references animal,
    permission_id NUMBER references permission
  );
INSERT INTO
  `user`(user_id, first_name, last_name, birth_date, mail)
VALUES
  (
    1,
    'Kuba',
    'Kubowski',
    '1995-12-31',
    'kuba@ku.ba'
  )
INSERT INTO
  `user`(user_id, first_name, last_name, birth_date, mail)
VALUES
  (
    2,
    'Marcin',
    'Marcinowski',
    '1995-02-13',
    'mar@c.in'
  )