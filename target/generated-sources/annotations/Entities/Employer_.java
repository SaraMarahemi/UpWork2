package Entities;

import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Employer.class)
public abstract class Employer_ {

	public static volatile SingularAttribute<Employer, String> resume;
	public static volatile ListAttribute<Employer, Joboffer> jobofferList;
	public static volatile SingularAttribute<Employer, String> companyName;
	public static volatile SingularAttribute<Employer, String> companyWeb;
	public static volatile SingularAttribute<Employer, String> lastname;
	public static volatile SingularAttribute<Employer, String> password;
	public static volatile SingularAttribute<Employer, String> field;
	public static volatile ListAttribute<Employer, Employee> employeeList;
	public static volatile SingularAttribute<Employer, String> companyAddress;
	public static volatile SingularAttribute<Employer, String> name;
	public static volatile ListAttribute<Employer, Outsourceproject> outsourceprojectList;
	public static volatile SingularAttribute<Employer, String> email;
	public static volatile SingularAttribute<Employer, String> username;

}

