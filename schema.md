# Schemas

- plats (**id_carte** , nom , #id_categorie , prix) (modifier)
- Piege etape 1 :    
    - Type que j'ai choisi pour le prix **int**
    - Indentifiant choisi **serial**

- categorie (**id_categorie** , nom) (nouveau)
- Piege etape 1 :    
    - Pas simplement un colonne categorie VARCHAR(50) dans plats parce que c'est redondant et que si l'on n'ecrit pas de la meme maniere certaines donnees peuvent etre perdus
    - exemple 
        'Plat Malagasy' et 'Plat GASY'
