

CREATE TABLE commandes (
    id_commande serial primary key,
    date_commande date
);

CREATE TABLE details_commandes (
    id_detail serial primary key,
    id_commande int REFERENCES commandes(id_commande),
    id_plat int REFERENCES plats(id_plat),
    quantite int
);

INSERT INTO commandes (date_commande) VALUES 
('2026-09-11'),
('2026-10-17'),
('2026-10-22');

INSERT INTO details_commandes (id_commande, id_plat, quantite) VALUES 
(1, 1, 2),
(1, 2, 1),
(2, 3, 3),
(3, 4, 1),
(3, 5, 2);

