CREATE TABLE Campus
(
    campus_ID INT NOT NULL,
    nom VARCHAR NOT NULL,
    PRIMARY KEY (campus_ID)
);

CREATE TABLE Caracteristique
(
    caracteristique_id INT NOT NULL,
    nom INT NOT NULL,
    PRIMARY KEY (caracteristique_id)
);

CREATE TABLE Statut
(
    nom VARCHAR NOT NULL,
    statut_id INT NOT NULL,
    PRIMARY KEY (statut_id)
);

CREATE TABLE Fonction
(
    nom INT NOT NULL,
    fonction_id INT NOT NULL,
    PRIMARY KEY (fonction_id)
);

CREATE TABLE Pavillon
(
    pavillon_id VARCHAR NOT NULL,
    nom VARCHAR NOT NULL,
    campus_ID INT NOT NULL,
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
    note INT,
    capacite INT NOT NULL,
    sous_local_id INT NOT NULL,
    local_id INT NOT NULL,
    pavillon_id VARCHAR NOT NULL,
    FOREIGN KEY (local_id, pavillon_id) REFERENCES Local(local_id, pavillon_id)
    );

CREATE TABLE possede
(
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
    date_debut INT NOT NULL,
    date_fin INT NOT NULL,
    description INT,
    cip VARCHAR NOT NULL,
    local_id INT NOT NULL,
    pavillon_id VARCHAR NOT NULL,
    PRIMARY KEY (reservation_id),
    FOREIGN KEY (cip) REFERENCES Personne(cip),
    FOREIGN KEY (local_id, pavillon_id) REFERENCES Local(local_id, pavillon_id)
);

CREATE TABLE associer
(
    cip VARCHAR NOT NULL,
    statut_id INT NOT NULL,
    PRIMARY KEY (cip, statut_id),
    FOREIGN KEY (cip) REFERENCES Personne(cip),
    FOREIGN KEY (statut_id) REFERENCES Statut(statut_id)
);