-- Exemplos:

--Crie um relat�rio que mostre o nome do cliente, seu c�digo, desde que estejam entre o c�digo de 130 a 234.

--vers�o tradicional:
select NOME_CLIE, COD_CLIE from CLIENTE where COD_CLIE > 130 and COD_CLIE < 234;

--vers�o operador de bd:
select NOME_CLIE, COD_CLIE from CLIENTE where COD_CLIE between 131 and 233;



--Crie um relat�rio que mostre o nome do cliente, seu c�digo, desde que estejam entre o c�digo de 130 a 234 (inclusive)

--vers�o tradicional:
select NOME_CLIE, COD_CLIE from CLIENTE where COD_CLIE >= 130 and COD_CLIE <= 234;

--vers�o operador de bd:
select NOME_CLIE, COD_CLIE from CLIENTE where COD_CLIE between 130 and 234;

--usando nega��o - not
select NOME_CLIE, COD_CLIE from CLIENTE where COD_CLIE not between 130 and 234;



--Mostre os clientes que moram nos estados de: SP, RJ e MG.

--vers�o tradicional:
select NOME_CLIE, UF from CLIENTE where UF = 'SP' or UF = 'RJ' or UF = 'MG';

-- vers�o operador de bd:
select NOME_CLIE, UF from CLIENTE where UF in ('SP','RJ','MG');

-- usando nega��o - not
select NOME_CLIE, UF from CLIENTE where UF not in ('SP','RJ','MG');




--Nomes que possuam a letra a em qualquer posi��o
select * from CLIENTE where NOME_CLIE like '%a%';

--Nomes que iniciam com a letra
select * from CLIENTE where  NOME_CLIE like 'a%' or NOME_CLIE like 'A%'

--Nomes que terminam com a letra a
select * from CLIENTE where NOME_CLIE like '%a';

--Nomes com 5 posi��es
select * from CLIENTE where NOME_CLIE like '____';

--Nomes que possuem a letra a na 2a posi��o
select * from CLIENTE where NOME_CLIE like '_a%';


--Exerc�cios:

--Crie uma lista que mostre o c�digo do cliente, seu nome no intervalo de c�digo de 200 a 300 (inclusive). 
--Classifique pelo c�digo de forma crescente
 
select NOME_CLIE, COD_CLIE from CLIENTE where COD_CLIE >= 200 and COD_CLIE <= 300;

--Mostre os pedidos que tenham c�digo at� 101 e ap�s 140 (inclusive), classifique pelo c�digo do pedido de forma crescente.

SELECT * FROM PEDIDO WHERE NUM_PEDIDO >= 101 AND NUM_PEDIDO <= 140;

--Exiba os vendedores que possuem comiss�o A e B.

SELECT * FROM VENDEDOR WHERE COMISSAO = 'A' OR COMISSAO = 'B';

--Mostre os produtos que n�o possuem unidade de medida igual a: Metro, Litro e Grama.

SELECT * FROM PRODUTO WHERE UNIDADE != 'M' AND UNIDADE != 'L' AND UNIDADE != 'G';

--Mostrar o nome do cliente que comece  com a letra R

SELECT * FROM CLIENTE WHERE NOME_CLIE LIKE 'R%' OR NOME_CLIE LIKE 'r%';

--Mostrar o nome do cliente que termine com a letra �o�.

SELECT * FROM CLIENTE WHERE NOME_CLIE LIKE '%o' OR NOME_CLIE LIKE '%O';

--Mostrar os clientes(nome) que tenha a letra �a� em seu nome.

SELECT * FROM CLIENTE WHERE NOME_CLIE LIKE '%A%' OR NOME_CLIE LIKE '%a%';

--Crie um relat�rio que mostre os nomes dos cliente com 4 d�gitos

SELECT * FROM CLIENTE WHERE NOME_CLIE LIKE '____';

--Crie um relat�rio que exiba o nome do cliente que a segunda posi��o seja a letra �e�

SELECT * FROM CLIENTE WHERE NOME_CLIE LIKE '_e%';

--Crie um relat�rio que exiba o nome do cliente que a pen�ltima posi��o seja a letra �i�

SELECT * FROM CLIENTE WHERE NOME_CLIE LIKE '%i_';

--Liste o nome do cliente que tenha como inicial a letra �J�

SELECT * FROM CLIENTE WHERE NOME_CLIE LIKE 'J%';

--Quais clientes possuem a letra �o� em seu nome?

SELECT * FROM CLIENTE WHERE NOME_CLIE LIKE '%o%';

--Quais clientes possuem as letras �e� e �o� em seu nome?

SELECT * FROM CLIENTE WHERE NOME_CLIE LIKE '%o%' OR NOME_CLIE LIKE '%e%';

--Exiba o nome dos clientes que n�o tenham a letra �u� em seu nome.

SELECT * FROM CLIENTE WHERE NOME_CLIE NOT LIKE '%u%';

--Quais clientes possuem as letras �a� ou �e� em seu nome?

SELECT * FROM CLIENTE WHERE NOME_CLIE LIKE '%a%' OR NOME_CLIE LIKE '%e%';
