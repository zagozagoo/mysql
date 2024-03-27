CREATE TABLE Espacos (
    ID_Espaco INT AUTO_INCREMENT PRIMARY KEY,
    Nome_Espaco VARCHAR(50)
);

CREATE TABLE Esportes (
    ID_Esporte INT AUTO_INCREMENT PRIMARY KEY,
    Nome_Esporte VARCHAR(50)
);

CREATE TABLE Reserva (
    ID_Reserva INT AUTO_INCREMENT PRIMARY KEY,
    ID_Espaco INT,
    ID_Esporte INT,
    ID_Equipe INT,
    Horario DATETIME,
    Dia DATE,
    FOREIGN KEY (ID_Espaco) REFERENCES Espacos(ID_Espaco) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (ID_Esporte) REFERENCES Esportes(ID_Esporte) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Alunos (
    ID_Aluno INT AUTO_INCREMENT PRIMARY KEY,
    Nome_Aluno VARCHAR(50),
    Status ENUM('Ativo', 'Inativo'),
    ID_Equipe INT,
    FOREIGN KEY (ID_Equipe) REFERENCES Equipe(ID_Equipe) ON UPDATE CASCADE ON DELETE SET NULL
);

CREATE TABLE Equipe (
    ID_Equipe INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(50)
);

INSERT INTO Espacos (Nome_Espaco) VALUES ('Espaço 1'), ('Espaço 2'), ('Espaço 3'), ('Espaço 4'), ('Espaço 5');

INSERT INTO Esportes (Nome_Esporte) VALUES ('Vôlei'), ('Futebol'), ('Tênis'), ('Basquete'), ('Ginástica');

INSERT INTO Equipe (Nome) VALUES ('Topal'), ('Jesma'), ('Kwilton');

INSERT INTO Alunos (Nome_Aluno, Status, ID_Equipe) VALUES 
('Murylo', 'Ativo', 1),
('Mavi', 'Ativo', 2),
('Nicolas', 'Ativo', 1),
('Zago', 'Ativo', 3),
('André', 'Ativo', 3),
('Jessica', 'Ativo', 1),
('Isa', 'Ativo', 2),
('Yasmin C', 'Ativo', 3),
('Maria C', 'Ativo', 2),
('Marlon', 'Inativo', 2),
('Michel', 'Inativo', 1),
('Ana K', 'Ativo', 2),
('João M', 'Inativo', 2);
