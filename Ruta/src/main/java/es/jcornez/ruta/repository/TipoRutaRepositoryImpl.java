package es.jcornez.ruta.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import es.jcornez.ruta.entidad.TipoRuta;

/**
 * = TipoRutaRepositoryImpl
 *
 * TODO Auto-generated class documentation
 *
 */ 
@RooJpaRepositoryCustomImpl(repository = TipoRutaRepositoryCustom.class)
public class TipoRutaRepositoryImpl extends QueryDslRepositorySupportExt<TipoRuta> {

    /**
     * TODO Auto-generated constructor documentation
     */
    TipoRutaRepositoryImpl() {
        super(TipoRuta.class);
    }
}