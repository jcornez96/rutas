package es.jcornez.ruta.repository;
import es.jcornez.ruta.entidad.Ruta;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepository;
import es.jcornez.ruta.model.entity.FilterConfigBean;
import org.springframework.roo.addon.layers.repository.jpa.annotations.finder.RooFinder;

/**
 * = RutaRepository
 TODO Auto-generated class documentation
 *
 */
@RooJpaRepository(entity = Ruta.class, finders = { @RooFinder(value = "queryById", returnType = Ruta.class, formBean = FilterConfigBean.class) })
public interface RutaRepository {
}
