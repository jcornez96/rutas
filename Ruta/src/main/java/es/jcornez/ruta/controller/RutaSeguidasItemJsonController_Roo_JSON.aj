// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.jcornez.ruta.controller;

import es.jcornez.ruta.controller.RutaSeguidasItemJsonController;
import es.jcornez.ruta.entidad.RutaSeguida;
import es.jcornez.ruta.service.api.RutaSeguidaService;
import io.springlets.web.NotFoundException;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.method.annotation.MvcUriComponentsBuilder;
import org.springframework.web.util.UriComponents;

privileged aspect RutaSeguidasItemJsonController_Roo_JSON {
    
    declare @type: RutaSeguidasItemJsonController: @RestController;
    
    declare @type: RutaSeguidasItemJsonController: @RequestMapping(value = "/rest/rutaseguidas/{rutaSeguida}", name = "RutaSeguidasItemJsonController", produces = MediaType.APPLICATION_JSON_VALUE);
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param rutaSeguidaService
     */
    @Autowired
    public RutaSeguidasItemJsonController.new(RutaSeguidaService rutaSeguidaService) {
        this.rutaSeguidaService = rutaSeguidaService;
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return RutaSeguida
     */
    @ModelAttribute
    public RutaSeguida RutaSeguidasItemJsonController.getRutaSeguida(@PathVariable("rutaSeguida") Long id) {
        RutaSeguida rutaSeguida = rutaSeguidaService.findOne(id);
        if (rutaSeguida == null) {
            throw new NotFoundException(String.format("RutaSeguida with identifier '%s' not found",id));
        }
        return rutaSeguida;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param rutaSeguida
     * @return ResponseEntity
     */
    @GetMapping(name = "show")
    public ResponseEntity<?> RutaSeguidasItemJsonController.show(@ModelAttribute RutaSeguida rutaSeguida) {
        return ResponseEntity.ok(rutaSeguida);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param rutaSeguida
     * @return UriComponents
     */
    public static UriComponents RutaSeguidasItemJsonController.showURI(RutaSeguida rutaSeguida) {
        return MvcUriComponentsBuilder
            .fromMethodCall(
                MvcUriComponentsBuilder.on(RutaSeguidasItemJsonController.class).show(rutaSeguida))
            .buildAndExpand(rutaSeguida.getId()).encode();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param storedRutaSeguida
     * @param rutaSeguida
     * @param result
     * @return ResponseEntity
     */
    @PutMapping(name = "update")
    public ResponseEntity<?> RutaSeguidasItemJsonController.update(@ModelAttribute RutaSeguida storedRutaSeguida, @Valid @RequestBody RutaSeguida rutaSeguida, BindingResult result) {
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        rutaSeguida.setId(storedRutaSeguida.getId());
        getRutaSeguidaService().save(rutaSeguida);
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param rutaSeguida
     * @return ResponseEntity
     */
    @DeleteMapping(name = "delete")
    public ResponseEntity<?> RutaSeguidasItemJsonController.delete(@ModelAttribute RutaSeguida rutaSeguida) {
        getRutaSeguidaService().delete(rutaSeguida);
        return ResponseEntity.ok().build();
    }
    
}
