declare
	dinheiro number := 50000;
	parcela number;
begin 
	parcela := dinheiro / 10;
	parcela := parcela + (parcela * 0.03);
	dbms_output.put_line(parcela);
end;