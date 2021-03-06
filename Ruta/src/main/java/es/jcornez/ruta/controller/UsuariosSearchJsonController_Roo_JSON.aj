// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.jcornez.ruta.controller;

import es.jcornez.ruta.controller.UsuariosSearchJsonController;
import es.jcornez.ruta.entidad.Usuario;
import es.jcornez.ruta.model.entity.FilterConfigBean;
import es.jcornez.ruta.service.api.UsuarioService;
import io.springlets.data.domain.GlobalSearch;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

privileged aspect UsuariosSearchJsonController_Roo_JSON {
    
    declare @type: UsuariosSearchJsonController: @RestController;
    
    declare @type: UsuariosSearchJsonController: @RequestMapping(value = "/rest/usuarios/search", name = "UsuariosSearchJsonController", produces = MediaType.APPLICATION_JSON_VALUE);
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param usuarioService
     */
    @Autowired
    public UsuariosSearchJsonController.new(UsuarioService usuarioService) {
        this.usuarioService = usuarioService;
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @param formBean
     * @param search
     * @param pageable
     * @return ResponseEntity
     */
    @GetMapping(name = "queryById", value = "/queryById")
    public ResponseEntity<Page<Usuario>> UsuariosSearchJsonController.queryById(@ModelAttribute("formBean") FilterConfigBean formBean, GlobalSearch search, Pageable pageable) {
        
        Page<Usuario> usuarios = getUsuarioService().queryById(formBean,search,pageable);
        return ResponseEntity.ok(usuarios);
    }
    
}
