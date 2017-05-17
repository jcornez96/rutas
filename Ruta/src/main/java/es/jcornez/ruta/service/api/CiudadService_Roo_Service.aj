// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.jcornez.ruta.service.api;

import es.jcornez.ruta.entidad.Ciudad;
import es.jcornez.ruta.entidad.Pais;
import es.jcornez.ruta.service.api.CiudadService;
import io.springlets.data.domain.GlobalSearch;
import io.springlets.format.EntityResolver;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

privileged aspect CiudadService_Roo_Service {
    
    declare parents: CiudadService extends EntityResolver<Ciudad, Long>;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Ciudad
     */
    public abstract Ciudad CiudadService.findOne(Long id);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ciudad
     */
    public abstract void CiudadService.delete(Ciudad ciudad);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entities
     * @return List
     */
    public abstract List<Ciudad> CiudadService.save(Iterable<Ciudad> entities);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     */
    public abstract void CiudadService.delete(Iterable<Long> ids);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entity
     * @return Ciudad
     */
    public abstract Ciudad CiudadService.save(Ciudad entity);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Ciudad
     */
    public abstract Ciudad CiudadService.findOneForUpdate(Long id);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return List
     */
    public abstract List<Ciudad> CiudadService.findAll(Iterable<Long> ids);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return List
     */
    public abstract List<Ciudad> CiudadService.findAll();
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public abstract long CiudadService.count();
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<Ciudad> CiudadService.findAll(GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ciudad
     * @param rutasToAdd
     * @return Ciudad
     */
    public abstract Ciudad CiudadService.addToRutas(Ciudad ciudad, Iterable<Long> rutasToAdd);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ciudad
     * @param rutasToRemove
     * @return Ciudad
     */
    public abstract Ciudad CiudadService.removeFromRutas(Ciudad ciudad, Iterable<Long> rutasToRemove);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ciudad
     * @param rutas
     * @return Ciudad
     */
    public abstract Ciudad CiudadService.setRutas(Ciudad ciudad, Iterable<Long> rutas);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ciudad
     * @param usuariosToAdd
     * @return Ciudad
     */
    public abstract Ciudad CiudadService.addToUsuarios(Ciudad ciudad, Iterable<Long> usuariosToAdd);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ciudad
     * @param usuariosToRemove
     * @return Ciudad
     */
    public abstract Ciudad CiudadService.removeFromUsuarios(Ciudad ciudad, Iterable<Long> usuariosToRemove);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ciudad
     * @param usuarios
     * @return Ciudad
     */
    public abstract Ciudad CiudadService.setUsuarios(Ciudad ciudad, Iterable<Long> usuarios);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param pais
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<Ciudad> CiudadService.findByPais(Pais pais, GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param pais
     * @return Long
     */
    public abstract long CiudadService.countByPais(Pais pais);
    
}
