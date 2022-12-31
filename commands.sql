
create table Posti (
    postitmp VARCHAR(50) NOT NULL,
    postinumero VARCHAR(5) PRIMARY KEY
);

create table Kayttaja (
    sahkoposti VARCHAR(50) PRIMARY KEY,
    salasana VARCHAR(50) NOT NULL
);

create table Asiakas (
    astunnus INT AUTO_INCREMENT PRIMARY KEY,
    postinumero VARCHAR(5) NOT NULL,
    sahkoposti VARCHAR(50) NOT NULL,
    etunimi VARCHAR(50) NOT NULL,
    sukunimi VARCHAR(50) NOT NULL,
    puh VARCHAR(15) NOT NULL,
    osoite VARCHAR(100) NOT NULL,
    FOREIGN KEY (postinumero) REFERENCES Posti(postinumero),
    FOREIGN KEY (sahkoposti) REFERENCES Kayttaja(sahkoposti)
);

create table Tilaus (
    tilausnro INT AUTO_INCREMENT PRIMARY KEY,
    astunnus INT NOT NULL,
    tilauspvm DATE NOT NULL,
    kantaAsiakkuus BOOLEAN DEFAULT false,
    maksutapa CHAR(2) NOT NULL,
    postitustapa VARCHAR(50) NOT NULL,
    FOREIGN KEY (astunnus) REFERENCES Asiakas(astunnus)
);

INSERT INTO Posti
VALUES ('90550', 'Kempele')



