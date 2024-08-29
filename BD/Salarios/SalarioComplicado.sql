DECLARE
    valor_compra NUMBER := 50000; 
    entrada NUMBER;
    saldo NUMBER;
    parcelas_6 NUMBER;
    parcelas_12 NUMBER;
    parcelas_18 NUMBER;
    taxa_juros_6 NUMBER := 0.10; 
    taxa_juros_12 NUMBER := 0.15;
    taxa_juros_18 NUMBER := 0.20; 
    num_parcelas_6 NUMBER := 6;
    num_parcelas_12 NUMBER := 12;
    num_parcelas_18 NUMBER := 18;
    parcela_6 NUMBER;
    parcela_12 NUMBER;
    parcela_18 NUMBER;

BEGIN
    entrada := valor_compra * 0.20;
    
    saldo := valor_compra - entrada;
    
    parcela_6 := (saldo * (1 + taxa_juros_6)) / num_parcelas_6;
    
    parcela_12 := (saldo * (1 + taxa_juros_12)) / num_parcelas_12;
    
    parcela_18 := (saldo * (1 + taxa_juros_18)) / num_parcelas_18;
    
    DBMS_OUTPUT.PUT_LINE('Valor da compra: ' || valor_compra);
    DBMS_OUTPUT.PUT_LINE('Entrada (20%): ' || entrada);
    DBMS_OUTPUT.PUT_LINE('Saldo a financiar: ' || saldo);
    DBMS_OUTPUT.PUT_LINE('Valor das parcelas para 6 pagamentos: ' || ROUND(parcela_6, 2));
    DBMS_OUTPUT.PUT_LINE('Valor das parcelas para 12 pagamentos: ' || ROUND(parcela_12, 2));
    DBMS_OUTPUT.PUT_LINE('Valor das parcelas para 18 pagamentos: ' || ROUND(parcela_18, 2));
    
END;
