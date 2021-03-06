package es.jcornez.ruta.entidad;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import org.springframework.roo.addon.dto.annotations.RooEntityProjection;
import org.springframework.roo.addon.javabean.annotations.RooEquals;
import org.springframework.roo.addon.javabean.annotations.RooJavaBean;
import org.springframework.roo.addon.javabean.annotations.RooToString;

/**
 * = TipoRutaProjection
 TODO Auto-generated class documentation
 *
 */
@RooJavaBean(settersByDefault = false)
@RooToString
@RooEquals
@RooEntityProjection(entity = TipoRuta.class, fields = { "id", "version", "nombre" })
public class TipoRutaProjection {

    private Long id;

    private Integer version;

    @NotNull
    @Size(max = 45)
    private String nombre;
}
