package br.com.etechoracio.etec_car.models;

import jakarta.persistence.*;
import lombok.Builder;
import lombok.Data;

@Entity
@Table(name = "TBL_MODELO")
@Data
@Builder
public class Modelo {
    @Column(name = "ID_MODELO")
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "TX_NOME")
    private String nome;

    @Column(name = "NR_POTENCIA")
    private double potencia;

    @JoinColumn(name = "ID_MARCA")
    @ManyToOne
    private Marca marca;
}
