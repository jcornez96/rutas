// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.jcornez.ruta.entidad;

import es.jcornez.ruta.entidad.Ciudad;
import es.jcornez.ruta.entidad.PuntoRuta;
import es.jcornez.ruta.entidad.Ruta;
import es.jcornez.ruta.entidad.RutaSeguida;
import es.jcornez.ruta.entidad.TipoRuta;
import es.jcornez.ruta.entidad.Usuario;
import java.util.Date;
import java.util.Set;

privileged aspect Ruta_Roo_JavaBean {
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public Long Ruta.getId() {
        return this.id;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     */
    public void Ruta.setId(Long id) {
        this.id = id;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Integer
     */
    public Integer Ruta.getVersion() {
        return this.version;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param version
     */
    public void Ruta.setVersion(Integer version) {
        this.version = version;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String Ruta.getNombre() {
        return this.nombre;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param nombre
     */
    public void Ruta.setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String Ruta.getDescripcion() {
        return this.descripcion;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param descripcion
     */
    public void Ruta.setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Date
     */
    public Date Ruta.getFechaCreacion() {
        return this.fechaCreacion;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param fechaCreacion
     */
    public void Ruta.setFechaCreacion(Date fechaCreacion) {
        this.fechaCreacion = fechaCreacion;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Byte
     */
    public byte[] Ruta.getFotoPortada() {
        return this.fotoPortada;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param fotoPortada
     */
    public void Ruta.setFotoPortada(byte[] fotoPortada) {
        this.fotoPortada = fotoPortada;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Set
     */
    public Set<RutaSeguida> Ruta.getRutasSeguidas() {
        return this.rutasSeguidas;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param rutasSeguidas
     */
    public void Ruta.setRutasSeguidas(Set<RutaSeguida> rutasSeguidas) {
        this.rutasSeguidas = rutasSeguidas;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Set
     */
    public Set<PuntoRuta> Ruta.getPuntosRuta() {
        return this.puntosRuta;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param puntosRuta
     */
    public void Ruta.setPuntosRuta(Set<PuntoRuta> puntosRuta) {
        this.puntosRuta = puntosRuta;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Usuario
     */
    public Usuario Ruta.getUsuario() {
        return this.usuario;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param usuario
     */
    public void Ruta.setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Ciudad
     */
    public Ciudad Ruta.getCiudad() {
        return this.ciudad;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ciudad
     */
    public void Ruta.setCiudad(Ciudad ciudad) {
        this.ciudad = ciudad;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return TipoRuta
     */
    public TipoRuta Ruta.getTipoRuta() {
        return this.tipoRuta;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param tipoRuta
     */
    public void Ruta.setTipoRuta(TipoRuta tipoRuta) {
        this.tipoRuta = tipoRuta;
    }
    
}
