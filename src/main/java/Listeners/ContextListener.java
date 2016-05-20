/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Listeners;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

/**
 * Web application lifecycle listener.
 *
 * @author Sam
 */
public class ContextListener implements ServletContextListener {

    private static EntityManagerFactory emf;
    
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        emf = Persistence.createEntityManagerFactory("com.mycompany_WebMaven_war_1.0-SNAPSHOTPU");
        EntityManager em = emf.createEntityManager();
        ServletContext ctx = sce.getServletContext() ;
        ctx.setAttribute("em", emf);
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        emf.close();
    }
}
