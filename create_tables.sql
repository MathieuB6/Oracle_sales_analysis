CREATE TABLE clients (
    client_id NUMBER PRIMARY KEY,
    nom VARCHAR2(100),
    ville VARCHAR2(100),
    region VARCHAR2(100)
);

CREATE TABLE produits (
    produit_id NUMBER PRIMARY KEY,
    produit VARCHAR2(100),
    categorie VARCHAR2(100),
    prix_unitaire NUMBER(10,2)
);

CREATE TABLE commandes (
    commande_id NUMBER PRIMARY KEY,
    client_id NUMBER,
    date_commande DATE,
    CONSTRAINT fk_commandes_clients
        FOREIGN KEY (client_id) REFERENCES clients(client_id)
);

CREATE TABLE lignes_commandes (
    ligne_id NUMBER PRIMARY KEY,
    commande_id NUMBER,
    produit_id NUMBER,
    quantite NUMBER,
    CONSTRAINT fk_lignes_commandes
        FOREIGN KEY (commande_id) REFERENCES commandes(commande_id),
    CONSTRAINT fk_lignes_produits
        FOREIGN KEY (produit_id) REFERENCES produits(produit_id)
);
