CREATE TABLE Ort(
   Ort_ID int NOT NULL,
   Staat varchar (25),
   Land varchar (25),
   PRIMARY KEY (Ort_ID),
   CONSTRAINT land_unique UNIQUE (Land)
);

CREATE TABLE Berg(
   Ort_ID int REFERENCES Ort ON DELETE CASCADE,
   Berg_ID int NOT NULL,
   Name varchar(35) NOT NULL,
   Hoehe int NOT NULL,
   PRIMARY KEY (Berg_ID),
   CONSTRAINT berg_unique UNIQUE (Name)
);

CREATE SEQUENCE seq_berg
   MINVALUE 1
   START WITH 1
   INCREMENT BY 1;

CREATE OR REPLACE TRIGGER tr_berg
   BEFORE INSERT ON Berg
   REFERENCING NEW AS NEW
   FOR EACH ROW
     BEGIN
       SELECT seq_berg.nextval
       INTO :new.Berg_ID
       FROM dual;
     END;
/

CREATE TABLE Hotel(
   Ort_ID int NOT NULL REFERENCES Ort ON DELETE CASCADE,
   Hotel_ID int NOT NULL,
   Name varchar(35) NOT NULL,
   Strasse varchar(30) NOT NULL,
   PLZ int NOT NULL,
   Ort varchar(30) NOT NULL,
   PRIMARY KEY (Hotel_ID)
);

CREATE TABLE Skigebiet(
   Ort_ID int REFERENCES Ort ON DELETE CASCADE,
   Gebiet_ID int NOT NULL,
   Bezeichnung varchar(25) NOT NULL,
   PRIMARY KEY (Gebiet_ID),
   CONSTRAINT gebiet_unique UNIQUE (Bezeichnung)
);

CREATE TABLE Lift(
   Gebiet_ID int REFERENCES Skigebiet ON DELETE CASCADE,
   Lift_ID int NOT NULL,
   Typ varchar (20) NOT NULL,
   Anzahl int NOT NULL,
   PRIMARY KEY (Gebiet_ID, Lift_ID)
);

CREATE TABLE Piste(
  Gebiet_ID int NOT NULL REFERENCES Skigebiet ON DELETE CASCADE,
  Pisten_ID int NOT NULL,
  Typ varchar(15) NOT NULL,
  Strecke int NOT NULL,
  PRIMARY KEY (Gebiet_ID, Pisten_ID)
);

CREATE TABLE Rettung(
   Rettung_ID int NOT NULL,
   Typ varchar(35) NOT NULL,
   TelefonNr varchar(20) NOT NULL,
   Verwaltung_ID int DEFAULT NULL,
   PRIMARY KEY (Rettung_ID),
   FOREIGN KEY (Verwaltung_ID) REFERENCES Rettung(Rettung_ID)
);

CREATE TABLE Einsatz(
   Gebiet_ID int NOT NULL REFERENCES Skigebiet ON DELETE CASCADE,
   Rettung_ID int NOT NULL REFERENCES Rettung ON DELETE CASCADE,
   PRIMARY KEY (Gebiet_ID, Rettung_ID)
);

CREATE TABLE Skischule(
   Gebiet_ID int NOT NULL REFERENCES Skigebiet ON DELETE CASCADE,
   Skischule_ID int NOT NULL,
   Name varchar(50) NOT NULL,
   Strasse varchar(50) NOT NULL,
   PLZ int NOT NULL,
   Ort varchar(30) NOT NULL,
   CONSTRAINT name_unique UNIQUE (Name),
   CONSTRAINT strasse_unique UNIQUE (Strasse),
   PRIMARY KEY (Skischule_ID)
);

CREATE SEQUENCE seq_schule
   MINVALUE 1
   START WITH 1
   INCREMENT BY 1;

CREATE OR REPLACE TRIGGER tr_schule
   BEFORE INSERT ON Skischule
   REFERENCING NEW AS NEW
   FOR EACH ROW
     BEGIN
       SELECT seq_schule.nextval
       INTO :new.Skischule_ID
       FROM dual;
     END;
/

CREATE TABLE MitarbeiterIn(
   Skischule_ID int NOT NULL REFERENCES Skischule ON DELETE CASCADE,
   SVNr int NOT NULL,
   Vorname varchar(20) NOT NULL,
   Nachname varchar(20) NOT NULL,
   Beschaeftigung varchar(20) NOT NULL,
   PRIMARY KEY (SVNr)
);

CREATE TABLE Lehrer(
   SVNr int NOT NULL REFERENCES MitarbeiterIn ON DELETE CASCADE,
   Lehrer_ID int NOT NULL,
   Ausbildung varchar(25) NOT NULL,
   PRIMARY KEY (Lehrer_ID)
   FOREIGN KEY (SVNr) REFERENCES MitarbeiterIn(SVNr)
);

CREATE TABLE Buerokraft(
   SVNr int NOT NULL REFERENCES MitarbeiterIn ON DELETE CASCADE,
   Buerokraft_ID int NOT NULL,
   PRIMARY KEY (Buerokraft_ID)
   FOREIGN KEY (SVNr) REFERENCES MitarbeiterIn(SVNr)
);
