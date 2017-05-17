// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.jcornez.ruta.service.impl;

import es.jcornez.ruta.entidad.Ruta;
import es.jcornez.ruta.entidad.RutaSeguida;
import es.jcornez.ruta.entidad.Usuario;
import es.jcornez.ruta.model.entity.FilterConfigBean;
import es.jcornez.ruta.repository.RutaSeguidaRepository;
import es.jcornez.ruta.service.impl.RutaSeguidaServiceImpl;
import io.springlets.data.domain.GlobalSearch;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect RutaSeguidaServiceImpl_Roo_Service_Impl {
    
    declare @type: RutaSeguidaServiceImpl: @Service;
    
    declare @type: RutaSeguidaServiceImpl: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private RutaSeguidaRepository RutaSeguidaServiceImpl.rutaSeguidaRepository;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param rutaSeguidaRepository
     */
    @Autowired
    public RutaSeguidaServiceImpl.new(RutaSeguidaRepository rutaSeguidaRepository) {
        setRutaSeguidaRepository(rutaSeguidaRepository);
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return RutaSeguidaRepository
     */
    public RutaSeguidaRepository RutaSeguidaServiceImpl.getRutaSeguidaRepository() {
        return rutaSeguidaRepository;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param rutaSeguidaRepository
     */
    public void RutaSeguidaServiceImpl.setRutaSeguidaRepository(RutaSeguidaRepository rutaSeguidaRepository) {
        this.rutaSeguidaRepository = rutaSeguidaRepository;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param rutaSeguida
     */
    @Transactional
    public void RutaSeguidaServiceImpl.delete(RutaSeguida rutaSeguida) {
        // Clear bidirectional many-to-one child relationship with Ruta
        if (rutaSeguida.getRuta() != null) {
            rutaSeguida.getRuta().getRutasSeguidas().remove(rutaSeguida);
        }
        
        // Clear bidirectional many-to-one child relationship with Usuario
        if (rutaSeguida.getUsuario() != null) {
            rutaSeguida.getUsuario().getRutasSeguidas().remove(rutaSeguida);
        }
        
        getRutaSeguidaRepository().delete(rutaSeguida);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entities
     * @return List
     */
    @Transactional
    public List<RutaSeguida> RutaSeguidaServiceImpl.save(Iterable<RutaSeguida> entities) {
        return getRutaSeguidaRepository().save(entities);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     */
    @Transactional
    public void RutaSeguidaServiceImpl.delete(Iterable<Long> ids) {
        List<RutaSeguida> toDelete = getRutaSeguidaRepository().findAll(ids);
        getRutaSeguidaRepository().deleteInBatch(toDelete);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entity
     * @return RutaSeguida
     */
    @Transactional
    public RutaSeguida RutaSeguidaServiceImpl.save(RutaSeguida entity) {
        return getRutaSeguidaRepository().save(entity);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return RutaSeguida
     */
    public RutaSeguida RutaSeguidaServiceImpl.findOne(Long id) {
        return getRutaSeguidaRepository().findOne(id);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return RutaSeguida
     */
    public RutaSeguida RutaSeguidaServiceImpl.findOneForUpdate(Long id) {
        return getRutaSeguidaRepository().findOneDetached(id);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return List
     */
    public List<RutaSeguida> RutaSeguidaServiceImpl.findAll(Iterable<Long> ids) {
        return getRutaSeguidaRepository().findAll(ids);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return List
     */
    public List<RutaSeguida> RutaSeguidaServiceImpl.findAll() {
        return getRutaSeguidaRepository().findAll();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public long RutaSeguidaServiceImpl.count() {
        return getRutaSeguidaRepository().count();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<RutaSeguida> RutaSeguidaServiceImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        return getRutaSeguidaRepository().findAll(globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ruta
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<RutaSeguida> RutaSeguidaServiceImpl.findByRuta(Ruta ruta, GlobalSearch globalSearch, Pageable pageable) {
        return getRutaSeguidaRepository().findByRuta(ruta, globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param usuario
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<RutaSeguida> RutaSeguidaServiceImpl.findByUsuario(Usuario usuario, GlobalSearch globalSearch, Pageable pageable) {
        return getRutaSeguidaRepository().findByUsuario(usuario, globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ruta
     * @return Long
     */
    public long RutaSeguidaServiceImpl.countByRuta(Ruta ruta) {
        return getRutaSeguidaRepository().countByRuta(ruta);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param usuario
     * @return Long
     */
    public long RutaSeguidaServiceImpl.countByUsuario(Usuario usuario) {
        return getRutaSeguidaRepository().countByUsuario(usuario);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param formBean
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<RutaSeguida> RutaSeguidaServiceImpl.queryById(FilterConfigBean formBean, GlobalSearch globalSearch, Pageable pageable) {
        return getRutaSeguidaRepository().queryById(formBean, globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param formBean
     * @return Long
     */
    public long RutaSeguidaServiceImpl.countById(FilterConfigBean formBean) {
        return getRutaSeguidaRepository().countById(formBean);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Class
     */
    public Class<RutaSeguida> RutaSeguidaServiceImpl.getEntityType() {
        return RutaSeguida.class;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Class
     */
    public Class<Long> RutaSeguidaServiceImpl.getIdType() {
        return Long.class;
    }
    
}