// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.jcornez.ruta.service.impl;

import es.jcornez.ruta.entidad.Ciudad;
import es.jcornez.ruta.entidad.PuntoRuta;
import es.jcornez.ruta.entidad.Ruta;
import es.jcornez.ruta.entidad.RutaSeguida;
import es.jcornez.ruta.entidad.TipoRuta;
import es.jcornez.ruta.entidad.Usuario;
import es.jcornez.ruta.model.entity.FilterConfigBean;
import es.jcornez.ruta.repository.RutaRepository;
import es.jcornez.ruta.service.api.PuntoRutaService;
import es.jcornez.ruta.service.api.RutaSeguidaService;
import es.jcornez.ruta.service.impl.RutaServiceImpl;
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

privileged aspect RutaServiceImpl_Roo_Service_Impl {
    
    declare @type: RutaServiceImpl: @Service;
    
    declare @type: RutaServiceImpl: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private RutaRepository RutaServiceImpl.rutaRepository;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private PuntoRutaService RutaServiceImpl.puntoRutaService;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private RutaSeguidaService RutaServiceImpl.rutaSeguidaService;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param rutaRepository
     * @param puntoRutaService
     * @param rutaSeguidaService
     */
    @Autowired
    public RutaServiceImpl.new(RutaRepository rutaRepository, @Lazy PuntoRutaService puntoRutaService, @Lazy RutaSeguidaService rutaSeguidaService) {
        setRutaRepository(rutaRepository);
        setPuntoRutaService(puntoRutaService);
        setRutaSeguidaService(rutaSeguidaService);
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return RutaRepository
     */
    public RutaRepository RutaServiceImpl.getRutaRepository() {
        return rutaRepository;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param rutaRepository
     */
    public void RutaServiceImpl.setRutaRepository(RutaRepository rutaRepository) {
        this.rutaRepository = rutaRepository;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return PuntoRutaService
     */
    public PuntoRutaService RutaServiceImpl.getPuntoRutaService() {
        return puntoRutaService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param puntoRutaService
     */
    public void RutaServiceImpl.setPuntoRutaService(PuntoRutaService puntoRutaService) {
        this.puntoRutaService = puntoRutaService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return RutaSeguidaService
     */
    public RutaSeguidaService RutaServiceImpl.getRutaSeguidaService() {
        return rutaSeguidaService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param rutaSeguidaService
     */
    public void RutaServiceImpl.setRutaSeguidaService(RutaSeguidaService rutaSeguidaService) {
        this.rutaSeguidaService = rutaSeguidaService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ruta
     * @param puntosRutaToAdd
     * @return Ruta
     */
    @Transactional
    public Ruta RutaServiceImpl.addToPuntosRuta(Ruta ruta, Iterable<Long> puntosRutaToAdd) {
        List<PuntoRuta> puntosRuta = getPuntoRutaService().findAll(puntosRutaToAdd);
        ruta.addToPuntosRuta(puntosRuta);
        return getRutaRepository().save(ruta);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ruta
     * @param rutasSeguidasToAdd
     * @return Ruta
     */
    @Transactional
    public Ruta RutaServiceImpl.addToRutasSeguidas(Ruta ruta, Iterable<Long> rutasSeguidasToAdd) {
        List<RutaSeguida> rutasSeguidas = getRutaSeguidaService().findAll(rutasSeguidasToAdd);
        ruta.addToRutasSeguidas(rutasSeguidas);
        return getRutaRepository().save(ruta);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ruta
     * @param puntosRutaToRemove
     * @return Ruta
     */
    @Transactional
    public Ruta RutaServiceImpl.removeFromPuntosRuta(Ruta ruta, Iterable<Long> puntosRutaToRemove) {
        List<PuntoRuta> puntosRuta = getPuntoRutaService().findAll(puntosRutaToRemove);
        ruta.removeFromPuntosRuta(puntosRuta);
        return getRutaRepository().save(ruta);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ruta
     * @param rutasSeguidasToRemove
     * @return Ruta
     */
    @Transactional
    public Ruta RutaServiceImpl.removeFromRutasSeguidas(Ruta ruta, Iterable<Long> rutasSeguidasToRemove) {
        List<RutaSeguida> rutasSeguidas = getRutaSeguidaService().findAll(rutasSeguidasToRemove);
        ruta.removeFromRutasSeguidas(rutasSeguidas);
        return getRutaRepository().save(ruta);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ruta
     * @param puntosRuta
     * @return Ruta
     */
    @Transactional
    public Ruta RutaServiceImpl.setPuntosRuta(Ruta ruta, Iterable<Long> puntosRuta) {
        List<PuntoRuta> items = getPuntoRutaService().findAll(puntosRuta);
        Set<PuntoRuta> currents = ruta.getPuntosRuta();
        Set<PuntoRuta> toRemove = new HashSet<PuntoRuta>();
        for (Iterator<PuntoRuta> iterator = currents.iterator(); iterator.hasNext();) {
            PuntoRuta nextPuntoRuta = iterator.next();
            if (items.contains(nextPuntoRuta)) {
                items.remove(nextPuntoRuta);
            } else {
                toRemove.add(nextPuntoRuta);
            }
        }
        ruta.removeFromPuntosRuta(toRemove);
        ruta.addToPuntosRuta(items);
        // Force the version update of the parent side to know that the parent has changed
        // because it has new books assigned
        ruta.setVersion(ruta.getVersion() + 1);
        return getRutaRepository().save(ruta);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ruta
     * @param rutasSeguidas
     * @return Ruta
     */
    @Transactional
    public Ruta RutaServiceImpl.setRutasSeguidas(Ruta ruta, Iterable<Long> rutasSeguidas) {
        List<RutaSeguida> items = getRutaSeguidaService().findAll(rutasSeguidas);
        Set<RutaSeguida> currents = ruta.getRutasSeguidas();
        Set<RutaSeguida> toRemove = new HashSet<RutaSeguida>();
        for (Iterator<RutaSeguida> iterator = currents.iterator(); iterator.hasNext();) {
            RutaSeguida nextRutaSeguida = iterator.next();
            if (items.contains(nextRutaSeguida)) {
                items.remove(nextRutaSeguida);
            } else {
                toRemove.add(nextRutaSeguida);
            }
        }
        ruta.removeFromRutasSeguidas(toRemove);
        ruta.addToRutasSeguidas(items);
        // Force the version update of the parent side to know that the parent has changed
        // because it has new books assigned
        ruta.setVersion(ruta.getVersion() + 1);
        return getRutaRepository().save(ruta);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ruta
     */
    @Transactional
    public void RutaServiceImpl.delete(Ruta ruta) {
        // Clear bidirectional many-to-one child relationship with Ciudad
        if (ruta.getCiudad() != null) {
            ruta.getCiudad().getRutas().remove(ruta);
        }
        
        // Clear bidirectional many-to-one child relationship with Usuario
        if (ruta.getUsuario() != null) {
            ruta.getUsuario().getRutas().remove(ruta);
        }
        
        // Clear bidirectional many-to-one child relationship with TipoRuta
        if (ruta.getTipoRuta() != null) {
            ruta.getTipoRuta().getRutas().remove(ruta);
        }
        
        // Clear bidirectional one-to-many parent relationship with PuntoRuta
        for (PuntoRuta item : ruta.getPuntosRuta()) {
            item.setRuta(null);
        }
        
        // Clear bidirectional one-to-many parent relationship with RutaSeguida
        for (RutaSeguida item : ruta.getRutasSeguidas()) {
            item.setRuta(null);
        }
        
        getRutaRepository().delete(ruta);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entities
     * @return List
     */
    @Transactional
    public List<Ruta> RutaServiceImpl.save(Iterable<Ruta> entities) {
        return getRutaRepository().save(entities);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     */
    @Transactional
    public void RutaServiceImpl.delete(Iterable<Long> ids) {
        List<Ruta> toDelete = getRutaRepository().findAll(ids);
        getRutaRepository().deleteInBatch(toDelete);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entity
     * @return Ruta
     */
    @Transactional
    public Ruta RutaServiceImpl.save(Ruta entity) {
        return getRutaRepository().save(entity);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Ruta
     */
    public Ruta RutaServiceImpl.findOne(Long id) {
        return getRutaRepository().findOne(id);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Ruta
     */
    public Ruta RutaServiceImpl.findOneForUpdate(Long id) {
        return getRutaRepository().findOneDetached(id);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return List
     */
    public List<Ruta> RutaServiceImpl.findAll(Iterable<Long> ids) {
        return getRutaRepository().findAll(ids);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return List
     */
    public List<Ruta> RutaServiceImpl.findAll() {
        return getRutaRepository().findAll();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public long RutaServiceImpl.count() {
        return getRutaRepository().count();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Ruta> RutaServiceImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        return getRutaRepository().findAll(globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ciudad
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Ruta> RutaServiceImpl.findByCiudad(Ciudad ciudad, GlobalSearch globalSearch, Pageable pageable) {
        return getRutaRepository().findByCiudad(ciudad, globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param tipoRuta
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Ruta> RutaServiceImpl.findByTipoRuta(TipoRuta tipoRuta, GlobalSearch globalSearch, Pageable pageable) {
        return getRutaRepository().findByTipoRuta(tipoRuta, globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param usuario
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Ruta> RutaServiceImpl.findByUsuario(Usuario usuario, GlobalSearch globalSearch, Pageable pageable) {
        return getRutaRepository().findByUsuario(usuario, globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ciudad
     * @return Long
     */
    public long RutaServiceImpl.countByCiudad(Ciudad ciudad) {
        return getRutaRepository().countByCiudad(ciudad);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param tipoRuta
     * @return Long
     */
    public long RutaServiceImpl.countByTipoRuta(TipoRuta tipoRuta) {
        return getRutaRepository().countByTipoRuta(tipoRuta);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param usuario
     * @return Long
     */
    public long RutaServiceImpl.countByUsuario(Usuario usuario) {
        return getRutaRepository().countByUsuario(usuario);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param formBean
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Ruta> RutaServiceImpl.queryById(FilterConfigBean formBean, GlobalSearch globalSearch, Pageable pageable) {
        return getRutaRepository().queryById(formBean, globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param formBean
     * @return Long
     */
    public long RutaServiceImpl.countById(FilterConfigBean formBean) {
        return getRutaRepository().countById(formBean);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Class
     */
    public Class<Ruta> RutaServiceImpl.getEntityType() {
        return Ruta.class;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Class
     */
    public Class<Long> RutaServiceImpl.getIdType() {
        return Long.class;
    }
    
}
