/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DBlayer;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

/**
 *
 * @author Sam
 */
public class EM {
    
    private static EntityManagerFactory emf ;
    private static EntityManager em ;
    
    
    private EM()
    {
        
    }
    
    public static synchronized EntityManager GetEM ()
    {
        if( emf == null )
        {
            emf = Persistence.createEntityManagerFactory("com.mycompany_WebMaven_war_1.0-SNAPSHOTPU");
            EntityManager em = emf.createEntityManager();
            return em ;
        }
        else    
        {
            if ( em == null )
            {
                em = emf.createEntityManager();
                return em ;
            }
            else
            {
                return em ;
            }
            
        }
        
    }
    
}
