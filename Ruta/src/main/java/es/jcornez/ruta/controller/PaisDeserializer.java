package es.jcornez.ruta.controller;
import es.jcornez.ruta.entidad.Pais;
import es.jcornez.ruta.service.api.PaisService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = PaisDeserializer
 TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = Pais.class)
public class PaisDeserializer extends JsonObjectDeserializer<Pais> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private PaisService paisService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param paisService
     * @param conversionService
     */
    @Autowired
    public PaisDeserializer(@Lazy PaisService paisService, ConversionService conversionService) {
        this.paisService = paisService;
        this.conversionService = conversionService;
    }
}
