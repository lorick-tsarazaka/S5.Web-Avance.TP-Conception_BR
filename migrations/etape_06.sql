

CREATE TABLE type_payements (
    id_type serial primary key,
    libelle varchar(50)
);

CREATE TABLE payement_commandes(
    id_payement serial primary key,
    id_commande int REFERENCES commandes(id_commande),
    id_type int REFERENCES type_payements(id_type),
    montant int
);

INSERT INTO type_payements (libelle) VALUES
('Espece'),
('Mvola'),
('Orange Money'),
('Airtel Money');


INSERT INTO payement_commandes (id_commande, id_type, montant) VALUES 
(1, 1, 20000),
(1, 2, 2000),
(2, 1, 20000);
