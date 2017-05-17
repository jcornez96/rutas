package es.jcornez.ruta.controller;
import es.jcornez.ruta.entidad.Ciudad;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;

/**
 * = CiudadsItemJsonController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = Ciudad.class, pathPrefix = "/rest", type = ControllerType.ITEM)
@RooJSON
public class CiudadsItemJsonController {
}
