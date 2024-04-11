"""
    EXERCÍCIO:
Uma sala de aula tem 10 alunos.
A média semestral se dá pela média simples entre 3 notas, descartando
a de menor valor.
A cada nota digitada, verificar se ela está entre 0 e 10 (inclusive),
se não estiver exiba "Nota inválida" e peça para digitar novamente, caso
contrário, vá para a próxima nota.
No final, mostre a média da sala e quantos tiraram ao menos 9 de media.
"""
    
import os
import time

os.system("cls")

def obter_notas():
    notas = []

    for i in range(3):
        while True:
            try:
                nota = float(input(f"Digite a {i+1}ª nota: "))
                if 0 <= nota <= 10:
                    notas.append(nota)
                    break
                else:
                    print("Nota inválida. Digite novamente.")
            except ValueError:
                print("Nota inválida. Digite um número válido.")
    return notas

def calcular_media(notas):
    notas.sort()
    media = sum(notas[1:]) / 2
    return media

def main():
    num_alunos = 10
    medias_acima_9 = 0
    notas_sala = []

    for _ in range(num_alunos):
        print(f"\nAluno {_+1}:")
        notas_aluno = obter_notas()
        notas_sala.extend(notas_aluno) 
        media_aluno = calcular_media(notas_aluno)
        print(f"Média do aluno: {media_aluno:.2f}")

        if media_aluno >= 9:
            medias_acima_9 += 1

    media_sala = calcular_media(notas_sala)
    print(f"\nMédia da sala: {media_sala:.2f}")
    print(f"Alunos com média acima de 9: {medias_acima_9}")

if __name__ == "__main__":
    main()
