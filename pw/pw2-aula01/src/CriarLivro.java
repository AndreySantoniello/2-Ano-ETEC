public class CriarLivro {
    public static void main(String[] args) {
        Editora editora = new Editora();
        editora.nome = "Rocco";
        editora.site = "rocco.com.br";

        Editora editoraFTD = new Editora();
        editoraFTD.nome = "FTD";
        editoraFTD.site = "ftd.com.br";

        Autor autor = new Autor();
        autor.nome = "J K Rowling";
        autor.telefone = "85938494";
        autor.email = "jkr@gmail.com";

        Livro favorito = new Livro();
        favorito.setTitulo("Harry Potter");
        favorito.setAutor(autor);
        favorito.setEditora(editora);
        favorito.setPreco(69.45);
        favorito.setPaginas(254);
        favorito.setTipoCapa(TipoCapaEnum.COMUM);
       /* System.out.println(favorito.titulo + " do autor " +
                favorito.autor.nome + " é meu livro favorito!" +
                " é distribuido pela editora " + favorito.editora.nome
        );*/
        System.out.println(favorito.exibirDadosDoLivro());
        favorito.exibirDados();
        Livro primeiroLivro = new Livro();
    }
}
