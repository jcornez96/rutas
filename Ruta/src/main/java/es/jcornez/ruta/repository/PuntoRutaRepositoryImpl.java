package es.jcornez.ruta.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import es.jcornez.ruta.entidad.PuntoRuta;

/**
 * = PuntoRutaRepositoryImpl
 *
 * TODO Auto-generated class documentation
 *
 */ 
@RooJpaRepositoryCustomImpl(repository = PuntoRutaRepositoryCustom.class)
public class PuntoRutaRepositoryImpl extends QueryDslRepositorySupportExt<PuntoRuta> {

    /**
     * TODO Auto-generated constructor documentation
     */
    PuntoRutaRepositoryImpl() {
        super(PuntoRuta.class);
    }
}