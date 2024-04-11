public class Livro {
    public String titulo;
    private String nome;
    private double taxa;
    private double valor;
    public double getTaxaEnvio() {
        return this.taxa * (5 / 100);
    }
    public void aplicarDesconto() {
        this.valor = this.valor - (this.valor * ((double) 15 / 100));
    }
    public void aplicarDesconto(double taxa) {
        this.valor = this.valor - (this.valor * (this.taxa / 100));
    }
}