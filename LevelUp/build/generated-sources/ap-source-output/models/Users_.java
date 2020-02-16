package models;

import java.math.BigInteger;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import models.Events;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2020-02-16T09:59:17")
@StaticMetamodel(Users.class)
public class Users_ { 

    public static volatile SingularAttribute<Users, String> password;
    public static volatile SingularAttribute<Users, Short> role;
    public static volatile CollectionAttribute<Users, Events> eventsCollection;
    public static volatile SingularAttribute<Users, String> username;
    public static volatile SingularAttribute<Users, BigInteger> points;

}