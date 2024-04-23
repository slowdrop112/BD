-- Tabela ANTRENOR
CREATE TABLE Antrenor (
    ID_ANTRENOR NUMBER(5)PRIMARY KEY,
    nume VARCHAR2(50),
    data_nasterii DATE,
    nationalitate VARCHAR2(50),
    ID_ECHIPA NUMBER (5)NOT NULL,
    CONSTRAINT echipa_fk FOREIGN KEY (ID_ECHIPA) REFERENCES Echipa(ID_ECHIPA)
);

-- Tabela ECHIPA
CREATE TABLE Echipa (
    ID_ECHIPA NUMBER(5)  PRIMARY KEY,
    nume VARCHAR2(50),
    oras VARCHAR2(30),
    an_fondare NUMBER(4),
    ID_GRUPA NUMBER(5) NOT NULL,
    CONSTRAINT grupa_fk FOREIGN KEY (ID_GRUPA) REFERENCES Grupa(ID_GRUPA),

    
);

-- Tabela GRUPA
CREATE TABLE Grupa (
    ID_GRUPA NUMBER(5)  PRIMARY KEY,
    nume_grupa VARCHAR2(50),
    numar_echipe NUMBER(3)
);

-- Tabela JUCATOR
CREATE TABLE Jucator (
    ID_JUCATOR NUMBER(5)PRIMARY KEY,
    nume VARCHAR2(50),
    data_nasterii DATE,
    nationalitate VARCHAR2(50),
    ID_echipa NUMBER(5) NOT NULL,
    CONSTRAINT echipa_fk FOREIGN KEY (ID_echipa) REFERENCES Echipa(ID_ECHIPA)
);

-- Tabela MECI
CREATE TABLE Meci (
    ID_MECI NUMBER(5) PRIMARY KEY,
    Data_meci DATE,
    scor VARCHAR2(10),
    echipa_gazda_id NUMBER(5)NOT NULL,
    echipa_oaspete_id NUMBER(5)NOT NULL,
     CONSTRAINT echipa_gazda_fk FOREIGN KEY (ID_ECHIPA) REFERENCES Echipa(ID_ECHIPA),
     CONSTRAINT echipa_oaspete_fk FOREIGN KEY (ID_ECHIPA) REFERENCES Echipa(ID_ECHIPA)

);

-- Tabela ETAPA
CREATE TABLE Etapa (
    ID_ETAPA NUMBER(5) PRIMARY KEY,
    data_inceput DATE,
    data_sfarsit DATE
    
);

-- Tabela ARBITRU
CREATE TABLE Arbitru (
    ID_ARBITRU NUMBER(5) PRIMARY KEY,
    nume VARCHAR2(50),
    an_nastere NUMBER(4),
    nationalitate VARCHAR2(50),
    ID_MECI NUMBER (5)NOT NULL,
    CONSTRAINT meci_fk FOREIGN KEY (ID_MECI) REFERENCES Meci(ID_MECI)
    );
    
--Tabela Echi_Meci
CREATE TABLE Echi_Meci (
    ID_EMECI NUMBER (5) PRIMARY KEY,
    ID_MECI NUMBER (5)NOT NULL,
    ID_ECHIPA NUMBER (5)NOT NULL,
    CONSTRAINT meci_fk FOREIGN KEY (ID_MECI) REFERENCES Meci(ID_MECI),
    CONSTRAINT echipa_fk FOREIGN KEY (ID_ECHIPA) REFERENCES Echipa(ID_ECHIPA)
    );

--Tabela Arbi_Meci
CREATE TABLE Arbi_Meci (
    ID_AMECI NUMBER (5) PRIMARY KEY,
    ID_MECI NUMBER (5)NOT NULL,
    ID_ARBITRU NUMBER (5) NOT NULL,
    CONSTRAINT meci_fk FOREIGN KEY (ID_MECI) REFERENCES Meci(ID_MECI),
    CONSTRAINT arbitru_fk FOREIGN KEY (ID_ARBITRU) REFERENCES Arbitru(ID_ARBITRU)
    );

    

--insert Antrenori
INSERT INTO Antrenor (ID_ANTRENOR, nume, data_nasterii, nationalitate, ID_ECHIPA)
VALUES (1, 'Gica Popescu', TO_DATE('1967-10-09', 'YYYY-MM-DD'), 'Romana', 1);
INSERT INTO Antrenor (ID_ANTRENOR, nume, data_nasterii, nationalitate, ID_ECHIPA)
VALUES (2, 'Josep „Pep” Guardiola Sala', TO_DATE('1971-01-18', 'YYYY-MM-DD'), 'Spaniola',2);
INSERT INTO Antrenor (ID_ANTRENOR, nume, data_nasterii, nationalitate, ID_ECHIPA)
VALUES (3, 'Xavier Hernández Creus', TO_DATE('1967-01-25', 'YYYY-MM-DD'), 'Spaniola',8);
INSERT INTO Antrenor (ID_ANTRENOR, nume, data_nasterii, nationalitate, ID_ECHIPA)
VALUES (4, 'José Mário dos Santos Félix Mourinho', TO_DATE('1963-01-26', 'YYYY-MM-DD'), 'Portugheza', 3);
INSERT INTO Antrenor (ID_ANTRENOR, nume, data_nasterii, nationalitate, ID_ECHIPA)
VALUES (5, 'Dorinel Ionel Munteanu', TO_DATE('1968-06-25', 'YYYY-MM-DD'), 'Romana',4);
INSERT INTO Antrenor (ID_ANTRENOR, nume, data_nasterii, nationalitate, ID_ECHIPA)
VALUES (7, 'Carlo Ancelotti', TO_DATE('1959-06-10', 'YYYY-MM-DD'), 'Spaniola',5);
INSERT INTO Antrenor (ID_ANTRENOR, nume, data_nasterii, nationalitate, ID_ECHIPA)
VALUES (9, 'Jürgen Norbert Klopp ', TO_DATE('1976-06-16', 'YYYY-MM-DD'), 'Germana',6);
INSERT INTO Antrenor (ID_ANTRENOR, nume, data_nasterii, nationalitate, ID_ECHIPA)
VALUES (10, 'Mikel Arteta Amatriain', TO_DATE('1982-03-26', 'YYYY-MM-DD'), 'Spaniola',7);

--Insert Echipa

INSERT INTO Echipa (ID_ECHIPA, nume, oras, an_fondare,ID_GRUPA)
VALUES (1, 'FC Farul Constanta', 'Constanta', 1920, 1);
INSERT INTO Echipa (ID_ECHIPA, nume, oras, an_fondare,ID_GRUPA)
VALUES (2, 'Manchester City', 'Manchester', 1880,  1);
INSERT INTO Echipa (ID_ECHIPA, nume, oras, an_fondare,ID_GRUPA)
VALUES (3, 'AS Roma', 'Roma', 1927, 1);
INSERT INTO Echipa (ID_ECHIPA, nume, oras, an_fondare,ID_GRUPA)
VALUES (4, 'ASC Otelul Galati', 'Galati', 1964, 1);
INSERT INTO Echipa (ID_ECHIPA, nume, oras, an_fondare,ID_GRUPA)
VALUES (5, 'FC Real Madrid', 'Madrid', 1902, 2);
INSERT INTO Echipa (ID_ECHIPA, nume, oras, an_fondare,ID_GRUPA)
VALUES (6, 'Liverpool FC', 'Liverpool', 1892, 2);
INSERT INTO Echipa (ID_ECHIPA, nume, oras, an_fondare,ID_GRUPA)
VALUES (7, 'Arsenal FC', 'Londra', 1886, 2);
INSERT INTO Echipa (ID_ECHIPA, nume, oras, an_fondare,ID_GRUPA)
VALUES (8, 'FC Barcelona', 'Barcelona', 1899, 2);


--Insert Grupa
INSERT INTO Grupa (ID_GRUPA, nume_grupa, numar_echipe)
VALUES (1, 'Grupa A', 4);
INSERT INTO Grupa (ID_GRUPA, nume_grupa, numar_echipe)
VALUES (2, 'Grupa B', 4);

--Insert Jucator

INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES (1, 'Lionel Messi', TO_DATE('1987-06-24', 'YYYY-MM-DD'), 'Argentinian', 8);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES  (2, 'Sergio Busquets', TO_DATE('1988-07-16', 'YYYY-MM-DD'), 'Spaniol', 8);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES (3, 'Gerard Piqué', TO_DATE('1987-02-02', 'YYYY-MM-DD'), 'Spaniol', 8);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES (4, 'Jordi Alba', TO_DATE('1989-03-21', 'YYYY-MM-DD'), 'Spaniol', 8);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES (5, 'Frenkie de Jong', TO_DATE('1997-05-12', 'YYYY-MM-DD'), 'Olandez', 8);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES(6, 'Pedri', TO_DATE('2002-11-25', 'YYYY-MM-DD'), 'Spaniol', 8);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES(7, 'Sergi Roberto', TO_DATE('1992-02-07', 'YYYY-MM-DD'), 'Spaniol', 8);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES(8, 'Antoine Griezmann', TO_DATE('1991-03-21', 'YYYY-MM-DD'), 'Francez', 8);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES(9, 'Marc-André ter Stegen', TO_DATE('1992-04-30', 'YYYY-MM-DD'), 'German', 8);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES(10, 'Ronald Araújo', TO_DATE('1999-03-07', 'YYYY-MM-DD'), 'Uruguayan', 8);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES(11, 'Ousmane Dembélé', TO_DATE('1997-05-15', 'YYYY-MM-DD'), 'Francez', 8);


INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES (12, 'Ion Popescu', TO_DATE('1990-04-15', 'YYYY-MM-DD'), 'Român', 1);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES(13, 'Mihai Andrei', TO_DATE('1993-09-22', 'YYYY-MM-DD'), 'Român', 1);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES(14, 'Alexandru Marinescu', TO_DATE('1988-12-08', 'YYYY-MM-DD'), 'Român', 1);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES(15, 'Cristian Neagu', TO_DATE('1995-06-03', 'YYYY-MM-DD'), 'Român', 1);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES(16, 'Andrei Stanescu', TO_DATE('1998-02-18', 'YYYY-MM-DD'), 'Român', 1);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES(17, 'Gabriel Ivan', TO_DATE('1994-11-11', 'YYYY-MM-DD'), 'Român', 1);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES(18, 'Raul Radu', TO_DATE('1997-08-29', 'YYYY-MM-DD'), 'Român', 1);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES(19, 'Victor Ionescu', TO_DATE('1991-07-14', 'YYYY-MM-DD'), 'Român', 1);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES(20, 'Daniel Georgescu', TO_DATE('1989-05-20', 'YYYY-MM-DD'), 'Român', 1);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES(21, 'Adrian Popa', TO_DATE('1996-03-25', 'YYYY-MM-DD'), 'Român', 1);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES(22, 'Radu Dumitru', TO_DATE('1993-10-01', 'YYYY-MM-DD'), 'Român', 1);


INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES (23, 'Kevin De Bruyne', TO_DATE('1991-06-28', 'YYYY-MM-DD'), 'Belgian', 2);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES (24, 'Raheem Sterling', TO_DATE('1994-12-08', 'YYYY-MM-DD'), 'Englez', 2);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES (25, 'Ruben Dias', TO_DATE('1997-05-14', 'YYYY-MM-DD'), 'Portughez', 2);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES (26, 'Phil Foden', TO_DATE('2000-05-28', 'YYYY-MM-DD'), 'Englez', 2);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES (27, 'Rodri', TO_DATE('1996-06-22', 'YYYY-MM-DD'), 'Spaniol', 2);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES (28, 'Bernardo Silva', TO_DATE('1994-08-10', 'YYYY-MM-DD'), 'Portughez', 2);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES (29, 'John Stones', TO_DATE('1994-05-28', 'YYYY-MM-DD'), 'Englez', 2);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES (30, 'Kyle Walker', TO_DATE('1990-05-28', 'YYYY-MM-DD'), 'Englez', 2);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES (31, 'Ilkay Gundogan', TO_DATE('1990-10-24', 'YYYY-MM-DD'), 'German', 2);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES (32, 'Gabriel Jesus', TO_DATE('1997-04-03', 'YYYY-MM-DD'), 'Brazilian', 2);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES (33, 'Ederson', TO_DATE('1993-08-17', 'YYYY-MM-DD'), 'Brazilian', 2);


INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES (34, 'Lorenzo Pellegrini', TO_DATE('1996-06-19', 'YYYY-MM-DD'), 'Italian', 3);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES (35, 'Jordan Veretout', TO_DATE('1993-03-01', 'YYYY-MM-DD'), 'Francez', 3);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES (36, 'Tammy Abraham', TO_DATE('1997-10-02', 'YYYY-MM-DD'), 'Englez', 3);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES (37, 'Nicolo Zaniolo', TO_DATE('1999-07-02', 'YYYY-MM-DD'), 'Italian', 3);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES (38, 'Rui Patricio', TO_DATE('1988-02-15', 'YYYY-MM-DD'), 'Portughez', 3);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES (39, 'Chris Smalling', TO_DATE('1989-11-22', 'YYYY-MM-DD'), 'Englez', 3);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES (40, 'Leonardo Spinazzola', TO_DATE('1993-03-25', 'YYYY-MM-DD'), 'Italian', 3);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES (41, 'Henrikh Mkhitaryan', TO_DATE('1989-01-21', 'YYYY-MM-DD'), 'Armean', 3);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES (42, 'Bryan Cristante', TO_DATE('1995-03-03', 'YYYY-MM-DD'), 'Italian', 3);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES (43, 'Roger Ibanez', TO_DATE('1998-09-04', 'YYYY-MM-DD'), 'Brazilian', 3);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES (44, 'Stephan El Shaarawy', TO_DATE('1992-10-27', 'YYYY-MM-DD'), 'Italian', 3);


INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES (45, 'Marius Pena', TO_DATE('1994-04-12', 'YYYY-MM-DD'), 'Român', 4);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES (46, 'Ionut Voicu', TO_DATE('1996-09-22', 'YYYY-MM-DD'), 'Român', 4);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES (47, 'Alexandru Stan', TO_DATE('1993-07-15', 'YYYY-MM-DD'), 'Român', 4);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES (48, 'Marian Dima', TO_DATE('1995-02-28', 'YYYY-MM-DD'), 'Român', 4);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES (49, 'Andrei Popescu', TO_DATE('1997-12-05', 'YYYY-MM-DD'), 'Român', 4);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES (50, 'Gabriel Gheorghiu', TO_DATE('1992-06-18', 'YYYY-MM-DD'), 'Român', 4);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES (51, 'Cristian Marin', TO_DATE('1996-01-14', 'YYYY-MM-DD'), 'Român', 4);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES (52, 'Vlad Negulescu', TO_DATE('1994-11-30', 'YYYY-MM-DD'), 'Român', 4);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES (53, 'Daniel Ionescu', TO_DATE('1993-08-25', 'YYYY-MM-DD'), 'Român', 4);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES (54, 'Radu Stanescu', TO_DATE('1995-03-08', 'YYYY-MM-DD'), 'Român', 4);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES (55, 'Mihai Andrei', TO_DATE('1998-05-17', 'YYYY-MM-DD'), 'Român', 4);


INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES  (56, 'Cristiano Ronaldo', TO_DATE('1985-02-05', 'YYYY-MM-DD'), 'Portughez', 5);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES (57, 'Karim Benzema', TO_DATE('1987-12-19', 'YYYY-MM-DD'), 'Francez', 5);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES (58, 'Luka Modric', TO_DATE('1985-09-09', 'YYYY-MM-DD'), 'Croat', 5);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES  (59, 'Sergio Ramos', TO_DATE('1986-03-30', 'YYYY-MM-DD'), 'Spaniol', 5);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES (60, 'Thibaut Courtois', TO_DATE('1992-05-11', 'YYYY-MM-DD'), 'Belgian', 5);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES   (61, 'Toni Kroos', TO_DATE('1990-01-04', 'YYYY-MM-DD'), 'German', 5);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES   (62, 'Casemiro', TO_DATE('1992-02-23', 'YYYY-MM-DD'), 'Brazilian', 5);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES (63, 'Vinicius Junior', TO_DATE('2000-07-12', 'YYYY-MM-DD'), 'Brazilian', 5);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES  (64, 'Marcelo', TO_DATE('1988-05-12', 'YYYY-MM-DD'), 'Brazilian', 5);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES  (65, 'Rodrygo', TO_DATE('2001-01-09', 'YYYY-MM-DD'), 'Brazilian', 5);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES (66, 'Ferland Mendy', TO_DATE('1995-06-08', 'YYYY-MM-DD'), 'Francez', 5);


INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES (67, 'Mohamed Salah', TO_DATE('1992-06-15', 'YYYY-MM-DD'), 'Egiptean', 6);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES  (68, 'Sadio Mane', TO_DATE('1992-04-10', 'YYYY-MM-DD'), 'Senegalez', 6);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES  (69, 'Virgil van Dijk', TO_DATE('1991-07-08', 'YYYY-MM-DD'), 'Olandez', 6);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES (70, 'Alisson Becker', TO_DATE('1992-10-02', 'YYYY-MM-DD'), 'Brazilian', 6);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES (71, 'Roberto Firmino', TO_DATE('1991-10-02', 'YYYY-MM-DD'), 'Brazilian', 6);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES (72, 'Trent Alexander-Arnold', TO_DATE('1998-10-07', 'YYYY-MM-DD'), 'Englez', 6);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES  (73, 'Fabinho', TO_DATE('1993-10-23', 'YYYY-MM-DD'), 'Brazilian', 6);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES (74, 'Jordan Henderson', TO_DATE('1990-06-17', 'YYYY-MM-DD'), 'Englez', 6);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES (75, 'Diogo Jota', TO_DATE('1996-12-04', 'YYYY-MM-DD'), 'Portughez', 6);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES  (76, 'Andrew Robertson', TO_DATE('1994-03-11', 'YYYY-MM-DD'), 'Scotian', 6);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES (77, 'Joel Matip', TO_DATE('1991-08-08', 'YYYY-MM-DD'), 'Camerunez', 6);


INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES (78, 'Pierre-Emerick Aubameyang', TO_DATE('1989-06-18', 'YYYY-MM-DD'), 'Gabonez', 7);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES (79, 'Bukayo Saka', TO_DATE('2001-09-05', 'YYYY-MM-DD'), 'Englez', 7);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES (80, 'Thomas Partey', TO_DATE('1993-06-13', 'YYYY-MM-DD'), 'Ghanez', 7);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES  (81, 'Emile Smith Rowe', TO_DATE('2000-07-28', 'YYYY-MM-DD'), 'Englez', 7);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES  (82, 'Kieran Tierney', TO_DATE('1997-06-05', 'YYYY-MM-DD'), 'Scotian', 7);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES  (83, 'Granit Xhaka', TO_DATE('1992-09-27', 'YYYY-MM-DD'), 'Elvetian', 7);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES  (84, 'Bernd Leno', TO_DATE('1992-03-04', 'YYYY-MM-DD'), 'German', 7);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES  (85, 'Alexandre Lacazette', TO_DATE('1991-05-28', 'YYYY-MM-DD'), 'Francez', 7);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES  (86, 'Gabriel Martinelli', TO_DATE('2001-06-18', 'YYYY-MM-DD'), 'Brazilian', 7);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES  (87, 'Ben White', TO_DATE('1997-10-08', 'YYYY-MM-DD'), 'Englez', 7);
INSERT INTO Jucator (ID_JUCATOR, nume, data_nasterii, nationalitate, ID_echipa)
VALUES (88, 'Hector Bellerin', TO_DATE('1995-03-19', 'YYYY-MM-DD'), 'Spaniol', 7);

--Insert Meci
INSERT INTO Meci (ID_MECI, Data_meci, scor, echipa_gazda, echipa_oaspete) 
VALUES (1, TO_DATE('2024-01-15', 'YYYY-MM-DD'), '2-1', 'FC Farul Constanta', 'Manchester City');
INSERT INTO Meci (ID_MECI, Data_meci, scor, echipa_gazda, echipa_oaspete)
VALUES (2, TO_DATE('2024-01-16', 'YYYY-MM-DD'), '1-0', 'AS Roma', 'ASC Otelul Galati');
INSERT INTO Meci (ID_MECI, Data_meci, scor, echipa_gazda, echipa_oaspete)
VALUES (3, TO_DATE('2024-01-17', 'YYYY-MM-DD'), '3-2', 'FC Real Madrid', 'Liverpool FC');
INSERT INTO Meci (ID_MECI, Data_meci, scor, echipa_gazda, echipa_oaspete)
VALUES (4, TO_DATE('2024-01-18', 'YYYY-MM-DD'), '0-0', 'Arsenal FC', 'FC Barcelona');
INSERT INTO Meci (ID_MECI, Data_meci, scor, echipa_gazda, echipa_oaspete) 
VALUES  (5, TO_DATE('2024-01-19', 'YYYY-MM-DD'), '2-1', 'Manchester City', 'AS Roma');
INSERT INTO Meci (ID_MECI, Data_meci, scor, echipa_gazda, echipa_oaspete)
VALUES  (6, TO_DATE('2024-01-20', 'YYYY-MM-DD'), '1-0', 'ASC Otelul Galati', 'FC Real Madrid');
INSERT INTO Meci (ID_MECI, Data_meci, scor, echipa_gazda, echipa_oaspete)
VALUES  (7, TO_DATE('2024-01-21', 'YYYY-MM-DD'), '2-3', 'Liverpool FC', 'Arsenal FC');
INSERT INTO Meci (ID_MECI, Data_meci, scor, echipa_gazda, echipa_oaspete)
VALUES  (8, TO_DATE('2024-01-22', 'YYYY-MM-DD'), '0-1', 'FC Barcelona', 'FC Farul Constanta');
INSERT INTO Meci (ID_MECI, Data_meci, scor, echipa_gazda, echipa_oaspete)
VALUES  (9, TO_DATE('2024-01-23', 'YYYY-MM-DD'), '3-2', 'FC Farul Constanta', 'FC Real Madrid');
INSERT INTO Meci (ID_MECI, Data_meci, scor, echipa_gazda, echipa_oaspete)
VALUES  (10, TO_DATE('2024-01-24', 'YYYY-MM-DD'), '1-1', 'Manchester City', 'Liverpool FC');
INSERT INTO Meci (ID_MECI, Data_meci, scor, echipa_gazda, echipa_oaspete) 
VALUES (11, TO_DATE('2024-01-25', 'YYYY-MM-DD'), '2-0', 'ASC Otelul Galati', 'Arsenal FC');
INSERT INTO Meci (ID_MECI, Data_meci, scor, echipa_gazda, echipa_oaspete) 
VALUES  (12, TO_DATE('2024-01-26', 'YYYY-MM-DD'), '4-3', 'FC Barcelona', 'FC Farul Constanta');
INSERT INTO Meci (ID_MECI, Data_meci, scor, echipa_gazda, echipa_oaspete)
VALUES (13, TO_DATE('2024-01-27', 'YYYY-MM-DD'), '1-2', 'FC Real Madrid', 'AS Roma');
INSERT INTO Meci (ID_MECI, Data_meci, scor, echipa_gazda, echipa_oaspete)
VALUES (14, TO_DATE('2024-01-28', 'YYYY-MM-DD'), '2-3', 'Arsenal FC', 'Manchester City');
INSERT INTO Meci (ID_MECI, Data_meci, scor, echipa_gazda, echipa_oaspete)
VALUES (15, TO_DATE('2024-01-29', 'YYYY-MM-DD'), '3-3', 'Liverpool FC', 'ASC Otelul Galati');
INSERT INTO Meci (ID_MECI, Data_meci, scor, echipa_gazda, echipa_oaspete) 
VALUES (16, TO_DATE('2024-01-30', 'YYYY-MM-DD'), '1-5', 'AS Roma', 'FC Barcelona');

--Insert Etapa


select * from Meci;
select * from Jucator;
select * from Grupa;
select * from Echipa;
select * from Antrenor;


