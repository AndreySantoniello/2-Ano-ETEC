declare
    valor_1 number := 3;
    valor_2 number := 4;
    valor_3 number := 5;
begin
    if valor_1 <= 0 or valor_2 <= 0 or valor_3 <= 0 then
        DBMS_OUTPUT.PUT_LINE('Não é um triângulo :(');
    ELSif valor_1 >= valor_2 + valor_3 or valor_2 >= valor_1 + valor_3 or valor_3 >= valor_1 + valor_2 then
        DBMS_OUTPUT.PUT_LINE('Não é um triângulo :(');
    else
        if valor_1 = valor_2 and valor_1 = valor_3 then
            DBMS_OUTPUT.PUT_LINE('Equilátero bem pirokas :)');
        ELSif valor_1 = valor_2 or valor_1 = valor_3 or valor_2 = valor_3 then
            DBMS_OUTPUT.PUT_LINE('Isósceles bem pirokas :)');
        else
            DBMS_OUTPUT.PUT_LINE('Escaleno bem pirokas :)');
        end if;
    end if;
end;
