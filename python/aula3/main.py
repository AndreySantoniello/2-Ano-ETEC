# Decisão - Aula 3

# Como deixar a saida mais bonita

import os
os.system("cls")

# if - simples (sem o else)

n = int(input('Digite um numero: '))

if n < 0: 
    n = -n 

print("Numero: ", n)

# if - composto (com o else)

n = int(input('Digite um numero: '))

if n < 0:
    print(f"Numero {n} eh negativo") 
else:
    print(f"Numero {n} eh positivo") 

# if - encadeado 

n = int(input('Digite um numero: '))

if n < 0:
    print(f"Numero {n} eh negativo") 
else:
    if n > 0:
        print("Positivo")
    else:
        print("Nulo")

# if - elif

n = int(input('Digite um numero: '))

if n < 0:
    print(f"Numero {n} eh negativo") 
elif n > 0:
    print("Positivo")
else:
    print("Nulo")

# Match Case

print("""
      
1 - Execicio 1
2 - Execicio 2
3 - Execicio 3
4 - Execicio 4 

""")
opicao = int(input("Escolha uma das opicoes acima: ")) 
match opicao:
    case 1:
        print("\nExecutando o exercicio 1\n")
    case 2:
        print("\nExecutando o exercicio 2\n")
    case 3:
        print("\nExecutando o exercicio 3\n")
    case 4:
        print("\nExecutando o exercicio 4\n")
    case _:
        print("\nOpicao invalida\n")
    