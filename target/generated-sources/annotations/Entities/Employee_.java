package Entities;

import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Employee.class)
public abstract class Employee_ {

	public static volatile SingularAttribute<Employee, String> resume;
	public static volatile SingularAttribute<Employee, Boolean> showName;
	public static volatile SingularAttribute<Employee, Boolean> showEmail;
	public static volatile CollectionAttribute<Employee, Employer> employerCollection;
	public static volatile CollectionAttribute<Employee, ResumesCv> resumesCvCollection;
	public static volatile CollectionAttribute<Employee, Joboffer> jobofferCollection;
	public static volatile SingularAttribute<Employee, String> lastname;
	public static volatile SingularAttribute<Employee, String> password;
	public static volatile SingularAttribute<Employee, Boolean> showUsername;
	public static volatile SingularAttribute<Employee, String> field;
	public static volatile SingularAttribute<Employee, Boolean> showField;
	public static volatile SingularAttribute<Employee, String> name;
	public static volatile SingularAttribute<Employee, Boolean> showLastname;
	public static volatile SingularAttribute<Employee, String> email;
	public static volatile SingularAttribute<Employee, String> username;

}

