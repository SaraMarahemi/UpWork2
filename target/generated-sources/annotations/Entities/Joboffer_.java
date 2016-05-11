package Entities;

import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Joboffer.class)
public abstract class Joboffer_ {

	public static volatile SingularAttribute<Joboffer, String> skills;
	public static volatile SingularAttribute<Joboffer, String> jobSalary;
	public static volatile SingularAttribute<Joboffer, Integer> jobID;
	public static volatile SingularAttribute<Joboffer, Employer> employerID;
	public static volatile SingularAttribute<Joboffer, String> jobTitle;
	public static volatile SingularAttribute<Joboffer, String> companyName;
	public static volatile CollectionAttribute<Joboffer, Employee> employeeCollection;
	public static volatile SingularAttribute<Joboffer, String> jobType;
	public static volatile SingularAttribute<Joboffer, String> info;

}

