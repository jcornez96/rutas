package es.jcornez.ruta.controller;
import es.jcornez.ruta.entidad.Pais;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;

/**
 * = PaissItemJsonController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = Pais.class, pathPrefix = "/rest", type = ControllerType.ITEM)
@RooJSON
public class PaissItemJsonController {
}
