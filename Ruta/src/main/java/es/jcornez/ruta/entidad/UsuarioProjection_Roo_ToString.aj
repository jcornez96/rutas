// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.jcornez.ruta.entidad;

import es.jcornez.ruta.entidad.UsuarioProjection;

privileged aspect UsuarioProjection_Roo_ToString {
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String UsuarioProjection.toString() {
        return "UsuarioProjection {" + 
                "id='" + id + '\'' + 
                ", version='" + version + '\'' + 
                ", telefono='" + telefono + '\'' + 
                ", nombre='" + nombre + '\'' + 
                ", apellidos='" + apellidos + '\'' + 
                ", fechaNacimiento='" + fechaNacimiento + '\'' + 
                ", genero='" + genero + '\'' + 
                ", codigoPostal='" + codigoPostal + '\'' + 
                ", fechaAlta='" + fechaAlta + '\'' + "}" + super.toString();
    }
    
}
