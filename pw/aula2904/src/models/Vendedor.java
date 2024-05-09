package models;

public class Vendedor {
    private double comissao;
    public double getComissao() {
        return comissao;
    }
    public void setComissao(double comissao) {
        this.comissao = comissao;
    }

    // Metodos

    @Override
    public double calculoBonificacao(double valorVendido) {
        return calcularBonificacao()+ 500;
    }
    public double calculoComissao(double valorVendido) {
        valorVendido = (valorVendido * 0.1);
        double salario = this.getSalario() + valorVendido;
        return salario;
    }
}

}
