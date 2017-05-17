package es.jcornez.ruta.entidad;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;
import com.querydsl.core.types.dsl.PathInits;


/**
 * QTipoUsuario is a Querydsl query type for TipoUsuario
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QTipoUsuario extends EntityPathBase<TipoUsuario> {

    private static final long serialVersionUID = 1034006462L;

    public static final QTipoUsuario tipoUsuario = new QTipoUsuario("tipoUsuario");

    public final NumberPath<Long> id = createNumber("id", Long.class);

    public final StringPath nombre = createString("nombre");

    public final SetPath<Usuario, QUsuario> usuarios = this.<Usuario, QUsuario>createSet("usuarios", Usuario.class, QUsuario.class, PathInits.DIRECT2);

    public final NumberPath<Integer> version = createNumber("version", Integer.class);

    public QTipoUsuario(String variable) {
        super(TipoUsuario.class, forVariable(variable));
    }

    public QTipoUsuario(Path<? extends TipoUsuario> path) {
        super(path.getType(), path.getMetadata());
    }

    public QTipoUsuario(PathMetadata metadata) {
        super(TipoUsuario.class, metadata);
    }

}

