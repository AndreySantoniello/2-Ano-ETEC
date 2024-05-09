package models;

/**
 * @author Gabriel Araújo Lima <RM:231125>;
 * @author Andrey Nardy <RM:231126>;
 */

public class Diaria extends Despesa{
    private double qtdDiaira;

    public double getQtdDiaira() {
        return qtdDiaira;
    }

    @Override
    public String listarDispesa() {
        return
                "Quantidade de Diarias: " + this.getQtdDiaira();
    }

    @Override
    public double calcularDespesa() {
        return this.getQtdDiaira() * 50;
    }

    public void cadastrarDespesa(String descricao, double qtdDiaira) {
        this.setQtdDiaira(qtdDiaira);

        System.out.println("OK");
    }

    public void setQtdDiaira(double qtdDiaira) {
        this.qtdDiaira = qtdDiaira;
    }
}
