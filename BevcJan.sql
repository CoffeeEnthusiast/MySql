CREATE TABLE Nepremičnina (
id INT,
Vrsta VARCHAR(20),
St_sob INT,
Lokacija VARCHAR(50),
Najem ENUM("JA", "NE") NOT NULL
);
CREATE TABLE Oseba (
id INT,
Ime VARCHAR(20),
Priimek VARCHAR(20)
);
DESC Oseba;
RENAME TABLE Oseba TO Stranka;
ALTER TABLE Nepremičnina ADD COLUMN Cena DECIMAL(10,2);	
ALTER TABLE Stranka ADD COLUMN Davcna_st INT AFTER Priimek;
ALTER TABLE Stranka RENAME COLUMN Ime TO Name;
ALTER TABLE Stranka MODIFY COLUMN id BIGINT;
ALTER TABLE Stranka DROP COLUMN id;
ALTER TABLE Stranka MODIFY COLUMN Name ENUM("YES", "NO");
DROP TABLE Stranka;
CREATE TABLE Oseba (
id INT,
Ime VARCHAR(20),
Priimek VARCHAR(20),
Davcna_st INT
);
CREATE TABLE Bivanje (
Datum_od DATE,
Najem ENUM("DA", "NE") NOT NULL,
ID_NEP_TK INT
);
ALTER TABLE Bivanje ADD COLUMN ID_OS_TK INT;