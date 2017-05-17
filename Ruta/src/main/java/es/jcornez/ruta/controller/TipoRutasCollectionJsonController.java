package es.jcornez.ruta.controller;
import es.jcornez.ruta.entidad.TipoRuta;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;

/**
 * = TipoRutasCollectionJsonController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = TipoRuta.class, pathPrefix = "/rest", type = ControllerType.COLLECTION)
@RooJSON
public class TipoRutasCollectionJsonController {
}
