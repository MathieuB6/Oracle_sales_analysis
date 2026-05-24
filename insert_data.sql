INSERT INTO clients VALUES (1, 'Martin', 'Clermont-Ferrand', 'Auvergne-Rhône-Alpes');
INSERT INTO clients VALUES (2, 'Durand', 'Lyon', 'Auvergne-Rhône-Alpes');
INSERT INTO clients VALUES (3, 'Bernard', 'Bordeaux', 'Nouvelle-Aquitaine');
INSERT INTO clients VALUES (4, 'Petit', 'Nantes', 'Pays de la Loire');
INSERT INTO clients VALUES (5, 'Robert', 'Paris', 'Île-de-France');

INSERT INTO produits VALUES (1, 'Ordinateur portable', 'Informatique', 799.99);
INSERT INTO produits VALUES (2, 'Souris sans fil', 'Accessoires', 29.99);
INSERT INTO produits VALUES (3, 'Clavier mécanique', 'Accessoires', 89.99);
INSERT INTO produits VALUES (4, 'Écran 27 pouces', 'Informatique', 249.99);
INSERT INTO produits VALUES (5, 'Casque audio', 'Audio', 119.99);

INSERT INTO commandes VALUES (1, 1, DATE '2025-01-15');
INSERT INTO commandes VALUES (2, 2, DATE '2025-01-20');
INSERT INTO commandes VALUES (3, 3, DATE '2025-02-10');
INSERT INTO commandes VALUES (4, 1, DATE '2025-02-18');
INSERT INTO commandes VALUES (5, 4, DATE '2025-03-05');
INSERT INTO commandes VALUES (6, 5, DATE '2025-03-22');

INSERT INTO lignes_commandes VALUES (1, 1, 1, 1);
INSERT INTO lignes_commandes VALUES (2, 1, 2, 2);
INSERT INTO lignes_commandes VALUES (3, 2, 4, 1);
INSERT INTO lignes_commandes VALUES (4, 3, 5, 2);
INSERT INTO lignes_commandes VALUES (5, 4, 3, 1);
INSERT INTO lignes_commandes VALUES (6, 5, 1, 1);
INSERT INTO lignes_commandes VALUES (7, 6, 2, 3);
INSERT INTO lignes_commandes VALUES (8, 6, 5, 1);

COMMIT;
