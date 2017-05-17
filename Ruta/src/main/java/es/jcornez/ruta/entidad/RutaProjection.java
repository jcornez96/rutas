package es.jcornez.ruta.entidad;
import io.springlets.format.EntityFormat;
import java.util.Date;
import javax.validation.constraints.NotNull;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.roo.addon.dto.annotations.RooEntityProjection;
import org.springframework.roo.addon.javabean.annotations.RooEquals;
import org.springframework.roo.addon.javabean.annotations.RooJavaBean;
import org.springframework.roo.addon.javabean.annotations.RooToString;
import org.springframework.roo.classpath.operations.jsr303.RooUploadedFile;

/**
 * = RutaProjection
 TODO Auto-generated class documentation
 *
 */
@RooJavaBean(settersByDefault = false)
@RooToString
@RooEquals
@RooEntityProjection(entity = Ruta.class, fields = { "id", "version", "nombre", "descripcion", "fechaCreacion", "fotoPortada", "usuario", "ciudad", "tipoRuta" })
public class RutaProjection {

    private Long id;

    private Integer version;

    @NotNull
    private String nombre;

    @NotNull
    private String descripcion;

    @NotNull
    @DateTimeFormat(style = "M-")
    private Date fechaCreacion;

    @RooUploadedFile(contentType = "image/jpeg")
    private byte[] fotoPortada;

    @EntityFormat
    private Usuario usuario;

    @EntityFormat
    private Ciudad ciudad;

    @EntityFormat
    private TipoRuta tipoRuta;
}
