package models;

/**
 * @author Gabriel Araújo Lima <RM:231125>;
 * @author Andrey Nardy <RM:231126>;
 */

public class GerenciadorDespesa {
    private int qtdeAlimentacao;
    private int qtdeTransporte;
    private int qtdeDiaria;
    private double totalAlimentacao;
    private double totalTransporte;
    private double totalDiaria;
    private double totalDespesa;

    public void analisarDespesa(Despesa despesa) {

    }

    public int getQtdeAlimentacao() {
        return qtdeAlimentacao;
    }

    public void setQtdeAlimentacao(int qtdeAlimentacao) {
        this.qtdeAlimentacao = qtdeAlimentacao;
    }

    public int getQtdeTransporte() {
        return qtdeTransporte;
    }

    public void setQtdeTransporte(int qtdeTransporte) {
        this.qtdeTransporte = qtdeTransporte;
    }

    public int getQtdeDiaria() {
        return qtdeDiaria;
    }

    public void setQtdeDiaria(int qtdeDiaria) {
        this.qtdeDiaria = qtdeDiaria;
    }

    public double getTotalAlimentacao() {
        return totalAlimentacao;
    }

    public void setTotalAlimentacao(double totalAlimentacao) {
        this.totalAlimentacao = totalAlimentacao;
    }

    public double getTotalTransporte() {
        return totalTransporte;
    }

    public void setTotalTransporte(double totalTransporte) {
        this.totalTransporte = totalTransporte;
    }

    public double getTotalDiaria() {
        return totalDiaria;
    }

    public void setTotalDiaria(double totalDiaria) {
        this.totalDiaria = totalDiaria;
    }

    public double getTotalDespesa() {
        return totalDespesa;
    }

    public void setTotalDespesa(double totalDespesa) {
        this.totalDespesa = totalDespesa;
    }
}
