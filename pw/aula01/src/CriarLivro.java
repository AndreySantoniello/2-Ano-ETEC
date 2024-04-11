public class CriarLivro {
        public static void main(String[] args) {
            Autor JKRowling = new Autor();
            JKRowling.nome = "JK Rowling";
            JKRowling.email = "odeioviadoeviadonaoehgente @gmail.com";
            JKRowling.foto = "XD";
            JKRowling.telefone = "4002-8922";

            Editora editora = new Editora();
            editora.nome = "Rocco";
            editora.site = "rocco.com.br";

            Livro favorito = new Livro();

            favorito.setTitulo("Harry Potter");
            favorito.setAutor(JKRowling);
            favorito.setEditora(editora);
            favorito.setPreco(69.45);
            favorito.setPagina(254);
            favorito.setTipoCapa(TipoCapaEnum.COMUM);
            /*System.out.println(favorito.titulo + " do autor " + favorito.autor +
                            " é meu livro favorito! é distribuido pela " +
                            favorito.editora.nome
             );*/
            System.out.println(favorito.calcularDesconto(50));

        }
}
