// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.jcornez.ruta.controller;

import es.jcornez.ruta.controller.CiudadsCollectionJsonController;
import es.jcornez.ruta.service.api.CiudadService;

privileged aspect CiudadsCollectionJsonController_Roo_Controller {
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private CiudadService CiudadsCollectionJsonController.ciudadService;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return CiudadService
     */
    public CiudadService CiudadsCollectionJsonController.getCiudadService() {
        return ciudadService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ciudadService
     */
    public void CiudadsCollectionJsonController.setCiudadService(CiudadService ciudadService) {
        this.ciudadService = ciudadService;
    }
    
}
