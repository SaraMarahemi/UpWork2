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
import javax.servlet.ServletContext;

/**
 *
 * @author Sam
 */
public class ResumeDAOService implements ResumeDAO {

    
    private  EntityManager em ;

    public ResumeDAOService( ServletContext ctx) {
        EntityManagerFactory emf = (EntityManagerFactory) ctx.getAttribute("em") ;
        em = emf.createEntityManager();
    }
    
    
    @Override
    public ResumesCv Find(Integer ResumeID) {
        em.getTransaction().begin();
        
        ResumesCv RC = em.find(ResumesCv.class, ResumeID ) ;
        
        em.getTransaction().commit();
        
        
        
        return RC ;
        
    }

    @Override
    public String Insert(ResumesCv e) {
        em.getTransaction().begin();
        
        em.persist(e);
        
        em.getTransaction().commit();
        
        
        
        return "Done" ;
    }

    @Override
    public String Update(ResumesCv New) {
        em.getTransaction().begin();
        
        ResumesCv RC = em.find(ResumesCv.class, New.getId() ) ;
        
        em.detach(RC);
        RC = New ;
        em.merge(RC) ;
        
        em.getTransaction().commit();
        
        
        
        return "Done" ;
    }

    @Override
    public String Update(ResumesCv Old, ResumesCv New) {
        em.getTransaction().begin();
        
        ResumesCv RC = em.find(ResumesCv.class, Old.getId() ) ;
        
        em.detach(RC);
        RC = New ;
        em.merge(RC) ;
        
        em.getTransaction().commit();
        
        
        
        return "Done" ;
    }

    @Override
    public String Delete(Integer ResumeID) {
        em.getTransaction().begin();
        
        ResumesCv RC = em.find(ResumesCv.class, ResumeID ) ;
        
        em.remove(RC);
        
        em.getTransaction().commit();
        
        
        
        return "Done" ;
    }

    @Override
    public String Delete(ResumesCv e) {
        em.getTransaction().begin();
        
        em.remove(e);
        
        em.getTransaction().commit();
        
        
        
        return "Done" ;
    }

    @Override
    public Employee GetEmployee(Integer id) {
        em.getTransaction().begin();
        
        ResumesCv RC = em.find(ResumesCv.class, id ) ;
        
        Employee emp = RC.getEmployeeID();
        
        em.getTransaction().commit();
        
        
        
        return emp ;
    }

    @Override
    public Employee GetEmployee(ResumesCv e) {
        em.getTransaction().begin();
        
        ResumesCv RC = em.find(ResumesCv.class, e.getId() ) ;
        
        Employee emp = RC.getEmployeeID();
        
        em.getTransaction().commit();
        
        
        
        return emp ;
    }

    @Override
    public String SetEmployee(Employee e, Integer ResumeID) {
        em.getTransaction().begin();
        
        ResumesCv RC = em.find(ResumesCv.class, ResumeID ) ;
        
        RC.setEmployeeID(e);
        
        em.getTransaction().commit();
        
        
        
        return "Done" ;
    }

    @Override
    public String SetEmployee(Employee e, ResumesCv RC) {
        em.getTransaction().begin();
        
        ResumesCv RC_temp = em.find(ResumesCv.class, RC.getId() ) ;
        
        RC_temp.setEmployeeID(e);
        
        em.getTransaction().commit();
        
        
        
        return "Done" ;
    }
    
}
