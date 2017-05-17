package es.jcornez.ruta.entidad;
import io.springlets.format.EntityFormat;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import org.springframework.format.annotation.NumberFormat;
import org.springframework.roo.addon.dto.annotations.RooEntityProjection;
import org.springframework.roo.addon.javabean.annotations.RooEquals;
import org.springframework.roo.addon.javabean.annotations.RooJavaBean;
import org.springframework.roo.addon.javabean.annotations.RooToString;

/**
 * = PuntoRutaProjection
 TODO Auto-generated class documentation
 *
 */
@RooJavaBean(settersByDefault = false)
@RooToString
@RooEquals
@RooEntityProjection(entity = PuntoRuta.class, fields = { "id", "version", "orden", "longitud", "latitud", "comentario", "ruta" })
public class PuntoRutaProjection {

    private Long id;

    private Integer version;

    @NotNull
    @Min(0L)
    @NumberFormat
    private Integer orden;

    @NotNull
    @NumberFormat
    private Double longitud;

    @NotNull
    @NumberFormat
    private Double latitud;

    private String comentario;

    @EntityFormat
    private Ruta ruta;
}
