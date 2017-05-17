// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.jcornez.ruta.entidad;

import es.jcornez.ruta.entidad.Ciudad;
import es.jcornez.ruta.entidad.Pais;
import io.springlets.format.EntityFormat;
import javax.persistence.Entity;
import org.springframework.util.Assert;

privileged aspect Pais_Roo_Jpa_Entity {
    
    declare @type: Pais: @Entity;
    
    declare @type: Pais: @EntityFormat;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String Pais.ITERABLE_TO_ADD_CANT_BE_NULL_MESSAGE = "The given Iterable of items to add can't be null!";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String Pais.ITERABLE_TO_REMOVE_CANT_BE_NULL_MESSAGE = "The given Iterable of items to add can't be null!";
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ciudadesToAdd
     */
    public void Pais.addToCiudades(Iterable<Ciudad> ciudadesToAdd) {
        Assert.notNull(ciudadesToAdd, ITERABLE_TO_ADD_CANT_BE_NULL_MESSAGE);
        for (Ciudad item : ciudadesToAdd) {
            this.ciudades.add(item);
            item.setPais(this);
        }
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ciudadesToRemove
     */
    public void Pais.removeFromCiudades(Iterable<Ciudad> ciudadesToRemove) {
        Assert.notNull(ciudadesToRemove, ITERABLE_TO_REMOVE_CANT_BE_NULL_MESSAGE);
        for (Ciudad item : ciudadesToRemove) {
            this.ciudades.remove(item);
            item.setPais(null);
        }
    }
    
}
