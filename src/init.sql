
CREATE TABLE Campus
(
    campus_ID INT NOT NULL,
    nom VARCHAR NOT NULL,
    PRIMARY KEY (campus_ID)
);

CREATE TABLE Caracteristique
(
    caracteristique_id INT NOT NULL,
    nom VARCHAR NOT NULL,
    PRIMARY KEY (caracteristique_id)
);

CREATE TABLE Statut
(
    nom_statut VARCHAR NOT NULL,
    PRIMARY KEY (nom_statut)
);

CREATE TABLE Fonction
(
    nom VARCHAR NOT NULL,
    fonction_id INT NOT NULL,
    PRIMARY KEY (fonction_id)
);

CREATE TABLE Pavillon
(
    pavillon_id VARCHAR NOT NULL,
    nom VARCHAR NOT NULL,    campus_ID INT NOT NULL,
    PRIMARY KEY (pavillon_id),
    FOREIGN KEY (campus_ID) REFERENCES Campus(campus_ID)
);

CREATE TABLE Departement
(
    departement_id VARCHAR NOT NULL,
    nom VARCHAR NOT NULL,
    pavillon_id VARCHAR NOT NULL,
    PRIMARY KEY (departement_id),
    FOREIGN KEY (pavillon_id) REFERENCES Pavillon(pavillon_id)
);

CREATE TABLE Local
(
    local_id INT NOT NULL,
    capacite INT NOT NULL,
    notes VARCHAR,
    pavillon_id VARCHAR NOT NULL,
    fonction_id INT NOT NULL,
    PRIMARY KEY (local_id, pavillon_id),
    FOREIGN KEY (pavillon_id) REFERENCES Pavillon(pavillon_id),
    FOREIGN KEY (fonction_id) REFERENCES Fonction(fonction_id)
);

CREATE TABLE Sous_local
(
    note VARCHAR,
    capacite INT NOT NULL,
    sous_local_id VARCHAR NOT NULL,
    local_id INT NOT NULL,
    pavillon_id VARCHAR NOT NULL,
    FOREIGN KEY (local_id, pavillon_id) REFERENCES Local(local_id, pavillon_id)
    );

CREATE TABLE local_caracteristique
(
    quantite INT NOT NULL,
    local_id INT NOT NULL,
    pavillon_id VARCHAR NOT NULL,
    caracteristique_id INT NOT NULL,
    PRIMARY KEY (local_id, pavillon_id, caracteristique_id),
    FOREIGN KEY (local_id, pavillon_id) REFERENCES Local(local_id, pavillon_id),
    FOREIGN KEY (caracteristique_id) REFERENCES Caracteristique(caracteristique_id)
);

CREATE TABLE Personne
(
    nom VARCHAR NOT NULL,
    prénom VARCHAR NOT NULL,
    cip VARCHAR NOT NULL,
    departement_id VARCHAR NOT NULL,
    PRIMARY KEY (cip),
    FOREIGN KEY (departement_id) REFERENCES Departement(departement_id)
);

CREATE TABLE Reservation
(
    reservation_id INT NOT NULL,
    date_debut DATE NOT NULL,
    date_fin DATE NOT NULL,
    description VARCHAR,
    cip VARCHAR NOT NULL,
    local_id INT NOT NULL,
    pavillon_id VARCHAR NOT NULL,
    PRIMARY KEY (reservation_id),
    FOREIGN KEY (cip) REFERENCES Personne(cip),
    FOREIGN KEY (local_id, pavillon_id) REFERENCES Local(local_id, pavillon_id)
);

CREATE TABLE Trigger
(
    trigger_id INT NOT NULL,
    description VARCHAR NOT NULL,
    trigger_date DATE NOT NULL,
    reservation_id INT NOT NULL,
    PRIMARY KEY (trigger_id),
    FOREIGN KEY (reservation_id) REFERENCES Reservation(reservation_id)
);

CREATE TABLE personne_statut
(
    cip VARCHAR NOT NULL,
    nom_statut VARCHAR NOT NULL,
    PRIMARY KEY (cip, nom_statut),
    FOREIGN KEY (cip) REFERENCES Personne(cip),
    FOREIGN KEY (nom_statut) REFERENCES Statut(nom_statut)
);