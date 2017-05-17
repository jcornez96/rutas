package es.jcornez.ruta.controller;
import es.jcornez.ruta.entidad.TipoUsuario;
import es.jcornez.ruta.service.api.TipoUsuarioService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = TipoUsuarioDeserializer
 TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = TipoUsuario.class)
public class TipoUsuarioDeserializer extends JsonObjectDeserializer<TipoUsuario> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private TipoUsuarioService tipoUsuarioService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param tipoUsuarioService
     * @param conversionService
     */
    @Autowired
    public TipoUsuarioDeserializer(@Lazy TipoUsuarioService tipoUsuarioService, ConversionService conversionService) {
        this.tipoUsuarioService = tipoUsuarioService;
        this.conversionService = conversionService;
    }
}
