// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.jcornez.ruta.entidad;

import es.jcornez.ruta.entidad.UsuarioProjection;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;

privileged aspect UsuarioProjection_Roo_Equals {
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param obj
     * @return Boolean
     */
    public boolean UsuarioProjection.equals(Object obj) {
        if (!(obj instanceof UsuarioProjection)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        UsuarioProjection rhs = (UsuarioProjection) obj;
        return new EqualsBuilder().append(apellidos, rhs.apellidos).append(ciudad, rhs.ciudad).append(codigoPostal, rhs.codigoPostal).append(fechaAlta, rhs.fechaAlta).append(fechaNacimiento, rhs.fechaNacimiento).append(genero, rhs.genero).append(id, rhs.id).append(nombre, rhs.nombre).append(telefono, rhs.telefono).append(tipoUsuario, rhs.tipoUsuario).append(version, rhs.version).isEquals();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Integer
     */
    public int UsuarioProjection.hashCode() {
        return new HashCodeBuilder().append(apellidos).append(ciudad).append(codigoPostal).append(fechaAlta).append(fechaNacimiento).append(genero).append(id).append(nombre).append(telefono).append(tipoUsuario).append(version).toHashCode();
    }
    
}
