package es.jcornez.ruta.controller;
import es.jcornez.ruta.entidad.Ciudad;
import es.jcornez.ruta.service.api.CiudadService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = CiudadDeserializer
 TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = Ciudad.class)
public class CiudadDeserializer extends JsonObjectDeserializer<Ciudad> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private CiudadService ciudadService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param ciudadService
     * @param conversionService
     */
    @Autowired
    public CiudadDeserializer(@Lazy CiudadService ciudadService, ConversionService conversionService) {
        this.ciudadService = ciudadService;
        this.conversionService = conversionService;
    }
}
