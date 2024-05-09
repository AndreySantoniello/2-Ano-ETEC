package models;

/**
 * @author Gabriel Araújo Lima <RM:231125>;
 * @author Andrey Nardy <RM:231126>;
 */

public abstract class Despesa {
    private String descricao;
    private double valorTotal;

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public double getValorTotal() {
        return valorTotal;
    }

    public void setValorTotal(double valorTotal) {
        this.valorTotal = valorTotal;
    }

    public void cadastrarDespesa(String descricao) {}

    public abstract double calcularDespesa();

    public abstract String listarDispesa();
}
