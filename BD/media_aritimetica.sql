DECLARE
    a NUMBER := 7;
    b NUMBER := 4;
    c NUMBER := 10;
    d NUMBER := 8;
    media NUMBER;
BEGIN
    media := (a + b + c + d) / 4;
    
    IF media > 7 THEN
        dbms_output.put_line('APROVADO: ' || media);
    ELSE
        dbms_output.put_line('REPROVADO: ' || media);
    END IF;
END;