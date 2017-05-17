package es.jcornez.ruta.entidad;
import org.springframework.roo.addon.javabean.annotations.RooEquals;
import org.springframework.roo.addon.javabean.annotations.RooJavaBean;
import org.springframework.roo.addon.javabean.annotations.RooToString;
import org.springframework.roo.addon.jpa.annotations.entity.RooJpaEntity;
import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import org.springframework.format.annotation.NumberFormat;
import io.springlets.format.EntityFormat;
import javax.persistence.FetchType;
import javax.persistence.ManyToOne;

/**
 * = PuntoRuta
 TODO Auto-generated class documentation
 *
 */
@RooJavaBean
@RooToString
@RooJpaEntity
@RooEquals(isJpaEntity = true)
public class PuntoRuta {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID_PUNTO_RUTA")
    private Long id;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @Version
    private Integer version;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Column(name = "ORDEN")
    @Min(0L)
    @NumberFormat
    private Integer orden;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Column(name = "LONGITUD")
    @NumberFormat
    private Double longitud;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Column(name = "LATITUD")
    @NumberFormat
    private Double latitud;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @Column(name = "COMENTARIO")
    private String comentario;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @ManyToOne(fetch = FetchType.LAZY)
    @EntityFormat
    private Ruta ruta;
}
