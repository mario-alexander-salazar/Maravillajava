
package com.blog.galeria;

public class Imagen {
    private String ruta;
    private String descripcion;

    public Imagen(String ruta, String descripcion) {
        this.ruta = ruta;
        this.descripcion = descripcion;
    }

    public String getRuta() {
        return ruta;
    }

    public String getDescripcion() {
        return descripcion;
    }
}
