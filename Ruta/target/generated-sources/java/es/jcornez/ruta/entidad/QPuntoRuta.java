package es.jcornez.ruta.entidad;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;
import com.querydsl.core.types.dsl.PathInits;


/**
 * QPuntoRuta is a Querydsl query type for PuntoRuta
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QPuntoRuta extends EntityPathBase<PuntoRuta> {

    private static final long serialVersionUID = -1678708552L;

    private static final PathInits INITS = PathInits.DIRECT2;

    public static final QPuntoRuta puntoRuta = new QPuntoRuta("puntoRuta");

    public final StringPath comentario = createString("comentario");

    public final NumberPath<Long> id = createNumber("id", Long.class);

    public final NumberPath<Double> latitud = createNumber("latitud", Double.class);

    public final NumberPath<Double> longitud = createNumber("longitud", Double.class);

    public final NumberPath<Integer> orden = createNumber("orden", Integer.class);

    public final QRuta ruta;

    public final NumberPath<Integer> version = createNumber("version", Integer.class);

    public QPuntoRuta(String variable) {
        this(PuntoRuta.class, forVariable(variable), INITS);
    }

    public QPuntoRuta(Path<? extends PuntoRuta> path) {
        this(path.getType(), path.getMetadata(), PathInits.getFor(path.getMetadata(), INITS));
    }

    public QPuntoRuta(PathMetadata metadata) {
        this(metadata, PathInits.getFor(metadata, INITS));
    }

    public QPuntoRuta(PathMetadata metadata, PathInits inits) {
        this(PuntoRuta.class, metadata, inits);
    }

    public QPuntoRuta(Class<? extends PuntoRuta> type, PathMetadata metadata, PathInits inits) {
        super(type, metadata, inits);
        this.ruta = inits.isInitialized("ruta") ? new QRuta(forProperty("ruta"), inits.get("ruta")) : null;
    }

}

