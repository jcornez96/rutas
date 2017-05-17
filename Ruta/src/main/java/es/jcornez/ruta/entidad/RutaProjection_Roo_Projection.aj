// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.jcornez.ruta.entidad;

import es.jcornez.ruta.entidad.Ciudad;
import es.jcornez.ruta.entidad.RutaProjection;
import es.jcornez.ruta.entidad.TipoRuta;
import es.jcornez.ruta.entidad.Usuario;
import io.springlets.format.EntityFormat;
import java.util.Date;

privileged aspect RutaProjection_Roo_Projection {
    
    declare @type: RutaProjection: @EntityFormat;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param id
     * @param version
     * @param nombre
     * @param descripcion
     * @param fechaCreacion
     * @param fotoPortada
     * @param usuario
     * @param ciudad
     * @param tipoRuta
     */
    public RutaProjection.new(Long id, Integer version, String nombre, String descripcion, Date fechaCreacion, byte[] fotoPortada, Usuario usuario, Ciudad ciudad, TipoRuta tipoRuta) {
        this.id = id;
        this.version = version;
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.fechaCreacion = fechaCreacion;
        this.fotoPortada = fotoPortada;
        this.usuario = usuario;
        this.ciudad = ciudad;
        this.tipoRuta = tipoRuta;
    }

}
