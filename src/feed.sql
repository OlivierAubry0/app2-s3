-- Insertions Table Campus --
INSERT INTO Campus (campus_id, nom) VALUES (1,'Campus de Longueuil');
INSERT INTO Campus (campus_id, nom) VALUES (2,'Campus de l''Ouest');
INSERT INTO Campus (campus_id, nom) VALUES (3,'Campus de l''Est');


-- Insertions Table Pavillon --
INSERT INTO Pavillon (pavillon_id, nom, campus_id) VALUES ('C1', 'J.-Armand-Bombardier', 2);
INSERT INTO Pavillon (pavillon_id, nom, campus_id) VALUES ('D7', 'Marie-Victorin', 2);

--Insertions Table Departement --
INSERT INTO Departement (departement_id,nom, pavillon_id) VALUES ('elec','Département de génie électrique et de génie informatique', 'C1');
INSERT INTO Departement (departement_id,nom, pavillon_id) VALUES ('mec','Département de génie mécanique', 'C1');
INSERT INTO Departement (departement_id,nom, pavillon_id) VALUES ('facile','Département de génie civil et de génie du bâtiment', 'C1');
INSERT INTO Departement (departement_id,nom, pavillon_id) VALUES ('info','Département d''informatique', 'D7');
--Insertion personne--
INSERT INTO personne(nom, prénom, cip, departement_id) VALUES ('aubry', 'olivier', 'aubo1502','info')
--Insertion fonction--
--Insertion local--

INSERT INTO local(local_id, capacite, notes, pavillon_id, fonction_id ) VALUES (1007,21,'grand','C1')