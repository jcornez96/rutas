package es.jcornez.ruta.controller;
import es.jcornez.ruta.entidad.PuntoRuta;
import es.jcornez.ruta.service.api.PuntoRutaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = PuntoRutaDeserializer
 TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = PuntoRuta.class)
public class PuntoRutaDeserializer extends JsonObjectDeserializer<PuntoRuta> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private PuntoRutaService puntoRutaService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param puntoRutaService
     * @param conversionService
     */
    @Autowired
    public PuntoRutaDeserializer(@Lazy PuntoRutaService puntoRutaService, ConversionService conversionService) {
        this.puntoRutaService = puntoRutaService;
        this.conversionService = conversionService;
    }
}
