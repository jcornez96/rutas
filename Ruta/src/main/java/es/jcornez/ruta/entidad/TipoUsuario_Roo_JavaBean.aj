// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.jcornez.ruta.entidad;

import es.jcornez.ruta.entidad.TipoUsuario;
import es.jcornez.ruta.entidad.Usuario;
import java.util.Set;

privileged aspect TipoUsuario_Roo_JavaBean {
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public Long TipoUsuario.getId() {
        return this.id;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     */
    public void TipoUsuario.setId(Long id) {
        this.id = id;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Integer
     */
    public Integer TipoUsuario.getVersion() {
        return this.version;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param version
     */
    public void TipoUsuario.setVersion(Integer version) {
        this.version = version;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String TipoUsuario.getNombre() {
        return this.nombre;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param nombre
     */
    public void TipoUsuario.setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Set
     */
    public Set<Usuario> TipoUsuario.getUsuarios() {
        return this.usuarios;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param usuarios
     */
    public void TipoUsuario.setUsuarios(Set<Usuario> usuarios) {
        this.usuarios = usuarios;
    }
    
}
