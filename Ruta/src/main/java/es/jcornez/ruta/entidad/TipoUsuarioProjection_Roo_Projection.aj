// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.jcornez.ruta.entidad;

import es.jcornez.ruta.entidad.TipoUsuarioProjection;
import io.springlets.format.EntityFormat;

privileged aspect TipoUsuarioProjection_Roo_Projection {
    
    declare @type: TipoUsuarioProjection: @EntityFormat;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param id
     * @param version
     * @param nombre
     */
    public TipoUsuarioProjection.new(Long id, Integer version, String nombre) {
        this.id = id;
        this.version = version;
        this.nombre = nombre;
    }

}
