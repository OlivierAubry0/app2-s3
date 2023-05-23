-- Insertions Table Campus --
INSERT INTO Campus (campus_id, nom) VALUES (1,'Campus de Longueuil');
INSERT INTO Campus (campus_id, nom) VALUES (2,'Campus de l''Ouest');
INSERT INTO Campus (campus_id, nom) VALUES (3,'Campus de l''Est');

-- Insertions Table Pavillon --
INSERT INTO Pavillon (pavillon_id, nom, campus_id) VALUES ('C1', 'J.-Armand-Bombardier', 2);
INSERT INTO Pavillon (pavillon_id, nom, campus_id) VALUES ('D7', 'Marie-Victorin', 2);
INSERT INTO Pavillon (pavillon_id, nom, campus_id) VALUES ('Z0', 'Medecin_cool', 3);
INSERT INTO Pavillon (pavillon_id, nom, campus_id) VALUES ('Z1', 'Jeux_video', 1);

--Insertions Table Departement --
INSERT INTO Departement (departement_id, nom, pavillon_id) VALUES ('GEGI','Département de génie électrique et de génie informatique', 'C1');
INSERT INTO Departement (departement_id, nom, pavillon_id) VALUES ('GM','Département de génie mécanique', 'C1');
INSERT INTO Departement (departement_id, nom, pavillon_id) VALUES ('GCGB','Département de génie civil et de génie du bâtiment', 'C1');
INSERT INTO Departement (departement_id, nom, pavillon_id) VALUES ('SI','Département d''informatique', 'D7');

--Insertions Table statut --
INSERT INTO statut (nom_statut) VALUES ('Etudiant');
INSERT INTO statut (nom_statut) VALUES ('Enseignats');
INSERT INTO statut (nom_statut) VALUES ('Personnel de soutient');
INSERT INTO statut (nom_statut) VALUES ('Administrateur');

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

--Insertions Table caracteristique--
INSERT INTO caracteristique (nom, caracteristique_id) VALUES ('Connexion à Internet',0);
INSERT INTO caracteristique (nom, caracteristique_id) VALUES ('Tables fixes en U et chaises mobiles',1);
INSERT INTO caracteristique (nom, caracteristique_id) VALUES ('Monoplaces',2);
INSERT INTO caracteristique (nom, caracteristique_id) VALUES ('Tables fixes et chaises fixes',3);
INSERT INTO caracteristique (nom, caracteristique_id) VALUES ('Tables pour 2 ou + et chaises mobiles',6);
INSERT INTO caracteristique (nom, caracteristique_id) VALUES ('Tables mobiles et chaises mobiles',7);
INSERT INTO caracteristique (nom, caracteristique_id) VALUES ('Tables hautes et chaises hautes',8);
INSERT INTO caracteristique (nom, caracteristique_id) VALUES ('Tables fixes et chaises mobiles',9);
INSERT INTO caracteristique (nom, caracteristique_id) VALUES ('Écran',11);
INSERT INTO caracteristique (nom, caracteristique_id) VALUES ('Rétroprojecteur',14);
INSERT INTO caracteristique (nom, caracteristique_id) VALUES ('Gradins',15);
INSERT INTO caracteristique (nom, caracteristique_id) VALUES ('Fenêtres',16);
INSERT INTO caracteristique (nom, caracteristique_id) VALUES ('1 piano',17);
INSERT INTO caracteristique (nom, caracteristique_id) VALUES ('2 pianos',18);
INSERT INTO caracteristique (nom, caracteristique_id) VALUES ('Autres instruments',19);
INSERT INTO caracteristique (nom, caracteristique_id) VALUES ('Système de son',20);
INSERT INTO caracteristique (nom, caracteristique_id) VALUES ('Salle réservée (spéciale)',21);
INSERT INTO caracteristique (nom, caracteristique_id) VALUES ('Ordinateurs PC',22);
INSERT INTO caracteristique (nom, caracteristique_id) VALUES ('Ordinateurs SUN pour génie électrique',23);
INSERT INTO caracteristique (nom, caracteristique_id) VALUES ('Ordinateurs (oscillomètre et multimètre)',25);
INSERT INTO caracteristique (nom, caracteristique_id) VALUES ('Ordinateurs modélisation des structures',26);
INSERT INTO caracteristique (nom, caracteristique_id) VALUES ('Ordinateurs PC',27);
INSERT INTO caracteristique (nom, caracteristique_id) VALUES ('Équipement pour microélectronique',28);
INSERT INTO caracteristique (nom, caracteristique_id) VALUES ('Équipement pour génie électrique',29);
INSERT INTO caracteristique (nom, caracteristique_id) VALUES ('Ordinateurs et équipement pour mécatroni',30);
INSERT INTO caracteristique (nom, caracteristique_id) VALUES ('Équipement métrologie',31);
INSERT INTO caracteristique (nom, caracteristique_id) VALUES ('Équipement de machinerie',32);
INSERT INTO caracteristique (nom, caracteristique_id) VALUES ('Équipement de géologie',33);
INSERT INTO caracteristique (nom, caracteristique_id) VALUES ('Équipement pour la caractérisation',34);
INSERT INTO caracteristique (nom, caracteristique_id) VALUES ('Équipement pour la thermodynamique',35);
INSERT INTO caracteristique (nom, caracteristique_id) VALUES ('Équipement pour génie civil',36);
INSERT INTO caracteristique (nom, caracteristique_id) VALUES ('Télévision',37);
INSERT INTO caracteristique (nom, caracteristique_id) VALUES ('VHS',38);
INSERT INTO caracteristique (nom, caracteristique_id) VALUES ('Hauts parleurs',39);
INSERT INTO caracteristique (nom, caracteristique_id) VALUES ('Micro',40);
INSERT INTO caracteristique (nom, caracteristique_id) VALUES ('Magnétophone à cassette',41);
INSERT INTO caracteristique (nom, caracteristique_id) VALUES ('Amplificateur audio',42);
INSERT INTO caracteristique (nom, caracteristique_id) VALUES ('Local barré',43);
INSERT INTO caracteristique (nom, caracteristique_id) VALUES ('Prise réseau',44);

--Insertions Table local --
INSERT INTO local (local_id, capacite, notes, pavillon_id, fonction_id) VALUES (3125,50,'Local de cours','C1',0110);

--Associer caracteristique aux locaux --

--Insertions Table cubicule --
INSERT INTO cubicule (capacite, cubicule_id, local_id, pavillon_id) VALUES (10,1,3125,'C1');
INSERT INTO cubicule (capacite, cubicule_id, local_id, pavillon_id) VALUES (10,2,3125,'C1');
INSERT INTO cubicule (capacite, cubicule_id, local_id, pavillon_id) VALUES (10,3,3125,'C1');
INSERT INTO cubicule (capacite, cubicule_id, local_id, pavillon_id) VALUES (10,4,3125,'C1');

--Insertions Table personne --
INSERT INTO personne (nom, prénom, cip, departement_id) VALUES ('ratelle', 'daphnée', 'ratd1234', 'SI');

--Associer statut aux personnes --
INSERT INTO personne_statut(cip, nom_statut) VALUES ('ratd1234', 'Etudiant');

--Insertions Table Reservation --
INSERT INTO reservation (reservation_id, date_debut, date_fin, description, cip, local_id, pavillon_id) VALUES (0, '2023-05-21 02:00:00', '2023-05-21 04:00:00','Integration', 'ratd1234',3125 ,'C1');
INSERT INTO reservation (reservation_id, date_debut, date_fin, description, cip, local_id, pavillon_id) VALUES (2, '2023-05-21 04:00:00', '2023-05-21 06:00:00','Canoe', 'ratd1234',3125 ,'C1');
INSERT INTO reservation (reservation_id, date_debut, date_fin, description, cip, local_id, pavillon_id) VALUES (1,'2023-05-21 10:00:00','2023-05-21 11:00:00','app', 'ratd1234',3125 ,'C1');
INSERT INTO reservation (reservation_id, date_debut, date_fin, description, cip, local_id, pavillon_id) VALUES (3,'2023-05-21 12:00:00','2023-05-21 13:00:00','pre-drink app', 'ratd1234',3125 ,'C1');
INSERT INTO reservation (reservation_id, date_debut, date_fin, description, cip, local_id, cubicule_id, pavillon_id) VALUES (5,'2023-05-21 13:00:00','2023-05-21 14:00:00',' ', 'ratd1234',3125 ,3 ,'C1');
INSERT INTO reservation (reservation_id, date_debut, date_fin, description, cip, local_id, cubicule_id, pavillon_id) VALUES (6,'2023-05-21 13:00:00','2023-05-21 14:00:00','rencontre projet', 'ratd1234',3125 ,2 ,'C1');

DELETE FROM reservation WHERE reservation_id = 5;

-- Test mauvaise reservation --
-- heure overlap --
--INSERT INTO reservation (reservation_id, date_debut, date_fin, description, cip, local_id, pavillon_id) VALUES (4,'2023-05-21 12:00:00','2023-05-21 13:00:00','pre-drink app', 'ratd1234',3125 ,'C1');
-- date de fin avant date debut --
--INSERT INTO reservation (reservation_id, date_debut, date_fin, description, cip, local_id, pavillon_id) VALUES (7,'2023-05-22 12:00:00','2023-05-22 11:00:00','pre-drink app', 'ratd1234',3125 ,'C1');
-- reserve local entier apres cubicule --
--INSERT INTO reservation (reservation_id, date_debut, date_fin, description, cip, local_id, pavillon_id) VALUES (8,'2023-05-21 13:00:00','2023-05-21 14:00:00','rencontre projet', 'ratd1234',3125,'C1');





