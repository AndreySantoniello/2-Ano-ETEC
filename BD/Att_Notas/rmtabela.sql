CREATE TABLE Notas(
	Rm_Alu NUMERIC(4),
    Nome_Disciplina VARCHAR(20),
    Nota1 NUMERIC(2,1),
    Nota2 NUMERIC(2,1),
    Nota3 NUMERIC(2,1),
    Trabalho1 NUMERIC(2,1),
    Media NUMERIC(2,1),
    Faltas NUMERIC(3),
    Carga_Hor NUMERIC(3)
);

INSERT INTO Notas (Rm_Alu, Nome_Disciplina, Nota1, Nota2, Nota3, Trabalho1, Media, Faltas, Carga_Hor)
VALUES
(1234, 'Matemática', 8.5, 7.0, 9.0, 8.0, 8.1, 2, 60);

INSERT INTO Notas (Rm_Alu, Nome_Disciplina, Nota1, Nota2, Nota3, Trabalho1, Media, Faltas, Carga_Hor)
VALUES
(5678, 'História', 7.0, 6.5, 8.0, 7.5, 7.3, 4, 60);

INSERT INTO Notas (Rm_Alu, Nome_Disciplina, Nota1, Nota2, Nota3, Trabalho1, Media, Faltas, Carga_Hor)
VALUES
(9101, 'Física', 9.0, 8.0, 8.5, 9.0, 8.6, 1, 60);

INSERT INTO Notas (Rm_Alu, Nome_Disciplina, Nota1, Nota2, Nota3, Trabalho1, Media, Faltas, Carga_Hor)
VALUES
(1121, 'Química', 6.5, 7.0, 6.0, 7.5, 6.7, 3, 60);

INSERT INTO Notas (Rm_Alu, Nome_Disciplina, Nota1, Nota2, Nota3, Trabalho1, Media, Faltas, Carga_Hor)
VALUES
(3141, 'Biologia', 8.0, 7.5, 7.5, 8.0, 7.8, 0, 60);

