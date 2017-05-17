// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.jcornez.ruta.controller;

import es.jcornez.ruta.controller.CiudadsItemJsonController;
import es.jcornez.ruta.entidad.Ciudad;
import es.jcornez.ruta.service.api.CiudadService;
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

privileged aspect CiudadsItemJsonController_Roo_JSON {
    
    declare @type: CiudadsItemJsonController: @RestController;
    
    declare @type: CiudadsItemJsonController: @RequestMapping(value = "/rest/ciudads/{ciudad}", name = "CiudadsItemJsonController", produces = MediaType.APPLICATION_JSON_VALUE);
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param ciudadService
     */
    @Autowired
    public CiudadsItemJsonController.new(CiudadService ciudadService) {
        this.ciudadService = ciudadService;
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Ciudad
     */
    @ModelAttribute
    public Ciudad CiudadsItemJsonController.getCiudad(@PathVariable("ciudad") Long id) {
        Ciudad ciudad = ciudadService.findOne(id);
        if (ciudad == null) {
            throw new NotFoundException(String.format("Ciudad with identifier '%s' not found",id));
        }
        return ciudad;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ciudad
     * @return ResponseEntity
     */
    @GetMapping(name = "show")
    public ResponseEntity<?> CiudadsItemJsonController.show(@ModelAttribute Ciudad ciudad) {
        return ResponseEntity.ok(ciudad);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ciudad
     * @return UriComponents
     */
    public static UriComponents CiudadsItemJsonController.showURI(Ciudad ciudad) {
        return MvcUriComponentsBuilder
            .fromMethodCall(
                MvcUriComponentsBuilder.on(CiudadsItemJsonController.class).show(ciudad))
            .buildAndExpand(ciudad.getId()).encode();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param storedCiudad
     * @param ciudad
     * @param result
     * @return ResponseEntity
     */
    @PutMapping(name = "update")
    public ResponseEntity<?> CiudadsItemJsonController.update(@ModelAttribute Ciudad storedCiudad, @Valid @RequestBody Ciudad ciudad, BindingResult result) {
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        ciudad.setId(storedCiudad.getId());
        getCiudadService().save(ciudad);
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ciudad
     * @return ResponseEntity
     */
    @DeleteMapping(name = "delete")
    public ResponseEntity<?> CiudadsItemJsonController.delete(@ModelAttribute Ciudad ciudad) {
        getCiudadService().delete(ciudad);
        return ResponseEntity.ok().build();
    }
    
}