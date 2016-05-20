package Entities;

import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Team.class)
public abstract class Team_ {

	public static volatile SingularAttribute<Team, String> resume;
	public static volatile SingularAttribute<Team, String> password;
	public static volatile SingularAttribute<Team, String> field;
	public static volatile ListAttribute<Team, Employee> employeeList;
	public static volatile SingularAttribute<Team, String> name;
	public static volatile SingularAttribute<Team, String> email;
	public static volatile SingularAttribute<Team, String> lastname;
	public static volatile SingularAttribute<Team, String> username;

}

