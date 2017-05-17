package es.jcornez.ruta.entidad;
import io.springlets.format.EntityFormat;
import javax.validation.constraints.NotNull;
import org.springframework.roo.addon.dto.annotations.RooEntityProjection;
import org.springframework.roo.addon.javabean.annotations.RooEquals;
import org.springframework.roo.addon.javabean.annotations.RooJavaBean;
import org.springframework.roo.addon.javabean.annotations.RooToString;

/**
 * = CiudadProjection
 TODO Auto-generated class documentation
 *
 */
@RooJavaBean(settersByDefault = false)
@RooToString
@RooEquals
@RooEntityProjection(entity = Ciudad.class, fields = { "id", "version", "nombre", "pais" })
public class CiudadProjection {

    private Long id;

    private Integer version;

    @NotNull
    private String nombre;

    @EntityFormat
    private Pais pais;
}
