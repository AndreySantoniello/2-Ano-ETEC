package models;

/**
 * @author Gabriel Araújo Lima <RM:231125>;
 * @author Andrey Nardy <RM:231126>;
 */

public class Transporte extends Despesa{
    private double kmPercorrido;
    private double valorPedagio;

    @Override
    public String listarDispesa() {
        return
                "KM Percorrido: "+ this.getKmPercorrido() +
                        "\nValor do Pedagio: " + this.getValorPedagio();
    }

    @Override
    public double calcularDespesa() {
        return (this.getKmPercorrido() * 3) + this.getValorPedagio();
    }

    public void cadastrarDespesa(String descricao, double kmPercorrida, double valorPedagio) {
        this.setKmPercorrido(kmPercorrida);
        this.setValorPedagio(valorPedagio);

        System.out.println("OK");
    }

    public double getKmPercorrido() {
        return kmPercorrido;
    }

    public void setKmPercorrido(double kmPercorrido) {
        this.kmPercorrido = kmPercorrido;
    }

    public double getValorPedagio() {
        return valorPedagio;
    }

    public void setValorPedagio(double valorPedagio) {
        this.valorPedagio = valorPedagio;
    }
}
