

CREATE TABLE clients (
    id_client serial primary key,
    nom varchar(50) 
);

ALTER TABLE commandes ADD id_client int REFERENCES clients(id_client);

INSERT INTO clients (nom) VALUES
('Oussama Laden'),
('Ben Kader'),
('Ahmed Ben Salah');

INSERT INTO commandes (id_client, date_commande) VALUES 
(1, '2026-09-11'),
(2, '2026-10-17'),
(3, '2026-10-22');

INSERT INTO details_commandes (id_commande, id_plat, quantite) VALUES 
(1, 1, 2),
(1, 2, 1),
(2, 3, 3),
(3, 4, 1),
(3, 5, 2);
