# Schemas

- plats (**id_carte** , nom , #id_categorie , prix) (modifie)
- Piege etape 1 :    
    - Type que j'ai choisi pour le prix **int**
    - Indentifiant choisi **serial**

- categorie (**id_categorie** , nom) (nouveau)
- Piege etape 2 :    
    - Pas simplement un colonne categorie VARCHAR(50) dans plats parce que c'est redondant et que si l'on n'ecrit pas de la meme maniere certaines donnees peuvent etre perdus
    - exemple 
        'Plat Malagasy' et 'Plat GASY'

- commandes (**id_commande** , date , #id_client) (modifie)
- details_commandes (**id_detail** , #id_commande , #id_plat , quantite) (nouveau)
- Piege etape 3 :
    - J'ai place les quantites dans details commandes

- clients (**id_client** , nom) (nouveau)
- Piege etape 4 :
    - Ma cle etrangere est **NOT NULL**
    - Pour ne perdre aucune commande il faut la jointure **LEFT JOIN**