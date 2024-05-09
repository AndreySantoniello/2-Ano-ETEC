import models.Alimentacao;
import models.Diaria;
import models.GerenciadorDespesa;
import models.Transporte;

import java.util.Scanner;

/**
 * @author Gabriel Araújo Lima <RM:231125>;
 * @author Andrey Nardy <RM:231126>;
 */

public class Main {
    public static void main(String[] args) {
        Diaria diaria = new Diaria();
        Transporte transporte = new Transporte();
        Alimentacao alimentacao = new Alimentacao();
        GerenciadorDespesa gerenciadorDespesa = new GerenciadorDespesa();
        Scanner scanner = new Scanner(System.in);
        int whatClass = 1;

        while (whatClass != 0) {
            System.out.println("Que classe voce quer acessar?");
            System.out.println("1 - Alimentacao");
            System.out.println("2 - Transporte");
            System.out.println("3 - Diaria");
            System.out.println("0 - Sair");
            System.out.print("Digite aqui: ");
            whatClass = scanner.nextInt();

            switch (whatClass) {
                case 0:
                    return;
                case 1:
                    System.out.println("Qual o nome do restaurante voce foi?");
                    System.out.print("Digite aqui: ");

                    String restaurante = scanner.next();
                    alimentacao.setNomeRestaurante(restaurante);

                    System.out.println("\nQual foi a quantidade de refeicoes que voce comeu?");
                    System.out.print("Digite aqui: ");
                    alimentacao.setQtdRefeicao(scanner.nextInt());

                    System.out.println("Calculo da dispesa: " + alimentacao.calcularDespesa());
                    System.out.println(alimentacao.listarDispesa());
                    break;
                case 2:
                    System.out.println("Qual a distancia percorrida (em KM) por voce: ");
                    System.out.print("Digite aqui: ");

                    double kmPercorrido = scanner.nextDouble();
                    transporte.setKmPercorrido(kmPercorrido);

                    System.out.println("Qual foi o valor pago nos pedagios?");
                    System.out.print("Digite aqui: ");

                    double pedagio = scanner.nextDouble();
                    transporte.setValorPedagio(pedagio);

                    System.out.println("\nCalculo da dispesa: " + transporte.calcularDespesa());
                    System.out.println(transporte.listarDispesa());
                    break;
                case 3:
                    System.out.println("Qual a quantidade de diarias?");
                    System.out.print("Digite aqui: ");
                    diaria.setQtdDiaira(scanner.nextDouble());


                    System.out.println("\nCalculo da dispesa: " + diaria.calcularDespesa());
                    System.out.println(diaria.listarDispesa());
                    break;
                default:
                    System.out.println("Classe não existe");
            }
        }


    }
}