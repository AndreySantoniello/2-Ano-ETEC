declare
    num1 number := 9;
    num2 number := 2;
    num3 number := 5;
    temp number;
begin
    if num1 > num2 then
        temp := num1;
        num1 := num2;
        num2 := temp;
    end if;
    
    if num2 > num3 then
        temp := num2;
        num2 := num3;
        num3 := temp;
    end if;
    
    if num1 > num2 then
        temp := num1;
        num1 := num2;
        num2 := temp;
    end if;
    
    dbms_output.put_line('Números em ordem crescente:');
    dbms_output.put_line(num1);
    dbms_output.put_line(num2);
    dbms_output.put_line(num3);
end;
