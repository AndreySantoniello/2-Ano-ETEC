declare
    ano NUMBER := 2000;
    resultado VARCHAR2(30);
begin
    if (ano MOD 4 = 0 and ano MOD 100 <> 0) or (ano MOD 400 = 0) then
        resultado := 'Ano bissexto';
    else
        resultado := 'Não é ano bissexto';
    end if;

    dbms_output.put_line(resultado);
end;