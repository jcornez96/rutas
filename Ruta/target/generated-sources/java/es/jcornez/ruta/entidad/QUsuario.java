package es.jcornez.ruta.entidad;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;
import com.querydsl.core.types.dsl.PathInits;


/**
 * QUsuario is a Querydsl query type for Usuario
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QUsuario extends EntityPathBase<Usuario> {

    private static final long serialVersionUID = 674922386L;

    private static final PathInits INITS = PathInits.DIRECT2;

    public static final QUsuario usuario = new QUsuario("usuario");

    public final StringPath apellidos = createString("apellidos");

    public final QCiudad ciudad;

    public final NumberPath<Integer> codigoPostal = createNumber("codigoPostal", Integer.class);

    public final DateTimePath<java.util.Date> fechaAlta = createDateTime("fechaAlta", java.util.Date.class);

    public final DateTimePath<java.util.Date> fechaNacimiento = createDateTime("fechaNacimiento", java.util.Date.class);

    public final StringPath genero = createString("genero");

    public final NumberPath<Long> id = createNumber("id", Long.class);

    public final StringPath nombre = createString("nombre");

    public final SetPath<Ruta, QRuta> rutas = this.<Ruta, QRuta>createSet("rutas", Ruta.class, QRuta.class, PathInits.DIRECT2);

    public final SetPath<RutaSeguida, QRutaSeguida> rutasSeguidas = this.<RutaSeguida, QRutaSeguida>createSet("rutasSeguidas", RutaSeguida.class, QRutaSeguida.class, PathInits.DIRECT2);

    public final NumberPath<Integer> telefono = createNumber("telefono", Integer.class);

    public final QTipoUsuario tipoUsuario;

    public final NumberPath<Integer> version = createNumber("version", Integer.class);

    public QUsuario(String variable) {
        this(Usuario.class, forVariable(variable), INITS);
    }

    public QUsuario(Path<? extends Usuario> path) {
        this(path.getType(), path.getMetadata(), PathInits.getFor(path.getMetadata(), INITS));
    }

    public QUsuario(PathMetadata metadata) {
        this(metadata, PathInits.getFor(metadata, INITS));
    }

    public QUsuario(PathMetadata metadata, PathInits inits) {
        this(Usuario.class, metadata, inits);
    }

    public QUsuario(Class<? extends Usuario> type, PathMetadata metadata, PathInits inits) {
        super(type, metadata, inits);
        this.ciudad = inits.isInitialized("ciudad") ? new QCiudad(forProperty("ciudad"), inits.get("ciudad")) : null;
        this.tipoUsuario = inits.isInitialized("tipoUsuario") ? new QTipoUsuario(forProperty("tipoUsuario")) : null;
    }

}

