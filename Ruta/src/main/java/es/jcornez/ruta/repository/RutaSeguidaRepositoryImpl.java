package es.jcornez.ruta.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import es.jcornez.ruta.entidad.RutaSeguida;

/**
 * = RutaSeguidaRepositoryImpl
 *
 * TODO Auto-generated class documentation
 *
 */ 
@RooJpaRepositoryCustomImpl(repository = RutaSeguidaRepositoryCustom.class)
public class RutaSeguidaRepositoryImpl extends QueryDslRepositorySupportExt<RutaSeguida> {

    /**
     * TODO Auto-generated constructor documentation
     */
    RutaSeguidaRepositoryImpl() {
        super(RutaSeguida.class);
    }
}