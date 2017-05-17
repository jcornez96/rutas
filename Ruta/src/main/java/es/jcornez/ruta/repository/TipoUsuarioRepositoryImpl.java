package es.jcornez.ruta.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import es.jcornez.ruta.entidad.TipoUsuario;

/**
 * = TipoUsuarioRepositoryImpl
 *
 * TODO Auto-generated class documentation
 *
 */ 
@RooJpaRepositoryCustomImpl(repository = TipoUsuarioRepositoryCustom.class)
public class TipoUsuarioRepositoryImpl extends QueryDslRepositorySupportExt<TipoUsuario> {

    /**
     * TODO Auto-generated constructor documentation
     */
    TipoUsuarioRepositoryImpl() {
        super(TipoUsuario.class);
    }
}