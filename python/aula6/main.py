"""
1. Dado um número, exibir a tabuada no formato abaixo sendo multiplicada até 10.
Tabuada:
5 x 1 = 5
5 x 2 = 10
5 x 3 = 15
5 x 4 = 20
5 x 5 = 25
5 x 6 = 30
5 x 7 = 35
5 x 8 = 40
5 x 9 = 45
5 x 10 = 50

2. Dados 5 caracteres pelo usuário, informar quantas vogais (maiúsculas ou minúsculas) foram digitadas:
e
5
f
8
U
2 vogais

Fazer um menu que contemple estes dois exercicios, caso seja digitado 0 sai do programa 
(não perguntar se quer continuar ou não, o menu tem a opção de sair). Para travar a tela digite 'input("digite algo para continuar")'.
Se digitar uma opcao invalida, informar.
0 - Sair
1 - Tabuada
2 - Vogais
Escolha: _
"""

import os
import time
os.system("cls")

    # Andrey Nardy #

while True:
    opicao = input("""
    0 - sair
    1 - tabuada
    2 - Vogais
    Escolha: 
""")
    match(opicao):
        case "0":
            break
        case "1":
            a = int(input("Digite o numero que voce quer saber a tabuada: "))
            for i in range(10):
                i = i + 1
                r = a * i
                print(f"{a} x {i} = {r}")
            input("digite algo para continuar")               
        case "2":
            for i in range(5):
                n = input("Digite: ")                
                if n == "a" or n == "e" or n == "i" or n == "o" or n == "u" or n == "A" or n == "E" or n == "I" or n == "O" or n == "U":
                    r += 1
            print(f"{r} vogais")
            input("digite algo para continuar")
        case _:
            print("Opição invalida")
            input("digite algo para continuar")