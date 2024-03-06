vida = int(input("Digite o número de dias de vida: "))

anos = vida // 365
ano = vida % 365

mes = ano // 30
mess = ano % 30

dia = mess % 30

print(f"Você tem {anos} anos {mes} messes e {dia} dias")