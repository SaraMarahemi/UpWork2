/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DBlayer;

import Entities.Employee;
import Entities.Employer;
import Entities.Joboffer;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.servlet.ServletContext;

/**
 *
 * @author Sam
 */
public class EmployerDAOService implements EmployerDAO {

    private  EntityManager em ;

    public EmployerDAOService(  ServletContext ctx ) {
        EntityManagerFactory emf = (EntityManagerFactory) ctx.getAttribute("em") ;
        em = emf.createEntityManager();
    }

    @Override
    public Employer Find(String EmployerID) {
        
        em.getTransaction().begin(); //optional
        
        Employer employer = em.find(Employer.class, EmployerID ) ;
        
        
        em.getTransaction().commit(); //optional
        
        return employer ;
        
    }

    @Override
    public String Insert(Employer e) {
        em.getTransaction().begin(); //optional
        
        em.persist(e);
        
        
        em.getTransaction().commit(); //optional
        
        return "Done" ;
    }

    @Override
    public String Update(Employer New) {
        em.getTransaction().begin(); //optional
        
        Employer employer = em.find(Employer.class, New.getUsername() ) ;
        //employer.se
        em.detach(employer);
        employer = New ;
        em.merge(employer);
        
        em.getTransaction().commit(); //optional
        
        return "Done" ;
    }

    @Override
    public String Update(Employer Old, Employer New) {
        em.getTransaction().begin(); //optional
        
        Employer employer = em.find(Employer.class, Old.getUsername() );
        em.detach(employer);
        employer = New ;
        em.merge(employer);
        
        
        em.getTransaction().commit(); //optional
        
        return "Done" ;
    }

    @Override
    public String Delete(String EmployerID) {
        em.getTransaction().begin(); //optional
        
        Employer employer = em.find(Employer.class, EmployerID );
        em.remove(employer);
        
        em.getTransaction().commit(); //optional
        
        return "Done" ;
    }

    @Override
    public String Delete(Employer e) {
        em.getTransaction().begin(); //optional
       
        em.remove(e);
        
        em.getTransaction().commit(); //optional
        
        return "Done" ;
    }

    @Override
    public String AddJobOffer(Employer e, Joboffer jo) {
        em.getTransaction().begin(); //optional
        
        Employer employer = em.find(Employer.class, e.getUsername() );
        //em.remove(employer);
        em.persist(jo);
        jo.setEmployerID(employer);
        
        em.getTransaction().commit(); //optional
        
        return "Done" ;
    }
    
    
    
    
    
    
}
