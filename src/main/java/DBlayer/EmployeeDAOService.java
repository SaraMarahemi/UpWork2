/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DBlayer;

import Entities.Employee;
import Entities.ResumesCv;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.ServletContext;

/**
 *
 * @author Sam
 */
public class EmployeeDAOService implements EmployeeDAO {
    
    
    private  EntityManager em ; 
    
    

    public EmployeeDAOService( ServletContext ctx ) {
        EntityManagerFactory emf = (EntityManagerFactory) ctx.getAttribute("em") ;
        em = emf.createEntityManager();
    }
    
    
    

    @Override
    public Employee Find(String EmployeeID) {
        
        em.getTransaction().begin(); //optional
        
        Employee employe = em.find(Employee.class, EmployeeID ) ;
        
        
        em.getTransaction().commit(); //optional
        
        
        
        return employe ;
    }

    @Override
    public String Insert(Employee e) {
        
        em.getTransaction().begin(); //optional
        
        em.persist(e);
        
        
        em.getTransaction().commit(); //optional
        
        
        
        return "Done" ;
        
    }

    @Override
    public String Update(String EmployeeID , Employee New) {
        
        em.getTransaction().begin(); //optional
        
        Employee employe = em.find(Employee.class, EmployeeID );
        
        em.detach(employe);
        employe = New ;
        em.merge(employe);
        //employe = New ;
        
        
        em.getTransaction().commit(); //optional
        
        
        
        return "Done" ;
        
        
    }

    @Override
    public String Update(Employee Old, Employee New) {
        em.getTransaction().begin(); //optional
        
        Employee employe = em.find(Employee.class, Old.getUsername() );
        em.detach(employe);
        employe = New ;
        em.merge(employe);
        
        
        em.getTransaction().commit(); //optional
        
        
        
        return "Done" ;
    }

    @Override
    public String Delete(String EmployeeID) {
        em.getTransaction().begin(); //optional
        
        Employee employe = em.find(Employee.class, EmployeeID );
        em.remove(employe);
        
        em.getTransaction().commit(); //optional
        
        
        
        return "Done" ;
    }

    @Override
    public String Delete(Employee e) {
        em.getTransaction().begin(); //optional
        
        
        em.remove(e);
        
        em.getTransaction().commit(); //optional
        
        
        
        return "Done" ;
    }

    @Override
    public String AddResume(Employee e, ResumesCv RC) {
        em.getTransaction().begin(); //optional
        
        
        e = em.find(Employee.class, e.getUsername() ) ;
        
        em.persist(RC);
        
        RC.setEmployeeID(e);
        
        e.getResumesCvList().add(RC) ;
        
        em.getTransaction().commit(); //optional
        
        
        
        return "Done" ;
    }
    
}
