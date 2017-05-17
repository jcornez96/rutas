package es.jcornez.ruta.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import es.jcornez.ruta.entidad.Pais;

/**
 * = PaisRepositoryImpl
 *
 * TODO Auto-generated class documentation
 *
 */ 
@RooJpaRepositoryCustomImpl(repository = PaisRepositoryCustom.class)
public class PaisRepositoryImpl extends QueryDslRepositorySupportExt<Pais> {

    /**
     * TODO Auto-generated constructor documentation
     */
    PaisRepositoryImpl() {
        super(Pais.class);
    }
}