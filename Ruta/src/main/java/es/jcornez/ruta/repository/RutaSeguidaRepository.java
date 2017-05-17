package es.jcornez.ruta.repository;
import es.jcornez.ruta.entidad.RutaSeguida;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepository;
import es.jcornez.ruta.model.entity.FilterConfigBean;
import org.springframework.roo.addon.layers.repository.jpa.annotations.finder.RooFinder;

/**
 * = RutaSeguidaRepository
 TODO Auto-generated class documentation
 *
 */
@RooJpaRepository(entity = RutaSeguida.class, finders = { @RooFinder(value = "queryById", returnType = RutaSeguida.class, formBean = FilterConfigBean.class) })
public interface RutaSeguidaRepository {
}
