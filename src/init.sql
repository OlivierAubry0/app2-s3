CREATE TABLE Campus
(
    id_campus SERIAL PRIMARY KEY NOT NULL,
    nom VARCHAR(20) NOT NULL,
    adresse VARCHAR(40) NOT NULL
);

CREATE TABLE Pavillon
(
    id_pavillon CHAR(2) NOT NULL,
    nom VARCHAR(20) NOT NULL,
    id_campus INT NOT NULL,
    PRIMARY KEY (id_pavillon),
    FOREIGN KEY (id_campus) REFERENCES Campus(id_campus),
    CONSTRAINT pavillon_id_pavillon
        CHECK (id_pavillon SIMILAR TO '[A-Z]{1}[0-9]{1}')
    );

CREATE TABLE Faculte
(
    id_faculte SERIAL PRIMARY KEY NOT NULL,
    nom VARCHAR(20) NOT NULL
);

CREATE TABLE Statut
(
    id_statut SERIAL PRIMARY KEY NOT NULL,
    nom VARCHAR(100) NOT NULL
);

CREATE TABLE Privilege
(
    id_privilege SERIAL PRIMARY KEY NOT NULL,
    nom VARCHAR(100) NOT NULL
);

CREATE TABLE Fonction
(
    id_fonction CHAR(4) NOT NULL,
    nom VARCHAR(100) NOT NULL,
    PRIMARY KEY (id_fonction)
);

CREATE TABLE Local
(
    nom_local CHAR(4) NOT NULL,
    capacite INT NOT NULL,
    description VARCHAR(300),
    id_parent CHAR(4),
    id_pavillon CHAR(2) NOT NULL,
    id_fonction CHAR(4) NOT NULL,
    PRIMARY KEY (nom_local),
    FOREIGN KEY (id_pavillon) REFERENCES Pavillon(id_pavillon),
    FOREIGN KEY (id_fonction) REFERENCES Fonction(id_fonction),
    CONSTRAINT local_id_local
        CHECK (nom_local SIMILAR TO '[0-9]{4}|-[0-9]{1}')
    );

CREATE TABLE Operation
(
    id_operation SERIAL PRIMARY KEY NOT NULL,
    nom VARCHAR(50) NOT NULL
);

CREATE TABLE Pavillon_Faculte
(
    id_pavillon_faculte SERIAL PRIMARY KEY NOT NULL,
    id_pavillon CHAR(2) NOT NULL,
    id_faculte INT NOT NULL,
    FOREIGN KEY (id_pavillon) REFERENCES Pavillon(id_pavillon),
    FOREIGN KEY (id_faculte) REFERENCES Faculte(id_faculte)
);

CREATE TABLE Statut_Privilege
(
    id_statut_privilege SERIAL PRIMARY KEY NOT NULL,
    id_statut INT NOT NULL,
    id_privilege INT NOT NULL,
    FOREIGN KEY (id_statut) REFERENCES Statut(id_statut),
    FOREIGN KEY (id_privilege) REFERENCES Privilege(id_privilege)
);

CREATE TABLE Local_Privilege
(
    id_local_privilege SERIAL PRIMARY KEY NOT NULL,
    nom_local CHAR(4) NOT NULL,
    id_privilege INT NOT NULL,
    FOREIGN KEY (nom_local) REFERENCES Local(nom_local),
    FOREIGN KEY (id_privilege) REFERENCES Privilege(id_privilege)
);

CREATE TABLE Caracteristique
(
    id_caracteristique SERIAL PRIMARY KEY NOT NULL,
    nom VARCHAR(60) NOT NULL
);

CREATE TABLE Local_caracteristique
(
    id_local_caracteristiques SERIAL PRIMARY KEY NOT NULL,
    nom_local CHAR(4) NOT NULL,
    id_caracteristique INT NOT NULL,
    FOREIGN KEY (nom_local) REFERENCES Local(nom_local),
    FOREIGN KEY (id_caracteristique) REFERENCES Caracteristique(id_caracteristique)
);



CREATE TABLE Departement
(
    id_departement SERIAL PRIMARY KEY NOT NULL,
    nom VARCHAR(100) NOT NULL,
    id_faculte INT NOT NULL,
    FOREIGN KEY (id_faculte) REFERENCES Faculte(id_faculte)
);

CREATE TABLE Membre
(
    cip CHAR(8) NOT NULL,
    nom VARCHAR(20) NOT NULL,
    prenom VARCHAR(20) NOT NULL,
    courriel VARCHAR(30) NOT NULL,
    num_telephone CHAR(10) NOT NULL,
    id_departement INT,
    PRIMARY KEY (cip),
    FOREIGN KEY (id_departement) REFERENCES Departement(id_departement),
    CONSTRAINT membre_cip
        CHECK (cip SIMILAR TO '[A-Z]{4}[0-9]{4}')
    );

CREATE TABLE Reservation
(
    debut TIME NOT NULL,
    fin TIME NOT NULL,
    id_reservation SERIAL PRIMARY KEY NOT NULL,
    date DATE NOT NULL,
    description VARCHAR(300),
    etat BOOLEAN NOT NULL,
    nom_local CHAR(4) NOT NULL,
    cip CHAR(8) NOT NULL,
    FOREIGN KEY (nom_local) REFERENCES Local(nom_local),
    FOREIGN KEY (cip) REFERENCES Membre(cip),
    CONSTRAINT time_check
        CHECK (debut < fin)
);

CREATE TABLE Role
(
    id_role SERIAL PRIMARY KEY NOT NULL,
    cip CHAR(8) NOT NULL,
    id_statut INT NOT NULL,
    FOREIGN KEY (cip) REFERENCES Membre(cip),
    FOREIGN KEY (id_statut) REFERENCES Statut(id_statut)
);

CREATE TABLE Journal
(
    id_journal SERIAL PRIMARY KEY NOT NULL,
    cip CHAR(8) NOT NULL,
    id_operation INT NOT NULL,
    FOREIGN KEY (cip) REFERENCES Membre(cip),
    FOREIGN KEY (id_operation) REFERENCES Operation(id_operation)
);