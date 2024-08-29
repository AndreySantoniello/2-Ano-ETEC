package br.com.etechoracio.etec_car.models;

import br.com.etechoracio.etec_car.enums.TipoCombustivelEnum;
import jakarta.persistence.*;
import lombok.Builder;
import lombok.Data;

import java.util.List;

@Entity
@Table(name = "TBL_AUTOMOVEL")
@Data
@Builder
public class Automovel {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID_AUTOMOVEL")
    private Long id;

    @Column(name = "NR_ANO_FABRICACAO")
    private Integer fabricacao;

    @Column(name = "NR_ANO_MODELO")
    private Integer ano;

    @Column(name = "TP_COMBUSTIVEL")
    @Enumerated(EnumType.STRING)
    private TipoCombustivelEnum tipoCombustivel;

    @Column(name = "NR_PRECO", columnDefinition = "numeric")
    private Double preco;

    @Column(name = "KM_ATUAL")
    private Integer kmAtual;

    @JoinColumn(name = "ID_MARCA")
    @ManyToOne
    private Modelo modelo;

    @JoinTable(name = "TBL_REL_AUTOMOVEL_ACESSORIO",
            joinColumns = @JoinColumn(name = "ID_AUTOMOVEL"),
            inverseJoinColumns = @JoinColumn(name = "ID_ACESSORIO")
    )
    @ManyToMany
    private List<Acessorio> acessorios;
}