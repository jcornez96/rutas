// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.jcornez.ruta.controller;

import es.jcornez.ruta.controller.PaissItemJsonController;
import es.jcornez.ruta.service.api.PaisService;

privileged aspect PaissItemJsonController_Roo_Controller {
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private PaisService PaissItemJsonController.paisService;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return PaisService
     */
    public PaisService PaissItemJsonController.getPaisService() {
        return paisService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param paisService
     */
    public void PaissItemJsonController.setPaisService(PaisService paisService) {
        this.paisService = paisService;
    }
    
}
