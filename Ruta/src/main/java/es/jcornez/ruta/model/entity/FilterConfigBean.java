package es.jcornez.ruta.model.entity;
import org.springframework.roo.addon.dto.annotations.RooDTO;
import org.springframework.roo.addon.javabean.annotations.RooJavaBean;
import org.springframework.format.annotation.NumberFormat;
import javax.validation.constraints.NotNull;

/**
 * = FilterConfigBean
 TODO Auto-generated class documentation
 *
 */
@RooDTO
@RooJavaBean
public class FilterConfigBean {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NumberFormat
    private Long id;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String filterConfig;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    private String orderBy;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    private String orderDirection;
}
