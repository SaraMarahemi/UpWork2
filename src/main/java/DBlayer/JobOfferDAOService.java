/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DBlayer;

import Entities.Employee;
import Entities.Employer;
import Entities.Joboffer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.servlet.ServletContext;

/**
 *
 * @author Sam
 */
public class JobOfferDAOService implements JobOfferDAO{

    
    private  EntityManager em ;

    public JobOfferDAOService( ServletContext ctx) {
        EntityManagerFactory emf = (EntityManagerFactory) ctx.getAttribute("em") ;
        em = emf.createEntityManager();
    }
    
    
    
    
    @Override
    public Joboffer Find(Integer JobID) {
        em.getTransaction().begin(); //optional
       
        Joboffer jo  = em.find(Joboffer.class , JobID);
        
        em.getTransaction().commit(); //optional
        
        
        
        return jo ;
    }

    @Override
    public String Insert(Joboffer e) {
        em.getTransaction().begin(); //optional
       
        em.persist(e);
        
        em.getTransaction().commit(); //optional
        
        
        
        return "Done" ;
    }

    @Override
    public String Update(Joboffer New) {
        em.getTransaction().begin();
        
        Joboffer jo = em.find(Joboffer.class , New.getJobID() );
        
        em.detach(jo);
        jo = New ; 
        em.merge(jo);
        
        em.getTransaction().commit();
        
        
        
        return "Done" ;
    }

    @Override
    public String Update(Joboffer Old, Joboffer New) {
        em.getTransaction().begin();
        
        Joboffer jo = em.find(Joboffer.class , Old.getJobID() );
        
        em.detach(jo);
        jo = New ; 
        em.merge(jo);
        
        em.getTransaction().commit();
        
        
        
        return "Done" ;
    }

    @Override
    public String Delete(Integer JobID) {
        em.getTransaction().begin();
        
        Joboffer jo = em.find(Joboffer.class, JobID );
        
        em.remove(jo);
        
        em.getTransaction().commit();
        
        
        
        return "Done" ;
    }

    @Override
    public String Delete(Joboffer e) {
        em.getTransaction().begin();
        
        em.remove(e);
        
        em.getTransaction().commit();
        
        
        
        return "Done" ;
    }

    @Override
    public Employer GetEmployer(Integer JobID) {
        em.getTransaction().begin();
        
        Joboffer jo = em.find(Joboffer.class, JobID );
        
        Employer emp = jo.getEmployerID();
        
        
        em.getTransaction().commit();
        
        
        
        return emp ;
    }

    @Override
    public Employer GetEmployer(Joboffer e) {
        em.getTransaction().begin();
        
        Joboffer jo = em.find(Joboffer.class, e.getJobID() );
        
        Employer emp = jo.getEmployerID();
        
        em.getTransaction().commit();
        
        
        
        return emp ;
    }

    @Override
    public List<Employee> GetAllEmployee(Integer JobID) {
        em.getTransaction().begin();
        
        Joboffer jo = em.find(Joboffer.class, JobID );
        
        List<Employee> emplist  = (List<Employee>) jo.getEmployeeList();
        
        em.getTransaction().commit();
        
        
        
        return emplist ;
    }

    @Override
    public List<Employee> GetAllEmployee(Joboffer e) {
        em.getTransaction().begin();
        
        Joboffer jo = em.find(Joboffer.class, e.getJobID() );
        
        List<Employee> emplist  = (List<Employee>) jo.getEmployeeList();
        
        em.getTransaction().commit();
        
        
        
        return emplist ;
    }

    @Override
    public String AddEmployee(Employee e, Joboffer jo) {
        em.getTransaction().begin();
        
        Joboffer jo_temp = em.find(Joboffer.class, jo.getJobID() );
        e = em.find(Employee.class, e.getUsername() ) ;
        
        List<Employee> emplist  = (List<Employee>) jo_temp.getEmployeeList();
        
        emplist.add(e);
        
        
        e.getJobofferList().add(jo_temp) ;
        
        em.getTransaction().commit();
        
        
        
        return "Done" ;
    }

    @Override
    public String AddEmployee(Employee e, Integer JobID) {
        em.getTransaction().begin();
        
        Joboffer jo_temp = em.find(Joboffer.class, JobID );
        e = em.find(Employee.class, e.getUsername() ) ;
        
        List<Employee> emplist  = (List<Employee>) jo_temp.getEmployeeList();
        
        emplist.add(e);
        
        e.getJobofferList().add(jo_temp) ;
        
        em.getTransaction().commit();
        
        
        
        return "Done" ;
    }

    @Override
    public List<Joboffer> Search( Joboffer jo) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
