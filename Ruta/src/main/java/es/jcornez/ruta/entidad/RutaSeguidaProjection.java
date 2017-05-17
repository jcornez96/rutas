package es.jcornez.ruta.entidad;
import io.springlets.format.EntityFormat;
import java.util.Date;
import javax.validation.constraints.NotNull;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.roo.addon.dto.annotations.RooEntityProjection;
import org.springframework.roo.addon.javabean.annotations.RooEquals;
import org.springframework.roo.addon.javabean.annotations.RooJavaBean;
import org.springframework.roo.addon.javabean.annotations.RooToString;

/**
 * = RutaSeguidaProjection
 TODO Auto-generated class documentation
 *
 */
@RooJavaBean(settersByDefault = false)
@RooToString
@RooEquals
@RooEntityProjection(entity = RutaSeguida.class, fields = { "id", "version", "fechaSeguimiento", "ruta", "usuario" })
public class RutaSeguidaProjection {

    private Long id;

    private Integer version;

    @NotNull
    @DateTimeFormat(style = "M-")
    private Date fechaSeguimiento;

    @EntityFormat
    private Ruta ruta;

    @EntityFormat
    private Usuario usuario;
}
