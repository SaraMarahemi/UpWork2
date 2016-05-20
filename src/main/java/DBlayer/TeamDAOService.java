/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DBlayer;

import Entities.ResumesCv;
import Entities.Team;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.servlet.ServletContext;

/**
 *
 * @author Sam
 */
public class TeamDAOService implements TeamDAO {

    private  EntityManager em ;

    public TeamDAOService(ServletContext ctx ) {
        EntityManagerFactory emf = (EntityManagerFactory) ctx.getAttribute("em") ;
        em = emf.createEntityManager();
    }
    
    
    
    @Override
    public Team Find(String TeamID) {
        em.getTransaction().begin();
        
        Team team = em.find(Team.class, TeamID ) ;
        
        em.getTransaction().commit();
        
        return team ;
    }

    @Override
    public String Insert(Team e) {
        em.getTransaction().begin();
        
        em.persist(e);
        
        em.getTransaction().commit();
        
        return "Done" ;
    }

    @Override
    public String Update(Team New) {
        em.getTransaction().begin();
        
        Team team = em.find(Team.class, New.getUsername() ) ;
        
        em.detach(team);
        
        team = New ;
        
        em.merge(team) ;
        
        em.getTransaction().commit();
        
        return "Done" ;
    }

    @Override
    public String Update(Team Old, Team New) {
        em.getTransaction().begin();
        
        Team team = em.find(Team.class, Old.getUsername() ) ;
        
        em.detach(team);
        
        team = New ;
        
        em.merge(team) ;
        
        em.getTransaction().commit();
        
        return "Done" ;
    }

    @Override
    public String Delete(String TeamID) {
        em.getTransaction().begin();
        
        Team team = em.find(Team.class, TeamID ) ;
        
        em.remove(team);
        
        em.getTransaction().commit();
        
        return "Done" ;
    }

    @Override
    public String Delete(Team e) {
        em.getTransaction().begin();
        
        
        em.remove(e);
        
        em.getTransaction().commit();
        
        return "Done" ;
    }
    
    
    
}
