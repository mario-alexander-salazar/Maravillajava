
package com.blog.evaluacion;

import java.util.List;

public class Evaluacion {
    private List<Pregunta> preguntas;

    public Evaluacion(List<Pregunta> preguntas) {
        this.preguntas = preguntas;
    }

    public int calcularNota(List<String> respuestasUsuario) {
        int nota = 0;
        for (int i = 0; i < preguntas.size(); i++) {
            if (preguntas.get(i).getRespuestaCorrecta().equalsIgnoreCase(respuestasUsuario.get(i))) {
                nota += 2; 
            }
        }
        return nota;
    }
}
