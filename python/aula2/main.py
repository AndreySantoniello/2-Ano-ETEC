# COMANDOS PYTHON - Aula 2

# comentario de varias linhas 

"""
Comentario
de
varis
linhas

"""
'''
Comentario
de
varis
linhas

'''

# Saida de dados 

print("Boa tarde!")

# Entrada de dados - input()

valor1 = input("Digite o primeiro número 1 : ")
valor2 = input("Digite o primeiro número 2 : ")

print(valor1, valor2)

# Variaveis em Python não são tipadas

x = 10 
print(x, type(x))

x = 10.5 
print(x, type(x))

x = '2bi' 
print(x, type(x))

x = True 
print(x, type(x))

# Tipos de Varialvel no Python

"""
 int = inteiro
 float = real
 str = string | texto
 bool = Lógico
""" 

# Casting - Ato de mudar o tipo da variavel via codigo

"""
 int()
 float()
 str()
 bool()
"""

x = 25
x = str(x)
print(x, type(x))

# O input sempre lê os dados como string

valor1 = int(input("Digite o primeiro número 1 : "))
valor2 = int(input("Digite o primeiro número 2 : "))

resposta = valor1 + valor2

print("resposta: ", resposta)

# Formatações

texto = 'Edson'
valor = 23
salario = 1234.56
filhos = True

print("Boa tarde" + texto)
print("Boa tarde" , texto)
print("Valor = " + valor)
print("Valor = " , valor)
print("Nome {}".format(texto, valor))
print("Nome {} {}".format(texto, valor))
print("Nome {1} {0}".format(texto, valor))
print("Nome {0} - {1} - {2} - {3}".format(texto, valor, salario, filhos))
print("Nome {}".format(salario))
print("Nome {0:.3f}".format(salario))
print("Nome {0:.4f}".format(salario))
print("Nome {0:10.2f}".format(salario))
print("Nome {0:8.2f}".format(salario))
print("Valor: {}".format(valor))
print("Valor: {0:10.2f}".format(valor))
print("Valor: {0:5f}".format(valor))
print("Valor: {0:05f}".format(valor))

# Formatação com print(f)

print("Oi")
print('Oi')

nome = "Edson de Oliveira"
idade = 49
salario = 45645.65

print(f'Nome: {nome} Idade: {idade} Salario: {salario}\n')
print(f'Nome: {nome} \nIdade: {idade} \nSalario: {salario}\n')
print(f"""
    Nome: {nome} 
    Idade: {idade} 
    Salario: {salario}\n
""")

# Operador Aritmético

v1 = 10
v2 = 3 
resp = 10 + 3 # Adição
print(f"\nResposta: {resp}\n")
resp = 10 - 3 # Subtração
print(f"Resposta: {resp}\n")
resp = 10 * 3 # Multiplicação
print(f"Resposta: {resp}\n")
resp = 10 / 3 # Divisão normal
print(f"Resposta: {resp}\n")
resp = 10 // 3 # Divisão inteira
print(f"Resposta: {resp}\n")
resp = 10 ** 3 # Exponenciação
print(f"Resposta: {resp}\n")
resp = 10 % 3.5 # Módulo
print(f"Resposta: {resp}\n")
resp = 10 % 3.7 # Módulo
print(f"Resposta: {resp}\n")
