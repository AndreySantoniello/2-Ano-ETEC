package com.pw_study.demo.Models;

import jakarta.persistence.*;
import lombok.Builder;
import lombok.Data;
@Data
@Builder
@Entity
@Table(name = "TBL_REL_TUTOR_DISPONIBILIDADE")
public class TUTOR_DISPONIBILIDADE {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private Long id;

    @ManyToOne
    @JoinColumn(name = "ID_MONITOR", referencedColumnName = "ID_MONITOR")
    private MONITOR monitor;

    @OneToOne
    @JoinColumn(name = "ID_DISPONIBILIDADE", referencedColumnName = "ID_DISPONIBILIDADE")
    private DISPONIBILIDADE disponibilidade;
}
