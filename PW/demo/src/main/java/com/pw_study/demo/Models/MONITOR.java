package com.pw_study.demo.Models;

import jakarta.persistence.*;
import lombok.Builder;
import lombok.Data;

@Data
@Builder
@Entity
@Table(name = "TBL_MONITOR")
public class MONITOR {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID_MONITOR")
    private long id_monitor;

    @Column(name = "TX_NOME")
    private String tx_nome;

    @Column(name = "TX_FOTO")
    private String tx_foto;

    @Column(name = "TX_WHATSAPP")
    private String tx_whatsapp;

    @Column(name = "TX_EMAIL")
    private String tx_email;

    @Column(name = "TX_CONTEUDO")
    private String tx_conteudo;

    @ManyToOne
    @JoinColumn(name = "ID_DISCIPLINA")
    private long id_disciplina;
//  FOREIGN KEY (ID_DISCIPLINA) REFERENCES TBL_DISCIPLINA (ID_DISCIPLINA)
}
