package Entities;

import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Employee.class)
public abstract class Employee_ {

	public static volatile SingularAttribute<Employee, String> resume;
	public static volatile SingularAttribute<Employee, Boolean> showName;
	public static volatile SingularAttribute<Employee, Boolean> showEmail;
	public static volatile ListAttribute<Employee, Joboffer> jobofferList;
	public static volatile ListAttribute<Employee, ResumesCv> resumesCvList;
	public static volatile SingularAttribute<Employee, String> lastname;
	public static volatile SingularAttribute<Employee, String> password;
	public static volatile SingularAttribute<Employee, Boolean> showUsername;
	public static volatile SingularAttribute<Employee, String> field;
	public static volatile SingularAttribute<Employee, Boolean> showField;
	public static volatile ListAttribute<Employee, Employer> employerList;
	public static volatile SingularAttribute<Employee, String> name;
	public static volatile SingularAttribute<Employee, Boolean> showLastname;
	public static volatile ListAttribute<Employee, Team> teamList;
	public static volatile SingularAttribute<Employee, String> email;
	public static volatile SingularAttribute<Employee, String> username;

}

