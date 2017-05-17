package es.jcornez.ruta.entidad;
import io.springlets.format.EntityFormat;
import java.util.Date;
import javax.validation.constraints.Digits;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.NumberFormat;
import org.springframework.roo.addon.dto.annotations.RooEntityProjection;
import org.springframework.roo.addon.javabean.annotations.RooEquals;
import org.springframework.roo.addon.javabean.annotations.RooJavaBean;
import org.springframework.roo.addon.javabean.annotations.RooToString;

/**
 * = UsuarioProjection
 TODO Auto-generated class documentation
 *
 */
@RooJavaBean(settersByDefault = false)
@RooToString
@RooEquals
@RooEntityProjection(entity = Usuario.class, fields = { "id", "version", "telefono", "nombre", "apellidos", "fechaNacimiento", "genero", "codigoPostal", "fechaAlta", "ciudad", "tipoUsuario" })
public class UsuarioProjection {

    private Long id;

    private Integer version;

    @NotNull
    @Digits(integer = 15, fraction = 0)
    @NumberFormat
    private Integer telefono;

    @NotNull
    private String nombre;

    @NotNull
    private String apellidos;

    @DateTimeFormat(style = "M-")
    private Date fechaNacimiento;

    @Size(max = 1)
    private String genero;

    @NumberFormat
    private Integer codigoPostal;

    @DateTimeFormat(style = "M-")
    private Date fechaAlta;

    @EntityFormat
    private Ciudad ciudad;

    @EntityFormat
    private TipoUsuario tipoUsuario;
}
