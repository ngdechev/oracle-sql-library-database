-- Създавам таблица за „Kniga“

CREATE TABLE Kniga (
Ime CHAR(50),
Godina DATE,
Janr CHAR(40),
M_Avtor INTEGER,
Zaglavie VARCHAR2(20),
kniga_id INTEGER ,
Avtor_Avtor_id INTEGER ,
Availability CHAR(1),
PRIMARY KEY (kniga_id),
FOREIGN KEY (M_Avtor) REFERENCES Avtor (Avtor_id),
FOREIGN KEY (Avtor_Avtor_id) REFERENCES Avtor (Avtor_id)
);
 
-- Създавам таблица за „Avtor“

CREATE TABLE Avtor (
Avtor_id INTEGER,
Ime VARCHAR2(30),
PRIMARY KEY (Avtor_id)
);
 
-- Създавам таблица за „Chitatel“

CREATE TABLE Chitatel (
Ime VARCHAR2(30),
Telefon VARCHAR2(10),
Chitatel_id INTEGER,
PRIMARY KEY (Chitatel_id)
);
 
-- Създавам таблица за „Izdatelstvo“

CREATE TABLE Izdatelstvo (
Izdatelstvo_id INTEGER,
PRIMARY KEY (Izdatelstvo_id)
);
 
-- Създавам таблица за „Slujitel“

CREATE TABLE Slujitel (
Ime VARCHAR2(30),
Poziciq VARCHAR2(30),
Telefon VARCHAR2(10),
Slujitel_id INTEGER,
PRIMARY KEY (Slujitel_id)
);
 
-- Създавам таблица за „Zaemane“

CREATE TABLE Zaemane (
Zaemane_Date DATE,
Zaemane_id INTEGER,
Srok DATE,
Slujitel_Slujitel_id INTEGER,
Chitatel_Chitatel_id INTEGER,
PRIMARY KEY (Zaemane_id ),
FOREIGN KEY (Slujitel_Slujitel_id) REFERENCES Avtor (Slujitel_id),
FOREIGN KEY (Chitatel_Chitatel_id) REFERENCES Avtor (Chitatel_id)
);