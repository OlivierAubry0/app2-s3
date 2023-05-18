-- Insertions Table Campus --
INSERT INTO Campus (campus_id, nom) VALUES (1,'Campus de Longueuil');
INSERT INTO Campus (campus_id, nom) VALUES (2,'Campus de l''Ouest');
INSERT INTO Campus (campus_id, nom) VALUES (3,'Campus de l''Est');


-- Insertions Table Pavillon --
INSERT INTO Pavillon (pavillon_id, nom, campus_id) VALUES ('C1', 'J.-Armand-Bombardier', 2);
INSERT INTO Pavillon (pavillon_id, nom, campus_id) VALUES ('D7', 'Marie-Victorin', 2);

--Insertions Table Departement --
INSERT INTO Departement (nom, pavillon_id) VALUES ('Département de génie électrique et de génie informatique', 'C1');
INSERT INTO Departement (nom, pavillon_id) VALUES ('Département de génie mécanique', 'C1');
INSERT INTO Departement (nom, pavillon_id) VALUES ('Département de génie civil et de génie du bâtiment', 'C1');
INSERT INTO Departement (nom, pavillon_id) VALUES ('Département d''informatique', 'D7');