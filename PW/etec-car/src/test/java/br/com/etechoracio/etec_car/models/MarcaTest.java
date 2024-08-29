package br.com.etechoracio.etec_car.models;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class MarcaTest {

    @Test
    @DisplayName("Should build with builder")
    void setup() {
        Marca marca = Marca.builder()
                .id((long) 1)
                .nome("Andrey Nardy")
                .build();

        assertEquals(marca.getId(), 1);
        assertEquals(marca.getNome(), "Andrey Nardy");
    }

}