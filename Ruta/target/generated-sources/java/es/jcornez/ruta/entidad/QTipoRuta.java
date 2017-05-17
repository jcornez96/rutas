package es.jcornez.ruta.entidad;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;
import com.querydsl.core.types.dsl.PathInits;


/**
 * QTipoRuta is a Querydsl query type for TipoRuta
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QTipoRuta extends EntityPathBase<TipoRuta> {

    private static final long serialVersionUID = 1583654240L;

    public static final QTipoRuta tipoRuta = new QTipoRuta("tipoRuta");

    public final NumberPath<Long> id = createNumber("id", Long.class);

    public final StringPath nombre = createString("nombre");

    public final SetPath<Ruta, QRuta> rutas = this.<Ruta, QRuta>createSet("rutas", Ruta.class, QRuta.class, PathInits.DIRECT2);

    public final NumberPath<Integer> version = createNumber("version", Integer.class);

    public QTipoRuta(String variable) {
        super(TipoRuta.class, forVariable(variable));
    }

    public QTipoRuta(Path<? extends TipoRuta> path) {
        super(path.getType(), path.getMetadata());
    }

    public QTipoRuta(PathMetadata metadata) {
        super(TipoRuta.class, metadata);
    }

}

