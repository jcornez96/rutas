// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.jcornez.ruta.entidad;

import es.jcornez.ruta.entidad.PuntoRutaProjection;
import es.jcornez.ruta.entidad.Ruta;
import io.springlets.format.EntityFormat;

privileged aspect PuntoRutaProjection_Roo_Projection {
    
    declare @type: PuntoRutaProjection: @EntityFormat;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param id
     * @param version
     * @param orden
     * @param longitud
     * @param latitud
     * @param comentario
     * @param ruta
     */
    public PuntoRutaProjection.new(Long id, Integer version, Integer orden, Double longitud, Double latitud, String comentario, Ruta ruta) {
        this.id = id;
        this.version = version;
        this.orden = orden;
        this.longitud = longitud;
        this.latitud = latitud;
        this.comentario = comentario;
        this.ruta = ruta;
    }

}