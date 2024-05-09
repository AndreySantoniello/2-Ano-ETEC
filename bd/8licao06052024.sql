--Crie uma lista que mostre o código do cliente, seu nome no intervalo de código de 200 a 300 (inclusive). Classifique pelo código de forma crescente
SELECT 	cod_clie,
	   	nome_clie FROM cliente
	   	WHERE cod_clie >= 200 AND cod_clie <= 300
		ORDER BY cod_clie ASC;

--Mostre os pedidos que tenham código até 101 e após 140 (inclusive), classifique pelo código do pedido de forma crescente.
SELECT 	* 
    	FROM pedido
		WHERE num_pedido <= 101 OR num_pedido >= 140
    	ORDER BY cod_clie ASC;

-- Exiba os vendedores que possuem comissão A e B.

SELECT 	*
		FROM vendedor
		WHERE comissao = 'A' OR comissao = 'B';

-- Mostre os produtos que não possuem unidade de medida igual a: Metro, Litro e Grama.

SELECT 	*
		FROM produto
		WHERE	unidade != 'M' AND
				unidade != 'L' AND
				unidade != 'G';

-- Mostrar o nome do cliente que comece com a letra R
SELECT 	nome_clie
		FROM cliente
		WHERE nome_clie LIKE 'R%';

-- Mostrar o nome do cliente que termine com a letra “o”.
SELECT 	nome_clie
		FROM cliente
		WHERE nome_clie LIKE '%o';


-- Mostrar os clientes(nome) que tenha a letra “a” em seu nome.
SELECT 	nome_clie
		FROM cliente
		WHERE nome_clie LIKE '%a%';

-- Crie um relatório que mostre os nomes dos cliente com 4 dígitos

SELECT 	nome_clie
		FROM cliente
		WHERE nome_clie LIKE '____';

-- Crie um relatório que exiba o nome do cliente que a segunda posição seja a letra “e”

SELECT 	nome_clie
		FROM cliente
		WHERE nome_clie LIKE '_e%';


-- Crie um relatório que exiba o nome do cliente que a penúltima posição seja a letra “i”
SELECT 	nome_clie
		FROM cliente
		WHERE nome_clie LIKE '%i_';

-- Liste o nome do cliente que tenha como inicial a letra “J”
SELECT	nome_clie
		FROM cliente
		WHERE nome_clie LIKE 'J%';

-- Quais clientes possuem as letras “e” e “o” em seu nome?
SELECT	nome_clie
		FROM cliente
		WHERE 	nome_clie LIKE '%e%' AND
				nome_clie LIKE '%o%';

-- Exiba o nome dos clientes que não tenham a letra “u” em seu nome.
SELECT 	nome_clie
		FROM cliente
		WHERE nome_clie NOT LIKE '%u%';

-- Quais clientes possuem as letras “a” ou “e” em seu nome?
SELECT 	nome_clie
		FROM cliente
		WHERE 	nome_clie LIKE '%a%' OR
				nome_clie LIKE '%e%';