package es.jcornez.ruta.controller;
import es.jcornez.ruta.entidad.RutaSeguida;
import es.jcornez.ruta.service.api.RutaSeguidaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = RutaSeguidaDeserializer
 TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = RutaSeguida.class)
public class RutaSeguidaDeserializer extends JsonObjectDeserializer<RutaSeguida> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private RutaSeguidaService rutaSeguidaService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param rutaSeguidaService
     * @param conversionService
     */
    @Autowired
    public RutaSeguidaDeserializer(@Lazy RutaSeguidaService rutaSeguidaService, ConversionService conversionService) {
        this.rutaSeguidaService = rutaSeguidaService;
        this.conversionService = conversionService;
    }
}
