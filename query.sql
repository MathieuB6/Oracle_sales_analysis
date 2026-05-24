SELECT 
    SUM(l.quantite * p.prix_unitaire) AS chiffre_affaires_total
FROM lignes_commandes l
JOIN produits p ON l.produit_id = p.produit_id;

__________________________________________________________________________________________________________________________________________________________________________________________________________________

SELECT 
    p.categorie,
    ROUND(SUM(l.quantite * p.prix_unitaire), 2) AS chiffre_affaires
FROM lignes_commandes l
JOIN produits p ON l.produit_id = p.produit_id
GROUP BY p.categorie
ORDER BY chiffre_affaires DESC;

__________________________________________________________________________________________________________________________________________________________________________________________________________________

SELECT 
    p.categorie,
    ROUND(SUM(l.quantite * p.prix_unitaire), 2) AS chiffre_affaires
FROM lignes_commandes l
JOIN produits p ON l.produit_id = p.produit_id
GROUP BY p.categorie
ORDER BY chiffre_affaires DESC;

__________________________________________________________________________________________________________________________________________________________________________________________________________________

SELECT 
    c.nom,
    c.ville,
    ROUND(SUM(l.quantite * p.prix_unitaire), 2) AS montant_total
FROM clients c
JOIN commandes co ON c.client_id = co.client_id
JOIN lignes_commandes l ON co.commande_id = l.commande_id
JOIN produits p ON l.produit_id = p.produit_id
GROUP BY c.nom, c.ville
ORDER BY montant_total DESC;

__________________________________________________________________________________________________________________________________________________________________________________________________________________

SELECT 
    TO_CHAR(co.date_commande, 'YYYY-MM') AS mois,
    ROUND(SUM(l.quantite * p.prix_unitaire), 2) AS chiffre_affaires
FROM commandes co
JOIN lignes_commandes l ON co.commande_id = l.commande_id
JOIN produits p ON l.produit_id = p.produit_id
GROUP BY TO_CHAR(co.date_commande, 'YYYY-MM')
ORDER BY mois;
__________________________________________________________________________________________________________________________________________________________________________________________________________________

WITH ca_mensuel AS (
    SELECT 
        TO_CHAR(co.date_commande, 'YYYY-MM') AS mois,
        SUM(l.quantite * p.prix_unitaire) AS chiffre_affaires
    FROM commandes co
    JOIN lignes_commandes l ON co.commande_id = l.commande_id
    JOIN produits p ON l.produit_id = p.produit_id
    GROUP BY TO_CHAR(co.date_commande, 'YYYY-MM')
)
SELECT
    mois,
    ROUND(chiffre_affaires, 2) AS chiffre_affaires,
    ROUND(
        chiffre_affaires - LAG(chiffre_affaires) OVER (ORDER BY mois),
        2
    ) AS evolution_valeur
FROM ca_mensuel
ORDER BY mois;

__________________________________________________________________________________________________________________________________________________________________________________________________________________

SELECT 
    c.region,
    ROUND(SUM(l.quantite * p.prix_unitaire), 2) AS chiffre_affaires,
    RANK() OVER (
        ORDER BY SUM(l.quantite * p.prix_unitaire) DESC
    ) AS rang_region
FROM clients c
JOIN commandes co ON c.client_id = co.client_id
JOIN lignes_commandes l ON co.commande_id = l.commande_id
JOIN produits p ON l.produit_id = p.produit_id
GROUP BY c.region;

