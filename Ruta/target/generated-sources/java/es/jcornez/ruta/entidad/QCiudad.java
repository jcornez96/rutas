package es.jcornez.ruta.entidad;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;
import com.querydsl.core.types.dsl.PathInits;


/**
 * QCiudad is a Querydsl query type for Ciudad
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QCiudad extends EntityPathBase<Ciudad> {

    private static final long serialVersionUID = -1888259212L;

    private static final PathInits INITS = PathInits.DIRECT2;

    public static final QCiudad ciudad = new QCiudad("ciudad");

    public final NumberPath<Long> id = createNumber("id", Long.class);

    public final StringPath nombre = createString("nombre");

    public final QPais pais;

    public final SetPath<Ruta, QRuta> rutas = this.<Ruta, QRuta>createSet("rutas", Ruta.class, QRuta.class, PathInits.DIRECT2);

    public final SetPath<Usuario, QUsuario> usuarios = this.<Usuario, QUsuario>createSet("usuarios", Usuario.class, QUsuario.class, PathInits.DIRECT2);

    public final NumberPath<Integer> version = createNumber("version", Integer.class);

    public QCiudad(String variable) {
        this(Ciudad.class, forVariable(variable), INITS);
    }

    public QCiudad(Path<? extends Ciudad> path) {
        this(path.getType(), path.getMetadata(), PathInits.getFor(path.getMetadata(), INITS));
    }

    public QCiudad(PathMetadata metadata) {
        this(metadata, PathInits.getFor(metadata, INITS));
    }

    public QCiudad(PathMetadata metadata, PathInits inits) {
        this(Ciudad.class, metadata, inits);
    }

    public QCiudad(Class<? extends Ciudad> type, PathMetadata metadata, PathInits inits) {
        super(type, metadata, inits);
        this.pais = inits.isInitialized("pais") ? new QPais(forProperty("pais")) : null;
    }

}

