package es.jcornez.ruta.entidad;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;
import com.querydsl.core.types.dsl.PathInits;


/**
 * QRuta is a Querydsl query type for Ruta
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QRuta extends EntityPathBase<Ruta> {

    private static final long serialVersionUID = 2032010764L;

    private static final PathInits INITS = PathInits.DIRECT2;

    public static final QRuta ruta = new QRuta("ruta");

    public final QCiudad ciudad;

    public final StringPath descripcion = createString("descripcion");

    public final DateTimePath<java.util.Date> fechaCreacion = createDateTime("fechaCreacion", java.util.Date.class);

    public final ArrayPath<byte[], Byte> fotoPortada = createArray("fotoPortada", byte[].class);

    public final NumberPath<Long> id = createNumber("id", Long.class);

    public final StringPath nombre = createString("nombre");

    public final SetPath<PuntoRuta, QPuntoRuta> puntosRuta = this.<PuntoRuta, QPuntoRuta>createSet("puntosRuta", PuntoRuta.class, QPuntoRuta.class, PathInits.DIRECT2);

    public final SetPath<RutaSeguida, QRutaSeguida> rutasSeguidas = this.<RutaSeguida, QRutaSeguida>createSet("rutasSeguidas", RutaSeguida.class, QRutaSeguida.class, PathInits.DIRECT2);

    public final QTipoRuta tipoRuta;

    public final QUsuario usuario;

    public final NumberPath<Integer> version = createNumber("version", Integer.class);

    public QRuta(String variable) {
        this(Ruta.class, forVariable(variable), INITS);
    }

    public QRuta(Path<? extends Ruta> path) {
        this(path.getType(), path.getMetadata(), PathInits.getFor(path.getMetadata(), INITS));
    }

    public QRuta(PathMetadata metadata) {
        this(metadata, PathInits.getFor(metadata, INITS));
    }

    public QRuta(PathMetadata metadata, PathInits inits) {
        this(Ruta.class, metadata, inits);
    }

    public QRuta(Class<? extends Ruta> type, PathMetadata metadata, PathInits inits) {
        super(type, metadata, inits);
        this.ciudad = inits.isInitialized("ciudad") ? new QCiudad(forProperty("ciudad"), inits.get("ciudad")) : null;
        this.tipoRuta = inits.isInitialized("tipoRuta") ? new QTipoRuta(forProperty("tipoRuta")) : null;
        this.usuario = inits.isInitialized("usuario") ? new QUsuario(forProperty("usuario"), inits.get("usuario")) : null;
    }

}

