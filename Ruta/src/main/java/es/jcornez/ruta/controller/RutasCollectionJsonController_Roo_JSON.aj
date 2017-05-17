// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.jcornez.ruta.controller;

import es.jcornez.ruta.controller.RutasCollectionJsonController;
import es.jcornez.ruta.controller.RutasItemJsonController;
import es.jcornez.ruta.entidad.Ruta;
import es.jcornez.ruta.service.api.RutaService;
import io.springlets.data.domain.GlobalSearch;
import java.util.Collection;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.method.annotation.MvcUriComponentsBuilder;
import org.springframework.web.util.UriComponents;

privileged aspect RutasCollectionJsonController_Roo_JSON {
    
    declare @type: RutasCollectionJsonController: @RestController;
    
    declare @type: RutasCollectionJsonController: @RequestMapping(value = "/rest/rutas", name = "RutasCollectionJsonController", produces = MediaType.APPLICATION_JSON_VALUE);
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param rutaService
     */
    @Autowired
    public RutasCollectionJsonController.new(RutaService rutaService) {
        this.rutaService = rutaService;
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return ResponseEntity
     */
    @GetMapping(name = "list")
    public ResponseEntity<Page<Ruta>> RutasCollectionJsonController.list(GlobalSearch globalSearch, Pageable pageable) {
        
        Page<Ruta> rutas = getRutaService().findAll(globalSearch, pageable);
        return ResponseEntity.ok(rutas);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return UriComponents
     */
    public static UriComponents RutasCollectionJsonController.listURI() {
        return MvcUriComponentsBuilder
            .fromMethodCall(
                MvcUriComponentsBuilder.on(RutasCollectionJsonController.class).list(null, null))
            .build().encode();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ruta
     * @param result
     * @return ResponseEntity
     */
    @PostMapping(name = "create")
    public ResponseEntity<?> RutasCollectionJsonController.create(@Valid @RequestBody Ruta ruta, BindingResult result) {
        
        if (ruta.getId() != null || ruta.getVersion() != null) {        
            return ResponseEntity.status(HttpStatus.CONFLICT).build();
        }
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        
        Ruta newRuta = getRutaService().save(ruta);
        UriComponents showURI = RutasItemJsonController.showURI(newRuta);
        
        return ResponseEntity.created(showURI.toUri()).build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param rutas
     * @param result
     * @return ResponseEntity
     */
    @PostMapping(value = "/batch", name = "createBatch")
    public ResponseEntity<?> RutasCollectionJsonController.createBatch(@Valid @RequestBody Collection<Ruta> rutas, BindingResult result) {
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        
        getRutaService().save(rutas);
        
        return ResponseEntity.created(listURI().toUri()).build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param rutas
     * @param result
     * @return ResponseEntity
     */
    @PutMapping(value = "/batch", name = "updateBatch")
    public ResponseEntity<?> RutasCollectionJsonController.updateBatch(@Valid @RequestBody Collection<Ruta> rutas, BindingResult result) {
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        
        getRutaService().save(rutas);
        
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return ResponseEntity
     */
    @DeleteMapping(value = "/batch/{ids}", name = "deleteBatch")
    public ResponseEntity<?> RutasCollectionJsonController.deleteBatch(@PathVariable("ids") Collection<Long> ids) {
        
        getRutaService().delete(ids);
        
        return ResponseEntity.ok().build();
    }
    
}