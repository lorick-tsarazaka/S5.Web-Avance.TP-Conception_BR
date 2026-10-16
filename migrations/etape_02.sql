

CREATE TABLE categories (
    id_categorie serial primary key,
    nom varchar(50)
);

INSERT INTO categories (nom) VALUES 
('Plat Malagasy'),
('Plat Chinoise'),
('Soupe'),
('Dessert et gouter'),
('Boisson');

ALTER TABLE plats ADD id_categorie int REFERENCES categories(id_categorie);

UPDATE plats SET id_categorie = 1 WHERE categorie = 'Plat Malagasy';
UPDATE plats SET id_categorie = 2 WHERE categorie = 'Plat Chinois';
UPDATE plats SET id_categorie = 3 WHERE categorie = 'Soupe';
UPDATE plats SET id_categorie = 4 WHERE categorie = 'Dessert et gouter';
UPDATE plats SET id_categorie = 5 WHERE categorie = 'Boisson';

ALTER TABLE plats DROP COLUMN categorie;

