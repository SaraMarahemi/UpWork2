/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ServiceLayer;

import DBlayer.EmployerDAOService;
import Entities.Employer;
import javax.servlet.ServletContext;

/**
 *
 * @author Sam
 */
public class EmployerManager {
    
    private ServletContext SC ;

    public EmployerManager(ServletContext SC) {
        this.SC = SC;
    }
    
    public Employer Authenticate ( String UserName , String Password )
    {
        EmployerDAOService EDS = new EmployerDAOService(SC) ;
        Employer emp = EDS.Find(UserName) ;
        if ( emp != null && emp.getPassword().equals(Password) )
        {
            return emp ;
        }
        else
        {
            return null ;
        }
    }
    
    public boolean Register ( Employer e )
    {
        EmployerDAOService EDS = new EmployerDAOService(SC) ;
        Employer emp = EDS.Find( e.getUsername() ) ;
        if ( emp != null ) 
        {
            return false ;
        }
        else
        {
            EDS.Insert(e);
            return true ;
        }
        
    }
    
    public String Update ( Employer e )
    {
        EmployerDAOService EDS = new EmployerDAOService(SC) ;
        Employer emp = EDS.Find( e.getUsername() ) ;
        if ( emp != null )
        {
            String Result = EDS.Update(e) ;
            ///String Result = EDS.Update(emp  , e) ;
            return Result ;
        }
        else
        {
            return "Employer not Found ";
        }
        
    }
    
    
    
}
