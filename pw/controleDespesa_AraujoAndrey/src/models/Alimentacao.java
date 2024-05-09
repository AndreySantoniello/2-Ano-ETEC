package models;

/**
 * @author Gabriel Araújo Lima <RM:231125>;
 * @author Andrey Nardy <RM:231126>;
 */

public class Alimentacao extends Despesa{
    private String nomeRestaurante;
    private int qtdRefeicao;

    @Override
    public String listarDispesa() {
        return
                "Nome do Restaurante: " + this.getNomeRestaurante() +
                "\nQuantidade de refeicoes: " + this.getQtdRefeicao();
    }

    @Override
    public double calcularDespesa() {
        return this.getQtdRefeicao() * 18;
    }

    public void cadastrarDespesa(String descricao, String nome, int qtdRefeicao) {
        this.setNomeRestaurante(nome);
        this.setQtdRefeicao(qtdRefeicao);
    }

    public String getNomeRestaurante() {
        return nomeRestaurante;
    }

    public void setNomeRestaurante(String nomeRestaurante) {
        this.nomeRestaurante = nomeRestaurante;
    }

    public int getQtdRefeicao() {
        return qtdRefeicao;
    }

    public void setQtdRefeicao(int qtdRefeicao) {
        this.qtdRefeicao = qtdRefeicao;
    }
}
