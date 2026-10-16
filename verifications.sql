
-- NIVEAU 1

-- Etape 1
-- afficher les plats du plus cher au moins cher
SELECT * FROM plats ORDER BY prix DESC;

-- Etape 2
-- nombre de plats par catégorie
SELECT ctg.nom , count(*) AS nombre_plats 
FROM plats AS pl JOIN categories AS ctg ON pl.id_categorie = ctg.id_categorie   
GROUP BY ctg.nom;
-- categorie sans plats
SELECT ctg.nom FROM categories AS ctg 
LEFT JOIN plats AS pl ON pl.id_categorie = ctg.id_categorie
WHERE pl.id_plat IS NULL;

-- Etape 3
-- montant total de chaque commande
SELECT c.* , SUM(pl.prix * dc.quantite) AS montant_total
FROM commandes AS c JOIN details_commandes AS dc ON c.id_commande = dc.id_commande
JOIN plats AS pl ON dc.id_plat = pl.id_plat
GROUP BY c.id_commande;

-- Etape 4
-- liste des commandes avec le nom du client et afficher t « client de passage » s'il n'y en a pas
SELECT cmd.id_commande, COALESCE(cl.nom, 'client de passage') AS client
FROM commandes AS cmd
LEFT JOIN clients AS cl ON cmd.id_client = cl.id_client;