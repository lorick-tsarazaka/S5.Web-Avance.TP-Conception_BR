

CREATE TABLE clients (
    id_client serial primary key,
    nom varchar(50) 
);

ALTER TABLE commandes ADD id_client int REFERENCES clients(id_client);

INSERT INTO clients (nom) VALUES
('Oussama Laden'),
('Ben Kader'),
('Ahmed Ben Salah');

INSERT INTO commandes (id_commande , id_client, date_commande) VALUES 
(4, 1, '2026-09-11'),
(5, 2, '2026-10-17'),
(6, 3, '2026-10-22');

INSERT INTO details_commandes (id_commande, id_plat, quantite) VALUES 
(4, 1, 2),
(4, 2, 1),
(5, 3, 3),
(6, 4, 1),
(6, 5, 2);
