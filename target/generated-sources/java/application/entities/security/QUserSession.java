package application.entities.security;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;


/**
 * QUserSession is a Querydsl query type for UserSession
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QUserSession extends EntityPathBase<UserSession> {

    private static final long serialVersionUID = 875557484L;

    public static final QUserSession userSession = new QUserSession("userSession");

    public final NumberPath<Integer> id = createNumber("id", Integer.class);

    public final StringPath ip = createString("ip");

    public final BooleanPath isValid = createBoolean("isValid");

    public final DatePath<java.time.LocalDate> localDateBegin = createDate("localDateBegin", java.time.LocalDate.class);

    public final DatePath<java.time.LocalDate> localDateEnd = createDate("localDateEnd", java.time.LocalDate.class);

    public final TimePath<java.time.LocalTime> localTimeBegin = createTime("localTimeBegin", java.time.LocalTime.class);

    public final TimePath<java.time.LocalTime> localTimeEnd = createTime("localTimeEnd", java.time.LocalTime.class);

    public final StringPath token = createString("token");

    public final StringPath userAgent = createString("userAgent");

    public final StringPath userName = createString("userName");

    public QUserSession(String variable) {
        super(UserSession.class, forVariable(variable));
    }

    public QUserSession(Path<? extends UserSession> path) {
        super(path.getType(), path.getMetadata());
    }

    public QUserSession(PathMetadata metadata) {
        super(UserSession.class, metadata);
    }

}

