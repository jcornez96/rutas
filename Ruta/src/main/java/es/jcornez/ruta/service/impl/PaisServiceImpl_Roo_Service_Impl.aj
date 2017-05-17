// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.jcornez.ruta.service.impl;

import es.jcornez.ruta.entidad.Ciudad;
import es.jcornez.ruta.entidad.Pais;
import es.jcornez.ruta.repository.PaisRepository;
import es.jcornez.ruta.service.api.CiudadService;
import es.jcornez.ruta.service.impl.PaisServiceImpl;
import io.springlets.data.domain.GlobalSearch;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect PaisServiceImpl_Roo_Service_Impl {
    
    declare @type: PaisServiceImpl: @Service;
    
    declare @type: PaisServiceImpl: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private PaisRepository PaisServiceImpl.paisRepository;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private CiudadService PaisServiceImpl.ciudadService;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param paisRepository
     * @param ciudadService
     */
    @Autowired
    public PaisServiceImpl.new(PaisRepository paisRepository, @Lazy CiudadService ciudadService) {
        setPaisRepository(paisRepository);
        setCiudadService(ciudadService);
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return PaisRepository
     */
    public PaisRepository PaisServiceImpl.getPaisRepository() {
        return paisRepository;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param paisRepository
     */
    public void PaisServiceImpl.setPaisRepository(PaisRepository paisRepository) {
        this.paisRepository = paisRepository;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return CiudadService
     */
    public CiudadService PaisServiceImpl.getCiudadService() {
        return ciudadService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ciudadService
     */
    public void PaisServiceImpl.setCiudadService(CiudadService ciudadService) {
        this.ciudadService = ciudadService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param pais
     * @param ciudadesToAdd
     * @return Pais
     */
    @Transactional
    public Pais PaisServiceImpl.addToCiudades(Pais pais, Iterable<Long> ciudadesToAdd) {
        List<Ciudad> ciudades = getCiudadService().findAll(ciudadesToAdd);
        pais.addToCiudades(ciudades);
        return getPaisRepository().save(pais);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param pais
     * @param ciudadesToRemove
     * @return Pais
     */
    @Transactional
    public Pais PaisServiceImpl.removeFromCiudades(Pais pais, Iterable<Long> ciudadesToRemove) {
        List<Ciudad> ciudades = getCiudadService().findAll(ciudadesToRemove);
        pais.removeFromCiudades(ciudades);
        return getPaisRepository().save(pais);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param pais
     * @param ciudades
     * @return Pais
     */
    @Transactional
    public Pais PaisServiceImpl.setCiudades(Pais pais, Iterable<Long> ciudades) {
        List<Ciudad> items = getCiudadService().findAll(ciudades);
        Set<Ciudad> currents = pais.getCiudades();
        Set<Ciudad> toRemove = new HashSet<Ciudad>();
        for (Iterator<Ciudad> iterator = currents.iterator(); iterator.hasNext();) {
            Ciudad nextCiudad = iterator.next();
            if (items.contains(nextCiudad)) {
                items.remove(nextCiudad);
            } else {
                toRemove.add(nextCiudad);
            }
        }
        pais.removeFromCiudades(toRemove);
        pais.addToCiudades(items);
        // Force the version update of the parent side to know that the parent has changed
        // because it has new books assigned
        pais.setVersion(pais.getVersion() + 1);
        return getPaisRepository().save(pais);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param pais
     */
    @Transactional
    public void PaisServiceImpl.delete(Pais pais) {
        // Clear bidirectional one-to-many parent relationship with Ciudad
        for (Ciudad item : pais.getCiudades()) {
            item.setPais(null);
        }
        
        getPaisRepository().delete(pais);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entities
     * @return List
     */
    @Transactional
    public List<Pais> PaisServiceImpl.save(Iterable<Pais> entities) {
        return getPaisRepository().save(entities);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     */
    @Transactional
    public void PaisServiceImpl.delete(Iterable<Long> ids) {
        List<Pais> toDelete = getPaisRepository().findAll(ids);
        getPaisRepository().deleteInBatch(toDelete);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entity
     * @return Pais
     */
    @Transactional
    public Pais PaisServiceImpl.save(Pais entity) {
        return getPaisRepository().save(entity);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Pais
     */
    public Pais PaisServiceImpl.findOne(Long id) {
        return getPaisRepository().findOne(id);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Pais
     */
    public Pais PaisServiceImpl.findOneForUpdate(Long id) {
        return getPaisRepository().findOneDetached(id);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return List
     */
    public List<Pais> PaisServiceImpl.findAll(Iterable<Long> ids) {
        return getPaisRepository().findAll(ids);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return List
     */
    public List<Pais> PaisServiceImpl.findAll() {
        return getPaisRepository().findAll();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public long PaisServiceImpl.count() {
        return getPaisRepository().count();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Pais> PaisServiceImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        return getPaisRepository().findAll(globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Class
     */
    public Class<Pais> PaisServiceImpl.getEntityType() {
        return Pais.class;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Class
     */
    public Class<Long> PaisServiceImpl.getIdType() {
        return Long.class;
    }
    
}
