package es.jcornez.ruta.controller;
import es.jcornez.ruta.entidad.Ruta;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.finder.RooSearch;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;

/**
 * = RutasSearchJsonController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = Ruta.class, pathPrefix = "/rest", type = ControllerType.SEARCH)
@RooSearch(finders = { "queryById" })
@RooJSON
public class RutasSearchJsonController {
}
