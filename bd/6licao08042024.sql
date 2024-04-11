-- Exemplos:

--Crie um relatório que mostre o nome do cliente, seu código, desde que estejam entre o código de 130 a 234.

--versão tradicional:
select NOME_CLIE, COD_CLIE from CLIENTE where COD_CLIE > 130 and COD_CLIE < 234;

--versão operador de bd:
select NOME_CLIE, COD_CLIE from CLIENTE where COD_CLIE between 131 and 233;



--Crie um relatório que mostre o nome do cliente, seu código, desde que estejam entre o código de 130 a 234 (inclusive)

--versão tradicional:
select NOME_CLIE, COD_CLIE from CLIENTE where COD_CLIE >= 130 and COD_CLIE <= 234;

--versão operador de bd:
select NOME_CLIE, COD_CLIE from CLIENTE where COD_CLIE between 130 and 234;

--usando negação - not
select NOME_CLIE, COD_CLIE from CLIENTE where COD_CLIE not between 130 and 234;



--Mostre os clientes que moram nos estados de: SP, RJ e MG.

--versão tradicional:
select NOME_CLIE, UF from CLIENTE where UF = 'SP' or UF = 'RJ' or UF = 'MG';

-- versão operador de bd:
select NOME_CLIE, UF from CLIENTE where UF in ('SP','RJ','MG');

-- usando negação - not
select NOME_CLIE, UF from CLIENTE where UF not in ('SP','RJ','MG');




--Nomes que possuam a letra a em qualquer posição
select * from CLIENTE where NOME_CLIE like '%a%';

--Nomes que iniciam com a letra
select * from CLIENTE where  NOME_CLIE like 'a%' or NOME_CLIE like 'A%'

--Nomes que terminam com a letra a
select * from CLIENTE where NOME_CLIE like '%a';

--Nomes com 5 posições
select * from CLIENTE where NOME_CLIE like '____';

--Nomes que possuem a letra a na 2a posição
select * from CLIENTE where NOME_CLIE like '_a%';


--Exercícios:

--Crie uma lista que mostre o código do cliente, seu nome no intervalo de código de 200 a 300 (inclusive). 
--Classifique pelo código de forma crescente
 
select NOME_CLIE, COD_CLIE from CLIENTE where COD_CLIE >= 200 and COD_CLIE <= 300;

--Mostre os pedidos que tenham código até 101 e após 140 (inclusive), classifique pelo código do pedido de forma crescente.

SELECT * FROM PEDIDO WHERE NUM_PEDIDO >= 101 AND NUM_PEDIDO <= 140;

--Exiba os vendedores que possuem comissão A e B.

SELECT * FROM VENDEDOR WHERE COMISSAO = 'A' OR COMISSAO = 'B';

--Mostre os produtos que não possuem unidade de medida igual a: Metro, Litro e Grama.

SELECT * FROM PRODUTO WHERE UNIDADE != 'M' AND UNIDADE != 'L' AND UNIDADE != 'G';

--Mostrar o nome do cliente que comece  com a letra R

SELECT * FROM CLIENTE WHERE NOME_CLIE LIKE 'R%' OR NOME_CLIE LIKE 'r%';

--Mostrar o nome do cliente que termine com a letra “o”.

SELECT * FROM CLIENTE WHERE NOME_CLIE LIKE '%o' OR NOME_CLIE LIKE '%O';

--Mostrar os clientes(nome) que tenha a letra “a” em seu nome.

SELECT * FROM CLIENTE WHERE NOME_CLIE LIKE '%A%' OR NOME_CLIE LIKE '%a%';

--Crie um relatório que mostre os nomes dos cliente com 4 dígitos

SELECT * FROM CLIENTE WHERE NOME_CLIE LIKE '____';

--Crie um relatório que exiba o nome do cliente que a segunda posição seja a letra “e”

SELECT * FROM CLIENTE WHERE NOME_CLIE LIKE '_e%';

--Crie um relatório que exiba o nome do cliente que a penúltima posição seja a letra “i”

SELECT * FROM CLIENTE WHERE NOME_CLIE LIKE '%i_';

--Liste o nome do cliente que tenha como inicial a letra “J”

SELECT * FROM CLIENTE WHERE NOME_CLIE LIKE 'J%';

--Quais clientes possuem a letra ”o” em seu nome?

SELECT * FROM CLIENTE WHERE NOME_CLIE LIKE '%o%';

--Quais clientes possuem as letras “e” e “o” em seu nome?

SELECT * FROM CLIENTE WHERE NOME_CLIE LIKE '%o%' OR NOME_CLIE LIKE '%e%';

--Exiba o nome dos clientes que não tenham a letra “u” em seu nome.

SELECT * FROM CLIENTE WHERE NOME_CLIE NOT LIKE '%u%';

--Quais clientes possuem as letras “a” ou “e” em seu nome?

SELECT * FROM CLIENTE WHERE NOME_CLIE LIKE '%a%' OR NOME_CLIE LIKE '%e%';
