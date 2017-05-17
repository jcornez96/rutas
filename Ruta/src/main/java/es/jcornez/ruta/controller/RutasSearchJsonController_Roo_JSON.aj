// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.jcornez.ruta.controller;

import es.jcornez.ruta.controller.RutasSearchJsonController;
import es.jcornez.ruta.entidad.Ruta;
import es.jcornez.ruta.model.entity.FilterConfigBean;
import es.jcornez.ruta.service.api.RutaService;
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

privileged aspect RutasSearchJsonController_Roo_JSON {
    
    declare @type: RutasSearchJsonController: @RestController;
    
    declare @type: RutasSearchJsonController: @RequestMapping(value = "/rest/rutas/search", name = "RutasSearchJsonController", produces = MediaType.APPLICATION_JSON_VALUE);
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param rutaService
     */
    @Autowired
    public RutasSearchJsonController.new(RutaService rutaService) {
        this.rutaService = rutaService;
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
    public ResponseEntity<Page<Ruta>> RutasSearchJsonController.queryById(@ModelAttribute("formBean") FilterConfigBean formBean, GlobalSearch search, Pageable pageable) {
        
        Page<Ruta> rutas = getRutaService().queryById(formBean,search,pageable);
        return ResponseEntity.ok(rutas);
    }
    
}