package es.jcornez.ruta.controller;
import es.jcornez.ruta.entidad.Ruta;
import es.jcornez.ruta.service.api.RutaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = RutaDeserializer
 TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = Ruta.class)
public class RutaDeserializer extends JsonObjectDeserializer<Ruta> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private RutaService rutaService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param rutaService
     * @param conversionService
     */
    @Autowired
    public RutaDeserializer(@Lazy RutaService rutaService, ConversionService conversionService) {
        this.rutaService = rutaService;
        this.conversionService = conversionService;
    }
}
