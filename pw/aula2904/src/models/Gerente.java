package models;

public class Gerente extends Funcionario{
    private  double gratificacao;

    // Sobrescrita
    @Override
    public double calcularBonificacao() {
        return super.calcularBonificacao() + 1000;
    }
    public double getGratificacao() {
        return gratificacao;
    }
    public void setGratificacao(double gratificacao) {
        this.gratificacao = gratificacao;
    }
}
