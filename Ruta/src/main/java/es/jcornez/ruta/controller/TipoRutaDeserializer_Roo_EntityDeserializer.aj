// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.jcornez.ruta.controller;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonNode;
import es.jcornez.ruta.controller.TipoRutaDeserializer;
import es.jcornez.ruta.entidad.TipoRuta;
import es.jcornez.ruta.service.api.TipoRutaService;
import io.springlets.web.NotFoundException;
import java.io.IOException;
import org.springframework.boot.jackson.JsonComponent;
import org.springframework.core.convert.ConversionService;

privileged aspect TipoRutaDeserializer_Roo_EntityDeserializer {
    
    declare @type: TipoRutaDeserializer: @JsonComponent;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return TipoRutaService
     */
    public TipoRutaService TipoRutaDeserializer.getTipoRutaService() {
        return tipoRutaService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param tipoRutaService
     */
    public void TipoRutaDeserializer.setTipoRutaService(TipoRutaService tipoRutaService) {
        this.tipoRutaService = tipoRutaService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ConversionService
     */
    public ConversionService TipoRutaDeserializer.getConversionService() {
        return conversionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param conversionService
     */
    public void TipoRutaDeserializer.setConversionService(ConversionService conversionService) {
        this.conversionService = conversionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param jsonParser
     * @param context
     * @param codec
     * @param tree
     * @return TipoRuta
     * @throws IOException
     */
    public TipoRuta TipoRutaDeserializer.deserializeObject(JsonParser jsonParser, DeserializationContext context, ObjectCodec codec, JsonNode tree) throws IOException {
        String idText = tree.asText();
        Long id = conversionService.convert(idText, Long.class);
        TipoRuta tipoRuta = tipoRutaService.findOne(id);
        if (tipoRuta == null) {
            throw new NotFoundException("TipoRuta not found");
        }
        return tipoRuta;
    }
    
}
