package com.etechoracio.pw2.projeto.models;

import jakarta.persistence.*;
import lombok.Data;

import java.util.List;

@Entity
@Table(name = "TBL_FUNCIONARIO")
@Data
public class Funcionario {
    @Column(name = "id")
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "nome")
    private String nome;

    @ManyToMany
    @JoinTable(
        name = "TBL_Projeto_Funcionario",
        joinColumns = @JoinColumn(name = "funcionario_id"),
        inverseJoinColumns = @JoinColumn(name = "projeto_id")
    )
    private List<Projetos> projetos;
}
