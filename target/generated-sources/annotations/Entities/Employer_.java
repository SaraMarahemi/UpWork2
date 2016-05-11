package Entities;

import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Employer.class)
public abstract class Employer_ {

	public static volatile SingularAttribute<Employer, String> resume;
	public static volatile SingularAttribute<Employer, String> password;
	public static volatile SingularAttribute<Employer, String> field;
	public static volatile SingularAttribute<Employer, String> name;
	public static volatile CollectionAttribute<Employer, Employee> employeeCollection;
	public static volatile CollectionAttribute<Employer, Joboffer> jobofferCollection;
	public static volatile SingularAttribute<Employer, String> email;
	public static volatile SingularAttribute<Employer, String> lastname;
	public static volatile SingularAttribute<Employer, String> username;

}

