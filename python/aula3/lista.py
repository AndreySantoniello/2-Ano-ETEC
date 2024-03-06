import os
import time

os.system("cls")

while True:
    print(
        """
        
    1 - Execicio 1
    2 - Execicio 2
    3 - Execicio 3
    4 - Execicio 4 
    5 - Execicio 5 
    6 - Execicio 6 
    7 - Execicio 7 
    8 - Execicio 8 
    9 - Execicio 9
    10 - Execicio 10 
    0 - Sair
    """
    )
    opicao = int(input("Escolha uma das opicoes acima: "))
    match opicao:
        case 0:
            print("Saindo")
            time.sleep(1)
            break
        case 1:

            def exec1():
                a = int(input("Digite dois valores e descubra o maior: "))
                b = int(input())
                return a > b and a or b

            print("\n", exec1(), "\n")
        case 2:

            def exec2():
                a = int(
                    input(
                        "Digite seu ano de nascensa e descubra se você pode votar ou não: "
                    )
                )
                return a > 2006 and "\nNA Pode\n" or "\nPode\n"

            print("\n", exec2(), "\n")
        case 3:

            def exec3():
                a = int(input("Digite a senha: "))
                return a == 1234 and "\nACESSO PERMITIDO\n" or "\nACESSO NEGADO\n"

            print("\n", exec3(), "\n")

            def exec1(a, b):
                return a > b and True or False

        case 4:
            a = int(input("Digite o numero de maas compradas: "))
            if a >= 12:
                a *= 0.25
            else:
                a *= 0.30
            print(f"\nO valor de a ser pago pelas macas eh {a}\n")
        case 5:
            a = int(input("\nDigite tres valores e os ordene em ordem crescente: "))
            b = int(input())
            c = int(input())
            d = [a, b, c]
            d.sort()
            print(f"\n {d} \n")
        case 6:
            a = float(input("Digite a sua altura: "))
            b = int(input("Digite o seu sexo sendo 1 - masculino e 2 - feminino: "))
            if b == 1:
                a = (72.7 * a) - 58
            elif b == 2:
                a = (62.1 * a) - 44.7
            else:
                print("\nVoce eh um helicoptero de combate com duas metralhadoras\n")
            print("\nO seu peso ideal eh {0:0.3}".format(a))
        case 7:
            a = int(input("\nColoque o numero de lados do poligono: "))
            l = float(input("\nColoque a medida dos lados do poligono: "))
            if l < 3:
                print("NAO EH UM POLIGONO")
            elif l > 5:
                print("POLIGONO NAO IDENTIFICADO")
            elif l > 3 and l < 5:
                o = float(input("\nColoque a medida do apotema do poligono: "))
                p = l * a
                area = (p / 2) * o
                if l == 3:
                    print("Triangulo area = ", area)
                elif l == 4:
                    print("Quadrado area = ", area)
                elif l == 5:
                    print("Pentagono area = ", area)
        case 8:
            a = int(input("\nDigite tres valores e descubra o maior: "))
            b = int(input("\n"))
            c = int(input("\n"))
            if a > b and a > c:
                print("\n", a)
            elif b > c and b > a:
                print("\n", b)
            elif c > a and c > b:
                print("\n", c)
        case 9:
            a = float(input("\nColoque as medidas dos lados do lados do triangulo: "))
            b = int(input("\n"))
            c = int(input("\n"))
            if a == b and a == c:
                print("\nTriangulo Equilatero")
            elif b == c and b != a:
                print("\nTriangulo Isoscele")
            elif b != c and b == a:
                print("\nTriangulo Isoscele")
            elif c != a and c != b:
                print("\nTriangulo Escaleno")
        case 10:
            a = float(input("Enter the length of side a: "))
            b = float(input("Enter the length of side b: "))
            c = float(input("Enter the length of side c: "))
            if a == 90 and b == 90 and c == 90:
                print("\nTriangulo Acutangulo")
            elif b == c and b != a:
                print("\nTriangulo Retangulo")
            elif b != c and b == a:
                print("\nTriangulo Obtusangulo")
