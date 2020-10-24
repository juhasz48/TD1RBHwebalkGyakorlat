CREATE TABLE GYARTO
(adoszam INT PRIMARY KEY,
nev VARCHAR(30),
telephely VARCHAR(100),
irsz VARCHAR(4),
varos VARCHAR(40),
utca VARCHAR(100));

CREATE TABLE TERMEK
(tkod INT PRIMARY KEY,
nev VARCHAR(50),
ear INT CHECK(ear > 0),
gyarto INT REFERENCES GYARTO);

CREATE TABLE EGYSEGEK
(aru INT REFERENCES TERMEK,
db INT CHECK(db > 0));

CREATE TABLE ALKATRESZ
(akod INT PRIMARY KEY,
nev VARCHAR(50));

CREATE TABLE KOMPONENS
(termek INT REFERENCES TERMEK,
alkatresz INT REFERENCES ALKATRESZ);


