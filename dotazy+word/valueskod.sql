INSERT INTO Mesto (
mesto,
skratka
)
VALUES
('Zilina', 'ZA'),
('Bratislava', 'BA'),
('Kysucke Nove Mesto', 'KM'),
('Cadca', 'CA'),
('Hlohovec', 'HC'),
('Kosice', 'KE'),
('Poprad', 'PD'),
('Nitra', 'NR'),
('Trnava', 'TT'),
('Trencin', 'TN');

INSERT INTO znacka_motorky(
znacky_motorky
)
VALUES
('Suzuki'),
('Yamaha'),
('Aprilia'),
('Ducati'),
('Honda'),
('BMW'),
('Triumph'),
('Yuki'),
('Harley Davidson'),
('KTM');

INSERT INTO last_faktura(
doprava,
cena,
pocet_produktov,
datum,
platca_dph,
druh_platby
)
VALUES
('Kurier-GLS', '100', '2', '2008-05-28', 'ano', 'hotovost' ),
('Osobne prevzatie', '450', '3', '2016-08-15', 'nie', 'hotovost'),
('Kurier-SPS', '80', '1', '2020-12-12', 'nie', 'platba online' ),
('Zasielkovna', '5000', '4', '2016-05-15', 'ano', 'kartou' ),
('Posta', '123', '1', '2020-01-06', 'nie', 'bankovy prevod' ),
('Kurier-GLS', '1790', '1', '2017-09-23', 'ano', 'hotovost' ),
('Zasielkovna', '452', '5', '2001-01-07', 'nie', 'bankovy prevod' ),
('Posta', '69', '2', '2016-11-12', 'ano', 'kartou' ),
('Kurier-SPS', '3990', '1', '2020-05-28', 'nie', 'kartou' ),
('Zasielkovna', '20', '1', '2019-07-14', 'nie', 'platba online' );

INSERT INTO produkty(
znacka_motorky,
vybava_oblecenie,
udrzba,
dostupnost,
zlavy
)
VALUES
('1', '1', '0', '1', '20%'),
('2', '0', '0', '1', '0%'),
('3', '1', '1', '1', '10%'),
('4', '0', '1', '1', '40%'),
('5', '1', '1', '1', '0%'),
('6', '0', '1', '1', '0%'),
('7', '1', '1', '1', '0%'),
('8', '0', '0', '1', '30%'),
('9', '1', '0', '1', '20%'),
('10', '0', '1', '1', '5%');

INSERT INTO motoobchod(
meno,
vznik,
mesto,
produkty
)
VALUES
('Motokomplex', '2005-06-01', '1', '1'),
('Motorrado', '2005-06-01', '2', '2'),
('Emix', '2005-06-01', '3', '3'),
('Zone', '2005-06-01', '4', '4'),
('Maraka', '2005-06-01', '5', '5'),
('Saraka', '2005-06-01', '6', '6'),
('Fujara', '2005-06-01', '7', '7'),
('Makarakasakara', '2005-06-01', '8', '8'),
('MX', '2005-06-01', '9', '9'),
('Silnosmotorkos', '2005-06-01', '10', '10');

INSERT INTO zamestnanci(
meno,
priezvisko,
pozicia,
datum_nastupu,
vyplata,
dni_dovolenky,
id_obchodu
)
VALUES
('Maria', 'Terezia', 'upratovacka', '2009-05-13', '900', '10', '1'),
('Fero', 'Dusiak', 'predavac', '2016-01-28', '1000', '15', '1'),
('Jozko', 'Faco', 'dokladac', '2020-09-29', '800', '3', '1'),
('Gertruda', 'Opalova', 'spravkyna', '2015-12-04', '1200', '10', '2'),
('Macka', 'Onakova', 'balicka', '2012-10-08', '1000', '15', '2'),
('Stefan', 'Raduz', 'predavac', '2013-09-07', '900', '3', '2'),
('Rene', 'Maly', 'mechanik', '2016-06-04', '1500', '5', '5'),
('Kamila', 'Kuzmova', 'poradkyna', '2020-09-29', '1800', '7', '5'),
('Sakala', 'Mukolo', 'balic', '2012-10-08', '1000', '8', '5'),
('Paprika', 'Cervena', 'mechanik', '2020-09-29', '1200', '9', '5');

INSERT INTO uzivatelia(
login,
heslo,
posledny_nakup,
registracia,
ulica,
psc,
posledna_faktura,
id_obchodu
)
VALUES
('majlo', 'heslo', '2016-06-04', '2021-01-15', 'Randomacka', '01007', '1', '1'),
('miasd', 'password', '2016-01-28', '2021-01-15', 'Muslimova', '45621', '2', '1'),
('pakalo', 'tazkeheslo', '2021-01-15', '2021-01-15', 'Kremikova', '97854', '3', '1'),
('ferci', '1234', '2005-06-01', '2021-01-15', 'Osikova', '64521', '4', '2'),
('msalo', 'asdfgqr', '2005-06-01', '2021-01-15', 'Masna', '97823', '5', '2'),
('sedlak', 'dfghwrt', '2005-06-01', '2021-01-15', 'Hviezdoslavova', '12345', '6', '2'),
('hacker69', 'ycvhae', '2005-06-01', '2016-06-04', 'Neviemaka', '63454', '7', '3'),
('trava420', 'jafg', '2005-06-01', '2021-01-15', 'Nenapada', '96385', '8', '3'),
('humburak', 'hjadf', '2005-06-01', '2021-01-15', 'Mauz', '75314', '9', '5'),
('terezos500', 'tjwqrtthg', '2005-06-01', '2016-01-28', 'Ziadna', '45623', '10', '5');



