// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.jcornez.ruta.controller;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonNode;
import es.jcornez.ruta.controller.PuntoRutaDeserializer;
import es.jcornez.ruta.entidad.PuntoRuta;
import es.jcornez.ruta.service.api.PuntoRutaService;
import io.springlets.web.NotFoundException;
import java.io.IOException;
import org.springframework.boot.jackson.JsonComponent;
import org.springframework.core.convert.ConversionService;

privileged aspect PuntoRutaDeserializer_Roo_EntityDeserializer {
    
    declare @type: PuntoRutaDeserializer: @JsonComponent;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return PuntoRutaService
     */
    public PuntoRutaService PuntoRutaDeserializer.getPuntoRutaService() {
        return puntoRutaService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param puntoRutaService
     */
    public void PuntoRutaDeserializer.setPuntoRutaService(PuntoRutaService puntoRutaService) {
        this.puntoRutaService = puntoRutaService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ConversionService
     */
    public ConversionService PuntoRutaDeserializer.getConversionService() {
        return conversionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param conversionService
     */
    public void PuntoRutaDeserializer.setConversionService(ConversionService conversionService) {
        this.conversionService = conversionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param jsonParser
     * @param context
     * @param codec
     * @param tree
     * @return PuntoRuta
     * @throws IOException
     */
    public PuntoRuta PuntoRutaDeserializer.deserializeObject(JsonParser jsonParser, DeserializationContext context, ObjectCodec codec, JsonNode tree) throws IOException {
        String idText = tree.asText();
        Long id = conversionService.convert(idText, Long.class);
        PuntoRuta puntoRuta = puntoRutaService.findOne(id);
        if (puntoRuta == null) {
            throw new NotFoundException("PuntoRuta not found");
        }
        return puntoRuta;
    }
    
}