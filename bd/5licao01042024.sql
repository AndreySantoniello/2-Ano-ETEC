-- Eliminando dados 

Sintaxe: delete from nome_tabela - apaga todas as linhas de uma tabela

Sintaxe: delete from nome_tabela where condição - apaga linha ou linhas específicas

DQL - Data Query Language - Consultas de dados

Sintaxe: select * from nome_tabela - todas as colunas e linhas
Sintaxe: select nome_col1,nome_col2……, nome_coln from nome_tabela
		mostra colunas específicas e todas as linhas
Sintaxe: select * from nome_tabela where condição
              select nome_col1, nome_col2,....., nome_coln from nome_tabela where condição
  filtra linhas

-- Exemplos:

Listar o conteúdo da tabela cliente
select * from cliente;
Listar o nome do cliente e o estado onde ele mora.
select nome_clie, uf from cliente
Listar os clientes que moram no estado de São Paulo.
select nome_clie, uf from cliente where uf = 'SP'
Mostre os vendedores (nome) e salário que são da comissão A.
select nome_ven, salario_fixo, comissao from vendedor where comissao = 'A'

-- Apelidando colunas

select nome_ven "nome do vendedor", salario_fixo salário, comissao comissão
from vendedor where comissao = 'A'

-- Classificando colunas

Asc = crescente - default
Desc = decrescente

…….order by nome_coluna padrão [asc ou desc]

select nome_clie, uf from cliente where uf = 'SP' order by nome_clie
select nome_clie, uf from cliente where uf = 'SP' order by nome_clie desc
select nome_clie, uf from cliente where uf = 'SP' order by 1
select * from cliente where uf = 'SP' order by 1
select uf, nome_clie from cliente order by 1, 2

-- Exercicios para terminar

SELECT * FROM CLIENTE
    
SELECT * FROM VENDEDOR
SELECT * FROM PEDIDO
SELECT * FROM PRODUTO
SELECT * FROM ITEM_PEDIDO

SELECT NOME_VEN, SALARIO_FIXO FROM VENDEDOR 

SELECT * FROM PRODUTO WHERE COD_PROD < 132;

SELECT NOME_CLIE FROM CLIENTE WHERE COD_CLIE = 130;
SELECT NOME_CLIE FROM CLIENTE WHERE COD_CLIE = 290;
SELECT NOME_CLIE FROM CLIENTE WHERE COD_CLIE = 234;

SELECT * FROM PEDIDO WHERE COD_VEN = 250;

SELECT * FROM PEDIDO WHERE NUM_PEDIDO = 104;

SELECT NOME_CLIE FROM CLIENTE WHERE COD_CLIE > 100 AND UF /= 'SP';