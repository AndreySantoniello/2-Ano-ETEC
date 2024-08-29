DECLARE
    rm_aluno        NUMBER;
  	nota1           NUMBER;
  	nota2           NUMBER;
  	nota3           NUMBER;
  	trabalho1       NUMBER;
  	media           NUMBER;
  	faltas          NUMBER;
  	carga_hora      NUMBER;
  	situacao        VARCHAR2(10);
  	menor_nota      NUMBER;
  	maior_nota1     NUMBER;
  	maior_nota2     NUMBER;
BEGIN
    SELECT Nota1, Nota2, Nota3, Trabalho1, Faltas, Carga_Hora
  	INTO nota1, nota2, nota3, trabalho1, faltas, carga_Hora
  	FROM Notas
  	WHERE Rm_Alu = 1234;

	IF (nota1 <= nota2 AND nota1 <= nota3) THEN
    menor_nota := nota1;
    maior_nota1 := GREATEST(nota2, nota3);
    maior_nota2 := LEAST(GREATEST(nota2, nota3), GREATEST(nota2, nota3));
  ELSIF (nota2 <= nota1 AND nota2 <= nota3) THEN
    menor_nota := nota2;
    maior_nota1 := GREATEST(nota1, nota3);
    maior_nota2 := LEAST(GREATEST(nota1, nota3), GREATEST(nota1, nota3));
  ELSE
    menor_nota := nota3;
    maior_nota1 := GREATEST(nota1, nota2);
    maior_nota2 := LEAST(GREATEST(nota1, nota2), GREATEST(nota1, nota2));
  END IF;

    media := (maior_nota1 + maior_nota2 + trabalho1) / 3;

	UPDATE Notas
        SET Media = media
  		WHERE Rm_Alu = rm_aluno;

    IF media >= 6 AND faltas <= (carga_hora / 4) THEN
        dbms_output.put_line('APROVADO: ' || media);
	ELSIF faltas >= (0.25 * carga_hora) THEN
    	situacao := 'Reprovado por faltas';
  	ELSIF media < 4 THEN
    	situacao := 'Reprovado por nota';
  	ELSE
    	situacao := 'PP';
  	END IF;

	DBMS_OUTPUT.PUT_LINE('Situação do aluno: ' || situacao);
END;