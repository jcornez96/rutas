package es.jcornez.ruta.controller;
import es.jcornez.ruta.entidad.TipoUsuario;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;

/**
 * = TipoUsuariosCollectionJsonController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = TipoUsuario.class, pathPrefix = "/rest", type = ControllerType.COLLECTION)
@RooJSON
public class TipoUsuariosCollectionJsonController {
}
