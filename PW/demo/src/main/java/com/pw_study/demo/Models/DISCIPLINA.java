package com.pw_study.demo.Models;

import jakarta.persistence.*;
import lombok.Builder;
import lombok.Data;

@Data
@Builder
@Entity
@Table(name = "TBL_DISCIPLINA")
public class DISCIPLINA {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID_DISCIPLINA")
    private long id_disciplina;

    @Column(name = "TX_NOME")
    private String tx_nome;
}
