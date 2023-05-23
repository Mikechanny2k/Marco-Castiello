CREATE TABLE Giocatore (
    IDGiocatore INTEGER PRIMARY KEY,
    Nome VARCHAR(50) NOT NULL,
    PunteggioMax INTEGER NOT NULL
);

CREATE TABLE Seme (
    IDSeme INTEGER PRIMARY KEY,
    Nome VARCHAR(50) NOT NULL,
    Costo INTEGER NOT NULL,
    Punteggio INTEGER NOT NULL
);

CREATE TABLE Prato (
    IDPrato INTEGER PRIMARY KEY,
    IDGiocatore INTEGER NOT NULL,
    Nome VARCHAR(50) NOT NULL,
    NumeroSemi INTEGER NOT NULL,
    FOREIGN KEY (IDGiocatore) REFERENCES Giocatore(IDGiocatore)
);

CREATE TABLE Pianta (
    IDPianta INTEGER PRIMARY KEY,
    IDSeme INTEGER NOT NULL,
    IDPrato INTEGER NOT NULL,
    Crescita INTEGER NOT NULL,
    Annaffiatura INTEGER NOT NULL,
    FOREIGN KEY (IDSeme) REFERENCES Seme(IDSeme),
    FOREIGN KEY (IDPrato) REFERENCES Prato(IDPrato)
);

CREATE TABLE Acquisto (
    IDAcquisto INTEGER PRIMARY KEY,
    IDGiocatore INTEGER NOT NULL,
    IDSeme INTEGER NOT NULL,
    Data DATE NOT NULL,
    FOREIGN KEY (IDGiocatore) REFERENCES Giocatore(IDGiocatore),
    FOREIGN KEY (IDSeme) REFERENCES Seme(IDSeme)
);

CREATE TABLE Login (
    IDLogin INTEGER PRIMARY KEY,
    NomeUtente VARCHAR(50) NOT NULL,
    Password VARCHAR(50) NOT NULL
);

CREATE TABLE Modalita (
    IDModalita INTEGER PRIMARY KEY,
    NomeModalita VARCHAR(50) NOT NULL
);


INSERT INTO Giocatore (IDGiocatore, Nome, PunteggioMax)
VALUES (1, 'Marco', 10000);

INSERT INTO Giocatore (IDGiocatore, Nome, PunteggioMax)
VALUES (2, 'Francesco', 10000);

INSERT INTO Giocatore (IDGiocatore, Nome, PunteggioMax)
VALUES (3, 'Matteo', 10000);

INSERT INTO Seme (IDSeme, Nome, Costo, Punteggio)
VALUES (1, 'BombaCiliegia', 20,100);

INSERT INTO Seme (IDSeme, Nome, Costo, Punteggio)
VALUES (2, 'Fiorituradighiaccio', 15, 70);

INSERT INTO Seme (IDSeme, Nome, Costo, Punteggio)
VALUES (3, 'Girasole', 5, 20);

INSERT INTO Prato (IDPrato, IDGiocatore, Nome, NumeroSemi)
VALUES (1, 1, 'Giorno', 3);

INSERT INTO Prato (IDPrato, IDGiocatore, Nome, NumeroSemi)
VALUES (2, 2, 'Notte', 2);

INSERT INTO Prato (IDPrato, IDGiocatore, Nome, NumeroSemi)
VALUES (3, 3, 'Piscina', 5);

INSERT INTO Pianta (IDPianta, IDSeme, IDPrato, Crescita, Annaffiatura)
VALUES (1, 1, 1, 50, 3);

INSERT INTO Pianta (IDPianta, IDSeme, IDPrato, Crescita, Annaffiatura)
VALUES (2, 2, 2, 70, 2);

INSERT INTO Pianta (IDPianta, IDSeme, IDPrato, Crescita, Annaffiatura)
VALUES (3, 3, 3, 60, 4);

INSERT INTO Acquisto (IDAcquisto, IDGiocatore, IDSeme, Data)
VALUES (1, 1, 1, '2023-05-02');

INSERT INTO Acquisto (IDAcquisto, IDGiocatore, IDSeme, Data)
VALUES (2, 2, 2, '2023-05-06');

INSERT INTO Acquisto (IDAcquisto, IDGiocatore, IDSeme, Data)
VALUES (3, 3, 3, '2023-05-09');

INSERT INTO Login (IDLogin, NomeUtente, Password)
VALUES (1, 'utente1', 'password1');

INSERT INTO Login (IDLogin, NomeUtente, Password)
VALUES (2, 'utente2', 'password2');

INSERT INTO Login (IDLogin, NomeUtente, Password)
VALUES (3, 'utente3', 'password3');

INSERT INTO Modalita (IDModalita, NomeModalita)
VALUES (1, 'Modalita1');

INSERT INTO Modalita (IDModalita, NomeModalita)
VALUES (2, 'Modalita2');

INSERT INTO Modalita (IDModalita, NomeModalita)
VALUES (3, 'Modalita3');


UPDATE Giocatore
SET PunteggioMax = 15000
WHERE IDGiocatore = 1;

