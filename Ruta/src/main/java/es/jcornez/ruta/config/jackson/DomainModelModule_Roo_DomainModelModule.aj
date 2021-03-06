// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.jcornez.ruta.config.jackson;

import com.fasterxml.jackson.databind.module.SimpleModule;
import es.jcornez.ruta.config.jackson.DomainModelModule;
import es.jcornez.ruta.controller.CiudadJsonMixin;
import es.jcornez.ruta.controller.PaisJsonMixin;
import es.jcornez.ruta.controller.PuntoRutaJsonMixin;
import es.jcornez.ruta.controller.RutaJsonMixin;
import es.jcornez.ruta.controller.RutaSeguidaJsonMixin;
import es.jcornez.ruta.controller.TipoRutaJsonMixin;
import es.jcornez.ruta.controller.TipoUsuarioJsonMixin;
import es.jcornez.ruta.controller.UsuarioJsonMixin;
import es.jcornez.ruta.entidad.Ciudad;
import es.jcornez.ruta.entidad.Pais;
import es.jcornez.ruta.entidad.PuntoRuta;
import es.jcornez.ruta.entidad.Ruta;
import es.jcornez.ruta.entidad.RutaSeguida;
import es.jcornez.ruta.entidad.TipoRuta;
import es.jcornez.ruta.entidad.TipoUsuario;
import es.jcornez.ruta.entidad.Usuario;
import org.springframework.boot.jackson.JsonComponent;

privileged aspect DomainModelModule_Roo_DomainModelModule {
    
    declare parents: DomainModelModule extends SimpleModule;
    
    declare @type: DomainModelModule: @JsonComponent;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     */
    public DomainModelModule.new() {
        // Mixin registration
        
        setMixInAnnotation(Ciudad.class, CiudadJsonMixin.class);
        setMixInAnnotation(Pais.class, PaisJsonMixin.class);
        setMixInAnnotation(PuntoRuta.class, PuntoRutaJsonMixin.class);
        setMixInAnnotation(Ruta.class, RutaJsonMixin.class);
        setMixInAnnotation(RutaSeguida.class, RutaSeguidaJsonMixin.class);
        setMixInAnnotation(TipoRuta.class, TipoRutaJsonMixin.class);
        setMixInAnnotation(TipoUsuario.class, TipoUsuarioJsonMixin.class);
        setMixInAnnotation(Usuario.class, UsuarioJsonMixin.class);
    }

}
