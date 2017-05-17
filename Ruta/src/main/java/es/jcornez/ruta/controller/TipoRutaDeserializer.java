package es.jcornez.ruta.controller;
import es.jcornez.ruta.entidad.TipoRuta;
import es.jcornez.ruta.service.api.TipoRutaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = TipoRutaDeserializer
 TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = TipoRuta.class)
public class TipoRutaDeserializer extends JsonObjectDeserializer<TipoRuta> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private TipoRutaService tipoRutaService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param tipoRutaService
     * @param conversionService
     */
    @Autowired
    public TipoRutaDeserializer(@Lazy TipoRutaService tipoRutaService, ConversionService conversionService) {
        this.tipoRutaService = tipoRutaService;
        this.conversionService = conversionService;
    }
}
