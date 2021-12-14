CREATE DATABASE motoobchodis;
USE motoobchodis;

CREATE TABLE `Mesto`(
id_mesta INT SIGNED AUTO_INCREMENT,
PRIMARY KEY(id_mesta),
mesto VARCHAR(50),
skratka VARCHAR(10)
);

CREATE TABLE `znacka_motorky`(
id_znacky INT SIGNED AUTO_INCREMENT,
PRIMARY KEY (id_znacky),
znacky_motorky VARCHAR(50)
);

CREATE TABLE `last_faktura`(
id_faktura INT SIGNED AUTO_INCREMENT,
PRIMARY KEY(id_faktura),
doprava VARCHAR (100),
cena DOUBLE,
pocet_produktov INT (8),
datum DATE,
platca_dph VARCHAR (100),
druh_platby VARCHAR (50)
);

CREATE TABLE `produkty`(
id_motoobchod INT SIGNED AUTO_INCREMENT,
PRIMARY KEY (id_motoobchod),
znacka_motorky INT (8),
vybava_oblecenie BOOLEAN,
udrzba BOOLEAN,
dostupnost BOOLEAN,
zlavy VARCHAR(50),
KEY (znacka_motorky),
FOREIGN KEY (znacka_motorky) REFERENCES znacka_motorky(id_znacky)
);

CREATE TABLE `motoobchod`(
id INT SIGNED AUTO_INCREMENT,
PRIMARY KEY(id),
meno VARCHAR(50),
vznik DATE,
mesto INT(9),
produkty INT(10),
KEY (mesto),
FOREIGN KEY (mesto) REFERENCES mesto (id_mesta),
KEY (produkty),
FOREIGN KEY (produkty) REFERENCES produkty (id_motoobchod)
);

CREATE TABLE `zamestnanci`(
id INT SIGNED AUTO_INCREMENT,
PRIMARY KEY(id),
meno VARCHAR(50),
priezvisko VARCHAR(50),
pozicia VARCHAR(50),
datum_nastupu DATE,
vyplata DOUBLE,
dni_dovolenky INT(10),
id_obchodu INT(10),
KEY (id_obchodu),
FOREIGN KEY (id_obchodu) REFERENCES motoobchod(id)
);


CREATE TABLE `uzivatelia`(
id INT SIGNED AUTO_INCREMENT,
PRIMARY KEY(id),
login VARCHAR(50),
heslo VARCHAR(50),
posledny_nakup DATE,
registracia DATE,
ulica VARCHAR(50),
psc VARCHAR(10),
posledna_faktura INT(10),
id_obchodu INT(10),
KEY (id_obchodu),
FOREIGN KEY (id_obchodu) REFERENCES motoobchod(id),
KEY (posledna_faktura),
FOREIGN KEY (posledna_faktura) REFERENCES last_faktura(id_faktura)
);
