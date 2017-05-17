package es.jcornez.ruta.controller;
import es.jcornez.ruta.entidad.Usuario;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;

/**
 * = UsuariosItemJsonController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = Usuario.class, pathPrefix = "/rest", type = ControllerType.ITEM)
@RooJSON
public class UsuariosItemJsonController {
}
