// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.jcornez.ruta.repository;

import com.querydsl.core.types.Path;
import com.querydsl.jpa.JPQLQuery;
import es.jcornez.ruta.entidad.Pais;
import es.jcornez.ruta.entidad.QPais;
import es.jcornez.ruta.repository.PaisRepositoryCustom;
import es.jcornez.ruta.repository.PaisRepositoryImpl;
import io.springlets.data.domain.GlobalSearch;
import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt.AttributeMappingBuilder;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.transaction.annotation.Transactional;

privileged aspect PaisRepositoryImpl_Roo_Jpa_Repository_Impl {
    
    declare parents: PaisRepositoryImpl implements PaisRepositoryCustom;
    
    declare @type: PaisRepositoryImpl: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String PaisRepositoryImpl.CODIGO_PAIS = "codigoPais";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String PaisRepositoryImpl.NOMBRE = "nombre";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String PaisRepositoryImpl.CODIGO_MARCACION = "codigoMarcacion";
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Pais> PaisRepositoryImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        
        QPais pais = QPais.pais;
        
        JPQLQuery<Pais> query = from(pais);
        
        Path<?>[] paths = new Path<?>[] {pais.codigoPais,pais.nombre,pais.codigoMarcacion};        
        applyGlobalSearch(globalSearch, query, paths);
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(CODIGO_PAIS, pais.codigoPais)
			.map(NOMBRE, pais.nombre)
			.map(CODIGO_MARCACION, pais.codigoMarcacion);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, pais);
    }
    
}
