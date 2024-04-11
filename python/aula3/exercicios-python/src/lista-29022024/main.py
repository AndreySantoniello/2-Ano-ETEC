from time import sleep

opt = None

def exec1(a,b):
  return a > b and a or b

def exec2(a):
  return (a <= "2008") or (a <= 2008) and "Pode Votar" or "Não Pode"

def exec3(a):
  return a == 1234 and "ACESSO PERMITIDO" or "ACESSO NEGADO"

def exec4(a):
  if a > 12:
    a *= 0.25
  else:
    a *= 0.30

  return a

def exec5(a,b,c):
  if (a != b and a != c) and (b != c):
    d = [a,b,c]
    d.sort()
    return d
  else:
    return "Existe um numero igual a outro"

def exec6(a, b):
  if a:
    return (72.2 * b) - 58
  else:
    return (62.1 * b) - 44.7
  
def exec7(a, b):
  if a == 3:
    ar = (b ** 2) * (3 ** 0.5) / 4
    return f"TRIANGULO, Area: {ar} cm2"
  elif a == 4:
    ar = b ** 2
    return f"QUADRADO, Area: {ar} cm2"
  elif a == 5:
    return "PENTAGONO"
  else:
    return "Número de lados não suportado para cálculo de área."
  
def exec8(a, b):
    if a < 3:
        return("NÃO É UM POLÍGONO")
    elif a == 3:
        ar = (b ** 2) * (3 ** 0.5) / 4
        return(f"TRIÂNGULO, Área: {ar} cm²")
    elif a == 4:
        ar = b ** 2
        return(f"QUADRADO, Área: {ar} cm²")
    elif a == 5:
        return("PENTÁGONO")
    elif a > 5:
        return("POLÍGONO NÃO IDENTIFICADO")
    else:
        return("Número de lados não suportado para cálculo de área.")

def exec9(a,b,c):
  d = [a,b,c]
  return max(d)

def exec10(a,b,c):
  if a == b and a == c:
    return "equilatero"
  elif a!= b and a!= c and b!= c:
    return "escaleno"
  elif a == b or a == c or b == c:
    return "isosceles"
  
def exec11(a,b,c):
  if a == b and a == c:
    return "acutanlgo"
  elif a!= b and a!= c and b!= c:
    return "retangulo"
  elif a == b or a == c or b == c:
    return "obtusangulo"
  
while(True):
  print("""
  1 - Retornar numero maior
  2 - Pode votar
  3 - Acesso permitido
  4 - Macas
  5 - Ordenar os numeros
  6 - Peso ideal
  7 - Poligono
  8 - Poligono++
  9 - Maior numero
  10 - Equilatero, escaleno e isoceles
  11 - Obtusangulo, escaleno, obtusangulo
  0 - Sair
  """)
  opt = int(input("Digite a opção desejada: "))

  match(opt):
    case 0:
      break
    case 1:
      a = int(input("Digite um número: "))
      b = int(input("Digite outro número: "))
      print(exec1(a,b))
      sleep(1)
    case 2:
      a = (input("Digite o ano que nasceu: "))
      print(exec2(a))
      sleep(1)
    case 3:
      a = int(input("Digite o login: "))
      print(exec3(a))
      sleep(1)
    case 4:
      a = int(input("Digite quantas macas voce tem: "))
      print(exec4(a))
      sleep(1)
    case 5:
      a = int(input("Digite um número: "))
      b = int(input("Digite outro número: "))
      c = int(input("Digite outro número: "))
      print(exec5(a,b,c))
      sleep(1)
    case 6:
      a = int(input("Digite seu sexo [1: homem, 2: mulher]: "))
      b = int(input("Digite seu peso: "))
      print(exec6(a,b))
      sleep(1)
    case 7:
      a = int(input("Digite um número: "))
      b = int(input("Digite outro número: "))
      print(exec7(a,b))
      sleep(1)
    case 8:
      a = int(input("Digite um número: "))
      b = int(input("Digite outro número: "))
      print(exec8(a,b))
      sleep(1)
    case 9:
      a = int(input("Digite um número: "))
      b = int(input("Digite outro número: "))
      print(exec9(a,b))
      sleep(1)
    case 10:
      a = int(input("Digite um número: "))
      b = int(input("Digite outro número: "))
      print(exec10(a,b))
      sleep(1)
    case 11:
      a = int(input("Digite um número: "))
      b = int(input("Digite outro número: "))
      c = int(input("Digite outro número: "))
      print(exec11(a,b,c))
      sleep(1)
    case _:
      print("Opção inválida")
      sleep(1)
  