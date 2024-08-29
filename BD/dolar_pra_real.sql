declare
	dinheiro constant number := 45;
begin
	dbms_output.put_line('DINHEIRO EM REAIS: ' || dinheiro * 5.10);
end;