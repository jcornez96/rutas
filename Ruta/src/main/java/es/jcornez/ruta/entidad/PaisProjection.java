package es.jcornez.ruta.entidad;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import org.springframework.format.annotation.NumberFormat;
import org.springframework.roo.addon.dto.annotations.RooEntityProjection;
import org.springframework.roo.addon.javabean.annotations.RooEquals;
import org.springframework.roo.addon.javabean.annotations.RooJavaBean;
import org.springframework.roo.addon.javabean.annotations.RooToString;

/**
 * = PaisProjection
 TODO Auto-generated class documentation
 *
 */
@RooJavaBean(settersByDefault = false)
@RooToString
@RooEquals
@RooEntityProjection(entity = Pais.class, fields = { "id", "version", "codigoPais", "nombre", "codigoMarcacion" })
public class PaisProjection {

    private Long id;

    private Integer version;

    @NotNull
    @Size(min = 2, max = 2)
    private String codigoPais;

    @NotNull
    private String nombre;

    @NumberFormat
    private Integer codigoMarcacion;
}
