

CREATE TABLE plats (
    id_plat serial primary key,
    nom varchar(50), 
    categorie varchar(50), 
    prix int
);

INSERT INTO plats (nom , categorie , prix) VALUES 
('Romazava' , 'Plat Malagasy' , 7000),
('Ravitoto sy henakisoa' , 'Plat Malagasy' , 8000),
('Akoho sy voanio' , 'Plat Malagasy' , 8500),
('Mi sao' , 'Plat Chinois' , 6000),
('Soupe chinoise' , 'Soupe' , 5000),
('Mofo gasy' , 'Dessert et gouter' , 1000),
('Ranon''ampango' , 'Boisson' , 500);



