package es.jcornez.ruta.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import es.jcornez.ruta.entidad.Ruta;

/**
 * = RutaRepositoryImpl
 *
 * TODO Auto-generated class documentation
 *
 */ 
@RooJpaRepositoryCustomImpl(repository = RutaRepositoryCustom.class)
public class RutaRepositoryImpl extends QueryDslRepositorySupportExt<Ruta> {

    /**
     * TODO Auto-generated constructor documentation
     */
    RutaRepositoryImpl() {
        super(Ruta.class);
    }
}