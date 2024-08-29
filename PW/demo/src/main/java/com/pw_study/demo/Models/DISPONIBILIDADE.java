package com.pw_study.demo.Models;

import jakarta.persistence.*;
import lombok.Builder;
import lombok.Data;
@Data
@Builder
@Entity
@Table(name = "TBL_DISPONIBILIDADE")
public class DISPONIBILIDADE {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID_DISPONIBILIDADE")
    private long id_dispo;

    @Column(name = "TX_DIA_SEMANA")
    private String tx_dia_s;

    @Column(name = "DT_DAS")
    private Data dt_das;

    @Column(name = "DT_ATE")
    private Data dt_ate;

}
