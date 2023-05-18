-- Insertions Table Campus --
INSERT INTO Campus (campus_id, nom) VALUES (1,'Campus de Longueuil');
INSERT INTO Campus (campus_id, nom) VALUES (2,'Campus de l''Ouest');
INSERT INTO Campus (campus_id, nom) VALUES (3,'Campus de l''Est');

-- Insertions Table Pavillon --
INSERT INTO Pavillon (pavillon_id, nom, campus_id) VALUES ('C1', 'J.-Armand-Bombardier', 2);
INSERT INTO Pavillon (pavillon_id, nom, campus_id) VALUES ('D7', 'Marie-Victorin', 2);

--Insertions Table Departement --
INSERT INTO Departement (departement_id, nom, pavillon_id) VALUES ('GEGI','Département de génie électrique et de génie informatique', 'C1');
INSERT INTO Departement (departement_id, nom, pavillon_id) VALUES ('GM','Département de génie mécanique', 'C1');
INSERT INTO Departement (departement_id, nom, pavillon_id) VALUES ('GCGB','Département de génie civil et de génie du bâtiment', 'C1');
INSERT INTO Departement (departement_id, nom, pavillon_id) VALUES ('SI','Département d''informatique', 'D7');

--Insertions Table fonction --
INSERT INTO fonction (nom, fonction_id) VALUES ('Salle de classe générale',0110);
INSERT INTO fonction (nom, fonction_id) VALUES ('Salle de classe spécialisée',0111);
INSERT INTO fonction (nom, fonction_id) VALUES ('Salle de séminaire',0120);
INSERT INTO fonction (nom, fonction_id) VALUES ('Cubicules',0121);
INSERT INTO fonction (nom, fonction_id) VALUES ('Laboratoire informatique',0210);
INSERT INTO fonction (nom, fonction_id) VALUES ('Laboratoire d’enseignement spécialisé',0211);
INSERT INTO fonction (nom, fonction_id) VALUES ('Atelier',0212);
INSERT INTO fonction (nom, fonction_id) VALUES ('Salle à dessin',0213);
INSERT INTO fonction (nom, fonction_id) VALUES ('Atelier (civil)',0214);
INSERT INTO fonction (nom, fonction_id) VALUES ('Salle de musique',0215);
INSERT INTO fonction (nom, fonction_id) VALUES ('Atelier sur 2 étages, conjoint avec autre local',0216);
INSERT INTO fonction (nom, fonction_id) VALUES ('Salle de conférence',0217);
INSERT INTO fonction (nom, fonction_id) VALUES ('Salle de réunion',0372);
INSERT INTO fonction (nom, fonction_id) VALUES ('Salle d’entrevue et de tests',0373);
INSERT INTO fonction (nom, fonction_id) VALUES ('Salle de lecture ou de consultation',0510);
INSERT INTO fonction (nom, fonction_id) VALUES ('Auditorium',0620);
INSERT INTO fonction (nom, fonction_id) VALUES ('Salle de concert',0625);
INSERT INTO fonction (nom, fonction_id) VALUES ('Salle d’audience',0640);
INSERT INTO fonction (nom, fonction_id) VALUES ('Salon du personnel',0930);
INSERT INTO fonction (nom, fonction_id) VALUES ('Studio d’enregistrement',1030);
INSERT INTO fonction (nom, fonction_id) VALUES ('Hall d’entrée',1260);

--Insertions Table caracteristique --
INSERT INTO caracteristique (caracteristique_id, nom) VALUES ('Connexion à Internet',0);
INSERT INTO caracteristique (caracteristique_id, nom) VALUES ('Tables fixes en U et chaises mobiles',1);
INSERT INTO caracteristique (caracteristique_id, nom) VALUES ('Monoplaces',2);
INSERT INTO caracteristique (caracteristique_id, nom) VALUES ('Tables fixes et chaises fixes',3);
INSERT INTO caracteristique (caracteristique_id, nom) VALUES ('Tables pour 2 ou + et chaises mobiles',6);
INSERT INTO caracteristique (caracteristique_id, nom) VALUES ('Tables mobiles et chaises mobiles',7);
INSERT INTO caracteristique (caracteristique_id, nom) VALUES ('Tables hautes et chaises hautes',8);
INSERT INTO caracteristique (caracteristique_id, nom) VALUES ('Tables fixes et chaises mobiles',9);
INSERT INTO caracteristique (caracteristique_id, nom) VALUES ('Écran',11);
INSERT INTO caracteristique (caracteristique_id, nom) VALUES ('Rétroprojecteur',14);
INSERT INTO caracteristique (caracteristique_id, nom) VALUES ('Gradins',15);
INSERT INTO caracteristique (caracteristique_id, nom) VALUES ('Fenêtres',16);
INSERT INTO caracteristique (caracteristique_id, nom) VALUES ('1 piano',17);
INSERT INTO caracteristique (caracteristique_id, nom) VALUES ('2 pianos',18);
INSERT INTO caracteristique (caracteristique_id, nom) VALUES ('Autres instruments',19);
INSERT INTO caracteristique (caracteristique_id, nom) VALUES ('Système de son',20);
INSERT INTO caracteristique (caracteristique_id, nom) VALUES ('Salle réservée (spéciale)',21);
INSERT INTO caracteristique (caracteristique_id, nom) VALUES ('Ordinateurs PC',22);
INSERT INTO caracteristique (caracteristique_id, nom) VALUES ('Ordinateurs SUN pour génie électrique',23);
INSERT INTO caracteristique (caracteristique_id, nom) VALUES ('Ordinateurs (oscillomètre et multimètre)',25);
INSERT INTO caracteristique (caracteristique_id, nom) VALUES ('Ordinateurs modélisation des structures',26);
INSERT INTO caracteristique (caracteristique_id, nom) VALUES ('Ordinateurs PC',27);
INSERT INTO caracteristique (caracteristique_id, nom) VALUES ('Équipement pour microélectronique',28);
INSERT INTO caracteristique (caracteristique_id, nom) VALUES ('Équipement pour génie électrique',29);
INSERT INTO caracteristique (caracteristique_id, nom) VALUES ('Ordinateurs et équipement pour mécatroni',30);
INSERT INTO caracteristique (caracteristique_id, nom) VALUES ('Équipement métrologie',31);
INSERT INTO caracteristique (caracteristique_id, nom) VALUES ('Équipement de machinerie',32);
INSERT INTO caracteristique (caracteristique_id, nom) VALUES ('Équipement de géologie',33);
INSERT INTO caracteristique (caracteristique_id, nom) VALUES ('Équipement pour la caractérisation',34);
INSERT INTO caracteristique (caracteristique_id, nom) VALUES ('Équipement pour la thermodynamique',35);
INSERT INTO caracteristique (caracteristique_id, nom) VALUES ('Équipement pour génie civil',36);
INSERT INTO caracteristique (caracteristique_id, nom) VALUES ('Télévision',37);
INSERT INTO caracteristique (caracteristique_id, nom) VALUES ('VHS',38);
INSERT INTO caracteristique (caracteristique_id, nom) VALUES ('Hauts parleurs',39);
INSERT INTO caracteristique (caracteristique_id, nom) VALUES ('Micro',40);
INSERT INTO caracteristique (caracteristique_id, nom) VALUES ('Magnétophone à cassette',41);
INSERT INTO caracteristique (caracteristique_id, nom) VALUES ('Amplificateur audio',42);
INSERT INTO caracteristique (caracteristique_id, nom) VALUES ('Local barré',43);
INSERT INTO caracteristique (caracteristique_id, nom) VALUES ('Prise réseau',44);


