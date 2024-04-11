public class Livro {
    // Atributos
    private String titulo;

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }
    private Autor autor;
    private String resumo;
    private Editora editora;
    private TipoCapaEnum tipoCapa;
    private double preco;

    public void setAutor(Autor autor) {
        this.autor = autor;
    }

    public void setResumo(String resumo) {
        this.resumo = resumo;
    }

    public void setEditora(Editora editora) {
        this.editora = editora;
    }

    public void setTipoCapa(TipoCapaEnum tipoCapa) {
        this.tipoCapa = tipoCapa;
        cobrarCapa();
    }

    public void setPreco(double preco) {
        this.preco = preco;
    }

    public void setPagina(int pagina) {
        this.pagina = pagina;
    }

    private int pagina;

    public Autor getAutor() {
        return autor;
    }

    public String getResumo() {
        return resumo;
    }

    public Editora getEditora() {
        return editora;
    }

    public TipoCapaEnum getTipoCapa() {
        return tipoCapa;
    }

    public double getPreco() {
        return preco;
    }

    public int getPagina() {
        return pagina;
    }

    // Método construtor
    public Livro(String titulo, double preco) {
        this.titulo = titulo;
        this.preco = preco;
    }
    public Livro(String titulo) {
        this.titulo = titulo;
    }
    public Livro() {}

    //Métodos
    // public tipo_retorno nomeMetodo([parâmetros]){}

    public double calcularDesconto(double percentualDesconto) {
        return this.preco - (percentualDesconto / 100) * this.preco;
    }

    public void cobrarCapa() {
        if(tipoCapa == TipoCapaEnum.DURA)
            preco += 3;
        else if(tipoCapa == TipoCapaEnum.PERSONALIZADA)
            preco += 10;
    }

    // Função
    public String exibirDadosDoLivro() {
        String dadosLivro = "DETALHES DO LIVRO\n"
                + this.titulo
                + "\nAutor:" + this.autor.nome
                + "\nEditora:" + this.editora.nome
                + "\n\nResumo:" + this.resumo
                + "\nPreço:" + this.preco;
        return dadosLivro;
    }

    // Procedimento
    public void exibirDados() {
        String dadosLivro = "DETALHES DO LIVRO\n"
                + this.titulo
                + "\nAutor:" + this.autor.nome
                + "\nEditora:" + this.editora.nome
                + "\n\nResumo:" + this.resumo
                + "\nPreço:" + this.preco;
        System.out.println(dadosLivro);
    }
}
