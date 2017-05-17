package es.jcornez.ruta.entidad;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;
import com.querydsl.core.types.dsl.PathInits;


/**
 * QPais is a Querydsl query type for Pais
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QPais extends EntityPathBase<Pais> {

    private static final long serialVersionUID = 2031931639L;

    public static final QPais pais = new QPais("pais");

    public final SetPath<Ciudad, QCiudad> ciudades = this.<Ciudad, QCiudad>createSet("ciudades", Ciudad.class, QCiudad.class, PathInits.DIRECT2);

    public final NumberPath<Integer> codigoMarcacion = createNumber("codigoMarcacion", Integer.class);

    public final StringPath codigoPais = createString("codigoPais");

    public final NumberPath<Long> id = createNumber("id", Long.class);

    public final StringPath nombre = createString("nombre");

    public final NumberPath<Integer> version = createNumber("version", Integer.class);

    public QPais(String variable) {
        super(Pais.class, forVariable(variable));
    }

    public QPais(Path<? extends Pais> path) {
        super(path.getType(), path.getMetadata());
    }

    public QPais(PathMetadata metadata) {
        super(Pais.class, metadata);
    }

}

