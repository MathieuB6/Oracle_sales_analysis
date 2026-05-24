Version Française

# Analyse des ventes e-commerce avec Oracle SQL

## Contexte

Ce projet consiste à analyser les ventes d’une entreprise e-commerce fictive à l’aide d’Oracle SQL.
L’objectif est de produire des indicateurs commerciaux exploitables à partir de données relationnelles.

---

## Compétences utilisées

- Oracle SQL
- Jointures SQL
- GROUP BY
- Fonctions d’agrégation
- CTE avec WITH
- Fonctions analytiques
- LAG()
- RANK()

---

## Structure de la base

Le projet contient quatre tables :

- CLIENTS
- PRODUITS
- COMMANDES
- LIGNES_COMMANDES

<img width="951" height="545" alt="1_tables" src="https://github.com/user-attachments/assets/c228c255-329e-4936-a5d9-9d679ca90d68" />
<img width="897" height="483" alt="2_insertinto" src="https://github.com/user-attachments/assets/d2d0d01b-bef9-4d10-949b-62506d6bdeae" />


---

## Analyses réalisées
### Chiffre d’affaires total

<img width="949" height="433" alt="3_ca_total" src="https://github.com/user-attachments/assets/601bc827-69e7-49c1-800e-5713ba039928" />

Ce calcul permet d’obtenir le chiffre d’affaires total généré par les ventes.

### Chiffre d’affaires par catégorie

<img width="950" height="676" alt="4_revenue_catégories" src="https://github.com/user-attachments/assets/95fc193f-ca44-4839-ae23-0290f81046c4" />


Cette analyse permet d’identifier les catégories de produits les plus rentables.

---

### Top clients

<img width="953" height="806" alt="5_top_clients" src="https://github.com/user-attachments/assets/4c9cb2c5-c47a-46c5-b6b0-c37b9e078c1c" />


Cette requête identifie les clients générant le plus de chiffre d’affaires.

---

### Évolution mensuelle du chiffre d’affaires

<img width="948" height="770" alt="6_evol_ca" src="https://github.com/user-attachments/assets/0d1adba5-5e14-4119-8861-2b1aab2388c9" />

Cette analyse permet d’observer les variations mensuelles des ventes.

---

### Analyse avancée avec LAG()

<img width="946" height="737" alt="7_lag_evolution_ca" src="https://github.com/user-attachments/assets/5e5f49d4-76db-4d7e-975d-a119dfa8328d" />

Cette requête compare les performances d’un mois avec celles du mois précédent.

---

### Classement des régions


<img width="946" height="778" alt="8_rang_region_ca" src="https://github.com/user-attachments/assets/88424138-6f6a-4b82-b9f5-134bf2a096d8" />

Cette analyse compare les performances commerciales selon les régions.


---

## Conclusion

Ce projet démontre l’utilisation d’Oracle SQL dans une démarche de data analyse orientée business.


___


English Version

# Oracle SQL — E-commerce Sales Analysis

## Context

This project analyzes sales data from a fictional e-commerce company using Oracle SQL.

The objective is to generate business insights from relational sales data.

---

## Skills Used

- Oracle SQL
- SQL JOIN
- GROUP BY
- Aggregate functions
- CTE with WITH
- Window functions
- LAG()
- RANK()

---

## Database Structure

The project contains four tables:

- CLIENTS
- PRODUITS
- COMMANDES
- LIGNES_COMMANDES


<img width="951" height="545" alt="1_tables" src="https://github.com/user-attachments/assets/4310b862-15ea-41db-a020-2985193c0483" />
<img width="897" height="483" alt="2_insertinto" src="https://github.com/user-attachments/assets/96e19184-b13b-4e23-a8b5-9d936bdfbc0d" />

---

## Analyses Performed

### Total Revenue


<img width="949" height="433" alt="3_ca_total" src="https://github.com/user-attachments/assets/13205a0f-8e94-491c-9455-caae57a424fa" />

---

### Revenue by Category


<img width="950" height="676" alt="4_revenue_catégories" src="https://github.com/user-attachments/assets/4d638c80-b34c-4851-b659-2113a2d6e68d" />


---

### Top Customers


<img width="953" height="806" alt="5_top_clients" src="https://github.com/user-attachments/assets/6e2958ed-21c2-4089-9c50-2003a1e50ac0" />

---

### Monthly Revenue Evolution

<img width="948" height="770" alt="6_evol_ca" src="https://github.com/user-attachments/assets/9089ae7f-45bc-4d49-872d-ab841a4fdabb" />

---

### Advanced Analysis with LAG()

<img width="946" height="737" alt="7_lag_evolution_ca" src="https://github.com/user-attachments/assets/52f18107-7592-454f-a38b-8fdeefa522f1" />

---

### Regional Ranking

<img width="946" height="778" alt="8_rang_region_ca" src="https://github.com/user-attachments/assets/73d97cb7-42e2-474d-a4cb-0199938c4b01" />

---

## Conclusion

This project demonstrates the use of Oracle SQL for business-oriented data analysis.
