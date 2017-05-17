package es.jcornez.ruta.entidad;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;
import com.querydsl.core.types.dsl.PathInits;


/**
 * QRutaSeguida is a Querydsl query type for RutaSeguida
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QRutaSeguida extends EntityPathBase<RutaSeguida> {

    private static final long serialVersionUID = -1482802118L;

    private static final PathInits INITS = PathInits.DIRECT2;

    public static final QRutaSeguida rutaSeguida = new QRutaSeguida("rutaSeguida");

    public final DateTimePath<java.util.Date> fechaSeguimiento = createDateTime("fechaSeguimiento", java.util.Date.class);

    public final NumberPath<Long> id = createNumber("id", Long.class);

    public final QRuta ruta;

    public final QUsuario usuario;

    public final NumberPath<Integer> version = createNumber("version", Integer.class);

    public QRutaSeguida(String variable) {
        this(RutaSeguida.class, forVariable(variable), INITS);
    }

    public QRutaSeguida(Path<? extends RutaSeguida> path) {
        this(path.getType(), path.getMetadata(), PathInits.getFor(path.getMetadata(), INITS));
    }

    public QRutaSeguida(PathMetadata metadata) {
        this(metadata, PathInits.getFor(metadata, INITS));
    }

    public QRutaSeguida(PathMetadata metadata, PathInits inits) {
        this(RutaSeguida.class, metadata, inits);
    }

    public QRutaSeguida(Class<? extends RutaSeguida> type, PathMetadata metadata, PathInits inits) {
        super(type, metadata, inits);
        this.ruta = inits.isInitialized("ruta") ? new QRuta(forProperty("ruta"), inits.get("ruta")) : null;
        this.usuario = inits.isInitialized("usuario") ? new QUsuario(forProperty("usuario"), inits.get("usuario")) : null;
    }

}

