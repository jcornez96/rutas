// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.jcornez.ruta.entidad;

import es.jcornez.ruta.entidad.Usuario;

privileged aspect Usuario_Roo_ToString {
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String Usuario.toString() {
        return "Usuario {" + 
                "id='" + id + '\'' + 
                ", version='" + version + '\'' + 
                ", telefono='" + telefono + '\'' + 
                ", nombre='" + nombre + '\'' + 
                ", apellidos='" + apellidos + '\'' + 
                ", fechaNacimiento='" + fechaNacimiento + '\'' + 
                ", genero='" + genero + '\'' + 
                ", codigoPostal='" + codigoPostal + '\'' + 
                ", fechaAlta='" + fechaAlta + '\'' + 
                ", ITERABLE_TO_ADD_CANT_BE_NULL_MESSAGE='" + ITERABLE_TO_ADD_CANT_BE_NULL_MESSAGE + '\'' + 
                ", ITERABLE_TO_REMOVE_CANT_BE_NULL_MESSAGE='" + ITERABLE_TO_REMOVE_CANT_BE_NULL_MESSAGE + '\'' + "}" + super.toString();
    }
    
}
