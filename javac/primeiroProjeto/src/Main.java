import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);

        System.out.print("Insira o numero: ");
        double num1 = scan.nextDouble();

        System.out.print("Insira o numero: ");
        double num2 = scan.nextDouble();

        System.out.println("A media eh " + (num1 + num2) / 2);
    }
}