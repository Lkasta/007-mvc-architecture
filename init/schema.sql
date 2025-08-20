CREATE TABLE IF NOT EXISTS 'pets' (
  id integer PRIMARY KEY AUTOINCREMENT,
  name TEXT NOT NULL,
  type TEXT NOT NULL
)

CREATE TABLE IF NOT EXISTS 'people' (
  id integer PRIMARY KEY AUTOINCREMENT,
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL,
  age INTEGER NOT NULL,
  pet_id INTEGER NOT NULL,
  FOREIGN KEY (pet_id) REFERENCES pets(id)
)

INSERT INTO pets (name, type) VALUES
('Rex', 'Cachorro'),
('Mia', 'Gato'),
('Thor', 'Cachorro'),
('Luna', 'Gato'),
('Bidu', 'Cachorro'),
('Mel', 'Gato'),
('Max', 'Cachorro'),
('Nina', 'Gato'),
('Bob', 'Cachorro'),
('Mingau', 'Gato'),
('Spike', 'Cachorro'),
('Bella', 'Gato'),
('Toby', 'Cachorro'),
('Amora', 'Gato'),
('Fred', 'Cachorro'),
('Simba', 'Gato'),
('Caramelo', 'Cachorro'),
('Jade', 'Gato'),
('Bruce', 'Cachorro'),
('Sushi', 'Gato'),
('Zeus', 'Cachorro'),
('Pandora', 'Gato'),
('Apolo', 'Cachorro'),
('Chloe', 'Gato'),
('Pitico', 'Cachorro');
