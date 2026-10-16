

CREATE TABLE serveurs (
    id_serveur serial primary key,
    nom varchar(50)
);

CREATE TABLE tables (
    id_table serial primary key,
    numero_table VARCHAR(50)
);

ALTER TABLE commandes ADD id_serveur int REFERENCES serveurs(id_serveur);
ALTER TABLE commandes ADD id_table int REFERENCES tables(id_table);

INSERT INTO serveurs (nom) VALUES
('Njaka Rakoto'),
('Lalao Rasoa');

INSERT INTO tables (numero_table) VALUES
('T001'),
('T002'),
('T003'),
('T004'),
('T005'),
('T006'),
('T007'),
('T008');

INSERT INTO commandes (id_commande, id_client, id_serveur, id_table, date_commande) VALUES 
(7, 1, 1, 1, '2026-09-11'),
(8, 2, 2, 2, '2026-10-17'),
(9, 3, 1, 3, '2026-10-22');

INSERT INTO details_commandes (id_commande, id_plat, quantite) VALUES 
(7, 1, 2),
(7, 2, 1),
(8, 3, 3),
(9, 4, 1),
(9, 5, 2);


