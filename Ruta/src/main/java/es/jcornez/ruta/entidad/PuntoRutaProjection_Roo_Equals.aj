// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.jcornez.ruta.entidad;

import es.jcornez.ruta.entidad.PuntoRutaProjection;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;

privileged aspect PuntoRutaProjection_Roo_Equals {
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param obj
     * @return Boolean
     */
    public boolean PuntoRutaProjection.equals(Object obj) {
        if (!(obj instanceof PuntoRutaProjection)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        PuntoRutaProjection rhs = (PuntoRutaProjection) obj;
        return new EqualsBuilder().append(comentario, rhs.comentario).append(id, rhs.id).append(latitud, rhs.latitud).append(longitud, rhs.longitud).append(orden, rhs.orden).append(ruta, rhs.ruta).append(version, rhs.version).isEquals();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Integer
     */
    public int PuntoRutaProjection.hashCode() {
        return new HashCodeBuilder().append(comentario).append(id).append(latitud).append(longitud).append(orden).append(ruta).append(version).toHashCode();
    }
    
}
