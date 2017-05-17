package es.jcornez.ruta.repository;
import es.jcornez.ruta.entidad.Usuario;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepository;
import es.jcornez.ruta.model.entity.FilterConfigBean;
import org.springframework.roo.addon.layers.repository.jpa.annotations.finder.RooFinder;

/**
 * = UsuarioRepository
 TODO Auto-generated class documentation
 *
 */
@RooJpaRepository(entity = Usuario.class, finders = { @RooFinder(value = "queryById", returnType = Usuario.class, formBean = FilterConfigBean.class) })
public interface UsuarioRepository {
}
