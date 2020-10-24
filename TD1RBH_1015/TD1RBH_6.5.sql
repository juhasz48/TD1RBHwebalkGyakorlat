CREATE TABLE termekek
(tkod INT PRIMARY KEY,
nev VARCHAR(50) NOT NULL,
ear INT CHECK (ear > 0),
kategoria CHAR(20));

INSERT INTO termekek VALUES (1,'lapat',2000,'K1');
INSERT INTO termekek VALUES (2,'sepru',4000,'K1');
INSERT INTO termekek VALUES (3,'mosogato gel',1500,'K2');
INSERT INTO termekek VALUES (4,'szappan',1000,'K2');
INSERT INTO termekek VALUES (5,'pohar',2400,'K3');

/*Nem fogja végrehajtani:*/
INSERT INTO termekek VALUES (1,'lapat',2000,'K1'); /*létező kulcs*/
INSERT INTO termekek VALUES (8,NULL,4000,'K1'); /*üres név*/
INSERT INTO termekek VALUES (15,'pohar A',0,'K3'); /*hibás ár*/
INSERT INTO termekek VALUES (15,"pohar A",20,'K3'); /*hibás szöveg konstans*/
INSERT INTO termekek VALUES (15,'pohar A','20','K3'); /*hibás szám*/
