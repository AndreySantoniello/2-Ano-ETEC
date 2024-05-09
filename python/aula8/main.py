import os
os.system('cls')

l = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

elemento = 0

#1. Fazer um procedimento chamado ‘preenche_lista(l)’ que preencha uma lista passada por parâmetro até que seja digitado ponto (.).
#   preenche_lista(lista)
def preenche_lista(l) -> None :
    while (True) :
        i = str(input("Digite o numero que sera adicionado na lista: "))
        if i == '.' :
            print(l)
            break
        else :
            list.append(i)

# preenche_lista(list)



#2. Fazer um procedimento chamado ‘exibe_lista(l)’ que exiba os elementos da lista passada por parâmetro..
#	exibe_lista(lista)
def exibe_lista(l) -> None :
    print(l)

# exibe_lista(list)



#3. Sabemos que a função len() do Python retorna a quantidade de elementos de uma lista. 
# Faça uma função chamada ‘conta_elementos(l)’ que tenha o mesmo efeito (sem usar o len dentro dela).
#	x = conta_elementos(lista)
def conta_elementos(l) -> int :
    a = 0
    for i in l:
        a += 1
    return a

# print(f"A quntidade de elementos de uma lista eh : "conta_elementos(list))



#4. Sabemos que a função index() do Python retorna o índice do elemento passado por parâmetro. 
# Faça uma função parecida chamada ‘retorna_indice(elemento)’ com a melhoria de retornar -1 
# caso o elemento não seja encontrado..
#	x = retorna_indice(elemento)
def retorna_indice(l) -> int :
    elemento = int(input("Digite o numero que você quer saber a posição no vetor: "))
    for i in l:
        if elemento == l[i]:
            return i   
    
# print(f"O indice do elemento eh {retorna_indice(l)}")



#5. Sabemos que a função count() do Python retorna a quantidade de um elemento especifico. 
#   Faça uma função chamada ‘busca(l,elemento)’ que tenha o mesmo efeito.
#	x = busca(lista, elemento)

def busca(l : list) -> int :
    a = 0
    elemento = int(input("Digite o numero que você quer saber a quantidade: "))
    for i in range (0, len(l), 1):
        if elemento == l[i]: 
            a += 1
    return a

print(f"A quatidade do numero eh {busca(l)}")



#6. Fazer uma função chamada ‘conta_inteiro(l)’ que conte quantos elementos inteiros existem em uma lista.
#	x = conta_inteiro(lista)

def conta_inteiro(l) -> int :
    a = 0
    for i in l:
        if isinstance(elemento, int):
            a += 1
    return a

# print(f"A quantidade de inteiros eh {conta_inteiro(l)}")