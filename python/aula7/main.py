v = [45, -89, 32, -12, 33]

# Exec 1: 
def exibe_primeiro_elemento(vet : list) -> int:
    return v[0]

# Exec extra: 
def exibe_elemento_expecifico(vet : list, index : int) -> int:
    return vet[index]

# Exec 2: 
def exibe_negativos(vet : list) -> None:
    for i in range(0, 5, 1):
        if v[i] < 0:
            print(v[i])

# Exec 3: 
def soma_elementos(vet : list) -> None:
    x = 0
    for i in range(0, 5, 1):
        x = x + v[i]
    print(x)

# Exec 4: 
def media_elementos(vet : list) -> float:
    x = 0 
    for i in range(0, 5, 1):
        x = x + v[i]
    x = x / 5
    return x

# Exec 5: 
def exibe_impares(vet : list) -> None:
    for i in range(0, 5, 1):
        if v[i] % 2 == 1:
            print(v[i])

# Exec 6:
def exibe_primeiro_ultimo(vet : list) -> None:
    print(v[0])
    print(v[4])

# Exec 7:
def exibe_indice_impar(vet : list) -> None:
    for i in range(5):
        if (i % 2 == 1):
            print(v[i])

# Exec 8:
def exibe_igual(vet : list, n : int) -> bool:
    for item in v:
        if ( v == item):
            return True
    
    return False

# Exec 9:
def ordena(vet : list) -> None:
    aux = None
    for k in range(1, 5, 1):
        for j in range(0, 5 - 1, 1):
            if vet[j] > vet[j + 1]:
                aux = vet[j]
                vet[j] = vet[j + 1]
                vet[j + 1] = aux
    print(str(vet))

#** Lista de exercícios Nível 2 **#

v1 = [41, 72, 39, 4, 35]
v2 = [0, 0, 0, 0, 0]

# Exec 10:
def copia(v1 : list, v2 : list) -> None:
    for i in range(5):
        v2[i] = v1[i]
    print("v1 = ", v1)
    print("v2 = ", v2)

# Exec 11:
def inverte_vetor(v1 : list, v2 : list) -> None:
    x = 4

    for i in range(5):
        v2[i] = v1[i]

    for i in range(5):
        v2[x] = v1[i]
        x -= 1
    print("v1 = ", str(v1))
    print("v2 = ", str(v2))


# Exec 12:
def ordenar_vetor_crescente(v1 : list) -> None:
    aux = None
    for k in range(1, 5, 1):
        for j in range(0, 5 - 1, 1):
            if v1[j] > v1[j + 1]:
                aux = v1[j]
                v1[j] = v1[j + 1]
                v1[j + 1] = aux
    print("v1 = ", str(v1))

# Exec 13:
def ordenar_vetor_decrescente(v1 : list) -> None:
    for i in range(5 - 1):
        for j in range(5 - i - 1):
            if v1[j] < v1[j + 1]:
                temp = v1[j]
                v1[j] = v1[j + 1]
                v1[j + 1] = temp
    print("v1 = ", str(v1))

# Exec 14:
tipo = 'c'
def ordenar_vetor(v1 : list, tipo : str) -> None:
    match(tipo.lower()):
        case 'c':
            ordenar_vetor_crescente(v1, v2)
        case 'd':
            ordenar_vetor_decrescente(v1, v2)
        case _:
            print("Selecione uma opição valida!!!")



# Exec 15:
def separa_pares_impares(vetor) -> None:
    pares = []
    impares = []
    
    for i in range(5):
        if vetor[i] % 2 == 0:    
            pares += [vetor[i]]
        else:
            impares += [vetor[i]]
    
    print(pares + impares)

# Exec 16:
def conta_acima_media(v1 : list) -> int:
    media = 0
    cont = 0
    for item in v1:
        media += 1

    media = media / len(v1)

    for item in v1:
        if item > media:
            cont += 1
    return cont

# Exec 17:
def maior_elemento(v1 : list) -> int:
    maior = -99999999
    for i in v1:
        if i > maior:
            maior = i
    return maior

while True:
    opcao = str(input(
"""
Digita um exercicio ai calabreso:
1 - Fazer um programa que exiba o primeiro elemento do vetor.
2 - Fazer um programa que exiba somente os numeros negativos contidos no vetor.
3 - Fazer um programa que exiba a soma dos elementos do vetor
4 - Fazer um programa que exiba a media dos elementos do vetor
5 - Fazer um programa que exiba na tela os numeros impares contidos no vetor
6 - Fazer um programa que exiba na tela o primeiro e o ultimo elemento do vetor
7 - Fazer um programa que exiba os elementos cujos indices sejam pares.
8 - Fazer uma programa que exiba True caso um valor passado por parametro exista no vetor, senao False
9 - Fazer um programa que ordene os elementos do vetor.
10 - Fazer um programa que copie os elementos do vetor v1 em v2.
11 - Fazer um programa que copie os elementos invertidos do vetor v1 em v2, ou seja, o primeiro elemento de v1 sera o ultimo de v2
12 - Fazer um programa que ordene de forma crescente o vetor.
13 - Fazer um programa que ordene de forma decrescente o vetor
14 - Fazer um programa que baseado na forma ('c' para crescente ou 'd' para decrescente) ordene na ordem solicitada.
15 -  Fazer um programa que coloque nas posicoes mais a esquerda os valores pares e mais a direita os impares
16 - Fazer um programa que retorne quantos elementos do vetor estao acima da media.
17 - Fazer uma programa que retorne o elemento de maior valor do vetor.
0 - Sair\n
=> """))
    match(opcao):
        case 'Extra':
            index = int(input("Digite a posição que você quer acessar do vetor: "))
            exibe_elemento_expecifico(v)
        case '1':
            exibe_primeiro_elemento(v)
        case '2':
            exibe_negativos(v)
        case '3':
            soma_elementos(v)
        case '4':
            media_elementos(v)
        case '5':
            exibe_impares(v)
        case '6':
            exibe_primeiro_ultimo(v)            
        case '7':
            exibe_indice_impar(v)
        case '8':
            exibe_igual(v)
        case '9':
            ordena(v)
        case '10':
            copia(v1, v2)
        case '11':
            inverte_vetor(v1, v2)
        case '12':
            ordenar_vetor_crescente(v1)
        case '13':
            ordenar_vetor_decrescente(v1)
        case '14':
            ordenar_vetor(v1, tipo)
        case '15':
            separa_pares_impares(v1)
        case '16':
            conta_acima_media(v1)
        case '17':
            maior_elemento(v1)
        case '0':
            break
        case _:
            print("Selecione uma opção valida!!!")