package es.jcornez.ruta.controller;
import es.jcornez.ruta.entidad.RutaSeguida;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.finder.RooSearch;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;

/**
 * = RutaSeguidasSearchJsonController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = RutaSeguida.class, pathPrefix = "/rest", type = ControllerType.SEARCH)
@RooSearch(finders = { "queryById" })
@RooJSON
public class RutaSeguidasSearchJsonController {
}
