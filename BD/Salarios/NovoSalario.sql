-- Novo salario minimo
declare 
	salario number := 1412;
	newsalario number;
begin
 	newsalario := salario + (salario * 0.25);
	dbms_output.put_line(newsalario);
end;