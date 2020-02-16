package models;

import java.math.BigInteger;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import models.Users;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2020-02-16T09:59:17")
@StaticMetamodel(Events.class)
public class Events_ { 

    public static volatile SingularAttribute<Events, Long> eventId;
    public static volatile SingularAttribute<Events, Users> organizerId;
    public static volatile SingularAttribute<Events, String> eventName;
    public static volatile SingularAttribute<Events, String> description;
    public static volatile SingularAttribute<Events, Date> startTime;
    public static volatile SingularAttribute<Events, Date> endTime;
    public static volatile SingularAttribute<Events, BigInteger> points;

}