declare
    salario numeric(8,2) := 32000.00;
    desconto_1 numeric(8,2) := 196.71;
    desconto_2 numeric(8,2) := 300.18;
    salario_final numeric(8,2);
begin
    if salario <= 1313.69 then
        salario_final := salario;
    elsif salario <= 2625.12 then
        salario_final := salario - (salario - 1313.69) * 0.15;
    else
        salario_final := salario - desconto_2;
    end if;
    dbms_output.put_line('Salário líquido: ' || salario_final);
end;
