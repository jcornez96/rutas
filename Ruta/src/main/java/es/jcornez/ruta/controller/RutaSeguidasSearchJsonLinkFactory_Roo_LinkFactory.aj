// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.jcornez.ruta.controller;

import es.jcornez.ruta.controller.RutaSeguidasSearchJsonController;
import es.jcornez.ruta.controller.RutaSeguidasSearchJsonLinkFactory;
import io.springlets.web.mvc.util.MethodLinkFactory;
import io.springlets.web.mvc.util.SpringletsMvcUriComponentsBuilder;
import java.util.Map;
import org.springframework.stereotype.Component;
import org.springframework.web.util.UriComponents;

privileged aspect RutaSeguidasSearchJsonLinkFactory_Roo_LinkFactory {
    
    declare parents: RutaSeguidasSearchJsonLinkFactory implements MethodLinkFactory<RutaSeguidasSearchJsonController>;
    
    declare @type: RutaSeguidasSearchJsonLinkFactory: @Component;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String RutaSeguidasSearchJsonLinkFactory.QUERYBYID = "queryById";
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Class
     */
    public Class<RutaSeguidasSearchJsonController> RutaSeguidasSearchJsonLinkFactory.getControllerClass() {
        return RutaSeguidasSearchJsonController.class;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param methodName
     * @param parameters
     * @param pathVariables
     * @return UriComponents
     */
    public UriComponents RutaSeguidasSearchJsonLinkFactory.toUri(String methodName, Object[] parameters, Map<String, Object> pathVariables) {
        if (methodName.equals(QUERYBYID)) {
            return SpringletsMvcUriComponentsBuilder.fromMethodCall(SpringletsMvcUriComponentsBuilder.on(getControllerClass()).queryById(null, null, null)).buildAndExpand(pathVariables);
        }
        throw new IllegalArgumentException("Invalid method name: " + methodName);
    }
    
}
