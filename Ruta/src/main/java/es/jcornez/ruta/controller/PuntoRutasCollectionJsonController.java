package es.jcornez.ruta.controller;
import es.jcornez.ruta.entidad.PuntoRuta;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;

/**
 * = PuntoRutasCollectionJsonController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = PuntoRuta.class, pathPrefix = "/rest", type = ControllerType.COLLECTION)
@RooJSON
public class PuntoRutasCollectionJsonController {
}
