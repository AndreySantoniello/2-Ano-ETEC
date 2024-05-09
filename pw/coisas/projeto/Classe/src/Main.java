// codigo 1
enum SexoEnum {
    H("Homem"),
    F("Mulher");
}

class Pessoa f String nome;
    public int idade;
    public SexoEnum sexo;
}
class Seguro {
    public double valor;
    public Pessoa pessoa;
    public double CalcularSeguro() {
        if (pessoa.sexo = 'F')
            return this.valor * 0.10;
        else
            return this.valor * 0.20;
    }
}


// codigo 3
enum TipoEnum {
    GATO("gato")
}

class Cliente {
    public String id;
    public String nome;
    public String celular;
    public String cpf;
}

class Animal {
    public int id;
    public String nome;
    public String raca;
    public Cliente dono;
    public TipoEnum tipo;

    public String exibirDados() {
        String dados = "ID: "       + this.id +
                        "NOME: "    + this.nome +
                        "RACA: "    + this.raca +
                        "CLIENTE: " + this.dono.nome +
                        "TIPO":       this.tipo.CACHORRO;
    }
}

public class Main {
    public static void main(String[] args) {
        // Codigo 3
        Animal animal = new Animal();

        animal.id = 3;
        animal.nome = "Tobias";
        animal.raca = "Shit-tzu";
        animal.dono.nome = "Gabriel Araujo";
        animal.dono.cpf = "123.123.123-22";
        animal.dono.celular = "5511992046942";
        animal.dono.id = "1";


    }
}