/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.webmaven;


import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

/**
 *
 * @author Sam
 */
public class JPASample {

    /**
     * @param args the command line arguments
     */
    public static void InsertUser() {
        // TODO code application logic here
        
//        User a = new User();
//        a.setUsername("payam");
//        a.setPassword("almasian");
        
        
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("com.mycompany_JPASimpleApp_jar_1.0-SNAPSHOTPU");
        EntityManager em = emf.createEntityManager();
        em.getTransaction().begin();
        
        //--em.persist(a);
        em.getTransaction().commit();
        System.out.println("Done");    
    }
    
}
