package es.jcornez.ruta.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import es.jcornez.ruta.entidad.Ciudad;

/**
 * = CiudadRepositoryImpl
 *
 * TODO Auto-generated class documentation
 *
 */ 
@RooJpaRepositoryCustomImpl(repository = CiudadRepositoryCustom.class)
public class CiudadRepositoryImpl extends QueryDslRepositorySupportExt<Ciudad> {

    /**
     * TODO Auto-generated constructor documentation
     */
    CiudadRepositoryImpl() {
        super(Ciudad.class);
    }
}