-- FEITO POR GABRIEL ARAÚJO LIMA < RM: 231125 > E ANDREY NARDY < RM: 231126 >

-- criar uma tabela chamada atualiza_preco com as seguintes colunas: cd_prod, preco_anterior, preco_novo, dt_atualiza
CREATE TABLE ATUALIZA_PRECO(
    COD_PROD NUMERIC(4) NOT NULL,
    PRECO_ANTERIOR NUMERIC(8,2) NOT NULL,
    PRECO_NOVO NUMERIC(8,2) NOT NULL,
    DT_ATUALIZA DATE NOT NULL,
    FOREIGN KEY (COD_PROD) REFERENCES PRODUTO(COD_PROD)
);

--criar um bloco anônimo que demonstre o total de venda deu m determinado produto.
DECLARE
    CODIGO_PRODUTO NUMERIC(4) := 25;
    TOTAL_VENDA NUMERIC(10,2);
BEGIN
    SELECT SUM(p.VAL_UNIDADE * i.QUANT)
    INTO TOTAL_VENDA
    FROM PRODUTO p
    JOIN ITEM_PEDIDO i ON p.COD_PROD = i.COD_PROD
    JOIN PEDIDO pe ON i.NUM_PEDIDO = pe.NUM_PEDIDO
    WHERE p.COD_PROD = CODIGO_PRODUTO;

    DBMS_OUTPUT.PUT_LINE('Total de vendas do produto com código ' || CODIGO_PRODUTO || ': R$ ' || TOTAL_VENDA);
END;

-- cria rum bloco anônimo que a partir do código do produto e de um valor percentual de aumento gere uma atualização do preço do produto na tabela produto e gere um controle deste aumento na tabela atualiza_preco.
DECLARE 
    CODIGO_PROD NUMERIC(4) := 25;
    PERCENTUAL_AUMENTO INTEGER := 25; 
    PRECO_ANTIGO NUMERIC(8,2);
    PRECO_NOVO NUMERIC(8,2);
BEGIN 
    SELECT VAL_UNIDADE
    INTO PRECO_ANTIGO
    FROM PRODUTO
    WHERE COD_PROD = CODIGO_PROD;

    PRECO_NOVO := PRECO_ANTIGO + (PRECO_ANTIGO * (PERCENTUAL_AUMENTO / 100.0));

    INSERT INTO ATUALIZA_PRECO (COD_PROD, PRECO_ANTERIOR, PRECO_NOVO, DT_ATUALIZA)
    VALUES (CODIGO_PROD, PRECO_ANTIGO, PRECO_NOVO, SYSDATE);

	UPDATE PRODUTO
    SET VAL_UNIDADE = PRECO_NOVO
    WHERE COD_PROD = CODIGO_PROD;
END;

SELECT * FROM PRODUTO;
SELECT * FROM ATUALIZA_PRECO;