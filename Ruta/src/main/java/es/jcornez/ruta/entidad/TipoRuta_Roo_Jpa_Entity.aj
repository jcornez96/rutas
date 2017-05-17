// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.jcornez.ruta.entidad;

import es.jcornez.ruta.entidad.Ruta;
import es.jcornez.ruta.entidad.TipoRuta;
import io.springlets.format.EntityFormat;
import javax.persistence.Entity;
import org.springframework.util.Assert;

privileged aspect TipoRuta_Roo_Jpa_Entity {
    
    declare @type: TipoRuta: @Entity;
    
    declare @type: TipoRuta: @EntityFormat;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String TipoRuta.ITERABLE_TO_ADD_CANT_BE_NULL_MESSAGE = "The given Iterable of items to add can't be null!";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String TipoRuta.ITERABLE_TO_REMOVE_CANT_BE_NULL_MESSAGE = "The given Iterable of items to add can't be null!";
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param rutasToAdd
     */
    public void TipoRuta.addToRutas(Iterable<Ruta> rutasToAdd) {
        Assert.notNull(rutasToAdd, ITERABLE_TO_ADD_CANT_BE_NULL_MESSAGE);
        for (Ruta item : rutasToAdd) {
            this.rutas.add(item);
            item.setTipoRuta(this);
        }
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param rutasToRemove
     */
    public void TipoRuta.removeFromRutas(Iterable<Ruta> rutasToRemove) {
        Assert.notNull(rutasToRemove, ITERABLE_TO_REMOVE_CANT_BE_NULL_MESSAGE);
        for (Ruta item : rutasToRemove) {
            this.rutas.remove(item);
            item.setTipoRuta(null);
        }
    }
    
}