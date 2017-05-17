// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.jcornez.ruta.controller;

import es.jcornez.ruta.controller.CiudadsCollectionJsonController;
import es.jcornez.ruta.controller.CiudadsItemJsonController;
import es.jcornez.ruta.entidad.Ciudad;
import es.jcornez.ruta.service.api.CiudadService;
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

privileged aspect CiudadsCollectionJsonController_Roo_JSON {
    
    declare @type: CiudadsCollectionJsonController: @RestController;
    
    declare @type: CiudadsCollectionJsonController: @RequestMapping(value = "/rest/ciudads", name = "CiudadsCollectionJsonController", produces = MediaType.APPLICATION_JSON_VALUE);
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param ciudadService
     */
    @Autowired
    public CiudadsCollectionJsonController.new(CiudadService ciudadService) {
        this.ciudadService = ciudadService;
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return ResponseEntity
     */
    @GetMapping(name = "list")
    public ResponseEntity<Page<Ciudad>> CiudadsCollectionJsonController.list(GlobalSearch globalSearch, Pageable pageable) {
        
        Page<Ciudad> ciudads = getCiudadService().findAll(globalSearch, pageable);
        return ResponseEntity.ok(ciudads);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return UriComponents
     */
    public static UriComponents CiudadsCollectionJsonController.listURI() {
        return MvcUriComponentsBuilder
            .fromMethodCall(
                MvcUriComponentsBuilder.on(CiudadsCollectionJsonController.class).list(null, null))
            .build().encode();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ciudad
     * @param result
     * @return ResponseEntity
     */
    @PostMapping(name = "create")
    public ResponseEntity<?> CiudadsCollectionJsonController.create(@Valid @RequestBody Ciudad ciudad, BindingResult result) {
        
        if (ciudad.getId() != null || ciudad.getVersion() != null) {        
            return ResponseEntity.status(HttpStatus.CONFLICT).build();
        }
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        
        Ciudad newCiudad = getCiudadService().save(ciudad);
        UriComponents showURI = CiudadsItemJsonController.showURI(newCiudad);
        
        return ResponseEntity.created(showURI.toUri()).build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ciudads
     * @param result
     * @return ResponseEntity
     */
    @PostMapping(value = "/batch", name = "createBatch")
    public ResponseEntity<?> CiudadsCollectionJsonController.createBatch(@Valid @RequestBody Collection<Ciudad> ciudads, BindingResult result) {
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        
        getCiudadService().save(ciudads);
        
        return ResponseEntity.created(listURI().toUri()).build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ciudads
     * @param result
     * @return ResponseEntity
     */
    @PutMapping(value = "/batch", name = "updateBatch")
    public ResponseEntity<?> CiudadsCollectionJsonController.updateBatch(@Valid @RequestBody Collection<Ciudad> ciudads, BindingResult result) {
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        
        getCiudadService().save(ciudads);
        
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return ResponseEntity
     */
    @DeleteMapping(value = "/batch/{ids}", name = "deleteBatch")
    public ResponseEntity<?> CiudadsCollectionJsonController.deleteBatch(@PathVariable("ids") Collection<Long> ids) {
        
        getCiudadService().delete(ids);
        
        return ResponseEntity.ok().build();
    }
    
}