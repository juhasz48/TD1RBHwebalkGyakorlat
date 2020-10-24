CREATE TABLE Tanfolyam
(tkod INT,
ar INT,
tipus VARCHAR(30),
menevezes VARCHAR(100),
PRIMARY KEY(tkod));

CREATE TABLE Resztvevo
(tajszam CHAR(13),
nev VARCHAR(30),
lakcim VARCHAR(200),
PRIMARY KEY(tajszam));

CREATE TABLE Befizetes
(befizetes INT,
diak INT,
kurzus INT,
FOREIGN KEY(diak) REFERENCES Resztvevo,
FOREIGN KEY(kurzus) REFERENCES Tanfolyam);

