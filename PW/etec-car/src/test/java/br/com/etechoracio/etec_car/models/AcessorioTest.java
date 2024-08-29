package br.com.etechoracio.etec_car.models;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class AcessorioTest {
    @Test
    @DisplayName("Should build with builder")
    void setup() {
        Acessorio acessorio = Acessorio.builder()
                .id((long) 1)
                .descricao("TESTE")
                .build();

        assertEquals(acessorio.getId(), 1);
        assertEquals(acessorio.getDescricao(), "TESTE");
    }
}