

CREATE TABLE carte (
    id_carte serial primary key,
    plat varchar(50), 
    categorie varchar(50), 
    prix int
);

INSERT INTO carte (plat , categorie , prix) VALUES 
('Romazava' , 'Plat Malagasy' , 7000),
('Ravitoto sy henakisoa' , 'Plat Malagasy' , 8000),
('Akoho sy voanio' , 'Plat Malagasy' , 8500),
('Mi sao' , 'Plat Chinois' , 6000),
('Soupe chinoise' , 'Soupe' , 5000),
('Mofo gasy' , 'Dessert et gouter' , 1000),
('Ranon''ampango' , 'Boisson' , 500);

-- afficher les plats du plus cher au moins cher
SELECT * FROM carte ORDER BY prix DESC;

