// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.jcornez.ruta.controller;

import es.jcornez.ruta.controller.UsuariosSearchJsonController;
import es.jcornez.ruta.service.api.UsuarioService;

privileged aspect UsuariosSearchJsonController_Roo_Controller {
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private UsuarioService UsuariosSearchJsonController.usuarioService;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return UsuarioService
     */
    public UsuarioService UsuariosSearchJsonController.getUsuarioService() {
        return usuarioService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param usuarioService
     */
    public void UsuariosSearchJsonController.setUsuarioService(UsuarioService usuarioService) {
        this.usuarioService = usuarioService;
    }
    
}
