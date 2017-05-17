// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.jcornez.ruta.controller;

import es.jcornez.ruta.controller.TipoRutasCollectionJsonController;
import es.jcornez.ruta.controller.TipoRutasItemJsonController;
import es.jcornez.ruta.entidad.TipoRuta;
import es.jcornez.ruta.service.api.TipoRutaService;
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

privileged aspect TipoRutasCollectionJsonController_Roo_JSON {
    
    declare @type: TipoRutasCollectionJsonController: @RestController;
    
    declare @type: TipoRutasCollectionJsonController: @RequestMapping(value = "/rest/tiporutas", name = "TipoRutasCollectionJsonController", produces = MediaType.APPLICATION_JSON_VALUE);
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param tipoRutaService
     */
    @Autowired
    public TipoRutasCollectionJsonController.new(TipoRutaService tipoRutaService) {
        this.tipoRutaService = tipoRutaService;
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return ResponseEntity
     */
    @GetMapping(name = "list")
    public ResponseEntity<Page<TipoRuta>> TipoRutasCollectionJsonController.list(GlobalSearch globalSearch, Pageable pageable) {
        
        Page<TipoRuta> tipoRutas = getTipoRutaService().findAll(globalSearch, pageable);
        return ResponseEntity.ok(tipoRutas);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return UriComponents
     */
    public static UriComponents TipoRutasCollectionJsonController.listURI() {
        return MvcUriComponentsBuilder
            .fromMethodCall(
                MvcUriComponentsBuilder.on(TipoRutasCollectionJsonController.class).list(null, null))
            .build().encode();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param tipoRuta
     * @param result
     * @return ResponseEntity
     */
    @PostMapping(name = "create")
    public ResponseEntity<?> TipoRutasCollectionJsonController.create(@Valid @RequestBody TipoRuta tipoRuta, BindingResult result) {
        
        if (tipoRuta.getId() != null || tipoRuta.getVersion() != null) {        
            return ResponseEntity.status(HttpStatus.CONFLICT).build();
        }
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        
        TipoRuta newTipoRuta = getTipoRutaService().save(tipoRuta);
        UriComponents showURI = TipoRutasItemJsonController.showURI(newTipoRuta);
        
        return ResponseEntity.created(showURI.toUri()).build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param tipoRutas
     * @param result
     * @return ResponseEntity
     */
    @PostMapping(value = "/batch", name = "createBatch")
    public ResponseEntity<?> TipoRutasCollectionJsonController.createBatch(@Valid @RequestBody Collection<TipoRuta> tipoRutas, BindingResult result) {
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        
        getTipoRutaService().save(tipoRutas);
        
        return ResponseEntity.created(listURI().toUri()).build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param tipoRutas
     * @param result
     * @return ResponseEntity
     */
    @PutMapping(value = "/batch", name = "updateBatch")
    public ResponseEntity<?> TipoRutasCollectionJsonController.updateBatch(@Valid @RequestBody Collection<TipoRuta> tipoRutas, BindingResult result) {
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        
        getTipoRutaService().save(tipoRutas);
        
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return ResponseEntity
     */
    @DeleteMapping(value = "/batch/{ids}", name = "deleteBatch")
    public ResponseEntity<?> TipoRutasCollectionJsonController.deleteBatch(@PathVariable("ids") Collection<Long> ids) {
        
        getTipoRutaService().delete(ids);
        
        return ResponseEntity.ok().build();
    }
    
}
